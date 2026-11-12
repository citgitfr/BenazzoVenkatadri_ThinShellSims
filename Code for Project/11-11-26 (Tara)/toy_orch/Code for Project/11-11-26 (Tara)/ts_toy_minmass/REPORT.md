# Boom design study: ts_toy_minmass

## Prompt

> Objective: Find a boom with minimum mass
Constraints:
- Tape spring cross section
- 1 meter length
- Cantilever boom (clamped at one end, free at the other)
- Must withstand a transverse tip load of 1 N in opposite-sense bending with a maximum tip deflection of 2 cm and no material failure - if you end up doing a buckling analysis to determine whether the boom will buckle under these loads, do phase B of the buckling analysis only on the perfect boom with no imperfections, and I don't need to know the buckling moment (I only need to know whether the 1 N load will induce buckling, so if you get past 1 N without buckling and therefore with the tip deflection satisfying the requirement, you can stop the buckling analysis)
- Must withstand an axial extension load of 10 N without material failure
- Must coil around a hub with a 4 cm radius without material failure (the code for this should be in the failure-check skill)
- Choose from the materials, layups, and geometries in the Tape Spring Baseline folder only - do not try any others

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
   "text": "transverse tip load of 1 N in opposite-sense bending with a maximum tip deflection of 2 cm (k >= 1 N / 20 mm = 0.05 N/mm), no material failure",
   "expr": "abs(force_z) / abs(tip_uz)",
   "op": ">=",
   "limit": 0.05,
   "units": "N/mm"
  },
  {
   "name": "buckling",
   "text": "the 1 N opposite-sense tip load must not induce buckling: root moment 1 N x 1000 mm = 1000 N mm; phase B only, perfect boom, stop once past it",
   "expr": "buckling_load",
   "op": ">=",
   "limit": 1000,
   "units": "N mm"
  },
  {
   "name": "coiling on hub",
   "text": "must coil around a hub with a 4 cm radius without material failure",
   "expr": "F_hub",
   "op": "<",
   "limit": 1,
   "units": "-"
  }
 ]
}
```

## Result

- Best design: **L001/Y001/T001** (iteration 1): material L001, layup Y001 = [0/0/0] (h = 0.10499999999999998 mm), geometry T001 (R 20 mm, flattened width 62.83 mm), L 1000 mm
- Objective (minimize mass): 0.0103985
- Tip stiffness FE 0.11632950297024672 N/mm (beam theory 0.1187); buckling 1037.4733197546968 (B LOWER BOUND: path passed the cutoff 1000 (= 1 x requirement) still rising; stopped there by design [perfect boom (zero imperfection amplitude), B only: user request]); F_governing / F_hub: see objcon.json

## Verification records

- iteration 1 L001/Y001/T001: done, verdict agree Code for Project/11-11-26 (Tara)/ts_toy_minmass/iterations/it001/it001_L001_Y001_T001_S4R_5mm_verification.md
- iteration 6 L002/Y001/T003: pending, verdict None 

## Convergence

```json
{
 "1": {
  "ok": true,
  "size": 5.0,
  "fine": 3.0,
  "dk": 0.007247866776966649,
  "dF": 0.09222386105198144
 }
}
```

## Search history

- 27 toy combinations (3 materials x 3 layups x 3 tape-spring geometries). 19 were rejected by the screen on exact
  checks: hub coiling (exact CLT Hashin; every L003 row, every T002 row, Y002 on T001) and beam-theory stiffness
  (Y003 on T001, every T002 row). The fold-moment buckling estimate was not used to reject (user decision; it is a
  post-snap lower bound, about 12 N mm against the 1000 N mm requirement).
- All 8 screened candidates were run (it001-it008) in mass order, with a new geometry (it002, T003) and a new
  material (it003, L002) in the first three iterations. All 8 are feasible. it001 L001/Y001/T001 (10.40 g) is the
  lightest; the others are 10x (T003), 33x (Y002 on T003) or 1000x (L002) heavier.
- Buckling on every design: phase B, perfect boom, stopped at the 1000 N mm cutoff while still rising (user
  request). The buckling calibration was never updated (only peaks calibrate; every value is a lower bound).
- Sanity flags it002, it005, it006, it008: FE stiffness 48% below beam theory on the 628 mm wide T003 tape with
  all-0 plies (section distortion; see iterations/it002 and it005 SANITY_NOTE.md). [90/90/90] on T003 (it004, it007)
  stays within 5%. The flags do not affect the optimum.
- 10 N axial extension: checked for every iteration with toy_orch_tools/axial_check.py (not a study.py load case);
  max F 5.9e-6 (it004/it007), 3.9e-7 for it001.

## Verification

- it001: Abaqus static agrees (tip deflection 2.6% more compliant in Abaqus, S4R vs ASDShellQ4; ply stresses within
  2.2%). Extra Abaqus buckling on the perfect geometry (../../../../ab/it001/): LBA 4336 N mm, Riks limit point
  1395 N mm, nonlinear preloads all stop near 1400 N mm.
- it006: scheduled after its sanity flag; script written, NOT run (user: Abaqus only for a design better than it001).
  The 5-verification minimum was waived with --force-reason for the same reason.

## Limitations

- Perfect geometry by instruction: the buckling margin (Abaqus snap 1395 vs 1000 N mm) would shrink with
  imperfections. Uniform root moment applied along the whole boom (conservative for a tip load).
- Coiling by exact CLT of the flattened, hub-bent flange (no transition zone, no contact); mean strengths.
- The comparator found a bug in .claude/verification compare_results.py / odb_mock.py (curvature components
  paired kxx<->SK1 instead of SK2); not fixed (needs user approval).
- Sandbox: orchestrator copy at Code for Project/11-11-26 (Tara)/toy_orch/.claude with the toy catalogs; changes in
  toy_orch_tools/SANDBOX_CHANGES.md. Regression record copied with the skills shows a pre-existing T12 failure line.

Full narrative: Code for Project/11-11-26 (Tara)/ts_toy_minmass_REPORT.pdf
