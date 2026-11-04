"""Coilable boom cross-sections for the catalog (edit here, then run make_boom_catalog.py).

Each entry: id, type (TS | TRAC | OM | CO), A and B = lists of (R [mm], theta [deg]) with the sign
conventions of make_boom_catalog.py, w [mm], origin (literature | derived | designed), source, note.
"""
from boom_geometry import omega, corrugated, match, tangent

# --- tape springs ------------------------------------------------------------------------------------
DEWALQUE = "https://doi.org/10.1016/j.actaastro.2016.03.029"
SEFFEN19 = "https://doi.org/10.1016/j.jmps.2018.09.017"
NOMURA = "https://arxiv.org/abs/2607.14594"
LIU23 = "https://doi.org/10.1016/j.compstruct.2023.117178 ; https://arxiv.org/abs/2305.05289"
TAPE_SPRINGS = [
    dict(id="T001", A=[(20, 90)], origin="literature", source=DEWALQUE,
         note="Dewalque, Collette & Bruls 2016 Sec. 5.1, BeCu t 0.1-0.25 mm (same geometry as Seffen & Pellegrino 1997, not seen)."),
    dict(id="T002", A=[(10, 60)], origin="literature", source=DEWALQUE + " ; " + SEFFEN19,
         note="Dewalque et al. 2016 Tables 3/5 optimised BeCu tape, t 0.08 mm; also Seffen, Wang & Guest 2019 Fig. 7 (t 0.2 mm)."),
    dict(id="T003", A=[(15.79, 60)], origin="literature", source=DEWALQUE,
         note="Dewalque et al. 2016 Table 3, minimum-stress optimum for equal-sense bending, BeCu t 0.08 mm."),
    dict(id="T004", A=[(19, 75.4)], origin="derived", source="https://doi.org/10.2514/1.47321",
         note="Mallikarachchi & Pellegrino 2011 tape-spring hinge: 38 mm inner diameter tube, 25 mm wide tapes; "
              "theta = 25/19 rad (width taken as arc length, inner radius). Two-ply +-45 T300/HexPly 913, t 0.2 mm."),
    dict(id="T005", A=[(19, 150)], origin="literature", source="https://doi.org/10.2514/6.2011-2022",
         note="Kwok & Pellegrino 2011, viscoelastic LDPE tape spring, t 0.73 mm (inner radius)."),
    dict(id="T006", A=[(12.5, 180)], origin="literature", source=SEFFEN19,
         note="Seffen, Wang & Guest 2019 Sec. 2, woven glass/PP +-45 tape, t 0.65 mm."),
    dict(id="T007", A=[(10, 90)], origin="literature", source=SEFFEN19,
         note="Seffen, Wang & Guest 2019 Figs. 2c and 5 (FE), t 0.2 mm, E 131 GPa."),
    dict(id="T008", A=[(5.56, 180)], origin="literature", source="https://ntrs.nasa.gov/citations/20150004083",
         note="Footdale & Murphey 2014: open semicircle on a 7/16 in mandrel, thin FRP, rollable (root trimmed to 0.86 rad)."),
    dict(id="T009", A=[(11.0, 76.9)], origin="literature", source="https://doi.org/10.2514/6.2012-1915",
         note="Lyle & Horta (NASA LaRC) 2012 selected CuBe design, t 0.1069 mm (design space R 10-15 mm, theta 45-87.5 deg)."),
    dict(id="T010", A=[(6.25, 97.2)], origin="derived", source=NOMURA,
         note="Nomura et al. 2026 Sec. 5.2.2: R 6.25 (inner), width 10.6 mm along the arc -> theta; polyester, t 0.1 mm."),
    dict(id="T011", A=[(9.02, 95.3)], origin="derived", source=NOMURA,
         note="Nomura et al. 2026: R 9.02 (inner), width 15.0 mm -> theta; polyester, t 0.076 mm."),
    dict(id="T012", A=[(9.57, 110.8)], origin="derived", source=NOMURA,
         note="Nomura et al. 2026: R 9.57 (inner), width 18.5 mm -> theta; polyester, t 0.1 mm."),
    dict(id="T013", A=[(16.6, 131.8)], origin="literature", source="https://authors.library.caltech.edu/records/znww4-fsn43",
         note="Brinkmeyer, Pellegrino, Weaver & Santer ICCM19 2013 Fig. 2: bistable T800H ThinPly tape, "
              "[45/-45/0/45/-45] ~0.155 mm, coiled radius 20.8 mm."),
    dict(id="T014", A=[(20, 229)], origin="literature", source=LIU23,
         note="Liu, Bai et al. 2023 Table 2 specimens 1-3, antisymmetric CFRP C-section (theta > 180 deg)."),
    dict(id="T015", A=[(27.5, 167)], origin="literature", source=LIU23,
         note="Liu, Bai et al. 2023 Table 2 specimens 4-5, CFRP."),
    dict(id="T016", A=[(30, 191)], origin="literature", source=LIU23,
         note="Liu, Bai et al. 2023 Table 2 specimen 6, CFRP C-section (theta > 180 deg)."),
]

