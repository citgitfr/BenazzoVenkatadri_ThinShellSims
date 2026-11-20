"""Fit a closed-form lateral-bending (axis z) local-buckling moment to the segment-LBA calibration set
(lba_calibration.csv): M = N_cr x Izz1 / c_y, N_cr = K x D11^a x D22^b x A22s^c x R^-e (A22s = 1/a22,
the membrane hoop stiffness), R = largest or smallest arc radius. Least squares in log space; prints the
exponents, K and the scatter (FE/fit) for each candidate model. 11-17-26 (Tara)."""
import csv
import itertools
import sys
from pathlib import Path

import numpy as np

HERE = Path(__file__).resolve().parent
sys.path.insert(0, str(HERE.parents[3] / '.claude' / 'orchestrator' / 'tools'))
import design_screen as ds  # noqa: E402

rows = [r for r in csv.DictReader(open(HERE / 'lba_calibration.csv')) if r['M_lba']]
mats, _ = ds.materials({})
lays = ds.layups({})
geos = ds.geometries({'section_classes': ['OM', 'CO'],
                      'geometries': {'allow': sorted({r['geometry'] for r in rows})}})
F = []
for r in rows:
    Lm = ds.Lam(mats[r['material']], lays[r['layup']])
    g = geos[r['geometry']]
    K = Lm.lam.abd()
    a = np.linalg.inv(K[:3, :3])
    pts = np.vstack([P for P, m in g['parts']])
    cy = np.abs(pts[:, 0] - g['I1']['yc']).max()
    radii = [abs(x) for x, _ in g['g']['A'] + g['g'].get('B', [])]
    geomf = g['I1']['Izz'] / cy                       # section modulus per unit thickness
    F.append(dict(r=r, M=float(r['M_lba']), D11=K[3, 3], D22=K[4, 4], A22s=1 / a[1, 1], A11s=1 / a[0, 0],
                  Rmax=max(radii), Rmin=min(radii), geomf=geomf))
y = np.log([f['M'] / f['geomf'] for f in F])            # log N_cr
best = None
for Rk, feats in itertools.product(('Rmax', 'Rmin'), [('D11', 'D22', 'A22s'), ('D11', 'A22s'), ('D22', 'A22s'),
                                                    ('D11', 'D22'), ('D22', 'A11s')]):
    X = np.column_stack([np.ones(len(F))] + [np.log([f[k] for f in F]) for k in feats] +
                        [np.log([f[Rk] for f in F])])
    c, *_ = np.linalg.lstsq(X, y, rcond=None)
    ratio = np.exp(y - X @ c)
    s = f'{Rk:4s} {"+".join(feats):14s} exps {np.round(c[1:], 3)} K {np.exp(c[0]):.4g}: FE/fit min {ratio.min():.3f} ' \
        f'max {ratio.max():.3f} rms {np.sqrt(np.mean(np.log(ratio)**2)):.3f}'
    print(s)
    if best is None or ratio.max() / ratio.min() < best[0]:
        best = (ratio.max() / ratio.min(), s, c, feats, Rk, ratio)
print('\nBEST:', best[1])
for f, q in zip(F, best[5]):
    print(f"  {f['r']['material']} {f['r']['layup']} {f['r']['geometry']}: LBA {f['M']:.0f}, FE/fit {q:.3f}")
