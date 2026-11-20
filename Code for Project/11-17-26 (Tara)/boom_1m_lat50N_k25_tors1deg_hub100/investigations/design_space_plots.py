"""Plots of the design space and of the path the study took through it (narrative report, user request
2026-11-19). Recomputes the design screen's estimates for every catalog combination (cached in
design_space.npz), reads the 20 iterations from ledger.csv, and writes PNGs into ./design_space_plots/:
  1_screen_funnel.png       lighter-than-final designs by the first check they fail
  2_mass_vs_stiffness.png   closed sections that coil and meet torsion: mass vs stiffness estimate, iterations on top
  3_mass_vs_buckling.png    designs that also meet stiffness: mass vs best-case buckling estimate, iterations on top
  4_iteration_history.png   mass of each iteration, outcome, best so far
  5_buckling_calibration.png  OpenSees path-B buckling value vs raw screen estimate, per family
Optimistic factors as in lighter_than_best.py (stiffness x 0.986, buckling x best measured family factor).
Usage: python design_space_plots.py"""
import csv
import json
import math
import sys
from pathlib import Path

import numpy as np

HERE = Path(__file__).resolve().parent
STUDY = HERE.parent
OUT = HERE / 'design_space_plots'
OUT.mkdir(exist_ok=True)
CACHE = HERE / 'design_space.npz'
K_CAL_MAX = 0.986
B_FACTOR_MAX = {'C008': 1.37, 'C006': 1.27, 'C007': 1.11, 'C005': 1.05}
B_FACTOR_OTHER = 1.37
REQ_K, REQ_M = 25.0, 50000.0

# ---------- 1. every catalog combination (cached) ----------
if not CACHE.exists():
    sys.path.insert(0, str(HERE.parents[3] / '.claude' / 'orchestrator' / 'tools'))
    import design_screen as ds
    req = json.loads((STUDY / 'requirements.clean.json').read_text())
    length = float(req['length_mm'])
    rq = req['requirements']
    tors, buck, coil = rq['torsional_stiffness'], rq['buckling'], rq['coiling']
    GJ_req = tors['torque_Nmm'] * length / math.radians(tors['max_twist_deg'])
    mats, _ = ds.materials(req)
    lays = ds.layups(req)
    geos = ds.geometries(req)
    gids = list(geos)
    r_all = np.array([geos[g]['r_min'] for g in gids])
    cols = {k: [] for k in ('mass_g', 'k_est', 'b_est', 'GJ_ratio', 'F_max', 'type', 'geo', 'mat', 'lay')}
    for mid, mat in mats.items():
        for yid, lay in lays.items():
            Lm = ds.Lam(mat, lay)
            Ff, Fh = ds.coiling_indices(Lm, r_all, coil['hub_radius_mm'])
            for ig, gid in enumerate(gids):
                geo = geos[gid]
                EIz = Lm.Ex * geo['I1']['Iyy'] * Lm.h
                _, _, M_opp, M_eq = ds.buckling_estimates(Lm, geo, length, buck)
                b = M_opp if buck.get('sense', 'opposite') == 'opposite' else M_eq
                cols['mass_g'].append(Lm.areal * geo['s_total'] * 1e-3 * length)
                cols['k_est'].append(ds.tip_stiffness(EIz, Lm.A66 * geo['shear']['z'], length))
                cols['b_est'].append(np.nan if b is None else b)
                cols['GJ_ratio'].append(ds.torsion_GJ(Lm, geo['tors']) / GJ_req)
                cols['F_max'].append(max(Ff[ig], Fh[ig]))
                cols['type'].append(geo['g']['type'])
                cols['geo'].append(gid)
                cols['mat'].append(mid)
                cols['lay'].append(yid)
    np.savez_compressed(CACHE, **{k: np.array(v) for k, v in cols.items()})
