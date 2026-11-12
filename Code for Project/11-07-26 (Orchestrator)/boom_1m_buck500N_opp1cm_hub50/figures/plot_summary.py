"""Summary figures of study boom_1m_buck500N_opp1cm_hub50 (iterations 1-5):
  summary_requirements.png  - each requirement vs the 5 FE designs
  best_design.png           - cross-section (FE mesh, root section) and layup of the best design
Numbers are read from iterations/itNNN/design.json and constraints.json only."""
import json
from pathlib import Path
import numpy as np
import matplotlib
matplotlib.use('Agg')
import matplotlib.pyplot as plt
from matplotlib.patches import Rectangle

SD = Path(__file__).resolve().parent.parent
OUT = Path(__file__).resolve().parent
D = [json.loads((SD / f'iterations/it{i:03d}/design.json').read_text()) for i in range(1, 6)]
st = json.loads((SD / 'state.json').read_text())
best_key = st['best']['design']
P_LOAD = 50.0                                    # N, tip load of the stiffness requirement

INK, MUTED, GRID = '#1f2328', '#6b7280', '#e5e7eb'
BEST, FEAS, INFEAS, REQ = '#2a6fb0', '#9db7d5', '#d4d4d4', '#b42318'

labels = [f'it{d["iter"]}\n{d["type"]} {d["geometry"]}\n{d["material"]} {d["layup_str"]}\n'
          f'h {d["h_mm"]:.3f} mm' for d in D]


def colour(d):
    return BEST if d['key'] == best_key else (FEAS if d['feasible'] else INFEAS)


def panel(ax, vals, title, unit, limit, kind, texts=None, fmt='{:.3g}'):
    x = np.arange(len(D))
    ymax = max([v for v in vals if v is not None] + [limit]) * 1.25
    for i, (d, v) in enumerate(zip(D, vals)):
        if v is None:
            ax.text(i, ymax * 0.04, texts[i] if texts else 'not run', ha='center', va='bottom', fontsize=7.5,
                    color=MUTED, rotation=90)
            continue
        ok = v >= limit if kind == 'min' else v <= limit if kind == 'max' else v < limit
        ax.bar(i, v, 0.62, color=colour(d), hatch=None if ok else '///', edgecolor='white', linewidth=0)
        t = (texts[i] if texts and texts[i] else fmt.format(v)) + ('' if ok else '\nFAIL')
        if ok and kind != 'min' and abs(v - limit) < 0.08 * ymax:         # next to the requirement line: label inside the bar
            ax.text(i, v - ymax * 0.03, t, ha='center', va='top', fontsize=8, color='white' if
                    colour(d) == BEST else INK)
        else:
            ax.text(i, v + ymax * 0.015, t, ha='center', va='bottom', fontsize=8, color=INK if ok else REQ)
    ax.axhline(limit, color=REQ, lw=1.5, ls='--', zorder=3)
    word = {'min': 'required ≥', 'max': 'allowed ≤', 'lt': 'allowed <'}[kind]
    title = f'{title}\n{word} {limit:g} {unit}'.replace(' -', '')
    ax.set_ylim(0, ymax)
    ax.set_xticks(x, labels, fontsize=6.5)
    ax.set_title(title, fontsize=10, loc='left', color=INK)
    ax.set_ylabel(unit, color=MUTED, fontsize=9)
    ax.grid(axis='y', color=GRID, lw=0.8)
    ax.set_axisbelow(True)
    for s in ('top', 'right'):
        ax.spines[s].set_visible(False)
    ax.tick_params(colors=MUTED)


fig, axs = plt.subplots(2, 3, figsize=(16, 9.5))
axs = axs.ravel()
# objective: mass (no requirement line: minimised)
ax = axs[0]
m = [d['objective'] * 1000 for d in D]
for i, d in enumerate(D):
    ax.bar(i, m[i], 0.62, color=colour(d), hatch=None if d['feasible'] else '///', edgecolor='white', linewidth=0)
    ax.text(i, m[i] + 1, f'{m[i]:.1f} g' + ('' if d['feasible'] else '\ninfeasible'), ha='center', va='bottom',
            fontsize=8, color=INK if d['feasible'] else REQ)
