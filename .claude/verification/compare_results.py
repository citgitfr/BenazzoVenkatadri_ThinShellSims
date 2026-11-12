"""
Compares the results of an OpenSeesPy shell run (the results .npz written by
the assembled OpenSeesPy script) with the results of an Abaqus run (the .npz
written from the ODB by odb_extract.py), and draws both.

Only the two result files are read. Nothing from the model-building code is
imported: ply stresses and section forces on the OpenSees side are recovered
here from the saved mid-surface strains and curvatures and the laminate
stored in the results file (classical lamination theory, plane stress).

Matching: the Abaqus node coordinates are tried in the three axis orders
(x, y, z), (y, z, x), (z, x, y) and the one that lands on the OpenSees nodes
is used (an Abaqus part extruded along its Z axis and rotated in the
assembly may be stored either way); displacement and rotation vectors are
reordered the same way. Nodes are paired with the nearest node, elements
with the nearest centroid, reference points with the OpenSees rigid-end
nodes. Abaqus element fields are compared in the material/local axes in
which Abaqus reports them, with the OpenSees facet frame (x along the
extrusion) and the ply axes.

Curvatures: Abaqus names SK by the axis the section bends ABOUT (SK1 =
curvature about local 1-axis = kyy, SK2 = about local 2-axis = kxx, SK3 =
twist), unlike SM (SM1 = M11, bending in the 1-direction); kxx = SK2,
kyy = SK1, kxy = SK3 (checked with SM = D SK on real Abaqus 2026 ODBs of tape
springs and a TRAC boom).
Web facets: facets whose strip is labelled 'web' in the results meta
(strip_label, a TRAC / omega / corrugated model with bonded webs) carry the
doubled laminate (meta web_stack 'mirror': the flange plies reversed with
negated angles below the flange plies; 'repeat': twice as listed), the rule
of failure_check.facet_groups / laminate_properties.doubled_laminate.
Ply stresses: Abaqus section points are paired with OpenSees plies by the
layer number and the fraction (-1 bottom, 0 middle, +1 top of the layer) in
their descriptions, per element (flange 3 plies vs web 6 plies), else by
number (3 Simpson points per ply).

Usage:
  python compare_results.py <opensees results>.npz <abaqus>_odb.npz [--out DIR] [--tol 0.03] [--name NAME]
Writes into DIR (default: next to the Abaqus file, folder compare_<name>):
  <name>_comparison.md   tables: displacements, membrane strains, curvatures, ply stresses,
                         section forces/moments, load path; peak values, value at the same
                         point, relative RMS difference, least-squares scale Abaqus/OpenSees
  <name>_comparison.json the same numbers
  <name>_deformed.png    deformed shapes of both over the undeformed mesh
  <name>_fields.png      OpenSees | Abaqus | difference maps of the main fields
  <name>_parity.png      Abaqus vs OpenSees at every matched node / element
  <name>_along_x.png     fields along the extrusion axis at mid-section
  <name>_load_path.png   load factor vs control displacement (Riks / displacement control)
Units: those of the two runs (N, mm, MPa in the project).
"""
import argparse
import json
import math
import re
from pathlib import Path

import numpy as np
from scipy.spatial import cKDTree

import matplotlib
matplotlib.use('Agg')
import matplotlib.pyplot as plt                       # noqa: E402
from mpl_toolkits.mplot3d.art3d import Poly3DCollection   # noqa: E402

ORDERS = ((0, 1, 2), (1, 2, 0), (2, 0, 1))          # global = abaqus[:, order]
POS = ('bottom', 'mid', 'top')
# Abaqus labels for [kxx, kyy, kxy]: SK1 / SK2 = curvature ABOUT the local 1 / 2 axis (= kyy / kxx)
SK_LABELS = ('SK2', 'SK1', 'SK3')


# --- loading -------------------------------------------------------------------------------

def load_opensees(path):
    d = np.load(path, allow_pickle=False)
    meta = json.loads(str(d['meta']))
    lam = json.loads(str(d['laminate']))
    os_ = dict(points=d['points'], tags=d['node_tags'], disp=d['disp'], faces=d['faces'],
               strains=d['strains'].mean(axis=1), history=d['history'], meta=meta, lam=lam)
    index = {int(t): k for k, t in enumerate(os_['tags'])}
    os_['rigid'] = {e: index[int(t)] for e, t in (meta.get('rigid') or {}).items()}
    os_['shell'] = np.unique(os_['faces'])
    os_['centroids'] = os_['points'][os_['faces']].mean(axis=1)
    return os_


def load_abaqus(path):
    d = np.load(path, allow_pickle=False)
    ab = {k: d[k] for k in d.files}
    ab['meta'] = json.loads(str(d['meta']))
    return ab


# --- laminate (CLT) -------------------------------------------------------------------------

def q_matrix(m):
    E1, E2, nu12, G12 = m['E1'], m.get('E2', m['E1']), m['nu12'], m.get('G12')
    if G12 is None:
        G12 = E1 / (2 * (1 + nu12))
    nu21 = nu12 * E2 / E1
    k = 1 - nu12 * nu21
    return np.array([[E1 / k, nu12 * E2 / k, 0], [nu12 * E2 / k, E2 / k, 0], [0, 0, G12]])


