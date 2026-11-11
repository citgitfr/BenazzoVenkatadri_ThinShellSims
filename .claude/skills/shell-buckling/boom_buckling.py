"""
Buckling strength of a thin-shell boom from a case file (shell-buckling skill).

    python boom_buckling.py case.json [--out DIR] [--only A|B]

Steps (see SKILL.md for why):
  A  stability scan, ShellNLDKGQ: the end rotation / load at which the
     lowest eigenvalue of the tangent stiffness crosses zero, and the
     buckling mode. Estimate only: exact for flat plates and out-of-plane
     (local) modes, too high for global modes of curved sections (tape
     column: +7% flexural-torsional, +31% flexural). Isotropic or 0/90
     laminates (ShellNLDKGQ has no ply orientation); skipped otherwise.
  B  imperfect path, ASDShellQ4 corotational (complete nonlinear residual,
     any laminate): the mode of A (or a mode file) scaled to the imperfection
     amplitude, then rotation/end-shortening control (or load control); the
     peak load is the buckling strength. For a stable post-buckling path
     (columns) the Southwell estimate is also reported.

Case file:
{
 "name": "tape_opp_bending",
 "laminate": {"isotropic": {"E": 131000, "nu": 0.3, "t": 0.1}},   # or {"catalog": "L024", "layup": "[0/90]s"}
 "geometry": {"L": 200, "section": {"type": "arc", "R": 13.3, "b": 24.605}, "size": 3},
 "load": {"type": "bending", "axis": "y", "sign": 1},             # tip moment about y (+1: tip turns down)
       # or {"type": "compression", "ends": "pinned" | "clamped" | "free_tip"}
 "A": {"step": 0.005, "max": 0.3, "n_coarse": 8},                 # path parameter: rotation [rad] / shortening [mm]
 "B": {"step": 0.005, "max": 0.3, "amplitude": 0.01, "control": "disp"},   # or "load" (step, max = load factor)
 "mode_file": null
}
Supports: root rigid end clamped; tip rigid end (sb.rigid_end, corotational
beam spokes). Bending about y: tip free in ux, uz, ry (Leclerc & Pellegrino
2020 style); about z: free in ux, uy, rz. Compression: tip free in ux only
(clamped) or also in the two bending rotations (pinned; root likewise).
Outputs <out>/<name>.json (critical values, histories) and <name>.png.
Units: N, mm, MPa.
"""
import argparse
import json
import os
import sys
import time
from pathlib import Path

for _v in ('OMP_NUM_THREADS', 'OPENBLAS_NUM_THREADS', 'MKL_NUM_THREADS'):   # one core per process: the
    os.environ.setdefault(_v, '1')                                           # parallel scan sets the CPU count
import numpy as np
import openseespy.opensees as ops

_HERE = Path(__file__).resolve().parent
for _d in ('laminate-properties', 'shell-mesh', 'shell-bc-load'):
    sys.path.insert(0, str(_HERE.parent / _d))
sys.path.insert(0, str(_HERE))
import laminate_properties as lp   # noqa: E402
import shell_mesh as sm            # noqa: E402
import shell_buckling as sb        # noqa: E402


def laminate_of(spec):
    if 'isotropic' in spec:
        i = spec['isotropic']
        return lp.Laminate.isotropic(i['E'], i['nu'], i['t'])
    return lp.laminate_from_spec(spec)


def build_case(case, element, imperfection=None, amplitude=0.0):
    """Model of the case; returns (mesh, control dict for the path)."""
    lam = laminate_of(case['laminate'])
    g = case['geometry']
    mesh = sm.ShellMesh(g['L'], sm.CrossSection.from_spec(g['section']), g['size'])
    sb.build_shell(mesh, lam, element, imperfection, amplitude)
    E = max(m['E1'] for m in lam.materials)
    root, tip = sb.rigid_end(mesh, 'x0', E, lam.h), sb.rigid_end(mesh, 'xL', E, lam.h)
    ld = case['load']
    ops.timeSeries('Linear', 1)
    ops.pattern('Plain', 1, 1)
    if ld['type'] == 'bending':
        ops.fix(root, 1, 1, 1, 1, 1, 1)
        if ld.get('axis', 'y') == 'y':
            ops.fix(tip, 0, 1, 0, 1, 0, 1)
            ops.load(tip, 0, 0, 0, 0, ld.get('sign', 1.0), 0)
            dof = 5
        else:
            ops.fix(tip, 0, 0, 1, 1, 1, 0)
            ops.load(tip, 0, 0, 0, 0, 0, ld.get('sign', 1.0))
            dof = 6
    elif ld['type'] == 'compression' and ld.get('ends') == 'free_tip':
        # Palmeri & Laurenzi (2024): root clamped; tip reference point with only the rotation about the
        # boom axis fixed (free to translate laterally and to rotate in bending). Added 11/10/26 (Tara).
        ops.fix(root, 1, 1, 1, 1, 1, 1)
        ops.fix(tip, 0, 0, 0, 1, 0, 0)
        ops.load(tip, -1.0, 0, 0, 0, 0, 0)
        dof = 1
    elif ld['type'] == 'compression':
        pinned = ld.get('ends', 'clamped') == 'pinned'
        ops.fix(root, 1, 1, 1, 1, *((0, 0) if pinned else (1, 1)))
        ops.fix(tip, 0, 1, 1, 1, *((0, 0) if pinned else (1, 1)))
        ops.load(tip, -1.0, 0, 0, 0, 0, 0)
        dof = 1
    else:
        raise ValueError(f'unknown load type {ld["type"]!r}')
    mesh.lam = lam
    return mesh, {'type': 'disp', 'node': tip, 'dof': dof}


