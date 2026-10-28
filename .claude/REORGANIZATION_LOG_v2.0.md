# Reorganization log: agents v1.0 -> skills + orchestrator v2.0

Date: 10/26/26. Done by Claude Code (Opus 5.5) for Federico.
Nothing committed. Code in `Code for Project/` and `.claude/agents_v1.0/` was
not modified (it stays the verified v1 record).

## What was created

```
.claude/skills/README.md                       overview, data flow, what replaces what
.claude/skills/laminate-properties/            1. catalog / ply constants + layup -> OpenSees constitutive definition, ABD
.claude/skills/shell-mesh/                     2. cross-section (flat, arc, lines+arcs, polyline) extruded + meshed -> component
.claude/skills/shell-bc-load/                  3. supports, load combinations, solvers, results .npz; JSON case runner; elastica.py
.claude/skills/shell-visualize/                4. deformed shape, curvature + stress/FI panels, PNG / window / .vtp
.claude/skills/failure-check/                  5. ply stresses in every element, Hashin 2D (paper Eq. 3) / Tsai-Hill, strength ratio
.claude/skills/abaqus-export/                  case JSON -> Abaqus/CAE script with embedded OpenSees reference (added 10/26)
.claude/skills/regression-tests/               re-runs all recorded test cases (run_regression.py, last_run_full.txt)
.claude/agents_v2.0/ThinShellOrchestrator.md   runs skills 1-5 in order, checks, reports
.claude/agents_v2.0/CompositeLaminaLibrarian.md  v1 librarian (literature work, kept as an agent), catalog path updated
.claude/REORGANIZATION_LOG_v2.0.md             this file
```
Each skill folder: `SKILL.md` (instructions, rules learned in v1) + one script.

## Regression results

See "Full-suite run" at the end and `.claude/skills/regression-tests/last_run_full.txt`.

Baselines: the v1 scripts were re-run unchanged first (smoke_shell.py,
plate_tip_load.py, verify_mesh_bc_load.py, plate_pure_moment_Mx.py,
plate_tip_load_laminate.py, the five 10-23 layup scripts). All their checks
pass and they reproduce the SUMMARY numbers. The independent
`test_cases/check large deformation plate/elastica_check.py` also reproduces
the README elastica table.

## Issues found

### A. Need your input
1. **Failure criterion: Hashin 2D, as in the paper (resolved 10/26).** The
   first version implemented Tsai-Hill because the paper (Benazzo &
   Pellegrino, AIAA SciTech 2025, AIAA 2025-0188) could not be accessed.
   With the PDF provided, skill 5 became `failure-check` with the paper's
   Eq. 3 (Hashin 2D, ref. [14] Reddy & Pandey 1987) as the default and
   Tsai-Hill kept as `--criterion tsai-hill`. Two points to confirm:
   - **Typos in the paper's matrix-compression term.** Printed:
     `F_mc = 1/4 (s22/S23)^2 + Yc^2 s22/(4 S12^2 Yc) - s22/S12 - (s12/S12)^2`.
     Hashin (1980) has `(s22/(2 S23))^2 + ((Yc/(2 S23))^2 - 1) s22/Yc + (s12/S12)^2`
     (S23, not S12, in the 2nd and 3rd terms, and + on the shear term). The
     standard form is implemented. If the paper's numbers were computed with
     the printed form, tell me and I will match it.
   - **S23 is not measured** (not in Table 1 or the catalog). Default
     S23 = Yc/2, which reduces F_mc to `(s22/Yc)^2 + (s12/S12)^2`; `--S23`
     overrides it.
   - Only the mode matching the stress sign is active (s11 >= 0: fibre
     tension, else fibre compression; s22 >= 0: matrix tension, else matrix
     compression); F_Hashin = max of the active modes. The paper's "max of
     the four" would otherwise count, e.g., F_ft for a compressive s11.
   - The strength ratio R is solved per mode from a R^2 + b R = 1, so it stays
     exact with the linear s22 term of F_mc.
   - The paper's Table 1 (M30SC/PEEK, 55 um: E1 127 GPa, E2 5.8, G12 5.2,
     nu12 0.35, strengths 2819/2805/69/67/49 MPa) is not in the catalog; the
     strength labels are lost in the PDF text, so it was not added. The
     CompositeLaminaLibrarian agent can add it.
