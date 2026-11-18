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

This skill's piece of a complete OpenSeesPy script (supports, rigid ends,
loads, the solution and the results file; it uses FACETS / FRAMES / MESH of
the shell-mesh piece and LAMINATE of the laminate-properties piece; joined
by the shell-assemble-run skill):
  python shell_bc_load.py case.json --emit-code bc_code.py

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


SPOKE_TRANSF = 9001          # geomTransf tag of the large-rotation rigid-end spokes
SPOKE_ELE_BASE = 9_000_001   # first element tag of the spokes (above every shell element tag)
SPOKE_FACTOR = 1e3           # spoke modulus / shell membrane modulus


def rigid_end(mesh, edge, master_tag=None, large_rotation=False):
    """Rigid end fixture: a master node at the edge centroid (tributary
    weighted), tied to every edge node. Load or restrain the returned master
    node. Stored in mesh.rigid[edge].
    large_rotation=False: rigid beam links (rigidLink, a linear constraint:
      exact for small rotations only; the end section distorts by ~phi^2/2
      at a rotation phi).
    large_rotation=True: very stiff elastic beam "spokes" with a Corotational
      transformation from the master node to every edge node (as
      shell_buckling.rigid_end; E_b = SPOKE_FACTOR x the shell membrane modulus
      A11/h of mesh.laminate, A = h b, I = J = h b^3 / 12). Use it with
      corotational shells whenever the end rotates by more than ~0.1 rad
      (nonlinear torsion, rotation control)."""
    nodes = mesh.edge_nodes(edge)
    w = mesh.edge_weights(edge, 'centroid')          # end nodes half (every strip of a branched section)
    X = np.array([ops.nodeCoord(n) for n in nodes])
    centroid = w @ X / w.sum()
    master = master_tag or max(ops.getNodeTags()) + 1
    ops.node(master, *centroid)
    if large_rotation:
        lam = mesh.laminate
        h = lam.h
        E = SPOKE_FACTOR * lam.abd()[0, 0] / h
        A, I = h * mesh.b, h * mesh.b**3 / 12
        if SPOKE_TRANSF not in (ops.getCrdTransfTags() or []):
            ops.geomTransf('Corotational', SPOKE_TRANSF, 1.0, 0.0, 0.0)   # spokes lie in the y-z plane: vecxz = x
        used = [t for t in (ops.getEleTags() or []) if t >= SPOKE_ELE_BASE]
        ele = max(used) + 1 if used else SPOKE_ELE_BASE
        for n, x in zip(nodes, X):
            if np.linalg.norm(x - centroid) < 1e-9 * mesh.b:
                ops.equalDOF(master, n, 1, 2, 3, 4, 5, 6)
                continue
            ops.element('elasticBeamColumn', ele, master, n, A, E, E / 2.6, I, I, I, SPOKE_TRANSF)
            ele += 1
    else:
        for n in nodes:
            ops.rigidLink('beam', master, n)
    if not hasattr(mesh, 'rigid'):
        mesh.rigid = {}
    mesh.rigid[edge] = master
    return master


# --- twist (torsion) -------------------------------------------------------------------

def _rotation_2d(X0, U, linear=False):
    """Best-fit rotation [rad] about x of the points X0 ((n, 2) y-z) displaced
    by U, about their own centroids. linear=False: exact for any rotation
    (2D Procrustes; for geometrically nonlinear results). linear=True:
    small-rotation least-squares fit sum(A x dU) / sum |A|^2 - use it for
    linear results, whose displacements are the linearized phi x r (the exact
    fit would return atan(phi) there)."""
    A, dU = X0 - X0.mean(0), U - U.mean(0)
    if linear:
        return float(np.sum(A[:, 0] * dU[:, 1] - A[:, 1] * dU[:, 0]) / np.sum(A * A))
    B = A + dU
    return math.atan2(np.sum(A[:, 0] * B[:, 1] - A[:, 1] * B[:, 0]), np.sum(A * B))


def edge_twist(mesh, edge='xL', linear=False):
    """Twist [rad] of an edge section about x in the current state (best-fit
    rotation of its nodes in the y-z plane; linear=True for a linear analysis,
    see _rotation_2d)."""
    nodes = mesh.edge_nodes(edge)
    X0 = np.array([ops.nodeCoord(n)[1:3] for n in nodes])
    U = np.array([ops.nodeDisp(n)[1:3] for n in nodes])
    return _rotation_2d(X0, U, linear)


