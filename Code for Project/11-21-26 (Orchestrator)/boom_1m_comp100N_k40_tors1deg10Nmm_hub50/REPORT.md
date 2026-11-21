# Boom design study: boom_1m_comp100N_k40_tors1deg10Nmm_hub50

## Prompt

> 1 m long, any cross-section, 100 N under compression buckling load pin-pin, transverse bending stiffness such that no more than 2 mm deflection under 100 N, torsional stiffness such that it will not rotate more than 1 degrees under 10 Nmm torque, include any layups and materials, coil on 50 mm hub, ensure to check no material failure throughout the simulation runs.

-do not modify any files outside of the current folder
-do not use more than 16 CPUs with abaqus anlaysis
-give me an update every 3 hours

Do not ask me for anything, you should be able to do everything on your own

[2026-11-21, user] drop the requirementto 40 N/mm and assess the iterations you have done so far according to the new requirement
[2026-11-21, user] approve all the changes necessary to do that and push to the main in github

## Requirements as formulas

```json
{
 "constraints": [
  {
   "name": "boom length",
   "text": "boom length 1000 mm (requirements.json)",
   "expr": "L",
   "op": "==",
   "limit": 1000,
   "tol": 0.01,
   "units": "mm"
  },
  {
   "name": "bending stiffness",
   "text": "bending stiffness relaxed by the user on 2026-11-21 to 40 N/mm (cantilever, 100 N tip load along z: tip deflection <= 2.5 mm); originally 50 N/mm (2 mm), unreachable with the catalogs (study 11-20-26 boom_1m_comp100N_k50_tors1deg10Nmm_hub50)",
   "expr": "abs(force_z) / abs(tip_uz)",
   "op": ">=",
   "limit": 40.0,
   "units": "N/mm"
  },
  {
   "name": "buckling",
   "text": "100 N under compression buckling load pin-pin",
   "expr": "buckling_load",
   "op": ">=",
   "limit": 100.0,
   "units": "N"
  },
  {
   "name": "torsional stiffness",
   "text": "torsional stiffness such that it will not rotate more than 1 degrees under 10 Nmm torque",
   "expr": "tip_twist_deg",
   "op": "<=",
   "limit": 1.0,
   "units": "deg"
  },
  {
   "name": "no failure under the torque",
   "text": "Hashin F < 1 under the 10 N mm torque (study step loadcases)",
   "expr": "F_torsion",
   "op": "<",
   "limit": 1,
   "units": "-"
  },
  {
   "name": "no failure: axial100N",
   "text": "ensure to check no material failure throughout the simulation runs: Hashin F < 1 under a 100 N axial compression tip load, linear, cantilever (interpreted as in the 11-19-26 study)",
   "expr": "F_axial100N",
   "op": "<",
   "limit": 1,
   "units": "-"
  },
  {
   "name": "coiling on hub",
   "text": "coil on 50 mm hub (taken as the hub RADIUS, as the user answered for the 11-19-26 study)",
   "expr": "F_hub",
   "op": "<",
   "limit": 1,
   "units": "-"
  }
 ]
}
```

## Result

- Best design: **L017/Y016/C008** (iteration 2): material L017, layup Y016 = [0/0/0/0] (h = 0.13999999999999999 mm), geometry C008 (R 9 mm, flattened width 462.1 mm), L 1000 mm
- Objective (minimize mass): 0.10552
- Tip stiffness FE 41.11927579240868 N/mm (beam theory 43.26); buckling 154.85698067316608 (B LOWER BOUND: path passed the cutoff 100 (= 1 x requirement) on the 4.5 mm B mesh still rising; stopped there by design); F_governing / F_hub: see objcon.json

## Verification records

- iteration 1 L028/Y002/C005: done, verdict agree Code for Project/11-21-26 (Orchestrator)/boom_1m_comp100N_k40_tors1deg10Nmm_hub50/iterations/it001/verification_S4R_4p5mm/it001_L028_Y002_C005_comparison.md
- iteration 13 L030/Y031/C005: done, verdict agree Code for Project/11-21-26 (Orchestrator)/boom_1m_comp100N_k40_tors1deg10Nmm_hub50/iterations/it013/comparison_S4R_4p5mm/it013_L030_Y031_C005_comparison.md
- iteration 2 L017/Y016/C008: done, verdict agree Code for Project/11-21-26 (Orchestrator)/boom_1m_comp100N_k40_tors1deg10Nmm_hub50/iterations/it002/verification_S4R_4p5mm/it002_L017_Y016_C008_comparison.md
- iteration 3 L028/Y024/C005: done, verdict agree Code for Project/11-21-26 (Orchestrator)/boom_1m_comp100N_k40_tors1deg10Nmm_hub50/iterations/it003/comparison_S4R_4p5mm/it003_L028_Y024_C005_comparison.md
- iteration 20 L030/Y095/C008: done, verdict agree Code for Project/11-21-26 (Orchestrator)/boom_1m_comp100N_k40_tors1deg10Nmm_hub50/iterations/it020/comparison_S4R_4p5mm/it020_L030_Y095_C008_comparison.md

