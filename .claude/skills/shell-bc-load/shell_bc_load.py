"""
Boundary conditions, loads (single loads or combinations), static solution
control and result extraction for the OpenSeesPy shells built by the
shell-mesh skill. Generalizes "Code for Project/10-26-26 (Federico)/mesh_bc_load.py"
(fix_edge, rigid_end, edge_load, point_load, linear_solve,
displacement_control); the 10-22-26 plate scripts are special cases.

Rules learned in verification (v1.0 MeshBCLoadGenerator):
- Consistent edge loads: end nodes of an edge get half shares.
- Curved thin sections: load (or clamp) through rigid_end() unless the edge
  really is free. A load spread on a free R = 50 mm, t = 0.1 mm arc edge made
  the tip 8% too flexible; with a rigid end, 0.4% from beam theory.
- Large rotations: ASDShellQ4 '-corotational' + displacement control. Load
  control stalled at alpha = PL^2/EI ~ 2.8; displacement control reached ~6.8.
- Loads keep a fixed global direction (no follower loads).
- After a Linear solve, element stresses/strains read zero until element
  forces are re-formed: the solvers here call ops.reactions().
- Cost on the 2-core VM: ~35 us per DOF per Newton iteration.

Results (collect_results / save_results, an .npz read by the shell-visualize
and failure-check skills): nodes, facets, displacements/rotations, fixed
nodes, and per facet and Gauss point the generalized strains
[eps_xx, eps_yy, gam_xy, k_xx, k_yy, k_xy, gam_xz, gam_yz] in the facet frame
(x = along the extrusion, y = across the section), with the CLT sign
convention k = -w,xx (positive k_xx puts the top, +n side, in tension under
positive Mx). OpenSees reports the opposite curvature sign; it is flipped here.

Case files (JSON) run the whole chain (laminate-properties -> shell-mesh ->
this skill -> results file):
  python shell_bc_load.py case.json [--out DIR] [--no-vtp]
See SKILL.md for the case format.

Units: N, mm, MPa.
"""
import argparse
import json
import math
import sys
import time
from pathlib import Path

import numpy as np
import openseespy.opensees as ops

_SKILLS = Path(__file__).resolve().parents[1]
for _d in ('laminate-properties', 'shell-mesh'):
    sys.path.insert(0, str(_SKILLS / _d))
import laminate_properties as lp   # noqa: E402
import shell_mesh as sm            # noqa: E402

DOF = {'ux': 1, 'uy': 2, 'uz': 3, 'rx': 4, 'ry': 5, 'rz': 6}


# --- supports ---------------------------------------------------------------------

def fix_edge(mesh, edge, dofs=(1, 1, 1, 1, 1, 1)):
    """Restrain an edge: dofs ux uy uz rx ry rz, 1 = fixed (default clamp).
    Simple support, e.g.: (1, 1, 1, 0, 0, 0)."""
    for n in mesh.edge_nodes(edge):
        ops.fix(n, *dofs)


def fix_node(node, dofs):
    ops.fix(node, *dofs)


def rigid_end(mesh, edge, master_tag=None):
    """Rigid end fixture: a master node at the edge centroid (tributary
    weighted), tied to every edge node by a rigid beam link. Load or restrain
    the returned master node. Stored in mesh.rigid[edge]."""
    nodes = mesh.edge_nodes(edge)
    w = np.ones(len(nodes))
    w[[0, -1]] = 0.5
    centroid = w @ np.array([ops.nodeCoord(n) for n in nodes]) / w.sum()
    master = master_tag or max(ops.getNodeTags()) + 1
    ops.node(master, *centroid)
    for n in nodes:
        ops.rigidLink('beam', master, n)
    if not hasattr(mesh, 'rigid'):
        mesh.rigid = {}
    mesh.rigid[edge] = master
    return master


# --- loads ---------------------------------------------------------------------------

def load_pattern(tag=1, series_tag=1):
    ops.timeSeries('Linear', series_tag)
    ops.pattern('Plain', tag, series_tag)


def _pattern(tag):
    if tag not in ops.getPatterns():
        load_pattern(tag, tag)


