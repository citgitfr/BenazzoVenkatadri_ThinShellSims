# Verification: it001_L001_Y001_T001, OpenSeesPy (ASDShellQ4) vs Abaqus (S4R, 5 mm)

Date: 11-11-26. This check uses only the two result files. I did not read either model's build code.

**Verdict: AGREE.** Displacements, rotations, ply stresses and section forces match to 2.6% or better. Most of the 14 CHECK lines come from a bug in the tool (it pairs the Abaqus curvature components the wrong way round) or from components that are almost zero. The rest are local differences at the clamped end. Caveat: the uniform 2.65% offset (Abaqus more compliant) is close to the 3% tolerance (see section 4).

## 1. Files
- OpenSees: `results/it001_L001_Y001_T001.npz` (linear, tip force -1 N in z on rigid end xL, x0 clamped; 3 x 0 deg IM7/8552, t = 0.105 mm; arc R = 20 mm, 180 deg, L = 1000 mm)
- Abaqus: `it001_L001_Y001_T001_S4R_5mm_odb.npz` (from `it001_L001_Y001_T001_S4R_5mm.odb`, step Load, Abaqus/Standard 2026, final frame); `..._S4R_5mm_results.txt`
- Tool output: `abaqus_comparison/` (`it001_L001_Y001_T001_comparison.md/.json`, `_deformed.png`, `_fields.png`, `_parity.png`, `_along_x.png`). Run: `compare_results.py <os.npz> <odb.npz> --out abaqus_comparison`, default tol 0.03.

## 2. Matching
- Abaqus axes = (x, y, z) columns [0, 1, 2]. The two models use the **same mesh**: 2814/2814 nodes, 2600/2600 elements. Maximum pairing distance is 7.7e-7 mm for nodes and 4.5e-7 mm for element centroids (element size 5 mm).
- Both rigid-end reference points were found, 1.4e-7 mm from the OpenSees nodes. 3 section points per ply.
- The Abaqus results.txt says "shell normal flipped on the face through [0,0]". After the flip the normals agree with OpenSees: the kxy signs match, and the parity of s1 and t12 is on the line.

## 3. Key values (final frame)

| quantity | OpenSees | Abaqus | diff | verdict |
|---|---|---|---|---|
| max \|u\| (uz at tip, node (1000,-20,20)) [mm] | -8.5963 | -8.8229 | +2.64% | PASS |
| rigid end xL uz [mm] | -8.5963 | -8.8229 | +2.64% | PASS |
| rigid end xL ry [rad] | 0.012773 | 0.013112 | +2.65% | PASS |
| rigid end x0 (all DOF) | 0 | ~1e-34 | - | PASS |
| ux peak [mm] | 0.16185 | 0.16614 | +2.65% | PASS |
| exx peak (2.5, 19.71, 17.61) | 2.622e-4 | 2.696e-4 | +2.82% | PASS |
| kxx peak (root, bottom, x=2.5) [1/mm] (Abaqus SK2) | 1.320e-4 | 1.397e-4 | +5.8% | local at clamp; interior relRMS 3.2%, scale 1.026 |
| kyy peak (x=7.5, edge) [1/mm] (Abaqus SK1) | 9.72e-5 | 1.315e-4 | +35% | local at clamp; interior relRMS 2.9%, scale 0.987 |
| kxy peak (x=12.5, edge) [1/mm] | -1.171e-4 | -1.373e-4 | -17% | local at clamp; interior relRMS 8%, scale 0.970 |
| s1 peak, ply 3 top (x=7.5, edge) [MPa] | 41.72 | 42.59 | +2.09% | PASS |
| s1 peak, ply 1 bottom (x=2.5, edge) [MPa] | 42.15 | 43.15 | +2.38% | PASS |
| s2 peak [MPa] | ~0.33 | ~0.19 to 0.32 | - | near-zero quantity (see 4) |
| t12 peak, ply 3 top (x=7.5) [MPa] | -0.370 | -0.379 | -2.2% | PASS |
| N11 peak [N/mm] | 4.375 | 4.494 | +2.72% | PASS |
| M11 peak (root) [N mm/mm] | 2.03e-3 | 2.14e-3 | +5.5% | local at clamp; scale 1.048 |
| load path | linear, 1 frame | linear, 1 frame | - | not applicable |

The tool lists 34/48 PASS and 14 CHECK. With the curvature pairing corrected (section 4a), the curvature, moment and stress groups agree to about 3% away from the clamped end.

## 4. CHECK lines, judged

