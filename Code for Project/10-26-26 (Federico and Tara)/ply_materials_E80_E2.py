"""
Ply materials for the textbook [0_2/90_2]_s problem (Mx only), N-mm-MPa units.

Ply: E1 = 80 GPa = 80000 MPa, E2 = 2 GPa = 2000 MPa, nu12 = 0.25, t = 1 mm.
G12 is not given in the problem: G12 = 1 GPa = 1000 MPa is a PLACEHOLDER
(it only enters D66, which does not affect the curvatures under Mx alone).
nu23 is not given: nu23 = nu12 = 0.25 is assumed (G23 = E2 / (2 (1 + nu23))).

Uses ply_properties.py from '10-23-26 (Tara)'. Materials are defined in the
ply principal axes; the ply angle is applied on the shell element via
'-local', *local_axis(theta). Note: one element has one '-local', so all
layers of one element's LayeredShell share the same angle.
"""
import os
import sys

import numpy as np

sys.path.insert(0, os.path.join(os.path.dirname(os.path.abspath(__file__)), '..', '10-23-26 (Tara)'))
from ply_properties import (ply_properties, check_properties, report, reduced_stiffness,
                            stiffness_3d, rotate_3d, rotate_plane_stress, condense_plane_stress,
                            format_matrix, opensees_commands, local_axis, verify_membrane,
                            define_ply_plate_material)

E1, E2, NU12 = 80e3, 2e3, 0.25      # MPa (from GPa x 1000)
G12 = 1e3                           # MPa, PLACEHOLDER (not given)
T_PLY = 1.0                         # mm

# angle -> (tag3d, tag_ps, tag_plate)
PLIES = {0.0: (1, 2, 3), 90.0: (4, 5, 6)}

p = ply_properties(E1, E2, NU12, G12)   # nu23 not given -> nu23 = nu12


def define_materials():
    """Define both plies in the current OpenSeesPy model (ndf = 6).
    Returns {theta: plate tag}; use with '-local', *local_axis(theta)."""
    return {th: define_ply_plate_material(p, *tags) for th, tags in PLIES.items()}


if __name__ == '__main__':
    print(report(p))
    print(f"\nNOTE: nu23 was not given, so nu23 = nu12 = {p['nu23']:g} was assumed "
          f"(G23 = {p['G23']:.6g} MPa).")
    print(f"NOTE: G12 = {G12:g} MPa is a placeholder (not given in the problem).")
    for msg in check_properties(p):
        print(f'WARNING: {msg}')
    print('\nReduced stiffness Q (ply axes) [MPa]:')
    print(format_matrix(reduced_stiffness(p), ['11', '22', '12']))

    for th, (t3d, tps, tpl) in PLIES.items():
        Cb = rotate_3d(stiffness_3d(p), th)
        Qb = rotate_plane_stress(reduced_stiffness(p), th)
        print(f'\n===== theta = {th:g} deg =====')
        print('Q_bar [MPa]:')
        print(format_matrix(Qb, ['xx', 'yy', 'xy']))
        print('C_bar [MPa]:')
        print(format_matrix(Cb, ['xx', 'yy', 'zz', 'xy', 'yz', 'xz']))
        print(opensees_commands(p, th, t3d))
        err = np.abs(condense_plane_stress(Cb) - Qb).max() / np.abs(Qb).max()
        print(f'check: plane-stress condensation of C_bar vs Q_bar: max rel. difference {err:.1e}')
        A_fe, A_ref = verify_membrane(p, th, t=T_PLY)
        err = np.abs(A_fe - A_ref).max() / np.abs(A_ref).max()
        print(f'check: ASDShellQ4 -local membrane stiffness vs t * Q_bar: max rel. difference {err:.1e}')

    # smoke test: define both plies in one model
    import openseespy.opensees as ops
    ops.wipe(); ops.model('basic', '-ndm', 3, '-ndf', 6)
    print('\nplate material tags:', define_materials(), ' local axes:',
          {th: local_axis(th) for th in PLIES})
    ops.wipe()
