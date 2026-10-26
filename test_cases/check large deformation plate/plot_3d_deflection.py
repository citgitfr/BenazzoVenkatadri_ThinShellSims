"""
3D comparison of the deformed cantilever plate: OpenSees (ASDShellQ4
-corotational) vs. the analytical elastica.

The FE run in plate_large_deflection.py only stores the tip history, so this
script re-runs the same model (same mesh builder, load and displacement-control
ramp) and records the displacements of every node at every step. The result is
cached in fe_snapshots_<size>mm.npz; delete it to force a re-run.

The analytical shape is the elastica (EI theta'' = -P cos theta, theta(0) = 0,
theta'(L) = 0) solved here by shooting, independently of elastica.py, and
swept across the width (a 1D beam theory has no variation along y). It is
evaluated with the wide-plate stiffness EI/(1-nu^2), which the tip comparison
showed to be the right one for this plate, and with the beam stiffness EI.

Units: N, mm, MPa

Usage (shells conda env):
  python plot_3d_deflection.py [--size 10]
"""
import argparse
import sys
from pathlib import Path

import numpy as np

HERE = Path(__file__).resolve().parent
FE_DIR = HERE.parents[1] / 'Code for Project' / '10-22-26 (Federico)'
sys.path.insert(0, str(FE_DIR))

import flat_plate_al as plate                       # noqa: E402
from flat_plate_al import L, b, t, E, nu           # noqa: E402

I = b * t**3 / 12
EI = E * I
ALPHA_SHOW = [0.5, 1.0, 2.0, 4.0]                    # plus the last FE step


