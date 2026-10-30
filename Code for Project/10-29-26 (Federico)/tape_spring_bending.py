"""
Step 3 of the buckling study: buckling of a tape spring under end moments
(opposite-sense and equal-sense bending), with the shell-buckling skill.

Reference tape spring: Seffen & Pellegrino (1999, Proc R Soc A 455:1003;
report CUED/D-STRUCT/TR168, 1997): CuBe, E = 131 GPa, nu = 0.3, R = 13.3 mm,
subtended angle alpha = 1.85 rad, t = 0.1 mm, L = 200 mm.
Checks against the literature:
  - steady fold moments after buckling (Calladine 1983; Seffen & Pellegrino
    1999 Eqs 2.29-2.31): M+* = (1 + nu) D alpha, M-* = -(1 - nu) D alpha;
  - opposite-sense peak moment > equal-sense peak, the first depends on L,
    the second does not (Seffen & Pellegrino FE parametric study).

Model: root section clamped through a rigid end; tip rigid end free in ux,
uz and ry (bending rotation), held in uy, rx, rz (as Leclerc & Pellegrino
2020); reference load = tip moment 1 N mm about y. +My (tip turns down,
edges in tension) = opposite-sense; -My = equal-sense (edges in compression).
Methods:
  A  stability path, ShellNLDKGQ, rotation (arc-length) control: critical
     moment where the lowest eigenvalue of K_T crosses zero, + mode.
  B  imperfect path, ShellNLDKGQ and ASDShellQ4 (corotational): mode A as
     imperfection, peak moment and post-buckling (steady) moment.

    python tape_spring_bending.py --sense opp|eq [--L 200] [--size 2] [--amp 0.01]
                                  [--method A|B|AB] [--element ...]
Results: results/tape_<sense>_L<L>_h<size>.json (+ .npz with the path) and a log
of every step on stdout.
"""
import argparse
import json
import math
import sys
import time
from pathlib import Path

HERE = Path(__file__).resolve().parent
SK = HERE.parents[1] / '.claude' / 'skills'
for d in ('laminate-properties', 'shell-mesh', 'shell-bc-load', 'shell-buckling'):
    sys.path.insert(0, str(SK / d))
import numpy as np                         # noqa: E402
import openseespy.opensees as ops          # noqa: E402
import laminate_properties as lp           # noqa: E402
import shell_mesh as sm                    # noqa: E402
import shell_bc_load as bc                 # noqa: E402
import shell_buckling as sb                # noqa: E402

E, NU, R, ALPHA, T = 131000.0, 0.3, 13.3, 1.85, 0.1
D = E * T**3 / (12 * (1 - NU**2))
ALGORITHM = ['KrylovNewton']     # set by --algorithm
M_STEADY = {'opp': (1 + NU) * D * ALPHA, 'eq': (1 - NU) * D * ALPHA}


def build(L, size, element, sense, imperfection=None, amp=0.0):
    mesh = sm.ShellMesh(L, sm.CrossSection.arc(R, R * ALPHA), size)
    sb.build_shell(mesh, lp.Laminate.isotropic(E, NU, T), element, imperfection, amp)
    root, tip = sb.rigid_end(mesh, 'x0', E, T), sb.rigid_end(mesh, 'xL', E, T)
    ops.fix(root, 1, 1, 1, 1, 1, 1)
    ops.fix(tip, 0, 1, 0, 1, 0, 1)
    bc.point_load(tip, (0, 0, 0), (0, 1.0 if sense == 'opp' else -1.0, 0))
    return mesh, tip


def method_A(L, size, sense, dtheta, theta_max, n_coarse=8):
    """Stability scan (fresh model per evaluation): rotation theta at which
    the lowest eigenvalue of K_T (dead-load tip moment) crosses zero."""
    sgn = 1.0 if sense == 'opp' else -1.0

    def bld():
        _, tip = build(L, size, 'ShellNLDKGQ', sense)
        return {'type': 'disp', 'node': tip, 'dof': 5}
    t0 = time.perf_counter()
    r = sb.stability_scan(bld, sgn * dtheta, sgn * theta_max, n_coarse=n_coarse)
    r['time'] = time.perf_counter() - t0
    r['dofs'] = 6 * len(ops.getNodeTags())
    return r


