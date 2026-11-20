# it007_L006_Y025_C008_lateral50N: OpenSeesPy vs Abaqus verification (11-19-26)

**Verdict: AGREE.** Global response matches to about 0.1-0.5 %. Away from the clamped end (x > 50 mm), the
membrane strains, the main curvature kyy and every ply stress agree to within about 2 %. All 48 CHECK
lines come from the elements next to the clamped end (x = 2.25-20 mm) and the web/flange junction
(y = +/-76 mm, z = 0) or from small secondary curvatures. These are S4R vs ASDShellQ4 discretization
differences. No sign, factor-of-2 or ply-order error.

## Files
- OpenSees: `results/it007_L006_Y025_C008_lateral50N.npz` (linear static, lateral 50 N tip load)
- Abaqus: `it007_L006_Y025_C008_lateral50_S4R_4p5mm_odb.npz` (ODB `it007_L006_Y025_C008_lateral50_S4R_4p5mm.odb`,
  step `Load`, Abaqus/Standard 2026, 2 frames, S4R, 4.5 mm mesh)
- Tool output (full 103-row table, JSON, pictures): `comparison_lateral50/`
  (`compare_results.py ... --tol 0.03`, default tolerance)
- Scratch check of agreement away from the ends: `interior_check_lateral50.py` (in this folder)

## Matching
- Abaqus axes used directly: (x, y, z) = Abaqus columns [0, 1, 2].
- 23192 / 23192 nodes and 23088 / 23088 elements. Largest node pairing distance is 3.1e-5 mm and
  largest centroid distance is 2.4e-5 mm, against a 4.5 mm element size. The meshes are the same.
- Both rigid-end reference points (x0, xL) were found within 1.4e-12 mm of the OpenSees nodes.
- Laminates: flange [45/0/0/45] (22200 facets); web, doubled, [-45/0/0/-45/45/0/0/45] (888 facets).
  All 24 section points were paired with a ply.

## Key values (final frame)
| quantity | OpenSees | Abaqus | diff | verdict |
|---|---|---|---|---|
| max \|u\| (tip, node at x = 1000) | 1.4687 mm | 1.4705 mm | +0.12 % | PASS |
| largest component uy (tip) | 1.4612 mm | 1.4630 mm | +0.12 % | PASS |
| ux / uz peaks | -0.14829 / -0.038445 mm | -0.14842 / -0.038353 mm | -0.08 % / +0.24 % | PASS |
| tip ref. point xL: uy, uz | 1.4612, 0.012663 mm | 1.4630, 0.012606 mm | +0.12 %, -0.45 % | PASS |
| tip ref. point xL: ry, rz | -1.5932e-4, 1.8814e-3 | -1.5919e-4, 1.8829e-3 | +0.09 %, +0.08 % | PASS |
| root ref. point x0 | 0 (fixed) | ~1e-35 | - | PASS (~0) |
| membrane exx, eyy, gxy peaks | -2.95e-4, -2.22e-4, 2.29e-4 | -2.92e-4, -2.20e-4, 2.31e-4 | < 1 % | PASS |
| kyy (SK1) peak, whole model (x = 11 mm) | 4.71e-4 | 5.24e-4 | +11 % | CHECK (support) |
| kyy peak, 50 < x < 950 | 2.64e-4 | 2.56e-4 | -2.7 % (RMS 4.1 %) | agrees |
| flange ply 2/3 (0 deg) s1 peak | -40.6 / +40.6 MPa | -42.1 / +40.5 MPa | -3.6 % / -0.2 % | ~PASS |
| web ply 2/7 (0 deg) s1 peak (x = 2.25 mm, junction) | -48.1 / +48.1 MPa | -49.6 / +49.6 MPa | 3.3 % | CHECK (support) |
| web ply 1/8 (+-45) s1 peak (x = 2.25 mm, junction) | -26.2 / +26.2 MPa | -20.6 / +20.6 MPa | 21 % | CHECK (support) |
| web ply 1/8 s1 peak, 50 < x < 950 | -5.42 / +5.32 MPa | -5.33 / +5.19 MPa | 1.7 % / 2.4 % | agrees |
| flange ply 1 (45) t12 peak (bottom) | 1.509 MPa | 1.768 MPa | +17 % (RMS 2.2 %) | CHECK (support) |
| t12 peaks (other plies) | 0.9-2.0 MPa | same | < 2 % | PASS |
| section force N11 peak | 7.639 N/mm | 7.743 N/mm | +1.4 % | PASS |
| section moments M11/M22/M12 peaks (x = 2.25 mm) | 0.072 / 0.048 / -0.072 | 0.057 / 0.035 / -0.059 | -21/-27/+18 % | CHECK (support) |
| load factor / load path | linear static, 1 step | 2 frames | not applicable | - |

