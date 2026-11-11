"""
Parametric CTM / omega boom (Palmeri & Laurenzi 2024) in OpenSeesPy, built from the project skills
(laminate-properties, shell-mesh, shell-buckling, failure-check). 11/10/26 (Tara).

Geometry (P&L Fig. 1, Eqs. 1-4): each shell = edge arc (r2, alpha) + central arc (r1, 2 alpha: two halves
of r1 alpha each) + edge arc (r2, alpha), tangent-continuous, between two flat bonded tabs of width w;
h = 2 (r1 alpha + r2 alpha + w) = 130 mm, w = 4.5 mm  ->  r2 = (h - 2 w - 2 r1 alpha) / (2 alpha).
Model axes: extrusion along x (L = 500 mm), tabs along y, shell height along z.
    P&L x-axis (along the tabs)       = model y   -> "Mx" = moment about model y
    P&L y-axis (normal to the tabs)   = model z   -> "My" = moment about model z
Boundary conditions as P&L Section 2.1 (root reference point clamped; tip reference point):
    axial : only the rotation about the boom axis fixed            (model: rx)
    Mx    : translation along P&L x and rotations about y, z fixed (model: uy, rz, rx)
    My    : translation along P&L y and rotations about x, z fixed (model: uz, ry, rx)
Reference points = shell-buckling rigid_end (corotational beam spokes), at the section centroid.

Buckling: shell-buckling method A (ShellNLDKGQ tangent-stiffness eigenvalue zero crossing along the
nonlinear path, perfect geometry = OpenSees counterpart of P&L's "nonlinear static + sequential linear
buckling" procedure) is the objective; method B (ASDShellQ4 corotational, mode-A imperfection 0.1 t) is
run at the optima for the imperfect strength.
Laminates: ctm_materials.py; the +-45 fabric is the exact equivalent 0-deg ply in the FE (ShellNLDKGQ
takes 0/90 only), failure uses the literal laminates (fabric axes). Webs (tabs): the 7-ply web laminate,
installed by replacing shell_mesh.web_laminate in this process (the skill only knows mirror/repeat stacks;
skill files are not modified).
"""
import json
import math
import os
import sys
import time
from pathlib import Path

for _v in ('OMP_NUM_THREADS', 'OPENBLAS_NUM_THREADS', 'MKL_NUM_THREADS'):
    os.environ.setdefault(_v, '1')
import numpy as np
import openseespy.opensees as ops

HERE = Path(__file__).resolve().parent
SK = HERE.parents[1] / '.claude' / 'skills'
for _d in ('laminate-properties', 'shell-mesh', 'shell-bc-load', 'shell-buckling', 'failure-check'):
    sys.path.insert(0, str(SK / _d))
sys.path.insert(0, str(HERE))
import laminate_properties as lp   # noqa: E402
import shell_mesh as sm            # noqa: E402
import shell_buckling as sb        # noqa: E402
import failure_check as fc         # noqa: E402

H, W, L = 130.0, 4.5, 500.0
R_MIN, R_MAX = 12.0, 50.0
A_MIN, A_MAX = math.pi / 5, math.pi / 2
R_HUB = 100.0                       # coiling hub radius (user, 11/10/26)
E_REF = 128000.0                    # rigid-end spoke stiffness reference (CF E1)

LAMDIR = HERE / 'laminates'
LAM = {k: lp.Laminate.load(LAMDIR / f'lam_{k}.json') for k in ('shell_eq', 'web_eq', 'shell_lit', 'web_lit')}


def _web_laminate(mesh, laminate):
    return LAM['web_eq'] if mesh.has_web else None


sm.web_laminate = _web_laminate     # 7-ply P&L web on the tab facets (see module doc)


# --- geometry ---------------------------------------------------------------------------------

def r2_of(r1, a):
    """P&L Eq. (4)."""
    return (H - 2 * W - 2 * r1 * a) / (2 * a)


def geometry_constraints(r1, a):
    """g <= 0 form: r2 bounds (same as r1, P&L) and the box bounds."""
    r2 = r2_of(r1, a)
    return dict(r2_min=R_MIN - r2, r2_max=r2 - R_MAX, r1_min=R_MIN - r1, r1_max=r1 - R_MAX,
                a_min=A_MIN - a, a_max=a - A_MAX)


