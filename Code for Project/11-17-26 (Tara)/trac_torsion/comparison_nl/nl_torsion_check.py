"""Independent nonlinear torsion check, OpenSees (rotation control) vs Abaqus (load control).
Uses only the two result files. Exact 2D section rotation (Procrustes about the section centroid).
Writes nl_torsion_check.json and nl_torsion_*.png in this folder."""
import json, os, sys
import numpy as np
import matplotlib
matplotlib.use("Agg")
import matplotlib.pyplot as plt

here = os.path.dirname(os.path.abspath(__file__))
base = os.path.dirname(here)
OS = np.load(os.path.join(base, "results", "R001_Al_torsion_nl_rigid_rotctl_5mm.npz"))
AB = np.load(os.path.join(base, "abaqus_nl", "R001_Al_torsion_nl_abq_5mm_S4R_5mm_odb.npz"))

nshell = 2211
P = OS["points"][:nshell]; Uo = OS["disp"][:nshell]
X = AB["node_xyz"]
# node pairing (Abaqus -> OpenSees order)
from scipy.spatial import cKDTree
dist, idx = cKDTree(X).query(P)
assert dist.max() < 1e-4, dist.max()
Ua = AB["U"][:, idx, :]          # (frames, nshell, 3) in OpenSees node order
URa = AB["UR"][:, idx, :]
T_ab = AB["frame_value"]
H = OS["history"]; T_os, phi_os = H[:, 0], H[:, 1]

xs = np.unique(np.round(P[:, 0], 6))
sec = [np.where(np.isclose(P[:, 0], x))[0] for x in xs]

def twist(u):
    out = []
    for s in sec:
        p = P[s, 1:]; q = p + u[s, 1:3]
        p = p - p.mean(0); q = q - q.mean(0)
        out.append(np.arctan2(np.sum(p[:, 0]*q[:, 1] - p[:, 1]*q[:, 0]), np.sum(p*q)))
    return np.array(out)

# ---- (1) load path
phi_ab_tip = np.array([twist(Ua[k])[-1] for k in range(len(T_ab))])
phi_os_tip_final = twist(Uo)[-1]
k0_os = T_os[1]/phi_os[1]; k0_ab = T_ab[1]/phi_ab_tip[1]
# Abaqus twist at the OpenSees torques, and Abaqus torque at the OpenSees twists
phi_ab_at_Tos = np.interp(T_os, T_ab, phi_ab_tip)
T_ab_at_phios = np.interp(phi_os, phi_ab_tip, T_ab)
# nonlinear stiffening normalised by each model's own initial slope
stiff_os = T_os[1:]/(k0_os*phi_os[1:])
stiff_ab_at = T_ab_at_phios[1:]/(k0_ab*phi_os[1:])

# ---- (2) final state at matched torque (Abaqus interpolated to T_os[-1]) and matched twist
def interp_frames(arr, xq, xv):
    k = np.searchsorted(xv, xq); k = min(max(k, 1), len(xv)-1)
    w = (xq - xv[k-1])/(xv[k]-xv[k-1])
    return (1-w)*arr[k-1] + w*arr[k], (k-1, k, w)
Ua_T, fT = interp_frames(Ua, T_os[-1], T_ab)
Ua_phi, fphi = interp_frames(Ua, phi_os[-1], phi_ab_tip)
URa_T, _ = interp_frames(URa, T_os[-1], T_ab)

tw_os = twist(Uo); tw_abT = twist(Ua_T); tw_abphi = twist(Ua_phi)
inner = (xs > 50) & (xs < 950)
rate_os = np.polyfit(xs[inner], tw_os[inner], 1)[0]
rate_abT = np.polyfit(xs[inner], tw_abT[inner], 1)[0]

def rel(a, b):  # rel RMS of b-a over a
    return float(np.linalg.norm(b-a)/np.linalg.norm(a))
def lsq(a, b):
    return float(np.sum(a*b)/np.sum(a*a))
xin = (P[:, 0] > 50) & (P[:, 0] < 950)
disp_T = {c: dict(peak_os=float(np.abs(Uo[:, i]).max()), peak_ab=float(np.abs(Ua_T[:, i]).max()),
                  relrms=rel(Uo[:, i], Ua_T[:, i]), scale=lsq(Uo[:, i], Ua_T[:, i]),
                  relrms_inner=rel(Uo[xin, i], Ua_T[xin, i]))
          for i, c in enumerate("xyz")}