D = dict(np.load(CACHE))
m_best_screen = float(D['mass_g'][(D['mat'] == 'L011') & (D['lay'] == 'Y026') & (D['geo'] == 'C008')][0])
bfac = np.array([B_FACTOR_MAX.get(g, B_FACTOR_OTHER) for g in D['geo']])
coil_ok = D['F_max'] < 1
tors_ok = D['GJ_ratio'] >= 1
k_opt = D['k_est'] * K_CAL_MAX
stiff_ok = k_opt >= REQ_K
b_opt = D['b_est'] * bfac
closed = np.isin(D['type'], ['CO', 'OM'])

# ---------- 2. the iterations ----------
led = list(csv.DictReader(open(STUDY / 'ledger.csv')))
IT = []
for r in led:
    i = int(r['iter'])
    fe = float(r['buckling_fe']) if r['buckling_fe'] else None
    est = float(r['buckling_est']) if r['buckling_est'] else None
    kind = r['buckling_kind']
    if r['feasible'] == 'True' and i in (7, 8):
        out = 'strict'
    elif r['feasible'] == 'True':
        out = 'feasible'
    elif kind.startswith('skipped') or float(r['k_fe'] or 0) < REQ_K:
        out = 'stiffness'
    else:
        out = 'buckling'
    IT.append(dict(i=i, mat=r['material'], lay=r['layup'], geo=r['geometry'], type=r['type'],
                   mass=float(r['mass_kg']) * 1e3, k_fe=float(r['k_fe']), fe=fe, est=est,
                   lower=kind.startswith('B LOWER'), out=out))
for it in IT:                                   # the screen's own numbers for the iteration (same basis as the cloud)
    j = np.nonzero((D['mat'] == it['mat']) & (D['lay'] == it['lay']) & (D['geo'] == it['geo']))[0][0]
    it.update(m_s=float(D['mass_g'][j]), k_s=float(k_opt[j]), b_s=float(b_opt[j]))

import matplotlib  # noqa: E402
matplotlib.use('Agg')
import matplotlib.pyplot as plt  # noqa: E402

INK, INK2, GRID = '#0b0b0b', '#52514e', '#e4e3df'
C1, C2, C3, C4 = '#2a78d6', '#eb6834', '#1baf7a', '#eda100'
CLOUD = '#b9b8b3'
OUTSTYLE = {  # outcome -> (label, colour, marker)
    'feasible': ('meets every requirement (path B)', C1, 'o'),
    'strict': ('passes path B, Abaqus first buckling < 50,000', C2, 'D'),
    'buckling': ('buckles below 50,000 N mm', C3, 's'),
    'stiffness': ('too flexible (< 25 N/mm)', CLOUD, 'v'),
}
plt.rcParams.update({'font.size': 9, 'axes.edgecolor': INK2, 'axes.labelcolor': INK, 'xtick.color': INK2,
                     'ytick.color': INK2, 'axes.grid': True, 'grid.color': GRID, 'grid.linewidth': 0.6,
                     'axes.spines.top': False, 'axes.spines.right': False, 'figure.dpi': 150})


def overlay(ax, key_x, key_y, label_offsets=None):
    seen = set()
    for it in IT:
        lab, c, mk = OUTSTYLE[it['out']]
        x, y = it[key_x], it[key_y]
        if y is None or not np.isfinite(y):
            continue
        ax.scatter(x, y, s=46, c=c, marker=mk, edgecolors='white', linewidths=1.2, zorder=5,
                   label=None if it['out'] in seen else lab)
        seen.add(it['out'])
        dx, dy = (label_offsets or {}).get(it['i'], (4, 3))
        ax.annotate(str(it['i']), (x, y), xytext=(dx, dy), textcoords='offset points', fontsize=7, color=INK, zorder=6)
    best = [it for it in IT if it['i'] == 6][0]
    ax.scatter(best[key_x], best[key_y], s=260, marker='*', c='none', edgecolors=INK, linewidths=1.1, zorder=7,
               label='final design (iteration 6)')


