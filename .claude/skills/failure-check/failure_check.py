"""
Ply stresses in every element and the 2D Hashin failure criterion (default;
Tsai-Hill as an option) of a solved shell model (results .npz from the
shell-bc-load skill, laminate and strengths from the laminate-properties skill).

Ply stresses (classical lamination theory kinematics on the FE strains):
for each facet and Gauss point the generalized strains (eps0, k) in the
facet frame give eps(z) = eps0 + z k at the bottom, middle and top of every
ply; rotated to the ply axes (angle theta from the facet x axis) and
multiplied by the ply's reduced stiffness Q:
    [s1, s2, t12] = Q T_eps(theta) (eps0 + z k)
This uses the exact kinematics; it does not depend on how LayeredShell
integrates the layers.

Hashin 2D (Benazzo & Pellegrino, AIAA SciTech 2025, AIAA 2025-0188, Eq. 3,
after Hashin 1980 and Reddy & Pandey 1987). Only the mode matching the
stress sign is active; F = max over the active modes, failure at F >= 1:
    fibre tension     (s1 >= 0): F_ft = (s1/Xt)^2 + (t12/S12)^2
    fibre compression (s1 <  0): F_fc = (s1/Xc)^2
    matrix tension    (s2 >= 0): F_mt = (s2/Yt)^2 + (t12/S12)^2
    matrix compression(s2 <  0): F_mc = (s2/(2 S23))^2 + ((Yc/(2 S23))^2 - 1) s2/Yc + (t12/S12)^2
The paper's printed F_mc has S12 in place of S23 in the 2nd/3rd terms and a
minus on the shear term; the standard Hashin form above is used (see the
reorganization log). S23 (transverse shear strength) is not in the catalog:
default S23 = Yc/2, which makes F_mc = (s2/Yc)^2 + (t12/S12)^2.

Strength ratio R: the factor on all ply stresses that brings the point to
F = 1, solved per mode from a R^2 + b R = 1 (exact also for the linear term
of F_mc). It is a load factor only for a linear analysis.

Tsai-Hill (--criterion tsai-hill): FI = (s1/X)^2 - s1 s2/X^2 + (s2/Y)^2 + (t12/S)^2,
X = Xt or Xc and Y = Yt or Yc by the stress sign.

Flange and web facets: the web of a TRAC (OM/CO: the bonded tabs) is two
flange laminates bonded on top of each other, so web facets are checked with
the doubled layup (z from the bond plane, -h..+h). Default 'mirror' stack:
identical tapes bonded face to face, the lower tape turned over (flange
plies in reverse order with negated angles under the flange plies);
--web-stack repeat stacks the plies twice as listed. Web facets are the
facets whose section arc length s (mid-strip) lies in a web range, from
--web S0 S1, else the case geometry "web": [[s0, s1], ...], else, for a
TRAC/OM/CO catalog boom (--boom ID or geometry "boom": ID), the 'line'
segments of a 'segments' section whose length is the catalog web width w.
A model of a catalog boom section (shell-mesh section {"type": "boom"}, or
any branched section with 'web' branches) has the doubled laminate on its web
facets; those facets are then the web (results meta strip_label), with the
model's web stack. Older single-chain models give every facet the single
laminate, so their FE web is half as stiff as the real one.

Coiling check (only if the simulation gives F < 1): flattening a flange of
radius r is the curvature change k = [0, 1/r, 0] (transverse, k_xx = k_xy = 0
held) with free membrane (N = 0): eps0 = -A^-1 B k from the flange ABD. The
ply stresses and the criterion are evaluated for both signs of k (which face
is concave is not known in the facet frame) and the larger F is kept. r =
smallest arc radius of the cross-section: --flatten-radius, else the
catalog boom row (R_A, R_B), else the arcs of the case section. If the
coiling F is above the simulation F it is reported as the governing F.

Usage:
  python failure_check.py results.npz [--criterion hashin|tsai-hill] [--S23 ..]
          [--at gauss|centroid] [--top 10] [--csv f.csv]
          [--Xt .. --Xc .. --Yt .. --Yc .. --S ..]   (override / supply strengths, MPa)
          [--yield SY]                               (isotropic: X = Y = sy, S = sy/sqrt3)
          [--boom ID] [--web S0 S1 ..] [--web-stack mirror|repeat] [--flatten-radius r]
Units: N, mm, MPa.
"""
import argparse
import math
import sys
from pathlib import Path

