"""
Buckling (elastic stability) of thin-shell booms in OpenSeesPy: tape
springs, TRAC, omega or any section built with the shell-mesh skill, under
compression, bending or any load combination of the shell-bc-load skill.

OpenSees has no *BUCKLE step, and the stiffness matrix is only available as
a dense matrix (printA with system FullGeneral). What it does have, and what
this skill uses:
  eigen('-standard', '-symmBandLapack', n) after a static step = the n
  smallest eigenvalues (and vectors) of the CURRENT tangent stiffness K_T.
K_T becomes singular (its smallest eigenvalue crosses zero) at a bifurcation
or limit point of the equilibrium path. So:

(A) STABILITY PATH (default): follow the geometrically nonlinear equilibrium
    path (load control, or displacement control through limit points) and
    compute the lowest eigenvalues of K_T at every converged state; the
    critical load is where the smallest one crosses zero, located by secant
    steps onto the crossing. This is the OpenSees counterpart of the Abaqus
    "preload to the buckling load, then eigenvalue" procedure. The critical
    eigenvector is the buckling mode.
    'lba' does the same with a linear pre-buckling state (classical linear
    buckling analysis, cf. Abaqus *BUCKLE with no preload).
(B) IMPERFECT PATH (Riks-type): seed an imperfection (scaled buckling mode,
    from A) into the node coordinates and follow the path with displacement
    control; the peak load is the buckling strength with imperfection.

ELEMENT: (A) needs ShellNLDKGQ. Its tangent includes the initial-stress
(geometric) stiffness; the ASDShellQ4 -corotational tangent does not (its
residual is correct, so (B) works with it, but its K_T eigenvalues do not
move with the load: verified on a strip column, 10/29/26 log). ShellNLDKGQ
takes one section along the element's own x axis (node 1 -> 2), so laminates
are limited to 0 and 90 deg plies (coincident elements, the 90 deg one with
its nodes renumbered); use ASDShellQ4 + (B) for off-axis plies.

Analytical references (for checks): thin-walled open-section properties of
any CrossSection (area, centroid, inertias, shear centre, St Venant J,
warping constant Cw), Euler and flexural-torsional column buckling (Vlasov /
Timoshenko-Gere), see section_properties() and column_buckling().

Units: N, mm, MPa.
"""
import math
import sys
from pathlib import Path

import numpy as np
import openseespy.opensees as ops

_SKILLS = Path(__file__).resolve().parents[1]
for _d in ('laminate-properties', 'shell-mesh', 'shell-bc-load'):
    sys.path.insert(0, str(_SKILLS / _d))
import shell_mesh as sm      # noqa: E402


# --- model -----------------------------------------------------------------------------

def build_shell(mesh, laminate, element='ShellNLDKGQ', imperfection=None, amplitude=0.0,
                mat_tag=1, sec_tag=1, new_model=True):
    """Nodes, sections and elements, optionally on an imperfect geometry.
    element: 'ShellNLDKGQ' (consistent geometric stiffness: use for the
    stability path / eigen analysis) or 'ASDShellQ4' (always corotational
    here: imperfect path, any laminate). imperfection: {node: (dx, dy, dz)}
    shape (e.g. mode_shape()), scaled so its largest translation = amplitude."""
    sm.create_nodes(mesh, new_model)
    if imperfection and amplitude:
        scale = amplitude / max(np.linalg.norm(v[:3]) for v in imperfection.values())
        tags = set(ops.getNodeTags())
        for n, v in imperfection.items():
            if n in tags:
                x = np.array(ops.nodeCoord(n)) + scale * np.asarray(v[:3])
                for k in range(3):
                    ops.setNodeCoord(n, k + 1, float(x[k]))
    sections = laminate.define(mat_tag, sec_tag)
    mesh.laminate, mesh.element = laminate, element
    if element == 'ASDShellQ4':
        return sm.create_elements(mesh, sections, element, ('-corotational',))
    if element != 'ShellNLDKGQ':
        raise ValueError("element must be 'ShellNLDKGQ' or 'ASDShellQ4'")
    tag, mesh.facets, frames = 1, [], []
    for _, _, nodes in mesh.quads():
        frames.append(mesh.facet_frame([np.array(ops.nodeCoord(k)) for k in nodes]))
        mesh.facets.append((tag, len(sections), sections[0][1]))
        for sec, th in sections:
            q = round(th / 90.0)
            if abs(th - 90.0 * q) > 1e-9:
                raise ValueError(f'ShellNLDKGQ takes 0/90 deg plies only (got {th:g}); use ASDShellQ4')
            k = q % 2                       # 90 deg: local x along the section (n2 -> n3)
            ops.element('ShellNLDKGQ', tag, *(nodes[k:] + nodes[:k]), sec)
            tag += 1
    mesh.frames = np.array(frames)
    return tag