def _sign(x):
    return -1.0 if x < 0 else 1.0


MAX_WORKERS = 16        # CPU cap of the parallel scan on the shared server (user decision, 2026-11-08)


def _solver(c):
    """Solution-control keys of an A or B block (defaults = the original serial settings)."""
    return dict(tol=c.get('tol', 1e-8), max_iter=c.get('max_iter', 100), max_cuts=c.get('max_cuts', 6))


FINE_FROM = 0.7     # B: base-size steps from this fraction of the step-A critical parameter on (peak resolution)


def _scan_worker(args):
    """One step-A scan point in its own process (own OpenSees domain)."""
    case, p, step, sv, cwd = args
    os.chdir(cwd)
    ev, mode = sb.scan_point(lambda: build_case(case, 'ShellNLDKGQ')[1], p, step, want_mode=True, **sv)
    ops.wipe()
    return ev, mode


def _evaluate_many(case, step, sv, workers):
    """evaluate_many for sb.parallel_stability_scan: the points run concurrently in a process pool; once
    the first unstable point (mu_min < 0 or failed march) is known and every point before it is done,
    the remaining points are irrelevant and the pool is terminated."""
    import multiprocessing as mp

    def run(ps):
        n = min(workers, len(ps))
        out = [None] * len(ps)
        ctx = mp.get_context('spawn')
        with ctx.Pool(n) as pool:
            jobs = [pool.apply_async(_scan_worker, ((case, p, step, sv, os.getcwd()),)) for p in ps]
            pending = set(range(len(ps)))
            while pending:
                for k in sorted(pending):
                    if jobs[k].ready():
                        out[k] = jobs[k].get()
                        pending.discard(k)
                first = next((k for k, r in enumerate(out) if r is not None and (r[0] is None or r[0][2] < 0)),
                             None)
                if first is not None and all(out[j] is not None for j in range(first)):
                    break                                  # bracket decided: drop the far points
                time.sleep(0.5)
            pool.terminate()
        return [r if r is not None else (None, None) for r in out]
    return run


