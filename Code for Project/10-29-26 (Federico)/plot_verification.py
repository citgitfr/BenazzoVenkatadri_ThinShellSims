"""
Figures of the buckling verification tests (steps 2-3 of BUCKLING_STUDY.md):

  results/verify_strip.png         strip column: lowest K_T eigenvalue vs load for
                                   ShellNLDKGQ / ASDShellQ4, and Euler errors (4 end
                                   conditions, 2 meshes, path A and dense LBA)
  results/verify_tape_column.png   tape-spring column: imperfect paths (method B)
                                   vs thin-walled theory and method A
  results/verify_modes.png         buckling modes (method A) of the tape column and
                                   of the tape under end moments

    python plot_verification.py      (the strip eigenvalue sweep runs live, ~20 s)
"""
import json
import math
import sys
from pathlib import Path

HERE = Path(__file__).resolve().parent
SK = HERE.parents[1] / '.claude' / 'skills'
for d in ('laminate-properties', 'shell-mesh', 'shell-bc-load', 'shell-buckling'):
    sys.path.insert(0, str(SK / d))
import matplotlib                          # noqa: E402
matplotlib.use('Agg')
import matplotlib.pyplot as plt            # noqa: E402
import numpy as np                         # noqa: E402

RES = HERE / 'results'
BLUE, ORANGE, AQUA = '#2a78d6', '#eb6834', '#1baf7a'     # categorical slots 1-3, fixed order
INK, MUTED, GRID = '#1f1f1e', '#6b6a63', '#e4e3dd'


def style(ax, title):
    ax.set_title(title, color=INK, loc='left', fontsize=10.5)
    ax.grid(color=GRID, lw=0.8)
    ax.set_axisbelow(True)
    for s in ('top', 'right'):
        ax.spines[s].set_visible(False)
    for s in ('left', 'bottom'):
        ax.spines[s].set_color(GRID)
    ax.tick_params(colors=MUTED)
    ax.xaxis.label.set_color(MUTED)
    ax.yaxis.label.set_color(MUTED)


# --- figure 1: strip column -----------------------------------------------------------------

def strip_sweep():
    """mu_min(P) / mu_min(0) of the pinned strip for both elements (fresh model per level)."""
    import openseespy.opensees as ops
    import laminate_properties as lp
    import shell_mesh as sm
    import shell_bc_load as bc
    import shell_buckling as sb
    from verify_column_buckling import L1, B1, T1, E1, NU1, EI1
    Pcr = math.pi**2 * EI1 / L1**2
    out = {}
    for el in ('ShellNLDKGQ', 'ASDShellQ4'):
        f, mu = np.linspace(0, 1.2, 7), []
        for x in f:
            mesh = sm.ShellMesh(L1, sm.CrossSection.flat(B1), 10.0)
            sb.build_shell(mesh, lp.Laminate.isotropic(E1, NU1, T1), el)
            a, b = bc.rigid_end(mesh, 'x0'), bc.rigid_end(mesh, 'xL')
            ops.fix(a, 1, 1, 1, 1, 0, 0)
            ops.fix(b, 0, 1, 1, 1, 0, 0)
            bc.point_load(b, (-1.0, 0, 0))
            sb._setup(1e-8, 25)
            ops.integrator('LoadControl', x * Pcr)
            ops.analysis('Static')
            ops.analyze(1)
            mu.append(sb.tangent_eigen(2)[0])
        out[el] = (f, np.array(mu) / mu[0])
    return out


def fig_strip():
    sweep = strip_sweep()
    res = json.loads((RES / 'column_buckling.json').read_text())
    fig, (a1, a2) = plt.subplots(1, 2, figsize=(11, 4.2))
    f = np.linspace(0, 1.2, 50)
    a1.plot(f, 1 - f, color=MUTED, lw=1, ls='--', label='exact: 1 - P / P_Euler')
    for el, col in (('ShellNLDKGQ', BLUE), ('ASDShellQ4', ORANGE)):
        x, y = sweep[el]
        a1.plot(x, y, '-o', color=col, lw=2, ms=8, mec='white', mew=2, label=el + (' -corotational' if el == 'ASDShellQ4' else ''))
    a1.axhline(0, color=GRID, lw=1)
    a1.set_xlabel('P / P_Euler')
    a1.set_ylabel('lowest eigenvalue of K_T  /  its value at P = 0')
    a1.legend(frameon=False, fontsize=8.5, labelcolor=INK, loc='lower left')
    style(a1, 'Strip 500 x 10 x 1 mm, pinned: does K_T see the load?')

    ends = ['pinned-pinned', 'clamped-free', 'clamped-clamped', 'clamped-pinned']
    series = [('path A, 10 mm', 'h=10', 'path', BLUE), ('path A, 5 mm', 'h=5', 'path', ORANGE),
              ('dense LBA, 5 mm', 'h=5', 'lba', AQUA)]
    w = 0.26
    for k, (lab, h, key, col) in enumerate(series):
        err = [100 * (res[f'strip {e} {h}'][key] / res[f'strip {e} {h}']['ref'] - 1) for e in ends]
        bars = a2.bar(np.arange(4) + (k - 1) * w, err, w * 0.92, color=col, label=lab)
        for b_, e_ in zip(bars, err):
            a2.text(b_.get_x() + b_.get_width() / 2, e_ + (0.008 if e_ >= 0 else -0.03), f'{e_:+.2f}',
                    ha='center', fontsize=7, color=MUTED)
    a2.axhline(0, color=MUTED, lw=1)
    a2.set_xticks(range(4), [e.replace('-', '-\n') for e in ends])
    a2.set_ylabel('critical load vs Euler  [%]')
    a2.set_ylim(-0.1, 0.4)
    a2.legend(frameon=False, fontsize=8.5, labelcolor=INK, loc='upper left')
    style(a2, 'Euler checks, ShellNLDKGQ (P = pi^2 EI / (KL)^2)')
    fig.tight_layout()
    fig.savefig(RES / 'verify_strip.png', dpi=150)
    plt.close(fig)
    print('saved verify_strip.png')


