"""
CTM (collapsible tubular mast / omega boom) materials and laminates, 11/10/26 (Tara).

Stiffness: Leclerc & Pellegrino (2020) Table 1
    CF   (T800 / NTPT ThinPreg 120EPHTg-402, UD):  E1 128 GPa, E2 6.5 GPa, G12 7.6 GPa, nu12 0.35, t 30 um
    GFPW (JPS 1067 E-glass plain weave / PMT-F4): E1 = E2 23.8 GPa,      G12 3.3 GPa, nu12 0.17, t 25 um
Layups: Palmeri & Laurenzi (2024)
    shell  [+-45 GFPW / 0 CF / +-45 GFPW]                                  (h = 0.080 mm)
    web    [+-45 GFPW / 0 CF / (+-45 GFPW)3 / 0 CF / +-45 GFPW]            (h = 0.185 mm, 7 plies:
           two shells bonded with one extra +-45 GFPW ply)
Strengths (stand-ins, user decision 11/10/26; Table 1 gives none):
    CF   <- catalog L023 (T800 / ThinPreg 402; all strengths are catalog * estimates)
    GFPW <- catalog L035 (UD E-glass/epoxy, closest glass/epoxy row). A UD transverse strength used for the
            weft direction of a balanced weave is conservative.

Two equivalent representations of a +-45 GFPW ply are written:
  'literal'    : the fabric at theta = 45 deg (E1 = E2): ASDShellQ4 coincident per-angle elements.
  'equivalent' : the same ply rotated into the boom axes. A square-symmetric (E1 = E2) ply rotated by 45 deg
                 is still orthotropic in x-y (Q16 = Q26 = 0), so it is EXACTLY a 0-deg ply with
                 Ex = Ey = E45, Gxy = G45, nu_xy = nu45. Same A, B, D; allows ShellNLDKGQ (0/90 only) for
                 the buckling eigen-scan and one element per facet. Failure is always evaluated on the
                 literal laminate (fabric axes) from the laminate strains, which are identical.

    python ctm_materials.py            # writes lam_*.json, OpenSeesPy calls, ABD vs Palmeri & Laurenzi
"""
import json
import math
import sys
from pathlib import Path

import numpy as np

HERE = Path(__file__).resolve().parent
REPO = HERE.parents[1]
sys.path.insert(0, str(REPO / '.claude' / 'skills' / 'laminate-properties'))
import laminate_properties as lp  # noqa: E402

# Leclerc & Pellegrino (2020) Table 1 [MPa, mm]
CF_T1 = dict(E1=128000.0, E2=6500.0, G12=7600.0, nu12=0.35, t=0.030)
GF_T1 = dict(E1=23800.0, E2=23800.0, G12=3300.0, nu12=0.17, t=0.025)
# strengths [MPa]: catalog rows (readable units), stand-ins
CF_STR = dict(Xt=2598.0, Xc=1537.0, Yt=60.8, Yc=216.0, S=68.9, src='L023')
GF_STR = dict(Xt=765.92, Xc=482.89, Yt=58.29, Yc=114.16, S=34.24, src='L035')
# densities [t/mm^3] (only for reporting mass): L023 1560 kg/m3; E-glass/epoxy prepreg ~1900 kg/m3 (L035 1910*)
RHO_CF, RHO_GF = 1.56e-9, 1.91e-9

# Palmeri & Laurenzi (2024) Eqs. (5)-(8) (= Leclerc & Pellegrino 2020 Eqs. (2)-(5), experimentally corrected)
A_PL = np.array([[5432, 619, 0], [619, 942, 0], [0, 0, 737]], float)
D_PL = np.array([[1.076, 0.482, 0], [0.482, 0.781, 0], [0, 0, 0.459]], float)
AW_PL = np.array([[11369, 1512, 0], [1512, 2269, 0], [0, 0, 1727]], float)
DW_PL = np.array([[28.20, 4.32, 0], [4.32, 7.44, 0], [0, 0, 4.93]], float)


def ply(c, s, name, rho):
    p = lp.ply_properties(c['E1'], c['E2'], c['nu12'], c['G12'], None, rho)
    p.update({k: s[k] for k in ('Xt', 'Xc', 'Yt', 'Yc', 'S')}, name=name, t_ply=c['t'])
    return p