def twist_profile(res, tol=1e-6, linear=None):
    """Twist phi(x) [rad] of every x station of a results dict (collect_results
    or load_results), as (x, phi) arrays; rigid-end master nodes excluded.
    linear=None: from the case in the results meta (linear analysis or
    non-corotational elements -> small-rotation fit, else exact)."""
    P, U = np.asarray(res['points']), np.asarray(res['disp'])
    meta = res['meta'] if isinstance(res['meta'], dict) else json.loads(str(res['meta']))
    if linear is None:
        case = meta.get('case') or {}
        linear = (case.get('analysis', {}).get('type', 'linear') == 'linear'
                  or not case.get('element', {}).get('corotational', False))
    keep = ~np.isin(np.asarray(res['node_tags']), list(meta.get('rigid', {}).values()))
    P, U = P[keep], U[keep]
    xs = np.unique(np.round(P[:, 0], 6))
    phi = [_rotation_2d(P[k, 1:3], U[k, 1:3], linear)
           for k in (np.abs(P[:, 0] - x) < tol + 1e-9 * max(abs(x), 1.0) for x in xs)]
    return xs, np.array(phi)


def twist_at(history, value, col_in=0, col_out=-2):
    """Linear interpolation in a history array (e.g. tip twist at a torque:
    history rows [load factor, ..., twist, iterations] -> twist_at(h, T))."""
    h = np.asarray(history)
    return float(np.interp(value, h[:, col_in], h[:, col_out]))


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
    w = mesh.edge_weights(edge)
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
    {'rigid_end': 'xL'} without dofs. 'large_rotation': true on a rigid end
    = corotational spokes instead of rigid links (rigid_end)."""
    for s in supports:
        dofs = s.get('dofs', [1] * 6)
        if 'edge' in s:
            fix_edge(mesh, s['edge'], dofs)
        elif 'rigid_end' in s:
            m = rigid_end(mesh, s['rigid_end'], large_rotation=s.get('large_rotation', False))
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

TESTS = {'RelativeNormDispIncr': 1e-6, 'EnergyIncr': 1e-14, 'NormDispIncr': 1e-8, 'NormUnbalance': 1e-6}


def static_setup(tol=1e-6, max_iter=40, test='RelativeNormDispIncr'):
    """Nonlinear static settings. test 'RelativeNormDispIncr' (default) or
    'EnergyIncr' (tol ~1e-14, max_iter ~250): the corotational shells under
    large twist converge ever more slowly with the default test (iterations
    grow with the twist); EnergyIncr reaches the same converged points."""
    ops.system('UmfPack')
    ops.numberer('RCM')
    ops.constraints('Transformation')     # handles rigid links; same as Plain without them
    ops.test(test, tol, max_iter)
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
        # UmfPack (32-bit) runs out of memory near 1M DOFs; SuperLU solves those models
        print('UmfPack failed; retrying the linear step with SuperLU', flush=True)
        ops.system('SuperLU')
        ops.analysis('Static')
        if ops.analyze(1) != 0:
            raise RuntimeError('linear analysis failed')
    ops.reactions()


def displacement_control(node, dof, step, n_steps=None, stop=None, max_cuts=6, record=None,
                         pattern_tag=1, verbose=True, tol=1e-6, test='RelativeNormDispIncr', max_iter=40):
    """Nonlinear static analysis, displacement control: each step moves
    `node` by `step` [mm] in `dof`; OpenSees finds the load factor. Steps are
    halved (up to max_cuts) on non-convergence. Stops after n_steps or when
    stop(load_factor) is True. Returns rows [load factor, record()..., iters]
    from the unloaded state. (tol 1e-6..1e-7; 1e-9 stalls near the end.)
    dof 4..6 = rotation control (torsion: the rigid-end master node, dof 4)."""
    record = record or (lambda: [ops.nodeDisp(node, dof)])
    static_setup(tol, max_iter, test)
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


def load_control(n_steps, max_factor=1.0, record=None, max_cuts=6, verbose=True, tol=1e-6,
                 test='RelativeNormDispIncr', max_iter=40):
    """Nonlinear static analysis under load control up to max_factor in
    n_steps (halving on non-convergence). Returns rows [factor, record()..., iters]."""
    record = record or (lambda: [])
    static_setup(tol, max_iter, test)
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


def history_columns(case):
    """Names of the history columns of a case's analysis (stored in the results meta)."""
    an = (case or {}).get('analysis', {'type': 'linear'})
    tw = ['twist_' + an['record_twist']] if an.get('record_twist') else []
    return {'linear': ['load_factor'],
            'displacement_control': ['load_factor', 'control_dof', *tw, 'iterations'],
            'load_control': ['load_factor', *tw, 'iterations']}.get(an['type'], [])


