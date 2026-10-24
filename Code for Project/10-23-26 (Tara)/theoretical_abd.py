"""
ABD matrix of a laminate from classical lamination theory (CLT).

Standalone: uses only numpy, and nothing from the other scripts in this
folder, so it is an independent reference for the OpenSeesPy laminate.

Ply: transversely isotropic, constants E1, E2, nu12, G12 (nu23 is accepted for
the same inputs as PlyPropertyGenerator, but CLT is plane stress and does not
use it). Layup: ply angles bottom to top, from global x to the fibre,
positive counter-clockwise about +z, with one thickness for all plies or one
per ply. The laminate mid-surface is z = 0, ply 1 at the bottom (-z).

Theory (Jones, Mechanics of Composite Materials, ch. 2 and 4):
  reduced stiffness  Q11 = E1/(1 - nu12 nu21), Q22 = E2/(1 - nu12 nu21),
                     Q12 = nu12 E2/(1 - nu12 nu21), Q66 = G12, nu21 = nu12 E2/E1
  rotated stiffness  Q_bar from the Tsai-Pagano invariants U1..U5
  A = sum Q_bar_k (z_k - z_k-1), B = 1/2 sum Q_bar_k (z_k^2 - z_k-1^2),
  D = 1/3 sum Q_bar_k (z_k^3 - z_k-1^3)
  [N; M] = [A B; B D] [eps0; kappa], engineering shear strain gamma_xy and
  twist curvature k_xy = -2 w,xy.

Units: N, mm, MPa. A [N/mm], B [N], D [N mm].

Usage:
  python theoretical_abd.py --E1 135000 --E2 10000 --nu12 0.3 --G12 5000 [--nu23 0.45]
                            --angles 0 45 -45 90 --thickness 0.125 [--save abd_clt.csv]
"""
import argparse

import numpy as np

STRAINS = ['eps_xx', 'eps_yy', 'gam_xy', 'k_xx', 'k_yy', 'k_xy']


def reduced_stiffness(E1, E2, nu12, G12):
    """Q11, Q22, Q12, Q66 in the ply axes."""
    nu21 = nu12 * E2 / E1
    d = 1 - nu12 * nu21
    return E1 / d, E2 / d, nu12 * E2 / d, G12


def q_bar(Q, theta_deg):
    """3x3 Q_bar [xx, yy, xy] at ply angle theta, from the invariants."""
    Q11, Q22, Q12, Q66 = Q
    U1 = (3 * Q11 + 3 * Q22 + 2 * Q12 + 4 * Q66) / 8
    U2 = (Q11 - Q22) / 2
    U3 = (Q11 + Q22 - 2 * Q12 - 4 * Q66) / 8
    U4 = (Q11 + Q22 + 6 * Q12 - 4 * Q66) / 8
    U5 = (Q11 + Q22 - 2 * Q12 + 4 * Q66) / 8
    t = np.radians(theta_deg)
    c2, s2, c4, s4 = np.cos(2 * t), np.sin(2 * t), np.cos(4 * t), np.sin(4 * t)
    Qb11 = U1 + U2 * c2 + U3 * c4
    Qb22 = U1 - U2 * c2 + U3 * c4
    Qb12 = U4 - U3 * c4
    Qb66 = U5 - U3 * c4
    Qb16 = U2 / 2 * s2 + U3 * s4
    Qb26 = U2 / 2 * s2 - U3 * s4
    return np.array([[Qb11, Qb12, Qb16],
                     [Qb12, Qb22, Qb26],
                     [Qb16, Qb26, Qb66]])


def abd(Q, angles, thicknesses):
    """6x6 ABD and the ply z coordinates (bottom to top)."""
    z = np.concatenate([[0.0], np.cumsum(thicknesses)])
    z -= z[-1] / 2
    A, B, D = np.zeros((3, 3)), np.zeros((3, 3)), np.zeros((3, 3))
    for k, th in enumerate(angles):
        Qb = q_bar(Q, th)
        A += Qb * (z[k + 1] - z[k])
        B += Qb * (z[k + 1]**2 - z[k]**2) / 2
        D += Qb * (z[k + 1]**3 - z[k]**3) / 3
    return np.block([[A, B], [B, D]]), z