ax.set_ylim(0, max(m) * 1.25)
ax.set_xticks(range(len(D)), labels, fontsize=6.5)
ax.set_title('Objective: boom mass (minimise)', fontsize=10, loc='left', color=INK)
ax.set_ylabel('g', color=MUTED, fontsize=9)
ax.grid(axis='y', color=GRID, lw=0.8); ax.set_axisbelow(True)
for s in ('top', 'right'):
    ax.spines[s].set_visible(False)
ax.tick_params(colors=MUTED)

panel(axs[1], [P_LOAD / d['k_fe'] for d in D], 'Tip deflection, 50 N opposite-sense load, clamped root',
      'mm', 10.0, 'max', fmt='{:.2f} mm')

bt = []
for d in D:
    k = d.get('buckling_kind') or ''
    v = d.get('buckling_value')
    bt.append(None if v is None else (f'≥ {v:.0f} N' if 'LOWER BOUND' in k else f'{v:.0f} N'))
panel(axs[2], [d.get('buckling_value') for d in D], 'Buckling load, axial compression, pin/pin', 'N', 500.0,
      'min', texts=[t if t else 'skipped\n(fails stiffness)' for t in bt])
panel(axs[3], [d.get('F_governing_fc') for d in D], 'Hashin failure index under the 50 N load', '-', 1.0, 'lt',
      fmt='{:.2f}')
panel(axs[4], [d.get('F_hub') for d in D], 'Coiling on the 50 mm hub (flattened + bent, Hashin)', '-', 1.0, 'lt',
      fmt='{:.2f}')

ax = axs[5]
ax.axis('off')
ax.add_patch(Rectangle((0.02, 0.80), 0.06, 0.06, color=BEST, transform=ax.transAxes))
ax.text(0.11, 0.83, f'best feasible design ({best_key})', va='center', fontsize=9, transform=ax.transAxes)
ax.add_patch(Rectangle((0.02, 0.70), 0.06, 0.06, color=FEAS, transform=ax.transAxes))
ax.text(0.11, 0.73, 'other feasible design', va='center', fontsize=9, transform=ax.transAxes)
ax.add_patch(Rectangle((0.02, 0.60), 0.06, 0.06, facecolor=INFEAS, hatch='///', edgecolor='white',
                       transform=ax.transAxes))
ax.text(0.11, 0.63, 'violates this requirement (FAIL)', va='center', fontsize=9, transform=ax.transAxes)
ax.add_patch(Rectangle((0.02, 0.50), 0.06, 0.06, color=INFEAS, transform=ax.transAxes))
ax.text(0.11, 0.53, 'infeasible design (passes this one, fails another)', va='center', fontsize=9,
        transform=ax.transAxes)
ax.plot([0.02, 0.08], [0.43, 0.43], color=REQ, ls='--', lw=1.5, transform=ax.transAxes)
ax.text(0.11, 0.43, 'requirement (value in each panel title)', va='center', fontsize=9, transform=ax.transAxes)
ax.text(0.02, 0.33, '"≥ N": buckling path stopped by design after passing the\n'
        'requirement (lower bound; no buckle seen on the path).\n'
        'it1: path stalled at 49 N (local buckling of the TRAC flanges).\n'
        'it2: buckling not run (already fails stiffness).\n'
        'All results OpenSeesPy FE, 1 m boom; it3-it5 mesh-converged.',
        va='top', fontsize=8.5, color=MUTED, transform=ax.transAxes)
fig.suptitle('1 m coilable boom: requirements vs the 5 FE designs (study boom_1m_buck500N_opp1cm_hub50)',
             fontsize=12, x=0.01, ha='left', color=INK)
fig.tight_layout(rect=(0, 0, 1, 0.96))
fig.savefig(OUT / 'summary_requirements.png', dpi=150)
plt.close(fig)

# --- best design: cross-section from the FE mesh (root section x = 0) and the layup ---------------------
b = next(d for d in D if d['key'] == best_key)
z = np.load(SD / f'iterations/it{b["iter"]:03d}/results/{b["name"]}.npz', allow_pickle=True)
P, F = z['points'], z['faces']
x0 = P[:, 0].min()
on = np.abs(P[:, 0] - x0) < 1e-6
segs = set()
for f in F:
    e = [n for n in f if on[n]]
    if len(e) == 2:
        segs.add(tuple(sorted(e)))
