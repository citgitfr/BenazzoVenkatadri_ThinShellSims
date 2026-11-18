"""Twist phi(x) of the M008 omega and R001 TRAC aluminum booms (OpenSeesPy, linear,
T = 1 N*mm at x = L = 1000 mm, root clamped), from the twist_profile.csv files.

  python plot_twist_omega_vs_trac.py   ->  twist_omega_vs_trac.png

(a) twist on a log scale (the two booms differ by ~5 orders of magnitude);
(b) twist normalized by its tip value, which shows the shape: linear for the closed
    omega, warping-restrained boundary layers (1/k = 115 mm) for the open TRAC.
"""
import csv
from collections import defaultdict
from pathlib import Path

import matplotlib
matplotlib.use('Agg')
import matplotlib.pyplot as plt
import numpy as np

HERE = Path(__file__).resolve().parent
data = defaultdict(lambda: ([], []))
for f in (HERE / 'omega_torsion' / 'twist_profile.csv', HERE / 'trac_torsion' / 'trac_twist_profile.csv'):
    with open(f) as fh:
        for r in csv.DictReader(fh):
            data[r['run']][0].append(float(r['x_mm']))
            data[r['run']][1].append(float(r['phi_rad']))

SERIES = [  # (run, label, colour)  - converged meshes, categorical slots 1-3
    ('M008_Al_torsion_2p5mm', 'Omega M008 (closed), rigid tip', '#2a78d6'),
    ('R001_Al_torsion_rigid_1p25mm', 'TRAC R001 (open), rigid tip', '#eb6834'),
    ('R001_Al_torsion_edge_1p25mm', 'TRAC R001 (open), torque on tip edge', '#1baf7a'),
]
INK, MUTED, GRID = '#1f1f1e', '#6b6a64', '#e4e3df'
plt.rcParams.update({'font.size': 9, 'axes.edgecolor': MUTED, 'axes.labelcolor': INK,
                     'xtick.color': MUTED, 'ytick.color': MUTED, 'axes.spines.top': False,
                     'axes.spines.right': False})

fig, (a, b) = plt.subplots(1, 2, figsize=(10, 4.2))
for run, lab, col in SERIES:
    x, p = map(np.asarray, data[run])
    k = x > 0
    a.semilogy(x[k], p[k], color=col, lw=2, label=lab)
    b.plot(x, p / p[-1], color=col, lw=2, label=lab)
    a.annotate(f'{p[-1]:.3g} rad', (x[-1], p[-1]), xytext=(-4, 6 if 'rigid' in run else -12),
               textcoords='offset points', ha='right', color=INK, fontsize=8)

a.set_title('(a) Twist along the boom', loc='left', color=INK)
a.set_xlabel('x [mm]')
a.set_ylabel(r'twist $\phi$ [rad]  (log scale)')
b.set_title(r'(b) Shape: twist / tip twist', loc='left', color=INK)
b.set_xlabel('x [mm]')
b.set_ylabel(r'$\phi(x)\,/\,\phi(L)$')
for ax in (a, b):
    ax.grid(color=GRID, lw=0.8, which='major')
    ax.set_xlim(0, 1000)
b.set_ylim(0, 1.02)
handles, labels = a.get_legend_handles_labels()
fig.legend(handles, labels, loc='lower center', ncol=3, frameon=False, fontsize=8.5)
fig.suptitle('Aluminum booms, t = 0.1 mm, L = 1 m, root clamped, T = 1 N mm at the tip (OpenSeesPy, linear)',
             color=INK, fontsize=10)
fig.tight_layout(rect=(0, 0.07, 1, 0.95))
out = HERE / 'twist_omega_vs_trac.png'
fig.savefig(out, dpi=170, facecolor='white')
print('wrote', out)