2. **Agents are not loaded from `agents_v1.0/` or `agents_v2.0/`.** Claude Code
   only loads subagents from `.claude/agents/`. git shows `.claude/agents/*`
   and `.claude/material_property_catalog/*` as deleted (renamed to
   `agents_v1.0/` and `memory.material_property_catalog/`, untracked). To use
   v2.0, copy `agents_v2.0/*.md` to `.claude/agents/`. **Done (10/26):**
   `.claude/agents/` now holds the two v2.0 agents (ThinShellOrchestrator,
   CompositeLaminaLibrarian); the v1.0 agents are kept in `agents_v1.0/`.
   Open a new Claude Code session to load them. Skills in
   `.claude/skills/<name>/SKILL.md` are loaded automatically.

### B. Problems in the v1 setup that v2.0 fixes (no v1 result is affected)
3. **Ply orientation on curved sections.** v1 (`ply_properties.local_axis`,
   `layup.add_laminate_elements`) gives every element the global vector
   (cos t, sin t, 0); ASDShellQ4 projects it on the facet. On a tilted facet
   that changes the ply angle: on an R = 50 mm, b = 100 mm tape spring a 45 deg
   ply became up to 14.8 deg off at the arc edges (T16). All v1 laminate runs
   were flat plates, so no v1 result is wrong, but tape-spring/TRAC laminates
   would have been. shell-mesh now computes the `-local` vector per facet from
   its own frame (e1 along x, e2 across the section), identical to v1 on flat
   plates.
4. **Element count of laminates.** v1 `layup.py` made one coincident element
   per ply (8 per facet for [0_2/90_2]s); merging same-angle plies (10-23
   takeaway 14, done by hand only in the L1-L4 scripts) is now the default:
   2 per facet. Same results to 1e-6 (T14, T15) and to 1e-8 at large
   deflection (T07); the 2.5 mm tip-load model drops from 128k to 32k
   elements. `--no-merge` keeps the v1 behaviour.
5. **EAS with a single element per facet.** v1 always added `-noeas`. v2 keeps
   ASDShellQ4's EAS modes when a facet has only one element (single-angle
   laminates such as [30]4 or [0]n, isotropic shells) and adds `-noeas` only
   with coincident elements, where it is required. Single-angle laminates
   therefore differ from a v1 run on coarse meshes (v1 noted 5% at 20 x 2 for
   [30]4); `eas=False` reproduces v1.
6. **Hard-coded Python path** (Tara's) in the v1 agents and a hard-coded
   `D:/Users/tvenkata/...` path in the usage text of `layup_0_0_90_90_s.py`.
   The v2 files list both env paths and the scripts find each other through
   relative paths.
7. **Repeated code** in v1: three `top_surface_stresses()` variants
   (homogeneous, laminate with an N_SUB correction, plate_tip_load), three
   copies of the tip-load application, hard-coded Q11/Q12/D values in
   `plate_pure_moment_Mx.py` and `plate_tip_load_laminate.py`, one ply/layup
   script per material and layup. In v2 stresses come from one place
   (element strains + CLT kinematics), which needs no layer-integration
   correction.

### C. Notes on the test cases
8. `10-23 SUMMARY.txt`: the ply thicknesses of the "[0/90/-30] (unequal
   thicknesses)" check were not recorded. T06 uses 0.10/0.20/0.15 mm; its D
   error is 0.53% (default 5 layers per ply), slightly above the "~0.4%" in
   the SUMMARY, which is consistent with 1/(15 layers)^2 = 0.44% times a
   thickness-distribution factor. Not a regression; tolerance set to 0.6%.
9. `10-26-26 (Federico and Tara)/` has no SUMMARY file; its cases were taken
   from the checks inside `plate_pure_moment_Mx.py` and
   `plate_tip_load_laminate.py` (and their printed v1 output).
