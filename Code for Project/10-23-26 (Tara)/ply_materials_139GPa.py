"""
OpenSeesPy materials for a CFRP ply (E1 = 139.5 GPa) at 0, 90, 45 and -45 deg
to the global x axis, built with ply_properties.py (same folder).

Ply (inputs): E1 = 139.5 GPa, E2 = 6.101 GPa, G12 = 2.574 GPa, nu12 = 0.2750,
converted to MPa below (GPa x 1000). The minor Poisson ratio was given as
nu21 = 0.0120; it is NOT used as an input. Instead the reciprocal value
nu21 = nu12 E2 / E1 = 0.012027 is used (consistent with 0.0120 to the given
rounding, and exactly consistent with E1, E2, nu12 so the compliance matrix is
symmetric). nu23 was not given, so nu23 = nu12 = 0.2750 is assumed
(G23 = E2 / (2 (1 + nu23)) = 2392.55 MPa). Transverse isotropy gives
E3 = E2, G13 = G12, nu13 = nu12. Density not given -> rho = 0.
Ply thickness (for checks / layups): 0.054 mm (54 microns).

Angle convention: theta from global x to the fibre direction, positive
counter-clockwise about global +z.

How the angle reaches OpenSees: the material is always defined in its
principal axes (ElasticOrthotropic -> PlaneStress -> PlateFromPlaneStress);
the ply angle is applied on the element with
  ops.element('ASDShellQ4', ..., '-local', cos(theta), sin(theta), 0)
  0 deg   -> '-local', 1, 0, 0
  90 deg  -> '-local', 0, 1, 0
  45 deg  -> '-local', 0.707107, 0.707107, 0
  -45 deg -> '-local', 0.707107, -0.707107, 0
An element has one '-local' orientation, so all layers of its LayeredShell
share one angle. A multi-angle laminate in one element needs the coincident
per-ply-element approach in layup.py.

Material tags (start at 11 so they do not clash with ply_materials_0_90.py,
which uses 1-6, and its void material 7):
  0 deg  : ElasticOrthotropic 11, PlaneStress 12, PlateFromPlaneStress 13
  90 deg : ElasticOrthotropic 14, PlaneStress 15, PlateFromPlaneStress 16
  45 deg : ElasticOrthotropic 17, PlaneStress 18, PlateFromPlaneStress 19
  -45 deg: ElasticOrthotropic 20, PlaneStress 21, PlateFromPlaneStress 22
(The material sets are identical in the principal axes; they get separate
tags only so each angle has its own clearly labelled set.)

Units: N, mm, MPa, tonne (density in t/mm^3).

Usage:
  python ply_materials_139GPa.py     # define the materials, print Q_bar, run the check
  from ply_materials_139GPa import define_materials, PLY, PLY_TAGS, PLY_T, local_axis
"""
import numpy as np
import openseespy.opensees as ops

from ply_properties import (ply_properties, check_properties, define_ply_plate_material,
                            reduced_stiffness, rotate_plane_stress, local_axis,
                            verify_membrane, format_matrix)

# --- Ply (GPa inputs x 1000 -> MPa) ---
E1 = 139.5 * 1000    # fibre-direction modulus [MPa]
E2 = 6.101 * 1000    # transverse modulus [MPa]
G12 = 2.574 * 1000   # in-plane shear modulus [MPa]
nu12 = 0.2750
nu21_given = 0.0120  # reported only; nu21 = nu12 E2 / E1 is used for consistency
nu23 = None          # not given -> ply_properties assumes nu23 = nu12
rho = 0.0            # density [t/mm^3], not given
PLY_T = 0.054        # ply thickness [mm] (54 microns)

PLY = ply_properties(E1, E2, nu12, G12, nu23=nu23, rho=rho)

# theta [deg] -> (ElasticOrthotropic, PlaneStress, PlateFromPlaneStress) tags
PLY_TAGS = {
    0.0: (11, 12, 13),
    90.0: (14, 15, 16),
    45.0: (17, 18, 19),
    -45.0: (20, 21, 22),
}


def define_materials():
    """Create the plate materials for all four angles in the current model
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
    print(f"NOTE: nu21 given as {nu21_given:g}; using nu12 E2 / E1 = {PLY['nu21']:.6g} "
          f"(difference {abs(PLY['nu21'] - nu21_given):.1e})")

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
        A_fe, A_ref = verify_membrane(PLY, theta, t=PLY_T)   # wipes the model
        err = np.abs(A_fe - A_ref).max() / np.abs(A_ref).max()
        print(f'ASDShellQ4 -local membrane stiffness (t = {PLY_T:g} mm) vs t * Q_bar: '
              f'max rel. difference {err:.1e}')
