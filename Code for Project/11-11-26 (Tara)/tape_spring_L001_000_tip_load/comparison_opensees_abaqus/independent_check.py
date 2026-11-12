"""Independent OpenSees vs Abaqus comparison from the two result .npz files only.

Usage: python independent_check.py <opensees.npz> <abaqus_odb.npz> <outdir>
"""
import json, sys, os
import numpy as np
import matplotlib
matplotlib.use("Agg")
import matplotlib.pyplot as plt
from scipy.spatial import cKDTree

fo, fa, out = sys.argv[1:4]
os.makedirs(out, exist_ok=True)
o = np.load(fo); a = np.load(fa)
lam = json.loads(str(o["laminate"])); meta = json.loads(str(o["meta"]))
ameta = json.loads(str(a["meta"]))
L = float(meta["L"])
mat = lam["materials"][0]
plies = lam["plies"]; t = sum(p["t"] for p in plies)
assert all(abs(p["theta"]) < 1e-12 for p in plies)
E1, E2, n12, G12 = mat["E1"], mat["E2"], mat["nu12"], mat["G12"]
n21 = n12 * E2 / E1; d = 1 - n12 * n21
Q = np.array([[E1 / d, n12 * E2 / d, 0], [n12 * E2 / d, E2 / d, 0], [0, 0, G12]])
A = Q * t; D = Q * t ** 3 / 12
rep = {}
lines = []
def P(*s):
    msg = " ".join(str(x) for x in s); print(msg); lines.append(msg)

# ---------------- pairing ----------------
rig = meta["rigid"]["xL"]
tags = o["node_tags"]; Po = o["points"]; Uo = o["disp"]
shell = tags != rig
Ps, Us, fixed = Po[shell], Uo[shell], o["fixed"][shell]
Xa = a["node_xyz"]; Ua = a["U"][-1]; URa = a["UR"][-1]
tree = cKDTree(Xa); dn, ina = tree.query(Ps)
P("node pairing max dist", dn.max())
Ua_p, URa_p = Ua[ina], URa[ina]
lab2i = {l: i for i, l in enumerate(a["node_labels"])}
Ca = np.vectorize(lab2i.get)(a["elem_conn"])
# OpenSees faces index into points (0-based row numbers)
Fo = o["faces"]
co = Po[Fo].mean(1); ca = Xa[Ca].mean(1)
de, ie = cKDTree(ca).query(co)
P("element pairing max dist", de.max())
def normals(X, F):
    n = np.cross(X[F[:, 2]] - X[F[:, 0]], X[F[:, 3]] - X[F[:, 1]])
    return n / np.linalg.norm(n, axis=1)[:, None]
no = normals(Po, Fo); na = normals(Xa, Ca)[ie]
P("normal agreement OS vs ABQ (min dot)", np.einsum("ij,ij->i", no, na).min(),
  "| OS normal vs OS frame e3", np.einsum("ij,ij->i", no, o["frames"][:, 2]).min())
cen = np.array([0, 0, 20.0]); r = co - cen; r[:, 0] = 0; r /= np.linalg.norm(r, axis=1)[:, None]
P("OS normal . outward radial: min/max", np.einsum("ij,ij->i", no, r).min(), np.einsum("ij,ij->i", no, r).max())

# ---------------- element fields ----------------
eps = o["strains"].mean(1)               # centroid (mean of 4 GPs)
e0o, ko = eps[:, 0:3], eps[:, 3:6]
def comp(field, labels):
    return {l: a[field][ie, 0, i] for i, l in enumerate(labels)}
