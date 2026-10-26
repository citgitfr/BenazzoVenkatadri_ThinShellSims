"""
[0_2/90_2]_s CFRP laminate for the OpenSeesPy thin-shell models, built with
layup.py / ply_properties.py from '../10-23-26 (Tara)' (PlyPropertyGenerator code).

Ply: E1 = 80 GPa, E2 = 2 GPa, nu12 = 0.25 (GPa x 1000 -> MPa).
G12 = 1 GPa is a PLACEHOLDER (not given; only D66/A66 depend on it).
nu23 not given -> nu23 = nu12 = 0.25 assumed (G23 = 800 MPa).
Layup bottom (-z) to top (+z): 0 0 90 90 90 90 0 0, each ply 1 mm, h = 8 mm.
Ply 1 = bottom (-z) ply. Angle from global x to the fibre, CCW about +z.

One LayeredShell + one coincident ASDShellQ4 per ply (8 elements per facet,
'-noeas' added by add_laminate_elements). Each ply split into N_SUB layers.

Tags (defaults): nDMaterial MAT_TAG (void) ... MAT_TAG + 24,
section SEC_TAG ... SEC_TAG + 7, elements: 8 consecutive tags per facet.

Usage (from a mesh script):
    import sys
    sys.path.insert(0, r'D:/Users/tvenkata/projects/ME295_project/Code for Project/10-26-26 (Federico and Tara)')
    from layup_0_0_90_90_s import build, add_laminate_elements, PLIES
    layup = build()                       # after ops.model('basic','-ndm',3,'-ndf',6)
    ele = 1
    for quad in quads:
        ele = add_laminate_elements(ele, quad, layup, '-corotational')

    python layup_0_0_90_90_s.py           # prints ABD and OpenSees vs CLT check
"""
import os
import sys

_TARA = os.path.join(os.path.dirname(os.path.abspath(__file__)), '..', '10-23-26 (Tara)')
if _TARA not in sys.path:
    sys.path.insert(0, _TARA)

from ply_properties import ply_properties                      # noqa: E402
from layup import (make_plies, build_layup, add_laminate_elements,  # noqa: E402,F401
                   clt_abd, verify_abd, block_errors, format_matrix)

# Units: N, mm, MPa
E1, E2, NU12 = 80000.0, 2000.0, 0.25
G12 = 1000.0          # placeholder, not given in the problem
NU23 = None           # not given -> nu23 = nu12 assumed by ply_properties
RHO = 0.0

ANGLES = [0, 0, 90, 90, 90, 90, 0, 0]   # bottom (-z) to top (+z), deg
THICKNESS = [1.0]                       # mm, every ply
N_SUB = 4                               # layers per ply (32 through h, D error ~0.06%)
MAT_TAG, SEC_TAG = 1, 1

PLY = ply_properties(E1, E2, NU12, G12, NU23, RHO)
PLIES = make_plies(ANGLES, THICKNESS, PLY)


def build(mat_tag=MAT_TAG, sec_tag=SEC_TAG, n_sub=N_SUB):
    """Define materials and the 8 per-ply LayeredShell sections in the current
    model (ndf = 6). Returns the layup list for add_laminate_elements()."""
    return build_layup(PLIES, mat_tag=mat_tag, sec_tag=sec_tag, n_sub=n_sub)


def main():
    lbl = ['eps_xx', 'eps_yy', 'gam_xy', 'k_xx', 'k_yy', 'k_xy']
    print(f"NOTE: nu23 assumed = nu12 = {PLY['nu23']:g} (G23 = {PLY['G23']:g} MPa); "
          f"G12 = {G12:g} MPa is a placeholder")
    K, ref = verify_abd(PLIES, N_SUB)
    print('ABD from CLT [N/mm, N, N mm]:')
    print(format_matrix(ref, lbl))
    print(f'\nABD from OpenSeesPy (8 coincident ASDShellQ4, -noeas, n_sub = {N_SUB}):')
    print(format_matrix(K, lbl))
    print('\nOpenSeesPy vs CLT, max relative difference: '
          + ', '.join(f'{k} {v:.1e}' for k, v in block_errors(K, ref).items()))


if __name__ == '__main__':
    main()