a. **Curvature kxx (SK1) scale -0.72, kyy (SK2) scale -0.23: TOOL ERROR, not a model error.** `compare_results.py` pairs OpenSees kxx with Abaqus SK1. The documented convention is kxx = SK2 and kyy = SK1 (SK1 is the curvature *about* local axis 1). Evidence:
   - Correlation of OpenSees kxx with SK2 is +0.984; of kyy with SK1, +0.992. Correlation with the components the tool used is about -0.42.
   - Abaqus's own data agree: SM = D * [SK2, SK1, SK3] to a relative residual of 4e-8. The tool's pairing gives scales of -0.20 and 0.60.
   - Profile at x = 502.5: OpenSees (kxx, kyy) = (1.271e-5, -3.29e-6) and Abaqus (SK2, SK1) = (1.305e-5, -3.40e-6), a 2.7% difference, the same as the displacements.

   With the correct pairing: kxx scale 1.047, overall relRMS 15.9%, interior (50 < x < 950) 3.2%. kyy scale 1.000, overall 12.6%, interior 2.9%.

   `odb_mock.py` (line 107) writes SK1 = kxx, so `test_verification.py` builds in the same mistake and cannot catch it. The "kxx" panels in `_fields.png`, `_parity.png` and `_along_x.png` therefore plot Abaqus kyy against OpenSees kxx. The "cross" in the parity plot and the opposite trends in the along-x plot come from this. I did not change the tool.

b. **kxy (SK3): peak -17%, relRMS 52%, scale 1.17.** This is a discretization difference at the clamped end. The five largest differences are at x = 2.5 to 7.5 on the free edges. In the interior the scale is 0.970, relRMS 8% and correlation 0.999.

c. **M11 +5.5% (scale 1.048), M22 +23.7% at x = 7.5 (scale 0.999):** These follow from (a) and (b): the peaks sit in the root elements next to the clamp. Expected difference near the support.

d. **eyy (SE2) peak -6.9% at x = 7.5 edge (relRMS 3.4%):** Local to the root. In the interior the scale is 1.027 and relRMS 2.7%, the same as the global offset.

e. **s2 (S22) in every ply (relRMS 18-28%), N22 (relRMS 27%; interior 9x):** s2 is about 0.33 MPa, below 1% of s1 (43 MPa). N22 is below 0.8% of N11. Each is the difference of two nearly equal Poisson terms (Q12 exx is about +0.77 MPa and Q22 eyy about -0.8 MPa), so a 3% change in either term changes the result by order 1. These quantities are near zero and ill-conditioned, not an error. Ply order and angle are not in question: s1 and t12 match in all three plies to between 0.01% and 2.6%.

f. **rz: peak -28% at x = 5, relRMS 67%, scale 1.10:** This is a near-zero rotation (5e-4 against ry = 1.3e-2). The largest differences are at the free edges for x = 10 to 15 near the clamp, where rz is close to the drilling rotation and the two elements treat drilling differently. In the interior the scale is 0.984. Expected.

g. **Uniform +2.65% in Abaqus (u, rotations, exx, s1, N11): an element-formulation difference, within tolerance.** Every primary field carries the same factor of 1.0265.
   - Equilibrium. Abaqus's SF1, integrated over the section, gives M = P(L - x) exactly at x = 102.5 to 902.5 (897.48 against 897.5 N mm).
   - Energy. OpenSees's strain energy from all four Gauss-point strains equals 0.5 P delta (4.29812 against 4.29815 N mm), so OpenSees carries the full 1 N load and is internally consistent. Abaqus's centroid energy also equals its 0.5 P delta.
   - So the difference is stiffness, not load. It is probably S4R's one-point integration (with hourglass control) against ASDShellQ4 full integration with -noeas. There are only 13 elements around the semicircle and exx varies across each one.
   - Beam theory for the semicircular tube (E1 = 158.5 GPa, I = R^3 t (pi/2 - 4/pi) = 250 mm^4) gives a tip deflection of about 8.41 mm, plus about 0.07 mm from shear. OpenSees (8.60) is within 1.4% of this and Abaqus (8.82) is 4% above it.
   - Root s1 from beam theory at the edge-element centroid is 41.3 MPa; OpenSees gives 41.7 and Abaqus 42.6.

   A finer mesh will settle this (point 6).

## 5. Pictures (in `abaqus_comparison/`)
- `it001_L001_Y001_T001_deformed.png`: the two deformed shapes overlap. Abaqus's tip sits slightly lower.
- `it001_L001_Y001_T001_fields.png`: the \|u\| and s1 maps look the same; the \|u\| difference grows smoothly toward the tip (the 2.6% offset). The kxx panels compare the wrong Abaqus component (4a).
- `it001_L001_Y001_T001_parity.png`: displacement and ply stress points lie on the line, just above it by 2.6%. The curvature panel is the mispaired cross (4a).
- `it001_L001_Y001_T001_along_x.png`: the uz curves overlap and diverge slowly toward the tip. The s1 curves overlap, with the same element sawtooth in both. The kxx panel is mispaired (4a).

## 6. Not compared, and what would settle it
- Not compared: load path (linear analysis), and transverse shear section forces (SF4, SF5).
- To settle point (g): run both models at half the element size, especially around the section (2.5 mm, 26 elements around the arc), and/or run Abaqus with S4. If the offset is S4R reduced integration, the Abaqus deflection should fall toward 8.5 to 8.6 mm.
- Tool fix (needs user approval): in `compare_results.py`, pair kxx with SK2 and kyy with SK1, and change `odb_mock.py` line 107 to match. Then rerun `test_verification.py` and this comparison.
