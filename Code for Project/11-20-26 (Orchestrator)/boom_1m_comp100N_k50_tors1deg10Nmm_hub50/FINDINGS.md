# Study boom_1m_comp100N_k50_tors1deg10Nmm_hub50: findings (no feasible catalog design)

Orchestrator, 2026-11-20. Study stopped by `study.py` after 24 iterations: **no untried candidate left**.
`study.py finalize` refuses without a feasible design (it needs `--force-reason` from the user), so this
file replaces REPORT.md until the user decides how to continue. Nothing has been committed.

## Prompt and requirements as formulas

Prompt: see `requirements.json` ("prompt"). Interpretations (user asked not to be asked; taken from the
user's own answers to the same prompt form in study 11-19-26 boom_1m_comp50N_k10_tors1deg_hub40):

| Requirement | Formula | Limit |
|---|---|---|
| Length | L | 1000 mm |
| Bending stiffness (cantilever, 100 N tip load along -z, <= 2 mm) | k = 100 N / tip uz | >= 50 N/mm |
| Pin-pin compression buckling | P_B | >= 100 N |
| Torsion (10 N mm torque, <= 1 deg) | tip twist | <= 1 deg |
| No material failure | Hashin 2D, static 100 N, 10 N mm torque, 100 N axial compression, flattening | F < 1 |
| Coiling on a 50 mm hub (radius) | F_hub (exact CLT, flatten + bend to hub) | < 1 |

CPU cap: user 16, PROTOCOL 6a 8 per job; all Abaqus runs used 1 CPU.

## Result: the bending-stiffness requirement cannot be met by any catalog design

- Screen: 716,400 combinations (36 materials x 199 layups x 100 geometries). Only 24 passed the
  screening margins (all corrugated, C005 and C008, 4-5 plies of 0.035 mm), with stiffness estimates of
  43-48 N/mm (the screen admits >= 0.85 x 50 N/mm).
- FE (OpenSeesPy, all 24 run): **k_FE 39.7-44.3 N/mm; none reaches 50 N/mm**. FE/beam-theory ratio
  0.88-0.99. Every other constraint is satisfied with margin in every design: twist <= 0.00086 deg
  (limit 1), Hashin F_governing 0.54-0.90 (from flattening), F_torque <= 3e-9, F_axial <= 2e-5,
  F_hub 0.62-0.97. Buckling was not run (study.py skips it for designs that already violate a
  constraint); the pin-pin Euler load of these sections is orders of magnitude above 100 N.
- Closest designs (ledger.csv):

| it | Material | Layup | Geometry | Mass | k_FE (N/mm) | k / 50 | F_gov | F_hub |
|---|---|---|---|---|---|---|---|---|
| 2 (= 22, mirror) | L030 T1100GC/LM-PAEK | [30/0/0/0/30] | C008 | 132.7 g | 44.33 | 0.887 | 0.90 | 0.97 |
| 7 (= 16) | L030 | [0/0/30/0/0] | C005 | 133.0 g | 44.25 | 0.885 | 0.54 | 0.62 |
| 8 (= 17) | L017 IM7/8551-7 | [0/0/30/0/0] | C005 | 132.2 g | 43.93 | 0.879 | 0.71 | 0.83 |
| 1 | L017 | [0/0/0/0/0] | C005 | 132.2 g | 43.80 | 0.876 | 0.71 | 0.83 |

The best design misses by 11 %: tip deflection 2.26 mm under 100 N instead of <= 2 mm.

## Why (diagnostic screens, folders diag_*)

- `diag_no_stiffness/` (stiffness requirement removed, all else kept): the stiffest catalog design that
  passes every other check has k_est 48.4 N/mm (L017/Y031/C005 = it001, FE 43.8). Per family:
  TS 1.6, TRAC 25.9, OM 33.9, CO 48.4 N/mm.
- `diag_no_coil/` (no hub bending, flattening still checked): the stiffest catalog design reaches
  k_est 53.8 N/mm (L030/[0/0/30/0/0]/C008; FE expected ~0.94-0.98 x, i.e. about 50-53 N/mm), and only
  8 rows exceed 50 N/mm by estimate. These fail F_hub on a 50 mm hub.
- `diag_hub55` ... `diag_hub100`: a larger hub (55-100 mm) does not add designs: the same 24 survive.
- So the limit is the size of the catalog sections at the 5-ply maximum (0.175 mm) together with
  flattening the small corrugation lobes (F_flat/F_hub). The 50 N/mm requirement
  (EI = 50 L^3 / 3 = 1.67e10 N mm^2) is at the edge of what the catalog holds.

## Verification and convergence

- Mesh convergence it001 (4.5 -> 2.7 mm): stiffness 0.15 %, F_sim 4.9 % -> converged.
- Abaqus (S4R, 4.5 mm, 1 CPU, static case), OpenSeesAbaqusResultsComparator verdicts:
  - it001 L017/Y031/C005: agree (tip uz -0.14 %), `iterations/it001/it001_L017_Y031_C005_S4R_4p5mm_verification.md`
  - it006 L038/Y031/C008: agree (tip uz -0.12 %; first C008 Abaqus run), `iterations/it006/it006_L038_Y031_C008_comparison.md`
  - it014 L030/Y100/C008: agree (tip uz -0.14 %), `iterations/it014/it014_L030_Y100_C008_verification_report.md`
  - it022 L030/Y155/C008 (mirror of the closest design it002): agree (tip uz -0.09 %), `iterations/it022/it022_L030_Y155_C008_S4R_4p5mm_verification.md`
  - it007 L030/Y032/C005 (second-closest design, closest C005): agree (tip uz -0.10 %; 52 CHECKs out of 121 rows, all at the rigid ends, in the drilling rotation or in very small transverse values), `iterations/it007/it007_L030_Y032_C005_S4R_4p5mm_verification.md`
- 5 verifications in total (min 5 reached), all agree.
- The stiffness shortfall is therefore not a modelling artefact: Abaqus reproduces the FE stiffness to 0.1-0.2 %.

## Sanity flags and their causes

- it004-it006, it014, it015, it022-it024: "FE/beam ratio differs > 5 % from the Abaqus-verified
  iteration 1 (0.906)". Cause: the reference is the C005 [0]5 design; C008 sections and off-axis layups
  have different ratios (0.95-0.99). Abaqus verified two flagged C008 designs (it006 ratio 0.956,
  it014 ratio 0.986) and agreed to 0.12-0.14 %, so the spread is physical, not a model error.
- Mirror layups ([0/0/-th/0/0] vs [0/0/th/0/0], [-30/0/0/0/-30] vs [30/0/0/0/30], ...) on these
  mirror-symmetric sections gave identical results to 1e-9 (it004/it005, it007/it016, ...); they were run
  only to exhaust the screen list.
- it002 (and its mirror): the small Hashin peak of the static case (0.003) sits at the rigid tip fitting,
  consistent with the unbalanced 30 deg outer plies being restrained there; irrelevant to the result.

## Limitations

Catalog strengths are mean values; thin-ply in-situ transverse strength is not used. Coiling F_hub
is flange-only exact CLT (no contact, no transition zone, no web/tab). Static case linear.

## Ways forward (need the user's decision)

1. Accept the closest design with k = 44.3 N/mm (2.26 mm under 100 N), or relax the stiffness to
   <= 44 N/mm; the study can then run buckling, convergence and the remaining verifications and finalize.
2. Ask the CompositeLaminaLibrarian to add larger closed sections (corrugated/omega with larger lobe
   radii or more lobes) or laminates with more than 5 plies, then re-screen.
3. Close the study without a design (`study.py close`).

## Largest sections and thickest laminates (diag_largest.py, 2026-11-21)

- Every catalog material has t_ply = 0.035 mm, so the thickest laminate allowed (5 plies) is 0.175 mm
  for all of them. The FE designs are 4-5 plies (the screen survivors).
- Stiffest estimate per section with any 5-ply laminate (coiling ignored): C008 87.8, C006 83.1,
  C005 78.0, C007 78.0, C011 75.3 N/mm (L028 [0/0/30/0/0]), but F_hub = 1.76-3.03 on the 50 mm hub.
- Best estimate that also passes F_flat < 1 and F_hub < 1: C005 48.4, C011 46.8 (removed by another
  screen check), C008 45.4, C006 42.4, C007 39.3 N/mm; FE gives about 0.9-0.98 x these.
- So the largest and thickest designs exist in the catalog but break when coiled; the coilable ones
  stop at about 44 N/mm in FE.

## Re-assessment at k >= 40 N/mm (user decision 2026-11-21; reassess_k40/)

The user relaxed the bending-stiffness requirement to 40 N/mm (tip deflection <= 2.5 mm under 100 N).
Every existing FE result was re-evaluated with objective_constraints.py against constraints_k40.json
(study state untouched; table in reassess_k40/reassess_k40.csv):

- 22 of 24 iterations satisfy k >= 40 N/mm and every other evaluated constraint (no failure in the
  static, torque and 100 N axial cases, twist, length, coiling on the 50 mm hub). it012 and it020
  (L030 Y034/Y038, 39.66 N/mm) violate it.
- Buckling is "not evaluated" for all of them: study.py skipped the buckling path because the designs
  violated 50 N/mm. Feasibility therefore still needs the pin-pin buckling simulation.
- Lightest of the 22: it003 L017 Y016 [0/0/0/0] (4 plies, 0.14 mm) on C008, 105.5 g, k 41.12 N/mm, F 0.81;
  then it004/it005 L028 on C005, 107.7 g, k 42.92 N/mm.
- Because 40 N/mm also admits lighter, less stiff catalog designs that the 50 N/mm screen rejected, the
  study continues as a new study with k >= 40 N/mm (fresh screen, buckling and verifications included).
