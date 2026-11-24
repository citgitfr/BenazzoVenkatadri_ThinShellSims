"""Figures for the Lab Report 4 narrative report and demonstration slides.

Run with any Python that has matplotlib, numpy and Pillow:
    python "Lab Report 4/make_lab4_figs.py"        -> Lab Report 4/figs/*.png

Inputs (all in the repository):
  - the ledgers, objcon.json files and buckling results of the three test cases
      Code for Project/11-06-26 (Orchestrator)/ts_1m_buck5N_opp2cm_hub40                  (test case 1)
      Code for Project/11-21-26 (Orchestrator)/boom_1m_comp100N_k40_tors1deg10Nmm_hub50     (test case 2)
      Code for Project/11-17-26 (Tara)/boom_1m_lat50N_k25_tors1deg_hub100                   (test case 3)
  - prescreen/first_fail_counts.json: for each pre-screen check, the number of designs for which it is the
    FIRST check that fails (checks in the order flattening, hub, stiffness, buckling, torsion), from
    .claude/orchestrator/tools/design_screen.py run on the three requirements.json files with each rejected
    design counted once (design_screen.py itself counts a design under every check it fails). Test cases 1
    and 2 with the current design_screen.py; test case 3 with the version its study used (git dc58faa,
    11-17-26), which reproduces the study's 3,322 designs (the 11-20 torsion update passes one more).
  - prescreen/uz_{ts,k40,tara}.png: z-displacement of the three optimal designs, drawn by the shell-visualize
    skill (--field uz) from the results of the final OpenSeesPy scripts (cases 1 and 2 re-run from
    final/*_opensees.py; case 3 from iterations/it006/results/it006_L011_Y026_C008.npz).
  - Abaqus numbers of cases 1 and 2 from their REPORT.md (the Abaqus result files of those two studies are
    not in the repository); case 3 from the committed Abaqus extracts of iteration 6.
"""
import csv
import json
from pathlib import Path

import matplotlib
matplotlib.use("Agg")
import matplotlib.pyplot as plt
import numpy as np
from PIL import Image, ImageChops

HERE = Path(__file__).resolve().parent
ROOT = HERE.parent
CFP = ROOT / "Code for Project"
OUT = HERE / "figs"
OUT.mkdir(exist_ok=True)

TS = CFP / "11-06-26 (Orchestrator)" / "ts_1m_buck5N_opp2cm_hub40"
K40 = CFP / "11-21-26 (Orchestrator)" / "boom_1m_comp100N_k40_tors1deg10Nmm_hub50"
TARA = CFP / "11-17-26 (Tara)" / "boom_1m_lat50N_k25_tors1deg_hub100"

# palette of the 11-21 mass-history plot (Federico), so the new plots match the existing ones
COL = {"OM": "#2a78d6", "CO": "#eb6834", "TS": "#1baf7a", "TRAC": "#eda100"}
INK, INK2, GRID, SURF = "#0b0b0b", "#52514e", "#e4e3df", "#ffffff"
BLUE, ORANGE, GREEN, RED, GREY = "#2a78d6", "#eb6834", "#1baf7a", "#c00000", "#9a9893"

plt.rcParams.update({"font.family": "DejaVu Sans", "font.size": 14, "axes.titlesize": 15,
                     "axes.labelsize": 14, "xtick.labelsize": 13, "ytick.labelsize": 13, "legend.fontsize": 12})


def style(ax, grid="x"):
    ax.set_facecolor(SURF)
    ax.grid(axis=grid, color=GRID, lw=0.8)
    ax.set_axisbelow(True)
    for s in ("top", "right"):
        ax.spines[s].set_visible(False)
    for s in ("left", "bottom"):
        ax.spines[s].set_color(GRID)
    ax.tick_params(colors=INK2)


def save(fig, name):
    fig.savefig(OUT / name, dpi=200, facecolor=SURF, bbox_inches="tight")
    plt.close(fig)
    print("wrote", OUT / name)


# ------------------------------------------------------------------ 1. pre-screen: first check failed