def collect_results(mesh, history=None, title='', case=None):
    """Everything the post-processing skills need, as a dict of arrays."""
    tags = ops.getNodeTags()
    index = {t: k for k, t in enumerate(tags)}
    faces = np.array([[index[n] for n in nodes] for _, _, nodes in mesh.quads()])
    fixed = np.zeros(len(tags), dtype=np.int8)
    fixed[[index[n] for n in ops.getFixedNodes()]] = 1
    lam = getattr(mesh, 'laminate', None)
    meta = dict(title=title, summary=mesh.summary(), nx=mesh.nx, ny=mesh.ny, L=mesh.L, b=mesh.b,
                element=getattr(mesh, 'element', ''), rigid=getattr(mesh, 'rigid', {}), case=case,
                history_columns=history_columns(case), **mesh.strip_meta())
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
    test = an.get('test', 'RelativeNormDispIncr')
    solver = dict(tol=an.get('tol', TESTS.get(test, 1e-6)), test=test,
                  max_iter=an.get('max_iter', 250 if test == 'EnergyIncr' else 40), verbose=verbose)
    tw = an.get('record_twist')                     # edge whose exact twist is added to every history row
    if an['type'] == 'linear':
        linear_solve()
        hist = np.array([[0.0], [1.0]])
    elif an['type'] == 'displacement_control':
        node = resolve_node(mesh, an['node'])
        dof = an.get('dof', 3)
        stop = (lambda f: abs(f) >= an['max_load_factor']) if 'max_load_factor' in an else None
        rec = (lambda: [ops.nodeDisp(node, dof), edge_twist(mesh, tw)]) if tw else None
        hist = displacement_control(node, dof, an['step'], an.get('n_steps'), stop, record=rec, **solver)
    elif an['type'] == 'load_control':
        rec = (lambda: [edge_twist(mesh, tw)]) if tw else None
        hist = load_control(an.get('n_steps', 10), an.get('max_load_factor', 1.0), record=rec, **solver)
    else:
        raise ValueError(f'unknown analysis {an["type"]!r}')
    if verbose:
        print(f'{mesh.summary()}\n{len(ops.getEleTags())} elements, {6 * len(ops.getNodeTags())} DOFs; '
              f'{an["type"]} solved in {time.perf_counter() - t0:.1f} s')
    res = collect_results(mesh, hist, case.get('name', ''), case)
    if out_dir:
        save_results(Path(out_dir) / f'{case.get("name", "case")}.npz', res)
    return mesh, res


# --- code piece for a complete OpenSeesPy script ------------------------------------------------

BC_HEADINGS = {'node': 'rigid end master node at the edge centroid',
               'rigidLink': 'rigid end fixture: master node tied to every edge node',
               'geomTransf': 'large-rotation rigid end: stiff corotational spokes from the master node',
               'element': 'large-rotation rigid end: stiff corotational spokes from the master node',
               'equalDOF': 'large-rotation rigid end: edge node at the centroid tied to the master node',
               'fix': 'supports: ux uy uz rx ry rz, 1 = fixed',
               'timeSeries': 'load pattern', 'pattern': 'load pattern',
               'load': 'nodal loads (consistent shares), reference level = load factor 1'}

LINEAR_CODE = '''
# --- analysis: linear static at load factor 1 (linear_solve) ---
t0 = time.perf_counter()
ops.system('UmfPack')
ops.numberer('RCM')
ops.constraints('Transformation')     # handles the rigid links
ops.integrator('LoadControl', 1.0)
ops.algorithm('Linear')
ops.analysis('Static')
if ops.analyze(1) != 0:
    # UmfPack (32-bit) runs out of memory near 1M DOFs; SuperLU solves those models
    print('UmfPack failed; retrying the linear step with SuperLU', flush=True)
    ops.system('SuperLU')
    ops.analysis('Static')
    if ops.analyze(1) != 0:
        raise RuntimeError('linear analysis failed')
ops.reactions()                       # re-forms element forces (strains read zero otherwise)
history = np.array([[0.0], [1.0]])
'''