def run(case, out_dir, only=None):
    name = case.get('name', 'boom')
    out_dir = Path(out_dir)
    out_dir.mkdir(parents=True, exist_ok=True)
    res = dict(case=case)
    ld = case['load']
    # path direction: bending -> sign of the moment; compression -> shortening (tip ux < 0)
    sgn = _sign(ld.get('sign', 1.0)) if ld['type'] == 'bending' else -1.0
    mode = None
    lam = laminate_of(case['laminate'])
    nld_ok = all(abs(th / 90 - round(th / 90)) < 1e-9 for th in lam.angles)
    if only != 'B' and 'A' in case and nld_ok:
        a = case['A']
        t0 = time.perf_counter()
        workers = min(int(a.get('workers', 1)), MAX_WORKERS)
        if workers > 1:
            sv = dict(_solver(a), max_step=a.get('max_step') and sgn * a['max_step'])
            r = sb.parallel_stability_scan(_evaluate_many(case, sgn * a['step'], sv, workers),
                                           sgn * a['max'], n_coarse=a.get('n_coarse', 8),
                                           n_rounds=a.get('n_rounds', 2), n_points=max(workers - 1, 1),
                                           enough=a.get('enough'))
        else:
            r = sb.stability_scan(lambda: build_case(case, 'ShellNLDKGQ')[1], sgn * a['step'], sgn * a['max'],
                                  n_coarse=a.get('n_coarse', 8), n_refine=a.get('n_refine', 5), **_solver(a))
        res['A'] = dict(critical_load=None if r['load_factor'] is None else abs(r['load_factor']),
                        critical_param=None if r['param'] is None else abs(r['param']),
                        evaluations=r['evaluations'], time=time.perf_counter() - t0, workers=workers)
        mode = r['mode']
        if r.get('bracket_only'):      # stable at least to critical_load; first unstable/failed point above
            res['A'].update(lower_bound=True, bracket=[abs(x) if x == x else None for x in r['bracket_only']])
            print(f'A (ShellNLDKGQ stability scan): STABLE to {res["A"]["critical_load"]} at '
                  f'{res["A"]["critical_param"]} (lower bound; crossing in bracket {res["A"]["bracket"]}); '
                  f'{res["A"]["time"]:.0f} s', flush=True)
        else:
            print(f'A (ShellNLDKGQ stability scan): critical {res["A"]["critical_load"]} at '
                  f'{res["A"]["critical_param"]}; {res["A"]["time"]:.0f} s', flush=True)
    elif 'A' in case and not nld_ok:
        print('A skipped: off-axis plies (ShellNLDKGQ takes 0/90 only)')
    if case.get('mode_file'):
        f = np.load(case['mode_file'])
        mode = {int(n): v for n, v in zip(f['nodes'], f['vec'])}
    if mode is not None:
        np.savez(out_dir / f'{name}_mode.npz', nodes=np.array(list(mode)), vec=np.array(list(mode.values())))
    if only != 'A' and 'B' in case:
        b = case['B']
        amp = b.get('amplitude', 0.1 * lam.h) if mode is not None else 0.0
        t0 = time.perf_counter()
        mesh, ctrl = build_case(case, 'ASDShellQ4', mode, amp)
        if b.get('control', 'disp') == 'load':
            ctrl = {'type': 'load'}
            h, peak, k = sb.imperfect_path(ctrl, b['step'], int(round(b['max'] / b['step'])),
                                           record=lambda: [ops.nodeDisp(ctrl.get('node', mesh.rigid['xL']), 1)],
                                           **_solver(b))
        else:
            ad = {}
            if b.get('max_step'):                            # adaptive steps; fine again near the A crossing
                a_crit = (res.get('A') or {}).get('critical_param') or (case.get('A_known') or {}).get(
                    'critical_param')
                ad = dict(max_step=sgn * b['max_step'], max_param=sgn * b['max'],
                          fine_from=sgn * FINE_FROM * a_crit if a_crit else None)
            if case.get('B_cutoff'):                         # threshold requirement: stop once it is passed
                ad['max_load'] = case['B_cutoff']
            if case.get('B_pass'):                           # passed the requirement and crawling: stop
                ad['pass_load'] = case['B_pass']
            h, peak, k = sb.imperfect_path(ctrl, sgn * b['step'], int(round(b['max'] / b['step'])), **_solver(b),
                                           **ad)
        res['B'] = dict(peak_load=float(peak), param_at_peak=float(abs(h[k, 0])), amplitude=amp,
                        imperfection='mode A' if mode is not None else 'none',
                        history=h.tolist(), time=time.perf_counter() - t0,
                        peak_is_last_point=bool(k == len(h) - 1), stop=sb.LAST_PATH_STOP)
        print(f'B (ASDShellQ4 imperfect path, amplitude {amp:g} mm): peak {peak:.5g} at '
              f'{abs(h[k, 0]):.5g}{" (last point: path stopped or still rising)" if k == len(h) - 1 else ""}; '
              f'{res["B"]["time"]:.0f} s', flush=True)
        plot(res, out_dir / f'{name}.png', case)
    (out_dir / f'{name}.json').write_text(json.dumps(res, indent=1, default=float))
    print(f'saved {out_dir / (name + ".json")}')
    return res


def plot(res, path, case):
    import matplotlib
    matplotlib.use('Agg')
    import matplotlib.pyplot as plt
    h = np.array(res['B']['history'])
    bending = case['load']['type'] == 'bending'
    fig, ax = plt.subplots(figsize=(6, 4))
    ax.plot(np.abs(h[:, 0]), np.abs(h[:, 1]), '-', color='#2a6fb0', label='B: ASDShellQ4, imperfect')
    if res.get('A') and res['A']['critical_load']:
        ax.plot(res['A']['critical_param'], res['A']['critical_load'], 'o', color='#c0392b',
                label='A: K_T eigenvalue = 0 (ShellNLDKGQ)')
    ax.set_xlabel('end rotation [rad]' if bending else 'end shortening [mm]')
    ax.set_ylabel('end moment [N mm]' if bending else 'axial load [N]')
    ax.set_title(case.get('name', ''))
    ax.legend(frameon=False)
    fig.tight_layout()
    fig.savefig(path, dpi=150)
    plt.close(fig)


def main():
    ap = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument('case')
    ap.add_argument('--out', default=None)
    ap.add_argument('--only', choices=('A', 'B'), default=None)
    a = ap.parse_args()
    case = json.loads(Path(a.case).read_text())
    run(case, a.out or Path(a.case).parent / 'results', a.only)


if __name__ == '__main__':
    main()