# --- TRAC ----------------------------------------------------------------------------------------------
LECLERC17 = "https://doi.org/10.2514/6.2017-0172"
LECLERC_IASS = "https://www.its.caltech.edu/~sslab/PUBLICATIONS/LECLERC_Ultra_Thin_Composite_Deployable_Booms_Full.pdf"
TRAC = [
    dict(id="R001", A=[(12.5, 90)], w=8, origin="literature", source=LECLERC17 + " ; https://doi.org/10.2514/6.2018-0690",
         note="Leclerc, Wilson, Bessa & Pellegrino 2017, nominal (mould) geometry, T800/ThinPreg [0/90]s, L 540 mm."),
    dict(id="R002", A=[(10.6, 105)], w=8, origin="literature", source=LECLERC_IASS + " ; " + LECLERC17,
         note="Leclerc & Pellegrino IASS 2017 Table 1 TRAC1: as-built after spring-in from a 12.7 mm mould."),
    dict(id="R003", A=[(10.6, 180)], w=8, origin="literature", source=LECLERC_IASS,
         note="Leclerc & Pellegrino IASS 2017 Table 1 TRAC2, large-angle variant."),
    dict(id="R004", A=[(10.6, 105)], w=4, origin="literature", source=LECLERC_IASS,
         note="Leclerc & Pellegrino IASS 2017 Table 1 TRAC3, narrow web (bistable in torsion)."),
    dict(id="R005", A=[(12.7, 90)], w=8, origin="literature", source="https://doi.org/10.1016/j.ijsolstr.2020.06.042",
         note="Leclerc & Pellegrino IJSS 2020 Table 2, nominal; FlexLam [+-45 GFPW/0 CF/+-45 GFPW], L 575 mm."),
    dict(id="R006", A=[(11.5, 95.7)], w=8, origin="literature", source="https://doi.org/10.1016/j.ijsolstr.2020.06.042",
         note="Leclerc & Pellegrino IJSS 2020 Table 2, measured sample 3 (flanges assumed identical; table "
              "columns were scrambled in extraction, check sample order)."),
    dict(id="R007", A=[(12.4, 90)], w=8, origin="literature", source="https://doi.org/10.2514/1.A35172 ; https://doi.org/10.2514/6.2021-0299",
         note="Pedivellano & Pellegrino, Caltech SSPP strip longerons, nominal."),
    dict(id="R008", A=[(12.4, 97)], w=8, origin="literature", source="https://doi.org/10.2514/6.2020-0692",
         note="Gdoutos et al. SciTech 2020, SSPP longerons as built (average angle)."),
    dict(id="R009", A=[(12.2, 100)], w=8, origin="literature", source="https://doi.org/10.2514/1.J060820 ; https://doi.org/10.2514/6.2020-1437",
         note="Royer & Pellegrino, ladder-type coilable structure longerons, t 98 um."),
    dict(id="R010", A=[(12.8, 105)], w=8, origin="literature", source="https://doi.org/10.21741/9781644902813-79",
         note="Augello, Carrera, Pagani & Pellegrino 2023, 1D model of the TRAC longeron, L 400 mm."),
    dict(id="R011", A=[(13.6, 90)], w=8, origin="literature",
         source="Benazzo & Pellegrino, AIAA SciTech 2025 (local copy .claude/memory.material_property_catalog/AIAA_SciTech_2025_paper.pdf)",
         note="Ultra-thin CF/PEEK TRAC longeron (w and theta from Leclerc, r = 13.6 mm), Sec. II.C."),
    dict(id="R012", A=[(25.4, 88)], w=6, origin="literature", source="https://ntrs.nasa.gov/citations/20170001569 ; https://ntrs.nasa.gov/citations/20190000447",
         note="Fernandez 2017 NEA Scout-size ultra-thin TRAC (2-inch mandrel), h = w + R theta = 45 mm; also Lee & Fernandez Bi-TRAC."),
    dict(id="R013", A=[(37.24, 60)], w=6, origin="derived", source="https://ntrs.nasa.gov/citations/20190000447",
         note="Lee & Fernandez parametric sweep at fixed h = 45 mm (R = 39 mm / theta); theta = 60 deg member."),
    dict(id="R014", A=[(78.2, 80.9)], w=17, origin="literature", source="https://ntrs.nasa.gov/citations/20240009041 ; https://ntrs.nasa.gov/citations/20220017221",
         note="NASA Solar Cruiser 30 m TRAC boom (Kosztowny et al. 2024 Table 1), h = 127 mm, t 0.252 mm."),
    dict(id="R015", A=[(10, 60)], w=5, origin="literature", source="https://doi.org/10.1016/j.compositesb.2026.113647",
         note="Zhang et al. 2026 (HSC + shape-memory composite TRAC); the paper's 'opening angle' may not be the arc angle."),
    # asymmetric, designed: B flange radius chosen, angle set so that s_B = s_A
    dict(id="R016", A=[(12.7, 90)], B=[(10.0, 114.3)], w=8, origin="designed", source="this project",
         note="Asymmetric variant of R005: flange B tighter (R 10) with the same arc length 19.95 mm."),
    dict(id="R017", A=[(13.6, 90)], B=[(17.0, 72.0)], w=8, origin="designed", source="this project",
         note="Asymmetric variant of R011: flange B flatter (R 17) with the same arc length 21.36 mm."),
    dict(id="R018", A=[(25.4, 88)], B=[(20.0, 111.76)], w=6, origin="designed", source="this project",
         note="Asymmetric variant of R012: flange B R 20 with the same arc length 39.01 mm."),
    dict(id="R019", A=[(10.6, 180)], B=[(16.0, 119.25)], w=8, origin="designed", source="this project",
         note="Asymmetric variant of R003: one closed-up flange (180 deg) and one R 16 flange, same arc length 33.30 mm."),
]

