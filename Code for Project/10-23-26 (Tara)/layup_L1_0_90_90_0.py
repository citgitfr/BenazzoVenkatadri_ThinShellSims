"""
Four-ply symmetric CFRP laminate [0/90/90/0] for OpenSeesPy shells, built from the
existing files in this folder:
  ply_materials_139GPa.py - ply constants and material tags (0: 11/12/13,
                            90: 14/15/16, 45: 17/18/19, -45: 20/21/22;
                            ElasticOrthotropic/PlaneStress/PlateFromPlaneStress)
  layup.py                - coincident-element approach, CLT, ABD check

Ply: E1 = 139500 MPa, E2 = 6101 MPa, G12 = 2574 MPa, nu12 = 0.275
(GPa x 1000 in ply_materials_139GPa.py), nu21 = nu12 E2 / E1 = 0.0120271;
nu23 not given -> nu23 = nu12 = 0.275 assumed (G23 = 2392.55 MPa).
Every ply t = 0.054 mm, h = 0.216 mm.

Layup as given (top to bottom) [0/90/90/0]; it is symmetric, so bottom (-z) to
top (+z) is the same list. Ply 1 = bottom (-z) ply, z from the mid-surface:
  ply 1:    0 deg, z = -0.108 ... -0.054 mm, plate mat 13, section 101, '-local' 1, 0, 0
  ply 2:   90 deg, z = -0.054 ... +0.000 mm, plate mat 16, section 102, '-local' 0, 1, 0
  ply 3:   90 deg, z = +0.000 ... +0.054 mm, plate mat 16, section 102, '-local' 0, 1, 0
  ply 4:    0 deg, z = +0.054 ... +0.108 mm, plate mat 13, section 101, '-local' 1, 0, 0
Bottom = -z side of the element normal n1->n2 x n1->n4. Angle from global x
to the fibre, CCW about +z.

Why coincident elements: an ASDShellQ4 has one '-local' orientation for all
its layers, so each fibre angle gets its own ASDShellQ4 on the same four
nodes. Plies with the SAME angle share one element: its LayeredShell spans
the full 0.216 mm in ply order with the angle's plate material at each of
those plies' z positions and a zero-stiffness void in place of the other
plies. This is exact: with '-noeas' the element stiffness is the integral of
B^T (section stiffness) B, linear in the section stiffness, so one element
holding both same-angle plies equals two elements holding one each (same
'-local', same kinematics, also with '-corotational'). The elements' stiffnesses
add to the exact laminate A, B, D (incl. A16/A26/D16/D26). '-noeas' is added
by add_laminate_elements (EAS is condensed per element and does not add across
coincident elements); without EAS the element is stiffer on coarse meshes, so
refine the mesh until results converge.

Tags:
  nDMaterial 11-22  ply materials (ply_materials_139GPa.define_materials)
  nDMaterial 23      void (ElasticIsotropic, E = 0)
  section 101       0 deg plies 1 and 4: plate mat 13 at their z, void elsewhere
  section 102       90 deg plies 2 and 3: plate mat 16 at their z, void elsewhere
  elements          per facet: ele_tag ... ele_tag + 1 (one per section, order above)

Each ply is split into n_sub layers (default 8, 32 layers through h); D error
~ 1 / (total layers)^2.

Units: N, mm, MPa, tonne.

Usage:
  python layup_L1_0_90_90_0.py [--n-sub 8]       # print layup, ABD and check vs CLT
  from layup_L1_0_90_90_0 import build_layup_L1, add_laminate_elements
  layup = build_layup_L1()                # materials + void + sections
  ele = 1
  for quad in quads:                  # each mesh facet
      ele = add_laminate_elements(ele, quad, layup, '-corotational')
  # If several layup scripts share one model, call the second one with
  # define_mats=False (materials 11-22 and the void already exist).
"""
import argparse
from contextlib import contextmanager

import openseespy.opensees as ops

import layup as _layup
from layup import add_laminate_elements, block_errors, format_matrix, make_plies, verify_abd
from ply_materials_139GPa import PLY, PLY_T, PLY_TAGS, define_materials
from ply_properties import local_axis