def section(r1, a):
    r2 = r2_of(r1, a)
    c = 2 * (r1 + r2) * math.sin(a)                     # free chord between the tab edges
    arcs = [(r2, r2 * a), (-r1, 2 * r1 * a), (r2, r2 * a)]
    up = sm.CrossSection.segments([('arc', R, s) for R, s in arcs], start=(-c / 2, 0.0), heading=0.0)
    lo = sm.CrossSection.segments([('arc', -R, s) for R, s in arcs], start=(-c / 2, 0.0), heading=0.0)
    left = sm.CrossSection.segments([('line', W)], start=(-c / 2 - W, 0.0))
    right = sm.CrossSection.segments([('line', W)], start=(c / 2, 0.0))
    return sm.BranchedSection([left, up, lo, right], ['web', 'flange', 'flange', 'web'],
                              [False, False, True, False], 'P&L 7-ply',
                              params=dict(boom='CTM', type='OM', r1=r1, r2=r2, alpha=a, chord=c, w=W))


def compliance(design, load, size):
    """Tip path parameter per unit load from one tiny load step (sets the scan range)."""
    mesh, ctrl = build(design, load, size, 'ShellNLDKGQ')
    sb._setup(1e-8, 50)
    ops.integrator('LoadControl', 1e-3)
    ops.analysis('Static')
    ok = ops.analyze(1)
    c = abs(ops.nodeDisp(ctrl['node'], ctrl['dof'])) / 1e-3
    ops.wipe()
    return c if ok == 0 else None


# --- model --------------------------------------------------------------------------------------

def build(design, load, size, element, imperfection=None, amplitude=0.0):
    """Returns (mesh, control dict). design = (r1, alpha)."""
    r1, a = design
    mesh = sm.ShellMesh(L, section(r1, a), size)
    sb.build_shell(mesh, LAM['shell_eq'], element, imperfection, amplitude)
    root = sb.rigid_end(mesh, 'x0', E_REF, LAM['shell_eq'].h)
    tip = sb.rigid_end(mesh, 'xL', E_REF, LAM['shell_eq'].h)
    ops.timeSeries('Linear', 1)
    ops.pattern('Plain', 1, 1)
    ops.fix(root, 1, 1, 1, 1, 1, 1)
    if load == 'axial':
        ops.fix(tip, 0, 0, 0, 1, 0, 0)
        ops.load(tip, -1.0, 0, 0, 0, 0, 0)
        dof = 1
    elif load == 'Mx':                                   # about model y
        ops.fix(tip, 0, 1, 0, 1, 0, 1)
        ops.load(tip, 0, 0, 0, 0, 1.0, 0)
        dof = 5
    elif load == 'My':                                   # about model z
        ops.fix(tip, 0, 0, 1, 1, 1, 0)
        ops.load(tip, 0, 0, 0, 0, 0, 1.0)
        dof = 6
    else:
        raise ValueError(load)
    mesh.ctm_tip = tip
    return mesh, {'type': 'disp', 'node': tip, 'dof': dof}


def path_sign(load):
    return -1.0 if load == 'axial' else 1.0


# --- failure ------------------------------------------------------------------------------------

def facet_labels(mesh):
    return [mesh.strips[k][2] for k in range(len(mesh.strips)) for _ in range(mesh.nx)]


def loaded_failure(mesh):
    """Max Hashin index over every ply of every facet in the current state (literal laminates)."""
    import shell_bc_load as sbl
    E = sbl.facet_strains(mesh)
    lab = np.array(facet_labels(mesh))
    out = {}
    for name, key in (('flange', 'shell_lit'), ('web', 'web_lit')):
        m = lab == name
        if not m.any():
            continue
        F, mode, *_ = fc.failure_index(E[m], LAM[key])
        i = np.unravel_index(np.argmax(F), F.shape)
        out[name] = dict(F=float(F[i]), mode=fc.MODES[int(mode[i])], ply=int(i[2]) + 1)
    g = max(out, key=lambda k: out[k]['F'])
    return dict(F=out[g]['F'], where=g, **{f'{k}_detail': v for k, v in out.items()})


def coiling_failure(r1, a, R_hub=R_HUB):
    """Exact CLT: each arc flattened (dk_y = -+1/r) and bent onto the hub (k_x = +-1/R_hub), 4 sign
    combinations, flange laminate (literal, fabric axes). Tabs are not included (as the project F_hub)."""
    lam = LAM['shell_lit']
    K = lam.abd()
    best = dict(F=-1.0)
    for r in (r1, r2_of(r1, a)):
        for sx in (1, -1):
            for sy in (1, -1):
                k = np.array([sx / R_hub, sy / r, 0.0])
                e0 = -np.linalg.solve(K[:3, :3], K[:3, 3:] @ k)
                Es = np.zeros((1, 1, 8))
                Es[0, 0, :3], Es[0, 0, 3:6] = e0, k
                F, mode, *_ = fc.failure_index(Es, lam)
                i = np.unravel_index(np.argmax(F), F.shape)
                if F[i] > best['F']:
                    best = dict(F=float(F[i]), mode=fc.MODES[int(mode[i])], ply=int(i[2]) + 1, r=r,
                                signs=(sx, sy))
    return best


