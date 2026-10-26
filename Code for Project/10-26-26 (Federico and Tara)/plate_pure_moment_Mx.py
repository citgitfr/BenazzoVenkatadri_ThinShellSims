"""
Free [0_2/90_2]_s CFRP plate (100 x 100 mm, h = 8 mm) under uniform pure
bending Mx = 50 N mm/mm (= 50 N m/m), My = 0. Linear geometry, ASDShellQ4
(8 coincident per-ply elements per facet, '-noeas'). Curvatures from a
quadratic least-squares fit of uz and from nodal rotations, vs CLT.

Units: N, mm, MPa. CLT sign convention: Mx = int sigma_x z dz (Mx > 0 puts
the top, z > 0, in tension), kx = -d2w/dx2.

Usage:
  python plate_pure_moment_Mx.py              # solve, check, open the PyVista viewer
  python plate_pure_moment_Mx.py --no-gui     # solve and check only
  python plate_pure_moment_Mx.py --screenshot # save the viewer PNGs to results/
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
from layup_0_0_90_90_s import build, add_laminate_elements, N_SUB   # noqa: E402

L = B = 100.0
MX = 50.0                      # N mm/mm
N_PLY = 8
# CLT reference [1/mm]
KX_REF, KY_REF, KXY_REF = 1.66605e-5, -7.0896e-7, 0.0


def run(size):
    mesh = mbl.StripMesh(L, B, size)
    mbl.create_nodes(mesh)
    layup = build()
    n_ele = mbl.create_elements(mesh, lambda tag, nodes: add_laminate_elements(tag, nodes, layup)) - 1
    # free plate: remove only the 6 rigid-body modes
    ops.fix(mesh.node_tag(0, 0), 1, 1, 1, 0, 0, 0)
    ops.fix(mesh.node_tag(mesh.nx, 0), 0, 1, 1, 0, 0, 0)
    ops.fix(mesh.node_tag(0, mesh.ny), 0, 0, 1, 0, 0, 0)
    # edge moments: +y moment vector on xL, -y on x0 (consistent shares)
    mbl.edge_load(mesh, 'xL', (0, 0, 0), (0, MX * B, 0))
    mbl.edge_load(mesh, 'x0', (0, 0, 0), (0, -MX * B, 0))
    t0 = time.perf_counter()
    mbl.linear_solve()
    dt = time.perf_counter() - t0

    tags = [mesh.node_tag(i, j) for j in range(mesh.ny + 1) for i in range(mesh.nx + 1)]
    xyz = np.array([ops.nodeCoord(n) for n in tags])
    u = np.array([ops.nodeDisp(n) for n in tags])
    x, y = xyz[:, 0], xyz[:, 1]
    # w = a + bx + cy + d x^2 + e xy + f y^2
    A = np.column_stack([np.ones_like(x), x, y, x**2, x * y, y**2])
    c, *_ = np.linalg.lstsq(A, u[:, 2], rcond=None)
    fit = {'kx': -2 * c[3], 'ky': -2 * c[5], 'kxy': -2 * c[4]}
    resid = np.abs(A @ c - u[:, 2]).max()
    # rotations: ry = -dw/dx -> d(ry)/dx = kx ; rx = dw/dy -> d(rx)/dy = -ky
    A1 = np.column_stack([np.ones_like(x), x, y])
    cry, *_ = np.linalg.lstsq(A1, u[:, 4], rcond=None)
    crx, *_ = np.linalg.lstsq(A1, u[:, 3], rcond=None)
    rot = {'kx': cry[1], 'ky': -crx[2], 'kxy': cry[2] - crx[1]}   # kxy = -2 w,xy = ry,y - rx,x

    # sign check: membrane force N11 of the top (ply 8, 0 deg) and bottom
    # (ply 1, 0 deg) per-ply elements of a central facet -> ply stress = N11 / t_ply
    i0, j0 = mesh.nx // 2, mesh.ny // 2
    first = (j0 * mesh.nx + i0) * N_PLY + 1
    s_bot = np.reshape(ops.eleResponse(first, 'stresses'), (4, 8)).mean(axis=0)[0] / 1.0
    s_top = np.reshape(ops.eleResponse(first + N_PLY - 1, 'stresses'), (4, 8)).mean(axis=0)[0] / 1.0
    return mesh, n_ele, dt, fit, rot, resid, s_top, s_bot


def top_surface_stresses(t_ply=1.0):
    """Top-surface (z = +h/2) in-plane stresses [MPa] of each facet, repeated
    for its 8 per-ply elements (ops.getEleTags() order, as shell_viewer wants).

    The top ply's element (ply 8, 0 deg, local = global axes) carries that ply's
    resultants about the laminate mid-plane: N = s_c t, M = s_c t z_c + s' t^3/12
    for a stress s_c + s' (z - z_c) linear through the ply. Positive M puts the
    top in tension, so sigma_top = N/t + 6 (M - N z_c)/t^2. The ply's N_SUB
    midpoint layers integrate t^3/12 as (1 - 1/N_SUB^2) t^3/12; divide by that.
    """
    eles = ops.getEleTags()
    z_c = (N_PLY - 1) * t_ply / 2
    s = np.zeros((len(eles), 3))
    for k in range(0, len(eles), N_PLY):
        f = np.reshape(ops.eleResponse(eles[k + N_PLY - 1], 'stresses'), (4, 8)).mean(axis=0)
        s[k:k + N_PLY] = f[:3] / t_ply + 6 * (f[3:6] - f[:3] * z_c) / (t_ply**2 * (1 - 1 / N_SUB**2))
    sxx, syy, sxy = s.T
    vm = np.sqrt(sxx**2 - sxx * syy + syy**2 + 3 * sxy**2)
    return {'sigma_xx': sxx, 'sigma_yy': syy, 'tau_xy': sxy, 'von_Mises': vm}


def pct(v, ref):
    return 'n/a' if ref == 0 else f'{100 * (v - ref) / ref:+.3f}%'


if __name__ == '__main__':
    ref = {'kx': KX_REF, 'ky': KY_REF, 'kxy': KXY_REF}
    for size in (10.0, 5.0):
        mesh, n_ele, dt, fit, rot, resid, s_top, s_bot = run(size)
        n_nodes = (mesh.nx + 1) * (mesh.ny + 1)
        print(f'\n=== mesh {size:g} mm: {mesh.summary()}')
        print(f'    {n_ele} ASDShellQ4 elements ({N_PLY} per facet), {6 * n_nodes} DOFs, '
              f'linear solve {dt:.2f} s, max fit residual {resid:.2e} mm')
        print(f'    0-deg ply mean sigma_x at centre: top ply {s_top:+.3f} MPa, bottom ply {s_bot:+.3f} MPa')
        for k in ('kx', 'ky', 'kxy'):
            print(f'    {k:4s} fit {fit[k]:+.6e} 1/mm = {1e3 * fit[k]:+.6e} 1/m ({pct(fit[k], ref[k])}) | '
                  f'rotations {1e3 * rot[k]:+.6e} 1/m ({pct(rot[k], ref[k])}) | CLT {1e3 * ref[k]:+.6e} 1/m')

    # the 5 mm model is still in the domain
    stress = top_surface_stresses()
    h = N_PLY * 1.0
    q11, q12 = 80125.2, 500.782                  # 0 deg ply Q [MPa]
    s_clt = (q11 * KX_REF + q12 * KY_REF) * h / 2
    print(f'\nTop-surface sigma_xx: {stress["sigma_xx"].min():+.4f} to {stress["sigma_xx"].max():+.4f} MPa '
          f'(CLT {s_clt:+.4f} MPa, {pct(stress["sigma_xx"].mean(), s_clt)})')

    if '--no-gui' not in sys.argv:
        import shell_viewer
        shots = '--screenshot' in sys.argv
        out = os.path.join(HERE, 'results')
        if shots:
            os.makedirs(out, exist_ok=True)
        title = f'[0_2/90_2]_s CFRP plate {L:.0f} x {B:.0f} x {h:.0f} mm, pure bending Mx = {MX:g} N mm/mm'
        shell_viewer.show_model(title=title + f'\n{N_PLY} coincident per-ply ASDShellQ4 per facet',
                                screenshot=os.path.join(out, 'model_5mm.png') if shots else None)
        shell_viewer.show_deformed(
            stress, field='sigma_xx', target_tip=0.1 * L, title=title,
            scalar_label='Top-surface sigma_xx [MPa]',
            screenshot=os.path.join(out, 'deformed_sigma_xx_5mm.png') if shots else None)
