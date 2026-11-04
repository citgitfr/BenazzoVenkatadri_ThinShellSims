"""
Abaqus/CAE Python script equivalent to an assembled OpenSeesPy shell script
(the one standalone script written by the shell-assemble-run skill), to run
elsewhere with `abaqus cae noGUI=...` (Abaqus is not installed on the project VM).

What it does:
  1. reads the assembled script: it must contain the laminate, mesh and
     supports/loads/solution pieces; NAME, CASE (supports, loads, analysis,
     geometry) and LAMINATE (the plies the sections were built from) are read
     as literals, nothing is executed for this;
  2. writes the Abaqus script with the abaqus-export translator
     (case_to_abaqus.write_script), using LAMINATE, not the case's laminate entry;
  3. OpenSees reference values (report-node displacement, max |u|, top-ply
     stresses, load-factor history) from the script's own results .npz: run the
     script, or reuse its .npz when that is newer than the script;
  4. checks the Abaqus model against the model the OpenSeesPy script actually
     builds: the script is executed up to its first ops.analyze with every
     ops.node / element / nDMaterial / section / fix / rigidLink / load /
     integrator call recorded, and the Abaqus script is executed on the
     stand-in Abaqus API (regression-tests/abaqus_mock.py). Compared: node grid
     and seeds, facet normals (bottom ply side), ply angles taken from the
     elements' -local axes, layer materials and thicknesses through the
     thickness, fixed DOFs, rigid ends, nodal loads (pressure as Abaqus
     Pressure), analysis step, control node / DOF / target, report node.

Usage:
  python opensees_to_abaqus.py <name>_opensees.py [--out abaqus_<name>.py] [--element S4R|S4]
                               [--npz results.npz | --rerun | --no-reference] [--no-check]
The generated script runs with:  abaqus cae noGUI=abaqus_<name>.py [-- <size> <S4R|S4>]
Units: N, mm, MPa, t/mm^3.
"""
import argparse
import ast
import contextlib
import io
import json
import math
import os
import subprocess
import sys
import time
from pathlib import Path

import numpy as np

_SKILLS = Path(__file__).resolve().parents[1]
for _d in ('laminate-properties', 'shell-mesh', 'shell-bc-load', 'failure-check', 'abaqus-export', 'regression-tests'):
    sys.path.insert(0, str(_SKILLS / _d))
import case_to_abaqus as c2a       # noqa: E402
import laminate_properties as lp   # noqa: E402
import shell_mesh as sm            # noqa: E402

PIECES = (('laminate', 'laminate-properties'), ('mesh', 'shell-mesh'),
          ('supports, loads and solution', 'shell-bc-load'))
RECORDED = ('node', 'element', 'nDMaterial', 'section', 'fix', 'rigidLink', 'equalDOF', 'sp',
            'timeSeries', 'pattern', 'load', 'eleLoad', 'integrator', 'algorithm', 'analyze')
TOL = 1e-9


# --- reading the assembled script ------------------------------------------------------------

def read_script(path):
    """NAME, CASE, LAMINATE, REPORT_NODE of an assembled script (literals,
    not executed); stops if a piece is missing or out of order."""
    text = Path(path).read_text(encoding='utf-8')
    at = -1
    for kind, skill in PIECES:
        k = text.find(lp.PIECE_MARK.format(kind, skill))
        if k < at:
            raise SystemExit(f'{path}: no {kind!r} piece after the previous one; '
                             'give the script written by shell-assemble-run (assemble_run.py)')
        at = k
    out = {}
    for node in ast.parse(text).body:
        if isinstance(node, ast.Assign) and len(node.targets) == 1 and isinstance(node.targets[0], ast.Name):
            if node.targets[0].id in ('NAME', 'CASE', 'LAMINATE', 'REPORT_NODE', 'ANALYSIS'):
                out[node.targets[0].id] = ast.literal_eval(node.value)
    missing = {'NAME', 'CASE', 'LAMINATE', 'REPORT_NODE'} - set(out)
    if missing:
        raise SystemExit(f'{path}: {sorted(missing)} not found; regenerate the script with shell-assemble-run')
    out['LAMINATE'] = lp.Laminate.from_dict(json.loads(out['LAMINATE']))
    return out