def rigid_end(mesh, edge, E, t, factor=1e3, master_tag=None, first_ele=None):
    """Rigid end fixture for buckling / large rotations: a master node at the
    edge centroid joined to every edge node by a stiff elastic beam with a
    Corotational transformation ("spokes"; E_b = factor E, A = t b,
    I = J = t b^3 / 12). Use instead of shell_bc_load.rigid_end there:
    rigidLink + Transformation is a linear (small-rotation) constraint and,
    under rotation control, diverges with ShellNLDKGQ and returns zero
    moment with ASDShellQ4 (10/29/26 log). A node at the centroid itself is
    tied with equalDOF. Returns the master node (stored in mesh.rigid[edge])."""
    nodes = mesh.edge_nodes(edge)
    w = np.ones(len(nodes))
    w[[0, -1]] = 0.5
    X = np.array([ops.nodeCoord(n) for n in nodes])
    c = w @ X / w.sum()
    master = master_tag or max(ops.getNodeTags()) + 1
    ops.node(master, *c)
    b = mesh.b
    A, I = t * b, t * b**3 / 12
    tr = (max(ops.getCrdTransfTags()) + 1) if ops.getCrdTransfTags() else 1
    ops.geomTransf('Corotational', tr, 1.0, 0.0, 0.0)     # spokes lie in the y-z plane: vecxz = x
    ele = first_ele or max(ops.getEleTags()) + 1
    for n, x in zip(nodes, X):
        if np.linalg.norm(x - c) < 1e-9 * b:
            ops.equalDOF(master, n, 1, 2, 3, 4, 5, 6)
            continue
        ops.element('elasticBeamColumn', ele, master, n, A, factor * E, factor * E / 2.6, I, I, I, tr)
        ele += 1
    if not hasattr(mesh, 'rigid'):
        mesh.rigid = {}
    mesh.rigid[edge] = master
    return master


# --- eigenvalues of the tangent stiffness -----------------------------------------------------

_LAST = {'order': None}         # index of the sorted eigenvalues in the last eigen call


def tangent_eigen(n=4, solver='arpack'):
    """n eigenvalues of the current tangent stiffness closest to zero, sorted
    (standard problem K_T phi = mu phi; mixed units, only the sign and the
    zero crossing mean something).
    'arpack' (default): generalized ARPACK (shift-invert about 0) with a unit
    mass on every DOF, i.e. M = I, so the same standard problem, sparse.
    'band': '-standard -symmBandLapack', identical values but it forms all
    eigenvectors (O(n^3)): 8 s at 3k DOFs, > 20 min at 12k (vs 0.4 s / 2 s).
    The unit masses do not affect static analyses."""
    if solver == 'band':
        mu = np.array(ops.eigen('-standard', '-symmBandLapack', n))
    else:
        tags = ops.getNodeTags()
        if ops.nodeMass(tags[0], 1) != 1.0 or ops.nodeMass(tags[-1], 1) != 1.0:
            for t in tags:
                ops.mass(t, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0)
        mu = np.array(ops.eigen('-genBandArpack', n))
    _LAST['order'] = np.argsort(mu)
    return mu[_LAST['order']]


def mode_shape(mode=1, nodes=None):
    """{node: (ux, uy, uz)} of eigenvector `mode` (1 = smallest eigenvalue)
    of the last tangent_eigen call, normalized to a largest translation of 1."""
    nodes = nodes or ops.getNodeTags()
    if _LAST['order'] is not None:
        mode = int(_LAST['order'][mode - 1]) + 1
    v = {n: np.array(ops.nodeEigenvector(n, mode)[:3]) for n in nodes}
    m = max(np.linalg.norm(x) for x in v.values()) or 1.0
    return {n: x / m for n, x in v.items()}


# --- solution control -------------------------------------------------------------------------

def _setup(tol, max_iter, test='NormDispIncr'):
    ops.system('UmfPack')
    ops.numberer('RCM')
    ops.constraints('Transformation')
    ops.test(test, tol, max_iter, 0)
    ops.algorithm('Newton')