def t_strain(theta):
    """[e1, e2, g12] = T [ex, ey, gxy] (engineering shear), ply at theta from x."""
    c, s = math.cos(math.radians(theta)), math.sin(math.radians(theta))
    return np.array([[c * c, s * s, c * s], [s * s, c * c, -c * s], [-2 * c * s, 2 * c * s, c * c - s * s]])


def t_stress_inv(theta):
    """[sx, sy, txy] = T^-1 [s1, s2, t12]."""
    c, s = math.cos(math.radians(theta)), math.sin(math.radians(theta))
    return np.array([[c * c, s * s, -2 * c * s], [s * s, c * c, 2 * c * s], [c * s, -c * s, c * c - s * s]])


def plies(lam):
    ps = lam['plies']
    h = sum(p['t'] for p in ps)
    z, out = -h / 2, []
    for p in ps:
        out.append(dict(theta=p['theta'], t=p['t'], mat=lam['materials'][p['mat']], z=(z, z + p['t'] / 2, z + p['t'])))
        z += p['t']
    return out


def opensees_ply_stresses(strains, lam):
    """(elements, plies, 3 positions, 3) ply-axis stresses [s1, s2, t12] and
    section forces (elements, 6) [N11 N22 N12 M11 M22 M12] from the facet-frame
    centroid strains [exx eyy gxy kxx kyy kxy ...] (CLT signs)."""
    e0, k = strains[:, 0:3], strains[:, 3:6]
    pl = plies(lam)
    sig = np.zeros((len(strains), len(pl), 3, 3))
    NM = np.zeros((len(strains), 6))
    for p, q in enumerate(pl):
        Q, T, Ti = q_matrix(q['mat']), t_strain(q['theta']), t_stress_inv(q['theta'])
        sxy = []
        for j, z in enumerate(q['z']):
            s12 = (e0 + z * k) @ T.T @ Q.T
            sig[:, p, j] = s12
            sxy.append(s12 @ Ti.T)
        w = np.array([1, 4, 1]) * q['t'] / 6                     # Simpson, exact for linear z
        NM[:, 0:3] += sum(wj * s for wj, s in zip(w, sxy))
        NM[:, 3:6] += sum(wj * s * z for wj, s, z in zip(w, sxy, q['z']))
    return sig, NM


def doubled_laminate(lam, stack='mirror'):
    """Web (bonded tab) laminate: a second flange laminate bonded under this one,
    z from the bond plane; same rule as laminate_properties.doubled_laminate."""
    below = ([dict(q, theta=-q['theta'] + 0.0) for q in reversed(lam['plies'])] if stack == 'mirror'
             else lam['plies'])
    return dict(lam, plies=[dict(theta=q['theta'], t=q['t'], mat=q['mat']) for q in below + lam['plies']],
                name=f'web of {lam.get("name") or ""}'.strip())


