"""
Buckled shapes of the OpenSees buckling runs (method B, ASDShellQ4 corotational,
imperfection = mode A): re-runs each imperfect path, keeps the displacement of
every shell node at every converged step, and draws the deformed shells in 3D.

  run   python buckled_shapes.py run <case>     -> results/shape_<case>.npz
  plot  python buckled_shapes.py plot           -> results/buckled_shapes_columns.png
                                                   results/buckled_shapes_bending.png
cases: col1200, col300 (verify_column_path_B.py settings), opp, eq, eq05
(tape_spring_bending.py, L = 200, 3 mm mesh; eq05 = equal sense with a 0.05 mm
imperfection instead of 0.01 mm).
"""
import json
import math
import sys
from pathlib import Path

HERE = Path(__file__).resolve().parent
SK = HERE.parents[1] / '.claude' / 'skills'
for d in ('laminate-properties', 'shell-mesh', 'shell-bc-load', 'shell-buckling'):
    sys.path.insert(0, str(SK / d))
sys.path.insert(0, str(HERE))
import numpy as np                         # noqa: E402

RES = HERE / 'results'
BLUE, ORANGE, AQUA = '#2a78d6', '#eb6834', '#1baf7a'
INK, MUTED, GRID = '#1f1f1e', '#6b6a63', '#e4e3dd'


def load_mode(fn):
    f = np.load(RES / fn)
    return {int(n): v for n, v in zip(f['nodes'], f['vec'])}


def run(case):
    import openseespy.opensees as ops
    import shell_buckling as sb
    if case.startswith('col'):
        from verify_column_buckling import tape_builder
        L, size = (1200.0, 5.0) if case == 'col1200' else (300.0, 2.0)
        PA = json.loads((RES / 'column_path_B.json').read_text())[f'L={L:g} ASDShellQ4']['A']
        mesh = tape_builder(L, size, 'ASDShellQ4', load_mode(f'column_modeA_L{L:g}_h{size:g}.npz'), L / 1000)()
        control, step, n = {'type': 'load'}, 0.05 * PA, 18
    else:
        import tape_spring_bending as tb
        sense = 'opp' if case == 'opp' else 'eq'
        amp = {'opp': 0.05, 'eq': 0.01, 'eq05': 0.05}[case]
        theta_max = 0.2 if sense == 'opp' else 0.3
        mesh, tip = tb.build(200.0, 3.0, 'ASDShellQ4', sense, load_mode(f'tape_{sense}_L200_h3_modeA.npz'), amp)
        control = {'type': 'disp', 'node': tip, 'dof': 5}
        step, n = (1 if sense == 'opp' else -1) * 0.005, int(round(theta_max / 0.005))
    grid = np.array([[mesh.node_tag(i, j) for i in range(mesh.nx + 1)] for j in range(mesh.ny + 1)])
    X = np.array([ops.nodeCoord(int(t)) for t in grid.ravel()])
    snaps = []

    def record():
        snaps.append(np.array([ops.nodeDisp(int(t))[:3] for t in grid.ravel()]))
        return []
    h, peak, k = sb.imperfect_path(control, step, n, record=record, verbose=True)
    np.savez(RES / f'shape_{case}.npz', grid=grid, X=X, U=np.array(snaps), history=h, k_peak=k, L=mesh.L)
    print(f'{case}: {len(snaps)} states, peak {peak:.4g} at row {k}, last param {h[-1, 0]:.4g}')


# --- plotting --------------------------------------------------------------------------------

def surface(case, row=None):
    """Unloaded coordinates X and displacements U on the (ny, nx) grid, for one
    path row (or all rows if row is None), path history, peak row."""
    f = np.load(RES / f'shape_{case}.npz')
    ny, nx = f['grid'].shape
    X = f['X'].reshape(ny, nx, 3)
    U = f['U'].reshape(-1, ny, nx, 3)
    return X, U if row is None else U[row], f['history'], int(f['k_peak'])


def transverse_curvature(P):
    """Signed transverse curvature x R2 of the deformed shell (1 = as made, 0 = flat),
    from the turning of the cross-section polyline at each interior node."""
    from verify_column_buckling import R2
    a, b = P[1:-1] - P[:-2], P[2:] - P[1:-1]
    ax = P[:, 2:] - P[:, :-2]                                  # along-tape direction (central diff)
    ax = np.concatenate([P[:, 1:2] - P[:, :1], ax, P[:, -1:] - P[:, -2:-1]], axis=1)[1:-1]
    cr = np.cross(a, b)
    s = np.sign(np.einsum('ijk,ijk->ij', cr, ax))
    ang = np.arctan2(np.linalg.norm(cr, axis=-1), np.einsum('ijk,ijk->ij', a, b))
    ds = 0.5 * (np.linalg.norm(a, axis=-1) + np.linalg.norm(b, axis=-1))
    k = s * ang / ds * R2
    return np.vstack([k[:1], k, k[-1:]])