SE = comp("F_SE", ameta["fields"]["SE"]["components"])
SK = comp("F_SK", ameta["fields"]["SK"]["components"])
SF = comp("F_SF", ameta["fields"]["SF"]["components"])
SM = comp("F_SM", ameta["fields"]["SM"]["components"])
Sa = a["F_S"][ie]; Ea = a["F_E"][ie]       # (nel, 9 spts, [11,22,33,12])
frac = np.array([-1, -2/3, -1/3, -1/3, 0, 1/3, 1/3, 2/3, 1.0])
zsp = frac * t / 2
# Identify Abaqus curvature columns from the through-thickness gradient of E (label-free check)
gE = np.array([np.polyfit(zsp, Ea[:, :, c].T, 1)[0] for c in (0, 1, 3)]).T  # d(e11,e22,g12)/dz
for l, v in SK.items():
    cc = [np.corrcoef(v, gE[:, j])[0, 1] for j in range(3)]
    sc = [np.dot(v, gE[:, j]) / np.dot(gE[:, j], gE[:, j]) for j in range(3)]
    P(f"Abaqus {l}: corr with d(e11,e22,g12)/dz = {np.round(cc,4)}, scale {np.round(sc,4)}")
e0a = np.c_[SE["SE1"], SE["SE2"], SE["SE3"]]
ka = np.c_[SK["SK2"], SK["SK1"], SK["SK3"]]    # (kxx, kyy, kxy_eng) per the label-free check above
Na = np.c_[SF["SF1"], SF["SF2"], SF["SF3"]]
Ma = np.c_[SM["SM1"], SM["SM2"], SM["SM3"]]
# check M = D k inside Abaqus and N = A e
P("Abaqus M11 / (D k)_11 scale", np.dot(Ma[:, 0], (ka @ D.T)[:, 0]) / np.dot((ka @ D.T)[:, 0], (ka @ D.T)[:, 0]),
  "| M22", np.dot(Ma[:, 1], (ka @ D.T)[:, 1]) / np.dot((ka @ D.T)[:, 1], (ka @ D.T)[:, 1]),
  "| M12", np.dot(Ma[:, 2], (ka @ D.T)[:, 2]) / np.dot((ka @ D.T)[:, 2], (ka @ D.T)[:, 2]))
P("Abaqus N / (A e) scales", [round(np.dot(Na[:, j], (e0a @ A.T)[:, j]) / np.dot((e0a @ A.T)[:, j], (e0a @ A.T)[:, j]), 5) for j in range(3)])
No = e0o @ A.T; Mo = ko @ D.T
# OpenSees ply strains/stresses at the same section points (z along each code's own normal; normals agree)
eo_sp = e0o[:, None, :] + zsp[None, :, None] * ko[:, None, :]
So_sp = eo_sp @ Q.T
Sa3 = Sa[:, :, [0, 1, 3]]; Ea3 = Ea[:, :, [0, 1, 3]]

xc = co[:, 0]
# arc-length coordinate of element centroids
s_el = (np.arctan2(co[:, 1], -(co[:, 2] - 20)) + np.pi / 2) * 20
zones = {"all": np.ones_like(xc, bool), "x<10 (root)": xc < 10, "10<x<50": (xc > 10) & (xc < 50),
         "50<x<990 (interior)": (xc > 50) & (xc < 990), "x>990 (tip)": xc > 990}
def stats(name, vo, va):
    row = {}
    for zn, m in zones.items():
        num = np.linalg.norm(va[m] - vo[m]); den = np.linalg.norm(vo[m])
        sc = np.dot(va[m], vo[m]) / np.dot(vo[m], vo[m]) if den > 0 else np.nan
        row[zn] = (num / den if den > 0 else np.nan, sc)
    i = np.argmax(np.abs(vo))
    row["peak"] = (vo[i], va[i], (va[i] - vo[i]) / abs(vo[i]) * 100, co[i].round(2).tolist(), np.abs(va).max())
    rep[name] = row
    P(f"{name:22s} peakOS {vo[i]:+.5g} ABQ@same {va[i]:+.5g} ({row['peak'][2]:+.2f}%) at {row['peak'][3]} | "
      + " | ".join(f"{zn}: rRMS {v[0]*100:.2f}% sc {v[1]:.4f}" for zn, v in row.items() if zn != "peak"))