class _StopAtAnalyze(Exception):
    pass


def record_model(path):
    """Execute the assembled script up to its first ops.analyze, recording the
    model-building calls. Returns (calls {name: [args]}, script globals)."""
    import openseespy.opensees as ops
    calls = {n: [] for n in RECORDED}
    real = {n: getattr(ops, n) for n in RECORDED}

    def wrap(name):
        def call(*args):
            calls[name].append(args)
            if name == 'analyze':
                raise _StopAtAnalyze()
            return real[name](*args)
        return call
    ns = {'__name__': '__main__', '__file__': str(Path(path).resolve())}
    argv = sys.argv
    sys.argv = [str(path), os.devnull]
    for n in RECORDED:
        setattr(ops, n, wrap(n))
    try:
        with contextlib.redirect_stdout(io.StringIO()):
            exec(compile(Path(path).read_text(encoding='utf-8'), str(path), 'exec'), ns)
        raise SystemExit(f'{path}: the script ended without calling ops.analyze')
    except _StopAtAnalyze:
        pass
    finally:
        for n, fn in real.items():
            setattr(ops, n, fn)
        sys.argv = argv
        ops.wipe()
    return calls, ns


def opensees_model(calls, ns):
    """Plain description of the recorded OpenSees model."""
    nodes = {a[0]: np.array(a[1:4], float) for a in calls['node']}
    mats = {a[1]: a for a in calls['nDMaterial']}
    secs = {a[1]: a for a in calls['section']}
    quads = {}                                   # node tuple -> [(section, -local axis or None)]
    for a in calls['element']:
        q, rest = tuple(a[2:6]), list(a[6:])
        ax = np.array(rest[rest.index('-local') + 1:rest.index('-local') + 4], float) if '-local' in rest else None
        quads.setdefault(q, []).append((rest[0], ax, a[0], [r for r in rest[1:] if isinstance(r, str)]))
    shell = sorted({n for q in quads for n in q})
    fix = {a[0]: tuple(int(v) for v in a[1:7]) for a in calls['fix']}
    load = {}
    for a in calls['load']:
        load[a[0]] = load.get(a[0], np.zeros(6)) + np.array(a[1:7], float)
    links = {}
    for _, m, s in calls['rigidLink']:
        links.setdefault(m, set()).add(s)
    return dict(nodes=nodes, mats=mats, secs=secs, quads=quads, shell=shell, fix=fix, load=load, links=links, ns=ns,
                integrator=calls['integrator'][0] if calls['integrator'] else None,
                unsupported={k: len(calls[k]) for k in ('equalDOF', 'sp', 'eleLoad') if calls[k]},
                patterns=len(calls['pattern']))


def facet_normal(X):
    n = np.cross(X[2] - X[0], X[3] - X[1])
    return n / np.linalg.norm(n)


