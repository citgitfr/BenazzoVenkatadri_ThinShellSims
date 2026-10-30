---
name: shell-buckling
description: Buckling strength of thin-shell booms (tape springs, TRAC, omega, CTM or any shell-mesh section) under compression, bending or any load combination in OpenSeesPy - estimate and buckling mode from the zero crossing of the lowest tangent-stiffness eigenvalue along the nonlinear path (ShellNLDKGQ; the OpenSees counterpart of the Abaqus "preload + eigenvalue" procedure), then the buckling strength from imperfection-seeded path following with ASDShellQ4 (Riks-type), with thin-walled section properties and Euler / flexural-torsional column formulas for checks. Use whenever a buckling load, buckling moment or buckling mode is asked for.
---

# shell-buckling

Scripts (this folder; import `../laminate-properties`, `../shell-mesh`, `../shell-bc-load`):
`shell_buckling.py` (library), `boom_buckling.py` (case-file CLI), `examples/*.json`.
Verification and study: `Code for Project/10-29-26 (Federico)/` (`BUCKLING_STUDY.md`,
`buckling_log.txt`, `verify_column_buckling.py`, `verify_column_path_B.py`,
`tape_spring_bending.py`). Units: N, mm, MPa.

## Run a case (preferred)
```
python boom_buckling.py case.json [--out DIR] [--only A|B]
```
```json
{"name": "tape_opp", "laminate": {"isotropic": {"E": 131000, "nu": 0.3, "t": 0.1}},
 "geometry": {"L": 200, "section": {"type": "arc", "R": 13.3, "b": 24.605}, "size": 3},
 "load": {"type": "bending", "axis": "y", "sign": 1},          // or {"type": "compression", "ends": "clamped"|"pinned"}
 "A": {"step": 0.005, "max": 0.2},                              // rotation [rad] or end shortening [mm]
 "B": {"step": 0.005, "max": 0.2, "amplitude": 0.01, "control": "disp"}}
```
Writes `<name>.json` (A critical value, B peak and path) and `<name>.png`.

## What OpenSees can and cannot do (verified 10/29/26, openseespy 3.8)
- No *BUCKLE, no Kg. `printA('-ret')` only with system FullGeneral (dense).
- `eigen` after a static step = eigenvalues of the current K_T. Use ARPACK
  with a unit mass on every DOF (M = I, `tangent_eigen`): 2 s at 12k DOFs.
  `-standard -symmBandLapack` is O(n^3) (> 20 min at 12k DOFs).
- **ASDShellQ4 -corotational**: complete nonlinear residual (path within
  -2.2 / +0.6 / +3.1% of thin-walled theory), but its tangent has NO
  geometric stiffness: eigenvalues of K_T do not see buckling, Newton
  slows near it (use KrylovNewton/BFGS), and displacement control of a
  buckling DOF (lateral deflection) diverges -> load control there.
- **ShellNLDKGQ**: tangent has geometric stiffness, but only for the
  facet-normal displacement: exact for flat plates/strips (Euler within
  0.3%), +7% (flexural-torsional) and +31% (flexural) for a tape-spring
  column, and a spurious early crossing in opposite-sense tape bending.
  Its residual is also wrong for the torsional column mode (+38%).
  An eigen call changes its element state (later steps fail or drift), so
  use `stability_scan` (fresh model per evaluation). 0/90 plies only.
- `rigidLink` + Transformation: wrong under rotation control (zero moment /
  divergence) and small-rotation only -> `sb.rigid_end` (corotational beam
  spokes) for loading/clamping ends.
- `Linear` algorithm leaves the ShellNLDKGQ K_T at K0 (lba uses Newton + dense difference).

## Method (report both A and B)
1. **A - estimate + mode** `sb.stability_scan(build, step, max_param)`:
   ShellNLDKGQ, `build()` returns the control dict; mu_min(K_T) along the
   path, coarse scan + regula falsi. Treat as an estimate (see above).
   `stability_path` (one path, eigen every step) is fine for axial columns.
   `lba(build, lam_small)`: classical K0/Kg, dense, <= 8000 DOFs.
2. **B - strength** `build_shell(mesh, lam, 'ASDShellQ4', mode, amplitude)` +
   `sb.imperfect_path(control, step, n_steps)`: imperfection = mode A scaled
   to 0.1-0.2 t (Leclerc & Pellegrino 2020: 0.2 t), rotation/end-shortening
   control for limit points (opposite-sense bending, local buckling),
   load control + Southwell for bifurcations with stable post-buckling.
   Check the path end: a peak followed by a falling branch is a buckling
   strength; a path that stops while rising is only a lower bound - say so.
3. Mesh convergence (two element sizes) and an analytical check where one
   exists: `sb.section_properties(sb.section_points(section), t)`,
   `sb.column_buckling(props, E, G, L, K_flex, K_tors)`, `sb.arc_closed_form`;
   tape-spring fold moments M+* = (1+nu) D alpha, M-* = -(1-nu) D alpha.

## Abaqus cross-check (ToDo 8)
```
python buckling_to_abaqus.py case.json [--element S4R|S4] [--mock]
abaqus cae noGUI=abaqus_<name>_buckling.py [-- <size> <S4R|S4>]     # on a machine with Abaqus
```
Case = shell-bc-load format (laminate, geometry, supports, loads = reference
load) + `"buckling": {scale, n_modes, preload_fractions, riks: {amplitude,
control, max_disp, max_lpf, max_inc}, monitor}` + `"reference": {label: value}`.
The script (model builder of abaqus-export: same mesh, KINEMATIC couplings for
rigid ends, consistent edge loads) runs (1) *BUCKLE (LBA), (2) nonlinear
preload f x LBA + *BUCKLE (Palmeri & Laurenzi / Leclerc & Pellegrino
"nonlinear buckling load"), (3) *IMPERFECTION (LBA mode 1) + Riks, and writes
`<job>_results.txt` with all values vs the references. Not yet run in
Abaqus: `--mock` only executes the model-building part on the stand-in API
(the keyword inserts were unit-tested on a sample keyword-block list).
Examples: `Code for Project/10-29-26 (Federico)/abaqus/*.json`.

## Report
Method, element, control, imperfection shape/amplitude, mesh/DOFs, A and
B values, the path end (peak + falling branch, or stalled), mesh change,
reference values with % differences, and the limitations above that apply.