## CHECK lines and judgment
All CHECK peaks are in the first 1-4 element rows next to the clamped end (x = 2.25-29 mm). Most are in the
web-flange junction elements at y = +/-76 mm. Least-squares scales are 0.95-1.01 for every stress field, and
0.91-1.37 only for the curvatures and moments. No scale is near -1, 2 or 0.5. None is a sign or factor-2
error. Each CHECK group is explained below.

1. **rotation rx, ry** (-4.6 %, -29 %; RMS 17 %, 42 %). The peaks are at x = 9-54 mm, at the web edge and
   the root. The drilling and in-plane rotations of the shell nodes near the clamp differ between S4R and
   ASDShellQ4. rz, which carries the bending, agrees (3 %), and the tip reference point rotations agree to
   0.1 %. Judgment: an expected element difference at the support.
2. **curvatures kxx, kyy, kxy** (all-model RMS 74 / 24 / 98 %). The peaks are at x = 2-11 mm. For
   50 < x < 950, kyy, the curvature that matters here, agrees (peak -2.7 %, RMS 4 %, scale 0.99). kxx and
   kxy are about 5-10 % of kyy there (|k| ~ 1e-5 1/mm). Both codes show an element-to-element sawtooth
   (see `_along_x.png`), so the RMS of those tiny fields is large while they hardly affect the stresses.
   Judgment: expected. This is a membrane-dominated lateral bending case with secondary curvatures near
   numerical noise, plus the root boundary layer.
3. **web ply 1/4/5/8 (+-45) s1, s2** (about 12-22 % at the peak, RMS 6-8 %). Every peak is at
   x = 2.25 mm, y = +/-76.4 mm (web-flange junction at the clamp). For 50 < x < 950 they agree to
   within 2.4 % (RMS about 1 %). This is the stress concentration at the clamped corner. In the
   parity plot, a small cluster of points sits off the line at about (+-26, +-20). Judgment:
   discretization at the support.
4. **web/flange 0-deg ply s1** (3.3-3.7 %) and **web ply 2/7 s2** (4 %). These are at the clamped
   junction, with RMS 0.6 % and scale 1.001. Judgment: support discretization, just over 3 %.
5. **web 0-deg ply t12** (-13 %, RMS 14-15 %). The peak is at x = 2.25 mm at the junction. The field is
   small (0.47 MPa against 2 MPa for the +-45 plies). Judgment: support discretization.
6. **flange ply 1/4 (45) s1** (4-6 %) and **flange ply 1 bottom t12** (+17 %, RMS 2.2 %). These are at
   x = 2-7 mm near the flange edge. In the interior they agree to 0.1-1 %. Judgment: support.
7. **section forces N22, N12 and moments M11, M22, M12** (18-32 %). These are all at x = 2.25 mm,
   y = +/-76 mm. N11, which carries the load, agrees to 1.4 %. Judgment: the same clamped-corner boundary
   layer as items 3-6.
8. The Abaqus run's own `_results.txt` CHECK on "top-ply top-surface stress" (t12 diff -205 %) compares
   peaks of opposite sign at different elements (|t12| 2.11 vs 2.01 MPa). It is not a real discrepancy.
   In the matched table, t12 of the top plies passes (< 1 %).

## Tool defect (cosmetic, not fixed)
In the `rigid end x0` rows, the rel. RMS column prints absurd values (about 1e270 %). `compare()` divides
by `max(norm(OpenSees), 1e-300)` when the OpenSees value is exactly 0 (fixed root). The verdict
(`PASS (~0)`) is still correct. Only the printed RMS is meaningless. `compare_results.py` was not edited.
A fix would print n/a for rel. RMS when the OpenSees norm is below the group scale times 1e-12.

## Pictures (`comparison_lateral50/`)
- `it007_L006_Y025_C008_lateral50N_deformed.png`: the deformed shapes (x68) lie on top of each other. The
  Abaqus dotted mesh is hidden under the OpenSees mesh.
- `it007_L006_Y025_C008_lateral50N_fields.png`: the |u|, kyy and top-ply s1 maps look the same. The
  differences are less than 0.002 mm in |u| (0.14 %). The kyy and s1 differences are visible only at the
  two end rings.
- `it007_L006_Y025_C008_lateral50N_parity.png`: displacements and ply stresses lie on the line, except
  the small root-junction cluster at (+-26, +-20) MPa. The curvatures scatter around the line, with the
  root elements and the sawtooth of small kxx/kxy.
- `it007_L006_Y025_C008_lateral50N_along_x.png`: uy(x) curves are on top of each other. kyy(x) and
  s1(x) match, including the shared sawtooth. They differ only within about 50 mm of the root and in the
  last few elements at the tip.

## Not compared / open
- There is no load-path comparison: the case is linear static.
- The size of the root boundary-layer differences (the 20 % web +-45 s1 peak and the section moments at
  x = 2.25 mm) is not mesh-converged in either model. If design decisions use the peak stress at the
  clamped web-flange corner, rerun both models at 2.25 mm elements (or with local refinement at the root)
  to settle it. For stiffness and tip deflection, the comparison is conclusive.
