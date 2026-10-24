"""
Material properties of a transversely isotropic CFRP ply at an angle theta to
the global x axis, and the matching OpenSeesPy materials for a thin shell.

Ply principal axes: 1 = fibre, 2 = in-plane transverse, 3 = through-thickness.
Inputs: E1, E2, nu12, G12, ply angle theta and optionally nu23. Transverse
isotropy (2-3 plane is the plane of isotropy) fills in the rest:
  E3 = E2,  G13 = G12,  nu13 = nu12,  G23 = E2 / (2 (1 + nu23))
If nu23 is not given it is taken equal to nu12 and a note is printed.

Rotation: theta is the angle from global x to the fibre direction 1, positive
counter-clockwise about global +z (right-handed). The stiffness is rotated to
the global frame both as the 6x6 3D matrix C_bar and as the 3x3 plane-stress
(reduced) matrix Q_bar, in OpenSees component order
  3D: [xx, yy, zz, xy, yz, xz],  plane stress: [xx, yy, xy]
with engineering shear strains.

OpenSees materials (thin plate, plane stress):
  nDMaterial('ElasticOrthotropic', t3d, E1, E2, E3, nu12, nu23, nu31, G12, G23, G13, rho)
  nDMaterial('PlaneStress', tps, t3d)                      # condenses sigma_33 = 0
  nDMaterial('PlateFromPlaneStress', tplate, tps, G_out)   # adds transverse shear
The plate material is used in section('LayeredShell', ...). OpenSees 3.8 has no
nDMaterial that takes a ply angle or a full anisotropic matrix, so the
rotation is applied by orienting the shell element's material axes with
  element('ASDShellQ4', ..., '-local', cos(theta), sin(theta), 0)
verify_membrane() checks that this reproduces t * Q_bar exactly. Every layer
of an element shares that one orientation.

OpenSees convention for ElasticOrthotropic (checked on a single stdBrick under
uniaxial stress): v_ij = -eps_j / eps_i under stress in i. So vxy = nu12,
vyz = nu23, but vzx = nu31 = nu13 * E3 / E1 (the small one), NOT nu13.

PlateFromPlaneStress takes a single isotropic transverse shear modulus G_out.
The ply has G13 and G23; G_out defaults to G13 (= G12). For a thin plate the
transverse shear stiffness has almost no effect on the response.

Units: N, mm, MPa, tonne (density in t/mm^3), as in the rest of the project.

Usage:
  python ply_properties.py --E1 135000 --E2 10000 --nu12 0.3 --G12 5000 --theta 45 [--nu23 0.45] [--rho 1.6e-9] [--tag 1] [--G-out 5000] [--check]
"""
import argparse

import numpy as np


def ply_properties(E1, E2, nu12, G12, nu23=None, rho=0.0):
    """Full set of transversely isotropic ply constants. Returns a dict;
    'nu23_assumed' is True when nu23 was not given and set to nu12."""
    nu23_assumed = nu23 is None
    if nu23_assumed:
        nu23 = nu12

    E3 = E2
    G13 = G12
    nu13 = nu12
    G23 = E2 / (2 * (1 + nu23))

    p = dict(E1=E1, E2=E2, E3=E3, nu12=nu12, nu13=nu13, nu23=nu23,
             G12=G12, G13=G13, G23=G23, rho=rho, nu23_assumed=nu23_assumed)
    # minor (reciprocal) Poisson's ratios, nu_ji = nu_ij E_j / E_i
    p['nu21'] = nu12 * E2 / E1
    p['nu31'] = nu13 * E3 / E1
    p['nu32'] = nu23 * E3 / E2
    return p


def check_properties(p):
    """Physical admissibility: positive moduli and a positive-definite
    compliance matrix. Returns a list of problems (empty if fine)."""
    problems = [f'{k} = {p[k]} must be > 0'
                for k in ('E1', 'E2', 'E3', 'G12', 'G13', 'G23') if p[k] <= 0]
    for ij, ji in (('nu12', 'nu21'), ('nu13', 'nu31'), ('nu23', 'nu32')):
        if p[ij] * p[ji] >= 1:
            problems.append(f'{ij} * {ji} = {p[ij] * p[ji]:.4g} must be < 1')
    det = (1 - p['nu12'] * p['nu21'] - p['nu23'] * p['nu32'] - p['nu13'] * p['nu31']
           - 2 * p['nu21'] * p['nu32'] * p['nu13'])
    if det <= 0:
        problems.append(f'1 - nu12 nu21 - nu23 nu32 - nu13 nu31 - 2 nu21 nu32 nu13 = {det:.4g} must be > 0')
    return problems


