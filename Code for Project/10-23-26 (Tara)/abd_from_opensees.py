"""
ABD matrix of a shell laminate as OpenSeesPy actually sees it, measured from
the OpenSeesPy calls that define it (nDMaterial, section, element).

Independent of layup.py and ply_properties.py: only numpy and openseespy are
used. The calls are read from a Python file (e.g. written by
`layup.py --emit`, or pasted from the PlyPropertyGenerator output), parsed
with ast (nothing in the file is executed), and replayed in a fresh model.
Only ops.nDMaterial, ops.section and ops.element calls are used; anything else
(nodes, fixes, analysis) is ignored. The elements of one facet (all elements
on the same four nodes as the first element) are put on a 1 x 1 mm square
patch in the global xy plane.

Measurement: the six generalized strains [eps_xx, eps_yy, gamma_xy, k_xx,
k_yy, k_xy] are imposed one at a time as exact nodal displacements and
rotations of a Kirchhoff plate field (constant membrane strain and curvature),
and the stiffness is taken from work: ABD_ij = d_i . r_j / area, with d_i the
imposed nodal displacement vector of strain i and r_j the nodal reactions of
strain j. This needs no sign conventions for OpenSees force or moment output.

Units: N, mm, MPa. A [N/mm], B [N], D [N mm].

Usage:
  python abd_from_opensees.py calls.py [--save abd.csv]
"""
import argparse
import ast
import math

import numpy as np
import openseespy.opensees as ops

PATCH = [(0.0, 0.0), (1.0, 0.0), (1.0, 1.0), (0.0, 1.0)]   # CCW: normal +z
STRAINS = ['eps_xx', 'eps_yy', 'gam_xy', 'k_xx', 'k_yy', 'k_xy']


# --- reading the calls --------------------------------------------------------

_BINOPS = {ast.Add: lambda a, b: a + b, ast.Sub: lambda a, b: a - b, ast.Mult: lambda a, b: a * b,
           ast.Div: lambda a, b: a / b, ast.Pow: lambda a, b: a ** b}


def _value(node):
    """Value of a literal expression: numbers, strings, lists/tuples and
    + - * / ** on them (so *[mat, t] * n works). No names or calls."""
    if isinstance(node, ast.Constant):
        return node.value
    if isinstance(node, (ast.List, ast.Tuple)):
        out = []
        for e in node.elts:
            out += list(_value(e.value)) if isinstance(e, ast.Starred) else [_value(e)]
        return out
    if isinstance(node, ast.UnaryOp) and isinstance(node.op, (ast.USub, ast.UAdd)):
        v = _value(node.operand)
        return -v if isinstance(node.op, ast.USub) else v
    if isinstance(node, ast.BinOp) and type(node.op) in _BINOPS:
        return _BINOPS[type(node.op)](_value(node.left), _value(node.right))
    raise ValueError


def read_calls(path):
    """List of (name, args, line) for every ops.nDMaterial / ops.section /
    ops.element call in the file, in order. Arguments must be literal
    expressions (no variables)."""
    tree = ast.parse(open(path).read(), path)
    calls = []
    for node in ast.walk(tree):
        if (isinstance(node, ast.Call) and isinstance(node.func, ast.Attribute)
                and node.func.attr in ('nDMaterial', 'section', 'element')):
            args = []
            try:
                for a in node.args:
                    args += list(_value(a.value)) if isinstance(a, ast.Starred) else [_value(a)]
            except ValueError:
                raise ValueError(f'line {node.lineno}: arguments of ops.{node.func.attr} must be '
                                 'literal numbers/strings (no variables)') from None
            calls.append((node.func.attr, args, node.lineno))
    return sorted(calls, key=lambda c: c[2])


def facet_elements(calls):
    """Element calls of the first facet (same four nodes as the first element)."""
    elements = [args for name, args, _ in calls if name == 'element']
    if not elements:
        raise ValueError('no ops.element calls found')
    nodes = elements[0][2:6]
    facet = [a for a in elements if a[2:6] == nodes]
    return facet, len(elements) - len(facet)


