"""
Moment-rotation curves of the tape-spring bending runs (results/tape_*.json
from tape_spring_bending.py): opposite-sense and equal-sense side by side,
method B paths (ASDShellQ4, ShellNLDKGQ) and the method A critical points.

    python plot_tape_bending.py      -> results/tape_spring_bending.png
"""
import json
from pathlib import Path

import matplotlib
matplotlib.use('Agg')
import matplotlib.pyplot as plt   # noqa: E402
import numpy as np                # noqa: E402

HERE = Path(__file__).resolve().parent
RES = HERE / 'results'
BLUE, ORANGE, AQUA = '#2a78d6', '#eb6834', '#1baf7a'     # categorical slots 1-3, fixed order
INK, MUTED, GRID = '#1f1f1e', '#6b6a63', '#e4e3dd'

CURVES = {   # (json tag, B key, label, colour, dash)
    'opp': [('tape_opp_L200_h3', 'B_ASDShellQ4', 'L = 200, 3 mm, ASDShellQ4', BLUE, '-'),
            ('tape_opp_L200_h3', 'B_ShellNLDKGQ', 'L = 200, 3 mm, ShellNLDKGQ', BLUE, ':'),
            ('tape_opp_L200_h2', 'B_ASDShellQ4', 'L = 200, 2 mm, ASDShellQ4', ORANGE, '-'),
            ('tape_opp_L400_h3', 'B_ASDShellQ4', 'L = 400, 3 mm, ASDShellQ4', AQUA, '-')],
    'eq': [('tape_eq_L200_h3', 'B_ASDShellQ4', 'L = 200, 3 mm, ASDShellQ4', BLUE, '-'),
           ('tape_eq_L200_h3', 'B_ShellNLDKGQ', 'L = 200, 3 mm, ShellNLDKGQ', BLUE, ':'),
           ('tape_eq_L200_h2', 'B_ASDShellQ4', 'L = 200, 2 mm, ASDShellQ4', ORANGE, '-'),
           ('tape_eq_L400_h3', 'B_ASDShellQ4', 'L = 400, 3 mm, ASDShellQ4', AQUA, '-')],
}
TITLE = {'opp': 'Opposite-sense bending', 'eq': 'Equal-sense bending'}


def main():
    fig, axes = plt.subplots(1, 2, figsize=(11, 4.4))
    for ax, sense in zip(axes, ('opp', 'eq')):
        for tag, key, label, col, ls in CURVES[sense]:
            p = RES / f'{tag}.json'
            if not p.exists():
                continue
            d = json.loads(p.read_text())
            if key in d:
                h = np.array(d[key]['history'])
                ax.plot(np.abs(h[:, 0]), np.abs(h[:, 1]), ls, color=col, lw=2, label=label)
                ax.plot(d[key]['theta_peak'], d[key]['M_peak'], 'o', ms=8, color=col,
                        mec='white', mew=2)
            if key == 'B_ASDShellQ4' and d.get('A', {}).get('M_cr'):
                ax.plot(d['A']['theta_cr'], d['A']['M_cr'], 'x', ms=9, mew=2, color=col)
        ax.plot([], [], 'x', color=MUTED, ms=9, mew=2, label='A: K_T eigenvalue = 0 (ShellNLDKGQ)')
        ax.plot([], [], 'o', color=MUTED, ms=8, label='B: peak moment')
        ax.set_title(TITLE[sense], color=INK, loc='left', fontsize=11)
        ax.set_xlabel('tip rotation [rad]', color=MUTED)
        ax.set_ylabel('|tip moment| [N mm]', color=MUTED)
        ax.grid(color=GRID, lw=0.8)
        ax.set_axisbelow(True)
        for s in ('top', 'right'):
            ax.spines[s].set_visible(False)
        for s in ('left', 'bottom'):
            ax.spines[s].set_color(GRID)
        ax.tick_params(colors=MUTED)
        ax.set_xlim(left=0)
        ax.set_ylim(bottom=0)
        ax.legend(frameon=False, fontsize=8, labelcolor=INK, loc='lower right')
    fig.suptitle('CuBe tape spring (R = 13.3 mm, alpha = 1.85 rad, t = 0.1 mm), clamped root, tip moment',
                 color=INK, fontsize=11)
    fig.tight_layout()
    out = RES / 'tape_spring_bending.png'
    fig.savefig(out, dpi=150)
    print(f'saved {out}')


if __name__ == '__main__':
    main()
