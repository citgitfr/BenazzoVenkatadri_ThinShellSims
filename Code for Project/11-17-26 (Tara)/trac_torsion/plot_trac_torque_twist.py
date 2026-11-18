"""Torque vs tip twist of the R001 aluminum TRAC boom (root clamped, rigid tip), T up to 1 N*mm:
OpenSeesPy nonlinear (corotational ASDShellQ4, 5 mm), Abaqus nonlinear (S4R, nlgeom, 5 mm),
linear FE (1.25 mm mesh) and the Wagner hand estimate (trac_wagner.py).

  python plot_trac_torque_twist.py   ->  trac_torque_twist.png
"""
from pathlib import Path

import matplotlib
matplotlib.use('Agg')
import matplotlib.pyplot as plt
import numpy as np

HERE = Path(__file__).resolve().parent
ops_h = np.loadtxt(HERE / 'R001_Al_torsion_nl_rigid_rotctl_5mm_history.csv', delimiter=',', skiprows=1)
abq = np.loadtxt(HERE / 'abaqus_nl' / 'abaqus_torque_twist.csv', delimiter=',', skiprows=1)
wag = np.loadtxt(HERE / 'trac_wagner.csv', delimiter=',', skiprows=1)
phi_lin_1 = 0.86180            # linear FE, rigid tip, 1.25 mm mesh, T = 1 N mm

INK, MUTED, GRID = '#1f1f1e', '#6b6a64', '#e4e3df'
plt.rcParams.update({'font.size': 9, 'axes.edgecolor': MUTED, 'axes.labelcolor': INK, 'xtick.color': MUTED,
                     'ytick.color': MUTED, 'axes.spines.top': False, 'axes.spines.right': False})
fig, ax = plt.subplots(figsize=(7, 4.6))
ax.plot(ops_h[:, 1], ops_h[:, 0], color='#2a78d6', lw=2, marker='o', ms=4, label='OpenSeesPy nonlinear (ASDShellQ4 corot., 5 mm)')
ax.plot(abq[:, 1], abq[:, 0], color='#eb6834', lw=2, label='Abaqus nonlinear (S4R, nlgeom, 5 mm)')
ax.plot([0, phi_lin_1], [0, 1], color=MUTED, lw=1.2, ls='--', label='Linear FE (1.25 mm)')
k = wag[:, 2] <= 1.05
ax.plot(wag[k, 0], wag[k, 2], color='#1baf7a', lw=1.5, ls=':', label='Wagner estimate (uniform twist rate, L_eff)')
for x, lab, dy in ((ops_h[-1, 1], f'{ops_h[-1, 1]:.3f} rad', 10), (abq[-1, 1], f'{abq[-1, 1]:.3f} rad', -16),
                   (phi_lin_1, f'{phi_lin_1:.3f} rad', -16)):
    ax.annotate(lab, (x, 1.0), xytext=(-24 if dy > 0 else 26, dy), textcoords='offset points', ha='center',
                fontsize=8, color=INK)
ax.axhline(1.0, color=GRID, lw=0.8, zorder=0)
ax.set_xlabel('tip twist $\\phi_L$ [rad]')
ax.set_ylabel('torque T [N mm]')
ax.set_xlim(0, 0.95)
ax.set_ylim(0, 1.12)
ax.grid(color=GRID, lw=0.8)
ax.legend(frameon=False, fontsize=8, loc='upper left')
ax.set_title('TRAC R001, aluminum t = 0.1 mm, L = 1 m: torque vs tip twist', loc='left', color=INK, fontsize=10)
fig.tight_layout()
fig.savefig(HERE / 'trac_torque_twist.png', dpi=170, facecolor='white')
print('wrote', HERE / 'trac_torque_twist.png')
