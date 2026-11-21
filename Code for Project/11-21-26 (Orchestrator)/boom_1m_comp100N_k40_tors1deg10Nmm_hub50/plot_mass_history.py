"""Mass of every recorded iteration (ledger.csv) with its pass/fail status.
Run: <shells python> plot_mass_history.py   -> mass_history.png next to this script."""
import csv
from pathlib import Path

import matplotlib
matplotlib.use('Agg')
import matplotlib.pyplot as plt

HERE = Path(__file__).resolve().parent
rows = list(csv.DictReader(open(HERE / 'ledger.csv', encoding='utf-8')))
it = [int(r['iter']) for r in rows]
m = [1000 * float(r['mass_kg']) for r in rows]              # g
ok = [r['feasible'].strip() == 'True' for r in rows]
fam = [r['type'] for r in rows]
ids = [f"{r['material']}/{r['geometry']}/{r['layup']}" for r in rows]

COL = {'OM': '#2a78d6', 'CO': '#eb6834', 'TS': '#1baf7a', 'TRAC': '#eda100'}   # validated categorical slots 1-4
NAME = {'OM': 'omega (closed)', 'CO': 'corrugated (closed)', 'TS': 'tape spring', 'TRAC': 'TRAC'}
INK, INK2, GRID, SURF = '#0b0b0b', '#52514e', '#e4e3df', '#fcfcfb'

fig, ax = plt.subplots(figsize=(13, 5.6), facecolor=SURF)
ax.set_facecolor(SURF)

# best feasible so far (step line)
best, b = [], float('inf')
for mi, oi in zip(m, ok):
    b = min(b, mi) if oi else b
    best.append(b)
ax.step(it, best, where='post', color=INK2, lw=1.2, ls='--', zorder=1, label='lightest feasible so far')

for f in sorted(set(fam), key=list(COL).index):
    for passed in (True, False):
        sel = [k for k in range(len(it)) if fam[k] == f and ok[k] == passed]
        if not sel:
            continue
        ax.scatter([it[k] for k in sel], [m[k] for k in sel], s=70, zorder=3,
                   marker='o' if passed else 'X', color=COL[f], edgecolors=SURF, linewidths=2,
                   label=f"{NAME[f]} - {'passes all constraints' if passed else 'FAILS a constraint'}")

for k in range(len(it)):
    ax.annotate('pass' if ok[k] else f"FAIL k {float(rows[k]['k_fe']):.1f}", (it[k], m[k]), xytext=(0, 8), textcoords='offset points',
                ha='center', va='bottom', rotation=90, fontsize=8, color=INK2 if ok[k] else INK,
                fontweight='normal' if ok[k] else 'bold')
    ax.annotate(ids[k], (it[k], m[k]), xytext=(0, -12), textcoords='offset points', ha='center', va='top',
                fontsize=6.5, color=INK2, rotation=90)

kb = min((k for k in range(len(it)) if ok[k]), key=lambda k: m[k])
ax.text(max(it) + 0.3, m[kb] + 0.5, f'best: it{it[kb]:03d} {ids[kb]}  {m[kb]:.1f} g', ha='right', va='bottom',
        fontsize=9, color=INK)

ax.set_xticks(it)
ax.set_xlim(0.3, max(it) + 0.7)
ax.set_ylim(min(m) - 22, max(m) + 16)
ax.set_xlabel('iteration', color=INK2)
ax.set_ylabel('boom mass [g] (1 m long)', color=INK2)
ax.set_title(f'boom_1m_comp100N_k40_tors1deg10Nmm_hub50: mass per iteration ({len(it)} recorded, '
             f'{sum(ok)} pass all constraints)', color=INK, fontsize=11, loc='left')
ax.grid(axis='y', color=GRID, lw=0.8)
ax.set_axisbelow(True)
for s in ('top', 'right'):
    ax.spines[s].set_visible(False)
for s in ('left', 'bottom'):
    ax.spines[s].set_color(GRID)
ax.tick_params(colors=INK2)
ax.legend(frameon=False, fontsize=8.5, loc='upper left', bbox_to_anchor=(1.01, 1.0), labelcolor=INK2)
fig.text(0.01, 0.01, 'Constraints: tip stiffness >= 40 N/mm (relaxed from 50), pin-pin buckling >= 100 N, twist <= 1 deg at 10 N mm, '
         'Hashin F < 1 (100 N tip, torque, 100 N axial, flattening), F_hub < 1 (50 mm hub radius). Source: ledger.csv',
         fontsize=7, color=INK2)
fig.tight_layout(rect=(0, 0.03, 1, 1))
out = HERE / 'mass_history.png'
fig.savefig(out, dpi=160, facecolor=SURF)
print(out)