# ---------------------------------------------------------------- FE run
def run_fe(size, alpha_max=7.0, dv=0.02, max_cuts=6):
    """Same model and ramp as plate_large_deflection.py, but keeps every
    node's (ux, uy, uz) after each converged step."""
    import openseespy.opensees as ops
    from plate_large_deflection import apply_tip_load

    plate.build('ASDShellQ4-corot', size=size)
    apply_tip_load(-EI / L**2)                     # reference load: alpha = 1

    ops.system('UmfPack')
    ops.numberer('RCM')
    ops.constraints('Plain')
    ops.test('RelativeNormDispIncr', 1e-6, 40)
    ops.algorithm('Newton')

    nx, ny = plate.nx, plate.ny
    tags = [[plate.node_tag(i, j) for i in range(nx + 1)] for j in range(ny + 1)]
    X = np.array([[ops.nodeCoord(n) for n in row] for row in tags])
    tip = plate.node_tag(nx, ny // 2)

    alphas, disps = [0.0], [np.zeros_like(X)]
    while alphas[-1] < alpha_max:
        step = dv
        for _ in range(max_cuts + 1):
            ops.integrator('DisplacementControl', tip, 3, -step * L)
            ops.analysis('Static')
            if ops.analyze(1) == 0:
                break
            step /= 2
        else:
            print(f'  did not converge beyond alpha = {alphas[-1]:.3f}')
            break
        alphas.append(ops.getLoadFactor(1))
        disps.append(np.array([[ops.nodeDisp(n)[:3] for n in row] for row in tags]))
        print(f'  alpha = {alphas[-1]:6.3f}: v/L = {-ops.nodeDisp(tip, 3) / L:.4f}', flush=True)
    return X, np.array(alphas), np.array(disps)


# ---------------------------------------------------------- analytical
def elastica_shape(alpha, n=1000):
    """x/L and w/L (w positive downward) along the centreline, by RK4 shooting
    on the initial curvature theta'(0) (bisection on theta'(1) = 0)."""
    def integrate(k0):
        h = 1.0 / n
        u = np.array([0.0, k0, 0.0, 0.0])          # theta, theta', x, w
        f = lambda u: np.array([u[1], -alpha * np.cos(u[0]), np.cos(u[0]), np.sin(u[0])])
        path = [u]
        for _ in range(n):
            k1 = f(u); k2 = f(u + h / 2 * k1); k3 = f(u + h / 2 * k2); k4 = f(u + h * k3)
            u = u + h / 6 * (k1 + 2 * k2 + 2 * k3 + k4)
            path.append(u)
        return np.array(path)

    lo, hi = 0.0, alpha
    for _ in range(50):
        mid = 0.5 * (lo + hi)
        if integrate(mid)[-1, 1] > 0:
            hi = mid
        else:
            lo = mid
    path = integrate(0.5 * (lo + hi))
    return path[:, 2], path[:, 3]


def analytical_surface(alpha, ny=11):
    """Elastica centreline swept across the width: arrays (X, Y, Z) in mm."""
    x, w = elastica_shape(alpha)
    y = np.linspace(0, b, ny)
    return (np.tile(x * L, (ny, 1)), np.tile(y[:, None], (1, x.size)),
            np.tile(-w * L, (ny, 1)))


# ---------------------------------------------------------------- plots
def style_axes(ax):
    ax.set_xlabel('x [mm]')
    ax.set_ylabel('y [mm]')
    ax.set_zlabel('z [mm]')
    ax.set_xlim(0, L)
    ax.set_ylim(-50, b + 50)
    ax.set_yticks([0, b])
    ax.set_zlim(-800, 50)
    ax.set_box_aspect((L, b + 100, 850))            # true scale
    ax.view_init(elev=18, azim=-60)


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument('--size', type=float, default=10.0, help='element size [mm]')
    args = parser.parse_args()

    cache = HERE / f'fe_snapshots_{args.size:g}mm.npz'
    if cache.exists():
        d = np.load(cache)
        X, alphas, U = d['X'], d['alphas'], d['U']
    else:
        print(f'Running OpenSees ({args.size:g} mm mesh)...')
        X, alphas, U = run_fe(args.size)
        np.savez_compressed(cache, X=X, alphas=alphas, U=U)

    import matplotlib
    matplotlib.use('Agg')
    import matplotlib.pyplot as plt
    from matplotlib import cm, colors

    steps = sorted({int(np.argmin(abs(alphas - a))) for a in ALPHA_SHOW} | {len(alphas) - 1})
    norm = colors.Normalize(0, 800)
    cmap = cm.viridis
    fac = 1 - nu**2

    # 1) Overlay: FE surfaces (coloured) + elastica wide-plate (black wire)
    fig = plt.figure(figsize=(13, 8))
    ax = fig.add_subplot(projection='3d')
    ax.plot_surface(X[..., 0], X[..., 1], X[..., 2], color='lightgray', alpha=0.3)
    for k in steps:
        P = X + U[k]
        ax.plot_surface(P[..., 0], P[..., 1], P[..., 2], facecolors=cmap(norm(-U[k][..., 2])),
                        rstride=1, cstride=2, linewidth=0, shade=False, alpha=0.85)
        Xa, Ya, Za = analytical_surface(alphas[k] * fac)
        ax.plot_wireframe(Xa, Ya, Za, rstride=5, cstride=100, color='k', linewidth=0.8)
        Xb, _, Zb = analytical_surface(alphas[k], ny=2)
        ax.plot(Xb[0], np.full(Xb.shape[1], b / 2), Zb[0], 'r--', lw=1.2)
        ax.text(P[-1, -1, 0] + 20, b, P[-1, -1, 2], rf'$\alpha$={alphas[k]:.2f}', fontsize=9)
    style_axes(ax)
    fig.colorbar(cm.ScalarMappable(norm=norm, cmap=cmap), ax=ax, shrink=0.55, pad=0.02,
                 label='FE vertical deflection  $-u_z$ [mm]')
    ax.plot([], [], color='k', lw=0.8, label=r'Elastica, wide plate $EI/(1-\nu^2)$')
    ax.plot([], [], 'r--', label='Elastica, beam $EI$ (centreline)')
    ax.legend(loc='upper right')
    ax.set_title(f'Cantilever plate {L:.0f} x {b:.0f} x {t} mm, tip load: '
                 f'OpenSees ASDShellQ4-corot ({args.size:g} mm mesh, coloured) vs elastica')
    fig.tight_layout()
    fig.savefig(HERE / 'deflection_3d_overlay.png', dpi=150)

    # 2) Side by side at the largest load: FE | analytical | difference
    k = len(alphas) - 1
    a = alphas[k]
    P = X + U[k]
    Xa, Ya, Za = analytical_surface(a * fac, ny=X.shape[0])
    fig = plt.figure(figsize=(18, 6.5))
    for col, (title, S, c) in enumerate([
            ('OpenSees (ASDShellQ4-corot)', (P[..., 0], P[..., 1], P[..., 2]), -U[k][..., 2]),
            (r'Analytical elastica, $EI/(1-\nu^2)$', (Xa, Ya, Za), -Za)]):
        ax = fig.add_subplot(1, 2, col + 1, projection='3d')
        ax.plot_surface(X[..., 0], X[..., 1], X[..., 2], color='lightgray', alpha=0.3)
        ax.plot_surface(*S, facecolors=cmap(norm(c)), rstride=1, cstride=2,
                        linewidth=0, shade=False)
        style_axes(ax)
        ax.set_title(f'{title}\n' + rf'$\alpha$ = {a:.3f}: tip v = {c[c.shape[0] // 2, -1]:.1f} mm, '
                     f'h = {L - S[0][S[0].shape[0] // 2, -1]:.1f} mm')
    fig.colorbar(cm.ScalarMappable(norm=norm, cmap=cmap), ax=fig.axes, shrink=0.6,
                 label='Vertical deflection [mm]')
    fig.savefig(HERE / 'deflection_3d_side_by_side.png', dpi=150, bbox_inches='tight')

    print('\nalpha    tip v FE   v elastica plate   diff')
    for k in steps:
        x, w = elastica_shape(alphas[k] * fac)
        vfe = -U[k][X.shape[0] // 2, -1, 2]
        print(f'{alphas[k]:6.3f}  {vfe:8.2f}   {w[-1] * L:8.2f}        {(vfe - w[-1] * L) / (w[-1] * L):+.2%}')
    print('Saved deflection_3d_overlay.png and deflection_3d_side_by_side.png')


if __name__ == '__main__':
    main()
