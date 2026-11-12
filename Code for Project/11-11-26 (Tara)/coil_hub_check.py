"""
Hashin 2D check of a tape-spring flange coiled around a hub (2026-11-11, Tara).

Uses the failure-check skill's own functions (failure_check.coiling_check for
flattening only, failure_check.failure_index for flattening + hub bending).
failure_check.py's CLI only flattens the flange (k = [0, 1/r, 0]); coiling on a
hub of radius R_hub adds the longitudinal curvature k_xx = +-1/R_hub
(DOMAIN_KNOWLEDGE.md section 4). With N = 0, eps0 = -A^-1 B k (0 for a
symmetric layup). All four sign combinations (equal/opposite-sense coiling,
either face out) are checked; the largest F governs.

Usage: python coil_hub_check.py lam.json --r 20 --hub 40 [--midsurface]
  --midsurface: coil radius of the mid-surface = R_hub + h/2 (default: R_hub, conservative)
Units: N, mm, MPa.
"""
import argparse
import sys
from pathlib import Path

import numpy as np

SKILLS = Path(__file__).resolve().parents[2] / '.claude' / 'skills'
for d in ('failure-check', 'laminate-properties', 'shell-bc-load', 'shell-mesh'):
    sys.path.insert(0, str(SKILLS / d))
import failure_check as fc       # noqa: E402
import laminate_properties as lp  # noqa: E402

ap = argparse.ArgumentParser()
ap.add_argument('laminate')
ap.add_argument('--r', type=float, required=True, help='transverse (arc) radius of the flange [mm]')
ap.add_argument('--hub', type=float, required=True, help='hub radius [mm]')
ap.add_argument('--midsurface', action='store_true')
ap.add_argument('--S23', type=float)
a = ap.parse_args()

lam = lp.Laminate.load(a.laminate)
h = sum(p['t'] for p in lam.plies) if 't' in lam.plies[0] else None
Rc = a.hub + (h / 2 if (a.midsurface and h) else 0.0)
K = lam.abd()

# 1) flattening only (the skill's own coiling check)
out = fc.coiling_check(lam, a.r, None, 'hashin', a.S23)
print(fc.coiling_report(lam, a.r, 'tape-spring arc radius', out, 'hashin'))
F_flat = out[0][0].max()

# 2) flattening + bending onto the hub, 4 sign combinations
print(f'\nCoiling on a hub: R_hub = {a.hub:g} mm, coil radius used {Rc:g} mm; flange r = {a.r:g} mm')
best = None
for sx in (1, -1):
    for sy in (1, -1):
        k = np.array([sx / Rc, sy / a.r, 0.0])
        e0 = -np.linalg.solve(K[:3, :3], K[:3, 3:] @ k)
        E = np.zeros((1, 1, 8))
        E[0, 0, :3], E[0, 0, 3:6] = e0, k
        F, mode, R, sig12, _, z = fc.failure_index(E, lam, None, 'gauss', 'hashin', a.S23)
        _, _, p, iz = np.unravel_index(F.argmax(), F.shape)
        s1, s2, t12 = sig12[0, 0, p, iz]
        sense = 'opposite-sense' if sx * sy > 0 else 'equal-sense'
        print(f'  k = [{k[0]:+.4f}, {k[1]:+.4f}, 0] 1/mm ({sense} combination): max F = {F.max():.4g} '
              f'({fc.MODES[mode.flat[F.argmax()]]}), R = {R.flat[F.argmax()]:.4g}, ply {p + 1} {fc.Z_POINTS[iz]}: '
              f's1 {s1:.4g}, s2 {s2:.4g}, t12 {t12:.4g} MPa')
        if best is None or F.max() > best[0]:
            best = (F.max(), k, fc.MODES[mode.flat[F.argmax()]], R.flat[F.argmax()], p + 1, fc.Z_POINTS[iz], s1, s2, t12)
F_hub = max(best[0], F_flat)
print(f'F_flat = {F_flat:.4g}; F_hub (flatten + hub, worst of 4) = {best[0]:.4g} '
      f'({best[2]}, strength ratio R = {best[3]:.4g}, ply {best[4]} {best[5]}, k = {best[1].round(4).tolist()})')
print(f'COILING GOVERNING F = {F_hub:.4g} -> {"FAILS (F >= 1)" if F_hub >= 1 else "no failure predicted"}')