def through_thickness(os_m):
    """OpenSees layers bottom to top as (t, angle, material constants), the
    angle measured from global x about the facet normal, from each element's
    -local axis (one coincident element per ply angle: in each layer exactly
    one of them has a real material, the others the zero-stiffness void).
    Also returns the largest spread of the angle of one section over the facets."""
    angle_of, spread = {}, 0.0
    for q, els in os_m['quads'].items():
        X = np.array([os_m['nodes'][n] for n in q])
        n = facet_normal(X)
        x = np.array([1.0, 0.0, 0.0]) - n[0] * n          # global x on the facet (= Abaqus material axis 1)
        x /= np.linalg.norm(x)
        for sec, ax, _, _ in els:
            th = 0.0 if ax is None else math.degrees(math.atan2(np.cross(x, ax) @ n, x @ ax))
            if sec in angle_of:
                spread = max(spread, abs((th - angle_of[sec] + 180) % 360 - 180))
            else:
                angle_of[sec] = th
    layers = None
    for sec in angle_of:
        a = os_m['secs'][sec]
        if a[0] == 'ElasticMembranePlateSection':
            return [(a[4], 0.0, ('isotropic', a[2], a[3]))], spread
        if a[0] != 'LayeredShell':
            raise SystemExit(f'section type {a[0]!r} is not translated (LayeredShell or ElasticMembranePlateSection)')
        mt = list(zip(a[3::2], a[4::2]))
        layers = layers or [[t, None, None] for _, t in mt]
        for k, (m, t) in enumerate(mt):
            mat = plate_constants(os_m['mats'], m)
            if mat is not None:
                if layers[k][2] is not None:
                    raise SystemExit(f'layer {k + 1} has a material in two coincident sections')
                layers[k][1:] = [angle_of[sec], mat]
    if any(lay[2] is None for lay in layers):
        raise SystemExit('a layer has no material in any section')
    return [tuple(lay) for lay in layers], spread


def plate_constants(mats, tag):
    """(E1, E2, nu12, G12, G13 transverse, G23) of a PlateFromPlaneStress ->
    PlaneStress -> ElasticOrthotropic chain; None for the void material."""
    a = mats[tag]
    if a[0] == 'ElasticIsotropic' and a[2] == 0.0:
        return None
    if a[0] != 'PlateFromPlaneStress':
        raise SystemExit(f'nDMaterial {a[0]!r} in a LayeredShell is not translated')
    o = mats[mats[a[2]][2]]                       # ElasticOrthotropic: Ex Ey Ez vxy vyz vzx Gxy Gyz Gzx rho
    return (o[2], o[3], o[5], o[8], a[3], o[9])


# --- Abaqus side: the generated script on the stand-in API ------------------------------------

def run_on_mock(script, grid, faces):
    """Execute the generated Abaqus script on the stand-in API up to mdb.Job.
    grid: mesh node coordinates (labels 1..n); faces: [(global probe point, normal)]."""
    import abaqus_mock
    want = {_key(c2a_P(p)): c2a_P(n) for p, n in faces}
    log = abaqus_mock.install(grid, lambda pt: want[_key(pt)])
    ns, cwd, argv = abaqus_mock.kernel_namespace(), os.getcwd(), sys.argv
    import tempfile
    with tempfile.TemporaryDirectory() as tmp:
        os.chdir(tmp)
        sys.argv = [Path(script).name]
        try:
            with contextlib.redirect_stdout(io.StringIO()):
                exec(compile(Path(script).read_text(encoding='utf-8'), str(script), 'exec'), ns)
            raise SystemExit('the Abaqus script did not reach mdb.Job on the stand-in API')
        except abaqus_mock.StopAtJob:
            pass
        finally:
            if 'REPORT' in ns:
                ns['REPORT'].close()
            os.chdir(cwd)
            sys.argv = argv
            for m in ('abaqus', 'abaqusConstants', 'mesh', 'regionToolset', 'section', 'odbAccess'):
                sys.modules.pop(m, None)
    return log, ns


def c2a_P(g):
    """Global (x, y, z) -> Abaqus part (X, Y, Z) = (y, z, x), as in the generated script."""
    return (g[1], g[2], g[0])


def _key(xyz):
    return tuple(round(float(v), 6) for v in xyz)


