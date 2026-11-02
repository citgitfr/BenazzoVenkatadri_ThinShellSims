"""
Abaqus (abaqus/results/*_results.txt, S4R) vs OpenSees (method B, ASDShellQ4)
load paths of the four buckling cases, with the critical values of both.

  columns: axial load vs u_z at the Abaqus monitor point (mid-length;
           mid-arc for L = 1200, arc edge for L = 300), OpenSees read at the
           same point from results/shape_col*.npz
  bending: tip moment vs tip rotation (rigid end, both programs)

    python plot_abaqus_comparison.py      -> results/abaqus_vs_opensees.png
"""
import json
import re
import sys
from pathlib import Path

HERE = Path(__file__).resolve().parent
SK = HERE.parents[1] / '.claude' / 'skills'
sys.path.insert(0, str(SK / 'shell-mesh'))
import matplotlib                          # noqa: E402
matplotlib.use('Agg')
import matplotlib.pyplot as plt            # noqa: E402
import numpy as np                         # noqa: E402
import shell_mesh as sm                    # noqa: E402

RES = HERE / 'results'
ABQ = HERE / 'abaqus' / 'results'
BLUE, ORANGE, AQUA = '#2a78d6', '#eb6834', '#1baf7a'
INK, MUTED, GRID = '#1f1f1e', '#6b6a63', '#e4e3dd'
R, B = 13.3, 13.3 * 1.85


def abaqus(fn):
    """LBA mode-1 load, NLB values, Riks peak and the sampled Riks path (load, monitor)."""
    txt = (ABQ / fn).read_text()
    lba = float(re.search(r'mode 1: eigenvalue \S+ -> (\S+)', txt).group(1))
    nlb = [(float(f), float(c)) for f, c in re.findall(r'f = (\S+): preload .* -> critical (\S+)', txt)]
    peak = float(re.search(r'buckling strength (\S+)', txt).group(1))
    block = txt.split('path (load, monitor')[1].split('Southwell')[0]
    path = np.array([[float(a), float(b)] for a, b in re.findall(r'^\s+(\S+)\s+(\S+)\s*$', block, re.M)])
    return dict(lba=lba, nlb=nlb, peak=peak, path=path)


def opensees_column(case, s):
    """OpenSees B path: load and u_z at (x = L/2, arc position s)."""
    f = np.load(RES / f'shape_{case}.npz')
    ny, nx = f['grid'].shape
    X = f['X'].reshape(ny, nx, 3)
    U = f['U'].reshape(-1, ny, nx, 3)
    y, z = sm.CrossSection.arc(R, B).point(s)
    i = nx // 2
    j = int(np.argmin((X[:, i, 1] - y) ** 2 + (X[:, i, 2] - z) ** 2))
    return f['history'][:, 1], U[:, j, i, 2]


def style(ax, title, xlabel, ylabel):
    ax.set_title(title, color=INK, loc='left', fontsize=10)
    ax.set_xlabel(xlabel, color=MUTED)
    ax.set_ylabel(ylabel, color=MUTED)
    ax.grid(color=GRID, lw=0.8)
    ax.set_axisbelow(True)
    for s_ in ('top', 'right'):
        ax.spines[s_].set_visible(False)
    for s_ in ('left', 'bottom'):
        ax.spines[s_].set_color(GRID)
    ax.tick_params(colors=MUTED)
    ax.legend(frameon=False, fontsize=7.5, labelcolor=INK, loc='lower right')


def hline(ax, y, label, ls, color=MUTED):
    ax.axhline(y, color=color, lw=1.1, ls=ls, label=label)


