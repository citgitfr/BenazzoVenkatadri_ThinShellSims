---
name: abaqus-export
description: Writes an Abaqus/CAE Python script (run elsewhere with `abaqus cae noGUI=...`) that reproduces a v2.0 shell case file - geometry, laminate (from a laminate JSON, catalog ID or ply constants), mesh, supports, rigid ends, loads, linear or nonlinear step - and compares the Abaqus results with the OpenSees results embedded in it. Use to cross-check an OpenSeesPy model in Abaqus.
---

# abaqus-export

Script: `case_to_abaqus.py` (this folder). For an assembled OpenSeesPy script
(shell-assemble-run) use the opensees-to-abaqus skill, which calls
`case_to_abaqus.write_script(case, laminate, out, element, ref, source)`. The generated script is
checked here (compile, and a run against a stand-in Abaqus API in regression
test T20) and runs in Abaqus 2026 (tape spring, linear, 2026-11-06).
Abaqus 2026 is installed on this server: run the generated script ONLY with
`.claude/orchestrator/tools/run_abaqus.py <dir>/abaqus_<name>.py [--cpus N]` (shared server: at most
8 CPUs, default 1; it keeps the run folder and Abaqus scratch inside the ME295 folder, never touches
Abaqus env/install files, extracts `<job>_odb.npz` with `abaqus python odb_extract.py` and copies the
results next to the script; PROTOCOL.md section 6a of the orchestrator).
- The job's CPU count is `ME295_ABAQUS_CPUS` (set by the runner), clamped to
  1..8 in the script (`numCpus = numDomains = NCPUS`; default 1).
- `abaqus cae noGUI` does not preload modules: the script imports
  `interaction`, `step`, `load` and `job` (else `Model.Coupling` is missing).
- The embedded ODB extractor is unreliable inside CAE 2026 ("'NoneType' has no
  len()", or a CAE segfault after it wrote the file, which also loses the
  script's own comparison); under the runner (`ME295_ABAQUS_RUNNER` set) the
  script skips it and the runner extracts with the standalone
  `abaqus python odb_extract.py`.

```
python case_to_abaqus.py <case>.json [--out abaqus_<name>.py] [--element S4R|S4] [--no-reference]
abaqus cae noGUI=abaqus_<name>.py [-- <size> <S4R|S4>]      # on a machine with Abaqus
```
- Input: the same case JSON as shell-bc-load. Its `laminate` entry may be
  `{"json": "lam.json"}` (from `laminate_properties.py --save-json`, path
  relative to the case file), a catalog ID, ply constants or isotropic.
- The OpenSees case is run first and its results are embedded (`REF`):
  report-node displacement, max |u|, top-ply top-surface stress in ply
  axes, and the load-factor history for nonlinear runs. The Abaqus script
  prints Abaqus vs OpenSees with % differences (PASS within 3%, else CHECK)
  into `<job>_results.txt`.
- Output default: `abaqus_<name>.py` next to the case file. Regenerate
  rather than hand-editing the inputs block.

- After the job the script writes `<job>_odb.npz`: the ODB as plain arrays,
  by a verbatim copy of `.claude/verification/odb_extract.py` embedded at
  generation time (read from that file, so regenerate after changing it). It
  runs before the script's own comparison; if it fails, `<job>_results.txt`
  gives the `abaqus python odb_extract.py <job>.odb` command to run instead.
  Regression T22 checks the copy is verbatim and writes the same arrays.
- Field output request: `S, E, SE, SF, U, UR, RF` only. **Never request
  `SM`**: Abaqus/CAE refuses it and rejects the whole request ("Invalid
  variables are specified in an output request", 2026-11-06). `SF` already
  writes the SF and SM fields to the ODB, and `SE` writes SE and SK. Add a name
  only after it ran in Abaqus, in both `FIELD_OUTPUT` and
  `regression-tests/abaqus_mock.py` `VALID_FIELD_OUTPUT`; T20 fails otherwise.
  Extra requests `F-Output-PLIES-FLANGE` / `-WEB` (one per section, element sets
  of the same names when there are webs) write `S, E` at every section point
  (3 per ply: bottom, middle, top; 5 for a homogeneous shell), so every ply,
  e.g. an interior 90 deg ply, can be compared (2026-11-09; T20 checks them).

## Translation
| OpenSees (v2.0 skills) | Abaqus |
|---|---|
| cross-section pieces (flat, arc, lines + arcs, polyline) | sketch Lines/ArcByCenterEnds, `BaseShellExtrude(depth=L)`, instance rotated so part X, Y, Z = global y, z, x |
| mesh nx x ny, round(length/size) per piece | `seedEdgeByNumber` on every edge, structured quads: the same node grid |
| facet normal (x cross section direction) | checked per face and `flipNormal` if needed (bottom ply = SNEG) |
| laminate plies bottom to top, angle from facet x | one `CompositeShellSection`, one layer per ply (`orientAngle`), discrete orientation: axis 1 = x, normal = shell normal (falls back to a rectangular CSYS) |
| isotropic shell | `HomogeneousShellSection` |
| ASDShellQ4 / ShellMITC4 | S4R (default) or S4 (full integration, closer to `-noeas`) |
| supports (edge / node / rigid end) | `DisplacementBC` (global DOFs) on node sets / reference point |
| `rigid_end` | reference point at the same centroid + KINEMATIC coupling to the edge nodes |
| edge loads (consistent shares) and point loads | `ConcentratedForce` / `Moment` with the same nodal shares (identical nodal loads, T20) |
| pressure p along +n | `Pressure` magnitude -p (Abaqus acts along -n) |
| linear | `StaticStep(nlgeom=OFF)` |
| displacement control (proportional reference load) | `StaticRiksStep(nlgeom=ON)`, same reference loads, stopped at step x n_steps of the control DOF; LPF compared with the OpenSees load factor at the same displacement |
| load control | `StaticStep(nlgeom=ON)`, loads x max_load_factor |

## Expected differences (tell the user)
- Composite section: Simpson, 3 points per ply, exact for linear strain;
  OpenSees integrates layer mid-planes, so Abaqus D is slightly higher
  (~1/(layers)^2, e.g. 0.06% for [0_2/90_2]s with 4 layers per ply).
- S4R vs ASDShellQ4 (`-noeas` with coincident elements): small mesh-level
  differences; compare on two meshes.
- Transverse shear: Abaqus uses G13 and G23 from the lamina; OpenSees one
  modulus (G13). Negligible for thin shells.
- Least certain API calls (ran in Abaqus 2026 for a linear tape spring only): `Face.getNormal`, the DISCRETE
  `MaterialOrientation` arguments, `asm.rotateInstance` about (1,1,1),
  Riks frames vs the `LPF` history output. If one fails, the error is in
  `<job>_results.txt` / the Abaqus log; fix it in `case_to_abaqus.py` and
  regenerate.
