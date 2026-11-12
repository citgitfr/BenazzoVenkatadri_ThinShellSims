"""Small matplotlib figures for the [0/0/0] tape-spring report (11-11-26, Tara).
Run with the shells env: python report_figures.py   -> report_figs/*.png"""
import re
from pathlib import Path

import matplotlib
matplotlib.use('Agg')
import matplotlib.pyplot as plt
import numpy as np

HERE = Path(__file__).parent
OUT = HERE / 'report_figs'
OUT.mkdir(exist_ok=True)

# 1) cross-section
R, th = 20.0, np.pi
phi = np.linspace(-th / 2, th / 2, 200)
y, z = R * np.sin(phi), R * (1 - np.cos(phi))
zc = R * (1 - 2 / np.pi)                      # centroid of a semicircular arc
fig, ax = plt.subplots(figsize=(4.2, 2.8))
ax.plot(y, z, 'k', lw=2.5)
ax.plot([0], [R], 'k+', ms=8)
ax.annotate('', xy=(R * np.sin(0.6), R - R * np.cos(0.6) + 0), xytext=(0, R),
            arrowprops=dict(arrowstyle='->', color='0.4'))
ax.text(4, R - 3.5, 'R = 20 mm', color='0.3', fontsize=8)
ax.axhline(zc, color='tab:blue', ls='--', lw=0.8)
ax.text(-21, zc + 0.8, f'centroid z = {zc:.2f} mm', color='tab:blue', fontsize=8)
ax.text(-8, -3.5, 'crown (compression)', fontsize=8)
ax.text(10, 20.8, 'edge (tension)', fontsize=8)
ax.set_aspect('equal'); ax.set_xlabel('y [mm]'); ax.set_ylabel('z [mm]')
ax.set_xlim(-24, 24); ax.set_ylim(-6, 24)
ax.set_title('Cross-section, 180 deg arc, h = 0.105 mm', fontsize=9)
fig.tight_layout(); fig.savefig(OUT / 'section.png', dpi=200); plt.close(fig)

# 2) opposite-sense moment-rotation check (shell-buckling phase B log)
log = (HERE / 'results' / 'ts_L001_opp_moment_buckling_B.log').read_text()
pts = [(float(a), float(b)) for a, b in re.findall(r'param\s+([\d.]+), load factor\s+([\d.]+)', log)]
th_, M = np.array([[0, 0]] + pts).T
EI = 3.962e7
fig, ax = plt.subplots(figsize=(4.6, 3.0))
ax.plot(th_, M, 'o-', label='OpenSeesPy (shell-buckling, phase B)')
tt = np.linspace(0, th_.max() * 1.05, 10)
ax.plot(tt, EI / 200 * tt, 'k--', lw=0.8, label='linear EI/L')
ax.axhline(1000, color='tab:red', lw=1)
ax.text(0.0075, 1100, 'root moment of 1 N tip load = 1000 N mm', color='tab:red', fontsize=8)
ax.set_xlabel('end rotation [rad] (L = 200 mm segment)'); ax.set_ylabel('moment [N mm]')
ax.legend(fontsize=7, loc='upper left'); ax.grid(alpha=0.3); ax.xaxis.set_major_locator(plt.MaxNLocator(5))
ax.set_title('Opposite-sense moment: still rising when stopped', fontsize=9)
fig.tight_layout(); fig.savefig(OUT / 'moment_rotation.png', dpi=200); plt.close(fig)

# 3) coiling Hashin index for the four curvature sign combinations
txt = (HERE / 'results' / 'coil_hub_40mm.txt').read_text()
rows = re.findall(r'k = \[([+-][\d.]+), ([+-][\d.]+), 0\].*?max F = ([\d.e+-]+)', txt)
Fflat = float(re.search(r'F_flat = ([\d.e+-]+)', txt).group(1))
labels = [f'k_x {float(a):+.3f}\nk_y {float(b):+.3f}' for a, b, _ in rows] + ['flatten\nonly']
vals = [float(f) for _, _, f in rows] + [Fflat]
fig, ax = plt.subplots(figsize=(4.6, 3.0))
bars = ax.bar(labels, vals, color=['tab:orange' if v == max(vals) else 'tab:gray' for v in vals])
for b_, v in zip(bars, vals):
    ax.text(b_.get_x() + b_.get_width() / 2, v + 0.005, f'{v:.3f}', ha='center', fontsize=8)
ax.set_ylabel('max Hashin F'); ax.set_ylim(0, 0.25); ax.tick_params(axis='x', labelsize=7)
ax.set_title('Coiling on R_hub = 40 mm (failure at F = 1)', fontsize=9)
fig.tight_layout(); fig.savefig(OUT / 'coiling.png', dpi=200); plt.close(fig)
print('saved', *sorted(p.name for p in OUT.glob('*.png')))