10. The cantilever geometry of the 10-23 "per-ply vs single-element at large
    deflection" check is not recorded. T07 uses a 100 x 10 mm strip, 20 x 2
    mesh, 0.125 mm plies, tip pushed to 0.6 L, and compares per-ply against
    merged elements.
11. OpenSees `eleResponse(.., 'strains')` returns curvatures with the
    opposite sign to CLT (k = -w,xx); handled in shell-bc-load (checked
    against CLT in T14 and T18, beam theory in T13).
12. v1 `smoke_tests/gui_check.py` writes `smoke_tests/gui_check.png` as a
    side effect (already noted in the 10-23 SUMMARY).

### D. Material catalog
13. Not usable to build a ply (nu12 or G12 is NA): L010, L011, L012, L025,
    L029-L033; the skill stops with a message. No ply thickness: L013-L020
    (thickness must be given). No strengths (no failure check): L023, L027, L037.
14. Catalog G23 differs from E2/(2(1+nu23)) by more than 1% for L009, L016,
    L022, L034 (all already flagged in the catalog notes). The skill reports it
    and uses the relation; G23 does not enter the plane-stress shell stiffness.
15. `lamina_catalog_to_SI.py` still prints "PlyPropertyGenerator-ready";
    harmless, left unchanged (the catalog belongs to the librarian).

### E. Things to keep in mind when using v2.0
16. The failure-check strength ratio R is a load factor only for a
    linear analysis.
17. The maximum FI in clamped models sits at the clamp corners (e.g. the
    example tape spring), where the stresses are mesh-dependent; report it
    with a mesh-convergence check or look at the next locations in the
    ranking.
18. Curvature fields are changes from the initial shape (the tape spring's
    initial 1/R across the section is not included).

## Full-suite run

`python run_regression.py --full --log last_run_full.txt` (886 s on the VM):
**210 checks, 207 passed, 3 failed.** All three failures were in T12 (5 mm
large deflection), comparing every step with the saved v1 CSV. After a
re-run with a step-by-step path comparison (`last_run_T11_T12.txt`, 19/19
pass):

19. **T12, last step of the 5 mm sweep.** Steps 0-38 match the saved v1 run
    to 1e-8 in alpha and 2e-10 in h/L. Only step 39 differs: v1 needed one more
    step halving (v/L 0.745 -> 0.7475, alpha 6.8175), while v2 converged the
    halved step to v/L = 0.750 (alpha 6.9296). This is at the limit where
    Newton stops converging in both runs (SUMMARY: "Newton stops converging
    above alpha = 6.817"). Whether a step converges within 40 iterations there
    depends on round-off (v2 uses `constraints('Transformation')` and builds
    the model through different code). The physics is unchanged: v/L vs the
    wide-plate elastica at alpha = 0.5, 1, 2, 3, 5 is +2.1, +1.3, +0.7, +0.4,
    +0.2%, exactly the SUMMARY table (v/L 0.1484, 0.2775, 0.4635, 0.5759,
    0.6931). The 10 mm sweep matches the saved CSV at every step (2e-8).

Everything else matches v1 to the printed digits, and the analytical
references to the v1 percentages:

| Case (source) | v1 | v2 skills |
|---|---|---|
| [90/0] ABD (10-23 3.1) | A11 151248.88, B11 65541.18, D11 50416.29 / OS 50219.36 | same; OS D low by exactly 1/256 |
| L1-L4 (10-23 3.2) | D err 0.058% / 0.17%; L1 D11 103.49, L3 A16 3613.73 | 0.0579% / 0.168%; same values |
| ply rotation, Poisson slots | ~1e-16 | ~1e-16 |
| steel strip (10-22 smoke) | 6.643 mm, 7.0858, 6.6598, 0.08173 Hz | 6.6431, 7.0858, 6.6597, 0.08173 Hz |
| Al plate 1 mm, 606k DOFs (10-22) | w_tip -5.7271, sigma 0.044991 | same (5 digits), solve 27 s |
| Al large deflection 10 mm / 5 mm | saved CSVs, SUMMARY table | identical (5 mm: last step, see 19) |
| curved strip R = 50 (10-26) | tip -9.99961 (0.38%), free edge ~8% | -9.99961, free edge +7.9% |
| pure Mx [0_2/90_2]s (10-26) | kx +0.057%, sigma_top 5.3413 | +0.057%, 5.3413 (2 elements/facet instead of 8) |
| tip load laminate 10/5/2.5 mm | -5.56263/-5.56274/-5.56277 | same; 4x fewer elements |
| per-ply vs merged, large deflection | ~1e-14 | < 1e-8 ([0/90]s, [0/90/0/90], [30]4) |
| Hashin 2D / Tsai-Hill (new) | - | closed forms exact; FE vs CLT within 0.4% |

After the switch to Hashin (T17/T18 rewritten, T19 field names), the fast
suite (`run_regression.py`, all but T09/T12) passes: 204 checks, 0 failed
(`regression-tests/last_run.txt`). The skills the switch touched
(failure-check, shell-visualize) are not used by T09/T12, which passed
before (`last_run_full.txt`, `last_run_T11_T12.txt`).

## Abaqus export (added 10/26, after merging Tara's 10-26 commits)

Tara's `OpenSeesPyToAbaqusPythonGenerator` agent (pushed after this
reorganization) told Claude to hand-translate v1 model scripts
(ply_properties.py, layup.py, mesh_bc_load.py) into Abaqus scripts, starting
from `abaqus_tip_load_laminate.py`. It is now:
- `.claude/skills/abaqus-export/case_to_abaqus.py`: writes the Abaqus/CAE
  script from a v2.0 case JSON (laminate from a laminate JSON, catalog ID,
  ply constants or isotropic), for any cross-section, supports, rigid ends,
  edge/point/pressure loads and linear, displacement-control (Riks) or
  load-control steps; embeds the OpenSees results and prints Abaqus vs
  OpenSees in `<job>_results.txt`.