# --- method A in parallel -----------------------------------------------------------------------

def _scan_worker(args):
    design, load, size, p, step, sv, cwd = args
    os.chdir(cwd)
    holder = {}

    def b():
        holder['mesh'], ctrl = build(design, load, size, 'ShellNLDKGQ')
        return ctrl
    t0 = time.perf_counter()
    ev, mode = sb.scan_point(b, p, step, want_mode=True, verbose=False, **sv)
    fail = None
    if ev is not None:
        try:
            fail = loaded_failure(holder['mesh'])
        except Exception as e:                       # noqa: BLE001
            fail = dict(error=repr(e))
    ops.wipe()
    return ev, mode, fail, time.perf_counter() - t0


def scan_A(design, load, size, max_param, step, workers=16, sv=None, n_coarse=8, n_rounds=2, log=print):
    """Parallel method-A scan. Returns dict(critical load, param, mode, failure at the last stable point,
    evaluations). Doubles max_param up to 3 times if no crossing."""
    import multiprocessing as mp
    sv = sv or dict(tol=1e-8, max_iter=100, max_cuts=6)
    sgn = path_sign(load)
    fails = {}

    def evaluate_many(ps):
        n = min(workers, len(ps))
        out = [None] * len(ps)
        with mp.get_context('spawn').Pool(n) as pool:
            jobs = [pool.apply_async(_scan_worker, ((design, load, size, p, sgn * step, sv, os.getcwd()),))
                    for p in ps]
            pending = set(range(len(ps)))
            while pending:
                for k in sorted(pending):
                    if jobs[k].ready():
                        out[k] = jobs[k].get()
                        pending.discard(k)
                first = next((k for k, r in enumerate(out) if r is not None and (r[0] is None or r[0][2] < 0)),
                             None)
                if first is not None and all(out[j] is not None for j in range(first)):
                    break
                time.sleep(0.3)
            pool.terminate()
        res = []
        for p, r in zip(ps, out):
            if r is None:
                res.append((None, None))
                continue
            ev, mode, fail, dt = r
            if ev is not None:
                fails[ev[0]] = (ev, fail)
                log(f'    p {ev[0]: .5g}  load {ev[1]: .6g}  mu_min {ev[2]: .3e}  {dt:.0f} s')
            else:
                log(f'    p {p: .5g}  march failed  {dt:.0f} s')
            res.append((ev, mode))
        return res

    t0 = time.perf_counter()
    mp_ = max_param
    for attempt in range(4):
        r = sb.parallel_stability_scan(evaluate_many, sgn * mp_, n_coarse=n_coarse, n_rounds=n_rounds,
                                       n_points=max(workers - 1, 1), verbose=False)
        if r['load_factor'] is not None:
            break
        log(f'  no crossing up to {mp_:g}: doubling')
        mp_ *= 2
    crit = None if r['load_factor'] is None else abs(r['load_factor'])
    stable = [v for v in fails.values() if v[0][2] > 0 and (r['param'] is None or abs(v[0][0]) <= abs(r['param']))]
    last = max(stable, key=lambda v: abs(v[0][0])) if stable else None
    return dict(critical=crit, param=None if r['param'] is None else abs(r['param']), mode=r['mode'],
                failure_last_stable=None if last is None else dict(load=abs(last[0][1]), **(last[1] or {})),
                evaluations=[list(e) for e in r['evaluations']], max_param=mp_, time=time.perf_counter() - t0)


def path_B(design, load, size, mode, amplitude, step, max_param, sv=None, log=print):
    """Method B: imperfect ASDShellQ4 corotational path under end-rotation / end-shortening control."""
    sv = sv or dict(tol=1e-6, max_iter=60, max_cuts=8)
    t0 = time.perf_counter()
    mesh, ctrl = build(design, load, size, 'ASDShellQ4', mode, amplitude)
    sgn = path_sign(load)
    h, peak, k = sb.imperfect_path(ctrl, sgn * step, int(round(max_param / step)), verbose=False, **sv)
    ops.wipe()
    return dict(peak=float(peak), param_at_peak=float(abs(h[k, 0])), peak_is_last=bool(k == len(h) - 1),
                amplitude=amplitude, history=h[:, :2].tolist(), time=time.perf_counter() - t0)


def mode_to_file(mode, path):
    np.savez(path, nodes=np.array(list(mode)), vec=np.array(list(mode.values())))


def mode_from_file(path):
    f = np.load(path)
    return {int(n): v for n, v in zip(f['nodes'], f['vec'])}
