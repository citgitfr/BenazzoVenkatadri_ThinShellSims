# Boom design study: boom_1m_comp50N_k10_tors1deg_hub40

## Prompt

> 1 m long, any cross-section, 50 N under compression buckling load pin-pin, transverse bending stiffness such that no more than 5 mm deflection under 50 N, torsional stiffness such that it will not rotate more than 1 degrees under 1 Nmm torque, include any layups and materials, coil on 40 mm hub, ensure to check no material failure throughout the simulation runs.

-do not modify any files outside of the current folder
-do not use more than 16 CPUs with abaqus anlaysis
-give me an update every 3 hours

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
   "text": "transverse bending stiffness such that no more than 5 mm deflection under 50 N (cantilever, tip load along z, user answer 2026-11-19): k >= 50 N / 5 mm = 10 N/mm",
   "expr": "abs(force_z) / abs(tip_uz)",
   "op": ">=",
   "limit": 10.0,
   "units": "N/mm"
  },
  {
   "name": "buckling",
   "text": "50 N under compression buckling load pin-pin",
   "expr": "buckling_load",
   "op": ">=",
   "limit": 50.0,
   "units": "N"
  },
  {
   "name": "torsional stiffness",
   "text": "torsional stiffness such that it will not rotate more than 1 degrees under 1 Nmm torque",
   "expr": "tip_twist_deg",
   "op": "<=",
   "limit": 1.0,
   "units": "deg"
  },
  {
   "name": "no failure under the torque",
   "text": "Hashin F < 1 under the 1 N mm torque (study step loadcases)",
   "expr": "F_torsion",
   "op": "<",
   "limit": 1,
   "units": "-"
  },
  {
   "name": "no failure: axial50N",
   "text": "ensure to check no material failure throughout the simulation runs: Hashin F < 1 under a 50 N axial compression tip load, linear, cantilever (user answer 2026-11-19)",
   "expr": "F_axial50N",
   "op": "<",
   "limit": 1,
   "units": "-"
  },
  {
   "name": "coiling on hub",
   "text": "coil on 40 mm hub (radius, user answer 2026-11-19)",
   "expr": "F_hub",
   "op": "<",
   "limit": 1,
   "units": "-"
  }
 ]
}
```

## Result

- Best design: **L021/Y001/R014** (iteration 20): material L021, layup Y001 = [0/0/0] (h = 0.10499999999999998 mm), geometry R014 (R 78.2 mm, flattened width 237.8 mm), L 1000 mm
- Objective (minimize mass): 0.0417353
- Tip stiffness FE 12.025151587722164 N/mm (beam theory 12.36); buckling 50.14450173246996 (B LOWER BOUND: path passed the cutoff 50 (= 1 x requirement) on the 5 mm B mesh still rising; stopped there by design); F_governing / F_hub: see objcon.json

## Verification records

- iteration 1 L028/Y001/M008: done, verdict agree Code for Project/11-19-26 (Orchestrator)/boom_1m_comp50N_k10_tors1deg_hub40/iterations/it001/it001_L028_Y001_M008_S4R_2p2mm_verification.md
- iteration 13 L006/Y002/C003: done, verdict agree Code for Project/11-19-26 (Orchestrator)/boom_1m_comp50N_k10_tors1deg_hub40/iterations/it013/it013_L006_Y002_C003_S4R_4p5mm_verification.md
- iteration 19 L028/Y001/R014: done, verdict agree Code for Project/11-19-26 (Orchestrator)/boom_1m_comp50N_k10_tors1deg_hub40/iterations/it019/it019_L028_Y001_R014_S4R_5mm_verification.md
- iteration 20 L021/Y001/R014: done, verdict agree Code for Project/11-19-26 (Orchestrator)/boom_1m_comp50N_k10_tors1deg_hub40/iterations/it020/it020_L021_Y001_R014_S4R_5mm_verification.md
- iteration 31 L021/Y017/R014: done, verdict agree Code for Project/11-19-26 (Orchestrator)/boom_1m_comp50N_k10_tors1deg_hub40/iterations/it031/it031_L021_Y017_R014_verification_report.md

## Convergence

```json
{
 "1": {
  "ok": true,
  "size": 2.2,
  "fine": 1.32,
  "dk": 0.0003495215483637626,
  "dF": 0.034253505657824146
 },
 "19": {
  "ok": true,
  "size": 5.0,
  "fine": 3.0,
  "dk": 8.160197640472155e-05,
  "dF": 0.13067073036938393,
  "F_coarse": 0.03829144403963542,
  "F_fine": 0.04329501499919297,
  "F_floor": 0.5,
  "F_low": true
 },
 "20": {
  "ok": true,
  "size": 5.0,
  "fine": 3.0,
  "dk": 0.00022289982902945482,
  "dF": 0.11535365721240654,
  "F_coarse": 0.019894699457308443,
  "F_fine": 0.02218962579885065,
  "F_floor": 0.5,
  "F_low": true
 }
}
```

## Best design in detail (iteration 20, from objcon.json / study.py record)

TRAC R014 (two R 78.2 mm flanges on a bonded web, flattened flange width 237.8 mm), M40JB / TP80EP thin-ply
(L021), [0/0/0] (3 x 0.035 mm = 0.105 mm; web = doubled laminate), L = 1000 mm, **mass 41.7 g**.

| Constraint | Value | Limit | Margin (g_rel) |
|---|---|---|---|
| Tip stiffness (cantilever, 50 N along z) | 12.03 N/mm (4.16 mm deflection) | >= 10 N/mm | -0.20 |
| Buckling, pin-pin compression | >= 50.1 N (B LOWER BOUND, path still rising when stopped at the 1.0x cutoff on the 5 mm design mesh) | >= 50 N | -0.003 |
| Tip twist, 1 N mm torque (rigid tip fitting) | 0.0378 deg | <= 1 deg | -0.96 |
| Hashin F, governing (static 50 N case, all cases and flattening) | 0.042 | < 1 | -0.96 |
| Hashin F, torque case | 1.0e-7 | < 1 | ~-1 |
| Hashin F, 50 N axial case | ~5e-6 | < 1 | ~-1 |
| F_hub (flattened and bent onto the 40 mm radius hub, exact CLT) | 0.110 | < 1 | -0.89 |

- ABD check: A 4.9e-18, B 1.7e-16, D 4.4e-3 (expected ~1/layers^2) - OK.
- Mesh convergence (5 -> 3 mm): tip stiffness 0.02 %; F_sim 0.0199 -> 0.0222 (+11.5 %, passes the F < 0.5 floor,
  see Tool changes).
- Abaqus (S4R, 5 mm, 1 CPU): static, torque and axial cases all agree (tip uz -0.15 %, twist +0.94 %, axial ux 0.00 %).

## History of the search (ledger.csv, 35 iterations)

1. **Closed sections first (it001-it016).** The screen (St Venant torsion for open sections) rejected every open
   section on torsion, so the loop ran omegas (M008, M018, M021, M005) and corrugated booms (C003, C004) in M55J/PAEK
   (L028), M30SC/PEEK (L038) and IM7/MTM45-1 (L006). All 16 were feasible; the lightest was it001 L028/Y001/M008 at
   43.9 g (it003 M018 tied). Every design used the thinnest catalog laminate (3 x 0.035 mm): mass could only drop
   through a smaller section. Mirror layups ([0/-th/0] vs [0/th/0]) on the mirror-symmetric sections gave identical
   FE results to 1e-10 (it007 vs it005) and were skipped afterwards (recorded overrides).
2. **Lighter designs at the user's request (it017-it019, exploratory, user 2026-11-20).** A relaxed screen
   (`explore_lighter/`) supplied designs rejected only on estimates. it017 L011/M008 (42.8 g, k 7.24 N/mm) and
   it018 L028/M017 (36.5 g, k 5.13 N/mm) failed bending stiffness as predicted. it019 L028/R014 (open TRAC, 43.1 g)
   passed everything: FE twist 0.032 deg vs the screen's St Venant estimate of 109 deg (GJ 3400x higher), because
   the clamped root and the rigid tip fitting restrain warping (Vlasov). Abaqus confirmed the twist to 0.94 %.
3. **Screen fixed for warping (user-approved), TRAC search (it020-it035).** With Vlasov warping restraint in the
   screen, 1234 TRAC rows became candidates (all R014). it020 L021/R014 [0/0/0] (41.7 g) became the best design,
   4.9 % lighter than it001. it021-it035 ran the remaining R014 layups and the 4-ply [0/0/0/0] in eight materials
   (54.6-56.0 g): all feasible, none lighter. STOP: < 1 % improvement over 15 iterations.
4. **Calibration** (median FE/estimate over all runs): stiffness 0.97, twist 0.983 (dominated by closed sections; the
   Vlasov twist estimate is still ~1.7x stiff for the TRAC: it019 estimate 0.019 deg vs FE 0.032 deg), buckling 1.0
   (no limit points: every B run was stopped at the cutoff as a lower bound).

## Sanity flags and their causes

- **it021 [0/30/0], it031 [0/30/30/0], it032 [30/0/0/30] on R014:** FE/beam 1.024, 1.056, 1.057 vs the verified
  0.961. Cause (established): the unbalanced +30 deg plies couple extension and in-plane shear; the beam estimate
  uses 1/a11 (free shear), while the rigid ends restrain the shear, so the boom is stiffer. The FE/beam ratio peaks
  at 30 deg (it022 [0/45/0] 0.991, it023 [0/60/0] 0.980) and returns to 0.970 for the balanced [0/90/0] (it024).
  Abaqus reproduced it031's stiffness to 0.3 % and its bend-twist coupling (tip rx 0.021 rad, uy 0.41 mm under the
  50 N bending load). Not a model error; the flagged designs are heavier than the best anyway.

## Limitations that apply

- **Twist depends on the tip fitting.** The 0.038 deg of the best design assumes the torque is applied through a
  rigid fitting that stops the section from warping (the study's rigid end). With a tip free to warp the twist is
  larger (not computed). A closed omega (it001, 43.9 g, twist 0.00065 deg) does not depend on this.
- **Buckling margin unknown.** The B path was stopped as soon as it passed 50 N (50.1 N on it020, 51.3 N on it019);
  the true strength of the TRAC is above that but was not computed (no limit point reached). Pinned-end buckling is
  not mapped to the Abaqus export, so buckling was checked in OpenSees only. The 4-ply TRACs (>= 57.9-80 N) have
  more evidenced margin at ~33 % more mass.
- **Failure checks** are linear (static 50 N, torque, 50 N axial) plus exact-CLT coiling (flatten + hub). The
  nonlinear buckling path is not failure-checked (the skill does not save its stress fields). Catalog strengths are
  mean values; thin-ply in-situ transverse strength (higher) is not used.
- **Coiling** F_hub treats the flange flattened and bent to the hub (no contact, no transition zone, no web): keep
  margin; the TRAC web (double thickness) is not in F_hub.
- **First TRAC/CO Abaqus runs**: the TRAC (it019, it020, it031) and corrugated (it013) exports ran in Abaqus 2026 for
  the first time and agreed. The Abaqus scripts' own `_results.txt` "top-ply" stress line compares section point 18
  (web only) with the flange peak and shows false CHECKs; the comparator's point-by-point pairing is the valid check.

## Tool changes made during the study (user-approved, 2026-11-20; not yet committed)

- `run_abaqus.py`: Abaqus run folders on the short path `ME295/abaqus_runs/<iteration>_<time>/` (study paths hit the
  260-character limit), with a pointer file in the iteration folder.
- `study.py`: `choose --exploratory-screen` (designs rejected only on estimates, at the user's request); convergence
  F_sim check also passes when both peaks are below 0.5; a converged design better than the best becomes the best.
- `design_screen.py`: open-section twist with Vlasov warping restraint at both ends (`torsion.vlasov_tip`
  'restrained'), open torsion margin 0.85, St Venant kept in `GJ_stvenant_Nmm2`.
- `PROTOCOL.md`: the convergence rule text.

## Pending

- No verification is pending (5 agree: it001, it013, it019, it020, it031).
- Optional: a buckling run of it020 without the cutoff (true strength), and a free-warping tip torque case.
