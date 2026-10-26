"""
Checks for mesh_bc_load.py:
  1. Flat aluminum strip, small tip load, linear: deflection and stress vs
     beam theory (same case as 10-22-26 plate_tip_load.py, 5 mm mesh).
  2. Same strip, large deflection with ASDShellQ4 -corotational under
     displacement control: must reproduce the saved 10 mm results of
     10-22-26 plate_large_deflection.py.
  3. Curved strip (circular-arc cross-section, tape-spring-like), small tip
     load in its symmetry plane, linear: deflection vs beam theory using the
     arc section's second moment of area.

Units: N, mm, MPa
"""
import math
from pathlib import Path

import numpy as np
import openseespy.opensees as ops

import mesh_bc_load as mbl

L, b, t = 1000.0, 100.0, 0.1
E, nu = 69_000.0, 0.33
SAVED_10MM = (Path(__file__).parent.parent / '10-22-26 (Federico)' / 'results'
              / 'large_deflection_ASDShellQ4-corot_10mm.csv')


def check(name, value, ref, tol):
    err = abs(value - ref) / abs(ref)
    print(f"[{'PASS' if err < tol else 'FAIL'}] {name:<44s} FE = {value:+.6g}   "
          f'ref = {ref:+.6g}   err = {err:.2%}')
    return err < tol


def strip(element, size, R=None, *options):
    mesh = mbl.StripMesh(L, b, size, R=R)
    mbl.create_nodes(mesh)
    ops.section('ElasticMembranePlateSection', 1, E, nu, t, 0.0)
    mbl.create_elements(mesh, mbl.homogeneous(element, 1, *options))
    mbl.fix_edge(mesh, 'x0')
    return mesh


def flat_linear():
    print('1. Flat strip, small tip load, linear (ShellMITC4, 5 mm)')
    P = 1e-5
    I = b * t**3 / 12
    mesh = strip('ShellMITC4', 5.0)
    mbl.edge_load(mesh, 'xL', (0, 0, -P))
    mbl.linear_solve()
    ok = check('tip deflection, mid-width [mm]', ops.nodeDisp(mesh.node_tag(mesh.nx, mesh.ny // 2), 3),
               -P * L**3 / (3 * E * I), 0.03)
    s = mbl.top_surface_stresses(t)['sigma_xx']
    ele = (mesh.ny // 2) * mesh.nx + mesh.nx // 2       # 0-based index, element just past x = L/2
    x_c = (mesh.nx // 2 + 0.5) * L / mesh.nx
    ok &= check('top sigma_xx at mid-span [MPa]', s[ele], P * (L - x_c) * (t / 2) / I, 0.002)
    return ok


def flat_large_deflection():
    print('\n2. Flat strip, large deflection (ASDShellQ4 -corotational, 10 mm), vs saved run')
    I = b * t**3 / 12
    mesh = strip('ASDShellQ4', 10.0, None, '-corotational')
    mbl.edge_load(mesh, 'xL', (0, 0, -E * I / L**2))       # reference load: alpha = load factor
    tip = mesh.node_tag(mesh.nx, mesh.ny // 2)
    hist = mbl.displacement_control(tip, 3, -0.02 * L, n_steps=23, verbose=False,
                                    record=lambda: [-ops.nodeDisp(tip, 3) / L, -ops.nodeDisp(tip, 1) / L])
    saved = np.loadtxt(SAVED_10MM, delimiter=',', skiprows=1)
    ok = check('alpha at v/L = 0.46', hist[23, 0], saved[23, 0], 1e-6)
    ok &= check('h/L at v/L = 0.46', hist[23, 2], saved[23, 2], 1e-6)
    return ok


def curved_linear():
    R = 50.0
    print(f'\n3. Curved strip, arc cross-section R = {R:g} mm, b = {b:g} mm '
          f'({math.degrees(b / R):.1f} deg), small tip load, linear (ShellMITC4, 5 mm)')
    mesh = strip('ShellMITC4', 5.0, R)
    widths = [math.dist(mesh.coords(0, j), mesh.coords(0, j + 1)) for j in range(mesh.ny)]
    print(f'   chord sum across width = {sum(widths):.4f} mm (arc length {b:g}; '
          f'chords are {(1 - sum(widths) / b):.3%} shorter, flat facets)')

    # Thin-walled arc: I about the horizontal centroidal axis, by integrating
    # along the arc, t ds (z - z_c)^2
    phi = np.linspace(-b / (2 * R), b / (2 * R), 200001)
    z = R * (1 - np.cos(phi))
    ds = R * (phi[1] - phi[0])
    zc = np.sum(z) * ds / b
    I = t * np.sum((z - zc)**2) * ds
    print(f'   arc section: centroid z_c = {zc:.4f} mm, I = {I:.6g} mm^4 '
          f'(flat strip: {b * t**3 / 12:.3g} mm^4)')

    # Load through a rigid end fixture. Spreading it on the free thin edge
    # instead distorts the tip cross-section (tip 8% too flexible).
    P = 1.0
    tip = mbl.rigid_end(mesh, 'xL')
    mbl.point_load(tip, (0, 0, -P))
    mbl.linear_solve()
    ok = check('tip deflection, rigid end [mm]', ops.nodeDisp(tip, 3), -P * L**3 / (3 * E * I), 0.03)
    for x in (250, 500, 750):
        i = round(x / (L / mesh.nx))
        w = np.mean([ops.nodeDisp(mesh.node_tag(i, j), 3) for j in range(mesh.ny + 1)])
        ok &= check(f'deflection at x = {x} mm, section average [mm]', w,
                    -P * x**2 * (3 * L - x) / (6 * E * I), 0.03)
    return ok


if __name__ == '__main__':
    ok = flat_linear()
    ok &= flat_large_deflection()
    ok &= curved_linear()
    print('\nALL CHECKS PASSED' if ok else '\nSOME CHECKS FAILED')
    raise SystemExit(0 if ok else 1)