def describe(calls, facet):
    """Per-element summary: angle of the '-local' axis, options, section
    thickness and where its non-void layers are (void = ElasticIsotropic with
    E = 0)."""
    mats = {args[1]: args for name, args, _ in calls if name == 'nDMaterial'}
    secs = {args[1]: args for name, args, _ in calls if name == 'section'}
    rows = []
    for a in facet:
        opts = [x for x in a[7:] if isinstance(x, str)]
        if '-local' in a:
            i = a.index('-local')
            angle = math.degrees(math.atan2(a[i + 2], a[i + 1]))
        else:
            angle = None
        sec = secs.get(a[6])
        if sec is None or sec[0] != 'LayeredShell':
            rows.append(dict(ele=a[1], sec=a[6], angle=angle, opts=opts, h=None, z=None, mats=None))
            continue
        layers = list(zip(sec[3::2], sec[4::2]))
        h = sum(t for _, t in layers)
        z, solid, used = -h / 2, [], []
        for m, t in layers:
            md = mats.get(m)
            void = md is not None and md[0] == 'ElasticIsotropic' and md[2] == 0
            if not void:
                solid.append((z, z + t))
                used.append(m)
            z += t
        zr = (min(s[0] for s in solid), max(s[1] for s in solid)) if solid else None
        rows.append(dict(ele=a[1], sec=a[6], angle=angle, opts=opts, h=h, z=zr,
                         n_layers=len(layers), mats=sorted(set(used))))
    return rows


# --- measuring ABD ------------------------------------------------------------

def kirchhoff_field(e):
    """Nodal [ux, uy, uz, rx, ry, rz] on the patch for generalized strain e:
    u = eps_xx x + gam/2 y, v = eps_yy y + gam/2 x,
    w = -(k_xx x^2 + k_yy y^2 + k_xy x y)/2, rx = dw/dy, ry = -dw/dx."""
    ex, ey, g, kx, ky, kxy = e
    rows = []
    for x, y in PATCH:
        w = -(kx * x * x + ky * y * y + kxy * x * y) / 2
        dwdx, dwdy = -(kx * x + kxy * y / 2), -(ky * y + kxy * x / 2)
        rows.append([ex * x + g / 2 * y, ey * y + g / 2 * x, w, dwdy, -dwdx, 0.0])
    return np.array(rows)


def build(calls, facet):
    ops.wipe()
    ops.model('basic', '-ndm', 3, '-ndf', 6)
    for i, (x, y) in enumerate(PATCH, 1):
        ops.node(i, x, y, 0.0)
    for name, args, _ in calls:
        if name in ('nDMaterial', 'section'):
            getattr(ops, name)(*args)
    # ABD is the small-strain section stiffness: '-corotational' would add
    # geometric terms of the order of the imposed strain, so it is dropped
    for a in facet:
        ops.element(a[0], a[1], 1, 2, 3, 4, *[x for x in a[6:] if x != '-corotational'])


def measure_abd(calls, e0=1e-6):
    """6x6 ABD of one facet, from imposed strains and reactions."""
    facet, _ = facet_elements(calls)
    d = [kirchhoff_field(e) for e in np.eye(6) * e0]
    r = []
    for di in d:
        build(calls, facet)
        ops.timeSeries('Constant', 1)
        ops.pattern('Plain', 1, 1)
        for i in range(4):
            for dof in range(6):
                ops.sp(i + 1, dof + 1, di[i, dof])
        ops.system('UmfPack')            # FullGeneral crashes with all DOFs prescribed
        ops.numberer('Plain')
        ops.constraints('Transformation')
        ops.integrator('LoadControl', 1.0)
        ops.algorithm('Linear')
        ops.analysis('Static')
        if ops.analyze(1) != 0:
            raise RuntimeError('OpenSees analysis failed')
        ops.reactions()
        r.append(np.array([ops.nodeReaction(i + 1) for i in range(4)]))
    ops.wipe()
    area = 1.0
    return np.array([[(d[i] * r[j]).sum() for j in range(6)] for i in range(6)]) / (e0**2 * area)


