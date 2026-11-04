"""
Revised system diagram (after Lab 2, Fig. 1) with the new verification protocol:
the Abaqus verifier agent is split into a deterministic OpenSeesPy -> Abaqus
translator (opensees-to-abaqus skill, with its own model check) and an
independent results-comparison agent that sees only the outputs of the two runs.

  python system_diagram.py [out.png]
"""
import sys
from pathlib import Path

import matplotlib
matplotlib.use('Agg')
import matplotlib.patheffects as pe            # noqa: E402
import matplotlib.pyplot as plt                # noqa: E402
from matplotlib.patches import FancyBboxPatch  # noqa: E402

STYLE = {  # edge, face
    'agent': ('#cc2b2b', '#fdeceb'),
    'tool': ('#1f5fbf', '#e9f0fb'),
    'lib': ('#2e7d32', '#e8f4e8'),
    'human': ('#6a2b9a', '#f2e8f7'),
    'exec': ('#e08e00', '#fff4dd'),
}
plt.rcParams['font.family'] = 'serif'
plt.rcParams['font.serif'] = ['Times New Roman', 'DejaVu Serif']

fig = plt.figure(figsize=(17, 14.2))
ax = fig.add_axes([0, 0, 1, 1])
ax.set_xlim(0, 170)
ax.set_ylim(-2, 140)
ax.axis('off')
FS = 13.5


def box(x0, y0, x1, y1, kind, title=None, text='', fs=FS, new=False):
    ec, fc = STYLE[kind]
    ax.add_patch(FancyBboxPatch((x0, y0), x1 - x0, y1 - y0, boxstyle='round,pad=0,rounding_size=1.2',
                                lw=2.6, ec=ec, fc=fc, zorder=2))
    cx, cy = (x0 + x1) / 2, (y0 + y1) / 2
    if title:
        lh = fs * 1.3 / 72 * 10                      # line height in data units (10 units per inch)
        n = text.count('\n') + 1
        ax.text(cx, cy + n * lh / 2, title, ha='center', va='center', fontsize=fs + 1, fontweight='bold', zorder=3)
        ax.text(cx, cy - lh / 2, text, ha='center', va='center', fontsize=fs, zorder=3, linespacing=1.25)
    else:
        ax.text(cx, cy, text, ha='center', va='center', fontsize=fs, zorder=3, linespacing=1.25)
    if new:
        ax.text(x1 - 0.8, y1 - 0.7, 'NEW', ha='right', va='top', fontsize=9.5, fontweight='bold', color=ec, zorder=3)


def arrow(pts, label=None, at=None, ha='left', halo=False, style='-|>'):
    xs, ys = zip(*pts)
    kw = dict(color='k', lw=1.8, zorder=1.5 if not halo else 1.8, solid_capstyle='butt')
    if halo:
        kw['path_effects'] = [pe.Stroke(linewidth=7, foreground='white'), pe.Normal()]
    ax.plot(xs[:-1] + (xs[-1],), ys[:-1] + (ys[-1],), **kw)
    ax.annotate('', xy=pts[-1], xytext=pts[-2],
                arrowprops=dict(arrowstyle=style, color='k', lw=1.8, mutation_scale=18, shrinkA=0, shrinkB=0),
                zorder=4)
    if label:
        ax.text(*at, label, fontsize=FS - 1.5, style='italic', ha=ha, va='center', zorder=5,
                bbox=dict(fc='white', ec='none', pad=0.6))


# legend
for k, (kind, lbl) in enumerate((('agent', 'Agent (LLM)'), ('tool', 'Deterministic tool'), ('lib', 'Library / dataset'),
                                 ('human', 'Human action'), ('exec', 'Code execution'))):
    x = 3 + 34 * k
    ec, fc = STYLE[kind]
    ax.add_patch(FancyBboxPatch((x, 133.5), 5, 3.4, boxstyle='round,pad=0,rounding_size=0.6', lw=2.2, ec=ec, fc=fc))
    ax.text(x + 7, 135.2, lbl, fontsize=FS + 1.5, va='center')

# libraries and orchestrator
box(34, 114, 136, 126, 'agent', 'Librarian agent',
    'searches the literature to populate tables of candidate materials, layups\nand geometric parameters')
for x0, txt in ((31, 'Table of CFRP lamina\nstiffness and\nstrength properties'),
                (68.5, 'Table of commonly\nused layups for\nCFRP booms'),
                (106, 'Table of geometric\nparameters for each\nboom cross-section')):
    box(x0, 97, x0 + 33, 108.5, 'lib', text=txt)
    arrow([(x0 + 16.5, 114), (x0 + 16.5, 108.5)])
    arrow([(x0 + 16.5, 97), (x0 + 16.5, 88)])
