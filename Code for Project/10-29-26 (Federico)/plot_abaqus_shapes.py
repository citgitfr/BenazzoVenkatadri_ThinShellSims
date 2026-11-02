"""
Abaqus vs OpenSees buckling modes and buckled shapes of the four tape-spring
cases. Abaqus side: the CSVs written by the buckling scripts in
abaqus/results/ (<case>_shape_LBA_mode1.csv, _shape_RIKS_peak.csv,
_shape_RIKS_last.csv: label, x, y, z, ux, uy, uz). OpenSees side: method A
modes (results/*modeA*.npz) and method B shapes (results/shape_*.npz).

  results/abaqus_vs_opensees_modes.png    LBA mode 1 vs method A mode, unrolled,
                                          colour = normal displacement; correlation
  results/abaqus_vs_opensees_shapes.png   Riks vs method B deformed shells (3D)
  results/abaqus_vs_opensees_curvature.png  transverse curvature at the bending peaks, unrolled

    python plot_abaqus_shapes.py [abaqus_results_dir [output_dir]]
"""
import math
import sys
from pathlib import Path

HERE = Path(__file__).resolve().parent
SK = HERE.parents[1] / '.claude' / 'skills'
sys.path.insert(0, str(SK / 'shell-mesh'))
sys.path.insert(0, str(HERE))
import matplotlib                          # noqa: E402
matplotlib.use('Agg')
import matplotlib.pyplot as plt            # noqa: E402
import numpy as np                         # noqa: E402
from matplotlib.colors import LinearSegmentedColormap   # noqa: E402
import shell_mesh as sm                    # noqa: E402
import buckled_shapes as bs                # noqa: E402

RES = HERE / 'results'
OUT = RES
ABQ = HERE / 'abaqus' / 'results'
BLUE, ORANGE = '#2a78d6', '#eb6834'
INK, MUTED = '#1f1f1e', '#6b6a63'
R, ALPHA = 13.3, 1.85
B = R * ALPHA
DIV = LinearSegmentedColormap.from_list('div', [BLUE, '#f0efec', ORANGE])
KAP = LinearSegmentedColormap.from_list('kap', [ORANGE, '#f0efec', BLUE])
SEQ = LinearSegmentedColormap.from_list('seq', ['#eef4fb', BLUE, '#123f73'])

#        name in the Abaqus files, L, OpenSees mode A file + mesh size, OpenSees B shape, title
CASES = [('tape_col_L1200', 1200.0, 'column_modeA_L1200_h5.npz', 5.0, 'col1200', 'Column L = 1200'),
         ('tape_col_L300', 300.0, 'column_modeA_L300_h2.npz', 2.0, 'col300', 'Column L = 300'),
         ('tape_opp_L200', 200.0, 'tape_opp_L200_h3_modeA.npz', 3.0, 'opp', 'Opposite-sense bending'),
         ('tape_eq_L200', 200.0, 'tape_eq_L200_h3_modeA.npz', 3.0, 'eq05', 'Equal-sense bending')]


def arc_s(y, z):
    """Arc position of a section point (arc centred at (0, R), mid-line at (0, 0))."""
    return R * (np.arctan2(z - R, y) + math.pi / 2) + B / 2


def grid_index(v, tol=0.05):
    """Index of each value among the distinct grid lines (values closer than tol [mm] coincide)."""
    order = np.argsort(v)
    line = np.concatenate([[0], np.cumsum(np.diff(v[order]) > tol)])
    idx = np.empty(len(v), int)
    idx[order] = line
    return idx, int(line[-1]) + 1


def read_abaqus(name, tag):
    """(X, U) on the structured (ns, nx) grid of an Abaqus shape CSV, header line; None if missing."""
    p = ABQ / f'{name}_shape_{tag}.csv'
    if not p.exists():
        return None
    head = p.read_text().splitlines()[0].lstrip('# ')
    d = np.loadtxt(p, delimiter=',', skiprows=2)
    x, y, z, u = d[:, 1], d[:, 2], d[:, 3], d[:, 4:7]
    s = arc_s(y, z)
    i, nx = grid_index(x)
    j, ns = grid_index(s)
    if nx * ns != len(x):
        raise ValueError(f'{p.name}: {len(x)} nodes do not form a {ns} x {nx} grid')
    X = np.zeros((ns, nx, 3))
    U = np.zeros_like(X)
    X[j, i] = np.c_[x, y, z]
    U[j, i] = u
    return X, U, head