P("\n== element fields (rRMS = ||ABQ-OS||/||OS||, sc = least-squares ABQ/OS) ==")
for j, n in enumerate(["exx", "eyy", "gxy"]): stats(n, e0o[:, j], e0a[:, j])
for j, n in enumerate(["kxx", "kyy", "kxy"]): stats(n, ko[:, j], ka[:, j])
for j, n in enumerate(["N11", "N22", "N12"]): stats(n, No[:, j], Na[:, j])
for j, n in enumerate(["M11", "M22", "M12"]): stats(n, Mo[:, j], Ma[:, j])
for sp, nm in [(0, "ply1 bot"), (4, "ply2 mid"), (8, "ply3 top")]:
    for j, c in enumerate(["s1", "s2", "t12"]):
        stats(f"{c} {nm}", So_sp[:, sp, j], Sa3[:, sp, j])
# bending part of ply stress: top - bottom (isolates curvature and normal orientation)
for j, c in enumerate(["s1", "s2", "t12"]):
    stats(f"d{c} (top-bot)", So_sp[:, 8, j] - So_sp[:, 0, j], Sa3[:, 8, j] - Sa3[:, 0, j])
# Abaqus internal consistency: S at section points vs Q*E
P("Abaqus S vs Q E at section points: max |diff| MPa", np.abs(Sa3 - Ea3 @ Q.T).max())

P("\n== nodal fields ==")
xn = Ps[:, 0]
for j, n in enumerate(["ux", "uy", "uz", "rx", "ry", "rz"]):
    vo = Us[:, j]; va = (Ua_p if j < 3 else URa_p)[:, j % 3]
    i = np.argmax(np.abs(vo))
    P(f"{n}: peakOS {vo[i]:+.5g} ABQ@same {va[i]:+.5g} ({(va[i]-vo[i])/abs(vo[i])*100:+.2f}%) at {Ps[i].round(2)}; "
      f"rRMS all {np.linalg.norm(va-vo)/np.linalg.norm(vo)*100:.2f}%, x>50 {np.linalg.norm((va-vo)[xn>50])/np.linalg.norm(vo[xn>50])*100:.2f}%")
    rep[n] = dict(peak=(vo[i], va[i]))
ri = np.where(tags == rig)[0][0]
P("rigid end OS", Uo[ri], "\nrigid end ABQ RP U", a["asm_U"][-1, 0], "UR", a["asm_UR"][-1, 0], "at", a["asm_xyz"][0])
P("OS rigid node at", Po[ri])
P("load path: OS history", o["history"].ravel(), "Abaqus frames", a["frame_value"])
P("tip stiffness P/|uz|  OS", 1 / abs(Uo[ri, 2]), "ABQ", 1 / abs(a["asm_U"][-1, 0, 2]))
# tip cross-section deformation: does the rigid end keep the section rigid in both?
tipm = np.abs(xn - L) < 1e-6
P("tip nodes uz range OS", np.ptp(Us[tipm, 2]), "ABQ", np.ptp(Ua_p[tipm, 2]))
# clamped nodes
P("OS fixed nodes", int(fixed.sum()), "max |u| there", np.abs(Us[fixed > 0]).max(),
  "| ABQ max |U|,|UR| at x=0", np.abs(Ua[Xa[:, 0] < 1e-6]).max(), np.abs(URa[Xa[:, 0] < 1e-6]).max())

# ---------------- section equilibrium (reactions / load path) ----------------
area = 0.5 * np.linalg.norm(np.cross(Po[Fo[:, 2]] - Po[Fo[:, 0]], Po[Fo[:, 3]] - Po[Fo[:, 1]]), axis=1)
xs = np.unique(np.round(xc, 6)); dx = np.diff(xs).mean()
ds = area / dx
e2 = o["frames"][:, 1]
zbar = np.sum(co[:, 2] * ds * (np.abs(xc - xs[0]) < 1e-6)) / np.sum(ds * (np.abs(xc - xs[0]) < 1e-6))
P(f"\n== section resultants (element rings, centroid z = {zbar:.4f}) ==")
res = {"x": xs}
for nm, N, M in [("OS", No, Mo), ("ABQ", Na, Ma)]:
    Nx, My, Vz, Vy = [], [], [], []
    for x in xs:
        m = np.abs(xc - x) < 1e-6
        Nx.append(np.sum(N[m, 0] * ds[m]))
        # moment of axial forces about the y axis through the section centroid; + M11 contribution
        My.append(np.sum(N[m, 0] * (co[m, 2] - zbar) * ds[m]) + np.sum(M[m, 0] * ds[m] * e2[m, 1]))
        Vz.append(np.sum(N[m, 2] * ds[m] * e2[m, 2]))
        Vy.append(np.sum(N[m, 2] * ds[m] * e2[m, 1]))
    res[nm] = dict(Nx=np.array(Nx), My=np.array(My), Vz=np.array(Vz), Vy=np.array(Vy))