# ---- figure 1: funnel ----
lt = json.loads((HERE / 'lighter_than_best.json').read_text())
fc = lt['lighter_first_failed_check']
labels = ['Hashin F >= 1 when flattened\nor coiled on the 100 mm hub', 'torsional stiffness too low\n(GJ < 5.73e6 N mm$^2$)',
          'bending stiffness too low\n(k$_{est}$ x 0.986 < 25 N/mm)', 'buckling estimate too low even\nwith the best measured factor',
          'not excluded by the screen']
vals = [fc[k] for k in sorted(fc)]
fig, ax = plt.subplots(figsize=(7.2, 3.3))
y = np.arange(len(vals))[::-1]
ax.barh(y, vals, color=C1, height=0.6)
for yy, v in zip(y, vals):
    ax.text(v * 1.15, yy, f'{v:,}', va='center', fontsize=8, color=INK)
ax.set_xscale('log')
ax.set_xlim(1, 3e6)
ax.set_yticks(y, labels, fontsize=8)
ax.set_xlabel('number of catalog designs (log scale)')
ax.set_title(f'{lt["counts"]["lighter than the final design"]:,} catalog designs are lighter than the final '
             'design:\nthe first check each one fails', fontsize=9, loc='left', color=INK)
ax.grid(axis='y', visible=False)
fig.tight_layout()
fig.savefig(OUT / '1_screen_funnel.png')
plt.close(fig)

# ---- figures 2 and 3: design-space clouds with the iterations, full view + zoom on the competitive corner ----
def cloud_figure(fname, sel, yval, ykey, yscale, req, req_text, ylabel, title, full_lim, zoom_lim, box=False, notes=()):
    fig, axs = plt.subplots(1, 2, figsize=(7.4, 4.2), gridspec_kw=dict(width_ratios=(1.15, 1)))
    for ax, (xl, yl), zoom in zip(axs, (full_lim, zoom_lim), (False, True)):
        for t, c, lab in (('CO', '#9fc1ea', 'untested: corrugated (CO)'), ('OM', '#f4b89f', 'untested: omega (OM)')):
            s = sel & (D['type'] == t)
            ax.scatter(D['mass_g'][s], yval[s] / yscale, s=6 if zoom else 2, c=c, alpha=0.6 if zoom else 0.35,
                       linewidths=0, rasterized=True, label=lab)
        ax.axhline(req / yscale, color=INK2, lw=1, ls='--')
        ax.axvline(m_best_screen, color=INK2, lw=1, ls=':')
        if box:
            ax.fill_between([xl[0], m_best_screen], req / yscale, yl[1], color=C4, alpha=0.10, lw=0)
        seen = set()
        for it in IT:
            lab, c, mk = OUTSTYLE[it['out']]
            x, y = it['m_s'], it[ykey] / yscale
            ax.scatter(x, y, s=40 if zoom else 26, c=c, marker=mk, edgecolors='white', linewidths=1.0, zorder=5,
                       label=None if it['out'] in seen else lab)
            seen.add(it['out'])
            if zoom and xl[0] <= x <= xl[1] and yl[0] <= y <= yl[1]:
                dx, dy = ZOOM_OFF.get((fname, it['i']), (4, 3))
                ax.annotate(str(it['i']), (x, y), xytext=(dx, dy), textcoords='offset points', fontsize=7,
                            color=INK, zorder=6)
            elif not zoom and not (zoom_lim[0][0] <= x <= zoom_lim[0][1] and zoom_lim[1][0] <= y <= zoom_lim[1][1]):
                if xl[0] <= x <= xl[1] and yl[0] <= y <= yl[1]:
                    ax.annotate(str(it['i']), (x, y), xytext=(4, 3), textcoords='offset points', fontsize=7, color=INK)
        b6 = [it for it in IT if it['i'] == 6][0]
        ax.scatter(b6['m_s'], b6[ykey] / yscale, s=220 if zoom else 150, marker='*', c='none', edgecolors=INK,
                   linewidths=1.0, zorder=7, label='final design (iteration 6)')
        ax.set_xlim(*xl)
        ax.set_ylim(*yl)
        ax.set_xlabel('mass (screen estimate, g)')
        if not zoom:
            ax.set_ylabel(ylabel)
            r = plt.Rectangle((zoom_lim[0][0], zoom_lim[1][0]), zoom_lim[0][1] - zoom_lim[0][0],
                              zoom_lim[1][1] - zoom_lim[1][0], fill=False, ec=INK, lw=0.8)
            ax.add_patch(r)
            ax.text(xl[1], req / yscale, req_text, ha='right', va='bottom', fontsize=6.5, color=INK2)
        else:
            ax.set_title('zoom on the boxed region', fontsize=8, color=INK2, loc='left')
            for (nx, ny, tx, ty, txt) in notes:
                ax.annotate(txt, (nx, ny), xytext=(tx, ty), fontsize=6.3, color=INK2,
                            arrowprops=dict(arrowstyle='-', color=INK2, lw=0.6))
    h, l = axs[1].get_legend_handles_labels()
    fig.legend(h, l, loc='lower center', ncol=3, fontsize=6.8, frameon=False)
    fig.suptitle(title, fontsize=9, x=0.01, ha='left', color=INK)
    fig.tight_layout(rect=(0, 0.12, 1, 0.95))
    fig.savefig(OUT / fname)
    plt.close(fig)


