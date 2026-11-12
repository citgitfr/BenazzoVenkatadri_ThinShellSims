"""Figure 3 of the Lab Report 3 narrative: mass of the 27 sandboxed designs and how each was handled.
Data from Code for Project/11-11-26 (Tara)/ts_toy_minmass_REPORT.pdf, section 4.1 and 5."""
import os
import matplotlib
matplotlib.use("Agg")
import matplotlib.pyplot as plt

HERE = os.path.dirname(os.path.abspath(__file__))
mass = [0.01042, 0.001042, 0.1042, 0.03474, 0.003474, 0.3474, 0.01042, 0.001042, 0.1042,
        10.42, 1.042, 104.2, 34.74, 3.474, 347.4, 10.42, 1.042, 104.2,
        0.01042, 0.001042, 0.1042, 0.03474, 0.003474, 0.3474, 0.01042, 0.001042, 0.1042]
# status: 'opt', ('fe', it), 'C' coiling (with or without stiffness), 'S' stiffness only
fe = {1: 1, 3: 2, 10: 3, 9: 4, 6: 5, 12: 6, 18: 7, 15: 8}
stiff_only = {7, 16}
labels = [f"{m}{l}{g}" for m in (1, 2, 3) for l in (1, 2, 3) for g in (1, 2, 3)]

plt.rcParams.update({"font.family": "serif", "font.serif": ["Times New Roman"], "font.size": 8})
fig, ax = plt.subplots(figsize=(3.45, 2.5), dpi=300)
for k in range(1, 28):
    x, y = k, mass[k - 1]
    if k == 1:
        ax.scatter(x, y, marker="D", s=30, color="#d1495b", zorder=4)
    elif k in fe:
        ax.scatter(x, y, marker="o", s=18, color="#2e6fb7", zorder=3)
        ax.annotate(str(fe[k]), (x, y), xytext=(0, 4), textcoords="offset points", ha="center", fontsize=6.5, color="#2e6fb7")
    elif k in stiff_only:
        ax.scatter(x, y, marker="+", s=26, color="#555555", zorder=2)
    else:
        ax.scatter(x, y, marker="x", s=16, color="#999999", zorder=2)
ax.set_yscale("log")
ax.set_ylim(5e-4, 2e3)
ax.set_xticks(range(1, 28))
ax.set_xticklabels(labels, rotation=90, fontsize=6)
ax.set_xlabel("design (material / layup / geometry option number)")
ax.set_ylabel("boom mass (kg)")
ax.grid(axis="y", color="#e4e4e4", lw=0.5)
for xb in (9.5, 18.5):
    ax.axvline(xb, color="#cccccc", lw=0.6)
for xc, t in ((5, "L001"), (14, "L002 (1000x density)"), (23, "L003 (strength x0.001)")):
    ax.text(xc, 1.1e3, t, ha="center", fontsize=6.5)
from matplotlib.lines import Line2D
h = [Line2D([], [], marker="D", ls="", color="#d1495b", ms=4, label="optimum (FE iteration 1)"),
     Line2D([], [], marker="o", ls="", color="#2e6fb7", ms=4, label="FE iteration #, feasible"),
     Line2D([], [], marker="x", ls="", color="#999999", ms=4, label="rejected: coiling"),
     Line2D([], [], marker="+", ls="", color="#555555", ms=5, label="rejected: stiffness")]
ax.legend(handles=h, fontsize=6, loc="lower center", ncol=2, frameon=False, bbox_to_anchor=(0.5, 1.0))
for s in ("top", "right"):
    ax.spines[s].set_visible(False)
fig.tight_layout(pad=0.3)
fig.savefig(os.path.join(HERE, "narrative_figs", "fig3_screening_27_designs.png"))
print("ok")

# Figure 1: Lab 3 system diagram (same as demo slide 2), empty bottom margin trimmed as in build_demo_deck.py
from PIL import Image
im = Image.open(os.path.join(HERE, "system_diagram_lab3.png")).convert("RGB")
bbox = im.convert("L").point(lambda v: 255 if v < 250 else 0).getbbox()
im.crop((0, 0, im.size[0], min(im.size[1], bbox[3] + 40))).save(
    os.path.join(HERE, "narrative_figs", "fig1_system_diagram_lab3.png"))
print("fig1 ok")