def edge_load(mesh, edge, force, moment=(0.0, 0.0, 0.0), pattern_tag=1, scale=1.0):
    """Total force [N] (and moment [N mm]) spread uniformly along an edge as
    consistent nodal loads (end nodes half shares). Fixed global direction.
    Uniform per node spacing; for non-uniform spacing use tributary lengths
    (done automatically when the edge spacing varies)."""
    nodes = mesh.edge_nodes(edge)
    _pattern(pattern_tag)
    xyz = np.array([ops.nodeCoord(n) for n in nodes])
    seg = np.linalg.norm(np.diff(xyz, axis=0), axis=1)
    if np.ptp(seg) < 1e-9 * seg.max():
        n = len(nodes) - 1
        w = np.array([(0.5 if k in (0, n) else 1.0) / n for k in range(n + 1)])
    else:
        w = np.zeros(len(nodes))
        w[:-1] += seg / 2
        w[1:] += seg / 2
        w /= w.sum()
    for k, node in enumerate(nodes):
        ops.load(node, *(scale * w[k] * f for f in force), *(scale * w[k] * m for m in moment))


def point_load(node, force, moment=(0.0, 0.0, 0.0), pattern_tag=1, scale=1.0):
    _pattern(pattern_tag)
    ops.load(node, *(scale * f for f in force), *(scale * m for m in moment))


def pressure_load(mesh, p, pattern_tag=1, scale=1.0):
    """Uniform pressure p [MPa] along each facet's initial normal (+n),
    lumped equally to its 4 nodes. Fixed direction (not a follower load)."""
    _pattern(pattern_tag)
    acc = {}
    for _, _, nodes in mesh.quads():
        X = np.array([ops.nodeCoord(n) for n in nodes])
        area_n = 0.5 * np.cross(X[2] - X[0], X[3] - X[1])
        for n in nodes:
            acc[n] = acc.get(n, 0.0) + scale * p * area_n / 4
    for n, f in acc.items():
        ops.load(n, *f, 0.0, 0.0, 0.0)


# --- spec helpers ---------------------------------------------------------------------