def _step(control, d, max_cuts):
    """One converged step of size d of the path parameter (load factor
    for 'load', displacement of control['node'] in control['dof'] for 'disp');
    halves d on failure. 'arc': d = arc length of ArcLength(d, alpha) (snap-back);
    its path parameter is still the displacement of control['node']. Returns
    the step taken or None."""
    for _ in range(max_cuts + 1):
        if control['type'] == 'load':
            ops.integrator('LoadControl', d)
        elif control['type'] == 'arc':
            ops.integrator('ArcLength', d, control.get('alpha', 1.0))
        else:
            ops.integrator('DisplacementControl', control['node'], control['dof'], d)
        ops.analysis('Static')
        if ops.analyze(1) == 0:
            return d
        d /= 2
    return None


def _param(control):
    return ops.getLoadFactor(control.get('pattern', 1)) if control['type'] == 'load' else \
        ops.nodeDisp(control['node'], control['dof'])


def stability_path(control, step, max_steps=200, n_eig=4, stop_after=0, rel_tol=1e-3,
                   max_load_factor=None, mode_nodes=None, record=None, tol=1e-8, max_iter=25,
                   max_cuts=6, overshoot=1.15, verbose=True):
    """Method (A). Follows the equilibrium path of the current model (loads in
    pattern 1 = reference load) and the smallest eigenvalues of K_T.
    control: {'type': 'load'} or {'type': 'disp', 'node': n, 'dof': d}
    (displacement control passes limit points). step: path increment (load
    factor or displacement). The step is shortened by secant prediction of
    the zero crossing of the smallest eigenvalue, aiming `overshoot` times
    past it (Newton struggles exactly on the singular point); the critical
    point is linearly interpolated in the bracket (mu_min is nearly linear
    in the load near it), or taken where |mu_min| < rel_tol * |mu_min(0)|.
    stop_after: extra steps after the crossing (post-critical path).
    Returns dict: history rows [param, load factor, mu_1..mu_n, record()...],
    critical (dict: load_factor, param, mu, mode) or None, eig0."""
    record = record or (lambda: [])
    _setup(tol, max_iter)
    ops.integrator('LoadControl', 0.0)        # analysis object first, else eigen numbers
    ops.analysis('Static')                    # the DOFs without RCM (huge bandwidth)
    mu = tangent_eigen(n_eig)
    eig0 = abs(mu[0]) or 1.0
    rows = [[_param(control), ops.getLoadFactor(1), *mu, *record()]]
    crit, after, d, last = None, 0, step, step
    if verbose:
        print(f'  start: mu_min = {mu[0]:.4e}')
    for k in range(max_steps):
        m0 = rows[-1][2]
        d = step
        if crit is None and len(rows) >= 2:     # secant prediction of mu_min = 0 (fraction of last step)
            m1 = rows[-2][2]
            frac = m0 / (m1 - m0) if m1 != m0 else -1.0
            if 0 < frac and abs(last) * frac * overshoot < abs(step):
                # aim just past the crossing: Newton converges poorly ON the singular point,
                # and mu_min is close to linear, so the bracket is interpolated below
                d = last * max(frac * overshoot, 0.02)
        taken = _step(control, d, max_cuts)
        last = taken if taken is not None else last
        if taken is None:
            if verbose:
                print(f'  no convergence after load factor {rows[-1][1]:.5g}')
            break
        mu = tangent_eigen(n_eig)
        rows.append([_param(control), ops.getLoadFactor(1), *mu, *record()])
        if verbose:
            print(f'  step {k + 1:3d}: param {rows[-1][0]: .5g}, load factor {rows[-1][1]: .6g}, '
                  f'mu_min {mu[0]: .4e}, iters {ops.testIter()}', flush=True)
        if crit is None and (abs(mu[0]) < rel_tol * eig0 or mu[0] < 0 < m0):
            a, b = np.array(rows[-2]), np.array(rows[-1])
            w = 1.0 if mu[0] == m0 else m0 / (m0 - mu[0])     # linear interpolation onto mu = 0
            if abs(mu[0]) < rel_tol * eig0:
                w = 1.0
            nodes = mode_nodes or ops.getNodeTags()
            crit = dict(param=a[0] + w * (b[0] - a[0]), load_factor=a[1] + w * (b[1] - a[1]),
                        mu=mu[0], step=len(rows) - 1, mode=mode_shape(1, nodes))
            if verbose:
                print(f'  CRITICAL: load factor {crit["load_factor"]:.6g} at param {crit["param"]:.5g}')
            d = step
        elif crit is not None:
            after += 1
        if crit is not None and after >= stop_after:
            break
        if max_load_factor is not None and abs(rows[-1][1]) >= max_load_factor:
            break
    return dict(history=np.array(rows), critical=crit, eig0=eig0)


