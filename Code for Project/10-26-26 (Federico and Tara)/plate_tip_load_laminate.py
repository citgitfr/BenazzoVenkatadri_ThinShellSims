"""
Tip-loaded [0_2/90_2]_s CFRP cantilever plate: Federico's linear tip-load case
(10-22-26 (Federico)/plate_tip_load.py + flat_plate_al.py) with the aluminum
section replaced by the laminate of layup_0_0_90_90_s.py.

Plate 1000 x 100 mm, h = 8 mm (plies 0 0 90 90 90 90 0 0, 1 mm each, bottom
to top), clamped at x = 0 (all 6 DOFs). Total P = -5 N in global z, spread
uniformly along the free edge x = L (consistent shares, fixed direction).
Root moment per width 50 N mm/mm (= the pure-moment Mx case). Linear geometry,
ASDShellQ4 with 8 coincident per-ply elements per facet ('-noeas').
Checks deflection and top-surface sigma_xx against laminated beam theory on
10, 5 and 2.5 mm meshes.

Units: N, mm, MPa

Usage:
  python plate_tip_load_laminate.py              # solve, check, open the PyVista viewer
  python plate_tip_load_laminate.py --no-gui     # solve and check only
  python plate_tip_load_laminate.py --screenshot # save the viewer PNGs to results/
"""
import os
import sys
import time

import numpy as np
import openseespy.opensees as ops

HERE = os.path.dirname(os.path.abspath(__file__))
sys.path.insert(0, os.path.join(HERE, '..', '10-26-26 (Federico)'))
sys.path.insert(0, os.path.join(HERE, '..', '10-22-26 (Federico)'))   # shell_viewer
sys.path.insert(0, HERE)
import mesh_bc_load as mbl                                   # noqa: E402
from layup_0_0_90_90_s import build, add_laminate_elements   # noqa: E402
from plate_pure_moment_Mx import top_surface_stresses, N_PLY  # noqa: E402

# --- Geometry and load (as Federico, laminate section) ---
L, b, h = 1000.0, 100.0, 8.0
P = -5.0                         # total tip load in z [N]
SIZES = (10.0, 5.0, 2.5)         # element sizes [mm]

# --- Laminate theory (CLT) ---
D = np.array([[3.00202e6, 21366.7], [21366.7, 502118.0]])   # D11 D12 / D12 D22 [N mm]
d = np.linalg.inv(D)
EI = b / d[0, 0]                 # free anticlastic curvature (My = 0)
EI_WIDE = b * D[0, 0]            # wide-plate bound (ky = 0)
Q11, Q12 = 80125.2, 500.782      # 0 deg ply [MPa]
G13, K_SHEAR = 1000.0, 5 / 6     # transverse shear estimate


def w_beam(x, EI_eff=EI):
    return P * x**2 * (3 * L - x) / (6 * EI_eff)


def w_shear(x):
    return P * x / (K_SHEAR * G13 * b * h)


def sigma_top_beam(x):
    # Downward load -> hogging moment M = -P (L - x) > 0 -> top surface in tension
    mx = -P * (L - x) / b
    kx, ky = d @ (mx, 0.0)
    return (Q11 * kx + Q12 * ky) * h / 2


def check(name, value, ref, tol):
    err = abs(value - ref) / abs(ref)
    status = 'PASS' if err < tol else 'FAIL'
    print(f'[{status}] {name:<30s} FE = {value:+.5g}   beam = {ref:+.5g}   err = {err:.2%}')
    return err < tol


def run(size):
    mesh = mbl.StripMesh(L, b, size)
    mbl.create_nodes(mesh)
    layup = build()
    n_ele = mbl.create_elements(mesh, lambda tag, nodes: add_laminate_elements(tag, nodes, layup)) - 1
    mbl.fix_edge(mesh, 'x0')
    mbl.edge_load(mesh, 'xL', (0, 0, P))
    t0 = time.perf_counter()
    mbl.linear_solve()
    return mesh, n_ele, time.perf_counter() - t0