Mex = 1.0 * (L - xs)
for x in [xs[0], 51.25, 251.25, 501.25, 751.25, xs[-1]]:
    k = np.argmin(np.abs(xs - x))
    P(f"x={xs[k]:7.2f}: My exact {Mex[k]:8.3f} | OS {res['OS']['My'][k]:8.3f} ABQ {res['ABQ']['My'][k]:8.3f} | "
      f"Nx OS {res['OS']['Nx'][k]:+.4f} ABQ {res['ABQ']['Nx'][k]:+.4f} | Vz OS {res['OS']['Vz'][k]:+.4f} ABQ {res['ABQ']['Vz'][k]:+.4f}")
inter = (xs > 50) & (xs < 950)
for nm in ["OS", "ABQ"]:
    P(f"{nm}: interior My/(L-x) mean {np.mean(res[nm]['My'][inter]/Mex[inter]):.4f}, Vz mean {np.mean(res[nm]['Vz'][inter]):.4f}")
P("OS effective A11 needed for statics (interior) = Q11 t x", 1/np.mean(res["OS"]["My"][inter]/Mex[inter]))
P("root ring (x=1.25): My OS", res["OS"]["My"][0], "ABQ", res["ABQ"]["My"][0], "exact", Mex[0])

# ---------------- plots ----------------
lab = {"OS": "OpenSees", "ABQ": "Abaqus"}
# 1 displacements along x at three section lines
yv = np.unique(np.round(Ps[:, 1], 4)); sel = {"edge y=-20": Ps[:, 1] < -19.99, "crown y=0": np.abs(Ps[:, 1]) < 1e-6, "edge y=+20": Ps[:, 1] > 19.99}
fig, ax = plt.subplots(3, 3, figsize=(15, 10))
for c, (nm, m) in enumerate(sel.items()):
    srt = np.argsort(xn[m])
    for r_, j in enumerate([0, 1, 2]):
        ax[r_, c].plot(xn[m][srt], Us[m][srt, j], "b-", label="OpenSees")
        ax[r_, c].plot(xn[m][srt], Ua_p[m][srt, j], "r--", label="Abaqus")
        ax[r_, c].set_title(f"u{'xyz'[j]} along x, {nm}"); ax[r_, c].grid(alpha=.3)
        tw = ax[r_, c].twinx(); tw.plot(xn[m][srt], Ua_p[m][srt, j] - Us[m][srt, j], "g:", lw=1); tw.set_ylabel("ABQ-OS", color="g")
ax[0, 0].legend(); [ax[2, c].set_xlabel("x [mm]") for c in range(3)]
fig.tight_layout(); fig.savefig(os.path.join(out, "ic_disp_along_x.png"), dpi=110); plt.close(fig)

# 2 across-section at x = 500 and tip: u and rotations
fig, ax = plt.subplots(2, 6, figsize=(22, 7))
for r_, x0 in enumerate([500.0, L]):
    m = np.abs(xn - x0) < 1e-6
    sn = (np.arctan2(Ps[m, 1], -(Ps[m, 2] - 20)) + np.pi / 2) * 20
    srt = np.argsort(sn)
    for j in range(6):
        vo = Us[m][srt, j]; va = (Ua_p if j < 3 else URa_p)[m][srt, j % 3]
        ax[r_, j].plot(sn[srt], vo, "bo-", ms=3, label="OpenSees"); ax[r_, j].plot(sn[srt], va, "rx--", label="Abaqus")
        ax[r_, j].set_title(f"{['ux','uy','uz','rx','ry','rz'][j]} at x={x0:g}"); ax[r_, j].set_xlabel("s across section [mm]"); ax[r_, j].grid(alpha=.3)
