---
name: opensees-to-abaqus
description: Turns the one standalone OpenSeesPy shell script assembled by the shell-assemble-run skill into an equivalent Abaqus/CAE Python script (run elsewhere with `abaqus cae noGUI=...`) - geometry, composite or isotropic section, mesh, supports, rigid ends, loads, linear / Riks / load-control step - that compares its results with the OpenSees results embedded in it, and checks the Abaqus model against the model the OpenSeesPy script actually builds. Use when the user wants an Abaqus version of an OpenSeesPy model. Replaces the OpenSeesPyToAbaqusPythonGenerator agent.
---

# opensees-to-abaqus

Script: `opensees_to_abaqus.py` (this folder; uses `../abaqus-export/case_to_abaqus.py`
for the translation and `../regression-tests/abaqus_mock.py` for the check).
**Abaqus is not installed on the project VM**: everything that can be checked
here is checked, and the Abaqus run itself is untested until the user runs it
elsewhere. Say so plainly. Units: N, mm, MPa, t/mm^3.
Python: conda env `shells` (openseespy 3.8): Federico
`D:\Users\fbenazzo\miniconda3\envs\shells\python.exe`, Tara
`D:\Users\tvenkata\miniforge3\envs\shells\python.exe`.

## Input
The assembled script `<name>_opensees.py` from shell-assemble-run (either of its
forms). If there is none yet, make it first:
```
python shell-assemble-run/assemble_run.py <dir>/<case>.json [--laminate <dir>/lam.json]
```
Models that are not case-file features (modal, sweeps, custom drivers, hand-
written scripts, v1 scripts) are not assembled: write the equivalent case JSON
(see shell-bc-load `SKILL.md` and `examples/`), check that it reproduces the
driver's results, assemble it, then convert. Displacement-control cases need
`n_steps` (the Riks stop is step x n_steps).

## Command line (from `.claude/skills`)
```
python opensees-to-abaqus/opensees_to_abaqus.py <dir>/<name>_opensees.py [--out FILE] [--element S4R|S4]
                                                [--npz results.npz | --rerun | --no-reference] [--no-check]
abaqus cae noGUI=abaqus_<name>.py [-- <size> <S4R|S4>]          # on a machine with Abaqus
```
- Output default: `abaqus_<name>.py` next to the OpenSeesPy script.
- The script's `NAME`, `CASE` and `LAMINATE` are read as literals; the
  Abaqus model uses `LAMINATE` (the plies the sections were built from), not
  the case's laminate entry.
- Reference (`REF`): from the script's own results `<dir>/results/<name>.npz`,
  reused when newer than the script, else the script is run (seconds for
  linear cases, minutes for long nonlinear ones: run those in the background).
  `--npz` takes another results file of the same script (checked: same
  laminate and nodes). Embedded: report-node displacement, max |u_i|, top-ply
  top-surface stress in ply axes, load-factor history (displacement control).
  The Abaqus script prints Abaqus vs OpenSees with % differences (PASS within
  3%, else CHECK) into `<job>_results.txt`.
- Model check (default; exit code 1 if any FAIL, then do not hand the script
  out): the OpenSeesPy script is executed up to its first `ops.analyze` with its
  `ops` calls recorded, the Abaqus script is executed on the stand-in Abaqus API,
  and these are compared: shell nodes = the structured grid the Abaqus seeds
  give; shell normal per section piece = OpenSees facet normal (bottom ply =
  SNEG); ply angles through the thickness from the elements' `-local` axes;
  layer thicknesses and E1, E2, nu12, G12, transverse G modulus; fixed DOFs;
  rigid ends (reference point + coupled nodes = `rigidLink`); nodal forces and
  moments (pressure lumps vs Abaqus `Pressure`); step type, Riks control
  node/DOF/stop or load factor; report node. A FAIL means the script was
  hand-edited or the pieces disagree: regenerate it with shell-assemble-run.
- Not translated (FAIL): `equalDOF`, `sp`, `eleLoad`, more than one load pattern,
  sections other than LayeredShell / ElasticMembranePlateSection.
- Instructions for the user (every successful run): the script prints an
  "=== Abaqus verification of ... ===" block and writes the same text to
  `abaqus_<name>_instructions.txt` next to the Abaqus script. It names, with
  the actual job name `<name>_<element>_<size>mm` (`.` -> `p`):
  - **on the Abaqus machine**: copy only `abaqus_<name>.py` into an empty
    folder; run `abaqus cae noGUI=abaqus_<name>.py` (other mesh/element:
    `... -- <size> <S4R|S4>`, which changes the job name); check that
    `<job>_results.txt` does not say "ODB extraction failed" (fallback:
    `abaqus python odb_extract.py <job>.odb` with the file from
    `.claude/verification/`); optionally `abaqus cae database=<job>.cae`;
  - **copy back** into the OpenSeesPy script's folder: `<job>_odb.npz`
    (required; the ODB as plain arrays, written by the embedded copy of
    `odb_extract.py`) and `<job>_results.txt` (recommended); the `.odb`/`.cae`
    are not needed here;
  - **then ask Claude**: the exact sentence that runs the
    OpenSeesAbaqusResultsComparator agent on the OpenSees results .npz and
    `<job>_odb.npz`.

## Report back
- **the instructions block, verbatim** (from the output or
  `abaqus_<name>_instructions.txt`), every time the skill is run: it is how the
  user knows what to run, what to bring back and what to ask for;
- the model in a short list (geometry, plies bottom to top, element, mesh,
  BCs, loads, step) and the OpenSees reference values it embeds;
- the model-check lines (n/n pass) and that the Abaqus run is untested;
- what is not one-to-one: coincident per-angle elements -> one composite
  section; `-noeas` ASDShellQ4 vs S4R/S4 (compare on two meshes); LayeredShell
  layer mid-points vs Simpson (Abaqus D slightly stiffer, ~1/(layers)^2);
  transverse shear G13/G23 vs one OpenSees modulus; displacement control ->
  Riks with the same reference loads; Abaqus pressure acts along -n (sign
  handled);
- the least certain Abaqus API calls (abaqus-export `SKILL.md`): `Face.getNormal`,
  the DISCRETE `MaterialOrientation` arguments, `asm.rotate` about (1,1,1), Riks
  frames vs the `LPF` history output. If one fails in Abaqus, the error is in
  `<job>_results.txt` / the Abaqus log: fix `case_to_abaqus.py`, run
  `regression-tests/run_regression.py --only T20 T22`, regenerate.
- You cannot email or upload files: give the path.

## Rules
- Do not write or hand-edit Abaqus scripts; extend `case_to_abaqus.py`
  (abaqus-export) if a model needs something it does not support.
- Put outputs in the dated `Code for Project/MM-DD-YY (Name)/` folder of the
  OpenSeesPy script, not in the skills folder.