def check_model(os_m, script, M, case, lam):
    """[(label, ok, detail)] comparing the recorded OpenSees model with the
    generated Abaqus script run on the stand-in API."""
    out = []
    add = lambda label, ok, detail='': out.append((label, bool(ok), detail))
    nodes, ns = os_m['nodes'], os_m['ns']
    L = case['geometry']['L']
    scale = max(L, 1.0)

    # mesh: the script's shell nodes = the structured grid the Abaqus seeds reproduce
    mesh = sm.build_from_spec(case['geometry'])
    grid = [mesh.coords(i, j) for j in range(mesh.ny + 1) for i in range(mesh.nx + 1)]
    tags = [mesh.node_tag(i, j) for j in range(mesh.ny + 1) for i in range(mesh.nx + 1)]
    same = len(tags) == len(os_m['shell']) and set(tags) == set(os_m['shell'])
    d = max(np.linalg.norm(nodes[t] - np.array(g)) for t, g in zip(tags, grid)) if same else math.inf
    add(f'shell nodes = {mesh.nx} x {mesh.ny} grid of the case geometry ({len(os_m["shell"])} nodes)',
        d <= TOL * scale, f'max distance {d:.1e} mm')

    # facet normals (which side is the bottom ply): Abaqus target normal = OpenSees element normal
    worst = 1.0
    for mid, want in M['faces']:
        probe = np.array([L / 2, mid[0], mid[1]])
        q = min(os_m['quads'], key=lambda q: np.linalg.norm(np.mean([nodes[n] for n in q], axis=0) - probe))
        worst = min(worst, facet_normal(np.array([nodes[n] for n in q])) @ np.array(want))
    add(f'shell normal of each of the {len(M["faces"])} section piece(s) = OpenSees facet normal',
        worst > 0.5, f'min cos {worst:.4f}')

    log, abq = run_on_mock(script, [nodes[t] for t in tags], [((L / 2, *mid), want) for mid, want in M['faces']])
    add('Abaqus script runs on the stand-in API up to the job', True)
    seeds = [(c[1][0], kw['number']) for c, (_, _, kw) in
             zip([c for c in log if c[0] == 'part.edges.findAt'], [c for c in log if c[0] == 'part.seedEdgeByNumber'])]
    across = sum(n for p, n in seeds if abs(p[2]) < 1e-9)
    along = {n for p, n in seeds if abs(p[2] - L / 2) < 1e-9}
    add(f'Abaqus seeds: {mesh.nx} along x, {mesh.ny} across the section', across == mesh.ny and along == {mesh.nx},
        f'{sorted(along)} along, {across} across')

    # section: layers through the thickness (angle from global x about the normal, material, z)
    os_layers, spread = through_thickness(os_m)
    add('ply angle of each section the same on every facet (from the -local axes)', spread < 1e-6,
        f'max spread {spread:.1e} deg')
    elastic = [c[2] for c in log if c[0] == 'model.Material().Elastic']
    if os_layers[0][2][0] == 'isotropic':
        hom = [c[2] for c in log if c[0] == 'model.HomogeneousShellSection'][0]
        t, _, (_, E, nu) = os_layers[0]
        ok = abs(hom['thickness'] - t) <= TOL * t and np.allclose(elastic[0]['table'][0], (E, nu), rtol=1e-12)
        add('isotropic section: thickness, E, nu = OpenSees ElasticMembranePlateSection', ok,
            f'h {hom["thickness"]:g} / {t:g}')
    else:
        ab = [(kw['thickness'], kw['orientAngle'], elastic[int(kw['material'][3:])]['table'][0])
              for kw in (c[2] for c in log if c[0] == 'section.SectionLayer')]
        z_ab = np.cumsum([0.0] + [t for t, _, _ in ab])
        z_os = np.cumsum([0.0] + [t for t, _, _ in os_layers])
        add('total thickness: Abaqus layup = OpenSees LayeredShell', abs(z_ab[-1] - z_os[-1]) <= TOL * z_os[-1],
            f'{z_ab[-1]:g} / {z_os[-1]:g} mm')
        bad_angle = bad_mat = 0
        g23 = set()
        for k, (t, th, mat) in enumerate(os_layers):
            zm = (z_os[k] + z_os[k + 1]) / 2           # OpenSees layer mid-plane -> Abaqus ply containing it
            j = min(int(np.searchsorted(z_ab, zm)) - 1, len(ab) - 1)
            _, th_ab, tab = ab[j]
            bad_angle += abs((th - th_ab + 180) % 360 - 180) > 1e-6
            bad_mat += not np.allclose(tab[:5], mat[:5], rtol=1e-12)     # E1 E2 nu12 G12 G13
            g23.add((tab[5], mat[5]))
        add(f'ply angles through the thickness ({len(os_layers)} OpenSees layers in {len(ab)} Abaqus plies, '
            'bottom = SNEG)', bad_angle == 0, f'{bad_angle} layer(s) differ')
        add('ply E1, E2, nu12, G12, transverse G13 = OpenSees', bad_mat == 0, f'{bad_mat} layer(s) differ')
        if any(abs(a - b) > 1e-9 * a for a, b in g23):
            out.append(('note: Abaqus G23 differs from the OpenSees Gyz (OpenSees plate uses one transverse modulus)',
                        True, ''))

    # supports, rigid ends, loads (Abaqus coordinates = global, mock labels 1..n = grid order)
    lab = {k + 1: _key(nodes[t]) for k, t in enumerate(tags)}

    def coords_of(region):
        if region[2] and isinstance(region[2][0], tuple) and region[2][0][0] == 'RP':
            return [_key(region[2][0][1])]
        return [lab[n] for n in region[2]]
    ab_load, ab_fix, ab_links, pressure = {}, {}, {}, 0.0
    for name, _, kw in log:
        if name in ('model.ConcentratedForce', 'model.Moment'):
            off, pre = (0, 'cf') if name.endswith('Force') else (3, 'cm')
            v = np.zeros(6)
            for dd in range(3):
                x = kw.get(f'{pre}{dd + 1}', 'UNSET')
                v[off + dd] = 0.0 if x == 'UNSET' else x
            for c in coords_of(kw['region']):
                ab_load[c] = ab_load.get(c, np.zeros(6)) + v
        elif name == 'model.DisplacementBC':
            for c in coords_of(kw['region']):
                ab_fix[c] = tuple(int(kw[k] != 'UNSET') for k in ('u1', 'u2', 'u3', 'ur1', 'ur2', 'ur3'))
        elif name == 'model.Coupling':
            ab_links[coords_of(kw['controlPoint'])[0]] = set(coords_of(kw['surface']))
        elif name == 'model.Pressure':
            pressure += -kw['magnitude']                 # Abaqus pressure acts along -n
    os_fix = {_key(nodes[n]): v for n, v in os_m['fix'].items()}
    add(f'fixed DOFs = OpenSees ({len(os_fix)} nodes)', ab_fix == os_fix,
        f'{sum(ab_fix.get(k) != os_fix.get(k) for k in set(ab_fix) | set(os_fix))} node(s) differ')
    os_links = {_key(nodes[m]): {_key(nodes[s]) for s in ss} for m, ss in os_m['links'].items()}
    add(f'rigid ends: reference point and coupled nodes = OpenSees rigidLink ({len(os_links)})', ab_links == os_links)

    an = M['analysis']
    lf = ns.get('MAX_LOAD_FACTOR') or 1.0 if an['type'] == 'load_control' else 1.0
    os_load = {_key(nodes[n]): lf * v for n, v in os_m['load'].items()}
    if pressure:                                         # the script's pressure lumps (shell_bc_load.pressure_load)
        for q in os_m['quads']:
            X = np.array([nodes[n] for n in q])
            f = pressure * 0.5 * np.cross(X[2] - X[0], X[3] - X[1]) / 4
            for n in q:
                k = _key(nodes[n])
                os_load[k] = os_load.get(k, np.zeros(6)) - np.r_[f, 0, 0, 0]
    keys = set(os_load) | set(ab_load)
    big = max([np.abs(v).max() for v in os_m['load'].values()] + [1e-300])
    diff = max([np.abs(ab_load.get(k, np.zeros(6)) - os_load.get(k, np.zeros(6))).max() for k in keys] + [0.0])
    add(f'nodal forces and moments = OpenSees ({len(os_m["load"])} loaded nodes'
        f'{", uniform pressure as Abaqus Pressure" if pressure else ""}'
        f'{f", x load factor {lf:g}" if lf != 1.0 else ""})', diff <= 1e-9 * big, f'max |diff| / max |load| {diff / big:.1e}')

    # analysis
    integ = os_m['integrator']
    steps = [c for c in log if c[0] in ('model.StaticStep', 'model.StaticRiksStep')]
    if an['type'] == 'linear':
        ok = integ[:2] == ('LoadControl', 1.0) and steps[0][0] == 'model.StaticStep' and steps[0][2]['nlgeom'] == 'OFF'
        add('linear static (OpenSees LoadControl 1.0, Linear) -> Abaqus StaticStep nlgeom OFF', ok)
    elif an['type'] == 'load_control':
        ok = integ[0] == 'LoadControl' and steps[0][0] == 'model.StaticStep' and steps[0][2]['nlgeom'] == 'ON'
        add(f'load control to load factor {lf:g} -> Abaqus StaticStep nlgeom ON, loads x {lf:g}', ok)
    else:
        kw = steps[0][2]
        node, dof, step, n = ns['CONTROL_NODE'], ns['CONTROL_DOF'], ns['STEP'], ns['N_STEPS']
        reg = coords_of(kw['region'])
        ok = (integ[:4] == ('DisplacementControl', node, dof, step) and steps[0][0] == 'model.StaticRiksStep'
              and kw['dof'] == dof and abs(kw['maximumDisplacement'] - step * n) <= TOL * abs(step * n)
              and reg == [_key(nodes[node])])
        add(f'displacement control of node {node} DOF {dof} to {step * n:g} -> Abaqus Riks, same node/DOF/stop', ok)
    nl = an['type'] != 'linear'
    corot = all('-corotational' in e[3] for els in os_m['quads'].values() for e in els)
    if nl and not corot:
        out.append(('note: nonlinear OpenSees analysis without -corotational elements; Abaqus nlgeom=ON', True, ''))

    rep = ns['REPORT_NODE']
    if 'rigid' in M['report']:
        ok = _key(nodes[rep]) in {_key(c) for e, c in M['rigid'].items() if e == M['report']['rigid']}
    else:
        ok = _key(nodes[rep]) == _key(M['report']['point'])
    add(f'report node {rep} = the Abaqus report point', ok)
    for k, v in os_m['unsupported'].items():
        add(f'ops.{k} calls are not translated', False, f'{v} call(s)')
    if os_m['patterns'] != 1:
        add('one load pattern', False, f'{os_m["patterns"]} patterns')
    return out