DISPLACEMENT_CONTROL_CODE = '''
# --- analysis: displacement control (displacement_control) ---
# each step moves CONTROL_NODE by STEP in CONTROL_DOF; OpenSees finds the load
# factor; steps are halved (up to MAX_CUTS times) on non-convergence
CONTROL_NODE, CONTROL_DOF, STEP = @NODE@, @DOF@, @STEP@
N_STEPS, MAX_LOAD_FACTOR, TOL, MAX_CUTS = @N_STEPS@, @MAX_LF@, @TOL@, 6
t0 = time.perf_counter()
ops.system('UmfPack')
ops.numberer('RCM')
ops.constraints('Transformation')
ops.test(@TEST@, TOL, @MAX_ITER@)
ops.algorithm('Newton')
history = [[0.0, 0.0, *[0.0] * len(EXTRA()), 0]]   # [load factor, control displacement, (twist), iterations]
k = 0
while (N_STEPS is None or k < N_STEPS) and not (MAX_LOAD_FACTOR is not None and abs(history[-1][0]) >= MAX_LOAD_FACTOR):
    du = STEP
    for _ in range(MAX_CUTS + 1):
        ops.integrator('DisplacementControl', CONTROL_NODE, CONTROL_DOF, du)
        ops.analysis('Static')
        if ops.analyze(1) == 0:
            break
        du /= 2
    else:
        print(f'  stopped: no convergence beyond load factor {history[-1][0]:.4g}')
        break
    history.append([ops.getLoadFactor(1), ops.nodeDisp(CONTROL_NODE, CONTROL_DOF), *EXTRA(), ops.testIter()])
    k += 1
    print(f'  step {k:3d}: load factor {history[-1][0]:.5g}, {history[-1][-1]} iterations', flush=True)
ops.reactions()
history = np.array(history)
'''

LOAD_CONTROL_CODE = '''
# --- analysis: load control (load_control) ---
N_STEPS, MAX_LOAD_FACTOR, TOL, MAX_CUTS = @N_STEPS@, @MAX_LF@, @TOL@, 6
t0 = time.perf_counter()
ops.system('UmfPack')
ops.numberer('RCM')
ops.constraints('Transformation')
ops.test(@TEST@, TOL, @MAX_ITER@)
ops.algorithm('Newton')
history = [[0.0, *[0.0] * len(EXTRA()), 0]]        # [load factor, (twist), iterations]
lam, dl = 0.0, MAX_LOAD_FACTOR / N_STEPS
while lam < MAX_LOAD_FACTOR - 1e-12:
    d = min(dl, MAX_LOAD_FACTOR - lam)
    for _ in range(MAX_CUTS + 1):
        ops.integrator('LoadControl', d)
        ops.analysis('Static')
        if ops.analyze(1) == 0:
            break
        d /= 2
    else:
        print(f'  stopped: no convergence beyond load factor {lam:.4g}')
        break
    lam = ops.getLoadFactor(1)
    history.append([lam, *EXTRA(), ops.testIter()])
    print(f'  load factor {lam:.5g}, {ops.testIter()} iterations', flush=True)
ops.reactions()
history = np.array(history)
'''

