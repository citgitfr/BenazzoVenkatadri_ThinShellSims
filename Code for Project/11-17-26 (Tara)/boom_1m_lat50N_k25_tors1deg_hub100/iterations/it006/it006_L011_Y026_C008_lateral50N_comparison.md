# it006_L011_Y026_C008, lateral 50 N case: OpenSeesPy vs Abaqus (outputs only)

Date 11-19-26. Independent check, done from the two result files only (no model-building code, scripts or case JSON read).

**Verdict: AGREE.** Displacements, the tip reference point, membrane strains, section forces and moments, and 0-deg ply stresses match within about 1% to 3%.
The CHECK lines are all in the first and last ~25 mm (about 5 elements) next to the two rigid ends, or in quantities that are close to zero (drilling rotations, N22, interior kxx/kxy).
They are expected discretization differences and do not point to a modelling error.

## Files
- OpenSees: `results\it006_L011_Y026_C008_lateral50N.npz`
- Abaqus: `it006_L011_Y026_C008_lateral50_S4R_4p5mm_odb.npz` (from ODB `it006_L011_Y026_C008_lateral50_S4R_4p5mm.odb`, step `Load`, Abaqus/Standard 2026, 2 frames, S4R, 4.5 mm), plus `it006_L011_Y026_C008_lateral50_S4R_4p5mm_results.txt`
- Tool output (tables, json, pictures): `it006_L011_Y026_C008_lateral50N_comparison\`
  (`compare_results.py ... --tol 0.03`, default tolerance not changed)
- Scratch end-zone / interior split: `it006_L011_Y026_C008_lateral50N_comparison\interior_check.py` (uses the compare_results functions unchanged)

## Matching
- Axis order: Abaqus columns [0, 1, 2], so there is no reorder.
- 23192 / 23192 nodes and 23088 / 23088 elements. The worst node pairing distance is 3.1e-5 mm and the worst centroid distance is 2.4e-5 mm (element size 4.5 mm): **the meshes are the same**.
- Both reference points were found: x0 at 1.6e-30 mm and xL at 1.4e-12 mm from the OpenSees rigid-end nodes.
- Laminates: flange [60/0/0/60] on 22200 facets, web doubled [-60/0/0/-60/60/0/0/60] on 888 facets. All 24 Abaqus section points were paired by layer and position.
- The Abaqus run reports that it flipped the shell normals on the web faces (y = +-74.1). The field scales are all about +1, so there is no sign or ply-side problem.

## Key values (final frame)
| quantity | OpenSees | Abaqus | diff | verdict |
|---|---|---|---|---|
| max \|u\| (node at x=1000, y=78.6) | 1.4086 mm | 1.4102 mm | +0.11% | agree |
| largest component uy (tip) | 1.4019 mm | 1.4034 mm | +0.11% | agree |
| ux peak | -0.1382 mm | -0.1383 mm | -0.07% | agree |
| uz peak | -0.01566 mm | -0.01560 mm | +0.37% | agree |
| tip RP uy / uz | 1.4019 / 3.717e-3 mm | 1.4034 / 3.678e-3 mm | +0.11% / -1.0% | agree |
| tip RP rz / ry | 1.7507e-3 / -4.754e-5 rad | 1.7516e-3 / -4.735e-5 rad | +0.06% / +0.4% | agree |
| root RP | 0 | ~1e-32 | - | agree (fixed) |
| exx peak (root, web) | 2.822e-4 | 2.877e-4 | +1.95% | agree |
| kxx peak (root, x=6.8) | -2.548e-4 /mm | -4.070e-4 /mm | -60% | end effect (see below) |
| kyy peak | -1.845e-4 /mm | -1.837e-4 /mm | +0.4% | agree |
| kxy peak (root) | 2.038e-4 /mm | 2.677e-4 /mm | +31% | end effect |
| s1, 0-deg ply (web ply 7 top, root, y=-76.4) | +49.88 MPa | +50.42 MPa | +1.1% | agree |
| s1, 0-deg flange ply 3 top (root, y=67.2) | -40.59 MPa | -40.46 MPa | +0.3% | agree |
| s1, 60-deg web ply 8 top (root, x=2.25) | +12.58 MPa | +9.26 MPa | -26% | first element row only |
| s1, 60-deg flange ply 1 bottom (root) | -7.76 MPa | -6.95 MPa | +10% | end effect |
| s2 peak (web ply 4 top, root) | +2.167 MPa | +2.113 MPa | -2.5% | agree |
| t12 peak (flange ply 1 bottom, x=6.8) | +1.785 MPa | +2.067 MPa | +16% | end effect |
| t12, flange ply 4 top | +1.792 MPa | +1.741 MPa | -2.9% | agree |
| N11 peak (root) | 7.458 N/mm | 7.523 N/mm | +0.9% | agree |
| N12 peak (root) | 0.396 N/mm | 0.340 N/mm | -14% | end effect, interior 0.26% |
| M11 / M22 / M12 peaks (root, x=2.25) | 0.0220 / 0.0350 / -0.0308 | 0.0165 / 0.0262 / -0.0232 | -25% each | first element row only |
| load factor / load path | linear static, 1 step | 2 frames | - | not applicable |

## Interior vs end zones (relative RMS, least-squares scale Abaqus/OpenSees)
| field | x < 25 mm | 100 mm <= x <= L-100 mm | x > L-25 mm |
|---|---|---|---|
| exx | 0.85%, 1.002 | 0.06%, 1.000 | 16%, 1.002 (small) |
| eyy | 13%, 1.045 | 0.25%, 1.001 | 13%, 1.046 |
| gxy | 8.5%, 1.026 | 0.26%, 1.002 | 7.7%, 1.031 |
| kxx | 73%, 1.51 | 12%, 0.99 (peak 5e-6) | 79%, 1.56 |
| kyy | 47%, 1.07 | 3.1%, 0.994 | 53%, 1.10 |
| kxy | 103%, 1.29 | 42%, 0.79 (peak 1.6e-5) | 112%, 1.34 |
| N11 / N12 | 0.7%, 6.9% | 0.06%, 0.26% | 15%, 5.2% |
| M11 / M22 / M12 | 36% / 38% / 23% | 3.3% / 3.1% / 2.1% | 66% / 46% / 46% |
| rx / rz | 54% / 67% | 2.3% / 2.0% | 50% / 6% |
| ry | 87%, 1.45 | 38%, 0.74 | 87%, 1.47 |

## CHECK lines and judgment
- **rx, ry, rz (whole model, rel. RMS 12% / 62% / 2.9%)**: The peak values agree within 1% to 4%.
  The RMS is dominated by the two end zones and by ry. On the side flanges ry is the drilling rotation, which is not a physical quantity: the ASDShellQ4 drilling formulation and the S4R nominal drilling stiffness differ.
  In the interior, rx and rz agree within 2%. Judgment: expected.
- **eyy (-22% at the peak)**: The peak is at x = 6.8 mm, next to the root. Interior rel. RMS is 0.25%. Judgment: expected end effect.
- **kxx (-60%, scale 1.43), kyy (rel. RMS 18%), kxy (+31%, scale 1.15)**: The `_along_x.png` plot shows an oscillating curvature boundary layer within ~30 mm (6 to 7 elements) of both rigid ends. It is stronger in S4R, which is typical of reduced integration with hourglass control against a fully constrained edge.
  kyy agrees within 3% in the interior. Interior kxx and kxy are one to two orders smaller than at the ends (5e-6 and 1.6e-5 /mm), so their percentages are noise. The moment they produce, M12, agrees within 2%.
  No scale is near -1, 2 or 0.5. Judgment: expected discretization difference, not a sign or factor-2 convention problem.
- **Ply s1 in the +-60-deg plies (flange 10% to 19%, web 20% to 26%) and t12 in plies 1 and 8 (4% to 16%)**: These peaks are all in the first element row at the root (x = 2.25 to 6.8 mm), where curvature dominates the off-axis plies.
  The rel. RMS over all elements is 5% to 16%, the scales are 0.94 to 1.00, and the 0-deg plies agree within 1% to 2%. The parity plot of ply stress lies on the line.
  Judgment: end effect, the same as the curvatures.
- **0-deg web plies s2 (rel. RMS 17% to 25%) and t12 (-5% to -7%)**: The s2 values are small (0.46 MPa, against s1 of 50 MPa) and their peaks are at the root. Judgment: expected.
- **N22 (scale 0.70, rel. RMS 45%) and N12 (-14% at the peak)**: N22 is about 1/1000 of N11 in the interior and is set at the end constraints. N12 agrees within 0.26% in the interior. Judgment: expected.
- **M11, M22, M12 (about -25% at the peaks)**: The peaks are in the first root element row. In the interior the moments agree within 2% to 3.3% (scale 0.98 to 0.99). Judgment: expected.
- **results.txt line "t12 Abaqus -1.93 vs OpenSees +1.79, -208%"**: This line compares the largest-magnitude value of each run, and the two values sit at different elements with opposite signs. The per-element comparison in the tool table has t12 with scale +1.00 (flange ply 4 top -2.9%, web ply 8 rel. RMS 0.8%). Judgment: not a sign error.

## Pictures (in `it006_L011_Y026_C008_lateral50N_comparison\`)
- `..._deformed.png`: deformed shapes (x71). The Abaqus outline lies on the OpenSees outline (lateral bending in +y).
- `..._fields.png`: \|u\|, kxx and top-ply s1 maps. They are alike, and the differences show only as rings at the two ends. The \|u\| difference is at most 1.6e-3 mm and grows smoothly toward the tip.
- `..._parity.png`: displacements and ply stresses lie on the line. The curvature cloud is scattered around the line because of the end-zone points.
- `..._along_x.png`: uy(x) curves overlap. kxx and s1 match from 50 mm to 950 mm, and both show oscillating boundary layers at the ends (larger amplitude in Abaqus).

## Not compared / open
- There is no load path, because both runs are linear static.
- The size of the end-zone curvature and off-axis ply stress peaks at the root (the first element row) depends on the mesh. If the root ply stresses drive a failure criterion in the design, they should be checked with both models at 2.25 mm elements (or with a refined root zone) before those peak values are trusted.
- Tool note (not edited): when the OpenSees value is exactly 0 (root RP rows), the rel. RMS column prints an astronomically large % because it divides by zero. The verdict, "PASS (~0)", is correct, so this is a display problem only.