NAME = '[0/90/90/0]'
ANGLES = [0.0, 90.0, 90.0, 0.0]   # bottom to top [deg] (symmetric: same as top to bottom)
THICKNESS = [PLY_T]                # [mm], all plies
VOID_TAG = 23                     # nDMaterial tag of the zero-stiffness spacer
SEC_TAG = 101                    # sections SEC_TAG, SEC_TAG + 1, one per distinct angle
N_SUB = 8                          # layers per ply

PLIES = make_plies(ANGLES, THICKNESS, PLY)
GROUPS = list(dict.fromkeys(ANGLES))   # distinct angles, first appearance bottom to top


def build_layup_L1(n_sub=N_SUB, sec_tag=SEC_TAG, void_tag=VOID_TAG, define_mats=True, G_out=None):
    """Define the ply materials (tags 11-22), the void material and one
    LayeredShell per distinct ply angle in the current model (ndf = 6).
    Returns [(sec_tag, local_axis)], one per element, for add_laminate_elements().
    define_mats=False skips the materials (already defined in the model).
    G_out is accepted for interface compatibility; the plate wrappers use G13."""
    if define_mats:
        plate = define_materials()
        ops.nDMaterial('ElasticIsotropic', void_tag, 0.0, 0.0)
    else:
        plate = {theta: tags[2] for theta, tags in PLY_TAGS.items()}
    out = []
    for g, theta in enumerate(GROUPS):
        layers = []
        for ply in PLIES:
            mat = plate[ply['theta']] if ply['theta'] == theta else void_tag
            layers += [mat, ply['t'] / n_sub] * n_sub
        ops.section('LayeredShell', sec_tag + g, len(layers) // 2, *layers)
        out.append((sec_tag + g, local_axis(theta)))
    return out


@contextmanager
def _use_builder():
    """Let layup.verify_abd() build this script's laminate (fixed tags)."""
    original = _layup.build_layup
    _layup.build_layup = lambda plies, n_sub=None, G_out=None: build_layup_L1(n_sub or N_SUB)
    try:
        yield
    finally:
        _layup.build_layup = original


def check(n_sub=N_SUB):
    """ABD of one 1 x 1 mm facet (coincident ASDShellQ4, -noeas) vs CLT."""
    with _use_builder():
        return verify_abd(PLIES, n_sub)


def main():
    ap = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument('--n-sub', type=int, default=N_SUB, help='layers per ply')
    args = ap.parse_args()

    if PLY['nu23_assumed']:
        print(f"NOTE: nu23 was not given; assumed nu23 = nu12 = {PLY['nu23']:.6g} "
              f"(G23 = {PLY['G23']:.6g} MPa)")
    h = sum(q['t'] for q in PLIES)
    print(f'\nLayup {NAME}, bottom (-z) to top (+z) (ply 1 = bottom), h = {h:g} mm, '
          f'{args.n_sub} layers per ply')
    print(f'{"ply":>3} {"theta":>6} {"z0":>7} {"z1":>7}  plate mat  section  element  -local')
    for k, q in enumerate(PLIES):
        g = GROUPS.index(q['theta'])
        print(f'{k + 1:>3} {q["theta"]:>6g} {q["z0"]:>7.3f} {q["z1"]:>7.3f}  '
              f'{PLY_TAGS[q["theta"]][2]:>9}  {SEC_TAG + g:>7}  ele+{g:<3}  {local_axis(q["theta"])}')

    lbl = ['eps_xx', 'eps_yy', 'gam_xy', 'k_xx', 'k_yy', 'k_xy']
    K, ref = check(args.n_sub)
    print('\nABD from CLT [N/mm, N, N mm]:')
    print(format_matrix(ref, lbl))
    print(f'\nABD from OpenSeesPy ({len(GROUPS)} coincident ASDShellQ4, -noeas):')
    print(format_matrix(K, lbl))
    err = block_errors(K, ref)
    print('\nOpenSeesPy vs CLT, max relative difference: '
          + ', '.join(f'{k} {v:.1e}' for k, v in err.items()))


if __name__ == '__main__':
    main()