box(2, 70, 31, 88, 'human', 'User input', 'cross-section class,\nBCs and loading,\nobjective,\nconstraints')
box(34, 70, 136, 88, 'agent', 'Optimization orchestrator agent',
    'chooses an initial material/layup/geometry; calls the tools to write, run\n'
    'and plot OpenSeesPy models; evaluates objective and constraints; decides the\n'
    'next design; starts the verification protocol every few runs or after large\n'
    'jumps in objective/constraints; stops at diminishing returns')
box(139, 70, 168, 88, 'human', 'User output', 'receives the\noptimized design\nand the verification\nrecords')
arrow([(31, 79), (34, 79)])
arrow([(136, 79), (139, 79)])

# OpenSeesPy branch
gens = ((2, 'OpenSeesPy ply/\nlayup property\ncode generator'), (28, 'OpenSeesPy\nmesh code\ngenerator'),
        (54, 'OpenSeesPy\nload/BC code\ngenerator'))
ax.plot([13.5, 65.5], [67, 67], color='k', lw=1.8, zorder=1.5)
ax.plot([52, 52], [70, 67], color='k', lw=1.8, zorder=1.5)
for x0, txt in gens:
    box(x0, 54, x0 + 23, 64, 'tool', text=txt)
    arrow([(x0 + 11.5, 67), (x0 + 11.5, 64)])
    arrow([(x0 + 11.5, 54), (x0 + 11.5, 50.5)])
box(2, 44.5, 77, 50.5, 'tool', text='Aggregator of code snippets into one standalone script')
box(20, 32, 59, 39, 'exec', text='OpenSeesPy model run')
arrow([(39.5, 44.5), (39.5, 39)])
box(2, 16, 37, 27, 'tool', text='Objective/constraint\ncalculator (incl.\nHashin failure check)')
box(41, 16, 77, 27, 'tool', text='OpenSeesPy output\nvisualizer')
ax.plot([19.5, 59], [29.5, 29.5], color='k', lw=1.8, zorder=1.5)
ax.plot([39.5, 39.5], [32, 29.5], color='k', lw=1.8, zorder=1.5)
arrow([(19.5, 29.5), (19.5, 27)])
arrow([(59, 29.5), (59, 27)])
ax.plot([19.5, 19.5, 82], [16, 12.5, 12.5], color='k', lw=1.8, zorder=1.5)
ax.plot([59, 59], [16, 12.5], color='k', lw=1.8, zorder=1.5)
arrow([(82, 12.5), (82, 70)], 'objective,\nconstraints,\nplots', (82, 21), ha='center', halo=True)

# verification protocol
box(94, 40, 125, 55, 'tool', text='OpenSeesPy-to-Abaqus\ntranslator: Abaqus Python\nscript + automatic model\n'
    'check vs. the OpenSeesPy\nscript (mesh, plies, BCs,\nloads, step)', fs=FS - 1, new=True)
arrow([(77, 47.5), (94, 47.5)], 'assembled\nscript', (88.5, 47.5), ha='center')
arrow([(109.5, 70), (109.5, 55)], 'verify', (109.5, 62.5), ha='center')
box(91, 21, 117, 32, 'human', text='Script moved to an\nAbaqus machine;\nuser checks set-up', fs=FS - 0.5)
arrow([(104, 40), (104, 32)])
box(109, 4, 144, 15, 'exec', text='Abaqus run, ODB output\nand ODB extraction to\nplain arrays', fs=FS - 0.5, new=True)
arrow([(104, 21), (104, 9.5), (109, 9.5)])
box(137, 21, 168, 32, 'human', text='ODB extract moved\nback to the workspace', fs=FS - 0.5)
arrow([(144, 9.5), (152.5, 9.5), (152.5, 21)])

# information barrier around the comparison agent
ax.add_patch(FancyBboxPatch((125.5, 34), 44, 24, boxstyle='round,pad=0,rounding_size=1.2', lw=1.6, ls=(0, (5, 3)),
                            ec='0.35', fc='none', zorder=1.2))
box(127.5, 41, 167.5, 56.5, 'agent', 'Results comparison agent',
    'sees only the outputs of both runs;\ndraws both and compares displacements,\nstrains, curvatures, ply stresses,\n'
    'section forces and load path', fs=FS - 1.5, new=True)
ax.text(145, 37.5, 'outputs only: no model code,\nno Abaqus script', ha='center', va='center', fontsize=FS - 3,
        style='italic', color='0.3')
arrow([(160, 32), (160, 41)])
arrow([(59, 35.5), (130, 35.5), (130, 41)], 'results', (91, 35.5), ha='center', halo=True)
box(118, 60, 152, 67.5, 'human', text='User reads comparison,\nadjusts orchestrator', fs=FS - 0.5)
arrow([(140, 56.5), (140, 60)])
arrow([(128, 67.5), (128, 70)])

out = Path(sys.argv[1]) if len(sys.argv) > 1 else Path(__file__).resolve().parent / 'system_diagram_verification.png'
fig.savefig(out, dpi=170)
print(f'wrote {out}')