import numpy as np

_SKILLS = Path(__file__).resolve().parents[1]
for _d in ('laminate-properties', 'shell-bc-load'):
    sys.path.insert(0, str(_SKILLS / _d))
import laminate_properties as lp   # noqa: E402

STRENGTHS = lp.STRENGTHS
Z_POINTS = ('bottom', 'middle', 'top')
MODES = ('fibre tension', 'fibre compression', 'matrix tension', 'matrix compression')
BOOM_CATALOG = _SKILLS.parent / 'memory.boom_geometry_catalog'
WEB_TYPES = ('TRAC', 'OM', 'CO')


def hashin_modes(s1, s2, t12, Xt, Xc, Yt, Yc, S, S23=None):
    """(a, b) of each mode, F_mode(R) = a R^2 + b R for stresses scaled by R
    (inactive modes a = b = 0). Arrays of shape (4,) + s1.shape."""
    S23 = Yc / 2 if S23 is None else S23
    s1, s2, t12 = np.broadcast_arrays(*(np.asarray(x, float) for x in (s1, s2, t12)))
    ft, mt = s1 >= 0, s2 >= 0
    shear = (t12 / S)**2
    a = np.stack([np.where(ft, (s1 / Xt)**2 + shear, 0.0),
                  np.where(ft, 0.0, (s1 / Xc)**2),
                  np.where(mt, (s2 / Yt)**2 + shear, 0.0),
                  np.where(mt, 0.0, (s2 / (2 * S23))**2 + shear)])
    b = np.zeros_like(a)
    b[3] = np.where(mt, 0.0, ((Yc / (2 * S23))**2 - 1) * s2 / Yc)
    return a, b


def hashin(s1, s2, t12, Xt, Xc, Yt, Yc, S, S23=None):
    """Hashin 2D index F = max over the active modes, and the mode index."""
    a, b = hashin_modes(s1, s2, t12, Xt, Xc, Yt, Yc, S, S23)
    F = a + b
    return F.max(axis=0), F.argmax(axis=0)


def tsai_hill(s1, s2, t12, Xt, Xc, Yt, Yc, S):
    """Plane-stress Tsai-Hill index, element-wise on arrays."""
    X = np.where(s1 >= 0, Xt, Xc)
    Y = np.where(s2 >= 0, Yt, Yc)
    return (s1 / X)**2 - s1 * s2 / X**2 + (s2 / Y)**2 + (t12 / S)**2


def strength_ratio(a, b):
    """Smallest R > 0 with a R^2 + b R = 1 over the modes (inf if none)."""
    with np.errstate(divide='ignore', invalid='ignore'):
        R = np.where(a > 0, (-b + np.sqrt(b * b + 4 * a)) / (2 * a), np.where(b > 0, 1 / b, np.inf))
    return R.min(axis=0)


def ply_stresses(strains, lam, at='gauss'):
    """strains: (nf, ng, 8) from shell-bc-load. Returns (sig12, sigxy, z):
    stresses (nf, ng', n_ply, 3 z-points, 3) in ply axes [s1, s2, t12] and in
    the facet frame [sxx, syy, txy], and z (n_ply, 3). at = 'centroid'
    averages the Gauss points first (ng' = 1)."""
    E = strains.mean(axis=1, keepdims=True) if at == 'centroid' else strains
    e0, k = E[..., 0:3], E[..., 3:6]
    n = len(lam.plies)
    z = np.array([[q['z0'], (q['z0'] + q['z1']) / 2, q['z1']] for q in lam.plies])
    sig12 = np.zeros(E.shape[:2] + (n, 3, 3))
    sigxy = np.zeros_like(sig12)
    for p, q in enumerate(lam.plies):
        Te = lp.strain_rotation(q['theta'])
        Ts_inv = np.linalg.inv(lp.stress_rotation(q['theta']))
        Q = lp.reduced_stiffness(lam.materials[q['mat']])
        for iz, zz in enumerate(z[p]):
            s = (e0 + zz * k) @ Te.T @ Q.T
            sig12[:, :, p, iz] = s
            sigxy[:, :, p, iz] = s @ Ts_inv.T
    return sig12, sigxy, z