FIRST = json.load(open(HERE / "prescreen" / "first_fail_counts.json", encoding="utf-8"))
CHECK_LABEL = {
    "F_flat >= 1": "Coiling: fails when flattened",
    "F_hub >= 1": "Coiling: fails on the hub",
    "stiffness estimate": "Bending stiffness too low",
    "buckling estimate": "Buckling load too low",
    "torsion estimate": "Torsional stiffness too low",
}
for key, d in FIRST.items():
    ff = d["first_fail"]
    order = [k for k in CHECK_LABEL if k in ff]
    labels = [CHECK_LABEL[k] for k in order] + ["Pass every check"]
    vals = [ff[k] for k in order] + [d["screen_ok"]]
    cols = [ORANGE] * len(order) + [GREEN]
    fig, ax = plt.subplots(figsize=(8.6, 0.62 * len(vals) + 1.3), facecolor=SURF)
    y = list(range(len(vals)))[::-1]
    ax.barh(y, vals, color=cols, height=0.62)
    ax.set_xscale("log")
    ax.set_xlim(10, d["evaluated"] * 15)
    for yi, v in zip(y, vals):
        ax.text(v * 1.15, yi, f"{v:,}", va="center", fontsize=14, color=INK)
    ax.set_yticks(y)
    ax.set_yticklabels(labels, fontsize=14, color=INK)
    ax.set_xlabel("number of designs (log scale)", color=INK2)
    ax.set_title(f"{d['evaluated']:,} designs: first check each one fails\n(checks applied top to bottom; "
                 "each design counted once)", fontsize=14, loc="left", color=INK)
    style(ax)
    save(fig, f"prescreen_{key}.png")

# ------------------------------------------------------------------ 2. mass per iteration, test case 1
# same layout as Federico's plot_mass_history.py of the 11-21 study


def ledger(path):
    return list(csv.DictReader(open(path, encoding="utf-8")))


def mass_history(study, kind, name, ylim_pad, leg="upper left", top=0.55):
    rows = ledger(study / "ledger.csv")
    it = [int(r["iter"]) for r in rows]
    m = [1000 * float(r["mass_kg"]) for r in rows]
    ok = [r["feasible"].strip() == "True" for r in rows]
    ids = [f"{r['material']}/{r['layup']}/{r['geometry']}" for r in rows]
    fig, ax = plt.subplots(figsize=(10, 4.9), facecolor=SURF)
    best, b = [], float("inf")
    for mi, oi in zip(m, ok):
        b = min(b, mi) if oi else b
        best.append(b)
    ax.step(it, best, where="post", color=INK2, lw=1.4, ls="--", zorder=1, label="lightest feasible so far")
    for passed in (True, False):
        sel = [k for k in range(len(it)) if ok[k] == passed]
        ax.scatter([it[k] for k in sel], [m[k] for k in sel], s=90, zorder=3, marker="o" if passed else "X",
                   color=COL[kind] if passed else RED, edgecolors=SURF, linewidths=1.5,
                   label=f"{'passes all requirements' if passed else 'fails a requirement'}")
    for k in range(len(it)):
        ax.annotate("pass" if ok[k] else "fail", (it[k], m[k]), xytext=(0, 9),
                    textcoords="offset points", ha="center", va="bottom", rotation=90, fontsize=12,
                    color=INK2 if ok[k] else INK, fontweight="normal" if ok[k] else "bold")
        ax.annotate(ids[k], (it[k], m[k]), xytext=(0, -13), textcoords="offset points", ha="center", va="top",
                    fontsize=9.5, color=INK2, rotation=90)
    kb = min((k for k in range(len(it)) if ok[k]), key=lambda k: m[k])
    ax.text(max(it) + 0.3, min(m) - 0.9 * ylim_pad, f"best: iteration {it[kb]}, {m[kb]:.1f} g (dashed line)",
            ha="right", va="bottom", fontsize=14, color=INK)
    ax.set_xticks(it)
    ax.set_xlim(0.3, max(it) + 0.7)
    ax.set_ylim(min(m) - ylim_pad, max(m) + top * ylim_pad)
    ax.set_xlabel("iteration", color=INK2)
    ax.set_ylabel("boom mass [g] (1 m long)", color=INK2)
    style(ax, "y")
    ax.legend(frameon=False, fontsize=13, labelcolor=INK2, **(leg if isinstance(leg, dict) else {"loc": leg}))
    save(fig, name)