## Convergence

```json
{
 "1": {
  "ok": true,
  "size": 4.5,
  "fine": 2.7,
  "dk": 0.0021048302043131795,
  "dF": 0.04643875280049081,
  "F_coarse": 0.026086300912905334,
  "F_fine": 0.027297716192478963,
  "F_floor": 0.5,
  "F_low": true
 },
 "2": {
  "ok": true,
  "size": 4.5,
  "fine": 2.7,
  "dk": 0.001112872410613086,
  "dF": 0.04242785542162408,
  "F_coarse": 0.001739911389278276,
  "F_fine": 0.0016660906804075403,
  "F_floor": 0.5,
  "F_low": true
 }
}
```

## Best design in numbers (iteration 2, final/objcon.json)

| Requirement | Value | Limit | Status |
|---|---|---|---|
| Mass (objective) | 105.5 g | minimize | - |
| Bending stiffness (100 N tip load) | 41.12 N/mm (tip 2.43 mm) | >= 40 N/mm (<= 2.5 mm) | met, 2.8 % margin |
| Pin-pin buckling | >= 154.9 N (lower bound, path still rising at the cutoff) | >= 100 N | met |
| Tip twist under 10 N mm | 0.00051 deg | <= 1 deg | met |
| Hashin, static 100 N | 0.0017 | < 1 | met |
| Hashin, 10 N mm torque | 1.1e-9 | < 1 | met |
| Hashin, 100 N axial compression | 9.7e-7 | < 1 | met |
| Hashin, flattening (governing) | 0.81 | < 1 | met |
| Coiling on 50 mm hub radius (F_hub) | 0.913 | < 1 | met |

Mesh convergence (4.5 -> 2.7 mm): stiffness 0.11 %, F 4.2 %. Abaqus S4R (1 CPU) reproduces the best
design in all three load cases: static tip uz -0.13 %, torsion twist +0.24 %, axial 100 N ux 0.00 %.

## History of the search (ledger.csv)

- Origin: study 11-20-26 boom_1m_comp100N_k50_tors1deg10Nmm_hub50 showed that 50 N/mm (2 mm) is not
  reachable by any coilable catalog design (FE maximum 44.3 N/mm; larger sections fail on
  flattening/coiling). The user relaxed the stiffness to 40 N/mm on 2026-11-21; this new study re-screened
  the full catalog (716,400 combinations; 241 pass, all corrugated C005/C008).
- Search order: lightest untried TOP design first (mass is the objective), each FE result updating the
  stiffness calibration (FE/beam theory 0.88-0.98).
- it001 L028 [0/30/0] on C005 (3 plies, 80.8 g) was the lightest candidate but reached only 39.26 N/mm:
  3-ply laminates are just short of 40 N/mm.
- it002 L017 [0/0/0/0] on C008 (4 plies, 105.5 g) is the lightest feasible design and stayed best.
- it003-it020: all heavier (107.7-133.0 g); 15 more feasible designs (k 40.1-44.3 N/mm), it016/it019
  (L030 Y034/Y038, 39.66 N/mm) infeasible. Mirror layups gave identical results (it003/it004, it007/it010, ...).
- study.py recommended STOP at it020 (best improved < 1 % over the last 15 iterations).

## Limitations

- Stiffness margin is small (2.8 %); the FE agrees with Abaqus to 0.13 %, but catalog stiffnesses are mean
  values, so manufacturing variability (fibre volume, ply thickness) could push it below 40 N/mm.
- Buckling is a lower bound (path stopped at the 100 N cutoff while still stable); no Abaqus buckling
  verification (pinned ends not mapped by the exporter).
- Catalog strengths are mean values; thin-ply in-situ strengths not used. F_hub is flange-only exact CLT
  (no contact, transition zone or web/tab). Static load cases are linear.
- F_governing 0.81 and F_hub 0.913 come from flattening/coiling, the tightest strength margins.

## Pending verifications

None required: 5 Abaqus verifications (it001, it002 all cases, it003, it013, it020), all agree; the
minimum of 5 is met. Optional: a 2.25 mm mesh comparison to close the end-zone curvature differences
noted by the comparator.