RESULTS_CODE = '''
print(f"{MESH['summary']}\\n{len(ops.getEleTags())} elements, {6 * len(ops.getNodeTags())} DOFs; "
      f"{ANALYSIS} solved in {time.perf_counter() - t0:.1f} s")


# --- results file (collect_results; read by shell-visualize and failure-check) ---
def strain_rotation(theta_deg):
    # [eps_1, eps_2, gam_12] = T [eps_x, eps_y, gam_xy] (laminate-properties)
    c, s = math.cos(math.radians(theta_deg)), math.sin(math.radians(theta_deg))
    return np.array([[c * c, s * s, c * s], [s * s, c * c, -c * s], [-2 * c * s, 2 * c * s, c * c - s * s]])


def facet_strains():
    # (facets, Gauss points, 8) [eps_xx eps_yy gam_xy k_xx k_yy k_xy gam_xz gam_yz] in the
    # facet frame, CLT curvature sign (OpenSees reports -k); first element of each facet
    out = []
    for first, _, th, *_ in FACETS:
        s = np.reshape(ops.eleResponse(first, 'strains'), (-1, 8)).copy()
        s[:, 3:6] *= -1.0
        if th != 0.0:
            T = strain_rotation(-th)           # element (ply) axes -> facet axes
            s[:, 0:3] = s[:, 0:3] @ T.T
            s[:, 3:6] = s[:, 3:6] @ T.T
            c, sn = math.cos(math.radians(th)), math.sin(math.radians(th))
            g1, g2 = s[:, 6].copy(), s[:, 7].copy()
            s[:, 6], s[:, 7] = c * g1 - sn * g2, sn * g1 + c * g2
        out.append(s)
    return np.array(out)


STRIP_KEYS = ('nstrips', 'strip_label', 'strip_s', 'web_stack', 'section_kind', 'boom')   # branched sections
tags = ops.getNodeTags()
index = {t: k for k, t in enumerate(tags)}
fixed = np.zeros(len(tags), dtype=np.int8)
fixed[[index[n] for n in ops.getFixedNodes()]] = 1
meta = dict(title=NAME, summary=MESH['summary'], nx=MESH['nx'], ny=MESH['ny'], L=MESH['L'], b=MESH['b'],
            element=MESH['element'], rigid=RIGID, case=CASE, history_columns=HISTORY_COLUMNS,
            **{k: MESH[k] for k in STRIP_KEYS if k in MESH})
results = dict(points=np.array([ops.nodeCoord(t) for t in tags]), node_tags=np.array(tags),
               disp=np.array([(ops.nodeDisp(t) + [0.0] * 6)[:6] for t in tags]), fixed=fixed,
               faces=np.array([[index[n] for n in f[3:]] for f in FACETS]), frames=FRAMES,
               strains=facet_strains(), history=history, laminate=LAMINATE, meta=json.dumps(meta))
out = Path(sys.argv[1]) if len(sys.argv) > 1 else Path(__file__).resolve().parent / 'results' / f'{NAME}.npz'
out.parent.mkdir(parents=True, exist_ok=True)
np.savez_compressed(out, **results)
print(f'saved {out}')
print(f'report node {REPORT_NODE}: u = {np.round(ops.nodeDisp(REPORT_NODE), 6).tolist()}')
print(f"max |u| = {np.linalg.norm(results['disp'][:, :3], axis=1).max():.6g} mm")
'''


TWIST_CODE = '''
# --- recorded twist of edge @EDGE@ (edge_twist): exact best-fit rotation about x of its nodes ---
TWIST_NODES = @NODES@


def EXTRA():
    X0 = np.array([ops.nodeCoord(n)[1:3] for n in TWIST_NODES])
    Y = X0 + np.array([ops.nodeDisp(n)[1:3] for n in TWIST_NODES])
    A, B = X0 - X0.mean(0), Y - Y.mean(0)
    return [math.atan2(np.sum(A[:, 0] * B[:, 1] - A[:, 1] * B[:, 0]), np.sum(A * B))]
'''

NO_EXTRA_CODE = '''

def EXTRA():                          # nothing recorded besides the control quantity
    return []
'''


def analysis_code(case, mesh):
    an = case.get('analysis', {'type': 'linear'})
    if an['type'] == 'linear':
        return LINEAR_CODE
    test = an.get('test', 'RelativeNormDispIncr')
    tol = an.get('tol', TESTS.get(test, 1e-6))
    max_iter = an.get('max_iter', 250 if test == 'EnergyIncr' else 40)
    tw = an.get('record_twist')
    extra = (TWIST_CODE.replace('@EDGE@', tw).replace('@NODES@', repr(list(mesh.edge_nodes(tw))))
             if tw else NO_EXTRA_CODE)
    if an['type'] == 'displacement_control':
        return extra + (DISPLACEMENT_CONTROL_CODE.replace('@NODE@', repr(resolve_node(mesh, an['node'])))
                        .replace('@DOF@', repr(an.get('dof', 3))).replace('@STEP@', repr(an['step']))
                        .replace('@N_STEPS@', repr(an.get('n_steps'))).replace('@MAX_LF@', repr(an.get('max_load_factor')))
                        .replace('@TOL@', repr(tol)).replace('@TEST@', repr(test)).replace('@MAX_ITER@', repr(max_iter)))
    if an['type'] == 'load_control':
        return extra + (LOAD_CONTROL_CODE.replace('@N_STEPS@', repr(an.get('n_steps', 10)))
                        .replace('@MAX_LF@', repr(an.get('max_load_factor', 1.0))).replace('@TOL@', repr(tol))
                        .replace('@TEST@', repr(test)).replace('@MAX_ITER@', repr(max_iter)))
    raise ValueError(f'unknown analysis {an["type"]!r} (linear | displacement_control | load_control)')