ZOOM_OFF = {('2_mass_vs_stiffness.png', i): o for i, o in {
    6: (-10, 5), 15: (4, 4), 14: (4, -9), 7: (-10, -10), 8: (4, -9), 17: (-11, -9), 4: (4, -9), 3: (4, 3),
    11: (4, 3), 20: (4, 3), 10: (-12, 3), 16: (-11, 4), 18: (4, -2), 19: (-12, -4), 5: (4, 3), 13: (4, 3)}.items()}
ZOOM_OFF.update({('3_mass_vs_buckling.png', i): o for i, o in {
    6: (-10, 6), 15: (4, 4), 14: (4, -9), 7: (-12, 4), 8: (4, -9), 17: (-12, -9), 4: (4, 3), 5: (4, -9),
    16: (4, 3), 18: (4, -9), 19: (-12, 3), 11: (4, 3), 20: (4, -9), 12: (4, 3), 9: (4, 3), 2: (4, 3)}.items()})

sel2 = closed & coil_ok & tors_ok & (D['mass_g'] < 220)
cloud_figure('2_mass_vs_stiffness.png', sel2, k_opt, 'k_s', 1.0, REQ_K, 'requirement 25 N/mm',
             'tip stiffness estimate x 0.986 (N/mm)',
             'Closed sections that coil on the 100 mm hub and meet torsion: stiffness vs mass',
             ((40, 215), (0, 70)), ((100, 112), (22, 34)))
sel3 = closed & coil_ok & tors_ok & stiff_ok & (D['mass_g'] < 160) & np.isfinite(b_opt)
for it in IT:                                   # iterations that missed stiffness are plotted at their buckling estimate too
    it['b_s'] = it['b_s'] if np.isfinite(it['b_s']) else np.nan
cloud_figure('3_mass_vs_buckling.png', sel3, b_opt, 'b_s', 1e3, REQ_M, 'requirement 50 kN mm',
             'buckling estimate x best measured family factor (kN mm)',
             'Designs that also meet stiffness: buckling vs mass (shaded = lighter than the final design and buckling-safe)',
             ((60, 160), (0, 160)), ((100, 112), (35, 75)), box=True,
             notes=[(102.83, 61.2, 100.3, 70.5, 'untested L006 [+-60/0/0/+-60] C008:\nstiffness 24.7 N/mm with the C008\n[60/0/0/60] calibration (< 25)')])