def fmt(M, rows, cols):
    M = np.where(np.abs(M) < 1e-12 * max(np.abs(M).max(), 1e-300), 0.0, M)   # round-off to 0
    head = ' ' * 8 + ''.join(f'{c:>13}' for c in cols)
    return '\n'.join([head] + [f'{r:<8}' + ''.join(f' {v:>12.6g}' for v in row) for r, row in zip(rows, M)])


def main():
    ap = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument('--E1', type=float, required=True, help='fibre-direction modulus [MPa]')
    ap.add_argument('--E2', type=float, required=True, help='transverse modulus [MPa]')
    ap.add_argument('--nu12', type=float, required=True, help='major in-plane Poisson ratio')
    ap.add_argument('--G12', type=float, required=True, help='in-plane shear modulus [MPa]')
    ap.add_argument('--nu23', type=float, default=None, help='accepted but not used by CLT')
    ap.add_argument('--angles', type=float, nargs='+', required=True,
                    help='ply angles bottom to top, from global x to fibre, CCW about +z [deg]')
    ap.add_argument('--thickness', type=float, nargs='+', required=True,
                    help='ply thickness [mm]: one value for all plies, or one per ply')
    ap.add_argument('--save', metavar='FILE', default=None, help='also write the 6x6 ABD to a CSV file')
    args = ap.parse_args()

    t = args.thickness * len(args.angles) if len(args.thickness) == 1 else args.thickness
    if len(t) != len(args.angles):
        raise SystemExit(f'ERROR: {len(args.angles)} angles but {len(t)} thicknesses')
    problems = [f'{k} = {v} must be > 0' for k, v in
                (('E1', args.E1), ('E2', args.E2), ('G12', args.G12)) + tuple(('thickness', x) for x in t) if v <= 0]
    if args.nu12**2 >= args.E1 / args.E2:
        problems.append(f'nu12^2 = {args.nu12**2:.4g} must be < E1/E2 = {args.E1 / args.E2:.4g}')
    if problems:
        raise SystemExit('ERROR: ' + '; '.join(problems))

    Q = reduced_stiffness(args.E1, args.E2, args.nu12, args.G12)
    K, z = abd(Q, args.angles, t)

    print(f'Ply: E1 = {args.E1:g}, E2 = {args.E2:g}, nu12 = {args.nu12:g}, G12 = {args.G12:g} MPa')
    if args.nu23 is not None:
        print(f'     (nu23 = {args.nu23:g} given; not used, CLT is plane stress)')
    print(f'Q11 = {Q[0]:.6g}, Q22 = {Q[1]:.6g}, Q12 = {Q[2]:.6g}, Q66 = {Q[3]:.6g} MPa')
    print(f'\nLayup, bottom (-z) to top (+z): [{"/".join(f"{a:g}" for a in args.angles)}], h = {z[-1] - z[0]:.6g} mm')
    print(f'{"ply":>3} {"theta":>7} {"t":>8} {"z0":>9} {"z1":>9}')
    for k, a in enumerate(args.angles):
        print(f'{k + 1:>3} {a:>7g} {t[k]:>8.4g} {z[k]:>9.4g} {z[k + 1]:>9.4g}')

    print('\nABD from classical lamination theory:')
    print('A [N/mm]  (N = A eps + B k)')
    print(fmt(K[:3, :3], ['Nxx', 'Nyy', 'Nxy'], STRAINS[:3]))
    print('B [N]')
    print(fmt(K[:3, 3:], ['Nxx', 'Nyy', 'Nxy'], STRAINS[3:]))
    print('D [N mm]  (M = B eps + D k)')
    print(fmt(K[3:, 3:], ['Mxx', 'Myy', 'Mxy'], STRAINS[3:]))

    if args.save:
        np.savetxt(args.save, K, delimiter=',', header=','.join(STRAINS),
                   comments='# 6x6 ABD (CLT) [N/mm, N, N mm], rows N_xx N_yy N_xy M_xx M_yy M_xy; columns: ')
        print(f'\nABD (full precision) saved to {args.save}')


if __name__ == '__main__':
    main()