# --- omega / lenticular (closed) ---------------------------------------------------------------------
LIU22 = "https://doi.org/10.1080/15376494.2022.2053766"
CTM18 = "https://ntrs.nasa.gov/citations/20190033365 ; https://doi.org/10.1016/j.compstruct.2019.111166"
LIU_NOTE = ("Liu et al. 2022 {}: concave r1 = {}, convex r2 = {}, web a = {} mm; transition angle u from the paper's "
            "Eq. (1) cos u = r2/(r1 + r2), convex arc 2u (angles derived). Shells identical.")


def liu(i, r1, r2, a, what):
    import math
    u = math.degrees(math.acos(r2 / (r1 + r2)))
    s = [(r1, -round(u, 2)), (r2, round(2 * u, 2)), (r1, -round(u, 2))]
    return dict(id=i, A=s, B=s, w=a, origin="derived", source=LIU22 + (" ; https://doi.org/10.1016/j.actaastro.2019.02.014" if "test" in what else ""),
                note=LIU_NOTE.format(what, r1, r2, a))


_ctm130 = omega(12, 90, 26.5)
OMEGA = [
    liu("M001", 34, 34, 10, "Table 3 test sample (Bai et al. 2019 boom), T700/epoxy 0.4 mm"),
    liu("M002", 20.02, 22.55, 5.01, "Table 6 Pareto design 1"),
    liu("M003", 33.35, 20.63, 5.59, "Table 6 Pareto design 4"),
    liu("M004", 35.42, 35.03, 5.20, "Table 6 Pareto design 7"),
    liu("M005", 37.61, 47.58, 5.19, "Table 6 Pareto design 12"),
    liu("M006", 48.08, 30.94, 5.32, "Table 6 Pareto design 22"),
    dict(id="M007", A=omega(8.67, 90, 23.16), B=omega(8.67, 90, 23.16), w=5, origin="literature", source=CTM18,
         note="NASA CTM, flattened height h = 110 mm, alpha = 90 deg (Fernandez & Lee 2018 Sec. 4.1 cases 1/3)."),
    dict(id="M008", A=_ctm130, B=_ctm130, w=4.5, origin="literature",
         source=CTM18 + " ; https://ntrs.nasa.gov/citations/20205010609",
         note="NASA large CTM nominal design, h = 130 mm (16.5 m-class CTM, Stohlman et al. 2021)."),
    dict(id="M009", A=_ctm130, B=omega(26.5, 90, 12), w=4.5, origin="literature", source=CTM18,
         note="NASA Bi-CTM, asymmetric: outer shell as M008, inner shell with transition and central radii swapped "
              "(Fernandez & Lee 2018 Sec. 4.2 cases 4/5)."),
    dict(id="M010", A=omega(8.67, 50, 48.6), B=omega(8.67, 50, 48.6), w=5, origin="literature", source=CTM18,
         note="NASA CTM h = 110 mm, alpha = 50 deg (maximum bistability point, Fernandez & Lee 2018 Sec. 4.1)."),
    dict(id="M011", A=_ctm130, B=omega(57.3, 50, 12), w=4.5, origin="literature", source=CTM18,
         note="NASA Bi-CTM, asymmetric, maximum bistability criterion (inner alpha = 50 deg); free shapes span "
              "different chords, so the bonded boom is prestressed."),
    dict(id="M012", A=omega(9.90, 79.67, 26.79), B=omega(7.75, 87.65, 25.59), w=5, origin="literature", source=CTM18,
         note="NASA Bi-CTM as built, case 1 (mould alpha 85 deg), radii and angles measured by circle fitting (Table 3)."),
    dict(id="M013", A=omega(13.23, 82.88, 28.59), B=omega(26.70, 87.57, 12.88), w=4.5, origin="literature", source=CTM18,
         note="NASA Bi-CTM as built, case 4 (Table 3), measured."),
    dict(id="M014", A=omega(6.98, 80, 6.98), B=omega(6.98, 80, 6.98), w=3, origin="derived",
         source="https://ntrs.nasa.gov/citations/20170001569",
         note="NEA Scout mini-CTM (Fernandez 2017): three equal arcs, h = 45 mm, alpha = 80 deg, w = 3 mm; "
              "r = (h/2 - w)/(2 alpha) derived."),
    dict(id="M015", A=omega(11, 75, 25), B=omega(11, 75, 25), w=8, origin="derived", source="https://doi.org/10.2514/6.2024-0849",
         note="Palmeri, Laurenzi & Pellegrino SciTech 2024 Sec. V/Fig. 4: R 25 central, 11 transition; alpha = 75 deg "
              "and w = 8 derived from the arc-end coordinates (flattened width 110 mm)."),
    dict(id="M016", A=omega(8, 81.2, 13.25), B=omega(8, 81.2, 13.25), w=4, origin="derived", source="https://elib.dlr.de/95684",
         note="DLR DE-ORBIT SAIL boom (Hillebrandt et al. 2014) Fig. 5-1: R 8, web 4, 50 x 36 mm; alpha and central "
              "R derived from the overall dimensions."),
    dict(id="M017", A=omega(15, 90, 15), B=omega(15, 90, 15), w=7, origin="derived", source="https://elib.dlr.de/111629",
         note="DLR Gossamer-1 boom (Zander et al. 2016): alpha = 90 deg, R1 + R2 = 30, w = 7 derived from height 60, "
              "width 74, flattened width 108.25 mm. The split R1 = R2 = 15 is ASSUMED (not given)."),
]
OMEGA += [
    dict(id="M018", A=_ctm130, B=match(lambda u: omega(1.0, u, 1.0), _ctm130, 5, 150), w=4.5, origin="designed",
         source="this project",
         note="Asymmetric: M008 CTM upper shell; lower shell 3-arc omega with equal transition and central radii, "
              "same chord and arc length, tangent to both webs."),
    dict(id="M019", A=OMEGA[3]["A"], B=match(lambda u: omega(0.4, u, 1.0), OMEGA[3]["A"], 20, 89), w=5.2,
         origin="designed", source="this project",
         note="Asymmetric: M004 upper shell; lower shell 3-arc omega with transition/central radius ratio 0.4, "
              "same chord and arc length."),
]