def method_B(L, size, sense, element, mode, amp, dtheta, theta_max, arc_s=0.0, arc_steps=0):
    """Rotation-controlled path of the imperfect tape; if it stops (snap),
    optional arc-length continuation (ArcLength s, alpha = 0)."""
    mesh, tip = build(L, size, element, sense, mode, amp)
    sgn = 1.0 if sense == 'opp' else -1.0
    t0 = time.perf_counter()
    ctrl = {'type': 'disp', 'node': tip, 'dof': 5}
    h, peak, k = sb.imperfect_path(ctrl, sgn * dtheta, int(round(theta_max / dtheta)), verbose=False,
                                   algorithm=ALGORITHM[0])
    if arc_steps and abs(h[-1, 0]) < theta_max - 1e-9:
        h2, _, _ = sb.imperfect_path({'type': 'arc', 'node': tip, 'dof': 5, 'alpha': 0.0}, arc_s, arc_steps,
                                     verbose=True)
        h = np.vstack([h, h2[1:]])
        k = int(np.argmax(np.abs(h[:, 1])))
    return h, k, time.perf_counter() - t0


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument('--sense', choices=('opp', 'eq'), required=True)
    ap.add_argument('--L', type=float, default=200.0)
    ap.add_argument('--size', type=float, default=2.0)
    ap.add_argument('--dtheta', type=float, default=0.01, help='rotation step [rad]')
    ap.add_argument('--theta-max', type=float, default=0.6, help='method B end rotation [rad]')
    ap.add_argument('--amp', type=float, default=0.01, help='imperfection amplitude [mm] (0.1 t)')
    ap.add_argument('--arc-s', type=float, default=1.0, help='arc length after a snap (B)')
    ap.add_argument('--arc-steps', type=int, default=0, help='arc-length steps after a snap (B)')
    ap.add_argument('--method', default='AB')
    ap.add_argument('--algorithm', default='KrylovNewton', help='B: KrylovNewton | BFGS | Newton ...')
    ap.add_argument('--tag', default='', help='suffix of the results file name')
    ap.add_argument('--elements', default='ShellNLDKGQ,ASDShellQ4')
    a = ap.parse_args()
    ALGORITHM[0] = a.algorithm
    tag = f'tape_{a.sense}_L{a.L:g}_h{a.size:g}'
    out = dict(case=vars(a), D=D, M_steady=M_STEADY[a.sense])
    print(f'{tag}: D = {D:.4f} N mm, steady fold moment {M_STEADY[a.sense]:.3f} N mm')
    mode = None
    if 'A' in a.method:
        r = method_A(a.L, a.size, a.sense, a.dtheta, a.theta_max)
        out['A'] = dict(dofs=r['dofs'], time=r['time'], evaluations=r['evaluations'],
                        M_cr=None if r['load_factor'] is None else abs(r['load_factor']),
                        theta_cr=None if r['param'] is None else abs(r['param']))
        print(f'A: {r["dofs"]} DOFs, {r["time"]:.0f} s; critical moment '
              f'{out["A"]["M_cr"]} N mm at theta {out["A"]["theta_cr"]} rad', flush=True)
        if r['mode'] is not None:
            mode = r['mode']
            np.savez(HERE / 'results' / f'{tag}_modeA.npz', nodes=np.array(list(mode)),
                     vec=np.array(list(mode.values())))
    if 'B' in a.method:
        if mode is None and a.amp > 0:          # --amp 0: perfect geometry (limit points)
            f = np.load(HERE / 'results' / f'{tag}_modeA.npz')
            mode = {int(n): v for n, v in zip(f['nodes'], f['vec'])}
        for el in a.elements.split(','):
            h, k, dt = method_B(a.L, a.size, a.sense, el, mode, a.amp, a.dtheta, a.theta_max,
                                a.arc_s, a.arc_steps)
            M, th = np.abs(h[:, 1]), np.abs(h[:, 0])
            out[f'B_{el}'] = dict(time=dt, history=h.tolist(), M_peak=float(M[k]), theta_peak=float(th[k]),
                                  M_end=float(M[-1]), theta_end=float(th[-1]))
            print(f'B {el}: peak {M[k]:.3f} N mm at theta {th[k]:.4f} rad; last point theta {th[-1]:.3f}, '
                  f'M = {M[-1]:.3f} N mm (steady fold {M_STEADY[a.sense]:.3f}); {dt:.0f} s', flush=True)
    (HERE / 'results').mkdir(exist_ok=True)
    p = HERE / 'results' / f'{tag}{a.tag}.json'
    old = json.loads(p.read_text()) if p.exists() else {}
    old.update(out)
    p.write_text(json.dumps(old))


if __name__ == '__main__':
    main()
