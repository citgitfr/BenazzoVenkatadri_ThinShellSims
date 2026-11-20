"""One-off patch (11-17-26, Tara, user-approved): Timoshenko shear term in design_screen.py k_est and in
study.py's beam reference k_beam. Applied once; kept for the record."""
from pathlib import Path
T = Path(r'F:\Tara\BenazzoVenkatadri_ThinShellSims\.claude\orchestrator\tools')


def patch(fn, pairs):
    p = T / fn
    s = p.read_text(encoding='utf-8')
    for a, b in pairs:
        assert s.count(a) == 1, (fn, s.count(a), a[:80])
        s = s.replace(a, b)
    p.write_text(s, encoding='utf-8')


patch('design_screen.py', [
    ("""    k_est            = 3 EI / L^3 (cantilever tip stiffness) in the requirement's direction.
""", """    k_est            = cantilever tip stiffness in the requirement's direction, Timoshenko (11-17-26, Tara,
                       user-approved): 1 / (L^3 / (3 EI) + L / kGA), kGA = A66 * sum(m l (d/ds)^2) over the
                       walls (m = 2 on webs/tabs; d/ds = dz/ds for a load along z, dy/ds along y). Thin-wall
                       shear area estimate; on OM M006 [0/0/0] M55J it gave kGA 51.4e3 N vs FE 42.7e3 N
                       (shear 39% of the tip deflection, Euler-Bernoulli alone 3 EI / L^3 was 1.7x the FE).
"""),
    ("""        geo['tors'] = torsion_geometry(parts)
""", """        geo['tors'] = torsion_geometry(parts)
        geo['shear'] = shear_geometry(parts)
"""),
    ("""def torsion_geometry(parts):""", """def shear_geometry(parts):
    \"\"\"Thin-wall shear-area factors (laminate-independent): sum m l (dz/ds)^2 (load along z) and
    sum m l (dy/ds)^2 (along y); m = 2 on webs/tabs (doubled laminate). kGA = A66 x factor.\"\"\"
    out = dict(z=0.0, y=0.0)
    for P, m in parts:
        d = np.diff(P, axis=0)
        ln = np.hypot(d[:, 0], d[:, 1])
        ok = ln > 0
        out['z'] += float(m * np.sum(d[ok, 1]**2 / ln[ok]))
        out['y'] += float(m * np.sum(d[ok, 0]**2 / ln[ok]))
    return out


def tip_stiffness(EI, kGA, L):
    \"\"\"Timoshenko cantilever tip stiffness [N/mm] (kGA None or 0: Euler-Bernoulli).\"\"\"
    return 1.0 / (L**3 / (3 * EI) + (L / kGA if kGA else 0.0))


def torsion_geometry(parts):"""),
    ("""                k_est = None
                if stiff:
                    EI = EIz if stiff.get('direction', 'z') == 'z' else EIy
                    k_est = 3 * EI / length**3""", """                k_est = None
                kGAz, kGAy = Lm.A66 * geo['shear']['z'], Lm.A66 * geo['shear']['y']
                if stiff:
                    dz = stiff.get('direction', 'z') == 'z'
                    k_est = tip_stiffness(EIz if dz else EIy, kGAz if dz else kGAy, length)"""),
    ("""                                 Ex_MPa=Lm.Ex, EIz_Nmm2=EIz, EIy_Nmm2=EIy, k_est_N_mm=k_est,""",
     """                                 Ex_MPa=Lm.Ex, EIz_Nmm2=EIz, EIy_Nmm2=EIy, kGAz_N=kGAz, kGAy_N=kGAy,
                                 k_est_N_mm=k_est,"""),
])

patch('study.py', [
    ("""(design_screen.py) and study.py calibrates the twist estimate with the FE (calib "t").
""", """(design_screen.py) and study.py calibrates the twist estimate with the FE (calib "t").
Shear (added 11-17-26, Tara, user-approved): the beam reference k_beam of record (and the screen's k_est) is the
Timoshenko tip stiffness 1 / (L^3 / (3 EI) + L / kGA), kGA = A66 * sum(m l (d/ds)^2) from the screen (columns
kGAz_N, kGAy_N); designs chosen before this change (no kGA) keep Euler-Bernoulli 3 EI / L^3.
"""),
    ("""                  GJ_est=_num(row.get('GJ_est_Nmm2')), twist_est=_num(row.get('twist_est_deg')))""",
     """                  GJ_est=_num(row.get('GJ_est_Nmm2')), twist_est=_num(row.get('twist_est_deg')),
                  kGAz=_num(row.get('kGAz_N')), kGAy=_num(row.get('kGAy_N')))"""),
    ("""    EI = d['EIz'] if dirn == 'z' else d['EIy']
    k_beam = 3 * EI / d['L']**3
    k_ratio = k_fe / k_beam if k_fe else None""", """    EI = d['EIz'] if dirn == 'z' else d['EIy']
    kGA = d.get('kGAz') if dirn == 'z' else d.get('kGAy')
    k_beam = 1.0 / (d['L']**3 / (3 * EI) + (d['L'] / kGA if kGA else 0.0))   # Timoshenko when kGA is known
    k_ratio = k_fe / k_beam if k_fe else None"""),
    ("""        sanity.append(f'tip stiffness {100 * (k_ratio - 1):+.1f}% from thin-walled beam theory (tolerance '""",
     """        sanity.append(f'tip stiffness {100 * (k_ratio - 1):+.1f}% from thin-walled beam theory '
                      f'({"Timoshenko" if kGA else "Euler-Bernoulli"}; tolerance '"""),
])
print('ok')
