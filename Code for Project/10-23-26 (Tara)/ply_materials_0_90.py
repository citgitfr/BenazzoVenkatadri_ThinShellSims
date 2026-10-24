"""
OpenSeesPy materials for a CFRP ply at 0 deg and 90 deg to the global x axis,
built with ply_properties.py (same folder).

Ply (inputs): E1 = 140 GPa, E2 = 10 GPa, G12 = 6 GPa, nu12 = 0.34, converted
to MPa below. nu23 was not given, so nu23 = nu12 = 0.34 is assumed
(G23 = E2 / (2 (1 + nu23)) = 3731.34 MPa). Transverse isotropy gives
E3 = E2, G13 = G12, nu13 = nu12. Density not given -> rho = 0.

Angle convention: theta from global x to the fibre direction, positive
counter-clockwise about global +z.

How the angle reaches OpenSees: the material is always defined in its
principal axes (ElasticOrthotropic -> PlaneStress -> PlateFromPlaneStress);
the ply angle is applied on the element with
  ops.element('ASDShellQ4', ..., '-local', cos(theta), sin(theta), 0)
  0 deg  -> '-local', 1, 0, 0
  90 deg -> '-local', 0, 1, 0
An element has one '-local' orientation, so all layers of its LayeredShell
share one angle. A 0/90 laminate in one element needs the coincident
per-ply-element approach in layup.py.

Material tags:
  0 deg : ElasticOrthotropic 1, PlaneStress 2, PlateFromPlaneStress 3
  90 deg: ElasticOrthotropic 4, PlaneStress 5, PlateFromPlaneStress 6
(The 0 and 90 deg material sets are identical in the principal axes; they get
separate tags only so each angle has its own clearly labelled set.)

Units: N, mm, MPa, tonne (density in t/mm^3).

Usage:
  python ply_materials_0_90.py           # define the materials, print Q_bar, run the check
  from ply_materials_0_90 import define_materials, PLY_TAGS, local_axis
"""
import numpy as np
import openseespy.opensees as ops

from ply_properties import (ply_properties, check_properties, define_ply_plate_material,
                            reduced_stiffness, rotate_plane_stress, local_axis,
                            verify_membrane, format_matrix)

# --- Ply (GPa inputs x 1000 -> MPa) ---
E1 = 140.0 * 1000   # fibre-direction modulus [MPa]
E2 = 10.0 * 1000    # transverse modulus [MPa]
G12 = 6.0 * 1000    # in-plane shear modulus [MPa]
nu12 = 0.34
nu23 = None         # not given -> ply_properties assumes nu23 = nu12
rho = 0.0           # density [t/mm^3], not given

PLY = ply_properties(E1, E2, nu12, G12, nu23=nu23, rho=rho)

# theta [deg] -> (ElasticOrthotropic, PlaneStress, PlateFromPlaneStress) tags
PLY_TAGS = {
    0.0: (1, 2, 3),
    90.0: (4, 5, 6),
}


def define_materials():
    """Create the plate materials for both angles in the current model
    (ndf = 6). Returns {theta: plate tag} for section('LayeredShell', ...);
    pair each with '-local', *local_axis(theta) on the ASDShellQ4 element."""
    return {theta: define_ply_plate_material(PLY, t3d, tps, tplate)
            for theta, (t3d, tps, tplate) in PLY_TAGS.items()}


if __name__ == '__main__':
    for msg in check_properties(PLY):
        print(f'WARNING: {msg}')
    if PLY['nu23_assumed']:
        print(f"NOTE: nu23 was not given; assumed nu23 = nu12 = {PLY['nu23']:.6g} "
              f"(G23 = {PLY['G23']:.6g} MPa)")

    ops.wipe()
    ops.model('basic', '-ndm', 3, '-ndf', 6)
    plate_tags = define_materials()
    print(f'Defined plate materials {plate_tags} (theta [deg] -> tag)')

    for theta in PLY_TAGS:
        Q_bar = rotate_plane_stress(reduced_stiffness(PLY), theta)
        Q_bar[np.abs(Q_bar) < 1e-9 * np.abs(Q_bar).max()] = 0.0   # round-off from cos(90)
        print(f'\ntheta = {theta:g} deg, -local {local_axis(theta)}')
        print('Q_bar [MPa]:')
        print(format_matrix(Q_bar, ['xx', 'yy', 'xy']))
        A_fe, A_ref = verify_membrane(PLY, theta)   # wipes the model
        err = np.abs(A_fe - A_ref).max() / np.abs(A_ref).max()
        print(f'ASDShellQ4 -local membrane stiffness vs t * Q_bar: max rel. difference {err:.1e}')
