# Boom design study: ts_1m_buck5N_opp2cm_hub40

## Prompt

> 1 m long tape-spring boom, must have buckling strength above 5N under axial compression when under pin/pin boundary conditions, must have transverse stiffness in the direction of opposite sense bending such that it does not deflect more than 2 cm under a 5N load if clamped at the root, coils on a 40 mm hub

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
   "text": "must have transverse stiffness in the direction of opposite sense bending such that it does not deflect more than 2 cm under a 5N load if clamped at the root (k >= 5 N / 20 mm = 0.25 N/mm)",
   "expr": "abs(force_z) / abs(tip_uz)",
   "op": ">=",
   "limit": 0.25,
   "units": "N/mm"
  },
  {
   "name": "buckling",
   "text": "must have buckling strength above 5N under axial compression when under pin/pin boundary conditions",
   "expr": "buckling_load",
   "op": ">=",
   "limit": 5.0,
   "units": "N"
  },
  {
   "name": "coiling on hub",
   "text": "coils on a 40 mm hub (radius, confirmed by the user)",
   "expr": "F_hub",
   "op": "<",
   "limit": 1,
   "units": "-"
  }
 ]
}
```

## Result

- Best design: **L006/Y001/T014** (iteration 2): material L006, layup Y001 = [0/0/0] (h = 0.10499999999999998 mm), geometry T014 (R 20 mm, flattened width 79.94 mm), L 1000 mm
- Objective (minimize mass): 0.0128084
- Tip stiffness FE 0.30553431703367845 N/mm (beam theory 0.3146); buckling 29.922971494344562 (B LOWER BOUND: path passed the cutoff 15 (= 3 x requirement) still rising; stopped there by design); F_governing / F_hub: see objcon.json

Material L006 = IM7 / Solvay MTM45-1 epoxy (NCAMP), rho 1530 kg/m^3, 0.035 mm plies, three 0 deg plies (h 0.105 mm).
Section T014: circular-arc tape spring, R 20 mm, flattened width 79.94 mm (section 39.9 mm wide x 28.3 mm deep). Mass 12.81 g.

| Constraint | Value | Limit | Margin (g_rel) |
|---|---|---|---|
| Tip stiffness, opposite-sense bending, clamped root (OpenSees) | 0.3055 N/mm (tip uz 16.36 mm at 5 N) | >= 0.25 N/mm (<= 20 mm) | +22% |
| same, Abaqus S4R (it002 verification) | 0.3008 N/mm (tip uz 16.62 mm) | >= 0.25 N/mm | +20% |
| Axial buckling, pinned-pinned | >= 29.92 N (lower bound, path still rising at the cutoff) | >= 5 N | > 5x |
| No failure under the 5 N load (F_sim, Hashin 2D) | 0.0046 (fibre compression, ply 1 bottom, facet 1400) | < 1 | |
| F_governing = coiling (flattening the flange from R 20 mm) | 0.1493 (matrix tension) | < 1 | -85% |
| F_hub, coiled on the 40 mm radius hub | 0.2081 | < 1 | -79% |
| Length | 1000 mm | 1000 mm | |

Buckling of the best design: step A (ShellNLDKGQ stability scan) critical 51.06 N; step B (ASDShellQ4 imperfect path, amplitude 0.1 t, mode A) stopped by design at the cutoff 15 N = 3 x requirement with the path still rising (29.92 N reached).

## Verification records

- iteration 1 L038/Y001/T014: done, verdict agree Code for Project/11-06-26 (Orchestrator)/ts_1m_buck5N_opp2cm_hub40/iterations/it001/it001_L038_Y001_T014_comparison.md
- iteration 13 L021/Y006/T014: done, verdict agree Code for Project/11-06-26 (Orchestrator)/ts_1m_buck5N_opp2cm_hub40/iterations/it013/it013_L021_Y006_T014_comparison.md (recorded twice: the first verify-result was overwritten by a concurrent `record 15`; this report was generated before the re-record)

All five Abaqus/Standard 2026 runs (S4R, 5 mm, 1 CPU, via run_abaqus.py) agree: OpenSees (ASDShellQ4) is uniformly 1.6-2.2% stiffer in tip deflection (k ratios 1.016-1.021), fibre-direction ply stress within ~1%. Recurring CHECK items, judged non-model by the comparator: (1) the curvature columns in `<job>_odb.npz` are stored as [k22, k11, k12] but labelled SK1, SK2, SK3, so the tool's kxx/kyy rows and curvature plots compare the wrong components (with the columns swapped they agree, interior scale 1.00-1.02); (2) kxy, M11, M22, N22, rz differences confined to the 1-3 element rows next to the rigid ends.
- iteration 2 L006/Y001/T014: done, verdict agree Code for Project/11-06-26 (Orchestrator)/ts_1m_buck5N_opp2cm_hub40/iterations/it002/it002_L006_Y001_T014_comparison.md
- iteration 3 L021/Y001/T015: done, verdict agree Code for Project/11-06-26 (Orchestrator)/ts_1m_buck5N_opp2cm_hub40/iterations/it003/it003_L021_Y001_T015_comparison.md
- iteration 19 L004/Y001/T014: done, verdict agree Code for Project/11-06-26 (Orchestrator)/ts_1m_buck5N_opp2cm_hub40/iterations/it019/it019_L004_Y001_T014_comparison.md

## Convergence

```json
{
 "1": {
  "ok": false,
  "size": 5.0,
  "fine": 3.0,
  "dk": 0.008247002103719092,
  "dF": 0.16810038134322136
 },
 "2": {
  "ok": true,
  "size": 5.0,
  "fine": 3.0,
  "dk": 0.008152824558644634,
  "dF": 0.04082992277570652
 }
}
```

Iteration 1 (5 mm -> 3 mm) did not converge in F_sim (16.8%, clamp boundary layer; stiffness 0.8%). Iteration 2 (the best design) converged: stiffness 0.82%, F_sim 4.1%.

## History of the search (ledger.csv)

- 20 iterations, tape springs only (user's choice), stop rule: best improved < 1% over the last 15 iterations.
- it001 L038/Y001/T014 (12.64 g, lightest screened) missed the stiffness by 1% (0.2475 N/mm); it002 L006/Y001/T014 on the same section passed at 12.81 g and stayed the best.
- it003 L021/Y001/T015 (EXPLORE, second section): feasible at 13.11 g.
- it004-it020: every remaining TOP candidate on T014 (L005, L010, L012, L009, L021 with the eight [0/theta/0] layups, L011, L001, L002, L004, L017). All feasible, 12.89-13.23 g. The section and the thickness (3 plies, 0.105 mm, the thinnest layups in the catalog) fix the mass; materials differ only by density, so no candidate could beat L006 (rho 1530) on T014.
- Off-axis middle plies (L021 Y002-Y008) cut the stiffness (0.428 -> 0.293-0.313 N/mm) without changing F_governing or F_hub (both from the 0 deg outer plies).
- Closest designs: it004/it005/it006 (L005, L010, L012) at 12.89 g, +0.65%.
- Calibration: FE/beam-theory stiffness ratio 0.97-0.99 (median 0.975 over 20 runs). Buckling estimate not calibrated: every B run after it002 is a lower bound at the cutoff (by design), and the screen's estimate (about 160 N for T014) is about 3x the step-A value (51 N).

## Limitations and notes

- Buckling values are lower bounds: step B stops at 3 x the requirement (study.py BUCKLING_CUTOFF, added this session with the user's OK). Step A on T014 gives 51 N; designs after it002 on T014 reuse the it002 step-A mode as the imperfection shape (no own A crossing).
- Linear analysis for the stiffness requirement (tip deflection 16.4 mm on 1 m, 1.6%); geometric nonlinearity in opposite-sense bending is not included.
- Coiling check: flattening from R 20 mm and bending to the 40 mm hub radius, Hashin 2D; no creep / stowage-time effects.
- OpenSees is 1.6% stiffer than Abaqus S4R; with the Abaqus value the stiffness margin is still +20%.
- Tool issue for the user (verification tools are read-only to the orchestrator): `.claude/verification/odb_extract.py` / `compare_results.py` mislabel the section-curvature components (SK1/SK2 swapped) in Abaqus 2026 extracts; also the rel. RMS column divides by ~0 at the fixed reference point.
- The study's state recorded a historical regression line (T12 5 mm h/L 4.1e-3) from study init on 2026-11-06; the regression suite passed 349/349 on 2026-11-07 after this session's study.py change.
- No pending verifications.