mass_history(TS, "TS", "mass_history_ts.png", 0.95, leg=dict(loc="upper left", ncol=3), top=1.05)
mass_history(K40, "CO", "mass_history_k40.png", 30, leg=dict(loc="lower left", bbox_to_anchor=(0.3, 0.04)))

# ------------------------------------------------------------------ 3. constraint utilization of the optimal designs
# utilization = demand / capacity (< 1 passes): limit/value for ">=" constraints, value/limit for "<" and "<="

NICE = {
    "no failure": "Hashin F: tip load + flattening",
    "bending stiffness": "Bending stiffness",
    "buckling": "Buckling",
    "coiling on hub": "Hashin F: coiled on hub",
    "torsional stiffness": "Twist under torque",
    "no failure under the torque": "Hashin F: torque",
    "no failure: axial100N": "Hashin F: 100 N axial",
    "no failure: lateral50N": "Hashin F: 50 N lateral",
}
UTIL = {
    "ts": TS / "final" / "objcon.json",
    "k40": K40 / "final" / "objcon.json",
    "tara": TARA / "final" / "objcon.json",
}
for key, path in UTIL.items():
    cons = [c for c in json.load(open(path, encoding="utf-8"))["constraints"] if c["name"] != "boom length"]
    lab, u = [], []
    for c in cons:
        v, lim = float(c["value"]), float(c["limit"])
        u.append(lim / v if c["op"] == ">=" else v / lim)
        lab.append(NICE.get(c["name"], c["name"]))
    order = sorted(range(len(u)), key=lambda i: u[i])
    lab = [lab[i] for i in order]
    u = [u[i] for i in order]
    fig, ax = plt.subplots(figsize=(6.6, 0.34 * len(u) + 1.25), facecolor=SURF)
    y = range(len(u))
    ax.barh(list(y), [max(v, 1e-3) for v in u], color=[ORANGE if v > 0.8 else BLUE for v in u], height=0.7)
    ax.axvline(1.0, color=RED, lw=1.8)
    for yi, v in zip(y, u):
        ax.text(1.15 if v > 0.25 else max(v, 1e-3) * 1.12, yi, f"{v:.2g}" if v >= 1e-3 else f"{v:.0e}",
                va="center", fontsize=13, color=INK)
    ax.set_xscale("log")
    ax.set_xlim(1e-3, 3)
    ax.set_yticks(list(y))
    ax.set_yticklabels(lab, fontsize=13, color=INK)
    ax.set_xlabel("demand / capacity (log scale): < 1 = met, 0.8 = 20% margin", color=INK2, fontsize=13)
    ax.set_title("Utilization: how close each requirement is to its limit", fontsize=14, loc="left", color=INK)
    style(ax)
    save(fig, f"utilization_{key}.png")

# ------------------------------------------------------------------ 4. buckling paths with the requirement


def path_b(it_dir):
    js = sorted((it_dir / "buckling").glob("*_buck.json"))[0]
    h = json.load(open(js, encoding="utf-8"))["B"]["history"]
    return [p[0] * 1000 for p in h], [p[1] / 1000 for p in h]


def finish(ax, xl, yl):
    ax.set_xlabel(xl, color=INK2)
    ax.set_ylabel(yl, color=INK2)
    style(ax, "both")


# test case 3: it006 vs it007, OpenSeesPy paths and Abaqus first bifurcations
fig, ax = plt.subplots(figsize=(5.9, 3.7), facecolor=SURF)
x6, y6 = path_b(TARA / "iterations" / "it006")
x7, y7 = path_b(TARA / "iterations" / "it007")
ax.plot(x6, y6, "-o", color=BLUE, lw=2.2, ms=6, label="it6 [60/0/0/60], 104.9 g")
ax.plot(x7, y7, "-s", color=ORANGE, lw=2.2, ms=6, label="it7 [45/0/0/45], 102.2 g")
ax.axhline(50, color=RED, lw=1.8)
ax.text(2.3, 50.5, "requirement 50", color=RED, fontsize=12, ha="center", va="bottom")
ax.axhline(56.397, color=BLUE, lw=1.4, ls="--")
ax.text(0.1, 57.0, "it6 Abaqus LBA 56.4: passes", color=BLUE, fontsize=12, ha="left")
ax.axhline(49.457, color=ORANGE, lw=1.4, ls="--")
ax.text(0.1, 48.6, "it7 Abaqus LBA 49.5: fails", color=ORANGE, fontsize=12, ha="left", va="top")
ax.set_xlim(0, 4.0)
ax.set_ylim(0, 64)
ax.legend(title="OpenSeesPy imperfect path", frameon=True, facecolor=SURF, edgecolor=GRID, loc="lower right",
          labelcolor=INK2, fontsize=12, title_fontsize=12)
