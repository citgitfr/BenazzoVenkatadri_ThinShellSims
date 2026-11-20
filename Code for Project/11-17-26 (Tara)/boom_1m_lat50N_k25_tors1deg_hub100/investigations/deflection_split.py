"""Split the FE deflection profile of a cantilever (tip load along z) into a bending part (Euler-Bernoulli,
w_b = P x^2 (3L - x) / (6 EI)) and a shear part (w_s = P x / kGA) by least squares on the section-mean w(x).
Usage: python deflection_split.py <results.npz> [P] [dir y|z]
Investigation of the it001 sanity flag (FE/beam 0.585), 11-17-26 (Tara)."""
import json
import sys

import numpy as np

r = np.load(sys.argv[1], allow_pickle=True)
P = float(sys.argv[2]) if len(sys.argv) > 2 else 25.0
k = {'y': 1, 'z': 2}[sys.argv[3] if len(sys.argv) > 3 else 'z']
meta = json.loads(str(r['meta']))
L = float(meta['L'])
X, U = r['points'], r['disp']
tip = int(meta['rigid']['xL'])
keep = r['node_tags'] != tip
x, w = X[keep, 0], U[keep, k]
xs = np.unique(np.round(x, 6))
wm = np.array([w[np.isclose(x, xi)].mean() for xi in xs])
A = np.stack([xs**2 * (3 * L - xs) / 6, xs], axis=1)      # unknowns: P/EI, P/kGA
(c_b, c_s), *_ = np.linalg.lstsq(A, wm, rcond=None)
fit = A @ [c_b, c_s]
wb, ws = c_b * L**3 / 3, c_s * L
print(f'tip deflection (mean of section) {wm[-1]:.6g} mm; fit residual max {np.abs(fit - wm).max():.3g} mm')
print(f'bending part {wb:.6g} mm -> EI_FE {abs(P / c_b):.6g} N mm^2; shear part {ws:.6g} mm -> kGA_FE '
      f'{abs(P / c_s) if c_s else float("inf"):.6g} N; shear share {ws / (wb + ws):.3f}')
print(f'stiffness from bending part only {abs(P / wb):.6g} N/mm; total {abs(P / wm[-1]):.6g} N/mm')