# --- corrugated (closed, > 3 arcs per shell) -----------------------------------------------------------
COROTUB = ("https://ntrs.nasa.gov/citations/20205003429")
COROTUB_NOTE = ("Fernandez & Volle 2021 COROTUB {}: radii, web w and flattened height h from the paper; the arc angles "
                "are RECONSTRUCTED (tangent arcs, convex/concave centres on two circles, total length = h); the paper "
                "gives no angles.")


def corotub(i, arcs, w, what):
    return dict(id=i, A=arcs, B=arcs, w=w, origin="derived", source=COROTUB, note=COROTUB_NOTE.format(what))


C1 = [(12, -111.3), (12, 149.2), (9, -75.9), (12, 149.2), (12, -111.3)]
C3 = [(12, -124.4), (12, 146.9), (9, -92.5), (12, 139.9), (9, -92.5), (12, 146.9), (12, -124.4)]
C4 = [(12, -116.0), (12, 114.2), (9, -68.0), (12, 103.9), (9, -68.0), (12, 103.9), (9, -68.0), (12, 114.2), (12, -116.0)]
C5 = [(12, -128.2), (16, 151.4), (12, -98.9), (16, 151.4), (12, -98.9), (16, 151.4), (12, -128.2)]
CORRUGATED = [
    corotub("C001", C1, 4.5, "Table 3 'Small' (h 130, n = 2)"),
    corotub("C002", [(12, -109.7), (9, 120.4), (9, -64.6), (9, 107.8), (9, -64.6), (9, 120.4), (12, -109.7)], 4.5,
            "Table 3 (h 130, n = 3, r_v = r_c = 9)"),
    corotub("C003", C3, 9, "Table 3 'Medium' (h 190, n = 3)"),
    corotub("C004", C4, 9, "Table 3 (h 190, n = 4)"),
    corotub("C005", C5, 9, "Table 3 'Large' (h 240, n = 3, r_v 16, r_c 12)"),
    corotub("C006", [(12, -124.3), (12, 119.0)] + [(9, -80.4), (12, 110.7)] * 3 + [(9, -80.4), (12, 119.0), (12, -124.3)], 9,
            "Table 3 (h 240, n = 5), also the Sec. IV FE design"),
    corotub("C007", [(12, -131.8), (12, 145.0), (9, -101.5), (12, 139.0), (9, -101.5), (12, 139.0), (9, -101.5),
                     (12, 145.0), (12, -131.8)], 9, "Sec. IV / Figs. 9-12 (h 240, n = 4)"),
    corotub("C008", [(12, -116.2), (12, 90.4)] + [(9, -56.7), (12, 78.3)] * 5 + [(9, -56.7), (12, 90.4), (12, -116.2)], 9,
            "Fig. 2a (h 240, n = 7; inputs partly inferred)"),
]