def opensees_mode(fn, L, size):
    f = np.load(RES / fn)
    mode = {int(n): np.asarray(v)[:3] for n, v in zip(f['nodes'], f['vec'])}
    mesh = sm.ShellMesh(L, sm.CrossSection.arc(R, B), size)
    X = np.array([[mesh.coords(i, j) for i in range(mesh.nx + 1)] for j in range(mesh.ny + 1)])
    U = np.array([[mode.get(mesh.node_tag(i, j), np.zeros(3)) for i in range(mesh.nx + 1)]
                  for j in range(mesh.ny + 1)])
    return X, U


def normal_disp(X, U):
    """Displacement normal to the unloaded shell, + toward the centre of curvature, / max."""
    phi = (arc_s(X[..., 1], X[..., 2]) - B / 2) / R
    w = -U[..., 1] * np.sin(phi) + U[..., 2] * np.cos(phi)
    return w / np.abs(w).max()


def resample(Xa, Xo, wo):
    """OpenSees field wo (grid Xo) at the Abaqus grid points Xa (bilinear in x and s)."""
    xo, so = Xo[0, :, 0], arc_s(Xo[:, 0, 1], Xo[:, 0, 2])
    xa, sa = Xa[..., 0].ravel(), arc_s(Xa[..., 1], Xa[..., 2]).ravel()
    i = np.clip(np.searchsorted(xo, xa) - 1, 0, len(xo) - 2)
    j = np.clip(np.searchsorted(so, sa) - 1, 0, len(so) - 2)
    tx = np.clip((xa - xo[i]) / (xo[i + 1] - xo[i]), 0, 1)
    ts = np.clip((sa - so[j]) / (so[j + 1] - so[j]), 0, 1)
    v = (wo[j, i] * (1 - tx) * (1 - ts) + wo[j, i + 1] * tx * (1 - ts)
         + wo[j + 1, i] * (1 - tx) * ts + wo[j + 1, i + 1] * tx * ts)
    return v.reshape(Xa.shape[:2])


def unrolled(ax, X, w, title):
    im = ax.pcolormesh(X[0, :, 0], arc_s(X[:, 0, 1], X[:, 0, 2]), w, cmap=DIV, vmin=-1, vmax=1,
                       shading='gouraud')
    ax.set_title(title, color=INK, fontsize=9, loc='left')
    ax.set_xlabel('x [mm]', color=MUTED, fontsize=8)
    ax.set_ylabel('arc s [mm]', color=MUTED, fontsize=8)
    ax.tick_params(colors=MUTED, labelsize=7)
    return im


def fig_modes():
    fig, axes = plt.subplots(4, 2, figsize=(13, 11), layout='constrained')
    im = None
    for row, (name, L, fa, h, _, title) in zip(axes, CASES):
        a = read_abaqus(name, 'LBA_mode1')
        Xo, Uo = opensees_mode(fa, L, h)
        wo = normal_disp(Xo, Uo)
        im = unrolled(row[1], Xo, wo, f'{title}: OpenSees method A mode ({h:g} mm, ShellNLDKGQ)')
        if a is None:
            row[0].set_axis_off()
            row[0].text(0.5, 0.5, f'{name}_shape_LBA_mode1.csv not found', ha='center', color=MUTED,
                        transform=row[0].transAxes)
            continue
        Xa, Ua, head = a
        wa = normal_disp(Xa, Ua)
        wo_a = resample(Xa, Xo, wo)
        c = float(np.sum(wa * wo_a) / np.sqrt(np.sum(wa ** 2) * np.sum(wo_a ** 2)))
        wa *= np.sign(c) if c else 1.0                    # eigenvector sign is arbitrary
        unrolled(row[0], Xa, wa, f'{title}: Abaqus LBA mode 1 (S4R); correlation with OpenSees {abs(c):.2f}')
    cb = fig.colorbar(im, ax=axes, shrink=0.5, pad=0.01)
    cb.set_label('displacement normal to the shell / max  (+ toward the centre of curvature)', color=MUTED)
    fig.suptitle('Buckling modes, unrolled shell: Abaqus *BUCKLE mode 1 (left) vs OpenSees method A mode '
                 '(right, the imperfection used in OpenSees)', color=INK, fontsize=10.5)
    fig.savefig(OUT / 'abaqus_vs_opensees_modes.png', dpi=150)
    plt.close(fig)
    print('saved abaqus_vs_opensees_modes.png')