disp_phi = {c: dict(peak_ab=float(np.abs(Ua_phi[:, i]).max()), relrms=rel(Uo[:, i], Ua_phi[:, i]),
                    scale=lsq(Uo[:, i], Ua_phi[:, i]), relrms_inner=rel(Uo[xin, i], Ua_phi[xin, i]))
            for i, c in enumerate("xyz")}
umag_os = np.linalg.norm(Uo, axis=1); umag_abT = np.linalg.norm(Ua_T, axis=1); umag_abphi = np.linalg.norm(Ua_phi, axis=1)

# ---- element fields (Abaqus final frame only; T = 1 vs OpenSees 0.99984: 0.016 % torque)
fc = OS["faces"]; cen = P[fc].mean(1)
ecen = X[AB["elem_conn"] - AB["node_labels"].min()].mean(1) if False else None
lab2row = {l: i for i, l in enumerate(AB["node_labels"])}
ecen = np.array([[X[lab2row[n]] for n in c] for c in AB["elem_conn"]]).mean(1)
de, ie = cKDTree(ecen).query(cen); assert de.max() < 1e-4
st = OS["strains"].mean(1)       # (2000, 8) e11 e22 g12 k11 k22 k12 g13 g23 (element axes)
SE = AB["F_SE"][ie, 0, :]; SK = AB["F_SK"][ie, 0, :]; SF = AB["F_SF"][ie, 0, :]; SM = AB["F_SM"][ie, 0, :]
S = AB["F_S"][ie]                # (2000, 5 sp, [S11 S22 S33 S12])
web = np.abs(cen[:, 1]) < 1e-6
xe = cen[:, 0]; ein = (xe > 50) & (xe < 950)
# OpenSees stresses from section strains (isotropic, plane stress), z through thickness
E, nu = 69000.0, 0.33; G = E/2/(1+nu)
t = np.where(web, 0.2, 0.1)
def os_stress(z):
    e11 = st[:, 0] + z*st[:, 3]; e22 = st[:, 1] + z*st[:, 4]; g12 = st[:, 2] + z*st[:, 5]
    c = E/(1-nu**2)
    return np.c_[c*(e11+nu*e22), c*(e22+nu*e11), G*g12]
fields = {}
def put(name, o, a, mask_all=None):
    fields[name] = dict(peak_os=float(np.abs(o).max()), peak_ab=float(np.abs(a).max()),
                        relrms_all=rel(o, a), scale_all=lsq(o, a),
                        relrms_inner=rel(o[ein], a[ein]), scale_inner=lsq(o[ein], a[ein]),
                        peak_os_inner=float(np.abs(o[ein]).max()), peak_ab_inner=float(np.abs(a[ein]).max()))
put("exx", st[:, 0], SE[:, 0]); put("eyy", st[:, 1], SE[:, 1]); put("gxy", st[:, 2], SE[:, 3])  # extract order SE1 SE2 SE6 SE3
put("kxx(SK2)", st[:, 3], SK[:, 1]); put("kyy(SK1)", st[:, 4], SK[:, 0]); put("kxy(SK3)", st[:, 5], SK[:, 2])
# Abaqus 5 Simpson points through the whole section thickness: sp1 = -t/2, sp3 = 0, sp5 = +t/2
for sp, zf in ((0, -0.5), (2, 0.0), (4, 0.5)):
    so = os_stress(zf*t)
    for j, (cn, ca) in enumerate((("s11", 0), ("s22", 1), ("t12", 3))):
        put(f"{cn} z={zf:+.1f}t", so[:, j], S[:, sp, ca])
# section forces/moments from the Abaqus SE/SK check of OpenSees strains via isotropic ABD
D = E*t**3/12/(1-nu**2); A = E*t/(1-nu**2)
N11 = A*(st[:, 0]+nu*st[:, 1]); N12 = G*t*st[:, 2]
M11 = D*(st[:, 3]+nu*st[:, 4]); M12 = D*(1-nu)/2*st[:, 5]
put("N11", N11, SF[:, 0]); put("N12", N12, SF[:, 3]); put("M11", M11, SM[:, 1]); put("M12", M12, SM[:, 2])  # extract order SF1 SF2 SF6 SF3, SM2 SM1 SM3
# web thickness actually used in Abaqus: N11/(A' e) ratio
wt = np.median(SF[web, 0]/(E/(1-nu**2)*(SE[web, 0]+nu*SE[web, 1])))
ft = np.median(SF[~web, 0]/(E/(1-nu**2)*(SE[~web, 0]+nu*SE[~web, 1])))