# ---- figure 4: iteration history ----
fig, ax = plt.subplots(figsize=(7.2, 4.2))
best, bx, by = None, [], []
for it in IT:
    if it['out'] == 'feasible' and (best is None or it['mass'] < best):
        best = it['mass']
    bx.append(it['i']); by.append(best if best is not None else np.nan)
ax.step(bx, by, where='post', color=INK2, lw=1.4, label='best design so far (strict criterion)')
seen = set()
for it in IT:
    lab, c, mk = OUTSTYLE[it['out']]
    ax.scatter(it['i'], it['mass'], s=50, c=c, marker=mk, edgecolors='white', linewidths=1.2, zorder=5,
               label=None if it['out'] in seen else lab)
    seen.add(it['out'])
    ax.annotate(f'{it["geo"]}', (it['i'], it['mass']), xytext=(0, 7), textcoords='offset points', ha='center',
                fontsize=6, color=INK2)
ax.scatter(6, [it['mass'] for it in IT if it['i'] == 6][0], s=260, marker='*', c='none', edgecolors=INK,
           linewidths=1.1, zorder=7, label='final design')
ax.set_xticks(range(1, 21))
ax.set_xlabel('iteration')
ax.set_ylabel('mass (FE model, g)')
ax.set_ylim(55, 150)
ax.set_title('Path through the iterations: mass, outcome and section of each design', fontsize=9, loc='left', color=INK)
ax.legend(fontsize=7, loc='upper center', bbox_to_anchor=(0.5, -0.17), ncol=3, frameon=False)
fig.tight_layout()
fig.savefig(OUT / '4_iteration_history.png')
plt.close(fig)

# ---- figure 5: buckling calibration ----
fig, ax = plt.subplots(figsize=(7.2, 4.4))
xs = np.array([10, 80])
ax.plot(xs, xs, color=INK2, lw=1, label='path B = raw estimate')
ax.axhline(REQ_M / 1e3, color=INK2, lw=1, ls='--')
ax.text(71, REQ_M / 1e3 - 2.6, 'requirement', ha='right', fontsize=7.5, color=INK2)
seen = set()
for it in IT:
    if it['fe'] is None or it['est'] is None:
        continue
    c = C1 if it['type'] == 'CO' else C2
    fam = 'corrugated (CO)' if it['type'] == 'CO' else 'omega (OM)'
    mk = '^' if it['lower'] else 'o'
    key = (fam, it['lower'])
    lab = f'{fam}, {"lower bound (run passed 50,000 and was stopped)" if it["lower"] else "highest load reached (run stalled)"}'
    ax.scatter(it['est'] / 1e3, it['fe'] / 1e3, s=48, c=c, marker=mk, edgecolors='white', linewidths=1.2, zorder=5,
               label=None if key in seen else lab)
    seen.add(key)
    off = {7: (-38, 6), 8: (-38, -6), 17: (6, -10), 6: (-30, 7), 14: (-2, 7), 15: (5, -9), 11: (4, -9), 20: (4, 3),
           9: (-4, 6), 19: (4, -9), 2: (4, 3)}.get(it['i'], (4, 3))
    ax.annotate(f'{it["i"]} {it["geo"]}', (it['est'] / 1e3, it['fe'] / 1e3), xytext=off, textcoords='offset points',
                fontsize=6.5, color=INK)
ax.set_xlim(25, 72)
ax.set_ylim(20, 72)
ax.set_xlabel('raw buckling estimate of the screen (kN mm)')
ax.set_ylabel('OpenSees path B buckling value (kN mm)')
ax.set_title('Buckling estimate vs simulation: conservative for C008/C006 with angled outer plies,\n'
             'too high for omegas (M006)', fontsize=9, loc='left', color=INK)
ax.legend(fontsize=7, loc='upper left', frameon=True)
fig.tight_layout()
fig.savefig(OUT / '5_buckling_calibration.png')
plt.close(fig)
print('wrote', *sorted(p.name for p in OUT.glob('*.png')))