def draw(ax, P, C, cmap, vmin, vmax, view):
    """Orthographic view of the shell on a 2D equal-aspect axes (painter's
    algorithm), so that long thin shells fill the panel at true proportions.
    view = (elevation, azimuth) in degrees, as in matplotlib's 3D axes."""
    from matplotlib.collections import PolyCollection
    el, az = np.radians(view)
    d = np.array([np.cos(el) * np.cos(az), np.cos(el) * np.sin(az), np.sin(el)])     # toward the viewer
    e1 = np.array([-np.sin(az), np.cos(az), 0.0])
    e2 = np.cross(d, e1)
    ny, nx, _ = P.shape
    q = np.stack([P[:-1, :-1], P[:-1, 1:], P[1:, 1:], P[1:, :-1]], axis=2).reshape(-1, 4, 3)
    c = np.stack([C[:-1, :-1], C[:-1, 1:], C[1:, 1:], C[1:, :-1]], axis=2).reshape(-1, 4).mean(1)
    order = np.argsort(q.mean(1) @ d)                                                  # far to near
    uv = np.stack([q @ e1, q @ e2], axis=-1)[order]
    ax.add_collection(PolyCollection(uv, facecolors=cmap(np.clip((c[order] - vmin) / (vmax - vmin), 0, 1)),
                                     edgecolors=(0, 0, 0, 0.15), linewidths=0.2))
    ax.update_datalim(uv.reshape(-1, 2))
    ax.autoscale_view()
    ax.set_aspect('equal', adjustable='datalim')
    ax.set_axis_off()


def cbar(fig, rect, cmap, vmin, vmax, label, ticks=None):
    import matplotlib as mpl
    cax = fig.add_axes(rect)
    cb = fig.colorbar(mpl.cm.ScalarMappable(mpl.colors.Normalize(vmin, vmax), cmap), cax=cax, ticks=ticks)
    cb.set_label(label, color=MUTED, fontsize=8)
    cb.ax.tick_params(colors=MUTED, labelsize=7)
    cb.outline.set_visible(False)


def shell_normal(X):
    """Unit normal of the (imperfect, unloaded) shell at every grid node."""
    ts = np.gradient(X, axis=0)
    tx = np.gradient(X, axis=1)
    n = np.cross(tx, ts)
    return n / np.linalg.norm(n, axis=-1, keepdims=True)


def text(fig, x, y, s, size=9.5, color=INK):
    fig.text(x, y, s, color=color, fontsize=size, ha='left', va='top')


def fig_columns():
    import matplotlib.pyplot as plt
    from matplotlib.colors import LinearSegmentedColormap
    seq = LinearSegmentedColormap.from_list('seq', ['#eef4fb', BLUE, '#123f73'])
    fig = plt.figure(figsize=(13, 7.4))
    text(fig, 0.02, 0.985, 'Tape-spring columns (CuBe, R = 13.3 mm, alpha = 1.85 rad, t = 0.1 mm, fork ends): OpenSees method B\n'
         '(ASDShellQ4, mode-A imperfection L/1000), last converged state under load control', 10.5)
    for r, (case, mag, view, title) in enumerate((
            ('col1200', 5, (15, -80), 'L = 1200 mm, 5 mm mesh: flexural buckling, the whole section moves in z'),
            ('col300', 5, (25, -70), 'L = 300 mm, 2 mm mesh: flexural-torsional buckling, the section twists and translates'))):
        X, U, h, _ = surface(case, -1)
        X0 = X
        res = json.loads((RES / 'column_path_B.json').read_text())[f'L={case[3:]} ASDShellQ4']
        Ul = U.copy()
        Ul[..., 0] = 0.0                                          # lateral displacement only (no shortening)
        mag_u = np.linalg.norm(Ul, axis=-1)
        y0 = 0.5 - 0.47 * r
        text(fig, 0.02, y0 + 0.43, f'{title}\nP = {h[-1, 1]:.2f} N = {h[-1, 1] / res["theory"]:.2f} x theory '
             f'({res["theory"]:.2f} N); displacements x{mag}; colour = lateral displacement (true value)')
        ax = fig.add_axes([0.02, y0, 0.64, 0.36])
        draw(ax, X + mag * Ul, mag_u, seq, 0, mag_u.max(), view)
        cbar(fig, [0.68, y0 + 0.05, 0.008, 0.26], seq, 0, mag_u.max(), 'lateral displacement [mm]')
        a2 = fig.add_axes([0.80, y0 + 0.03, 0.18, 0.33])
        i = X.shape[1] // 2
        a2.plot(X0[:, i, 1], X0[:, i, 2], color=MUTED, lw=1.5, ls='--', label='unloaded')
        a2.plot(X[:, i, 1] + mag * U[:, i, 1], X[:, i, 2] + mag * U[:, i, 2], color=BLUE, lw=2.2,
                label=f'loaded (x{mag})')
        a2.set_aspect('equal', adjustable='datalim')
        a2.set_xlabel('y [mm]', color=MUTED)
        a2.set_ylabel('z [mm]', color=MUTED)
        a2.tick_params(colors=MUTED)
        a2.grid(color=GRID, lw=0.8)
        for s_ in ('top', 'right'):
            a2.spines[s_].set_visible(False)
        a2.legend(frameon=False, fontsize=8, labelcolor=INK, loc='best')
        a2.set_title('mid-length cross-section', color=INK, fontsize=9, loc='left')
    fig.savefig(RES / 'buckled_shapes_columns.png', dpi=150)
    plt.close(fig)
    print('saved buckled_shapes_columns.png')