res = dict(
    node_pair_max_mm=float(dist.max()), elem_pair_max_mm=float(de.max()),
    abaqus_thickness_from_SF_over_SE=dict(web=float(wt), flange=float(ft)),
    initial_slope=dict(opensees=k0_os, abaqus=k0_ab, ratio=k0_os/k0_ab, converged_ref=1.16),
    final=dict(T_os=float(T_os[-1]), phi_os_hist=float(phi_os[-1]), phi_os_exact_tip_section=float(phi_os_tip_final),
               T_ab=float(T_ab[-1]), phi_ab_tip_final=float(phi_ab_tip[-1]),
               phi_ab_at_T_os=float(phi_ab_at_Tos[-1]), T_ab_at_phi_os=float(T_ab_at_phios[-1]),
               secant_os=float(T_os[-1]/phi_os[-1]), secant_ab=float(T_ab[-1]/phi_ab_tip[-1])),
    path=[dict(T_os=float(a), phi_os=float(b), phi_ab=float(c), dphi_pct=float(100*(c-b)/b) if b else 0.0,
               T_ab_at_phi=float(e), dT_pct=float(100*(e-a)/a) if a else 0.0)
          for a, b, c, e in zip(T_os, phi_os, phi_ab_at_Tos, T_ab_at_phios)],
    stiffening_T_over_k0phi=dict(opensees=stiff_os.tolist(), abaqus=stiff_ab_at.tolist()),
    twist_rate_inner=dict(opensees=rate_os, abaqus_at_T=rate_abT, ratio=rate_abT/rate_os),
    twist_along_x_max_abs_diff_rad_at_T=float(np.abs(tw_abT-tw_os).max()),
    twist_along_x_max_abs_diff_rad_at_phi=float(np.abs(tw_abphi-tw_os).max()),
    disp_matched_T=disp_T, disp_matched_phi=disp_phi,
    umag=dict(os=float(umag_os.max()), ab_T=float(umag_abT.max()), ab_phi=float(umag_abphi.max()),
              relrms_matched_phi=rel(umag_os, umag_abphi)),
    rigid_end=dict(os=OS["disp"][-1].tolist(), ab_final=np.r_[AB["asm_U"][-1, 0], AB["asm_UR"][-1, 0]].tolist(),
                   ab_matched_phi=np.r_[interp_frames(AB["asm_U"][:, 0], phi_os[-1], phi_ab_tip)[0],
                                        interp_frames(AB["asm_UR"][:, 0], phi_os[-1], phi_ab_tip)[0]].tolist()),
    rot_matched_T=dict(rx_os_max=float(Uo[:, 3].max()), rx_ab_max=float(URa_T[:, 0].max())),
    fields_final=fields,
)
json.dump(res, open(os.path.join(here, "nl_torsion_check.json"), "w"), indent=1)

# ---- pictures
fig, ax = plt.subplots(1, 3, figsize=(16, 4.6))
ax[0].plot(phi_os, T_os, "o-", label="OpenSees (rot. control)")
ax[0].plot(phi_ab_tip, T_ab, ".-", label="Abaqus (load control)")
pp = np.linspace(0, 0.7, 50)
ax[0].plot(pp, 1.16*pp, "k:", label="linear, converged 1.16 N mm/rad")
ax[0].set_xlabel("tip-section twist, exact [rad]"); ax[0].set_ylabel("torque [N mm]"); ax[0].legend(); ax[0].grid()
ax[1].plot(phi_os[1:], stiff_os, "o-", label="OpenSees T/(k0 phi)")
ax[1].plot(phi_os[1:], stiff_ab_at, "s--", label="Abaqus T/(k0 phi)")
ax[1].set_xlabel("twist [rad]"); ax[1].set_ylabel("secant / own initial slope"); ax[1].legend(); ax[1].grid()
ax[1].set_title(f"k0: OS {k0_os:.4f}, Abq {k0_ab:.4f} N mm/rad")
ax[2].plot(phi_os[1:], [r["dT_pct"] for r in res["path"][1:]], "o-", label="torque diff at same twist (Abq-OS)/OS")
ax[2].plot(phi_os[1:], [r["dphi_pct"] for r in res["path"][1:]], "s-", label="twist diff at same torque")
ax[2].set_xlabel("twist [rad]"); ax[2].set_ylabel("%"); ax[2].legend(); ax[2].grid()
fig.tight_layout(); fig.savefig(os.path.join(here, "nl_torsion_load_path.png"), dpi=120)

