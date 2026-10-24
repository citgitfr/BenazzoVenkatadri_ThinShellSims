"""
Multi-angle CFRP laminate for OpenSeesPy shells, built from the ply
definitions in ply_properties.py (the PlyPropertyGenerator code).

Layup: plies listed bottom to top as (theta [deg], thickness [mm]). Bottom is
the -z side of the shell element's normal (n1->n2 x n1->n4); LayeredShell
layer 1 is the bottom layer (checked: the B matrix sign).

Why one element per ply: OpenSees 3.8 has no nDMaterial that takes a ply
angle, so a ply's angle is set on the element with ASDShellQ4 '-local', and
an element has one orientation for all its layers. Each ply therefore gets
its own ASDShellQ4 on the same four nodes, oriented at that ply's angle, with a
LayeredShell through the whole laminate thickness in order: that ply's
material at its own z position and a zero-stiffness spacer (void) in place of
every other ply. The elements share nodes, so their stiffnesses add to the
laminate's exact A, B, D (including A16, D16, B coupling), and with
'-corotational' they share the same kinematics at large deformation. This
needs '-noeas' (added by add_laminate_elements): ASDShellQ4's enhanced
strain modes are condensed per element and do not add across the per-ply
elements. Without EAS the element is stiffer on coarse meshes, so refine the
mesh until the result converges.

Through-thickness integration: LayeredShell evaluates each layer at its
mid-plane, so a ply of thickness t as one layer misses its own Q t^3/12 bending
term. Each ply is split into n_sub layers; the bending error is then about
1 / (n_layers_total)^2. By default n_sub = max(2, ceil(15 / n_plies)), i.e.
>= 15 layers through the laminate, D within ~0.5% of classical lamination
theory. verify_abd() reports the actual error.

Units: N, mm, MPa, tonne.

Usage:
  python layup.py --E1 135000 --E2 10000 --nu12 0.3 --G12 5000 [--nu23 0.45] [--rho 1.6e-9]
                  --angles 0 45 -45 90 --thickness 0.125 [--n-sub 4] [--check] [--emit calls.py]
  (--thickness: one value for all plies, or one per ply)
"""
import argparse
import math

import numpy as np

from ply_properties import (check_properties, define_ply_plate_material, local_axis,
                            ply_properties, reduced_stiffness, report, rotate_plane_stress)


def make_plies(angles, thicknesses, props):
    """List of ply dicts, bottom to top: theta, t, props (ply_properties dict)
    and z0, z1 measured from the laminate mid-surface."""
    if len(thicknesses) == 1:
        thicknesses = list(thicknesses) * len(angles)
    if len(thicknesses) != len(angles):
        raise ValueError(f'{len(angles)} angles but {len(thicknesses)} thicknesses')
    if not isinstance(props, (list, tuple)):
        props = [props] * len(angles)
    h = sum(thicknesses)
    plies, z = [], -h / 2
    for th, t, p in zip(angles, thicknesses, props):
        plies.append(dict(theta=th, t=t, props=p, z0=z, z1=z + t))
        z += t
    return plies


def default_n_sub(plies):
    return max(2, math.ceil(15 / len(plies)))


def clt_abd(plies):
    """6x6 ABD of the laminate from classical lamination theory, global frame,
    order [Nxx, Nyy, Nxy, Mxx, Myy, Mxy] vs [eps_xx, eps_yy, gamma_xy, k_xx, k_yy, k_xy]."""
    A, B, D = np.zeros((3, 3)), np.zeros((3, 3)), np.zeros((3, 3))
    for ply in plies:
        Q = rotate_plane_stress(reduced_stiffness(ply['props']), ply['theta'])
        z0, z1 = ply['z0'], ply['z1']
        A += Q * (z1 - z0)
        B += Q * (z1**2 - z0**2) / 2
        D += Q * (z1**3 - z0**3) / 3
    return np.block([[A, B], [B, D]])