finish(ax, "end rotation [mrad]", "end moment [kN·mm]")
save(fig, "buckling_tara_it006_it007.png")

# test cases 1 and 2: pin-pin compression paths of the optima. The OpenSeesPy path B of both is a straight
# line in final/*_buck.png (still rising when stopped at the cutoff); it is redrawn from its recorded end
# point: number of steps x B step (end shortening) and the recorded lower bound (load).
for key, d, steps, P, req in (
        ("ts", json.load(open(TS / "final" / "buckling.json")), 20, 29.92, 5.0),
        ("k40", json.load(open(K40 / "final" / "buckling.json")), 15, 154.857, 100.0)):
    xe = steps * d["B"]["step"]
    fig, ax = plt.subplots(figsize=(5.3, 3.4), facecolor=SURF)
    ax.plot([0, xe], [0, P], "-", color=BLUE, lw=2.4, label="OpenSeesPy imperfect path")
    ax.plot([xe], [P], "o", color=BLUE, ms=8)
    ax.axhline(req, color=RED, lw=1.8)
    ax.text(0.02 * xe, req + 0.025 * P, f"requirement {req:g} N", color=RED, fontsize=13, va="bottom")
    ax.set_title(f"Stopped at {P:.1f} N, still rising: buckling ≥ {P:.1f} N", fontsize=13, loc="left",
                 color=INK)
    ax.set_xlim(0, xe * 1.08)
    ax.set_ylim(0, P * 1.15)
    finish(ax, "end shortening [mm]", "axial load [N]")
    ax.legend(frameon=False, loc="upper left", labelcolor=INK2)
    save(fig, f"buckpath_{key}.png")

# how the buckling path is followed (slide on the fast pipeline): it007 of test case 3, adaptive load steps
fig, ax = plt.subplots(figsize=(6.0, 4.4), facecolor=SURF)
ax.plot(x7, y7, "-", color=BLUE, lw=2.2)
ax.plot(x7[1:], y7[1:], "o", color=BLUE, ms=7, label="load steps (shorter near the cutoff)")
for i, (xx, yy) in enumerate(zip(x7, y7)):
    if 0 < i < 5:
        ax.annotate(str(i), (xx, yy), xytext=(9, -14), textcoords="offset points", fontsize=12, color=INK2)
ax.axhline(50, color=RED, lw=1.8)
ax.text(0.05, 51.2, "requirement 50 kN·mm = cutoff", color=RED, fontsize=12, va="bottom")
ax.annotate("passes the cutoff while still rising:\nstop; buckling ≥ 51.0 (lower bound)", (x7[-1], y7[-1]),
            xytext=(1.6, 8), fontsize=12, color=INK, arrowprops=dict(arrowstyle="->", color=INK2))
ax.legend(frameon=False, loc="upper left", bbox_to_anchor=(0, 0.8), labelcolor=INK2)
ax.set_xlim(0, 4.2)
ax.set_ylim(0, 62)
finish(ax, "end rotation [mrad]", "end moment [kN·mm]")
save(fig, "buckling_steps.png")

# ------------------------------------------------------------------ 5. Abaqus vs OpenSeesPy

# test case 1, optimum: tip deflection under the 5 N load (REPORT.md: OpenSees 16.36 mm, Abaqus S4R 16.62 mm)
fig, ax = plt.subplots(figsize=(3.6, 3.1), facecolor=SURF)
ax.bar([0, 1], [16.36, 16.62], color=[BLUE, ORANGE], width=0.55)
for xx, v in zip([0, 1], [16.36, 16.62]):
    ax.text(xx, v + 0.3, f"{v:.2f}", ha="center", fontsize=12, color=INK)
