"""
Reverse-engineer ply constants whose laminate ABD (as OpenSees integrates it) matches Palmeri & Laurenzi (2024)
Eqs. (5)-(8), starting from Leclerc & Pellegrino (2020) Table 1. 11/10/26 (Tara; user request).

Unknowns per laminate (shell and web fitted separately, because P&L's matrices were corrected differently
for membrane and bending and for the two laminates):
  CF (UD, 0 deg):            E1, E2, nu12, G12
  GFPW (plain weave, +-45):  E (= E1 = E2, balanced weave), nu12, G12
Ply thicknesses stay at Table 1 (GF 25 um, CF 30 um): they set the shell geometry.
Targets: A11, A12, A22, A66, D11, D12, D22, D66 (8 per laminate; 7 unknowns): weighted least squares on the
relative errors. D is computed as OpenSees does (mid-plane integration of n_sub layers per ply), so the
OpenSees ABD is what matches the paper.

Variant 'free GF' (8 unknowns, exact): the +-45 GF ply as a general orthotropic ply in the boom axes
(Ex != Ey allowed) -- reported for information only; it is not a balanced weave.

    python ctm_fit_plies.py          # prints the fit and writes laminates/lam_*_PL.json
"""
import json
import math
import sys
from pathlib import Path

import numpy as np
from scipy.optimize import least_squares

HERE = Path(__file__).resolve().parent
sys.path.insert(0, str(HERE))
import ctm_materials as cm  # noqa: E402
lp = cm.lp

TG, TC = cm.GF_T1['t'], cm.CF_T1['t']
SHELL = [('G', 45), ('C', 0), ('G', 45)]
WEB = [('G', 45), ('C', 0), ('G', 45), ('G', 45), ('G', 45), ('C', 0), ('G', 45)]
N_SUB = dict(shell=10, web=4)


def Q_of(E1, E2, nu12, G12):
    nu21 = nu12 * E2 / E1
    d = 1 - nu12 * nu21
    return np.array([[E1 / d, nu12 * E2 / d, 0], [nu12 * E2 / d, E2 / d, 0], [0, 0, G12]])


def Qbar(Q, th):
    c, s = math.cos(math.radians(th)), math.sin(math.radians(th))
    T = np.array([[c * c, s * s, 2 * c * s], [s * s, c * c, -2 * c * s], [-c * s, c * s, c * c - s * s]])
    R = np.diag([1, 1, 2.0])
    Ti = np.linalg.inv(T)
    return Ti @ Q @ R @ T @ np.linalg.inv(R)


def abd_mid(stack, QG, QC, n_sub):
    """A, D with mid-plane integration of n_sub layers per ply (= OpenSees LayeredShell)."""
    t = [TG if m == 'G' else TC for m, _ in stack]
    z = -sum(t) / 2
    A, D = np.zeros((3, 3)), np.zeros((3, 3))
    for (m, th), tk in zip(stack, t):
        Qb = Qbar(QG if m == 'G' else QC, th)
        dz = tk / n_sub
        for k in range(n_sub):
            zm = z + (k + 0.5) * dz
            A += Qb * dz
            D += Qb * dz * zm * zm
        z += tk
    return A, D


def params_to_Q(p):
    E1c, E2c, nuc, Gc, Eg, nug, Gg = p
    return Q_of(Eg, Eg, nug, Gg), Q_of(E1c, E2c, nuc, Gc)


IDX = [(0, 0), (0, 1), (1, 1), (2, 2)]


def residual(p, stack, A0, D0, n_sub):
    QG, QC = params_to_Q(p)
    A, D = abd_mid(stack, QG, QC, n_sub)
    return np.array([(A[i] - A0[i]) / A0[i] for i in IDX] + [(D[i] - D0[i]) / D0[i] for i in IDX])