def strengths_of(lam, overrides=None):
    """(n_ply, 5) strengths Xt Xc Yt Yc S per ply [MPa]."""
    out = []
    for q in lam.plies:
        m = dict(lam.materials[q['mat']])
        m.update({k: v for k, v in (overrides or {}).items() if v is not None})
        if any(m.get(k) is None for k in STRENGTHS):
            raise ValueError(f'ply strengths missing ({", ".join(k for k in STRENGTHS if m.get(k) is None)}): '
                             'give them on the command line or use a catalog row with all five')
        out.append([m[k] for k in STRENGTHS])
    return np.array(out)


def failure_index(strains, lam, overrides=None, at='gauss', criterion='hashin', S23=None):
    """Returns F, mode, R, sig12, sigxy, z. F, mode (index into MODES; -1 for
    Tsai-Hill) and R (strength ratio) have shape (nf, ng, n_ply, 3)."""
    sig12, sigxy, z = ply_stresses(strains, lam, at)
    st = strengths_of(lam, overrides)
    F = np.zeros(sig12.shape[:4])
    mode = np.full(F.shape, -1)
    R = np.zeros(F.shape)
    for p in range(len(lam.plies)):
        s = np.moveaxis(sig12[:, :, p], -1, 0)
        if criterion == 'hashin':
            a, b = hashin_modes(*s, *st[p], S23)
            Fm = a + b
            F[:, :, p], mode[:, :, p] = Fm.max(axis=0), Fm.argmax(axis=0)
            R[:, :, p] = strength_ratio(a, b)
        else:
            F[:, :, p] = tsai_hill(*s, *st[p])
            with np.errstate(divide='ignore'):
                R[:, :, p] = 1 / np.sqrt(F[:, :, p])
    return F, mode, R, sig12, sigxy, z


def surface_fields(strains, lam):
    """Per-facet (centroid) fields for plotting: top/bottom surface stresses
    in the facet frame, and von Mises of the top surface (isotropic shells)."""
    _, sigxy, _ = ply_stresses(strains, lam, 'centroid')
    top, bot = sigxy[:, 0, -1, 2], sigxy[:, 0, 0, 0]
    f = {}
    for name, s in (('top', top), ('bottom', bot)):
        f[f'sigma_xx_{name}'], f[f'sigma_yy_{name}'], f[f'tau_xy_{name}'] = s.T
    sx, sy, txy = top.T
    f['von_Mises_top'] = np.sqrt(sx**2 - sx * sy + sy**2 + 3 * txy**2)
    return f


# --- flange / web --------------------------------------------------------------------

def boom_row(bid):
    """Row of the boom geometry catalog (boom_data.GEOMETRIES) with this ID."""
    sys.path.insert(0, str(BOOM_CATALOG))
    from boom_data import GEOMETRIES
    for g in GEOMETRIES:
        if g['id'] == bid.upper():
            return g
    raise ValueError(f'boom {bid!r} is not in {BOOM_CATALOG / "boom_geometry_catalog.txt"}')


def doubled_laminate(lam, stack='mirror'):
    """Web laminate (laminate_properties.doubled_laminate; shell-mesh uses the
    same one in the web facets of a TRAC / OM / CO model)."""
    return lp.doubled_laminate(lam, stack)


def strip_stations(res):
    """Section arc length s at the middle of every facet strip j (from the
    undeformed nodes of the first column of facets)."""
    if 'strip_s' in res['meta']:                       # branched section (shell-mesh strips)
        return np.array(res['meta']['strip_s'])
    nx, ny = res['meta']['nx'], res['meta']['ny']
    faces, pts = res['faces'], res['points']
    nodes = [faces[j * nx, 0] for j in range(ny)] + [faces[(ny - 1) * nx, 3]]
    s = np.concatenate([[0.0], np.cumsum(np.linalg.norm(np.diff(pts[nodes], axis=0), axis=1))])
    return (s[:-1] + s[1:]) / 2