def facet_laminates(os_):
    """[(label, laminate, facet mask)]: the web facets of the FE model (results
    meta strip_label == 'web', facet strip = facet index // nx) carry the doubled
    laminate with the model's web stack, as in failure_check.facet_groups."""
    meta, n = os_['meta'], len(os_['faces'])
    lab = meta.get('strip_label') or []
    if 'web' not in lab:
        return [('', os_['lam'], np.ones(n, bool))]
    web = (np.array(lab) == 'web')[np.arange(n) // meta['nx']]
    return [('flange ', os_['lam'], ~web),
            ('web ', doubled_laminate(os_['lam'], meta.get('web_stack', 'mirror')), web)]


def section_point_map(s_meta, sps):
    """{column of F_S: (layer index from 0, position 0/1/2 = bottom/mid/top)}.
    Abaqus numbers section points from the bottom; its descriptions
    ('SNEG, (fraction = -1.0), Layer = 1', 'fraction = -0.833333, Layer = 1',
    'Mid, (fraction = 0.0), Layer = 3', ...) give the layer and the fraction of
    the WHOLE section thickness, and odb_extract keeps one description per number
    (the last element's: flange and web sections share numbers). So:
      composite, every described layer = (number - 1) // 3 + 1 (the 3 Simpson points
        per layer of the generated scripts): number 3k+1, 3k+2, 3k+3 = layer k+1 bottom,
        mid, top, in every element whatever its number of layers;
      no 'Layer' (homogeneous section, one layer): fraction -1 / 0 / +1 = bottom / mid / top;
      otherwise: lowest / middle / highest number described in a layer."""
    desc = (s_meta or {}).get('section_point_descriptions') or {}
    parsed = {}
    for col, sp in enumerate(sps):
        d = desc.get(str(sp), '')
        lay = re.search(r'Layer\s*=\s*(\d+)', d)
        fr = re.search(r'fraction\s*=\s*([-+0-9.eE]+)', d)
        word = re.match(r'\s*(SNEG|MID|SPOS)', d, re.I)
        f = float(fr.group(1)) if fr else {'SNEG': -1.0, 'MID': 0.0, 'SPOS': 1.0}[word.group(1).upper()] if word else None
        parsed[col] = (sp, int(lay.group(1)) if lay else None, f)
    layered = [v for v in parsed.values() if v[1] is not None]
    if not layered and any(v[2] is not None for v in parsed.values()):          # homogeneous section
        return {col: (0, int(round(f)) + 1) for col, (sp, _, f) in parsed.items()
                if f is not None and min(abs(f + 1), abs(f), abs(f - 1)) < 1e-6}
    if all(lay == (sp - 1) // 3 + 1 for sp, lay, _ in layered):                # 3 points per layer (or no descriptions)
        return {col: divmod(sp - 1, 3) for col, (sp, _, _) in parsed.items() if sp >= 1}
    out, by_layer = {}, {}
    for col, (sp, lay, f) in parsed.items():
        if lay is not None:
            by_layer.setdefault(lay, []).append((sp, col, f))
    for lay, pts in by_layer.items():
        pts.sort()
        if len(pts) == 1:
            f = pts[0][2]
            if f in (-1.0, 1.0):
                out[pts[0][1]] = (lay - 1, int(f) + 1)
            continue
        out[pts[0][1]], out[pts[-1][1]] = (lay - 1, 0), (lay - 1, 2)
        if len(pts) % 2:
            out[pts[len(pts) // 2][1]] = (lay - 1, 1)
    return out


# --- matching -----------------------------------------------------------------------------

def align(os_, ab):
    """Axis order of the Abaqus coordinates and node / element pairing."""
    target = os_['points'][os_['shell']]
    best = None
    for order in ORDERS:
        tree = cKDTree(ab['node_xyz'][:, order])
        dist, idx = tree.query(target)
        if best is None or dist.mean() < best[1].mean():
            best = (order, dist, idx)
    order, dist, idx = best
    node_map = np.full(len(os_['points']), -1)
    node_map[os_['shell']] = idx
    ab_xyz = ab['node_xyz'][:, order]
    lab = {int(l): k for k, l in enumerate(ab['node_labels'])}
    ab_cent = np.array([[ab_xyz[lab[int(n)]] for n in c] for c in ab['elem_conn']]).mean(axis=1)
    edist, eidx = cKDTree(ab_cent).query(os_['centroids'])
    size = np.median(np.linalg.norm(np.diff(os_['points'][os_['faces']], axis=1), axis=2))
    rp = {}
    if len(ab.get('asm_labels', [])):
        axyz = ab['asm_xyz'][:, order]
        for e, k in os_['rigid'].items():
            j = int(np.argmin(np.linalg.norm(axyz - os_['points'][k], axis=1)))
            rp[e] = (k, j, float(np.linalg.norm(axyz[j] - os_['points'][k])))
    return dict(order=order, node_map=node_map, node_dist=dist, elem_map=eidx, elem_dist=edist, size=size,
                ab_xyz=ab_xyz, ab_cent=ab_cent, rp=rp, lab=lab)


# --- comparison tables ----------------------------------------------------------------------

def compare(name, comps, a, b, where, tol, group_scale=None):
    """Rows comparing Abaqus a with OpenSees b (n, ncomp) at matched points."""
    rows = []
    gs = group_scale if group_scale is not None else np.nanmax(np.abs(b)) if b.size else 0.0
    for c, comp in enumerate(comps):
        if gs > 0 and np.nanmax(np.abs(b[:, c])) < 1e-12 * gs and np.nanmax(np.abs(a[:, c])) < 1e-12 * gs:
            continue                                  # zero in both (e.g. a symmetry): nothing to compare
        x, y = a[:, c], b[:, c]
        ok = np.isfinite(x) & np.isfinite(y)
        if not ok.any():
            continue
        x, y = x[ok], y[ok]
        k = int(np.argmax(np.abs(y)))
        peak, at = float(y[k]), float(x[k])
        ab_peak = float(x[np.argmax(np.abs(x))])
        small = abs(peak) < 1e-3 * gs if gs > 0 else True
        rms = float(np.linalg.norm(x - y) / max(np.linalg.norm(y), 1e-300))
        scale = float(x @ y / (y @ y)) if y @ y > 0 else float('nan')
        corr = float(np.corrcoef(x, y)[0, 1]) if np.std(x) > 0 and np.std(y) > 0 else float('nan')
        if small:
            diff = float(np.abs(x - y).max() / gs) if gs > 0 else 0.0
            verdict = 'PASS (~0)' if diff <= tol else 'CHECK (~0 in OpenSees)'
            pd = float('nan')
        else:
            pd = (at - peak) / abs(peak)
            verdict = 'PASS' if abs(pd) <= tol and rms <= 3 * tol else 'CHECK'
            if abs(pd) > tol and abs(scale + 1) < 0.1:
                verdict = 'CHECK (sign convention?)'
            elif abs(pd) > tol and min(abs(scale - 2), abs(scale - 0.5)) < 0.1:
                verdict = 'CHECK (factor 2: tensor vs engineering?)'
        rows.append(dict(group=name, comp=comp, where=where(k, ok), opensees=peak, abaqus_same_point=at,
                         abaqus_peak=ab_peak, peak_diff=pd, rel_rms=rms, ls_scale=scale, corr=corr, verdict=verdict))
    return rows


def field_components(ab, name):
    m = ab['meta']['fields'].get(name)
    return (ab['F_' + name], m['components'], m) if m else (None, [], None)


def pick(arr, comps, labels):
    """Columns of `arr` (elements, comps) for the given labels (NaN if absent)."""
    out = np.full((arr.shape[0], len(labels)), np.nan)
    for j, l in enumerate(labels):
        if l in comps:
            out[:, j] = arr[:, comps.index(l)]
    return out


def run(os_path, ab_path, out_dir, tol, name):
    os_, ab = load_opensees(os_path), load_abaqus(ab_path)
    name = name or os_['meta'].get('title') or Path(os_path).stem
    m = align(os_, ab)
    out_dir.mkdir(parents=True, exist_ok=True)
    o = list(m['order'])
    nm, em = m['node_map'], m['elem_map']
    shell = os_['shell']
    info = dict(opensees=str(os_path), abaqus=str(ab_path), odb=ab['meta'].get('odb'), step=ab['meta'].get('step'),
                abaqus_version=ab['meta'].get('version'), axis_order=o,
                nodes=f'{len(shell)} OpenSees shell nodes, {len(ab["node_labels"])} Abaqus nodes',
                elements=f'{len(os_["faces"])} OpenSees facets, {len(ab["elem_labels"])} Abaqus shell elements',
                node_match_max=float(m['node_dist'].max()), elem_match_max=float(m['elem_dist'].max()),
                element_size=float(m['size']), frames=len(ab['frame_value']),
                same_mesh=bool(m['node_dist'].max() <= 1e-3 * m['size']
                               and len(ab['elem_labels']) == len(os_['faces'])))
    xyz = os_['points']
    rows = []

    def at_node(k, ok):
        return 'node at (' + ', '.join(f'{v:.4g}' for v in xyz[shell[np.flatnonzero(ok)[k]]]) + ')'

    def at_elem(k, ok):
        return 'element at (' + ', '.join(f'{v:.4g}' for v in os_['centroids'][np.flatnonzero(ok)[k]]) + ')'

    # displacements and rotations (final frame), shell nodes + rigid-end reference points
    U, UR = ab['U'][-1][:, o], ab['UR'][-1][:, o]
    b = os_['disp'][shell]
    a = np.hstack([U[nm[shell]], UR[nm[shell]]])
    rows += compare('displacement', ['ux', 'uy', 'uz'], a[:, :3], b[:, :3], at_node, tol)
    size = (xyz.max(axis=0) - xyz.min(axis=0)).max()
    rows += compare('rotation', ['rx', 'ry', 'rz'], a[:, 3:], b[:, 3:], at_node, tol,
                    group_scale=max(np.abs(b[:, 3:]).max(), np.abs(b[:, :3]).max() / size))
    umag_os, umag_ab = np.linalg.norm(b[:, :3], axis=1), np.linalg.norm(a[:, :3], axis=1)
    rows += compare('displacement', ['|u|'], umag_ab[:, None], umag_os[:, None], at_node, tol)
    for e, (k, j, dist) in m['rp'].items():
        ra = np.r_[ab['asm_U'][-1][j][o], ab['asm_UR'][-1][j][o]]
        rows += compare(f'rigid end {e}', ['ux', 'uy', 'uz', 'rx', 'ry', 'rz'], ra[None], os_['disp'][k][None],
                        lambda kk, ok, d=dist: f'reference point ({d:.2g} from the OpenSees node)', tol,
                        group_scale=np.abs(os_['disp'][k][:3]).max() or None)

    # section strains and curvatures (facet / local material axes)
    st = os_['strains']
    h = sum(p['t'] for p in os_['lam']['plies'])
    SE, se_c, _ = field_components(ab, 'SE')
    SK, sk_c, _ = field_components(ab, 'SK')
    if SE is not None:
        se = SE[:, 0, :][em]
        a = pick(se, se_c, ['SE1', 'SE2', 'SE3'])
        rows += compare('membrane strain', ['exx (SE1)', 'eyy (SE2)', 'gxy (SE3)'], a, st[:, 0:3], at_elem, tol,
                        group_scale=max(np.abs(st[:, 0:3]).max(), np.abs(st[:, 3:6]).max() * h / 2))
        k_ab = pick(se, se_c, SK_LABELS)
    else:
        k_ab = None
    if SK is not None:
        k_ab = pick(SK[:, 0, :][em], sk_c, SK_LABELS)
    if k_ab is not None and np.isfinite(k_ab).any():
        rows += compare('curvature', [f'{c} ({l})' for c, l in zip(('kxx', 'kyy', 'kxy'), SK_LABELS)],
                        k_ab, st[:, 3:6], at_elem, tol)

    # ply stresses (ply axes) from OpenSees strains vs Abaqus section points, per facet group
    # (flange: the results laminate; web: the doubled laminate), and section forces from the same laminates
    groups = facet_laminates(os_)
    n_max = max(len(g[1]['plies']) for g in groups)
    nf = len(st)
    sig = np.full((nf, n_max, 3, 3), np.nan)
    NM = np.zeros((nf, 6))
    top = np.zeros(nf, int)                                   # top ply of every facet's laminate
    for _, lam, msk in groups:
        sg, nm_ = opensees_ply_stresses(st[msk], lam)
        sig[msk, :sg.shape[1]] = sg
        NM[msk] = nm_
        top[msk] = sg.shape[1] - 1
    if len(groups) > 1:
        info['laminates'] = '; '.join(f'{lbl.strip()}: {int(msk.sum())} facets, ['
                                      + '/'.join(f'{q["theta"]:g}' for q in lam['plies']) + ']'
                                      for lbl, lam, msk in groups)
    S, s_c, s_meta = field_components(ab, 'S')
    s_ab = None
    if S is not None:
        spmap = section_point_map(s_meta, s_meta.get('section_points') or list(range(1, S.shape[1] + 1)))
        s_ab = np.full(sig.shape, np.nan)
        for col, (p, j) in spmap.items():
            if p < n_max:
                s_ab[:, p, j] = pick(S[:, col, :][em], s_c, ['S11', 'S22', 'S12'])
        s_ab[np.isnan(sig)] = np.nan                       # layers the facet's laminate does not have
        have = sorted({(p, j) for p, j in spmap.values() if p < n_max})
        info['section_points'] = (f'{len(spmap)} Abaqus stress section points paired with plies '
                                  f'(layer, position): ' + ', '.join(f'{p + 1}{POS[j][0]}' for p, j in have))
        for lbl, lam, msk in groups:
            for p, q in enumerate(lam['plies']):
                pos = [j for j in (0, 2) if np.isfinite(s_ab[msk, p, j]).any()]
                if not pos and np.isfinite(s_ab[msk, p, 1]).any():
                    pos = [1]
                for j in pos:
                    a, b = np.where(msk[:, None], s_ab[:, p, j], np.nan), np.where(msk[:, None], sig[:, p, j], np.nan)
                    rows += compare(f'{lbl}ply {p + 1} ({q["theta"]:g} deg) {POS[j]}',
                                    ['s1 (S11)', 's2 (S22)', 't12 (S12)'], a, b, at_elem, tol,
                                    group_scale=np.nanmax(np.abs(sig)))

    # section forces and moments
    SF, sf_c, _ = field_components(ab, 'SF')
    SM, sm_c, _ = field_components(ab, 'SM')
    if SF is not None:
        rows += compare('section force (N/mm)', ['N11 (SF1)', 'N22 (SF2)', 'N12 (SF3)'],
                        pick(SF[:, 0, :][em], sf_c, ['SF1', 'SF2', 'SF3']), NM[:, 0:3], at_elem, tol,
                        group_scale=max(np.abs(NM[:, 0:3]).max(), 6 * np.abs(NM[:, 3:6]).max() / h))
    if SM is not None:
        rows += compare('section moment (N mm/mm)', ['M11 (SM1)', 'M22 (SM2)', 'M12 (SM3)'],
                        pick(SM[:, 0, :][em], sm_c, ['SM1', 'SM2', 'SM3']), NM[:, 3:6], at_elem, tol,
                        group_scale=max(np.abs(NM[:, 3:6]).max(), np.abs(NM[:, 0:3]).max() * h / 6))

    # load path (displacement control / Riks)
    path = load_path(os_, ab, m)
    if path:
        rows.append(dict(group='load path', comp='load factor', where=path['where'], opensees=path['os_final'],
                         abaqus_same_point=path['ab_at_os_final'], abaqus_peak=path['ab_max'],
                         peak_diff=path['max_rel_diff'], rel_rms=float('nan'), ls_scale=float('nan'), corr=float('nan'),
                         verdict='PASS' if path['max_rel_diff'] <= tol else 'CHECK'))

    plots(os_, ab, m, sig, s_ab, k_ab, path, out_dir, name, top)
    write_report(info, rows, out_dir, name, tol)
    return info, rows


def load_path(os_, ab, m):
    an = (os_['meta'].get('case') or {}).get('analysis', {})
    h = os_['history']
    if an.get('type') != 'displacement_control' or h.ndim != 2 or h.shape[1] < 2 or 'LPF' not in ab:
        return None
    dof = an.get('dof', 3) - 1
    k = int(np.argmin(np.abs(os_['disp'][:, dof] - h[-1, 1])))       # node whose final DOF = last control value
    o = list(m['order'])
    rp = [j for e, (kk, j, _) in m['rp'].items() if kk == k]
    if rp:
        d_ab = ab['asm_U'][:, rp[0]][:, o][:, dof] if dof < 3 else ab['asm_UR'][:, rp[0]][:, o][:, dof - 3]
    else:
        src = ab['U'] if dof < 3 else ab['UR']
        d_ab = src[:, m['node_map'][k]][:, o][:, dof % 3]
    lpf = ab['LPF'][:, -1]
    n = min(len(lpf), len(d_ab))
    d_ab, lpf = d_ab[:n], lpf[:n]
    xs, ys = h[:, 1], h[:, 0]
    order = np.argsort(xs)
    inside = (d_ab >= xs.min()) & (d_ab <= xs.max())
    rel = [abs(l - np.interp(d, xs[order], ys[order])) / max(abs(ys).max(), 1e-300)
           for d, l in zip(d_ab[inside], lpf[inside]) if d != 0]
    j = int(np.argmin(np.abs(d_ab - h[-1, 1])))
    return dict(os=(xs, ys), ab=(d_ab, lpf), dof=dof + 1, node=k, os_final=float(ys[-1]),
                ab_at_os_final=float(lpf[j]), ab_max=float(np.abs(lpf).max()),
                max_rel_diff=float(max(rel)) if rel else float('nan'),
                where=f'control DOF {dof + 1} at ({", ".join(f"{v:.4g}" for v in os_["points"][k])}), {int(inside.sum())} Abaqus frames in range')


# --- plots --------------------------------------------------------------------------------

def developed(os_):
    """(x, s) of every node: s = arc length across the cross-section, from
    the chain of facet edges on the x = min end (extruded shells); None if
    the mesh is not a single extruded strip."""
    xyz, faces = os_['points'], os_['faces']
    size = (xyz.max(axis=0) - xyz.min(axis=0)).max()
    end = set(np.flatnonzero(np.abs(xyz[:, 0] - xyz[os_['shell'], 0].min()) < 1e-6 * size)) & set(os_['shell'])
    nbr = {n: set() for n in end}
    for f in faces:
        for a, b in zip(f, np.roll(f, -1)):
            if a in end and b in end and a != b:
                nbr[a].add(b)
                nbr[b].add(a)
    ends = [n for n, v in nbr.items() if len(v) == 1]
    if len(ends) != 2 or any(len(v) > 2 for v in nbr.values()):
        return None
    chain, prev = [ends[0]], None
    while len(chain) < len(end):
        nxt = [n for n in nbr[chain[-1]] if n != prev]
        if not nxt:
            return None
        prev = chain[-1]
        chain.append(nxt[0])
    yz = xyz[chain, 1:]
    s_chain = np.r_[0.0, np.cumsum(np.linalg.norm(np.diff(yz, axis=0), axis=1))]
    dist, idx = cKDTree(yz).query(xyz[:, 1:])
    if dist[os_['shell']].max() > 1e-6 * size:
        return None
    return np.c_[xyz[:, 0], s_chain[idx]]


def _poly2d(ax, xs, faces, values, cmap, vmin, vmax):
    from matplotlib.collections import PolyCollection
    pc = PolyCollection(xs[faces], cmap=cmap, edgecolor='none')
    pc.set_array(values)
    pc.set_clim(vmin, vmax)
    ax.add_collection(pc)
    ax.autoscale_view()
    ax.set_xlabel('x [mm]')
    ax.set_ylabel('s across section [mm]')
    return pc


def _poly(ax, xyz, faces, values, cmap, vmin, vmax):
    pc = Poly3DCollection(xyz[faces], cmap=cmap, edgecolor='none')
    pc.set_array(values)
    pc.set_clim(vmin, vmax)
    ax.add_collection3d(pc)
    _limits(ax, xyz)
    return pc


def _limits(ax, xyz):
    lo, hi = xyz.min(axis=0), xyz.max(axis=0)
    r = np.maximum(hi - lo, 0.15 * (hi - lo).max())      # proportional, thin directions kept visible
    c = (lo + hi) / 2
    for setter, cc, rr in zip((ax.set_xlim, ax.set_ylim, ax.set_zlim), c, r):
        setter(cc - rr / 2, cc + rr / 2)
    ax.set_box_aspect(tuple(r))
    ax.set_xlabel('x')
    ax.set_ylabel('y')
    ax.set_zlabel('z')


def plots(os_, ab, m, sig, s_ab, k_ab, path, out_dir, name, top=None):
    """top: index of the top ply of every facet's laminate (default: the last ply)."""
    if s_ab is not None:
        top = np.full(len(sig), sig.shape[1] - 1) if top is None else top
        ar = np.arange(len(sig))
        sig_top, ab_top = sig[ar, top, 2], s_ab[ar, top, 2]          # top surface of every facet
    o = list(m['order'])
    xyz, faces = os_['points'], os_['faces']
    lab = m['lab']
    ab_faces = np.array([[lab[int(n)] for n in c] for c in ab['elem_conn']])
    U_os, U_ab = os_['disp'][:, :3], ab['U'][-1][:, o]
    size = (xyz.max(axis=0) - xyz.min(axis=0)).max()
    umax = max(np.abs(U_os).max(), np.nanmax(np.abs(U_ab)), 1e-300)
    mag = float(f'{0.1 * size / umax:.2g}') if umax < 0.1 * size else 1.0

    # deformed shapes
    fig = plt.figure(figsize=(9, 7))
    ax = fig.add_subplot(111, projection='3d')
    ax.add_collection3d(Poly3DCollection(xyz[faces], facecolor='none', edgecolor='0.8', linewidth=0.3))
    ax.add_collection3d(Poly3DCollection((xyz + mag * U_os)[faces], facecolor='none', edgecolor='tab:blue',
                                         linewidth=0.5))
    ax.add_collection3d(Poly3DCollection((m['ab_xyz'] + mag * U_ab)[ab_faces], facecolor='none', edgecolor='tab:red',
                                         linewidth=0.5, linestyle=':'))
    _limits(ax, np.vstack([xyz, xyz + mag * U_os, m['ab_xyz'] + mag * U_ab]))
    ax.set_title(f'{name}: deformed shape x {mag:.3g}\nOpenSees (blue), Abaqus (red dotted), undeformed (grey)')
    fig.savefig(out_dir / f'{name}_deformed.png', dpi=150, bbox_inches='tight')
    plt.close(fig)

    # field maps: OpenSees | Abaqus | difference (on the OpenSees mesh, Abaqus values at the matched point)
    st = os_['strains']
    fields = [('|u| [mm]', 'node', np.linalg.norm(U_os, axis=1), np.linalg.norm(U_ab, axis=1)[m['node_map']])]
    if k_ab is not None:
        c = int(np.argmax(np.abs(st[:, 3:6]).max(axis=0)))
        fields.append((['kxx', 'kyy', 'kxy'][c] + ' [1/mm]', 'elem', st[:, 3 + c], k_ab[:, c]))
    if s_ab is not None:
        c = int(np.argmax(np.nanmax(np.abs(sig_top), axis=0)))
        fields.append((['s1', 's2', 't12'][c] + ' top ply, top [MPa]', 'elem', sig_top[:, c], ab_top[:, c]))
    xs = developed(os_)
    fig = plt.figure(figsize=(15, 3.6 * len(fields)) if xs is not None else (15, 4.2 * len(fields)))
    for r, (title, kind, vos, vab) in enumerate(fields):
        if kind == 'node':
            vos, vab = vos[faces].mean(axis=1), vab[faces].mean(axis=1)
        lo, hi = np.nanmin([vos.min(), np.nanmin(vab)]), np.nanmax([vos.max(), np.nanmax(vab)])
        dmax = np.nanmax(np.abs(vab - vos)) or 1.0
        for c, (lbl, v, cmap, lim) in enumerate((('OpenSees', vos, 'viridis', (lo, hi)), ('Abaqus', vab, 'viridis', (lo, hi)),
                                                  ('Abaqus - OpenSees', vab - vos, 'coolwarm', (-dmax, dmax)))):
            if xs is not None:
                ax = fig.add_subplot(len(fields), 3, 3 * r + c + 1)
                pc = _poly2d(ax, xs, faces, np.nan_to_num(v), cmap, *lim)
            else:
                ax = fig.add_subplot(len(fields), 3, 3 * r + c + 1, projection='3d')
                pc = _poly(ax, xyz, faces, np.nan_to_num(v), cmap, *lim)
            fig.colorbar(pc, ax=ax, shrink=0.6)
            ax.set_title(f'{lbl}: {title}', fontsize=9)
    fig.suptitle(f'{name}: fields on the ' + ('unrolled ' if xs is not None else '') +
                 'undeformed OpenSees mesh (Abaqus at the matched node / element)')
    fig.tight_layout()
    fig.savefig(out_dir / f'{name}_fields.png', dpi=130, bbox_inches='tight')
    plt.close(fig)

    # parity plots
    groups = [('displacement [mm]', os_['disp'][os_['shell'], :3], U_ab[m['node_map'][os_['shell']]], ['ux', 'uy', 'uz'])]
    if k_ab is not None:
        groups.append(('curvature [1/mm]', st[:, 3:6], k_ab, ['kxx', 'kyy', 'kxy']))
    if s_ab is not None:
        groups.append(('ply stress [MPa] (all plies, top and bottom)', sig[:, :, (0, 2)].reshape(-1, 3),
                       s_ab[:, :, (0, 2)].reshape(-1, 3), ['s1', 's2', 't12']))
    fig, axes = plt.subplots(1, len(groups), figsize=(5 * len(groups), 4.6), squeeze=False)
    for ax, (title, b, a, comps) in zip(axes[0], groups):
        for c, comp in enumerate(comps):
            ax.plot(b[:, c], a[:, c], '.', ms=3, label=comp)
        lim = np.nanmax(np.abs(np.r_[b.ravel(), a.ravel()])) or 1.0
        ax.plot([-lim, lim], [-lim, lim], 'k-', lw=0.8)
        ax.set_xlabel('OpenSees')
        ax.set_ylabel('Abaqus')
        ax.set_title(title, fontsize=10)
        ax.legend()
        ax.grid(alpha=0.3)
    fig.suptitle(f'{name}: Abaqus vs OpenSees at matched points (on the line = equal)')
    fig.tight_layout()
    fig.savefig(out_dir / f'{name}_parity.png', dpi=150)
    plt.close(fig)

    # along x at mid-section
    x = xyz[:, 0]
    tip = os_['shell'][np.abs(x[os_['shell']] - x[os_['shell']].max()) < 1e-6 * size]
    mid = tip[np.argmin(np.linalg.norm(xyz[tip, 1:] - xyz[tip, 1:].mean(axis=0), axis=1))]
    line = os_['shell'][np.linalg.norm(xyz[os_['shell'], 1:] - xyz[mid, 1:], axis=1) < 1e-6 * size]
    line = line[np.argsort(x[line])]
    cyz = os_['centroids'][:, 1:]
    dmin = np.linalg.norm(cyz - xyz[mid, 1:], axis=1)
    eline = np.flatnonzero(dmin <= dmin.min() + 1e-6 * size)
    eline = eline[np.argsort(os_['centroids'][eline, 0])]
    cu = int(np.argmax(np.abs(U_os).max(axis=0)))
    panels = [(f'u{"xyz"[cu]} [mm]', x[line], U_os[line, cu], x[line], U_ab[m['node_map'][line], cu])]
    if k_ab is not None:
        c = int(np.argmax(np.abs(st[:, 3:6]).max(axis=0)))
        ex = os_['centroids'][eline, 0]
        panels.append((['kxx', 'kyy', 'kxy'][c] + ' [1/mm]', ex, st[eline, 3 + c], ex, k_ab[eline, c]))
    if s_ab is not None:
        c = int(np.argmax(np.nanmax(np.abs(sig_top), axis=0)))
        ex = os_['centroids'][eline, 0]
        panels.append((['s1', 's2', 't12'][c] + ' top ply, top [MPa]', ex, sig_top[eline, c], ex, ab_top[eline, c]))
    fig, axes = plt.subplots(len(panels), 1, figsize=(8, 2.8 * len(panels)), squeeze=False)
    for ax, (title, x1, y1, x2, y2) in zip(axes[:, 0], panels):
        ax.plot(x1, y1, '-', color='tab:blue', label='OpenSees')
        ax.plot(x2, y2, '--', color='tab:red', label='Abaqus')
        ax.set_ylabel(title)
        ax.grid(alpha=0.3)
        ax.legend()
    axes[-1, 0].set_xlabel('x [mm]')
    fig.suptitle(f'{name}: along x at (y, z) = ({xyz[mid, 1]:.3g}, {xyz[mid, 2]:.3g})')
    fig.tight_layout()
    fig.savefig(out_dir / f'{name}_along_x.png', dpi=150)
    plt.close(fig)

    if path:
        fig, ax = plt.subplots(figsize=(6, 4.5))
        ax.plot(*path['os'], 'o-', color='tab:blue', label='OpenSees')
        ax.plot(*path['ab'], 's--', color='tab:red', ms=3, label='Abaqus (LPF)')
        ax.set_xlabel(f'control displacement, DOF {path["dof"]} [mm]')
        ax.set_ylabel('load factor')
        ax.grid(alpha=0.3)
        ax.legend()
        ax.set_title(f'{name}: load path')
        fig.tight_layout()
        fig.savefig(out_dir / f'{name}_load_path.png', dpi=150)
        plt.close(fig)


# --- report -------------------------------------------------------------------------------

def _f(v, fmt='{:+.5g}'):
    return '' if v is None or (isinstance(v, float) and math.isnan(v)) else fmt.format(v)


def write_report(info, rows, out_dir, name, tol):
    n_check = sum(not r['verdict'].startswith('PASS') for r in rows)
    lines = [f'# {name}: OpenSeesPy vs Abaqus results', '',
             f'- OpenSees results: `{info["opensees"]}`', f'- Abaqus results: `{info["abaqus"]}` '
             f'(ODB `{info["odb"]}`, step {info["step"]}, Abaqus {info["abaqus_version"]}, {info["frames"]} frames)',
             f'- {info["nodes"]}; {info["elements"]}',
             f'- Abaqus axes used as global (x, y, z) = Abaqus columns {info["axis_order"]}; '
             f'node pairing max distance {info["node_match_max"]:.3g} mm, element centroids {info["elem_match_max"]:.3g} mm '
             f'(element size {info["element_size"]:.3g} mm): '
             + ('**same mesh**' if info['same_mesh'] else '**different meshes: nearest-point comparison, expect larger differences**')]
    if info['abaqus_version'] == 'mock':
        lines.insert(2, '**WARNING: the Abaqus file comes from the stand-in ODB (odb_mock.py), not from an Abaqus run: '
                        'this is a test of the tools, not a verification.**\n')
    for k in ('laminates', 'section_points', 'stress_note'):
        if k in info:
            lines.append(f'- {k.replace("_", " ")}: {info[k]}')
    lines += ['', f'Peak = largest |OpenSees value|; Abaqus at the same point; diff = (Abaqus - OpenSees) / |peak|; '
              f'rel. RMS = ||Abaqus - OpenSees|| / ||OpenSees|| over all points; scale = least-squares Abaqus/OpenSees. '
              f'PASS: |diff| <= {tol:.0%} and rel. RMS <= {3 * tol:.0%} (~0: OpenSees peak < 0.1% of the group, '
              f'max |diff| <= {tol:.0%} of the group).', '',
              '| quantity | component | where (OpenSees peak) | OpenSees | Abaqus same point | Abaqus peak | diff | rel. RMS | scale | verdict |',
              '|---|---|---|---|---|---|---|---|---|---|']
    for r in rows:
        lines.append(f'| {r["group"]} | {r["comp"]} | {r["where"]} | {_f(r["opensees"])} | {_f(r["abaqus_same_point"])} | '
                     f'{_f(r["abaqus_peak"])} | {_f(r["peak_diff"], "{:+.2%}")} | {_f(r["rel_rms"], "{:.2%}")} | '
                     f'{_f(r["ls_scale"], "{:.4f}")} | {r["verdict"]} |')
    lines += ['', f'**{len(rows) - n_check}/{len(rows)} PASS, {n_check} CHECK.**', '',
              'Pictures: ' + ', '.join(f'`{p.name}`' for p in sorted(out_dir.glob(f'{name}_*.png')))]
    (out_dir / f'{name}_comparison.md').write_text('\n'.join(lines) + '\n', encoding='utf-8')
    (out_dir / f'{name}_comparison.json').write_text(json.dumps(dict(info=info, rows=rows), indent=1), encoding='utf-8')


def main():
    ap = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument('opensees', help='OpenSees results .npz (from the assembled OpenSeesPy script)')
    ap.add_argument('abaqus', help='.npz written by odb_extract.py from the Abaqus ODB')
    ap.add_argument('--out', help='output folder')
    ap.add_argument('--tol', type=float, default=0.03)
    ap.add_argument('--name')
    a = ap.parse_args()
    out = Path(a.out) if a.out else Path(a.abaqus).resolve().parent / f'compare_{a.name or Path(a.opensees).stem}'
    info, rows = run(Path(a.opensees), Path(a.abaqus), out, a.tol, a.name)
    print(next(out.glob('*_comparison.md')).read_text(encoding='utf-8'))
    print(f'written to {out}')

if __name__ == '__main__':
    main()