def stability_scan(build, step, max_param, n_coarse=8, n_refine=5, n_eig=3, tol=1e-8,
                   max_iter=100, max_cuts=6, algorithm='KrylovNewton', mode_nodes=None, verbose=True):
    """Method (A) without eigen calls on the path: every evaluation rebuilds
    the model (build() -> control dict, e.g. {'type': 'disp', 'node': tip,
    'dof': 5} or {'type': 'load'}), marches to the path parameter p in steps
    <= step, and only then computes mu_min(K_T). Needed with ShellNLDKGQ on
    large-rotation paths: an eigen call changes its element state (the
    path after it drifts, 3% in end rotation per call on the tape spring,
    10/29/26 log). Coarse scan p = max_param * k / n_coarse until mu_min < 0
    (or the march fails: beyond a load-control limit point), then regula
    falsi (Illinois) on mu_min(p) in the bracket. Returns dict(param,
    load_factor, mode, evaluations [(p, load factor, mu_min)])."""
    def evaluate(p):
        ctrl = build()
        _setup(tol, max_iter)
        ops.algorithm(algorithm)
        done, d = 0.0, math.copysign(min(abs(step), abs(p)), p)
        while abs(p - done) > 1e-9 * abs(p):
            d = math.copysign(min(abs(d), abs(p - done)), p)
            taken = _step(ctrl, d, max_cuts)
            if taken is None:
                if verbose:
                    print(f'  scan p = {p: .6g}: march failed at {done: .6g}', flush=True)
                return None
            done += taken
            d = step if taken == d else 2 * taken          # regrow after a cut
        ops.integrator('LoadControl', 0.0)
        ops.analysis('Static')
        mu = tangent_eigen(n_eig)
        ev = (p, ops.getLoadFactor(1), mu[0])
        evals.append(ev)
        if verbose:
            print(f'  scan p = {p: .6g}: load factor {ev[1]: .6g}, mu_min {mu[0]: .4e}', flush=True)
        return ev
    evals = []
    a = (0.0, 0.0, evaluate(1e-9 * max_param)[2])
    b = None
    for k in range(1, n_coarse + 1):
        e = evaluate(max_param * k / n_coarse)
        if e is None or e[2] < 0:
            b = e if e is not None else (max_param * k / n_coarse, float('nan'), None)
            break
        a = e
    if b is None:
        return dict(param=None, load_factor=None, mode=None, evaluations=evals)
    fa, fb, last = a[2], b[2], None                       # Illinois-scaled end values
    for _ in range(n_refine):
        if b[2] is None:                                   # march failed: bisect
            p = 0.5 * (a[0] + b[0])
        else:
            p = a[0] + fa * (b[0] - a[0]) / (fa - fb)
        e = evaluate(p)
        if e is None:
            b, fb, last = (p, float('nan'), None), None, None
        elif e[2] < 0:
            b, fb = e, e[2]
            if last == 'b':
                fa /= 2
            last = 'b'
        else:
            a, fa = e, e[2]
            if last == 'a' and fb is not None:
                fb /= 2
            last = 'a'
    # final state: interpolate the load factor at mu = 0 between the bracket ends
    if b[2] is None:
        lf, p = a[1], a[0]
    else:
        w = a[2] / (a[2] - b[2])
        p, lf = a[0] + w * (b[0] - a[0]), a[1] + w * (b[1] - a[1])
    evaluate(b[0] if b[2] is not None else a[0])          # leave the model at the bracket end for the mode
    return dict(param=p, load_factor=lf, mode=mode_shape(1, mode_nodes), evaluations=evals)


def _dense_tangent(lam, tol=1e-10):
    """Dense K_T (printA) after a converged Newton step to load factor lam."""
    ops.system('FullGeneral'); ops.numberer('RCM'); ops.constraints('Transformation')
    ops.test('NormDispIncr', tol, 50, 0); ops.algorithm('Newton')
    ops.integrator('LoadControl', lam); ops.analysis('Static')
    if ops.analyze(1) != 0:
        raise RuntimeError(f'step to load factor {lam:g} failed')
    n = ops.systemSize()
    return np.array(ops.printA('-ret')).reshape(n, n)


