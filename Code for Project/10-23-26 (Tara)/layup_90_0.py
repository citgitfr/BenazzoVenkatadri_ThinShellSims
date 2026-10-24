"""
Two-ply unsymmetric CFRP laminate [90/0] (bottom to top) for OpenSeesPy
shells, built from the existing files in this folder:
  ply_materials_0_90.py - ply constants and material tags (0 deg: 1/2/3,
                          90 deg: 4/5/6, ElasticOrthotropic/PlaneStress/
                          PlateFromPlaneStress)
  layup.py              - coincident per-ply-element approach, CLT, ABD check

Ply: E1 = 140 GPa, E2 = 10 GPa, G12 = 6 GPa, nu12 = 0.34 (converted to MPa in
ply_materials_0_90.py); nu23 not given -> nu23 = nu12 = 0.34 assumed
(G23 = 3731.34 MPa).

Layup, bottom (-z) to top (+z), z from the laminate mid-surface:
  ply 1: 90 deg, t = 1 mm, z = -1 ... 0 mm, section 1, '-local' 0, 1, 0
  ply 2:  0 deg, t = 1 mm, z =  0 ... 1 mm, section 2, '-local' 1, 0, 0
Bottom = -z side of the element normal n1->n2 x n1->n4. Angle from global x
to the fibre, CCW about +z.

Why two elements per facet: an ASDShellQ4 has one '-local' orientation for
all its layers, so each ply gets its own ASDShellQ4 on the same four nodes.
Each ply's LayeredShell spans the full 2 mm in ply order: its own material at
its z position and a zero-stiffness void (nDMaterial 7) in place of the other
ply. The stiffnesses add to the exact laminate A, B, D. '-noeas' is added
(EAS is condensed per element and does not add across coincident elements);
refine the mesh until results converge.

Tags:
  nDMaterial 1-6  ply materials (from ply_materials_0_90.define_materials)
  nDMaterial 7    void (ElasticIsotropic, E = 0)
  section 1       90 deg ply (bottom), plate material 6 at z = -1 ... 0
  section 2       0 deg ply (top),     plate material 3 at z =  0 ... 1
  elements        per facet: ele_tag (90 deg ply), ele_tag + 1 (0 deg ply)

Units: N, mm, MPa, tonne.

Usage:
  python layup_90_0.py [--n-sub 8]       # print ABD and check vs CLT
  from layup_90_0 import build_layup_90_0, add_laminate_elements
"""
import argparse
from contextlib import contextmanager

import openseespy.opensees as ops

import layup as _layup
from layup import add_laminate_elements, block_errors, clt_abd, format_matrix, make_plies, verify_abd
from ply_materials_0_90 import PLY, PLY_TAGS, define_materials
from ply_properties import local_axis

ANGLES = [90.0, 0.0]          # bottom to top [deg]
THICKNESS = [1.0, 1.0]        # [mm]
VOID_TAG = 7                  # nDMaterial tag of the zero-stiffness spacer
SEC_TAG = 1                   # sections SEC_TAG (90 deg ply), SEC_TAG + 1 (0 deg ply)
N_SUB = 8                     # layers per ply (16 through the laminate, D within ~0.4 %)

PLIES = make_plies(ANGLES, THICKNESS, PLY)


def build_layup_90_0(n_sub=N_SUB, sec_tag=SEC_TAG, void_tag=VOID_TAG, G_out=None):
    """Define the ply materials (tags 1-6, ply_materials_0_90), the void
    material and one LayeredShell per ply in the current model (ndf = 6).
    Returns [(sec_tag, local_axis)] bottom to top, for add_laminate_elements().
    G_out is accepted for interface compatibility; the plate wrappers use G13."""
    plate = define_materials()                       # {0.0: 3, 90.0: 6}
    ops.nDMaterial('ElasticIsotropic', void_tag, 0.0, 0.0)
    out = []
    for k, ply in enumerate(PLIES):
        layers = []
        for j, other in enumerate(PLIES):
            mat = plate[ply['theta']] if j == k else void_tag
            layers += [mat, other['t'] / n_sub] * n_sub
        ops.section('LayeredShell', sec_tag + k, len(layers) // 2, *layers)
        out.append((sec_tag + k, local_axis(ply['theta'])))
    return out


@contextmanager
def _use_builder():
    """Let layup.verify_abd() build this script's laminate (fixed tags)
    instead of layup.build_layup()'s generated tags."""
    original = _layup.build_layup
    _layup.build_layup = lambda plies, n_sub=None, G_out=None: build_layup_90_0(n_sub or N_SUB)
    try:
        yield
    finally:
        _layup.build_layup = original


def check(n_sub=N_SUB):
    """ABD of one 1 x 1 mm facet (two coincident ASDShellQ4) vs CLT."""
    with _use_builder():
        return verify_abd(PLIES, n_sub)


def main():
    ap = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument('--n-sub', type=int, default=N_SUB, help='layers per ply')
    args = ap.parse_args()

    if PLY['nu23_assumed']:
        print(f"NOTE: nu23 was not given; assumed nu23 = nu12 = {PLY['nu23']:.6g} "
              f"(G23 = {PLY['G23']:.6g} MPa)")
    print(f'\nLayup bottom (-z) to top (+z): [90/0], h = 2 mm, {args.n_sub} layers per ply')
    print(f'{"ply":>3} {"theta":>6} {"t":>5} {"z0":>5} {"z1":>5}  plate mat  section  -local')
    for k, q in enumerate(PLIES):
        print(f'{k + 1:>3} {q["theta"]:>6g} {q["t"]:>5g} {q["z0"]:>5g} {q["z1"]:>5g}  '
              f'{PLY_TAGS[q["theta"]][2]:>9}  {SEC_TAG + k:>7}  {local_axis(q["theta"])}')

    lbl = ['eps_xx', 'eps_yy', 'gam_xy', 'k_xx', 'k_yy', 'k_xy']
    K, ref = check(args.n_sub)
    print('\nABD from CLT [N/mm, N, N mm]:')
    print(format_matrix(ref, lbl))
    print('\nABD from OpenSeesPy (two coincident ASDShellQ4, -noeas):')
    print(format_matrix(K, lbl))
    err = block_errors(K, ref)
    print('\nOpenSeesPy vs CLT, max relative difference: '
          + ', '.join(f'{k} {v:.1e}' for k, v in err.items()))


if __name__ == '__main__':
    main()