def fit(name, stack, A0, D0):
    p0 = np.array([cm.CF_T1['E1'], cm.CF_T1['E2'], cm.CF_T1['nu12'], cm.CF_T1['G12'],
                   cm.GF_T1['E1'], cm.GF_T1['nu12'], cm.GF_T1['G12']])
    lo = p0 * np.array([0.5, 0.3, 0.3, 0.3, 0.5, 0.2, 0.3])
    hi = p0 * np.array([2.0, 3.0, 1.5, 3.0, 2.0, 2.9, 3.0])
    # also keep nu within physical limits: nu12 < sqrt(E1/E2)
    r = least_squares(residual, p0, bounds=(lo, hi), args=(stack, A0, D0, N_SUB[name]), x_scale=p0,
                      xtol=1e-14, ftol=1e-14, gtol=1e-14)
    QG, QC = params_to_Q(r.x)
    A, D = abd_mid(stack, QG, QC, N_SUB[name])
    return r.x, A, D, r


def pct(M, ref):
    return np.where(np.abs(ref) > 0, 100 * (M - ref) / np.where(ref == 0, 1, ref), np.nan)


def exact_equivalent(name, h, A0, D0, n_sub=10, core=None):
    """Two fictitious orthotropic materials, core |z| < a and skins a < |z| < h/2, all at 0 deg, whose ABD
    integrated as OpenSees does (n_sub mid-plane layers per ply) equals (A0, B = 0, D0) exactly. The core
    fraction 2a/h is the middle of the range where both materials are positive definite. User decision
    11/10/26: replicate P&L's ABD exactly (they defined the shells by A and D in Abaqus); the layers are not
    plies, so ply failure is evaluated on the best-fit physical plies (lam_*_fitplies.json)."""
    def solve(frac):
        a = frac * h / 2
        ts = (h - 2 * a) / 2
        stack = [('S', ts), ('C', 2 * a), ('S', ts)]
        I = {}
        for key in ('S', 'C'):
            A_, D_, z = 0.0, 0.0, -h / 2
            for m, t in stack:
                dz = t / n_sub
                for k in range(n_sub):
                    zm = z + (k + 0.5) * dz
                    if m == key:
                        A_ += dz
                        D_ += dz * zm * zm
                z += t
            I[key] = (A_, D_)
        Qs, Qc = np.zeros((3, 3)), np.zeros((3, 3))
        for i in IDX:
            x = np.linalg.solve([[I['C'][0], I['S'][0]], [I['C'][1], I['S'][1]]], [A0[i], D0[i]])
            Qc[i] = Qc[i[::-1]] = x[0]
            Qs[i] = Qs[i[::-1]] = x[1]
        ok = np.all(np.linalg.eigvalsh(Qc) > 0) and np.all(np.linalg.eigvalsh(Qs) > 0)
        return ok, Qs, Qc, ts, 2 * a
    fr = np.linspace(0.02, 0.98, 481)
    okf = [f for f in fr if solve(f)[0]]
    frac = core or 0.5 * (min(okf) + max(okf))
    ok, Qs, Qc, ts, tc = solve(frac)
    assert ok

    def mat(Q, label):
        S = np.linalg.inv(Q)
        E1, E2, nu12, G12 = 1 / S[0, 0], 1 / S[1, 1], -S[0, 1] / S[0, 0], 1 / S[2, 2]
        p = lp.ply_properties(E1, E2, nu12, G12, 0.3, 0.0)   # nu23 (not in the ABD) set for 3D admissibility
        p.update(name=f'{label} (fictitious layer, exact P&L {name} ABD)', t_ply=None)
        return p
    lam = lp.Laminate([mat(Qs, 'skin'), mat(Qc, 'core')], [dict(theta=0, t=ts, mat=0), dict(theta=0, t=tc, mat=1),
                                                          dict(theta=0, t=ts, mat=0)],
                      n_sub=n_sub, name=f'P&L {name} ABD exact (skin/core/skin, core {100 * frac:.1f}% of h)')
    return lam, frac, (min(okf), max(okf))