ax[0, 0].legend(); fig.tight_layout(); fig.savefig(os.path.join(out, "ic_across_section_disp.png"), dpi=100); plt.close(fig)

# 3 section forces/moments across the section at a few x
fig, ax = plt.subplots(3, 6, figsize=(24, 11))
for r_, x0 in enumerate([1.25, 51.25, 501.25]):
    m = np.abs(xc - x0) < 1e-6; srt = np.argsort(s_el[m])
    for j, (nm, vo, va) in enumerate([("N11", No[:, 0], Na[:, 0]), ("N22", No[:, 1], Na[:, 1]), ("N12", No[:, 2], Na[:, 2]),
                                       ("M11", Mo[:, 0], Ma[:, 0]), ("M22", Mo[:, 1], Ma[:, 1]), ("M12", Mo[:, 2], Ma[:, 2])]):
        ax[r_, j].plot(s_el[m][srt], vo[m][srt], "bo-", ms=3, label="OpenSees"); ax[r_, j].plot(s_el[m][srt], va[m][srt], "rx--", label="Abaqus")
        ax[r_, j].set_title(f"{nm} at x={x0:g}"); ax[r_, j].grid(alpha=.3); ax[r_, j].set_xlabel("s [mm]")
ax[0, 0].legend(); fig.tight_layout(); fig.savefig(os.path.join(out, "ic_section_forces_across.png"), dpi=90); plt.close(fig)

# 4 resultants vs x (equilibrium)
fig, ax = plt.subplots(1, 3, figsize=(16, 4.5))
ax[0].plot(xs, Mex, "k-", lw=3, alpha=.3, label="P (L-x) statics"); ax[0].plot(xs, res["OS"]["My"], "b-", label="OpenSees"); ax[0].plot(xs, res["ABQ"]["My"], "r--", label="Abaqus")
ax[0].set_title("section bending moment My [N mm]"); ax[0].legend()
ax[1].plot(xs, res["OS"]["Vz"], "b-"); ax[1].plot(xs, res["ABQ"]["Vz"], "r--"); ax[1].axhline(1, color="k", alpha=.3, lw=3); ax[1].set_title("shear Vz from N12 [N]")
ax[2].plot(xs, res["OS"]["Nx"], "b-"); ax[2].plot(xs, res["ABQ"]["Nx"], "r--"); ax[2].set_title("axial force Nx [N] (should be 0)")
for x_ in ax: x_.set_xlabel("x [mm]"); x_.grid(alpha=.3)
fig.tight_layout(); fig.savefig(os.path.join(out, "ic_section_resultants.png"), dpi=110); plt.close(fig)

# 5 ply stresses through the thickness at selected elements
pick = [np.argmin(np.hypot(xc - 1.25, s_el - 1.25)), np.argmin(np.hypot(xc - 501.25, s_el - 1.25)), np.argmin(np.hypot(xc - 501.25, s_el - 31.4)),
        np.argmin(np.hypot(xc - 6.25, s_el - 15))]
fig, ax = plt.subplots(len(pick), 3, figsize=(13, 3.2 * len(pick)))
for r_, e in enumerate(pick):
    for j, c in enumerate(["s1", "s2", "t12"]):
        ax[r_, j].plot(So_sp[e, :, j], zsp, "bo-", label="OpenSees (Q(e0+z k))"); ax[r_, j].plot(Sa3[e, :, j], zsp, "rx--", label="Abaqus S")
        ax[r_, j].set_title(f"{c} at x={xc[e]:.2f}, s={s_el[e]:.1f}"); ax[r_, j].set_ylabel("z along normal [mm]"); ax[r_, j].grid(alpha=.3)
ax[0, 0].legend(fontsize=7); fig.tight_layout(); fig.savefig(os.path.join(out, "ic_ply_stress_thickness.png"), dpi=100); plt.close(fig)

