---
name: shell-assemble-run
description: Joins the OpenSeesPy code pieces written by the laminate-properties (materials and LayeredShell sections), shell-mesh (nodes and shell elements) and shell-bc-load (supports, loads, solution, results file) skills into ONE continuous, standalone OpenSeesPy Python script (needs only openseespy and numpy), checks that the pieces fit together, runs it and saves the results .npz for shell-visualize and failure-check. Use when the user wants a single self-contained OpenSeesPy script of a shell model (to read, share, archive or run elsewhere), or wants the model assembled and run as one script.
---

# shell-assemble-run

Script: `assemble_run.py` (this folder; imports `../laminate-properties`,
`../shell-mesh`, `../shell-bc-load`). Units: N, mm, MPa.
Python: conda env `shells` (openseespy 3.8): Federico
`D:\Users\fbenazzo\miniconda3\envs\shells\python.exe`, Tara
`D:\Users\tvenkata\miniforge3\envs\shells\python.exe`.

## The pieces (each skill's `--emit-code` output)
| piece | written by | contains | provides | needs |
|---|---|---|---|---|
| laminate | `laminate_properties.py <material/layup args or --json lam.json> --emit-code laminate_code.py` | nDMaterial chain, LayeredShell sections | `SECTIONS` [(tag, angle)], `LAMINATE` | a 3D, 6-DOF model |
| mesh | `shell_mesh.py --case case.json --emit-code mesh_code.py` | nodes, facet table, one element per facet and SECTIONS entry (`-local` from the facet frame) | `FACETS`, `FRAMES`, `MESH` | `SECTIONS` |
| bc | `shell_bc_load.py case.json --emit-code bc_code.py` | fixities, rigid ends, nodal loads, analysis, results .npz | solved model, results file | `FACETS`, `FRAMES`, `MESH`, `LAMINATE` |

Each piece starts with `# === OpenSeesPy piece: <kind> (written by the <skill> skill) ===`
and lists what it provides and needs. Python versions: `Laminate.write_code(path)`,
`shell_mesh.write_code(mesh, path, element, corotational, eas, geometry=...)`,
`shell_bc_load.write_code(case, path)`.

## Command line

```
python assemble_run.py --laminate-code laminate_code.py --mesh-code mesh_code.py --bc-code bc_code.py [--script FILE] [--out DIR] [--no-run]
python assemble_run.py <case>.json [--laminate lam.json] [--script FILE] [--out DIR] [--no-run] [--verify]
```
- First form: join pieces the skills already wrote. Script default:
  `model_opensees.py` next to the bc piece.
- Second form: the three skills first write their pieces from the case file
  into `<case dir>/<name>_code/`, then they are joined into
  `<case dir>/<name>_opensees.py`. `--laminate` takes the
  `laminate_properties.py --save-json` file and replaces the case's
  `laminate` entry (a `{"json": ...}` entry is read relative to the case file).
- Before joining: each file must be the right kind of piece, each needed
  name must come from an earlier piece, and the mesh and bc pieces must have
  the same geometry (also checked again when the script runs). Errors stop
  the assembly with a message naming the piece.
- The joined script = header (imports, `ops.wipe()`, `ops.model('basic',
  '-ndm', 3, '-ndf', 6)`) + laminate + mesh + bc, run at once in a fresh
  Python process. It writes `<script dir>/results/<name>.npz` (or `--out`),
  the same results file as `shell_bc_load.py`.
- `--verify` (case form): also runs the case through
  `shell_bc_load.run_case` and compares points, displacements, strains,
  load history, faces, frames and fixities (PASS if max |difference| /
  max |value| <= 1e-9; it has been exactly 0). Doubles the run time.
- `--no-run`: only write the script; run it later with
  `python <name>_opensees.py [results.npz]`.

## Report back
- the three piece files and the joined script (path, line count);
- the laminate, mesh summary, element count and DOFs, the analysis and
  solve time, the report-node displacement and max |u| the script prints,
  and the results path;
- the `--verify` line when used (say if it was not run);
- then run failure-check / shell-visualize on the .npz as usual.

## Rules
- Regenerate the pieces and the script rather than hand-editing the model
  data; to change something, change the case (or laminate) and rerun.
- The mesh and bc pieces must come from the same case geometry; the laminate
  piece may come from any laminate (the elements are built from SECTIONS).
- Script size grows with the mesh (one line per node and per facet:
  ~4400 lines for 2000 facets). Fine to run; don't paste it into chat.
- Modal analysis and custom drivers (sweeps, convergence studies) are not
  case-file features, so they are not assembled; write a driver as the
  orchestrator describes.
- Runs longer than ~2 minutes go in the background (cost as shell-bc-load).
- Put test cases, pieces, scripts and results in a dated
  `Code for Project/MM-DD-YY (Name)/` folder, not in the skills folder.