def fitted_physical(name, stack, x):
    """Best-fit physical laminate (fabric at 45 deg, UD CF at 0 deg) with the stand-in strengths."""
    E1c, E2c, nuc, Gc, Eg, nug, Gg = x
    cf = lp.ply_properties(E1c, E2c, nuc, Gc, None, cm.RHO_CF)
    cf.update({k: cm.CF_STR[k] for k in ('Xt', 'Xc', 'Yt', 'Yc', 'S')}, name=f'CF fitted to P&L {name}', t_ply=TC)
    gf = lp.ply_properties(Eg, Eg, nug, Gg, None, cm.RHO_GF)
    gf.update({k: cm.GF_STR[k] for k in ('Xt', 'Xc', 'Yt', 'Yc', 'S')}, name=f'GFPW fitted to P&L {name}', t_ply=TG)
    return lp.Laminate([cf, gf], [dict(theta=th, t=TG if m == 'G' else TC, mat=1 if m == 'G' else 0) for m, th in stack],
                       n_sub=N_SUB[name], name=f'{name} best-fit plies ' + '/'.join(f'{th}{m}' for m, th in stack))


def main():
    names =('E1_CF', 'E2_CF', 'nu12_CF', 'G12_CF', 'E_GF (=E1=E2)', 'nu12_GF', 'G12_GF')
    p0 = [cm.CF_T1['E1'], cm.CF_T1['E2'], cm.CF_T1['nu12'], cm.CF_T1['G12'], cm.GF_T1['E1'], cm.GF_T1['nu12'],
          cm.GF_T1['G12']]
    out = {}
    for name, stack, A0, D0 in (('shell', SHELL, cm.A_PL, cm.D_PL), ('web', WEB, cm.AW_PL, cm.DW_PL)):
        x, A, D, r = fit(name, stack, A0, D0)
        out[name] = dict(zip(names, map(float, x)))
        print(f'\n=== {name}: least squares on 8 relative ABD errors, 7 ply constants ===')
        print(f'{"constant":<16}{"L&P Table 1":>14}{"fitted":>14}{"change %":>10}')
        for n, a, b in zip(names, p0, x):
            print(f'{n:<16}{a:>14.5g}{b:>14.5g}{100 * (b / a - 1):>10.2f}')
        print('A [N/mm] fitted (OpenSees integration):\n', np.round(A, 2), '\n% vs P&L:\n', np.round(pct(A, A0), 3))
        print('D [N mm] fitted:\n', np.round(D, 4), '\n% vs P&L:\n', np.round(pct(D, D0), 3))
        print('max |error| %:', np.round(100 * np.abs(r.fun).max(), 3))
        phys = fitted_physical(name, stack, x)
        phys.save(HERE / 'laminates' / f'lam_{name}_fitplies.json')
        h = sum(TG if m == 'G' else TC for m, _ in stack)
        ex, frac, rng = exact_equivalent(name, h, A0, D0)
        ex.save(HERE / 'laminates' / f'lam_{name}_exactPL.json')
        Km = ex.measure_abd()
        print(f'exact equivalent: core fraction {frac:.3f} (positive definite for {rng[0]:.3f}..{rng[1]:.3f}); '
              f'layers {[(m["name"].split(" (")[0], round(m["E1"], 1), round(m["E2"], 1), round(m["nu12"], 4), round(m["G12"], 1)) for m in ex.materials]}')
        print('OpenSees-measured ABD of the exact laminate, % vs P&L: A', np.round(pct(Km[:3, :3], A0), 6).tolist(),
              ' D', np.round(pct(Km[3:, 3:], D0), 6).tolist(), f' max|B| {np.abs(Km[:3, 3:]).max():.1e}')
        Kc = ex.abd()
        print('  (exact through-thickness integral, as Abaqus composite integrates: D % vs P&L',
              np.round(pct(Kc[3:, 3:], D0), 3).tolist(), ')')
        out[name + '_exact'] = dict(core_fraction=frac, feasible=rng)
    (HERE / 'laminates' / 'fit_PL.json').write_text(json.dumps(out, indent=1))


if __name__ == '__main__':
    main()