# --- stiffness matrices ------------------------------------------------------

# Voigt index pairs in OpenSees order [11, 22, 33, 12, 23, 13]
VOIGT = [(0, 0), (1, 1), (2, 2), (0, 1), (1, 2), (0, 2)]


def stiffness_3d(p):
    """6x6 stiffness in the ply principal axes (engineering shear strains)."""
    S = np.zeros((6, 6))
    S[0, 0], S[1, 1], S[2, 2] = 1 / p['E1'], 1 / p['E2'], 1 / p['E3']
    S[0, 1] = S[1, 0] = -p['nu12'] / p['E1']
    S[0, 2] = S[2, 0] = -p['nu13'] / p['E1']
    S[1, 2] = S[2, 1] = -p['nu23'] / p['E2']
    S[3, 3], S[4, 4], S[5, 5] = 1 / p['G12'], 1 / p['G23'], 1 / p['G13']
    return np.linalg.inv(S)


def reduced_stiffness(p):
    """3x3 plane-stress (sigma_33 = 0) stiffness Q in the ply axes."""
    d = 1 - p['nu12'] * p['nu21']
    return np.array([[p['E1'] / d, p['nu12'] * p['E2'] / d, 0],
                     [p['nu12'] * p['E2'] / d, p['E2'] / d, 0],
                     [0, 0, p['G12']]])


def rotation(theta_deg):
    """Rotation matrix taking ply-axis components to global components:
    column i is ply axis i expressed in the global frame."""
    c, s = np.cos(np.radians(theta_deg)), np.sin(np.radians(theta_deg))
    return np.array([[c, -s, 0], [s, c, 0], [0, 0, 1]])


def rotate_3d(C, theta_deg):
    """Rotate a 6x6 Voigt stiffness (engineering shear) from the ply axes to
    the global frame. With engineering shear strains C_IJ = C_ijkl, so the
    rotation is done on the 4th-order tensor."""
    Ct = np.zeros((3, 3, 3, 3))
    for I, (i, j) in enumerate(VOIGT):
        for J, (k, l) in enumerate(VOIGT):
            for a, b in {(i, j), (j, i)}:
                for c, d in {(k, l), (l, k)}:
                    Ct[a, b, c, d] = C[I, J]
    R = rotation(theta_deg)
    Ct = np.einsum('ip,jq,kr,ls,pqrs->ijkl', R, R, R, R, Ct)
    return np.array([[Ct[i, j, k, l] for (k, l) in VOIGT] for (i, j) in VOIGT])


def rotate_plane_stress(Q, theta_deg):
    """Rotate a 3x3 plane-stress stiffness [xx, yy, xy] from the ply axes to
    the global frame: Q_bar = T^-1 Q R T R^-1 (Reuter matrix R = diag(1, 1, 2)
    converts between tensor and engineering shear strain)."""
    c, s = np.cos(np.radians(theta_deg)), np.sin(np.radians(theta_deg))
    T = np.array([[c * c, s * s, 2 * c * s],
                  [s * s, c * c, -2 * c * s],
                  [-c * s, c * s, c * c - s * s]])
    Rr = np.diag([1.0, 1.0, 2.0])
    return np.linalg.inv(T) @ Q @ Rr @ T @ np.linalg.inv(Rr)


def condense_plane_stress(C):
    """Plane-stress stiffness [xx, yy, xy] from a 6x6 stiffness by imposing
    sigma_zz = sigma_yz = sigma_xz = 0 (what the PlaneStress wrapper does)."""
    S = np.linalg.inv(C)
    return np.linalg.inv(S[np.ix_([0, 1, 3], [0, 1, 3])])


def local_axis(theta_deg):
    """Ply fibre direction in global coordinates, for ASDShellQ4 '-local'."""
    return tuple(round(float(v), 15) + 0.0 for v in rotation(theta_deg)[:, 0])   # 6e-17 -> 0


# --- OpenSees ----------------------------------------------------------------