if __name__ == '__main__':
    print(f'Tip load P = {P} N; EI = b/d11 = {EI:.6g} N mm^2 (wide plate b D11 = {EI_WIDE:.6g})')
    print(f'Beam w_tip = {w_beam(L):+.5g} mm (wide plate {w_beam(L, EI_WIDE):+.5g} mm), '
          f'shear estimate {w_shear(L):+.4f} mm ({w_shear(L) / w_beam(L):.3%}); '
          f'sigma_top(root) = {sigma_top_beam(0):.4g} MPa')

    ok = True
    summary = []
    for size in SIZES:
        mesh, n_ele, dt = run(size)
        nx, ny = mesh.nx, mesh.ny
        n_nodes = (nx + 1) * (ny + 1)
        print(f'\n=== mesh {size:g} mm: {mesh.summary()}')
        print(f'    {n_ele} ASDShellQ4 elements ({N_PLY} per facet, -noeas), {6 * n_nodes} DOFs '
              f'({6 * (n_nodes - ny - 1)} free), linear solve {dt:.1f} s')
        jm = ny // 2    # mid-width line

        print('Deflection w along the mid-width line [mm]')
        for x in (L / 4, L / 2, 3 * L / 4, L):
            ok &= check(f'w(x = {x:.0f} mm)', ops.nodeDisp(mesh.node_tag(round(x / size), jm), 3),
                        w_beam(x), 0.03)
        w_mid = ops.nodeDisp(mesh.node_tag(nx, jm), 3)
        w_avg = np.mean([ops.nodeDisp(n, 3) for n in mesh.edge_nodes('xL')])
        print(f'  tip: mid-width {w_mid:+.5g} mm ({w_mid / w_beam(L) - 1:+.3%} vs b/d11, '
              f'{w_mid / (w_beam(L) + w_shear(L)) - 1:+.3%} vs b/d11 + shear), '
              f'edge-average {w_avg:+.5g} mm ({w_avg / w_beam(L) - 1:+.3%}); '
              f'wide-plate bound {w_beam(L, EI_WIDE):+.5g} mm')

        t0 = time.perf_counter()
        stress = top_surface_stresses()
        print(f'Top-surface sigma_xx along the mid-width line [MPa] '
              f'({time.perf_counter() - t0:.1f} s to recover)')
        for x in (L / 4, L / 2, 3 * L / 4):
            facet = jm * nx + round(x / size)       # facet just past x on the mid-width row
            ok &= check(f'sigma_xx(x = {x:.0f} mm)', stress['sigma_xx'][facet * N_PLY],
                        sigma_top_beam(x + size / 2), 0.03)
        print(f'  max |sigma_xx| = {np.abs(stress["sigma_xx"]).max():.4g} MPa near the root '
              f'(beam at first facet centre: {sigma_top_beam(size / 2):.4g} MPa)')
        summary.append((size, n_ele, 6 * n_nodes, dt, w_mid, w_avg))

    print('\nConvergence of the tip deflection')
    print(f'  {"size":>5s} {"elements":>9s} {"DOFs":>7s} {"solve s":>8s} {"w_mid":>9s} {"vs beam":>8s} '
          f'{"w_avg":>9s} {"vs beam":>8s}')
    for size, n_ele, ndof, dt, w_mid, w_avg in summary:
        print(f'  {size:5.3g} {n_ele:9d} {ndof:7d} {dt:8.1f} {w_mid:+9.5f} {w_mid / w_beam(L) - 1:+8.3%} '
              f'{w_avg:+9.5f} {w_avg / w_beam(L) - 1:+8.3%}')

    print('\nALL CHECKS PASSED' if ok else '\nSOME CHECKS FAILED')

    if '--no-gui' not in sys.argv:       # finest mesh is still in the domain
        import shell_viewer
        shots = '--screenshot' in sys.argv
        out = os.path.join(HERE, 'results')
        if shots:
            os.makedirs(out, exist_ok=True)
        tag = f'{SIZES[-1]:g}mm'.replace('.', 'p')
        title = (f'[0_2/90_2]_s CFRP cantilever plate {L:.0f} x {b:.0f} x {h:.0f} mm, '
                 f'tip load P = {abs(P):g} N (-z)')
        shell_viewer.show_model(title=title + f'\n{N_PLY} coincident per-ply ASDShellQ4 per facet',
                                screenshot=os.path.join(out, f'tip_load_model_{tag}.png') if shots else None)
        shell_viewer.show_deformed(
            stress, field='sigma_xx', target_tip=0.1 * L, title=title,
            scalar_label='Top-surface sigma_xx [MPa]',
            screenshot=os.path.join(out, f'tip_load_deformed_sigma_xx_{tag}.png') if shots else None)