# 6 difference vs x for the CHECK fields (where the differences live)
fig, ax = plt.subplots(1, 4, figsize=(20, 4.5))
for j, (nm, vo, va) in enumerate([("kyy", ko[:, 1], ka[:, 1]), ("kxy", ko[:, 2], ka[:, 2]), ("N22", No[:, 1], Na[:, 1]), ("rz", None, None)]):
    if nm == "rz":
        ax[j].plot(xn, URa_p[:, 2] - Us[:, 5], ".", ms=2); ax[j].set_title("rz: ABQ-OS per node")
    else:
        ax[j].plot(xc, va - vo, ".", ms=2); ax[j].set_title(f"{nm}: ABQ-OS per element (OS peak {np.abs(vo).max():.3g})")
    ax[j].set_xscale("symlog", linthresh=10); ax[j].set_xlabel("x [mm] (symlog)"); ax[j].grid(alpha=.3)
fig.tight_layout(); fig.savefig(os.path.join(out, "ic_check_fields_diff_vs_x.png"), dpi=110); plt.close(fig)

# ---------------- PyVista contour plots ----------------
import pyvista as pv
pv.OFF_SCREEN = True
cells = np.hstack([np.full((len(Fo), 1), 4), Fo]).ravel()
cells_a = np.hstack([np.full((len(Ca), 1), 4), Ca]).ravel()
umax = max(np.abs(Us[:, :3]).max(), np.abs(Ua).max())
mag = 20.0
P(f"\nPyVista magnification x{mag:g} (max |u| {umax:.3f} mm)")
Ufull = np.zeros_like(Po); Ufull[shell] = Us[:, :3]
sxx_o = So_sp[:, 8, 0]                       # top ply, top surface (z=+t/2 along the inward normal)
sxx_a = np.empty(len(Ca)); sxx_a[ie] = Sa3[:, 8, 0]
uz_o = Ufull[:, 2]; uz_a = Ua[:, 2]
fix_o = Ps[fixed > 0]
fix_a = Xa[(np.abs(Ua).max(1) < 1e-20) & (np.abs(URa).max(1) < 1e-20)]
def two_panel(fname, title, pt_o, pt_a, cell, unit):
    lim = max(np.abs(pt_o).max(), np.abs(pt_a).max())
    pl = pv.Plotter(shape=(1, 2), off_screen=True, window_size=(2000, 800))
    for k, (nm, X, U, cl, val, fx) in enumerate([("OpenSees", Po, Ufull, cells, pt_o, fix_o), ("Abaqus", Xa, Ua, cells_a, pt_a, fix_a)]):
        pl.subplot(0, k)
        g0 = pv.PolyData(X, cl); g = pv.PolyData(X + mag * U, cl)
        if cell: g.cell_data[title] = val
        else: g.point_data[title] = val
        pl.add_mesh(g0, color="lightgray", opacity=0.35, style="surface")
        pl.add_mesh(g0.extract_feature_edges(boundary_edges=True, feature_edges=False, manifold_edges=False), color="gray", line_width=1)
        pl.add_mesh(g, scalars=title, cmap="coolwarm", clim=[-lim, lim], show_edges=False,
                    scalar_bar_args=dict(title=f"{title} [{unit}]", n_labels=5, fmt="%.3g"))
        pl.add_points(fx, color="black", point_size=8, render_points_as_spheres=True)
        pl.add_text(f"{nm}: {title}, min {val.min():.4g}, max {val.max():.4g}\ndeformation x{mag:g}, gray = undeformed, black = clamped nodes", font_size=10)
        pl.view_isometric()
    pl.link_views()
    pl.screenshot(os.path.join(out, fname)); pl.close()
    return dict(OS=(float(pt_o.min()), float(pt_o.max())), ABQ=(float(pt_a.min()), float(pt_a.max())), clim=lim)
r1 = two_panel("pv_uz_deformed.png", "u_z", uz_o[shell] if False else uz_o, uz_a, False, "mm")
r1["OS"] = (float(Us[:, 2].min()), float(Us[:, 2].max()))
r2 = two_panel("pv_sxx_topply_top_deformed.png", "sigma_xx top ply top", sxx_o, sxx_a, True, "MPa")
P("pv u_z min/max", r1, "\npv sigma_xx top ply top min/max", r2)

with open(os.path.join(out, "independent_check_log.txt"), "w") as f:
    f.write("\n".join(lines))