def gf45_equivalent():
    """+-45 GFPW ply expressed in the boom axes (exact, see module doc)."""
    E, G, nu = GF_T1['E1'], GF_T1['G12'], GF_T1['nu12']
    c = s = math.sqrt(0.5)
    # closed forms (Jones, Mechanics of Composite Materials, off-axis engineering constants)
    Ex = 1 / (c**4 / E + (1 / G - 2 * nu / E) * c * c * s * s + s**4 / E)
    nuxy = Ex * (nu / E * (s**4 + c**4) - (1 / E + 1 / E - 1 / G) * s * s * c * c)
    Gxy = 1 / (2 * (2 / E + 2 / E + 4 * nu / E - 1 / G) * s * s * c * c + (s**4 + c**4) / G)
    return dict(E1=Ex, E2=Ex, G12=Gxy, nu12=nuxy, t=GF_T1['t'])


def laminates():
    cf, gf = ply(CF_T1, CF_STR, 'CF T800/ThinPreg402 (L&P 2020 T1)', RHO_CF), \
        ply(GF_T1, GF_STR, 'GFPW 1067/PMT-F4 (L&P 2020 T1)', RHO_GF)
    q = gf45_equivalent()
    ge = lp.ply_properties(q['E1'], q['E2'], q['nu12'], q['G12'], None, RHO_GF)
    ge.update(name='GFPW at +-45 in boom axes (equivalent 0-deg ply)', t_ply=q['t'])
    tg, tc = GF_T1['t'], CF_T1['t']
    # literal: materials [CF, GF]; GF plies at 45 deg
    shell_lit = lp.Laminate([cf, gf], [dict(theta=45, t=tg, mat=1), dict(theta=0, t=tc, mat=0),
                                       dict(theta=45, t=tg, mat=1)], name='[45GFPW/0CF/45GFPW] literal', n_sub=10)
    web_lit = lp.Laminate([cf, gf], [dict(theta=45, t=tg, mat=1), dict(theta=0, t=tc, mat=0)] +
                          [dict(theta=45, t=tg, mat=1)] * 3 + [dict(theta=0, t=tc, mat=0), dict(theta=45, t=tg, mat=1)],
                          name='[45GFPW/0CF/(45GFPW)3/0CF/45GFPW] literal', n_sub=4)
    # equivalent: materials [CF, GF45eq], all plies 0 deg
    shell_eq = lp.Laminate([cf, ge], [dict(theta=0, t=tg, mat=1), dict(theta=0, t=tc, mat=0),
                                      dict(theta=0, t=tg, mat=1)], name='[45GFPW/0CF/45GFPW] equivalent 0-deg', n_sub=10)
    web_eq = lp.Laminate([cf, ge], [dict(theta=0, t=tg, mat=1), dict(theta=0, t=tc, mat=0)] +
                         [dict(theta=0, t=tg, mat=1)] * 3 + [dict(theta=0, t=tc, mat=0), dict(theta=0, t=tg, mat=1)],
                         name='[45GFPW/0CF/(45GFPW)3/0CF/45GFPW] equivalent 0-deg', n_sub=4)
    return dict(shell_lit=shell_lit, web_lit=web_lit, shell_eq=shell_eq, web_eq=web_eq), q


def pct(M, ref):
    out = np.full(M.shape, np.nan)
    nz = np.abs(ref) > 0
    out[nz] = 100 * (M[nz] - ref[nz]) / ref[nz]
    return out


def main():
    lams, q = laminates()
    out = HERE / 'laminates'
    out.mkdir(exist_ok=True)
    print(f'+-45 GFPW in boom axes: Ex = Ey = {q["E1"]:.1f} MPa, Gxy = {q["G12"]:.1f} MPa, nu_xy = {q["nu12"]:.4f}')
    rep = {}
    for k, lam in lams.items():
        lam.save(out / f'lam_{k}.json')
        lam.write_opensees_calls(out / f'calls_{k}.py')
        K = lam.abd()
        Km = lam.measure_abd()
        rep[k] = dict(clt=K.tolist(), opensees=Km.tolist(), h=lam.h, areal_mass=lam.areal_mass())
        print(f'\n{lam.name}: h = {lam.h:.3f} mm')
        lp.print_abd(K, 'CLT ABD')
        lp.print_abd(Km, 'OpenSees-measured ABD')
    for k, A, D in (('shell', A_PL, D_PL), ('web', AW_PL, DW_PL)):
        for v in ('lit', 'eq'):
            K = np.array(rep[f'{k}_{v}']['opensees'])
            print(f'\n{k} ({v}) OpenSees vs Palmeri & Laurenzi: A % err\n{np.round(pct(K[:3, :3], A), 2)}'
                  f'\nD % err\n{np.round(pct(K[3:, 3:], D), 2)}')
    (out / 'abd_report.json').write_text(json.dumps(rep, indent=1))


if __name__ == '__main__':
    main()