- `agents_v2.0/` and `agents/OpenSeesPyToAbaqusPythonGenerator.md`: rewritten to
  use the skill; the original is kept in `agents_v1.0/`.
- Regression T20 runs the generated scripts for the two examples and a
  TRAC-like case (lines + arc, rigid end, edge force + moment, point load,
  pressure, Riks) on a stand-in Abaqus API (`regression-tests/abaqus_mock.py`):
  nodal loads equal OpenSees to 1e-9 (round-off of chord-length shares),
  fixed DOFs, rigid-end couplings, mesh seeds, layup and step type match,
  and every face is flipped when its normal is reversed. Full fast suite:
  238 checks, 0 failed.

Issues / limits:
20. **The Abaqus run of the generated scripts is untested** (no Abaqus on the
    VM). The v1 hand-written template was run in Abaqus by Tara on her lab's
    server and gave the same tip deflection as OpenSees (running log,
    10/26/26); the generator differs from it in the extrusion + instance
    rotation, the discrete material orientation and the Riks step. Least certain calls: `Face.getNormal`, the DISCRETE
    `MaterialOrientation` arguments (fallback: rectangular CSYS, flat or
    shallow sections only), `rotateInstance` about (1,1,1), and reading Riks
    frames together with the `LPF` history output.
21. Displacement control is exported as Riks with the same proportional
    reference loads, stopped at step x n_steps of the control DOF, so cases
    need `n_steps`. The v1 agent used a prescribed displacement, which is
    only equivalent when the load acts at the controlled point.
22. Pressure: OpenSees lumps p along each facet's initial normal into nodal
    loads; Abaqus gets a `Pressure` load (magnitude -p, acting along -n),
    distributed by the element. Same resultant, slightly different nodal
    distribution on curved meshes.
23. Expected small differences: Abaqus Simpson integration (exact) vs
    LayeredShell midpoint layers (OpenSees D lower by ~1/(layers)^2); S4R/S4
    vs ASDShellQ4 (`-noeas` with coincident elements); Abaqus uses G13 and G23
    for transverse shear, OpenSees one modulus.
24. Tara's 10-26 SUMMARY.txt results (pure moment kx +0.06%, ky +0.3%,
    sigma_top 5.34 MPa; tip load -5.563 mm, +0.17%) are the cases of
    regression tests T14/T15, which pass.