def lba(build, lam_small, n_modes=3, max_dofs=8000, verbose=True):
    """Classical linear buckling analysis (Abaqus *BUCKLE without preload):
    K0 phi = -lam Kg phi with Kg = (K_T(lam_small) - K0) / lam_small, the
    initial-stress stiffness of the reference load by finite difference
    (lam_small << lam_cr, e.g. 1e-3 of a guess). Dense (printA), so small
    models only: max_dofs. ShellNLDKGQ. ('Linear' algorithm steps do not
    refresh the ShellNLDKGQ stresses used in K_T, hence the Newton step.)
    build(): creates the model with the reference load in pattern 1.
    Returns the n_modes smallest positive load factors."""
    import scipy.linalg as sl
    build()
    if 6 * len(ops.getNodeTags()) > max_dofs:
        raise ValueError(f'{6 * len(ops.getNodeTags())} DOFs: too large for the dense LBA (max_dofs)')
    K0 = _dense_tangent(0.0)
    build()
    K1 = _dense_tangent(lam_small)
    Kg = (K1 - K0) / lam_small
    K0, Kg = (K0 + K0.T) / 2, (Kg + Kg.T) / 2
    mu = sl.eigh(-Kg, K0, eigvals_only=True)          # -Kg phi = (1/lam) K0 phi, K0 positive definite
    lam = np.sort(1.0 / mu[mu > 1e-12 * np.abs(mu).max()])[:n_modes]
    if verbose:
        print(f'  LBA ({K0.shape[0]} equations): load factors {np.round(lam, 6).tolist()}')
    return lam


def imperfect_path(control, step, n_steps, record=None, tol=1e-8, max_iter=100, max_cuts=6,
                   algorithm='KrylovNewton', min_step=None, verbose=True):
    """Method (B): path of the current (imperfect) model, no eigen calls.
    control: {'type': 'disp', 'node', 'dof'} (rotation/displacement of a
    LOADED DOF: limit points, snap-through) or {'type': 'load'} (bifurcation
    problems: with ASDShellQ4 the tangent has no geometric stiffness, so
    displacement control of a buckling DOF, e.g. the lateral deflection of
    a column, diverges at the first step). KrylovNewton accelerates the
    modified-Newton-like convergence of ASDShellQ4 near buckling.
    Steps are halved on failure (max_cuts) and grown back after success.
    Returns (rows [param, load factor, record()..., iterations], peak
    |load factor|, its row index)."""
    record = record or (lambda: [])
    _setup(tol, max_iter)
    ops.algorithm(algorithm)
    rows = [[_param(control), ops.getLoadFactor(1), *record(), 0]]
    d = step
    for k in range(n_steps):
        taken = _step(control, d, max_cuts)
        if taken is None:
            if verbose:
                print(f'  stopped: no convergence beyond load factor {rows[-1][1]:.5g}')
            break
        rows.append([_param(control), ops.getLoadFactor(1), *record(), ops.testIter()])
        if verbose:
            print(f'  step {k + 1:3d}: param {rows[-1][0]: .5g}, load factor {rows[-1][1]: .6g}, '
                  f'iters {ops.testIter()}', flush=True)
        d = step if taken == d else taken * 2        # grow back after a cut
    h = np.array(rows)
    k = int(np.argmax(np.abs(h[:, 1])))
    return h, abs(h[k, 1]), k


# --- thin-walled open sections (analytical references) -----------------------------------------

def section_points(section, n_per_piece=200):
    """Dense (y, z) centreline points of a shell-mesh CrossSection."""
    br = section.breaks
    s = np.unique(np.concatenate([np.linspace(a, c, n_per_piece + 1) for a, c in zip(br[:-1], br[1:])]))
    return np.array([section.point(x) for x in s])