def five_arc(p):
    """Unit 5-arc corrugated shell tangent to the webs (angles -p, 1.5p, -p, 1.5p, -p)."""
    return [(1.0, -p), (1.0, 1.5 * p), (0.75, -p), (1.0, 1.5 * p), (1.0, -p)]


CORRUGATED += [
    dict(id="C009", A=C1, B=match(lambda u: omega(0.6, u, 1.0), C1, 5, 150), w=4.5, origin="designed",
         source="this project ; https://patents.google.com/patent/US12338002B2/en",
         note="Asymmetric (as in the COROTUB patent): C001 upper shell, 3-arc omega lower shell, same chord and arc length."),
    dict(id="C010", A=C3, B=match(lambda u: omega(0.3, u, 1.0), C3, 5, 150), w=9, origin="designed",
         source="this project ; https://patents.google.com/patent/US12338002B2/en",
         note="Asymmetric (patent: corrugated shell paired with a smooth single-lobe shell): C003 upper, lower 3-arc "
              "omega with transition/central radius ratio 0.3, tangent to both webs."),
    dict(id="C011", A=C5, B=match(five_arc, C5, 10, 150), w=9, origin="designed", source="this project",
         note="Asymmetric: C005 7-arc upper shell, 5-arc lower shell, same chord and arc length."),
    dict(id="C012", A=C4, B=match(five_arc, C4, 10, 150), w=9, origin="designed", source="this project",
         note="Asymmetric: C004 9-arc upper shell, 5-arc lower shell, same chord and arc length."),
    dict(id="C013", A=[(R * 10, t) for R, t in five_arc(60)], B=[(R * 10, t) for R, t in five_arc(60)], w=5,
         origin="designed", source="this project",
         note="Symmetric shallow 5-arc corrugation, radii 10/10/7.5 mm, angles -60/90/-60 (inside the COROTUB ranges: "
              "radii 9-25 mm)."),
]