# --- output -------------------------------------------------------------------

def fmt(M, rows, cols):
    M = np.where(np.abs(M) < 1e-12 * max(np.abs(M).max(), 1e-300), 0.0, M)
    head = ' ' * 8 + ''.join(f'{c:>13}' for c in cols)
    return '\n'.join([head] + [f'{r:<8}' + ''.join(f' {v:>12.6g}' for v in row) for r, row in zip(rows, M)])


def print_abd(K, title):
    print(title)
    print('A [N/mm]  (N = A eps + B k)')
    print(fmt(K[:3, :3], ['Nxx', 'Nyy', 'Nxy'], STRAINS[:3]))
    print('B [N]')
    print(fmt(K[:3, 3:], ['Nxx', 'Nyy', 'Nxy'], STRAINS[3:]))
    print('D [N mm]  (M = B eps + D k)')
    print(fmt(K[3:, 3:], ['Mxx', 'Myy', 'Mxy'], STRAINS[3:]))


def main():
    ap = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument('calls', help='Python file with the ops.nDMaterial / ops.section / ops.element calls')
    ap.add_argument('--save', metavar='FILE', default=None, help='also write the 6x6 ABD to a CSV file')
    args = ap.parse_args()

    try:
        calls = read_calls(args.calls)
        facet, others = facet_elements(calls)
    except ValueError as e:
        raise SystemExit(f'ERROR: {e}')
    print(f'{args.calls}: {sum(c[0] == "nDMaterial" for c in calls)} nDMaterial, '
          f'{sum(c[0] == "section" for c in calls)} section, {len(facet)} element calls used'
          + (f' ({others} elements on other nodes ignored)' if others else ''))
    print(f'{"ele":>4} {"sec":>4} {"-local angle":>12} {"h":>8} {"non-void z range":>20} {"layers":>6}  options')
    for r in describe(calls, facet):
        ang = 'none' if r['angle'] is None else f'{r["angle"]:.4g} deg'
        if r['h'] is None:
            print(f'{r["ele"]:>4} {r["sec"]:>4} {ang:>12}   (section is not LayeredShell)  {" ".join(r["opts"])}')
            continue
        zr = 'all void' if r['z'] is None else f'{r["z"][0]:.4g} .. {r["z"][1]:.4g}'
        print(f'{r["ele"]:>4} {r["sec"]:>4} {ang:>12} {r["h"]:>8.4g} {zr:>20} {r["n_layers"]:>6}  {" ".join(r["opts"])}')
    if len(facet) > 1 and any('-noeas' not in r for r in facet if r[0] == 'ASDShellQ4'):
        print('WARNING: several ASDShellQ4 share this facet without -noeas. Their enhanced strain modes are '
              'condensed per element, so the facet does not behave as one laminate in bending/twisting of a '
              'mesh, even though the constant-strain ABD below is unaffected.')

    if any('-corotational' in a for a in facet):
        print('(-corotational is dropped for this measurement: ABD is the small-strain section stiffness)')

    K = measure_abd(calls)
    asym = np.abs(K - K.T).max() / np.abs(K).max()
    print()
    print_abd(K, f'ABD measured from OpenSeesPy (symmetry: max |K - K^T| / max |K| = {asym:.1e}):')
    if args.save:
        np.savetxt(args.save, K, delimiter=',', header=','.join(STRAINS),
                   comments='# 6x6 ABD [N/mm, N, N mm], rows N_xx N_yy N_xy M_xx M_yy M_xy; columns: ')
        print(f'\nABD (full precision) saved to {args.save}')


if __name__ == '__main__':
    main()
