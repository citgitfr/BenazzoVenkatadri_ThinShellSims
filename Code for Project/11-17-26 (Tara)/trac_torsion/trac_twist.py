"""End twist and twist profile of the R001 aluminum TRAC boom under a 1 N*mm tip torque,
vs St Venant and Vlasov (warping-restrained) open-section torsion.

  python trac_twist.py

Section (catalog R001): web (0, -8)..(0, 0), t_web = 0.2 mm (doubled), two flanges
R = 12.5 mm, 90 deg, t = 0.1 mm, leaving the web tip tangentially.
J  = (2 s_f t^3 + w (2t)^3) / 3
Cw = warping constant of the two-flange chain about its shear centre (the web lies on the
     symmetry axis through the pole, so its sectorial coordinate is 0 and adds nothing).
k  = sqrt(G J / (E Cw))
Root clamped (warping restrained) in both cases;
  tip load through a rigid end (tip warping restrained): phi_L = T/(GJ) (L - 2 tanh(kL/2)/k)
  tip torque spread on the edge (tip free to warp):      phi_L = T/(GJ) (L - tanh(kL)/k)
Writes trac_twist_profile.png / .csv.
"""
import json
import math
import sys
from pathlib import Path

import numpy as np

HERE = Path(__file__).resolve().parent
REPO = HERE.parents[2]
sys.path.insert(0, str(REPO / '.claude' / 'skills' / 'shell-buckling'))
sys.path.insert(0, str(HERE.parent / 'omega_torsion'))
import shell_buckling as sb          # noqa: E402
from twist_profile import station_twist   # noqa: E402

T, L, E, NU, t = 1.0, 1000.0, 69000.0, 0.33, 0.1
G = E / (2 * (1 + NU))
R, th, w = 12.5, math.pi / 2, 8.0

phi = np.linspace(0, th, 401)
A = np.c_[R - R * np.cos(phi), R * np.sin(phi)]          # flange A, +y side
chain = np.vstack([A[::-1] * [-1, 1], A[1:]])            # tip B -> web tip -> tip A
p = sb.section_properties(chain, t)
s_f = R * th
J = (2 * s_f * t**3 + w * (2 * t)**3) / 3
Cw = p['Cw']
k = math.sqrt(G * J / (E * Cw))
phi_SV = T * L / (G * J)
phi_rigid = T / (G * J) * (L - 2 * math.tanh(k * L / 2) / k)
phi_edge = T / (G * J) * (L - math.tanh(k * L) / k)
print(f'J = {J:.5g} mm^4 (flanges {2 * s_f * t**3 / 3:.4g}, web {w * (2 * t)**3 / 3:.4g}), GJ = {G * J:.5g} N mm^2')
print(f'Cw = {Cw:.5g} mm^6 (shear centre z = {p["zs"]:.3f} mm), 1/k = {1 / k:.1f} mm, kL = {k * L:.2f}')
print(f'St Venant (free warping) phi_L = {phi_SV:.5f} rad')
print(f'Vlasov, root + tip warping restrained (rigid end): phi_L = {phi_rigid:.5f} rad')
print(f'Vlasov, root restrained, tip free (edge torque):    phi_L = {phi_edge:.5f} rad')

runs = []
for case, ref in (('rigid', phi_rigid), ('edge', phi_edge)):
    for mesh in ('2p5', '1p25'):
        name = f'R001_Al_torsion_{case}_{mesh}mm'
        d = np.load(HERE / 'results' / f'{name}.npz', allow_pickle=True)
        P, U = d['points'], d['disp']
        m = json.loads(str(d['meta']))
        shell = np.ones(len(P), bool)
        extra = ''
        rig = m.get('rigid', {}).get('xL')
        if rig is not None:
            i = int(np.where(d['node_tags'] == rig)[0][0])
            shell[i] = False
            extra = f', rigid-end rx = {U[i, 3]:.5f}'
        xs, ph = station_twist(P[shell], U[shell])
        runs.append((name, xs, ph))
        print(f'{name}: phi(L) = {ph[-1]:.5f} rad{extra}  ({ph[-1] / ref - 1:+.2%} vs Vlasov, '
              f'{ph[-1] / phi_SV - 1:+.2%} vs St Venant); GJ_eff = {T * L / ph[-1]:.4g} N mm^2')

import matplotlib            # noqa: E402
matplotlib.use('Agg')
import matplotlib.pyplot as plt   # noqa: E402
x = np.linspace(0, L, 501)
c = T / (G * J)
v_edge = c * (x - (np.sinh(k * x) - np.tanh(k * L) * (np.cosh(k * x) - 1)) / k)
v_rigid = c * (x - (np.sinh(k * x) - np.tanh(k * L / 2) * (np.cosh(k * x) - 1)) / k)
fig, ax = plt.subplots(figsize=(7, 4.2))
for name, xs, ph in runs:
    ax.plot(xs, ph, label=name.replace('R001_Al_torsion_', ''))
ax.plot(x, v_rigid, 'k--', lw=1, label='Vlasov, both ends warping-restrained')
ax.plot(x, v_edge, 'k:', lw=1, label='Vlasov, tip free to warp')
ax.plot([0, L], [0, phi_SV], color='gray', lw=0.8, label='St Venant T x / (G J)')
ax.set_xlabel('x [mm]')
ax.set_ylabel(r'twist $\phi$ [rad]')
ax.set_title('R001 aluminum TRAC boom, T = 1 N mm at x = L (linear)')
ax.grid(alpha=0.3)
ax.legend(fontsize=8)
fig.tight_layout()
fig.savefig(HERE / 'trac_twist_profile.png', dpi=150)
with open(HERE / 'trac_twist_profile.csv', 'w') as f:
    f.write('run,x_mm,phi_rad\n')
    for name, xs, ph in runs:
        for xi, q in zip(xs, ph):
            f.write(f'{name},{xi:.6g},{q:.8e}\n')
print('wrote trac_twist_profile.png, trac_twist_profile.csv')