# --- additions to reach 100 geometries (25 per type) ---------------------------------------------------
LYLE = "https://doi.org/10.2514/6.2012-1915"
TAPE_SPRINGS += [
    dict(id="T017", A=[(8.85, 97.1)], origin="derived", source=NOMURA,
         note="Nomura et al. 2026: R 8.85 (inner), width 15.0 mm -> theta; polyester, t 0.1 mm."),
    dict(id="T018", A=[(10, 45)], origin="derived", source=LYLE,
         note="Lyle & Horta 2012 Table 2 design space, lower corner (R 10 mm, theta 45 deg), CuBe."),
    dict(id="T019", A=[(15, 87.5)], origin="derived", source=LYLE,
         note="Lyle & Horta 2012 Table 2 design space, upper corner (R 15 mm, theta 87.5 deg), CuBe."),
    dict(id="T020", A=[(12.7, 90)], origin="designed", source="this project ; https://doi.org/10.1016/j.ijsolstr.2020.06.042",
         note="One flange of the Leclerc & Pellegrino TRAC (R005) as a stand-alone tape spring."),
    dict(id="T021", A=[(13.6, 90)], origin="designed", source="this project",
         note="One flange of the Benazzo & Pellegrino 2025 TRAC longeron (R011) as a stand-alone tape spring."),
    dict(id="T022", A=[(25.4, 88)], origin="designed", source="this project ; https://ntrs.nasa.gov/citations/20170001569",
         note="One flange of the NEA Scout-size TRAC (R012) as a stand-alone tape spring."),
    dict(id="T023", A=[(50, 100)], origin="designed", source="this project",
         note="Large, wide tape spring (87.3 mm flat width), beyond the published radii."),
    dict(id="T024", A=[(8, 120)], origin="designed", source="this project",
         note="Small, deep tape spring, between T008 (R 5.56, 180 deg) and T010 (R 6.25, 97 deg)."),
    dict(id="T025", A=[(40, 60)], origin="designed", source="this project",
         note="Large, shallow tape spring (41.9 mm flat width)."),
]
TRAC += [
    dict(id="R020", A=[(11.8, 91.3)], w=8, origin="literature", source="https://doi.org/10.1016/j.ijsolstr.2020.06.042",
         note="Leclerc & Pellegrino IJSS 2020 Table 2, measured sample 1 (see R006 caveat on the sample order)."),
    dict(id="R021", A=[(11.9, 88.5)], w=8, origin="literature", source="https://doi.org/10.1016/j.ijsolstr.2020.06.042",
         note="Leclerc & Pellegrino IJSS 2020 Table 2, measured sample 2."),
    dict(id="R022", A=[(10.8, 104)], w=8, origin="derived", source=LECLERC17,
         note="Leclerc et al. 2017 coiling simulation: average measured R 10.8 mm and 104 deg of a tested boom; w = 8 mm "
              "taken from the nominal design (not restated)."),
    dict(id="R023", A=[(49.66, 45)], w=6, origin="derived", source="https://ntrs.nasa.gov/citations/20190000447",
         note="Lee & Fernandez sweep at fixed h = 45 mm, R = 39 mm / theta: theta = 45 deg member (see R013)."),
    dict(id="R024", A=[(29.79, 75)], w=6, origin="derived", source="https://ntrs.nasa.gov/citations/20190000447",
         note="Lee & Fernandez sweep at fixed h = 45 mm: theta = 75 deg member."),
    dict(id="R025", A=[(10.6, 105)], B=[(14.0, 79.5)], w=8, origin="designed", source="this project",
         note="Asymmetric variant of R002: flange B R 14 with the same arc length 19.43 mm."),
]
OMEGA += [
    liu("M020", 24.73, 28.29, 5.01, "Table 6 Pareto design 2"),
    liu("M021", 40.94, 25.33, 5.08, "Table 6 Pareto design 9"),
    liu("M022", 44.08, 37.30, 5.04, "Table 6 Pareto design 17"),
    dict(id="M023", A=omega(10.67, 71.40, 30.25), B=omega(9.30, 77.14, 28.59), w=5, origin="literature", source=CTM18,
         note="NASA Bi-CTM as built, case 3 (Fernandez & Lee 2018 Table 3), measured by circle fitting."),
    dict(id="M024", A=omega(13.32, 83.61, 28.14), B=omega(24.62, 94.59, 12.02), w=4.5, origin="literature", source=CTM18,
         note="NASA Bi-CTM as built, case 5 (Fernandez & Lee 2018 Table 3; Lee & Fernandez 2019 lists the inner alpha "
              "as 95.4 deg), measured."),
    dict(id="M025", A=omega(6.98, 80, 6.98), B=match(lambda u: omega(0.5, u, 1.0), omega(6.98, 80, 6.98), 5, 150), w=3,
         origin="designed", source="this project",
         note="Asymmetric: M014 NEA Scout mini-CTM upper shell; lower 3-arc omega with transition/central radius "
              "ratio 0.5, same chord and arc length."),
]
_C15 = corrugated(3, 12, 12, 9, 90, 110)
_C17 = corrugated(4, 12, 10, 9, 80, 100)
_C18 = corrugated(5, 10, 9, 9, 70, 90)
_C20 = corrugated(3, 15, 20, 15, 60, 80)
_DESIGN = "COROTUB-type shell designed within the published ranges (radii 9-25 mm, w 4.5-9 mm, 2-7 lobes): "
CORRUGATED += [
    dict(id="C014", A=corrugated(2, 12, 12, 9, 90, 120), B=corrugated(2, 12, 12, 9, 90, 120), w=4.5, origin="designed",
         source="this project ; " + COROTUB, note=_DESIGN + "2 lobes, radii 12/12/9, web arcs 90 deg, lobes 120 deg."),
    dict(id="C015", A=_C15, B=_C15, w=9, origin="designed", source="this project ; " + COROTUB,
         note=_DESIGN + "3 lobes, radii 12/12/9, web arcs 90 deg, lobes 110 deg."),
    dict(id="C016", A=corrugated(3, 12, 16, 12, 100, 130), B=corrugated(3, 12, 16, 12, 100, 130), w=9, origin="designed",
         source="this project ; " + COROTUB, note=_DESIGN + "3 deep lobes, radii 12/16/12, web arcs 100 deg, lobes 130 deg."),
    dict(id="C017", A=_C17, B=_C17, w=9, origin="designed", source="this project ; " + COROTUB,
         note=_DESIGN + "4 lobes, radii 12/10/9, web arcs 80 deg, lobes 100 deg."),
    dict(id="C018", A=_C18, B=_C18, w=9, origin="designed", source="this project ; " + COROTUB,
         note=_DESIGN + "5 lobes, radii 10/9/9, web arcs 70 deg, lobes 90 deg."),
    dict(id="C019", A=corrugated(2, 20, 20, 15, 45, 60), B=corrugated(2, 20, 20, 15, 45, 60), w=6, origin="designed",
         source="this project ; " + COROTUB, note=_DESIGN + "2 shallow lobes, radii 20/20/15, web arcs 45 deg, lobes 60 deg."),
    dict(id="C020", A=_C20, B=_C20, w=6, origin="designed", source="this project ; " + COROTUB,
         note=_DESIGN + "3 lobes, radii 15/20/15, web arcs 60 deg, lobes 80 deg."),
    dict(id="C021", A=corrugated(4, 25, 25, 20, 40, 50), B=corrugated(4, 25, 25, 20, 40, 50), w=9, origin="designed",
         source="this project ; " + COROTUB, note=_DESIGN + "4 shallow lobes, radii 25/25/20, web arcs 40 deg, lobes 50 deg."),
    dict(id="C022", A=_C15, B=match(five_arc, _C15, 10, 150), w=9, origin="designed", source="this project",
         note="Asymmetric: C015 7-arc upper shell, 5-arc lower shell, same chord and arc length."),
    dict(id="C023", A=_C17, B=match(lambda p: corrugated(3, 1.0, 1.0, 0.75, p, 1.3 * p), _C17, 5, 120), w=9,
         origin="designed", source="this project",
         note="Asymmetric: C017 9-arc upper shell, 7-arc lower shell (lobes 1.3 x web-arc angle), same chord and arc length."),
    dict(id="C024", A=_C18, B=match(lambda u: omega(0.5, u, 1.0), _C18, 5, 150), w=9, origin="designed",
         source="this project ; https://patents.google.com/patent/US12338002B2/en",
         note="Asymmetric: C018 11-arc upper shell, 3-arc omega lower shell (radius ratio 0.5), same chord and arc length."),
    dict(id="C025", A=_C20, B=match(lambda p: corrugated(2, 1.0, 1.0, 0.75, p, 1.4 * p), _C20, 5, 120), w=6,
         origin="designed", source="this project",
         note="Asymmetric: C020 7-arc upper shell, 5-arc lower shell (lobes 1.4 x web-arc angle), same chord and arc length."),
]

for g in TRAC:
    g["type"] = "TRAC"
    g.setdefault("B", g["A"])
for g in OMEGA:
    g["type"] = "OM"
for g in CORRUGATED:
    g["type"] = "CO"

# closed shells: print-precision values, exactly tangent to both webs (rounding residual on the middle arc)
for g in OMEGA + CORRUGATED:
    fixes = []
    for k in ("A", "B"):
        g[k], res = tangent(g[k])
        if res:
            fixes.append(f"{k} {res:+.2f}")
    if fixes:
        g["note"] += (" Middle-arc angle adjusted after rounding so the shell is tangent to the webs: "
                      + ", ".join(fixes) + " deg.")
for g in TAPE_SPRINGS:
    g["type"] = "TS"

GEOMETRIES = TAPE_SPRINGS + TRAC + OMEGA + CORRUGATED
SELECTED = ["T013", "T014", "R011", "R017", "R025", "M008", "M009", "M018", "M024", "M025", "C003", "C006", "C010", "C016", "C023", "C024"]