def resolve_node(mesh, ref):
    """Node from a spec: int tag | {'x': .., 's': ..} (nearest grid node) |
    {'i': .., 'j': ..} | {'rigid': 'xL'} | 'tip' (x = L, mid-section)."""
    if isinstance(ref, int):
        return ref
    if ref == 'tip':
        return mesh.node_tag(mesh.nx, mesh.ny // 2)
    if 'rigid' in ref:
        return mesh.rigid[ref['rigid']]
    if 'i' in ref:
        return mesh.node_tag(ref['i'], ref['j'])
    return mesh.node_at(ref['x'], ref['s'])


def apply_supports(mesh, supports):
    """supports: list of {'edge': 'x0', 'dofs': [1,1,1,1,1,1]} |
    {'rigid_end': 'x0', 'dofs': [...]} (fixture, master restrained) |
    {'node': <ref>, 'dofs': [...]} . Rigid ends for loading only:
    {'rigid_end': 'xL'} without dofs."""
    for s in supports:
        dofs = s.get('dofs', [1] * 6)
        if 'edge' in s:
            fix_edge(mesh, s['edge'], dofs)
        elif 'rigid_end' in s:
            m = rigid_end(mesh, s['rigid_end'])
            if 'dofs' in s:
                ops.fix(m, *dofs)
        else:
            ops.fix(resolve_node(mesh, s['node']), *dofs)


def apply_loads(mesh, loads, pattern_tag=1):
    """Load combination in one pattern (reference load, load factor 1):
    list of {'edge': 'xL', 'force': [Fx,Fy,Fz], 'moment': [Mx,My,Mz], 'factor': 1} |
    {'node': <ref>, 'force': .., 'moment': ..} | {'pressure': p}.
    'factor' scales one load of the combination."""
    for ld in loads:
        f, m, k = ld.get('force', (0, 0, 0)), ld.get('moment', (0, 0, 0)), ld.get('factor', 1.0)
        if 'edge' in ld:
            edge_load(mesh, ld['edge'], f, m, pattern_tag, k)
        elif 'pressure' in ld:
            pressure_load(mesh, ld['pressure'], pattern_tag, k)
        else:
            point_load(resolve_node(mesh, ld['node']), f, m, pattern_tag, k)


# --- solution ------------------------------------------------------------------------

def static_setup(tol=1e-6, max_iter=40):
    ops.system('UmfPack')
    ops.numberer('RCM')
    ops.constraints('Transformation')     # handles rigid links; same as Plain without them
    ops.test('RelativeNormDispIncr', tol, max_iter)
    ops.algorithm('Newton')


def linear_solve():
    """One linear static step at load factor 1, element forces re-formed."""
    ops.system('UmfPack')
    ops.numberer('RCM')
    ops.constraints('Transformation')
    ops.integrator('LoadControl', 1.0)
    ops.algorithm('Linear')
    ops.analysis('Static')
    if ops.analyze(1) != 0:
        raise RuntimeError('linear analysis failed')
    ops.reactions()


def displacement_control(node, dof, step, n_steps=None, stop=None, max_cuts=6, record=None,
                         pattern_tag=1, verbose=True, tol=1e-6):
    """Nonlinear static analysis, displacement control: each step moves
    `node` by `step` [mm] in `dof`; OpenSees finds the load factor. Steps are
    halved (up to max_cuts) on non-convergence. Stops after n_steps or when
    stop(load_factor) is True. Returns rows [load factor, record()..., iters]
    from the unloaded state. (tol 1e-6..1e-7; 1e-9 stalls near the end.)"""
    record = record or (lambda: [ops.nodeDisp(node, dof)])
    static_setup(tol)
    history = [[0.0, *[0.0] * len(record()), 0]]
    k = 0
    while (n_steps is None or k < n_steps) and not (stop and stop(history[-1][0])):
        du = step
        for _ in range(max_cuts + 1):
            ops.integrator('DisplacementControl', node, dof, du)
            ops.analysis('Static')
            if ops.analyze(1) == 0:
                break
            du /= 2
        else:
            if verbose:
                print(f'  stopped: no convergence beyond load factor {history[-1][0]:.4g}')
            break
        history.append([ops.getLoadFactor(pattern_tag), *record(), ops.testIter()])
        k += 1
        if verbose:
            print(f'  step {k:3d}: load factor {history[-1][0]:.5g}, {history[-1][-1]} iterations', flush=True)
    ops.reactions()
    return np.array(history)


def load_control(n_steps, max_factor=1.0, record=None, max_cuts=6, verbose=True, tol=1e-6):
    """Nonlinear static analysis under load control up to max_factor in
    n_steps (halving on non-convergence). Returns rows [factor, record()..., iters]."""
    record = record or (lambda: [])
    static_setup(tol)
    history = [[0.0, *[0.0] * len(record()), 0]]
    lam, dl = 0.0, max_factor / n_steps
    while lam < max_factor - 1e-12:
        d = min(dl, max_factor - lam)
        for _ in range(max_cuts + 1):
            ops.integrator('LoadControl', d)
            ops.analysis('Static')
            if ops.analyze(1) == 0:
                break
            d /= 2
        else:
            if verbose:
                print(f'  stopped: no convergence beyond load factor {lam:.4g}')
            break
        lam = ops.getLoadFactor(1)
        history.append([lam, *record(), ops.testIter()])
        if verbose:
            print(f'  load factor {lam:.5g}, {ops.testIter()} iterations', flush=True)
    ops.reactions()
    return np.array(history)


def modal(n=1):
    """First n natural frequencies [Hz] (needs density in the section)."""
    return [math.sqrt(lam) / (2 * math.pi) for lam in ops.eigen(n)]


# --- results -----------------------------------------------------------------------------

def facet_strains(mesh):
    """(n_facets, n_gauss, 8) generalized strains in the facet frame, CLT
    curvature sign. Uses the first element of each facet (coincident
    elements share kinematics) and rotates back from its '-local' angle."""
    out = []
    for first, _, th in mesh.facets:
        s = np.reshape(ops.eleResponse(first, 'strains'), (-1, 8)).copy()
        s[:, 3:6] *= -1.0                      # OpenSees curvature sign -> CLT k = -w,xx
        if th != 0.0:
            T = lp.strain_rotation(-th)        # element (ply) axes -> facet axes
            s[:, 0:3] = s[:, 0:3] @ T.T
            s[:, 3:6] = s[:, 3:6] @ T.T
            c, sn = math.cos(math.radians(th)), math.sin(math.radians(th))
            g1, g2 = s[:, 6].copy(), s[:, 7].copy()
            s[:, 6], s[:, 7] = c * g1 - sn * g2, sn * g1 + c * g2
        out.append(s)
    return np.array(out)


def collect_results(mesh, history=None, title='', case=None):
    """Everything the post-processing skills need, as a dict of arrays."""
    tags = ops.getNodeTags()
    index = {t: k for k, t in enumerate(tags)}
    faces = np.array([[index[n] for n in nodes] for _, _, nodes in mesh.quads()])
    fixed = np.zeros(len(tags), dtype=np.int8)
    fixed[[index[n] for n in ops.getFixedNodes()]] = 1
    lam = getattr(mesh, 'laminate', None)
    meta = dict(title=title, summary=mesh.summary(), nx=mesh.nx, ny=mesh.ny, L=mesh.L, b=mesh.b,
                element=getattr(mesh, 'element', ''), rigid=getattr(mesh, 'rigid', {}), case=case)
    return dict(points=np.array([ops.nodeCoord(t) for t in tags]), node_tags=np.array(tags),
                disp=np.array([(ops.nodeDisp(t) + [0.0] * 6)[:6] for t in tags]), fixed=fixed, faces=faces,
                frames=mesh.frames, strains=facet_strains(mesh),
                history=np.zeros((0, 0)) if history is None else np.asarray(history),
                laminate=json.dumps(lam.to_dict() if lam else None), meta=json.dumps(meta))


def save_results(path, res):
    Path(path).parent.mkdir(parents=True, exist_ok=True)
    np.savez_compressed(path, **res)
    print(f'saved {path}')


def load_results(path):
    d = dict(np.load(path, allow_pickle=False))
    d['laminate'] = json.loads(str(d['laminate']))
    d['meta'] = json.loads(str(d['meta']))
    return d


# --- case runner ------------------------------------------------------------------------------

def run_case(case, out_dir=None, verbose=True):
    """Build, load and solve a case dict; returns (mesh, results dict).
    case keys: name, laminate (see laminate_properties.laminate_from_spec),
    geometry {L, section, size}, element {type, corotational}, supports,
    loads, analysis {type: linear | displacement_control | load_control, ...}."""
    lam = lp.laminate_from_spec(case['laminate'])
    mesh = sm.build_from_spec(case['geometry'])
    el = case.get('element', {})
    sm.build_model(mesh, lam, el.get('type', 'ASDShellQ4'), el.get('corotational', False), eas=el.get('eas'))
    apply_supports(mesh, case.get('supports', []))
    apply_loads(mesh, case.get('loads', []))
    an = case.get('analysis', {'type': 'linear'})
    t0 = time.perf_counter()
    if an['type'] == 'linear':
        linear_solve()
        hist = np.array([[0.0], [1.0]])
    elif an['type'] == 'displacement_control':
        node = resolve_node(mesh, an['node'])
        stop = (lambda f: abs(f) >= an['max_load_factor']) if 'max_load_factor' in an else None
        hist = displacement_control(node, an.get('dof', 3), an['step'], an.get('n_steps'), stop,
                                    tol=an.get('tol', 1e-6), verbose=verbose)
    elif an['type'] == 'load_control':
        hist = load_control(an.get('n_steps', 10), an.get('max_load_factor', 1.0), verbose=verbose,
                            tol=an.get('tol', 1e-6))
    else:
        raise ValueError(f'unknown analysis {an["type"]!r}')
    if verbose:
        print(f'{mesh.summary()}\n{len(ops.getEleTags())} elements, {6 * len(ops.getNodeTags())} DOFs; '
              f'{an["type"]} solved in {time.perf_counter() - t0:.1f} s')
    res = collect_results(mesh, hist, case.get('name', ''), case)
    if out_dir:
        save_results(Path(out_dir) / f'{case.get("name", "case")}.npz', res)
    return mesh, res


def main():
    ap = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument('case', help='case JSON file')
    ap.add_argument('--out', default=None, help='output folder (default: next to the case file)')
    a = ap.parse_args()
    case = json.loads(Path(a.case).read_text())
    out = Path(a.out) if a.out else Path(a.case).parent
    mesh, res = run_case(case, out)
    tip = resolve_node(mesh, case.get('report_node', 'tip'))
    print(f'report node {tip}: u = {np.round(ops.nodeDisp(tip), 6).tolist()}')


if __name__ == '__main__':
    main()
