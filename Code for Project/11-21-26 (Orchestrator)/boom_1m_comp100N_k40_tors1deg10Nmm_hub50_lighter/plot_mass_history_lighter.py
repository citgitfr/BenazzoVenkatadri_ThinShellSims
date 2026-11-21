"""Mass per iteration: the finalized 40 N/mm study (it001-it020) followed by the 8 lighter-than-best checks
of this follow-up study (L1-L8), with pass/FAIL labels. -> mass_history_lighter.png next to this script."""
import csv
from pathlib import Path
import matplotlib
matplotlib.use('Agg')
import matplotlib.pyplot as plt

HERE = Path(__file__).resolve().parent
A = list(csv.DictReader(open(HERE.parent / 'boom_1m_comp100N_k40_tors1deg10Nmm_hub50' / 'ledger.csv', encoding='utf-8')))
B = list(csv.DictReader(open(HERE / 'ledger.csv', encoding='utf-8')))
rows = A + B
x = list(range(1, len(rows) + 1))
xt = [r['iter'] for r in A] + [f"L{r['iter']}" for r in B]
m = [1000 * float(r['mass_kg']) for r in rows]
k = [float(r['k_fe']) for r in rows]
ok = [r['feasible'].strip() == 'True' for r in rows]
fam = [r['type'] for r in rows]
ids = [f"{r['material']}/{r['geometry']}/{r['layup']}" for r in rows]
COL = {'OM': '#2a78d6', 'CO': '#eb6834', 'TS': '#1baf7a', 'TRAC': '#eda100'}
NAME = {'OM': 'omega', 'CO': 'corrugated', 'TS': 'tape spring', 'TRAC': 'TRAC'}
INK, INK2, GRID, SURF = '#0b0b0b', '#52514e', '#e4e3df', '#fcfcfb'

fig, ax = plt.subplots(figsize=(15, 6.2), facecolor=SURF)
ax.set_facecolor(SURF)
kb = min((i for i in range(len(x)) if ok[i]), key=lambda i: m[i])
ax.axhline(m[kb], color=INK2, lw=1.2, ls='--', zorder=1, label=f'best feasible {m[kb]:.1f} g (it{int(A[kb]["iter"]):03d} {ids[kb]})')
ax.axvline(len(A) + 0.5, color=GRID, lw=1.5, zorder=0)
ax.text(len(A) / 2 + 0.5, max(m) + 13, 'finalized 40 N/mm study (lightest predicted-feasible first)', ha='center', fontsize=9, color=INK2)
ax.text(len(A) + len(B) / 2 + 0.5, max(m) + 13, 'lighter-than-best checks (user request)', ha='center', fontsize=9, color=INK2)
for f in [t for t in COL if t in fam]:
    for passed in (True, False):
        sel = [i for i in range(len(x)) if fam[i] == f and ok[i] == passed]
        if sel:
            ax.scatter([x[i] for i in sel], [m[i] for i in sel], s=70, zorder=3, marker='o' if passed else 'X',
                       color=COL[f], edgecolors=SURF, linewidths=1.5,
                       label=f"{NAME[f]} - {'passes all constraints' if passed else 'FAILS (k < 40 N/mm)'}")
for i in range(len(x)):
    ax.annotate('pass' if ok[i] else f'FAIL k {k[i]:.1f}', (x[i], m[i]), xytext=(0, 8), textcoords='offset points',
                ha='center', va='bottom', rotation=90, fontsize=8, color=INK2 if ok[i] else INK,
                fontweight='normal' if ok[i] else 'bold')
    ax.annotate(ids[i], (x[i], m[i]), xytext=(0, -12), textcoords='offset points', ha='center', va='top',
                fontsize=6.5, color=INK2, rotation=90)
ax.set_xticks(x); ax.set_xticklabels(xt)
ax.set_xlim(0.3, len(x) + 0.7)
ax.set_ylim(min(m) - 24, max(m) + 20)
ax.set_xlabel('iteration (L = lighter-than-best check)', color=INK2)
ax.set_ylabel('boom mass [g] (1 m long)', color=INK2)
ax.set_title(f'40 N/mm boom: mass per design ({len(x)} FE designs, {sum(ok)} pass all constraints; '
             f'all {len(B)} lighter checks fail stiffness)', color=INK, fontsize=11, loc='left')
ax.grid(axis='y', color=GRID, lw=0.8); ax.set_axisbelow(True)
for s in ('top', 'right'): ax.spines[s].set_visible(False)
for s in ('left', 'bottom'): ax.spines[s].set_color(GRID)
ax.tick_params(colors=INK2)
ax.legend(frameon=False, fontsize=8.5, loc='upper left', bbox_to_anchor=(1.01, 1.0), labelcolor=INK2)
fig.text(0.01, 0.01, 'Constraints: tip stiffness >= 40 N/mm, pin-pin buckling >= 100 N, twist <= 1 deg at 10 N mm, Hashin F < 1 '
         '(100 N tip, torque, 100 N axial, flattening), F_hub < 1 (50 mm hub radius). k = FE stiffness [N/mm]. Source: both ledger.csv',
         fontsize=7, color=INK2)
fig.tight_layout(rect=(0, 0.03, 1, 1))
out = HERE / 'mass_history_lighter.png'
fig.savefig(out, dpi=160, facecolor=SURF)
print(out)