def opensees_args(p):
    """Positional arguments after the tag for ElasticOrthotropic, in the
    principal axes x = 1, y = 2, z = 3."""
    return (p['E1'], p['E2'], p['E3'],
            p['nu12'], p['nu23'], p['nu31'],
            p['G12'], p['G23'], p['G13'],
            p['rho'])


def define_ply_material(tag, p):
    """Create the ply as an ElasticOrthotropic nDMaterial in the current
    OpenSeesPy model."""
    import openseespy.opensees as ops
    ops.nDMaterial('ElasticOrthotropic', tag, *opensees_args(p))


def define_ply_plate_material(p, tag3d, tag_ps, tag_plate, G_out=None):
    """Create ElasticOrthotropic -> PlaneStress -> PlateFromPlaneStress in the
    current model (ndf = 6). Returns the plate material tag, for use in
    section('LayeredShell', ...). The ply angle is applied on the element with
    '-local', *local_axis(theta)."""
    import openseespy.opensees as ops
    define_ply_material(tag3d, p)
    ops.nDMaterial('PlaneStress', tag_ps, tag3d)
    ops.nDMaterial('PlateFromPlaneStress', tag_plate, tag_ps, p['G13'] if G_out is None else G_out)
    return tag_plate


def opensees_commands(p, theta_deg, tag=1, G_out=None):
    """The OpenSeesPy calls as lines of Python, for pasting into a model.
    Tags: tag (3D), tag + 1 (plane stress), tag + 2 (plate)."""
    args = ', '.join(f'{a:.6g}' for a in opensees_args(p))
    G = p['G13'] if G_out is None else G_out
    x1, x2, x3 = local_axis(theta_deg)
    return '\n'.join([
        f"ops.nDMaterial('ElasticOrthotropic', {tag}, {args})",
        f"ops.nDMaterial('PlaneStress', {tag + 1}, {tag})",
        f"ops.nDMaterial('PlateFromPlaneStress', {tag + 2}, {tag + 1}, {G:.6g})",
        f"# ply at theta = {theta_deg:g} deg: orient the shell element's material axes with",
        f"# ops.element('ASDShellQ4', eleTag, n1, n2, n3, n4, secTag, '-local', {x1:.6g}, {x2:.6g}, {x3:.6g})",
    ])


def verify_membrane(p, theta_deg, t=0.125, G_out=None):
    """One ASDShellQ4 element (1 x 1 mm, in the global xy plane) with a
    single-ply LayeredShell, material axes set by '-local' at theta. Imposes
    the three unit membrane strains, reads the in-plane stiffness from the edge
    reactions and compares it with t * Q_bar. Returns (A_fe, A_ref)."""
    import openseespy.opensees as ops
    nodes = [(0, 0), (1, 0), (1, 1), (0, 1)]
    A = np.zeros((3, 3))
    e0 = 1e-6
    for k, (ex, ey, g) in enumerate(np.eye(3) * e0):
        ops.wipe()
        ops.model('basic', '-ndm', 3, '-ndf', 6)
        define_ply_plate_material(p, 1, 2, 3, G_out)
        ops.section('LayeredShell', 1, 3, 3, t / 3, 3, t / 3, 3, t / 3)
        for i, (x, y) in enumerate(nodes, 1):
            ops.node(i, float(x), float(y), 0.0)
            ops.fix(i, 0, 0, 1, 1, 1, 1)
        ops.element('ASDShellQ4', 1, 1, 2, 3, 4, 1, '-local', *local_axis(theta_deg))
        ops.timeSeries('Constant', 1)
        ops.pattern('Plain', 1, 1)
        for i, (x, y) in enumerate(nodes, 1):
            ops.sp(i, 1, ex * x + g / 2 * y)
            ops.sp(i, 2, ey * y + g / 2 * x)
        # FullGeneral crashes when every DOF is prescribed; UmfPack does not
        ops.system('UmfPack')
        ops.numberer('Plain')
        ops.constraints('Transformation')
        ops.integrator('LoadControl', 1.0)
        ops.algorithm('Linear')
        ops.analysis('Static')
        ops.analyze(1)
        ops.reactions()
        R = ops.nodeReaction
        # resultants per unit length on the edges x = 1 (Nxx, Nxy) and y = 1 (Nyy)
        A[:, k] = [R(2, 1) + R(3, 1), R(3, 2) + R(4, 2), R(2, 2) + R(3, 2)]
    ops.wipe()
    return A / e0, t * rotate_plane_stress(reduced_stiffness(p), theta_deg)