fig, ax = plt.subplots(1, 2, figsize=(14, 4.6))
ax[0].plot(xs, tw_os, label="OpenSees, T=0.99984")
ax[0].plot(xs, tw_abT, "--", label="Abaqus, interpolated to same T")
ax[0].plot(xs, tw_abphi, ":", label="Abaqus, at same tip twist")
ax[0].set_xlabel("x [mm]"); ax[0].set_ylabel("section twist [rad]"); ax[0].legend(); ax[0].grid()
ax[1].plot(xs, tw_abT - tw_os, label="Abaqus(same T) - OS")
ax[1].plot(xs, tw_abphi - tw_os, label="Abaqus(same twist) - OS")
ax[1].set_xlabel("x [mm]"); ax[1].set_ylabel("twist difference [rad]"); ax[1].legend(); ax[1].grid()
fig.tight_layout(); fig.savefig(os.path.join(here, "nl_torsion_twist_along_x.png"), dpi=120)

# axial (Wagner) stress along x at the flange tips vs twist^2 scaling
fig, ax = plt.subplots(1, 2, figsize=(14, 4.6))
s_os = os_stress(0.0*t)[:, 0]; s_ab = S[:, 2, 0]
for lab, m in (("flange tip strip", np.abs(np.abs(cen[:, 1]) - 10.1) < 0.5), ("web strip z=-6", web & np.isclose(cen[:, 2], -6))):
    o = np.argsort(xe[m])
    ax[0].plot(xe[m][o], s_os[m][o], label=f"OS {lab}"); ax[0].plot(xe[m][o], s_ab[m][o], "--", label=f"Abq {lab}")
    ax[0].plot(xe[m][o], s_ab[m][o]*(phi_os[-1]/phi_ab_tip[-1])**2, ":", label=f"Abq x (phi_os/phi_ab)^2 {lab}")
ax[0].set_xlabel("x [mm]"); ax[0].set_ylabel("mid-surface s11 [MPa]"); ax[0].legend(fontsize=7); ax[0].grid()
t_os = os_stress(0.5*t)[:, 2]; t_ab = S[:, 4, 3]
m = web & np.isclose(cen[:, 2], -2); o = np.argsort(xe[m])
ax[1].plot(xe[m][o], t_os[m][o], label="OS web z=-2, top t12"); ax[1].plot(xe[m][o], t_ab[m][o], "--", label="Abq")
m = np.abs(np.abs(cen[:, 1]) - 10.1) < 0.5; o = np.argsort(xe[m])
ax[1].plot(xe[m][o], t_os[m][o], label="OS flange tip, top t12"); ax[1].plot(xe[m][o], t_ab[m][o], "--", label="Abq")
ax[1].set_xlabel("x [mm]"); ax[1].set_ylabel("t12 at +t/2 [MPa]"); ax[1].legend(fontsize=7); ax[1].grid()
fig.tight_layout(); fig.savefig(os.path.join(here, "nl_torsion_stress_along_x.png"), dpi=120)
print(json.dumps({k: v for k, v in res.items() if k not in ("path", "fields_final", "stiffening_T_over_k0phi")}, indent=1))
for r in res["path"]:
    print("T_os %.4f phi_os %.4f phi_ab %.4f dphi %+.2f%%  T_ab(phi) %.4f dT %+.2f%%" % tuple(r.values()))
for k, v in fields.items():
    print(f"{k:14s} peakOS {v['peak_os']:.4g} peakAb {v['peak_ab']:.4g} rms {v['relrms_all']:.3f} sc {v['scale_all']:.3f} | inner peakOS {v['peak_os_inner']:.4g} peakAb {v['peak_ab_inner']:.4g} rms {v['relrms_inner']:.3f} sc {v['scale_inner']:.3f}")