def web_ranges(geom, boom=None, given=None):
    """Arc-length ranges [(s0, s1), ...] of the webs and where they came from."""
    if given:
        return [tuple(r) for r in given], 'given with --web'
    if geom.get('web'):
        return [tuple(r) for r in geom['web']], 'case file geometry "web"'
    if boom is None or boom['type'] not in WEB_TYPES:
        return [], 'no web (' + (f'{boom["id"]} is a {boom["type"]}' if boom else 'no catalog boom given') + ')'
    sec, w = geom.get('section', {}), boom['w']
    out, s = [], 0.0
    for seg in sec.get('segments', []) if sec.get('type') == 'segments' else []:
        ln = 0.0 if seg[0] == 'kink' else seg[1] if seg[0] == 'line' else seg[2]
        if seg[0] == 'line' and abs(ln - w) <= max(0.01 * w, 0.05):
            out.append((s, s + ln))
        s += ln
    if not out:
        return [], (f'WARNING: {boom["id"]} is a {boom["type"]} with {w:g} mm webs, but no web was found in the '
                    'mesh (give --web S0 S1 or geometry "web"); every facet is checked as flange')
    return out, f'line segments of the section with the {boom["id"]} web width w = {w:g} mm'


def web_mask(res, ranges):
    """Per facet: True if its strip's mid arc length lies in a web range."""
    s = strip_stations(res)
    strip = np.zeros(len(s), bool)
    for s0, s1 in ranges:
        strip |= (s >= min(s0, s1)) & (s <= max(s0, s1))
    return strip[np.arange(len(res['faces'])) // res['meta']['nx']]


def case_geometry(res):
    return (res['meta'].get('case') or {}).get('geometry') or {}


def facet_groups(res, lam, boom=None, web=None, stack='mirror', web_lam=None):
    """Flange and web facets of a results file. boom: catalog ID (default: case
    geometry "boom"); web: [(s0, s1), ...] (default: from the case / boom).
    Returns groups [(label, laminate, facet indices)], web mask, boom row, note."""
    geom, meta = case_geometry(res), res['meta']
    bid = boom or geom.get('boom') or meta.get('boom')
    row = boom_row(bid) if bid else None
    if not web and 'web' in meta.get('strip_label', []):
        # the FE model has the webs (doubled laminate on its web facets): use exactly those facets
        stack = meta.get('web_stack', stack)
        lab = np.array(meta['strip_label'])
        mask = (lab == 'web')[np.arange(len(res['faces'])) // meta['nx']]
        note = (f'web facets: {mask.sum()} of {len(mask)} (the web facets of the FE model, which carry the doubled '
                f'{stack} laminate)')
        wl = web_lam or doubled_laminate(lam, stack)       # web_lam: --web-laminate (added 11/10/26)
        return [('flange', lam, np.flatnonzero(~mask)), ('web', wl, np.flatnonzero(mask))],             mask, row, note
    ranges, src = web_ranges(geom, row, web)
    mask = web_mask(res, ranges) if ranges else np.zeros(len(res['faces']), bool)
    note = (f'web facets: {mask.sum()} of {len(mask)} ({src}'
            f'{"; s = " + ", ".join(f"{s0:g}..{s1:g}" for s0, s1 in ranges) + " mm" if ranges else ""})')
    groups = [('flange', lam, np.flatnonzero(~mask))]
    if mask.any():
        groups.append(('web', web_lam or doubled_laminate(lam, stack), np.flatnonzero(mask)))
    return groups, mask, row, note


def tape_ply(n, p, stack='mirror', m=None):
    """Flange ply index of ply p of the doubled (web) laminate of an n-ply flange.
    Custom web stacks ({'json': ...}, m plies: tape, bond plies, tape): the
    outer n plies on each side map to the tapes' plies, bond plies to None."""
    if isinstance(stack, dict):
        m = m or 2 * n
        return p if p < n else p - (m - n) if p >= m - n else None
    return p - n if p >= n else n - 1 - p if stack == 'mirror' else p


# --- coiling (flattening) check ------------------------------------------------------

def flatten_radius(geom, boom=None, given=None):
    """Smallest arc radius of the cross-section [mm] and where it came from (None if no arc)."""
    if given:
        return given, 'given with --flatten-radius'
    if boom is not None:
        R = [abs(r) for r, _ in boom['A'] + boom.get('B', [])]
        return min(R), f'smallest arc radius of catalog boom {boom["id"]}'
    sec = geom.get('section', {})
    R = ([sec['R']] if sec.get('type') == 'arc' else
         [s[1] for s in sec.get('segments', []) if s[0] == 'arc'] if sec.get('type') == 'segments' else [])
    if R:
        return min(abs(r) for r in R), 'smallest arc radius of the case cross-section'
    return None, 'no arc radius (no --boom / --flatten-radius and the section has no arcs)'


def coiling_check(lam, r, overrides=None, criterion='hashin', S23=None):
    """Flatten a flange of radius r: k = +-[0, 1/r, 0], N = 0 (eps0 = -A^-1 B k).
    Returns the failure_index tuple of the sign with the larger F, the sign and (eps0, k)."""
    k = np.array([0.0, 1.0 / r, 0.0])
    K = lam.abd()
    e0 = -np.linalg.solve(K[:3, :3], K[:3, 3:] @ k)
    best = None
    for sign in (1, -1):
        E = np.zeros((1, 1, 8))
        E[0, 0, :3], E[0, 0, 3:6] = sign * e0, sign * k
        out = failure_index(E, lam, overrides, 'gauss', criterion, S23)
        if best is None or out[0].max() > best[0][0].max():
            best = out, sign, (sign * e0, sign * k)
    return best


def report(res, lam, F, mode, R, sig12, z, at, criterion, top=10, facets=None, label=''):
    """Text summary: worst points, per-ply maxima. facets: model facet index
    of each row of F (default all facets); label names the group."""
    meta = res['meta']
    nx = meta['nx']
    pts, faces = res['points'], res['faces']
    nf = F.shape[0]
    facets = np.arange(nf) if facets is None else np.asarray(facets)
    name = 'Hashin 2D' if criterion == 'hashin' else 'Tsai-Hill'
    md = lambda m: MODES[m] if m >= 0 else '-'
    lines = [f'{name} check{f" ({label})" if label else ""}: {meta.get("title", "")}  [{lam.describe()}], {nf} facets, '
             f'{"Gauss points" if at == "gauss" else "facet centroids"}, 3 points through each ply']
    lines.append(f'{"rank":>4} {"F":>9} {"R":>8} {"facet":>6} {"x":>8} {"y":>8} {"z":>8} {"ply":>3} {"theta":>6} '
                 f'{"at":>6} {"s1":>10} {"s2":>10} {"t12":>10}  mode')
    for r, idx in enumerate(np.argsort(F, axis=None)[::-1][:top], 1):
        f, g, p, iz = np.unravel_index(idx, F.shape)
        c = pts[faces[facets[f]]].mean(axis=0)
        s1, s2, t12 = sig12[f, g, p, iz]
        lines.append(f'{r:>4} {F[f, g, p, iz]:>9.4g} {R[f, g, p, iz]:>8.4g} {facets[f]:>6} {c[0]:>8.4g} {c[1]:>8.4g} '
                     f'{c[2]:>8.4g} {p + 1:>3} {lam.plies[p]["theta"]:>6g} {Z_POINTS[iz]:>6} {s1:>10.4g} '
                     f'{s2:>10.4g} {t12:>10.4g}  {md(mode[f, g, p, iz])}')
    lines.append('Per ply (max over the model):')
    for p in range(len(lam.plies)):
        k = np.unravel_index(F[:, :, p].argmax(), F[:, :, p].shape)
        lines.append(f'  ply {p + 1:>2} ({lam.plies[p]["theta"]:>6g} deg, z {z[p, 0]:+.4g}..{z[p, 2]:+.4g}): '
                     f'max F {F[:, :, p][k]:.4g} ({md(mode[:, :, p][k])}), min R {R[:, :, p].min():.4g}, '
                     f'max |s1| {np.abs(sig12[:, :, p, :, 0]).max():.4g}, max |s2| {np.abs(sig12[:, :, p, :, 1]).max():.4g}, '
                     f'max |t12| {np.abs(sig12[:, :, p, :, 2]).max():.4g} MPa')
    f, g, p, iz = np.unravel_index(F.argmax(), F.shape)
    Fmax, f = F.max(), facets[f]
    lines.append(f'{f"{label}: " if label else ""}MAX F = {Fmax:.4g} -> {"FAILS (F >= 1)" if Fmax >= 1 else "no failure predicted"}'
                 f'{"" if criterion != "hashin" else f" ({md(mode.flat[F.argmax()])})"}; '
                 f'min strength ratio R = {R.min():.4g} (at the max F point: {R.flat[F.argmax()]:.4g}; facet {f}, '
                 f'i = {f % nx}, j = {f // nx}, ply {p + 1}, {Z_POINTS[iz]})')
    return '\n'.join(lines)


def coiling_report(lam, r, src, out, criterion):
    """Text summary of the flattening check."""
    (F, mode, R, sig12, _, z), sign, (e0, k) = out
    md = lambda m: MODES[m] if m >= 0 else '-'
    _, _, p, iz = np.unravel_index(F.argmax(), F.shape)
    s1, s2, t12 = sig12[0, 0, p, iz]
    return '\n'.join([
        f'Coiling check: flange [{lam.describe()}] flattened from r = {r:g} mm ({src}): '
        f'k = {sign * 1 / r:+.5g} 1/mm transverse (k_xx = k_xy = 0, N = 0), eps0 = [{", ".join(f"{e:.3g}" for e in e0)}]',
        f'  max F = {F.max():.4g}{"" if criterion != "hashin" else f" ({md(mode.flat[F.argmax()])})"}, '
        f'R = {R.flat[F.argmax()]:.4g}, ply {p + 1} ({lam.plies[p]["theta"]:g} deg), {Z_POINTS[iz]}: '
        f's1 {s1:.4g}, s2 {s2:.4g}, t12 {t12:.4g} MPa']
        + [f'  ply {q + 1:>2} ({lam.plies[q]["theta"]:>6g} deg, z {z[q, 0]:+.4g}..{z[q, 2]:+.4g}): max F {F[0, 0, q].max():.4g}'
           for q in range(len(lam.plies))])


def main():
    ap = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument('results', help='.npz from shell-bc-load')
    ap.add_argument('--criterion', choices=('hashin', 'tsai-hill'), default='hashin')
    ap.add_argument('--S23', type=float, help='transverse shear strength for Hashin matrix compression [MPa] '
                                               '(default Yc/2)')
    ap.add_argument('--laminate', help='laminate JSON (default: the one stored in the results)')
    ap.add_argument('--web-laminate', help='web (tab) laminate JSON for the web facets (default: the model\'s '
                    'web laminate); e.g. physical plies when the model uses an equivalent section')
    ap.add_argument('--at', choices=('gauss', 'centroid'), default='gauss')
    ap.add_argument('--top', type=int, default=10)
    ap.add_argument('--csv', help='per-facet max F, its ply and mode, CSV')
    for k in STRENGTHS:
        ap.add_argument(f'--{k}', type=float, help=f'{k} [MPa] (overrides the laminate)')
    ap.add_argument('--yield', dest='sy', type=float, help='isotropic: X = Y = sy, S = sy/sqrt(3)')
    ap.add_argument('--boom', help='boom geometry catalog ID of the model (default: case geometry "boom")')
    ap.add_argument('--web', type=float, nargs=2, action='append', metavar=('S0', 'S1'),
                    help='web range of section arc length s [mm] (repeat for several webs)')
    ap.add_argument('--web-stack', choices=('mirror', 'repeat'), default='mirror',
                    help='web = flange laminate bonded on a turned-over copy (mirror) or on itself (repeat)')
    ap.add_argument('--flatten-radius', type=float, help='flange radius for the coiling check [mm] '
                                                         '(default: smallest arc radius of the boom)')
    a = ap.parse_args()

    import shell_bc_load as bc
    res = bc.load_results(a.results)
    lam = lp.Laminate.load(a.laminate) if a.laminate else lp.Laminate.from_dict(res['laminate'])
    ov = {k: getattr(a, k) for k in STRENGTHS}
    if a.sy:
        ov = dict(Xt=a.sy, Xc=a.sy, Yt=a.sy, Yc=a.sy, S=a.sy / math.sqrt(3))
    if a.criterion == 'hashin':
        print(f'S23 = {"Yc/2 (default)" if a.S23 is None else f"{a.S23:g} MPa"}')

    # flange and web facets
    groups, web, boom, note = facet_groups(res, lam, a.boom, a.web, a.web_stack,
                                           lp.Laminate.load(a.web_laminate) if a.web_laminate else None)
    if boom:
        print(f'boom {boom["id"]} ({boom["type"]})')
    print(note)
    if web.any():
        fe_web = 'web' in res['meta'].get('strip_label', [])
        print(f'web laminate: [{groups[1][1].describe()}]' + (' (also in the FE model)' if fe_web else
              '; NOTE the FE model has the single laminate in the web, so web strains come from a web half as '
              'stiff as the doubled one'))
    nf = len(res['faces'])
    Fmax_f, ply_f, mode_f = np.zeros(nf), np.zeros(nf, int), np.full(nf, -1)
    F_sim = 0.0
    for label, gl, idx in groups:
        if not len(idx):
            continue
        F, mode, R, sig12, _, z = failure_index(res['strains'][idx], gl, ov, a.at, a.criterion, a.S23)
        print(report(res, gl, F, mode, R, sig12, z, a.at, a.criterion, a.top, idx, label if web.any() else ''))
        Ff = F.reshape(F.shape[0], -1)
        k = Ff.argmax(axis=1)
        Fmax_f[idx], ply_f[idx] = Ff.max(axis=1), np.unravel_index(k, F.shape[1:])[1] + 1
        mode_f[idx] = mode.reshape(len(k), -1)[np.arange(len(k)), k]
        F_sim = max(F_sim, F.max())
    if web.any():
        print(f'SIMULATION MAX F = {F_sim:.4g} -> {"FAILS (F >= 1)" if F_sim >= 1 else "no failure predicted"} '
              f'(in the {"web" if Fmax_f[web].max() >= Fmax_f[~web].max(initial=0) else "flange"})')

    # coiling: flatten the flange
    F_gov, gov = F_sim, 'simulation'
    if F_sim >= 1:
        print('Coiling check not run: the simulation already fails')
    else:
        r, rsrc = flatten_radius(case_geometry(res), boom, a.flatten_radius)
        if r is None:
            print(f'Coiling check not run: {rsrc}')
        else:
            out = coiling_check(lam, r, ov, a.criterion, a.S23)
            print(coiling_report(lam, r, rsrc, out, a.criterion))
            F_coil = out[0][0].max()
            if F_coil > F_sim:
                F_gov, gov = F_coil, 'coiling (flattening the flange)'
    print(f'GOVERNING F = {F_gov:.4g} from the {gov} -> {"FAILS (F >= 1)" if F_gov >= 1 else "no failure predicted"}')

    if a.csv:
        np.savetxt(a.csv, np.column_stack([np.arange(nf), Fmax_f, ply_f, mode_f, web]),
                   delimiter=',', header='facet,max_F,critical_ply,mode(0 ft,1 fc,2 mt,3 mc,-1 n/a),web', comments='',
                   fmt=['%d', '%.6g', '%d', '%d', '%d'])
        print(f'saved {a.csv}')


if __name__ == '__main__':
    main()