ax.axhline(20, color=RED, lw=1.8)
ax.text(1.45, 20.3, "limit 20 mm", color=RED, fontsize=12, ha="right")
ax.set_xticks([0, 1])
ax.set_xticklabels(["OpenSeesPy", "Abaqus"], fontsize=12)
ax.set_ylim(0, 23)
ax.set_title("Test case 1 optimum (it2):\ntip deflection under 5 N", fontsize=13, loc="left", color=INK)
finish(ax, "", "tip deflection [mm]")
ax.grid(axis="x", visible=False)
save(fig, "abaqus_ts.png")

# test case 2, optimum: Abaqus vs OpenSees in the three load cases (REPORT.md)
fig, ax = plt.subplots(figsize=(5.0, 2.7), facecolor=SURF)
labs = ["Twist, 10 N·mm", "Tip deflection, 100 N", "Shortening, 100 N"]
vals = [0.24, -0.13, 0.00]
ax.axvspan(-1, 1, color="#e8f5ee", zorder=0)
ax.barh([2, 1, 0], vals, color=[BLUE, GREY, GREY], height=0.55, zorder=2)
for yy, v in zip([2, 1, 0], vals):
    ax.text(v + (0.05 if v >= 0 else -0.05), yy, f"{v:+.2f}%", va="center", ha="left" if v >= 0 else "right",
            fontsize=13, color=INK)
ax.axvline(0, color=INK2, lw=1)
ax.set_yticks([2, 1, 0])
ax.set_yticklabels(labs, fontsize=13, color=INK)
ax.set_xlim(-1.0, 1.0)
ax.set_xticks([-1, -0.5, 0, 0.5, 1])
ax.set_title("Test case 2 optimum (it2): Abaqus vs OpenSeesPy", fontsize=13, loc="left", color=INK)
finish(ax, "difference [%] (shaded: within ±1%)", "")
save(fig, "abaqus_k40.png")

# test case 3, final design it006: OpenSeesPy imperfect path vs Abaqus Riks path, LBA and NLB
d = np.load(TARA / "iterations" / "it006" / "it006_L011_Y026_C008_buc_RIKS_odb.npz", allow_pickle=True)
Mref = 52209.746088827764                                     # moment of load factor 1 (abaqus_buckling_case.json)
rot = d["asm_UR"][:, 1, 2] * 1000                             # free-end rotation about z [mrad]
mom = d["LPF"][:, 1] * Mref / 1000
fig, ax = plt.subplots(figsize=(4.8, 3.5), facecolor=SURF)
ax.plot(rot, mom, "-", color=ORANGE, lw=2.4, label="Abaqus Riks")
ax.plot(x6, y6, "o", color=BLUE, ms=8, label="OpenSeesPy")
ax.axhline(50, color=RED, lw=1.8)
ax.text(7.5, 46, "requirement 50", color=RED, fontsize=12, ha="right", va="top")
ax.axhline(56.397, color=INK2, lw=1.4, ls="--")
ax.axhline(55.436, color=INK2, lw=1.4, ls=":")
ax.text(7.5, 66, "Abaqus LBA 56.4, NLB 55.4", color=INK2, fontsize=12, ha="right")
ax.set_xlim(0, 7.8)
ax.set_ylim(0, 110)
ax.legend(frameon=True, facecolor=SURF, edgecolor=GRID, loc="upper left", labelcolor=INK2, fontsize=12)
finish(ax, "end rotation [mrad]", "end moment [kN·mm]")
save(fig, "abaqus_tara_buckling.png")

# ------------------------------------------------------------------ 6. z-displacement pictures, trimmed
for key in ("ts", "k40", "tara"):
    im = Image.open(HERE / "prescreen" / f"uz_{key}.png").convert("RGB")
    im.paste((255, 255, 255), (0, 0, im.width, 64))      # drop the small header text (stated on the slide)
    bg = Image.new("RGB", im.size, (255, 255, 255))
    box = ImageChops.difference(im, bg).getbbox()
    im.crop((max(0, box[0] - 10), max(0, box[1] - 10), min(im.width, box[2] + 10),
             min(im.height, box[3] + 10))).save(OUT / f"uz_{key}.png")
    print("wrote", OUT / f"uz_{key}.png")