# --- OpenSees reference from the script's own results ---------------------------------------

def reference(script, info, npz=None, rerun=False):
    """REF of the Abaqus script from the assembled script's results .npz
    (run it unless `npz` is given or its default .npz is newer than the script)."""
    import failure_check as fc
    import shell_bc_load as bc
    script = Path(script).resolve()
    default = script.parent / 'results' / f'{info["NAME"]}.npz'
    if npz is None:
        npz = default
        if rerun or not npz.exists() or npz.stat().st_mtime < script.stat().st_mtime:
            t0 = time.perf_counter()
            print(f'running {script.name} for the OpenSees reference ...', flush=True)
            r = subprocess.run([sys.executable, str(script), str(npz)], cwd=str(script.parent),
                               capture_output=True, text=True)
            if r.returncode != 0:
                raise SystemExit(f'{script.name} failed (exit code {r.returncode}):\n{r.stderr[-2000:]}')
            print(f'  ran in {time.perf_counter() - t0:.1f} s -> {npz}')
        else:
            print(f'OpenSees reference from {npz} (newer than the script; --rerun to run it again)')
    res = bc.load_results(npz)
    lam = info['LAMINATE']
    if lp.Laminate.from_dict(res['laminate']).to_dict() != lam.to_dict():
        raise SystemExit(f'{npz}: written for another laminate than {script.name}; use --rerun')
    k = list(res['node_tags']).index(info['REPORT_NODE'])
    sig12 = fc.ply_stresses(res['strains'], lam, 'centroid')[0][:, 0, -1, 2]    # top ply, top surface, ply axes
    j = np.abs(sig12).argmax(axis=0)
    linear = info['CASE'].get('analysis', {}).get('type', 'linear') == 'linear'
    return dict(report_disp=res['disp'][k].tolist(), max_u=float(np.abs(res['disp'][:, :3]).max()),
                top_ply_stress=[float(sig12[j[c], c]) for c in range(3)],
                history=[] if linear else res['history'].tolist()), Path(npz), res


