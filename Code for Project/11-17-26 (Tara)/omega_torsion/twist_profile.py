"""Twist profile of the M008 aluminum omega boom under a 1 N*mm tip torque.

  python twist_profile.py results/<name>.npz [more .npz ...] [--abaqus <job>_odb.npz ...]

For every x station of the shell nodes the section rotation phi(x) about x is the
least-squares rigid in-plane rotation of that station's nodes:
  phi = sum[(y - yc)(uz - uz_mean) - (z - zc)(uy - uy_mean)] / sum[(y - yc)^2 + (z - zc)^2]
(so it does not depend on where the torque is applied or on the rotation centre).
Also prints the rigid-end node rotation rx (OpenSees) and the Bredt closed-cell
hand check  phi_tip = T L / (G J),  J = 4 A^2 t / (s_upper + s_lower)  (tabs neglected).
Writes twist_profile.png and twist_profile.csv next to this script.
"""
import json
import sys
from pathlib import Path

import numpy as np

HERE = Path(__file__).resolve().parent
T, L, E, NU, t = 1.0, 1000.0, 69000.0, 0.33, 0.1
G = E / (2 * (1 + NU))


def station_twist(points, disp, tol=1e-6):
    x = points[:, 0]
    xs = np.unique(np.round(x, 6))
    phi = []
    for xi in xs:
        k = np.abs(x - xi) < tol + 1e-9 * L
        y, z = points[k, 1], points[k, 2]
        uy, uz = disp[k, 1], disp[k, 2]
        dy, dz = y - y.mean(), z - z.mean()
        phi.append(np.sum(dy * (uz - uz.mean()) - dz * (uy - uy.mean())) / np.sum(dy**2 + dz**2))
    return xs, np.array(phi)


def bredt(npz):
    """Enclosed area from the flange strips of the first x station of an OpenSees results file."""
    d = np.load(npz, allow_pickle=True)
    m = json.loads(str(d['meta']))
    labels = m['strip_label']
    nx, P, faces = m['nx'], d['points'], d['faces']
    upper = lower = 0.0
    s_up = s_lo = 0.0
    for k, lab in enumerate(labels):
        if lab != 'flange':
            continue
        f = faces[k * nx]
        a, b = [n for n in f if abs(P[n, 0]) < 1e-9][:2]
        (y1, z1), (y2, z2) = P[a, 1:], P[b, 1:]
        sa = 0.5 * (y1 * z2 - y2 * z1)
        ds = np.hypot(y2 - y1, z2 - z1)
        if z1 + z2 > 0:
            upper += sa; s_up += ds
        else:
            lower += sa; s_lo += ds
    A = abs(upper) + abs(lower)
    J = 4 * A**2 * t / (s_up + s_lo)
    return A, s_up, s_lo, J


def load(npz):
    d = np.load(npz, allow_pickle=True)
    keys = set(d.files)
    P = d['points'] if 'points' in keys else d['coords']
    U = d['disp'] if 'disp' in keys else d['U']
    return d, P, U


def main():
    args = sys.argv[1:]
    runs = []
    for a in args:
        if a == '--abaqus':
            continue
        d, P, U = load(a)
        shell = np.ones(len(P), bool)
        tip_rx = None
        if 'meta' in d.files:
            m = json.loads(str(d['meta']))
            rig = m.get('rigid', {}).get('xL')
            if rig is not None:
                idx = int(np.where(d['node_tags'] == rig)[0][0])
                tip_rx = U[idx, 3]
                shell[idx] = False
        xs, phi = station_twist(P[shell], U[shell])
        runs.append((Path(a).stem, xs, phi, tip_rx))

    ops_npz = next((a for a in args if 'results' in a.replace('\\', '/')), None)
    if ops_npz:
        A, s_up, s_lo, J = bredt(ops_npz)
        phi_ref = T * L / (G * J)
        print(f'Bredt: A = {A:.2f} mm^2, s_upper = {s_up:.2f}, s_lower = {s_lo:.2f} mm, '
              f'J = {J:.4g} mm^4, G = {G:.1f} MPa, GJ = {G * J:.4g} N mm^2, phi_tip = {phi_ref:.6e} rad')
    else:
        phi_ref = None
    for name, xs, phi, rx in runs:
        line = f'{name}: phi(L) station fit = {phi[-1]:.6e} rad'
        if rx is not None:
            line += f', rigid-end rx = {rx:.6e} rad'
        if phi_ref:
            line += f'  ({phi[-1] / phi_ref - 1:+.2%} vs Bredt)'
        k = np.argmin(abs(xs - L / 2))
        line += f'; phi(L/2) = {phi[k]:.6e}, GJ_eff = {T * L / phi[-1]:.5g} N mm^2'
        print(line)

    import matplotlib
    matplotlib.use('Agg')
    import matplotlib.pyplot as plt
    fig, ax = plt.subplots(figsize=(7, 4.2))
    for name, xs, phi, _ in runs:
        ax.plot(xs, phi * 1e6, label=name)
    if phi_ref:
        ax.plot([0, L], [0, phi_ref * 1e6], 'k--', lw=1, label='Bredt  T x / (G J)')
    ax.set_xlabel('x [mm]')
    ax.set_ylabel(r'twist $\phi$ [$\mu$rad]')
    ax.set_title('M008 aluminum omega boom, T = 1 N mm at x = L, clamped at x = 0')
    ax.grid(alpha=0.3)
    ax.legend(fontsize=8)
    fig.tight_layout()
    fig.savefig(HERE / 'twist_profile.png', dpi=150)
    with open(HERE / 'twist_profile.csv', 'w') as f:
        f.write('run,x_mm,phi_rad\n')
        for name, xs, phi, _ in runs:
            for xi, p in zip(xs, phi):
                f.write(f'{name},{xi:.6g},{p:.8e}\n')
    print('wrote twist_profile.png, twist_profile.csv')


if __name__ == '__main__':
    main()
