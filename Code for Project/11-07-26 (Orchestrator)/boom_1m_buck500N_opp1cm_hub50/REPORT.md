# Boom design study: boom_1m_buck500N_opp1cm_hub50

## Prompt

> 1 m long boom of any cross-section or material, must have buckling strength above 500N under axial compression when under pin/pin boundary conditions, must have transverse stiffness in the direction of opposite sense bending such that it does not deflect more than 1 cm under a 50N load if clamped at the root, coils on a 50 mm radius hub. The layup cannot have all 0 degrees layers, it needs at least one off-axis ply as well

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
   "text": "must have transverse stiffness in the direction of opposite sense bending such that it does not deflect more than 1 cm under a 50N load if clamped at the root (k >= 50 N / 10 mm = 5 N/mm)",
   "expr": "abs(force_z) / abs(tip_uz)",
   "op": ">=",
   "limit": 5.0,
   "units": "N/mm"
  },
  {
   "name": "buckling",
   "text": "must have buckling strength above 500N under axial compression when under pin/pin boundary conditions",
   "expr": "buckling_load",
   "op": ">=",
   "limit": 500.0,
   "units": "N"
  },
  {
   "name": "coiling on hub",
   "text": "coils on a 50 mm radius hub",
   "expr": "F_hub",
   "op": "<",
   "limit": 1,
   "units": "-"
  }
 ]
}
```

## Result

- Best design: **L006/Y002/M008** (iteration 5): material L006, layup Y002 = [0/30/0] (h = 0.10499999999999998 mm), geometry M008 (R 12 mm, flattened width 250.9 mm), L 1000 mm
- Objective (minimize mass): 0.0417304
- Tip stiffness FE 5.215235147559599 N/mm (beam theory 5.486); buckling 528.7155266575146 (B LOWER BOUND: path passed the requirement 500 still rising, then the solver crawled (consecutive cut / slow steps); stopped there by design); F_governing / F_hub: see objcon.json

## Verification records

- iteration 1 L038/Y005/R014: done, verdict agree Code for Project/11-07-26 (Orchestrator)/boom_1m_buck500N_opp1cm_hub50/iterations/it001/it001_L038_Y005_R014_verification_report.md
- iteration 5 L006/Y002/M008: done, verdict agree Code for Project/11-07-26 (Orchestrator)/boom_1m_buck500N_opp1cm_hub50/iterations/it005/verification_S4R_2p2mm/it005_L006_Y002_M008_comparison.md
- iteration 4 L011/Y002/M008: done, verdict agree Code for Project/11-07-26 (Orchestrator)/boom_1m_buck500N_opp1cm_hub50/iterations/it004/verification_S4R_2p2mm/it004_L011_Y002_M008_comparison.md
- iteration 3 L038/Y035/M008: done, verdict agree Code for Project/11-07-26 (Orchestrator)/boom_1m_buck500N_opp1cm_hub50/iterations/it003/verification_S4R_2p2mm/it003_L038_Y035_M008_comparison.md
- iteration 2 L006/Y035/M017: done, verdict agree Code for Project/11-07-26 (Orchestrator)/boom_1m_buck500N_opp1cm_hub50/iterations/it002/verification_S4R_3p5mm/it002_L006_Y035_M017_comparison.md

## Convergence

```json
{
 "1": {
  "ok": true,
  "size": 5.0,
  "fine": 3.0,
  "dk": 0.00032255226049571206,
  "dF": 0.07166398967604337
 },
 "3": {
  "ok": true,
  "size": 2.2,
  "fine": 1.32,
  "dk": 0.0005003458265877558,
  "dF": 0.006521580684428319
 },
 "4": {
  "ok": true,
  "size": 2.2,
  "fine": 1.32,
  "dk": 0.00048091445939979494,
  "dF": 0.022033069694129326
 },
 "5": {
  "ok": true,
  "size": 2.2,
  "fine": 1.32,
  "dk": 0.0004753988830747957,
  "dF": 0.023875964891888923
 }
}
```

## Best design in numbers (iteration 5, OpenSeesPy, 2.2 mm mesh, mesh-converged)

| requirement | result | limit | margin |
|---|---|---|---|
| tip deflection, 50 N opposite-sense, clamped root | 9.59 mm (k = 5.215 N/mm) | <= 10 mm | 4.3% |
| buckling, pin/pin axial compression | >= 528.7 N (OpenSees B, lower bound); Abaqus LBA mode 1 = 546.55 N | >= 500 N | 5.7% (lower bound), 9.3% (LBA) |
| Hashin failure index at the 50 N load | 0.41 | < 1 | |
| coiling on the 50 mm hub (Hashin) | 0.49 | < 1 | |
| mass | 41.7 g | minimise | |

Cross-section M008 (omega / lenticular: two shells of R = 12 mm arcs bonded at two flat webs that carry the
doubled, mirrored laminate), 86 mm wide, 77 mm high; layup Y002 = [0/30/0] of L006 IM7/MTM45-1, 3 x 0.035 mm.
Figures: `figures/summary_requirements.png` (all five designs against each requirement) and
`figures/best_design.png` (section and layup), drawn by `figures/plot_summary.py` from the iteration files.

## History of the search (ledger.csv)

| it | design | mass | outcome | what it taught |
|---|---|---|---|---|
| 1 | TRAC L038/Y005/R014, [0/90/0] | 40.4 g | infeasible: B stalled at 49 N | TRAC flanges buckle locally (mode 0.84 local distortion); the screen's TRAC estimate was recalibrated (knock-down 0.027) and TRAC/OM/CO buckling estimates were added to the screen |
| 2 | OM L006/Y035/M017, [0/0/90/0/0] | 57.9 g | infeasible: k = 3.94 N/mm | M017 is too flexible in opposite-sense bending |
| 3 | OM L038/Y035/M008, [0/0/90/0/0] | 68.6 g | feasible, B >= 802 N | M008 is stiff enough; thickness could come down |
| 4 | OM L011/Y002/M008, [0/30/0] | 42.8 g | feasible, B >= 637.5 N | 0.105 mm on M008 works; FE/estimate stiffness 0.954 |
| 5 | OM L006/Y002/M008, [0/30/0] | 41.7 g | feasible, best | lightest design the screen predicts feasible |

Stiffness calibration (FE / beam estimate): median 0.926 over 5 runs (0.95 for M008 at 0.105 mm). Buckling:
no calibration (every feasible value is a lower bound).

**Why the study stopped at iteration 5** (user decision, 2026-11-11): every untried design is heavier than
iteration 5 except 12 screened designs, all predicted to fail stiffness after calibration (<= 4.24 N/mm vs
5 N/mm; e.g. L038/Y002/M008, 41.2 g; L028/Y002/M017, 36.6 g), and the mirror layup [0/-30/0], which is
equivalent. The protocol's 20-iteration minimum and verification spacing were therefore not applied.

## Verification summary

Five Abaqus S4R runs on the same meshes, compared by OpenSeesAbaqusResultsComparator: all **agree**. Tip
displacement within 0.04% (it3-it5) and 0.16% (it2); peak ply stresses within 0.6% (1.2% it3). Every CHECK line
is a small quantity next to the clamp or a rigid end (kxy about -5.5% at the root, web s2/t12 < 0.5 MPa, drilling
rz). The Abaqus scripts' own "top-ply top-surface" line is a false alarm (it reads a web section point against
the flange peak).

Abaqus buckling check of iteration 5 (`iterations/it005/abaqus_buckling/`): linear buckling (*BUCKLE, subspace,
30 vectors) gives mode 1 at **546.55 N**, with more than ten local modes within 1.4% above it. The Riks run did
not give a strength (arc length cut to its minimum at 0.1 N: a set-up problem of the Riks step, which had not
been run in real Abaqus before).

## Limitations

- **Buckling margin is thin and imperfection-sensitive.** OpenSees reached 528.7 N (a lower bound: the
  solver slowed down sharply there) and Abaqus LBA of the perfect boom is 546.55 N, with a dense cluster of
  local modes. Closed thin shells with clustered local modes are usually imperfection-sensitive; the strength of
  a real boom could be below 500 N. Iterations 4 (>= 637.5 N, 42.8 g) and 3 (>= 802 N, 68.6 g) have more margin.
  Iteration 4 crawled at the same end shortening (0.15-0.17 mm) as iteration 5, which suggests the same local
  buckle.
- B paths were seeded with the step-A mode of iteration 3 (0/90 surrogate section), not with each design's own
  mode (ShellNLDKGQ takes 0/90 plies only), amplitude 0.1 h.
- Stiffness margin 4.3%; no knock-down or manufacturing tolerance applied.
- Only catalog materials, layups (3-5 plies) and sections were considered; the lightest laminate is 3 x 0.035 mm.

## Open items

- Get the Abaqus Riks step of `buckling_to_abaqus.py` to run (load or displacement control instead of arc
  length, or a larger initial increment) and repeat the it005 check, ideally with a few imperfection amplitudes.
- If the Riks strength of iteration 5 is below 500 N, iteration 4 is the fallback (42.8 g, verified, mesh-converged).