def write_code(case, path):
    """This skill's piece of a complete OpenSeesPy script: the supports,
    rigid ends and loads of the case (the calls apply_supports / apply_loads
    make, recorded on the case's mesh nodes), the solution as in
    linear_solve / displacement_control / load_control, and the results file
    as collect_results. Needs FACETS, FRAMES, MESH (shell-mesh piece) and
    LAMINATE (laminate-properties piece)."""
    mesh = sm.build_from_spec(case['geometry'])
    sm.create_nodes(mesh)                                  # node coordinates only: rigid ends, edge shares, pressure
    mesh.laminate = lp.laminate_from_spec(case['laminate'])  # stiffness of large-rotation rigid-end spokes
    with lp.record_ops(('node', 'rigidLink', 'geomTransf', 'element', 'equalDOF', 'fix', 'timeSeries', 'pattern',
                        'load')) as calls:
        apply_supports(mesh, case.get('supports', []))
        apply_loads(mesh, case.get('loads', []))
    an = case.get('analysis', {'type': 'linear'})['type']
    geometry = json.loads(json.dumps(case['geometry']))
    count = {}
    for n, _ in calls:
        count[n] = count.get(n, 0) + 1
    lines = [lp.PIECE_MARK.format('supports, loads and solution', 'shell-bc-load'),
             f'# {count.get("fix", 0)} fixed nodes, {len(getattr(mesh, "rigid", {}))} rigid end(s), '
             f'{count.get("load", 0)} nodal loads; {an} analysis; results .npz',
             '# provides: the solved model and the results file (argument 1, default results/<NAME>.npz)',
             '# needs:    FACETS, FRAMES, MESH (mesh piece), LAMINATE (laminate piece)',
             f'NAME = {case.get("name", "case")!r}',
             f'ANALYSIS = {an!r}',
             f'GEOMETRY = {geometry!r}',
             f'CASE = {json.loads(json.dumps(case))!r}',
             f'RIGID = {getattr(mesh, "rigid", {})!r}',
             f'HISTORY_COLUMNS = {history_columns(case)!r}',
             f'REPORT_NODE = {resolve_node(mesh, case.get("report_node", "tip"))!r}',
             f"if MESH['geometry'] != GEOMETRY or MESH['n_nodes'] != {(mesh.nx + 1) * (mesh.ny + 1)}:",
             "    raise ValueError('the mesh piece was written for another geometry than this supports/loads piece')"]
    lines += lp.ops_code(calls, BC_HEADINGS)
    text = '\n'.join(lines) + '\n' + analysis_code(case, mesh) + RESULTS_CODE
    ops.wipe()
    Path(path).write_text(text, encoding='utf-8')


def main():
    ap = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument('case', help='case JSON file')
    ap.add_argument('--out', default=None, help='output folder (default: next to the case file)')
    ap.add_argument('--emit-code', metavar='FILE', help='only write the supports/loads/solution piece of a complete '
                                                       'OpenSeesPy script (joined by shell-assemble-run)')
    a = ap.parse_args()
    case = json.loads(Path(a.case).read_text())
    if a.emit_code:
        write_code(case, a.emit_code)
        print(f'supports/loads/solution piece of the OpenSeesPy script written to {a.emit_code}')
        return
    out = Path(a.out) if a.out else Path(a.case).parent
    mesh, res = run_case(case, out)
    tip = resolve_node(mesh, case.get('report_node', 'tip'))
    print(f'report node {tip}: u = {np.round(ops.nodeDisp(tip), 6).tolist()}')


if __name__ == '__main__':
    main()
