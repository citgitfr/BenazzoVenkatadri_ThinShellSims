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
       # or {"type": "compression", "ends": "pinned" | "clamped"}
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
import sys
import time
from pathlib import Path

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
        r = sb.stability_scan(lambda: build_case(case, 'ShellNLDKGQ')[1], sgn * a['step'], sgn * a['max'],
                              n_coarse=a.get('n_coarse', 8), n_refine=a.get('n_refine', 5))
        res['A'] = dict(critical_load=None if r['load_factor'] is None else abs(r['load_factor']),
                        critical_param=None if r['param'] is None else abs(r['param']),
                        evaluations=r['evaluations'], time=time.perf_counter() - t0)
        mode = r['mode']
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
                                           record=lambda: [ops.nodeDisp(ctrl.get('node', mesh.rigid['xL']), 1)])
        else:
            h, peak, k = sb.imperfect_path(ctrl, sgn * b['step'], int(round(b['max'] / b['step'])))
        res['B'] = dict(peak_load=float(peak), param_at_peak=float(abs(h[k, 0])), amplitude=amp,
                        imperfection='mode A' if mode is not None else 'none',
                        history=h.tolist(), time=time.perf_counter() - t0,
                        peak_is_last_point=bool(k == len(h) - 1))
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