# --- report ------------------------------------------------------------------

def report(p):
    rows = [('E1', 'MPa', 'input'), ('E2', 'MPa', 'input'), ('E3', 'MPa', '= E2'),
            ('G12', 'MPa', 'input'), ('G13', 'MPa', '= G12'),
            ('G23', 'MPa', '= E2 / (2 (1 + nu23))'),
            ('nu12', '', 'input'), ('nu13', '', '= nu12'),
            ('nu23', '', '= nu12 (assumed)' if p['nu23_assumed'] else 'input'),
            ('nu21', '', '= nu12 E2 / E1'), ('nu31', '', '= nu13 E3 / E1'),
            ('nu32', '', '= nu23 E3 / E2'), ('rho', 't/mm^3', 'input')]
    lines = [f'{k:<5} {p[k]:>12.6g} {u:<7} {src}' for k, u, src in rows]
    return '\n'.join(lines)


def format_matrix(M, labels):
    head = ' ' * 6 + ''.join(f'{l:>12}' for l in labels)
    body = [f'{l:<6}' + ''.join(f'{v:>12.6g}' for v in row) for l, row in zip(labels, M)]
    return '\n'.join([head] + body)


def main():
    ap = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument('--E1', type=float, required=True, help='fibre-direction modulus [MPa]')
    ap.add_argument('--E2', type=float, required=True, help='transverse modulus [MPa]')
    ap.add_argument('--nu12', type=float, required=True, help='major in-plane Poisson ratio')
    ap.add_argument('--G12', type=float, required=True, help='in-plane shear modulus [MPa]')
    ap.add_argument('--theta', type=float, required=True,
                    help='ply angle from global x to the fibre, CCW about +z [deg]')
    ap.add_argument('--nu23', type=float, default=None, help='transverse Poisson ratio (default: nu12)')
    ap.add_argument('--rho', type=float, default=0.0, help='density [t/mm^3]')
    ap.add_argument('--tag', type=int, default=1, help='first nDMaterial tag (uses tag, tag+1, tag+2)')
    ap.add_argument('--G-out', type=float, default=None,
                    help='transverse shear modulus for PlateFromPlaneStress [MPa] (default: G13)')
    ap.add_argument('--check', action='store_true',
                    help='also build the materials in OpenSeesPy and check t * Q_bar on one shell element')
    args = ap.parse_args()

    p = ply_properties(args.E1, args.E2, args.nu12, args.G12, args.nu23, args.rho)
    th = args.theta
    print(report(p))
    if p['nu23_assumed']:
        print(f"\nNOTE: nu23 was not given; assumed nu23 = nu12 = {p['nu23']:.6g} "
              f"(so G23 = {p['G23']:.6g} MPa).")
    for msg in check_properties(p):
        print(f'WARNING: {msg}')

    C_bar = rotate_3d(stiffness_3d(p), th)
    Q_bar = rotate_plane_stress(reduced_stiffness(p), th)
    print(f'\nPly angle theta = {th:g} deg (global x to fibre, CCW about +z)')
    print('\n3D stiffness in the global frame, C_bar [MPa]:')
    print(format_matrix(C_bar, ['xx', 'yy', 'zz', 'xy', 'yz', 'xz']))
    print('\nPlane-stress stiffness in the global frame, Q_bar [MPa]:')
    print(format_matrix(Q_bar, ['xx', 'yy', 'xy']))
    print('\n' + opensees_commands(p, th, args.tag, args.G_out))

    if args.check:
        err = np.abs(condense_plane_stress(C_bar) - Q_bar).max() / np.abs(Q_bar).max()
        print(f'\nplane-stress condensation of C_bar vs Q_bar: max rel. difference {err:.1e}')
        A_fe, A_ref = verify_membrane(p, th, G_out=args.G_out)
        err = np.abs(A_fe - A_ref).max() / np.abs(A_ref).max()
        print(f'OpenSeesPy ASDShellQ4 -local membrane stiffness vs t * Q_bar: max rel. difference {err:.1e}')


if __name__ == '__main__':
    main()