# webs (doubled laminate) = segments shared by two shells: same segment, or nodes of both shells; detect by
# lam groups is not stored, so mark the bonded webs as the flat segments on the section's symmetry line
fig, (a1, a2) = plt.subplots(1, 2, figsize=(13, 5.2), gridspec_kw=dict(width_ratios=[1.6, 1]))
for i, j in segs:
    a1.plot(P[[i, j], 1], P[[i, j], 2], color=BEST, lw=2.2, solid_capstyle='round')
yc, zc = P[on, 1], P[on, 2]
a1.set_aspect('equal')
a1.set_title(f'Cross-section {b["geometry"]} ({b["type"]}, omega / lenticular, 2 shells bonded at the webs)',
             fontsize=10, loc='left', color=INK)
a1.set_xlabel('y [mm]', color=MUTED); a1.set_ylabel('z [mm]', color=MUTED)
a1.grid(color=GRID, lw=0.8); a1.set_axisbelow(True)
for s in ('top', 'right'):
    a1.spines[s].set_visible(False)
a1.text(0.0, -0.2, f'width {yc.max() - yc.min():.1f} mm, height {zc.max() - zc.min():.1f} mm, '
        f'arc radius R = {b["R"]} mm, flattened width {b["b"]:.1f} mm\n'
        f'opposite-sense bending load: 50 N in z at the tip, root clamped',
        transform=a1.transAxes, fontsize=8.5, color=MUTED, va='top')
for sgn in (-1, 1):
    a1.annotate('bonded web\n2x laminate', xy=(sgn * 40, 0), xytext=(sgn * 40, -7), ha='center', va='top',
                fontsize=7.5, color=MUTED, arrowprops=dict(arrowstyle='-', color=MUTED, lw=0.8))

# layup stack (one shell; the bonded webs carry the doubled, mirrored laminate)
angles = [int(a) for a in b['layup_str'].strip('[]').split('/')]
tp = b['h_mm'] / len(angles)
a2.set_xlim(0, 1); a2.set_ylim(-0.25, len(angles) + 1.6)
a2.axis('off')
for k, ang in enumerate(angles):
    yb = len(angles) - 1 - k
    a2.add_patch(Rectangle((0.05, yb), 0.9, 0.86, facecolor=BEST if ang == 0 else FEAS, edgecolor='white'))
    for xx in np.linspace(0.1, 0.9, 9):              # fibre direction hint
        dx = 0.035 * np.cos(np.radians(ang)); dy = 0.3 * np.sin(np.radians(ang))
        a2.plot([xx - dx, xx + dx], [yb + 0.43 - dy, yb + 0.43 + dy], color='white', lw=1)
    a2.text(0.5, yb + 0.43, f'ply {k + 1}: {ang:+d}°   ({tp:.3f} mm)', ha='center', va='center', fontsize=10,
            color=INK, bbox=dict(boxstyle='round,pad=0.2', fc='white', ec='none', alpha=0.85))
a2.text(0.05, len(angles) + 0.25,
        f'Layup {b["layup"]} = {b["layup_str"]}, h = {b["h_mm"]:.3f} mm\n'
        f'Material {b["material"]}: IM7 / MTM45-1 epoxy (UD, catalog)\n'
        f'0° = boom axis; webs: doubled mirrored laminate',
        fontsize=9.5, color=INK, va='bottom')
a2.text(0.05, -0.2,
        f'mass {b["objective"] * 1000:.1f} g  |  tip deflection {P_LOAD / b["k_fe"]:.2f} mm (≤ 10)  |  '
        f'buckling ≥ {b["buckling_value"]:.0f} N (≥ 500)\nfailure index {b["F_governing_fc"]:.2f}  |  '
        f'hub coiling index {b["F_hub"]:.2f} (< 1)', fontsize=8.5, color=MUTED, va='top')
fig.suptitle(f'Best design so far: iteration {b["iter"]}, {best_key}', fontsize=12, x=0.01, ha='left', color=INK)
fig.tight_layout(rect=(0, 0.02, 1, 0.94))
fig.savefig(OUT / 'best_design.png', dpi=150)
plt.close(fig)
print('saved', OUT / 'summary_requirements.png', OUT / 'best_design.png')
