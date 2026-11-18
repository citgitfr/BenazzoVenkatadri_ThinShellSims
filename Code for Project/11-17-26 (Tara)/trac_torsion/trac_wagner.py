"""Wagner (large-twist) hand estimate for the R001 aluminum TRAC boom.

Uniform twist rate theta of a free-ended open section (no axial force):
    T = G J theta + (E / 2) (I_rr - I_p^2 / A) theta^3
I_p = int r^2 dA, I_rr = int r^4 dA, r = distance from the twist axis (shear centre).
The FE boom is clamped at the root and, through the rigid end, warping-restrained at the tip,
so the twist rate is not uniform. Crude estimate used here: theta = phi_L / L_eff with
L_eff = L - 2 tanh(kL/2)/k (the Vlasov effective length, which reproduces the linear FE twist).
Prints T(phi) for phi = 0..1 rad and writes trac_wagner.csv.
"""
import math
import sys
from pathlib import Path

import numpy as np

HERE = Path(__file__).resolve().parent
sys.path.insert(0, str(HERE.parents[2] / '.claude' / 'skills' / 'shell-buckling'))
import shell_buckling as sb   # noqa: E402

E, NU, t, L = 69000.0, 0.33, 0.1, 1000.0
G = E / (2 * (1 + NU))
R, th, w = 12.5, math.pi / 2, 8.0
ph = np.linspace(0, th, 2001)
A_ = np.c_[R - R * np.cos(ph), R * np.sin(ph)]
chain = np.vstack([A_[::-1] * [-1, 1], A_[1:]])
p = sb.section_properties(chain, t)
zs = p['zs']

# segments with thickness: flanges t, web 2t
segs = [(chain[:-1], chain[1:], t)]
web = np.c_[np.zeros(801), np.linspace(-w, 0, 801)]
segs.append((web[:-1], web[1:], 2 * t))
A = Ip = Irr = 0.0
for a, b, tt in segs:
    m = (a + b) / 2
    ds = np.hypot(*(b - a).T)
    r2 = m[:, 0]**2 + (m[:, 1] - zs)**2
    A += np.sum(tt * ds)
    Ip += np.sum(tt * ds * r2)
    Irr += np.sum(tt * ds * r2**2)
dI = Irr - Ip**2 / A
J = (2 * R * th * t**3 + w * (2 * t)**3) / 3
k = math.sqrt(G * J / (E * p['Cw']))
L_eff = L - 2 * math.tanh(k * L / 2) / k
print(f'shear centre z = {zs:.3f} mm; A = {A:.4f} mm^2, I_p = {Ip:.4g} mm^4, I_rr = {Irr:.4g} mm^6, '
      f'I_rr - I_p^2/A = {dI:.4g} mm^6')
print(f'GJ = {G * J:.4g} N mm^2, E dI / 2 = {E * dI / 2:.4g} N mm^4, L_eff = {L_eff:.1f} mm')
phis = np.linspace(0, 1.0, 21)
theta = phis / L_eff
T_lin = G * J * theta
T_wag = T_lin + E * dI / 2 * theta**3
for f, a, b in zip(phis[::4], T_lin[::4], T_wag[::4]):
    print(f'  phi = {f:.2f} rad: T linear = {a:.4f}, Wagner = {b:.4f} N mm  ({b / a - 1 if a else 0:+.1%})')
# twist under T = 1 N mm: solve the cubic
c = np.roots([E * dI / 2, 0, G * J, -1.0])
th1 = float(np.real(c[np.isreal(c)][0]))
print(f'T = 1 N mm: Wagner phi_L = {th1 * L_eff:.4f} rad (linear {L_eff / (G * J):.4f} rad)')
np.savetxt(HERE / 'trac_wagner.csv', np.c_[phis, T_lin, T_wag], delimiter=',',
           header='phi_tip_rad,T_linear_Nmm,T_wagner_Nmm', comments='')
