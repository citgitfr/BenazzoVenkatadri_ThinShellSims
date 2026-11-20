"""Deformed-boom pictures of iteration 7 (L006 [45/0/0/45] C008, the best design) for its lateral-bending
buckling case (user request 2026-11-18). The study's buckling path B saves only its load-rotation history
and the seed mode, not the deformed field, so:
  1. LINEAR solve of the design's own model (iteration 7 case.json: 4.5 mm mesh, clamped root, rigid tip)
     under the end moment where path B stopped (51,013.9 N mm about +z, the lateral bending of the
     buckling case). Path B stayed linear up to there (13,352 vs 13,386 N mm/rad initially), so this is the
     pre-buckling deformed shape; it does NOT include the growth of the 0.1 t imperfection near the limit.
     Drawn with shell-visualize (curvature + Hashin panels).
  2. The buckling mode used as the imperfection seed (segment LBA, 0/90 surrogate shape, tiled along x),
     drawn on the same mesh, coloured by |mode|.
Usage: python it007_buckling_plots.py   (writes into ./it007_buckling_plots/)"""
import json
import subprocess
import sys
from pathlib import Path

import numpy as np

HERE = Path(__file__).resolve().parent
STUDY = HERE.parent
REPO = HERE.parents[3]
SK = REPO / '.claude' / 'skills'
PY = sys.executable
IT = STUDY / 'iterations' / 'it007'
OUT = HERE / 'it007_buckling_plots'
OUT.mkdir(exist_ok=True)
M_STOP = 51013.9                                   # path B: last converged end moment (cutoff passed), N mm

# 1. linear solve at the cutoff moment
case = json.loads((IT / 'case.json').read_text())
case['name'] = 'it007_lateral_moment_51014'
case['laminate'] = {'json': str(IT / 'lam.json')}
case['loads'] = [{'node': {'rigid': 'xL'}, 'force': [0.0, 0.0, 0.0], 'moment': [0.0, 0.0, M_STOP]}]
cf = OUT / 'case_lateral_moment.json'
cf.write_text(json.dumps(case, indent=1))
npz = OUT / 'results' / f'{case["name"]}.npz'
if not npz.exists():
    subprocess.run([PY, SK / 'shell-assemble-run' / 'assemble_run.py', cf, '--laminate', IT / 'lam.json'],
                   check=True, cwd=SK)
if not (OUT / 'it007_lateral_moment_deformed.png').exists():
  subprocess.run([PY, SK / 'shell-visualize' / 'shell_visualize.py', npz, '--png', OUT / 'it007_lateral_moment_deformed.png',
                '--no-gui', '--boom', 'C008', '--title', f'it007 L006 [45/0/0/45] C008: linear, end moment {M_STOP:,.0f} N mm about z'],
               check=True, cwd=SK)
r = np.load(npz, allow_pickle=True)
tip = int(json.loads(str(r['meta']))['rigid']['xL'])
j = int(np.nonzero(r['node_tags'] == tip)[0][0])
print(f'tip rotation rz = {r["disp"][j, 5]:.6g} rad (path B at this moment: 0.0038248 rad); '
      f'max |u| = {np.abs(r["disp"][:, :3]).max():.4g} mm')

# 2. buckling seed mode on the same mesh
import matplotlib
matplotlib.use('Agg')
import matplotlib.pyplot as plt  # noqa: E402
from mpl_toolkits.mplot3d.art3d import Poly3DCollection  # noqa: E402
m = np.load(IT / 'buckling' / 'it007_L006_Y025_C008_buck_mode.npz')
vec = dict(zip(m['nodes'].astype(int), m['vec']))
P = r['points']
tags = r['node_tags'].astype(int)
U = np.array([vec.get(t, np.zeros(3)) for t in tags])
ok = np.array([t in vec for t in tags])
yc, zc = P[ok, 1].mean(), P[ok, 2].mean()
theta = np.degrees(np.arctan2(P[:, 2] - zc, P[:, 1] - yc))   # angle around the section (y = 0 deg, +z = 90 deg)
amp = np.linalg.norm(U, axis=1)
kmax = int(np.argmax(np.where(ok, amp, 0)))
fig, axs = plt.subplots(1, 2, figsize=(15, 5.5), gridspec_kw=dict(width_ratios=(2.2, 1)))
sc = axs[0].scatter(P[ok, 0], theta[ok], c=amp[ok], s=2, cmap='viridis')
axs[0].set_xlabel('x along the boom [mm] (root clamp at 0, rigid tip at 1000)')
axs[0].set_ylabel('angle around the section [deg] (0 = +y side, 90 = +z)')
axs[0].set_title('unrolled section: |mode| at every node')
fig.colorbar(sc, ax=axs[0], label='|mode| (normalised, max 1)')
sl = ok & (np.abs(P[:, 0] - P[kmax, 0]) < 1e-6)
order = np.argsort(theta[sl])
Y0, Z0 = P[sl, 1][order], P[sl, 2][order]
scale = 15.0
axs[1].plot(np.r_[Y0, Y0[:1]], np.r_[Z0, Z0[:1]], color='0.6', lw=1, label='undeformed')
axs[1].plot(np.r_[Y0 + scale * U[sl, 1][order], Y0[:1] + scale * U[sl, 1][order][:1]],
            np.r_[Z0 + scale * U[sl, 2][order], Z0[:1] + scale * U[sl, 2][order][:1]], color='C3', lw=1.3,
            label=f'with mode x{scale:g}')
axs[1].set_aspect('equal'); axs[1].legend(loc='lower right', fontsize=8)
axs[1].set_title(f'cross-section at x = {P[kmax, 0]:.0f} mm (largest |mode|)')
axs[1].set_xlabel('y [mm] (lateral: the bending direction)'); axs[1].set_ylabel('z [mm]')
fig.suptitle('it007 L006 [45/0/0/45] C008: buckling seed mode (segment LBA, 0/90 surrogate shape, tiled along x); '
             'path B used it as a 0.1 t imperfection')
fig.tight_layout()
fig.savefig(OUT / 'it007_buckling_seed_mode.png', dpi=110)
print(f'wrote {OUT / "it007_lateral_moment_deformed.png"} and {OUT / "it007_buckling_seed_mode.png"}')