def section_properties(points, t):
    """Thin-walled open section (centreline polyline, uniform t): A,
    centroid (yc, zc), Iyy = int z^2 dA (resists z deflection), Izz, Iyz
    (centroidal), principal I1 >= I2 and angle, shear centre (ys, zs) and
    its offset from the centroid, J = sum l t^3 / 3, warping constant Cw
    about the shear centre (Vlasov sectorial coordinate), polar radius r0^2
    about the shear centre. Integrals exact for the polyline (Simpson)."""
    P = np.asarray(points, float)
    y, z = P[:, 0], P[:, 1]
    ln = np.hypot(np.diff(y), np.diff(z))

    def integ(f, g):              # sum over segments of t * int f g ds, f, g linear on each
        return t * np.sum(ln / 6 * (2 * f[:-1] * g[:-1] + f[:-1] * g[1:] + f[1:] * g[:-1] + 2 * f[1:] * g[1:]))

    one = np.ones_like(y)
    A = t * ln.sum()
    yc, zc = integ(y, one) / A, integ(z, one) / A
    Y, Z = y - yc, z - zc
    Iyy, Izz, Iyz = integ(Z, Z), integ(Y, Y), integ(Y, Z)
    # sectorial coordinate about the centroid: d omega = (Y dZ - Z dY)
    dw = Y[:-1] * np.diff(Z) - Z[:-1] * np.diff(Y)
    w = np.concatenate([[0.0], np.cumsum(dw)])
    Iwy, Iwz = integ(w, Y), integ(w, Z)
    # pole P: omega_P = omega_C - yP Z + zP Y (+ const); shear centre: int omega_P Y = int omega_P Z = 0
    # (lstsq: a straight section is degenerate, its shear centre is the centroid)
    ys, zs = np.linalg.lstsq([[-Iyz, Izz], [-Iyy, Iyz]], [-Iwy, -Iwz], rcond=1e-12)[0]
    wS = w - ys * Z + zs * Y
    wS -= integ(wS, one) / A
    Cw = integ(wS, wS)
    J = ln.sum() * t**3 / 3
    I1, I2 = (Iyy + Izz) / 2 + np.hypot((Iyy - Izz) / 2, Iyz), (Iyy + Izz) / 2 - np.hypot((Iyy - Izz) / 2, Iyz)
    return dict(A=A, yc=yc, zc=zc, Iyy=Iyy, Izz=Izz, Iyz=Iyz, I1=I1, I2=I2,
                theta_p=0.5 * math.degrees(math.atan2(-2 * Iyz, Iyy - Izz)),
                ys=yc + ys, zs=zc + zs, y0=ys, z0=zs, J=J, Cw=Cw, r0sq=(Iyy + Izz) / A + ys**2 + zs**2)


def arc_closed_form(R, b, t):
    """Closed forms for a circular-arc section (half angle a = b / 2R):
    distance of the shear centre from the arc centre e = 2R (sin a - a cos a) /
    (a - sin a cos a), warping constant Cw = (2 t R^5 / 3) [a^3 - 6 (sin a -
    a cos a)^2 / (a - sin a cos a)] (e.g. Young & Budynas, Table 10.2)."""
    a = b / (2 * R)
    s, c = math.sin(a), math.cos(a)
    return dict(e=2 * R * (s - a * c) / (a - s * c),
                Cw=2 * t * R**5 / 3 * (a**3 - 6 * (s - a * c)**2 / (a - s * c)))


def column_buckling(props, E, G, L, K_flex=1.0, K_tors=1.0):
    """Elastic column buckling of a thin-walled open section, pinned ends
    with fork supports (K = 1, warping free; other K = effective-length
    factors applied to the flexural and warping terms). Returns the flexural
    loads about the two centroidal axes (P_v: deflection along y, P_w: along
    z, for a symmetric section axes = principal), the pure torsional load
    P_phi, and the three coupled flexural-torsional loads (Timoshenko & Gere
    1961, Sec. 5.4, determinant of [[P_v - P, 0, -P z0], [0, P_w - P, P y0],
    [-P z0, P y0, r0^2 (P_phi - P)]] in principal axes)."""
    import scipy.linalg as sl
    th = math.radians(props['theta_p'])                # rotate to principal axes
    c, s = math.cos(th), math.sin(th)
    Iyy, Izz, Iyz = props['Iyy'], props['Izz'], props['Iyz']
    Iv = Izz * c * c + Iyy * s * s - 2 * Iyz * s * c     # resists deflection v (along principal y)
    Iw = Iyy * c * c + Izz * s * s + 2 * Iyz * s * c
    y0 = props['y0'] * c + props['z0'] * s
    z0 = -props['y0'] * s + props['z0'] * c
    r0sq = (Iv + Iw) / props['A'] + y0**2 + z0**2
    Pv = math.pi**2 * E * Iv / (K_flex * L)**2
    Pw = math.pi**2 * E * Iw / (K_flex * L)**2
    Pphi = (G * props['J'] + math.pi**2 * E * props['Cw'] / (K_tors * L)**2) / r0sq
    Km = np.diag([Pv, Pw, r0sq * Pphi])
    Gm = np.array([[1, 0, -z0], [0, 1, y0], [-z0, y0, r0sq]])
    P = np.sort(sl.eigh(Km, Gm, eigvals_only=True))
    return dict(P_v=Pv, P_w=Pw, P_phi=Pphi, P_coupled=P, P_cr=P[0])