def build_layup(plies, mat_tag=1, sec_tag=1, n_sub=None, G_out=None):
    """Define the ply materials and one LayeredShell section per ply in the
    current model (ndf = 6). Material tags start at mat_tag (void, then 3 per
    ply), section tags at sec_tag (one per ply). Returns a list, bottom to top,
    of (sec_tag, local_axis) for add_laminate_elements()."""
    import openseespy.opensees as ops
    n_sub = default_n_sub(plies) if n_sub is None else n_sub
    void = mat_tag
    ops.nDMaterial('ElasticIsotropic', void, 0.0, 0.0)

    plate_tags = []
    for k, ply in enumerate(plies):
        t3d = mat_tag + 1 + 3 * k
        plate_tags.append(define_ply_plate_material(ply['props'], t3d, t3d + 1, t3d + 2, G_out))

    layup = []
    for k, ply in enumerate(plies):
        # whole laminate in order: this ply's material, void for the others
        layers = []
        for j, other in enumerate(plies):
            mat = plate_tags[k] if j == k else void
            layers += [mat, other['t'] / n_sub] * n_sub
        ops.section('LayeredShell', sec_tag + k, len(layers) // 2, *layers)
        layup.append((sec_tag + k, local_axis(ply['theta'])))
    return layup


def add_laminate_elements(ele_tag, nodes, layup, *options, eas=False):
    """One ASDShellQ4 per ply on the same four nodes, each with its ply's
    '-local' orientation. options are passed on (e.g. '-corotational').
    Uses tags ele_tag ... ele_tag + n_plies - 1; returns the next free tag.

    '-noeas' is added unless eas=True. ASDShellQ4's enhanced assumed strain
    modes are condensed out per element, which is not additive across the
    per-ply elements (each has B != 0 on its own): with EAS the per-ply
    elements differ from one laminate element by 2% on a 20 x 2 strip mesh,
    falling with refinement. Without EAS they match it to ~1e-8."""
    import openseespy.opensees as ops
    if not eas:
        options = (*options, '-noeas')
    for k, (sec, axis) in enumerate(layup):
        ops.element('ASDShellQ4', ele_tag + k, *nodes, sec, *options, '-local', *axis)
    return ele_tag + len(layup)


def write_opensees_calls(path, plies, n_sub=None, G_out=None, options=()):
    """Write the exact OpenSeesPy calls that build_layup() and
    add_laminate_elements() make for one facet (nodes 1-4, element tags
    1 ... n_plies) to a Python file, one ops.* call per line. The calls are
    recorded while building the laminate in a scratch model, so the file is
    what the model actually gets. This is the input for the
    ABDFromOpenSeesPyLayup agent (abd_from_opensees.py)."""
    import openseespy.opensees as ops
    calls = []
    real = {name: getattr(ops, name) for name in ('nDMaterial', 'section', 'element')}

    def recorder(name):
        def call(*args):
            calls.append(f'ops.{name}({", ".join(repr(a) for a in args)})')
            return real[name](*args)
        return call

    ops.wipe()
    ops.model('basic', '-ndm', 3, '-ndf', 6)
    for i in range(4):
        ops.node(i + 1, float(i in (1, 2)), float(i in (2, 3)), 0.0)
    for name in real:
        setattr(ops, name, recorder(name))
    try:
        layup = build_layup(plies, n_sub=n_sub, G_out=G_out)
        add_laminate_elements(1, [1, 2, 3, 4], layup, *options)
    finally:
        for name, fn in real.items():
            setattr(ops, name, fn)
        ops.wipe()

    angles = '/'.join(f'{q["theta"]:g}' for q in plies)
    header = [f'# OpenSeesPy calls for the laminate [{angles}] (bottom to top), written by layup.py',
              '# One facet: nodes 1-4 (n1->n2 x n1->n4 is the +z normal), one ASDShellQ4 per ply.',
              'import openseespy.opensees as ops', '']
    with open(path, 'w') as f:
        f.write('\n'.join(header + calls) + '\n')


def verify_abd(plies, n_sub=None, G_out=None):
    """One 1 x 1 mm laminate element (n_plies coincident ASDShellQ4) in the
    global xy plane. Imposes each of the six generalized strains as nodal
    displacements/rotations and gets the stiffness by work, K_ij = d_i . r_j,
    which needs no sign conventions. Returns (K_fe, K_clt)."""
    import openseespy.opensees as ops
    nodes = [(0.0, 0.0), (1.0, 0.0), (1.0, 1.0), (0.0, 1.0)]
    e0 = 1e-6

    def field(ex, ey, g, kx, ky, kxy):
        # Kirchhoff plate: w = -(kx x^2 + ky y^2 + kxy x y) / 2,
        # rotation about x = dw/dy, about y = -dw/dx
        rows = []
        for x, y in nodes:
            w = -(kx * x * x + ky * y * y + kxy * x * y) / 2
            dwdx, dwdy = -(kx * x + kxy * y / 2), -(ky * y + kxy * x / 2)
            rows.append([ex * x + g / 2 * y, ey * y + g / 2 * x, w, dwdy, -dwdx, 0.0])
        return np.array(rows)

    d = [field(*e) for e in np.eye(6) * e0]
    r = []
    for di in d:
        ops.wipe()
        ops.model('basic', '-ndm', 3, '-ndf', 6)
        for i, (x, y) in enumerate(nodes, 1):
            ops.node(i, x, y, 0.0)
        layup = build_layup(plies, n_sub=n_sub, G_out=G_out)
        add_laminate_elements(1, [1, 2, 3, 4], layup)
        ops.timeSeries('Constant', 1)
        ops.pattern('Plain', 1, 1)
        for i in range(4):
            for dof in range(6):
                ops.sp(i + 1, dof + 1, di[i, dof])
        # FullGeneral crashes when every DOF is prescribed; UmfPack does not
        ops.system('UmfPack')
        ops.numberer('Plain')
        ops.constraints('Transformation')
        ops.integrator('LoadControl', 1.0)
        ops.algorithm('Linear')
        ops.analysis('Static')
        ops.analyze(1)
        ops.reactions()
        r.append(np.array([ops.nodeReaction(i + 1) for i in range(4)]))
    ops.wipe()
    K = np.array([[(d[i] * r[j]).sum() for j in range(6)] for i in range(6)]) / e0**2
    return K, clt_abd(plies)


def format_matrix(M, labels):
    M = np.where(np.abs(M) < 1e-12 * np.abs(M).max(), 0.0, M)   # round-off to 0
    head = ' ' * 6 + ''.join(f'{l:>13}' for l in labels)
    body = [f'{l:<6}' + ''.join(f' {v:>12.6g}' for v in row) for l, row in zip(labels, M)]
    return '\n'.join([head] + body)


def block_errors(K, ref):
    """Max relative error in each of A, B, D (relative to the largest entry of
    that block; B relative to the A, D scale when B = 0)."""
    out = {}
    for name, (i, j) in dict(A=(0, 0), B=(0, 3), D=(3, 3)).items():
        blk, rblk = K[i:i + 3, j:j + 3], ref[i:i + 3, j:j + 3]
        scale = np.abs(rblk).max()
        if scale < 1e-9 * np.abs(ref).max():   # symmetric laminate, B = 0
            scale = np.sqrt(np.abs(ref[:3, :3]).max() * np.abs(ref[3:, 3:]).max())
        out[name] = np.abs(blk - rblk).max() / scale
    return out


def main():
    ap = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument('--E1', type=float, required=True, help='fibre-direction modulus [MPa]')
    ap.add_argument('--E2', type=float, required=True, help='transverse modulus [MPa]')
    ap.add_argument('--nu12', type=float, required=True, help='major in-plane Poisson ratio')
    ap.add_argument('--G12', type=float, required=True, help='in-plane shear modulus [MPa]')
    ap.add_argument('--nu23', type=float, default=None, help='transverse Poisson ratio (default: nu12)')
    ap.add_argument('--rho', type=float, default=0.0, help='density [t/mm^3]')
    ap.add_argument('--angles', type=float, nargs='+', required=True,
                    help='ply angles bottom to top, from global x to fibre, CCW about +z [deg]')
    ap.add_argument('--thickness', type=float, nargs='+', required=True,
                    help='ply thickness [mm]: one value for all plies, or one per ply')
    ap.add_argument('--n-sub', type=int, default=None, help='layers per ply (default: max(2, ceil(15 / n_plies)))')
    ap.add_argument('--G-out', type=float, default=None,
                    help='transverse shear modulus for PlateFromPlaneStress [MPa] (default: G13)')
    ap.add_argument('--check', action='store_true',
                    help='build the laminate on one element in OpenSeesPy and compare its ABD with CLT')
    ap.add_argument('--emit', metavar='FILE', default=None,
                    help='write the OpenSeesPy calls for one facet to FILE (input for abd_from_opensees.py)')
    args = ap.parse_args()

    p = ply_properties(args.E1, args.E2, args.nu12, args.G12, args.nu23, args.rho)
    print('Ply material (all plies):')
    print(report(p))
    if p['nu23_assumed']:
        print(f"\nNOTE: nu23 was not given; assumed nu23 = nu12 = {p['nu23']:.6g} "
              f"(so G23 = {p['G23']:.6g} MPa).")
    for msg in check_properties(p):
        print(f'WARNING: {msg}')

    plies = make_plies(args.angles, args.thickness, p)
    n_sub = default_n_sub(plies) if args.n_sub is None else args.n_sub
    h = plies[-1]['z1'] - plies[0]['z0']
    print(f'\nLayup, bottom (-z) to top (+z): [{"/".join(f"{q["theta"]:g}" for q in plies)}], '
          f'h = {h:.6g} mm, {n_sub} layers per ply')
    print(f'{"ply":>3} {"theta":>7} {"t":>8} {"z0":>9} {"z1":>9}   section  -local')
    for k, q in enumerate(plies):
        ax = ', '.join(f'{a:.4g}' for a in local_axis(q['theta']))
        print(f'{k + 1:>3} {q["theta"]:>7g} {q["t"]:>8.4g} {q["z0"]:>9.4g} {q["z1"]:>9.4g}   {k + 1:>7}  ({ax})')

    lbl = ['eps_xx', 'eps_yy', 'gam_xy', 'k_xx', 'k_yy', 'k_xy']
    print('\nLaminate ABD from classical lamination theory [N/mm, N, N mm]:')
    print(format_matrix(clt_abd(plies), lbl))

    if args.check:
        K, ref = verify_abd(plies, n_sub, args.G_out)
        err = block_errors(K, ref)
        print('\nOpenSeesPy laminate element vs CLT, max relative difference: '
              + ', '.join(f'{k} {v:.1e}' for k, v in err.items()))

    if args.emit:
        write_opensees_calls(args.emit, plies, n_sub, args.G_out)
        print(f'\nOpenSeesPy calls for one facet written to {args.emit}')


if __name__ == '__main__':
    main()