def fig_bending():
    import matplotlib.pyplot as plt
    from matplotlib.colors import LinearSegmentedColormap
    from verify_column_buckling import R2
    div = LinearSegmentedColormap.from_list('div', [ORANGE, '#f0efec', BLUE])
    kp = int(np.load(RES / 'shape_opp.npz')['k_peak'])
    rows = [('opp', kp, 'Opposite-sense bending (edges in tension), at the peak moment'),
            ('opp', -1, 'Opposite-sense bending, after the peak: the cross-section flattens at mid-length (fold forming)'),
            ('eq', -1, 'Equal-sense bending (edges in compression), imperfection 0.01 mm: last converged state, at the peak'),
            ('eq05', -1, 'Equal-sense bending, imperfection 0.05 mm: last converged state, just past the peak')]
    fig = plt.figure(figsize=(13, 13))
    text(fig, 0.02, 0.993, f'Tape spring L = 200 mm under end moments (CuBe, R = {R2} mm, alpha = 1.85 rad, t = 0.1 mm), '
         'root clamped: OpenSees method B, ASDShellQ4, 3 mm mesh', 10.5)
    for r, (case, row, title) in enumerate(rows):
        X, U, h, k = surface(case, row)
        th, M = abs(h[row, 0]), abs(h[row, 1])
        y0 = 0.75 - 0.245 * r
        ax = fig.add_axes([0.03, y0 - 0.01, 0.82, 0.19])
        if case == 'opp':
            draw(ax, X + U, transverse_curvature(X + U), div, 0, 2, (25, -70))
            note = 'true scale; colour = transverse curvature x R'
            cbar(fig, [0.87, y0 + 0.02, 0.008, 0.15], div, 0, 2, 'transverse curvature x R\n(1 = as made, 0 = flat)',
                 [0, 0.5, 1, 1.5, 2])
        else:
            # buckling displacement: what is not proportional to an early (pre-buckling) state
            r1 = 2
            Uall = surface(case)[1]
            V = U - h[row, 0] / h[r1, 0] * Uall[r1]
            vn = np.einsum('ijk,ijk->ij', V, shell_normal(X))
            vm = np.abs(vn).max()
            draw(ax, X + U + 20 * V, vn, div, -vm, vm, (25, -70))
            note = ('V = U - (theta / theta1) U1 = buckling displacement\n(state 1 at theta1 = 0.01 rad), drawn x20 on the true '
                    'shape; colour = V normal to the shell')
            cbar(fig, [0.87, y0 + 0.02, 0.008, 0.15], div, -vm, vm, 'V normal to the shell [mm]')
        text(fig, 0.02, y0 + 0.215, f'{title}\ntip rotation {th:.3f} rad, M = {M:.1f} N mm (path peak {abs(h[k, 1]):.1f} N mm); '
             f'{note}', 9)
    fig.savefig(RES / 'buckled_shapes_bending.png', dpi=150)
    plt.close(fig)
    print('saved buckled_shapes_bending.png')


if __name__ == '__main__':
    if sys.argv[1] == 'run':
        run(sys.argv[2])
    else:
        import matplotlib
        matplotlib.use('Agg')
        fig_columns()
        fig_bending()