def fig_shapes():
    fig = plt.figure(figsize=(14, 11.5))
    fig.text(0.02, 0.993, 'Buckled shapes: Abaqus Riks (S4R, left) vs OpenSees method B (ASDShellQ4, right)',
             color=INK, fontsize=10.5, va='top')
    for r, (name, L, _, _, case, title) in enumerate(CASES):
        tag = 'RIKS_peak' if case in ('opp', 'eq05') else 'RIKS_last'
        Xo, Uo_all, h, k = bs.surface(case)
        ko = k if case in ('opp', 'eq05') else -1
        y0 = 0.73 - 0.24 * r
        for c, side in enumerate(('abaqus', 'opensees')):
            ax = fig.add_axes([0.01 + 0.47 * c, y0, 0.44, 0.2])
            if side == 'abaqus':
                a = read_abaqus(name, tag)
                if a is None:
                    ax.set_axis_off()
                    ax.text(0.5, 0.5, f'{name}_shape_{tag}.csv not found', ha='center', color=MUTED,
                            transform=ax.transAxes)
                    continue
                X, U, head = a
                lab = f'Abaqus {head}'
            else:
                X, U = Xo, Uo_all[ko]
                lab = f'OpenSees B: load {abs(h[ko, 1]):.4g} ({"peak" if ko == k else "last converged"})'
            if case.startswith('col'):
                Ul = U.copy()
                Ul[..., 0] = 0.0
                m = np.linalg.norm(Ul, axis=-1)
                bs.draw(ax, X + 5 * Ul, m / max(m.max(), 1e-12), SEQ, 0, 1, (15, -80) if L > 500 else (25, -70))
            else:
                lo, hi = (0, 2) if case == 'opp' else (0.85, 1.15)
                bs.draw(ax, X + U, bs.transverse_curvature(X + U), KAP, lo, hi, (25, -70))
            ax.set_title(f'{title}: {lab}', color=INK, fontsize=8.5, loc='left')
        if case.startswith('col'):
            bs.cbar(fig, [0.93, y0 + 0.03, 0.007, 0.14], SEQ, 0, 1, 'lateral displ. / max\n(shape x5)')
        else:
            bs.cbar(fig, [0.93, y0 + 0.03, 0.007, 0.14], KAP, lo, hi, 'transverse curvature x R\n(true scale)')
    fig.savefig(OUT / 'abaqus_vs_opensees_shapes.png', dpi=150)
    plt.close(fig)
    print('saved abaqus_vs_opensees_shapes.png')


def fig_curvature():
    """Transverse curvature x R at the peak of the bending paths on the unrolled shell,
    Abaqus vs OpenSees, same colour scale per row."""
    rows = [('tape_opp_L200', 'opp', 'Opposite-sense bending', (0.0, 2.0)),
            ('tape_eq_L200', 'eq05', 'Equal-sense bending', (0.9, 1.1)),
            ('tape_eq_L200', 'eq', 'Equal-sense bending', (0.9, 1.1))]
    fig, axes = plt.subplots(len(rows), 2, figsize=(13, 8.5), layout='constrained')
    for ax2, (name, case, title, (lo, hi)) in zip(axes, rows):
        a = read_abaqus(name, 'RIKS_peak')
        Xo, Uo, h, k = bs.surface(case, None)
        imp = {'opp': '0.05 mm', 'eq05': '0.05 mm', 'eq': '0.01 mm'}[case]
        for ax, (X, U, lab) in zip(ax2, (
                (a[0], a[1], f'Abaqus Riks peak, {a[2].split("load ")[1].split(" (")[0]} N mm (0.01 mm)'),
                (Xo, Uo[k], f'OpenSees B peak, {abs(h[k, 1]):.1f} N mm ({imp})'))):
            kap = bs.transverse_curvature(X + U)
            im = ax.pcolormesh(X[0, :, 0], arc_s(X[:, 0, 1], X[:, 0, 2]), kap, cmap=KAP, vmin=lo, vmax=hi,
                               shading='gouraud')
            ax.set_title(f'{title}: {lab}; min {kap.min():.2f}', color=INK, fontsize=9, loc='left')
            ax.set_xlabel('x from the clamped root [mm]', color=MUTED, fontsize=8)
            ax.set_ylabel('arc s [mm]', color=MUTED, fontsize=8)
            ax.tick_params(colors=MUTED, labelsize=7)
        cb = fig.colorbar(im, ax=ax2, shrink=0.9, pad=0.01)
        cb.set_label('curvature x R', color=MUTED, fontsize=8)
        cb.ax.tick_params(colors=MUTED, labelsize=7)
    fig.suptitle('Transverse curvature x R at the peak moment (1 = as made, < 1 = flattened), unrolled shell',
                 color=INK, fontsize=10.5)
    fig.savefig(OUT / 'abaqus_vs_opensees_curvature.png', dpi=150)
    plt.close(fig)
    print('saved abaqus_vs_opensees_curvature.png')


if __name__ == '__main__':
    if len(sys.argv) > 1:
        ABQ = Path(sys.argv[1])
    if len(sys.argv) > 2:
        OUT = Path(sys.argv[2])
    fig_modes()
    fig_shapes()
    fig_curvature()