def main():
    colB = json.loads((RES / 'column_path_B.json').read_text())
    fig, axes = plt.subplots(2, 2, figsize=(13, 9), layout='constrained')

    for ax, case, fn, s, title in (
            (axes[0, 0], 'col1200', 'tape_col_L1200_S4R_2p5mm_results.txt', B / 2,
             'Column L = 1200 mm (flexural)'),
            (axes[0, 1], 'col300', 'tape_col_L300_S4R_1p25mm_results.txt', 0.0,
             'Column L = 300 mm (flexural-torsional)')):
        a = abaqus(fn)
        r = colB[f'L={case[3:]} ASDShellQ4']
        P, uz = opensees_column(case, s)
        hline(ax, r['theory'], f'thin-walled theory {r["theory"]:.2f} N', '-', INK)
        hline(ax, a['lba'], f'Abaqus LBA = NLB {a["lba"]:.2f} N', '--')
        hline(ax, r['southwell'], f'OpenSees B Southwell {r["southwell"]:.2f} N', ':', BLUE)
        ax.plot(np.abs(a['path'][:, 1]), a['path'][:, 0], '-o', color=ORANGE, lw=2, ms=4,
                label=f'Abaqus Riks (S4R), max {a["peak"]:.2f} N')
        ax.plot(np.abs(uz), P, '-o', color=BLUE, lw=2, ms=4,
                label=f'OpenSees B (ASDShellQ4), load control, last {P[-1]:.2f} N')
        ax.set_ylim(0, r['theory'] * 1.12)
        ax.set_xlim(left=0)
        style(ax, f'{title}: imperfection L/1000', '|u_z| at the monitor point [mm]', 'axial load P [N]')

    opp = json.loads((RES / 'tape_opp_L200_h2.json').read_text())['B_ASDShellQ4']
    for ax, sense, fn, title in (
            (axes[1, 0], 'opp', 'tape_opp_L200_S4R_2mm_results.txt', 'Opposite-sense bending, L = 200 mm'),
            (axes[1, 1], 'eq', 'tape_eq_L200_S4R_2mm_results.txt', 'Equal-sense bending, L = 200 mm')):
        xmax = 0.2 if sense == 'opp' else 0.06
        a = abaqus(fn)
        sgn = 1.0 if sense == 'opp' else -1.0                 # rotation in the direction of the moment
        ax.axhline(0, color=GRID, lw=1)
        hline(ax, abs(a['lba']), f'Abaqus LBA {abs(a["lba"]):.1f} N mm'
              + (' (reversed moment)' if a['lba'] < 0 else ''), '--')
        for f, c in a['nlb']:
            ax.plot([0.97 * xmax], [c], marker='<', color=MUTED, ms=7, ls='none',
                    label='Abaqus NLB (f = 0.5, 0.8, 0.95)' if f == a['nlb'][0][0] else None)
        ax.plot(sgn * a['path'][:, 1], a['path'][:, 0], '-o', color=ORANGE, lw=2, ms=4,
                label=f'Abaqus Riks, 0.01 mm, peak {a["peak"]:.1f} N mm')
        if sense == 'opp':
            h = np.array(opp['history'])
            ax.plot(np.abs(h[:, 0]), np.abs(h[:, 1]), '-o', color=BLUE, lw=2, ms=4,
                    label=f'OpenSees B 2 mm, perfect geometry, peak {opp["M_peak"]:.1f} N mm')
            h3 = np.load(RES / 'shape_opp.npz')['history']
            ax.plot(np.abs(h3[:, 0]), np.abs(h3[:, 1]), '-', color=AQUA, lw=1.8,
                    label=f'OpenSees B 3 mm, 0.05 mm, peak {np.abs(h3[:, 1]).max():.1f} N mm')
        else:
            for case, col, lab in (('eq', BLUE, '0.01 mm (stall)'), ('eq05', AQUA, '0.05 mm')):
                h = np.load(RES / f'shape_{case}.npz')['history']
                ax.plot(np.abs(h[:, 0]), np.abs(h[:, 1]), '-o', color=col, lw=2, ms=4,
                        label=f'OpenSees B 3 mm, {lab}, max {np.abs(h[:, 1]).max():.1f} N mm')
        ax.set_xlim(0, xmax)
        ax.set_ylim(0, 450 if sense == 'opp' else 200)
        style(ax, f'{title}\nAbaqus Riks sampled every ~12 increments; after the snap it reverses (off scale)',
              'tip rotation in the direction of the moment [rad]', 'tip moment [N mm]')
        ax.legend(frameon=False, fontsize=7.5, labelcolor=INK, loc='lower center')
    fig.suptitle('Abaqus (S4R, LBA mode-1 imperfection) vs OpenSees (ASDShellQ4, method-A mode imperfection): '
                 'CuBe tape spring R = 13.3 mm, alpha = 1.85 rad, t = 0.1 mm', color=INK, fontsize=10.5)
    fig.savefig(RES / 'abaqus_vs_opensees.png', dpi=150)
    print('saved abaqus_vs_opensees.png')


if __name__ == '__main__':
    main()