def main():
    ap = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument('script', help='assembled OpenSeesPy script (shell-assemble-run)')
    ap.add_argument('--out', help='Abaqus script (default abaqus_<name>.py next to the OpenSeesPy script)')
    ap.add_argument('--element', default='S4R', choices=('S4R', 'S4'))
    ap.add_argument('--npz', help='results .npz of this script to take the reference from (no run)')
    ap.add_argument('--rerun', action='store_true', help='run the script even if its .npz is newer')
    ap.add_argument('--no-reference', action='store_true', help='do not embed OpenSees reference values')
    ap.add_argument('--no-check', action='store_true', help='skip the model comparison')
    a = ap.parse_args()
    src = Path(a.script).resolve()
    info = read_script(src)
    case, lam = info['CASE'], info['LAMINATE']
    calls, ns = record_model(src)                            # also proves the script builds its model
    os_m = opensees_model(calls, ns)
    ref, npz = None, None
    if not a.no_reference:
        ref, npz, res = reference(src, info, Path(a.npz) if a.npz else None, a.rerun)
        pts = np.array([os_m['nodes'][t] for t in res['node_tags']]) if set(res['node_tags']) <= set(os_m['nodes']) \
            else None
        if pts is None or pts.shape != res['points'].shape or np.abs(pts - res['points']).max() > TOL * case['geometry']['L']:
            raise SystemExit(f'{npz}: its nodes are not the nodes of {src.name}; use --rerun')
    out = Path(a.out).resolve() if a.out else src.parent / f'abaqus_{info["NAME"]}.py'
    with contextlib.redirect_stdout(io.StringIO()):
        out, M, ref = c2a.write_script(case, lam, out, a.element, ref,
                                       f'assembled OpenSeesPy script {src.name}, opensees-to-abaqus skill')
    print(f'wrote {out}')
    print(f'  {len(M["pieces"])} cross-section piece(s), {max(1, round(M["L"] / M["size"]))} elements along x, '
          f'{len(M["plies"])} ply/plies ({lam.describe()}), {len(M["supports"])} support(s), {len(M["loads"])} load(s), '
          f'{M["analysis"]["type"]}, {a.element}')
    if ref is not None and not a.no_reference:
        print(f'  OpenSees reference ({npz.name}): report node u = {np.round(ref["report_disp"][:3], 6).tolist()}, '
              f'max |u_i| = {ref["max_u"]:.5g} mm, top-ply stress (s1, s2, t12) = '
              f'{np.round(ref["top_ply_stress"], 4).tolist()} MPa'
              + (f', {len(ref["history"])} history rows' if ref['history'] else ''))
    else:
        print('  OpenSees reference: NOT embedded (--no-reference)')
    if a.no_check:
        print('model check: skipped (--no-check)')
        return
    rows = check_model(os_m, out, M, case, lam)
    print(f'model check: {src.name} (recorded OpenSees calls) vs {out.name} (stand-in Abaqus API)')
    for label, ok, detail in rows:
        tag = '      ' if label.startswith('note') else ('[PASS]' if ok else '[FAIL]')
        print(f'  {tag} {label}' + (f'  ({detail})' if detail else ''))
    n_fail = sum(not ok for _, ok, _ in rows)
    print(f'{len(rows) - n_fail}/{len(rows)} checks pass' if not n_fail else
          f'{n_fail} check(s) FAIL: the Abaqus script is not the same model; do not use it')
    print('Abaqus run itself: untested here (Abaqus is not installed on this VM)')
    if n_fail:
        raise SystemExit(1)


if __name__ == '__main__':
    main()