# --- figure 2: tape column -----------------------------------------------------------------

def fig_tape_column():
    res = json.loads((RES / 'column_path_B.json').read_text())
    fig, axes = plt.subplots(1, 2, figsize=(11, 4.2))
    for ax, L, title in ((axes[0], 1200, 'Tape column L = 1200 mm: flexural (z) buckling'),
                         (axes[1], 300, 'Tape column L = 300 mm: flexural-torsional buckling')):
        r0 = res[f'L={L} ASDShellQ4']
        ax.axhline(r0['theory'], color=INK, lw=1.2, label=f'thin-walled theory {r0["theory"]:.2f} N')
        ax.axhline(r0['A'], color=MUTED, lw=1.2, ls='--', label=f'method A (K_T eigen) {r0["A"]:.2f} N')
        for el, col in (('ASDShellQ4', BLUE), ('ShellNLDKGQ', ORANGE)):
            r = res[f'L={L} {el}']
            ax.plot([0] + r['d'], [0] + r['P'], '-', color=col, lw=2,
                    label=f'B {el}, Southwell {r["southwell"]:.2f} N ({100 * (r["southwell"] / r["theory"] - 1):+.1f}%)')
        ax.set_xlabel(f'growth of the mode displacement [mm]  (imperfection a0 = {r0["a0"]:.2g} mm)')
        ax.set_ylabel('axial load P [N]')
        ax.set_ylim(0, max(r0['A'], res[f'L={L} ShellNLDKGQ']['P_last']) * 1.12)
        ax.set_xlim(left=0)
        ax.legend(frameon=False, fontsize=8, labelcolor=INK, loc='lower right')
        style(ax, title)
    fig.suptitle('CuBe tape spring R = 13.3 mm, alpha = 1.85 rad, t = 0.1 mm, fork supports; imperfect paths (method B)',
                 color=INK, fontsize=10.5)
    fig.tight_layout()
    fig.savefig(RES / 'verify_tape_column.png', dpi=150)
    plt.close(fig)
    print('saved verify_tape_column.png')


# --- figure 3: mode shapes ------------------------------------------------------------------

def unrolled(ax, L, size, modefile, title, R=13.3, alpha=1.85):
    """Mode on the unrolled shell (x along the tape, s across the arc), colour =
    displacement normal to the shell (+ toward the centre of curvature), and
    the end-section translation (uy, uz) of the arc mid-line in the corner."""
    import shell_mesh as sm
    from matplotlib.colors import LinearSegmentedColormap
    cmap = LinearSegmentedColormap.from_list('div', [BLUE, '#f0efec', ORANGE])     # diverging, neutral middle
    f = np.load(modefile)
    mode = {int(n): v for n, v in zip(f['nodes'], f['vec'])}
    mesh = sm.ShellMesh(L, sm.CrossSection.arc(R, R * alpha), size)
    W = np.zeros((mesh.ny + 1, mesh.nx + 1))
    for j in range(mesh.ny + 1):
        phi = (mesh.s[j] - mesh.b / 2) / R
        n = np.array([0.0, -math.sin(phi), math.cos(phi)])
        for i in range(mesh.nx + 1):
            W[j, i] = np.asarray(mode.get(mesh.node_tag(i, j), np.zeros(3)))[:3] @ n
    W /= np.abs(W).max()
    x = np.linspace(0, L, mesh.nx + 1)
    im = ax.pcolormesh(x, mesh.s, W, cmap=cmap, vmin=-1, vmax=1, shading='gouraud')
    ax.set_xlabel('x along the tape [mm]')
    ax.set_ylabel('arc position s [mm]')
    style(ax, title)
    ax.grid(False)
    return im


def fig_modes():
    cases = [(1200, 5, 'column_modeA_L1200_h5.npz',
              'Column L = 1200 (5 mm): flexural, whole section moves in z'),
             (300, 2, 'column_modeA_L300_h2.npz',
              'Column L = 300 (2 mm): flexural-torsional, edges move oppositely'),
             (200, 2, 'tape_eq_L200_h2_modeA.npz',
              'Equal-sense bending (2 mm): critical mode at 172 N mm'),
             (200, 3, 'tape_opp_L200_h3_modeA_crit.npz',
              'Opposite sense (3 mm): spurious A mode at 311 N mm')]
    fig, axes = plt.subplots(2, 2, figsize=(13, 6.8), layout='constrained')
    for ax, (L, h, fn, title) in zip(axes.ravel(), cases):
        if (RES / fn).exists():
            im = unrolled(ax, L, h, RES / fn, title)
    cb = fig.colorbar(im, ax=axes, shrink=0.6, pad=0.02)
    cb.set_label('displacement normal to the shell / max  (+ toward the centre of curvature)', color=MUTED)
    cb.ax.tick_params(colors=MUTED)
    fig.suptitle('Buckling modes of method A (eigenvector of K_T at the zero crossing), on the unrolled shell',
                 color=INK, fontsize=10.5)
    # (no tight_layout: the colorbar spans both rows)
    fig.savefig(RES / 'verify_modes.png', dpi=150)
    plt.close(fig)
    print('saved verify_modes.png')


if __name__ == '__main__':
    which = sys.argv[1:] or ['strip', 'tape', 'modes']
    if 'strip' in which:
        fig_strip()
    if 'tape' in which:
        fig_tape_column()
    if 'modes' in which:
        fig_modes()
