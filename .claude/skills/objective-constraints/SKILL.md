---
name: objective-constraints
description: Evaluates one design of an optimization from ONLY the results .npz written by the OpenSeesPy script that shell-assemble-run assembles and runs - the objective (always: minimize the mass of the structure) and the constraints (always: no failure, governing Hashin 2D index from the failure-check skill < 1; plus any user constraints the orchestrator turns from the user's words into formulas, e.g. fixed or minimum length, maximum laminate thickness, maximum tip deflection, minimum stiffness, minimum buckling load) - and returns the mass, each constraint's value, margin g <= 0 and status, and feasibility as text and JSON for the orchestrator. Use after every optimization run.
---

# objective-constraints

Script: `objective_constraints.py` (this folder; imports `../laminate-properties`,
`../shell-bc-load`, `../failure-check`). Units: N, mm, MPa; mass in kg.
Python: conda env `shells`: Federico `D:\Users\fbenazzo\miniconda3\envs\shells\python.exe`,
Tara `D:\Users\tvenkata\miniforge3\envs\shells\python.exe`.

**Input is only the results .npz** of the assembled script
(`<case dir>/results/<name>.npz`; shell_bc_load.py writes the same file). The
laminate, the case (geometry, supports, loads, analysis), the mesh and the
displacements and strains are all read from it. Do not give it the case
file, the script or the code pieces.

```
python objective_constraints.py <dir>/results/<case>.npz [--constraints <dir>/constraints.json]
       [--con "name: expr op limit" ...] [--value NAME=VALUE ...] [--rho KG_M3] [--json out.json]
       [failure-check options: --criterion --S23 --at --Xt --Xc --Yt --Yc --S --yield
        --boom ID --web S0 S1 --web-stack --flatten-radius]
python objective_constraints.py <dir>/results/<case>.npz --list      # every quantity, value, units
```
Writes `<results dir>/<case>_objcon.json` (or `--json`) and prints a summary.

## Objective: minimize mass (always)
m = sum over facets of (undeformed facet area) x (areal density sum rho_k t_k).
- Web facets of a TRAC/OM/CO section are two bonded flange laminates, so twice
  the areal density; they are found exactly as failure-check finds them
  (`--web`, case geometry `"web"`, or the catalog boom `--boom` / geometry `"boom"`).
- Density: the laminate's rho if > 0, else the lamina catalog row the
  material is named after (`L024 ...` from `--catalog`), else `--rho` [kg/m^3].
  The laminate pieces are written with rho = 0 (rho has no effect on a static
  run), so the catalog is the usual source; for user-defined plies or
  isotropic shells, ask for the density and pass `--rho`. Without a density
  the mass is "n/a": say so, never guess.
- Rigid end fixtures have no mass; the shell is the whole structure.

## Constraint always included: no failure
`F_governing < 1`: the larger of the simulation index (Hashin 2D by default,
max over facets, Gauss points, plies, 3 points per ply, web with the doubled
layup) and the coiling (flattening) index, with failure_check.py's own
functions, so the value equals failure_check.py's `GOVERNING F` line with
the same options. Missing strengths make it "not evaluated": ask for them.

## Turning the user's constraints into formulas (orchestrator's job)
Write one entry per constraint, keeping the user's words in `text`:
```json
{"constraints": [
 {"name": "tip deflection", "text": "tip may not deflect more than L/100", "expr": "abs(tip_uz)", "op": "<=", "limit": "L/100", "units": "mm"},
 {"name": "boom length",    "text": "the boom is 500 mm long",            "expr": "L", "op": "==", "limit": 500, "tol": 0.01, "units": "mm"},
 {"name": "thickness",      "text": "laminate at most 0.5 mm thick",      "expr": "h_max", "op": "<=", "limit": 0.5, "units": "mm"},
 {"name": "bending stiffness", "text": "tip stiffness at least 2 N/mm",   "expr": "abs(force_z) / abs(tip_uz)", "op": ">=", "limit": 2, "units": "N/mm"}
]}
```
or inline: `--con "tip deflection: abs(tip_uz) <= L/100"`.
- `op`: `<=`, `<`, `>=`, `>`, `==` (`tol` for `==`, default 1e-6 max(1, |limit|)).
  `expr` and `limit` are formulas: quantity names, numbers, `+ - * / ** %`,
  `abs min max sqrt log exp sin cos tan radians degrees pi`. Nothing else is accepted.
- Use the names from `--list` (below). Pick the quantity that matches what the
  user means and say which one you picked: "deflection" of a cantilever =
  `abs(tip_uz)` (or the load direction's component; `tip_u` for the total);
  "anywhere" = `max_abs_uz` / `max_u`; "stiffness" = load / deflection in
  the same direction (secant value after a nonlinear run; for a linear run
  it is the stiffness); "length" = `L`; "width/height of the section" =
  `section_width` / `section_height`, or `b` for the arc (flattened) width;
  "thickness" = `h` (flange) or `h_max` (incl. a doubled web); "radius" = `radius_min/max`.
- Design-variable constraints (length, thickness, radius) are checked like
  the others; also respect them when choosing the next design.
- Ambiguous wording (which direction, which point, which load, units): ask
  the user once, then write it down in `text`.
- A quantity not in the results (a buckling load from a static run,
  a natural frequency, anything from another skill): get it from that skill
  (e.g. shell-buckling) and pass `--value buckling_load=<N>` (any name); the
  constraint is "not evaluated" otherwise. Nonlinear paths do give
  `load_factor_peak` and `limit_point` (1 if the load fell after a peak).

## Quantities (`--list`)
| group | names |
|---|---|
| mass | `mass` [kg], `mass_g`, `mass_flange`, `mass_web`, `areal_density` [kg/m^2], `mass_per_length` [kg/m] |
| dimensions [mm] | `L`, `b` (section arc length), `section_width` (y), `section_height` (z), `radius_min`, `radius_max`, `area` [mm^2], `h`, `h_web`, `h_max`, `n_plies` |
| tip (free end) | `tip_ux tip_uy tip_uz` [mm], `tip_rx tip_ry tip_rz` [rad], `tip_u`, `tip_rot` |
| whole model | `max_u`, `max_abs_ux`, `max_abs_uy`, `max_abs_uz` [mm], `max_rot` [rad] |
| loads, path | `force_x force_y force_z` [N] (total applied force), `couple_x couple_y couple_z` [N mm] (applied couples only, not r x F), all at the final load factor; `load_factor`, `load_factor_peak`, `limit_point`, `control_disp` |
| failure | `F_sim`, `F_coil`, `F_governing`, `strength_ratio_min` (a load factor only for a linear run) |
| external | `buckling_load` and anything else given with `--value` |

The tip is the unsupported end (x0 or xL; xL if both or neither are
supported); its displacement is the rigid-end master node's if there is one,
else the mean of the edge nodes. Displacements are the final state of the
run.

## Output (`<case>_objcon.json`, also printed)
- `objective`: {name "mass", sense "minimize", value [kg] or null, note}.
- `constraints`: per constraint name, text, expr, op, limit, value,
  limit_value, `g` (<= 0 satisfied: value - limit for <=, limit - value for
  >=, |value - limit| - tol for ==), `g_rel` = g / |limit|, satisfied, status
  (`satisfied`, `VIOLATED`, or `not evaluated: <why>`). The first is always "no failure".
- `feasible`: true, false (any violated), or null (none violated, some not evaluated).
- `quantities` (every value with units and description), `failure` (F values,
  governing source, critical facet/ply/mode/stresses), `notes` (density source,
  tip node, web facets, S23, coiling radius).

## Report back to the orchestrator / user
Mass (kg and g) and the density source; each constraint's formula, value,
limit, g_rel and status; feasible or not; for "no failure" also the governing
source and critical point; every "not evaluated" with what is needed. Compare
designs by mass among the feasible ones; g_rel shows which constraint is active
(close to 0) and how far a violated one is off.

## Rules
- One results file per call; run it after every optimization run, with the
  same constraint file for every design of a study (keep it in the study folder).
- Don't edit the .npz or recompute quantities by hand; if a needed quantity
  is missing, say so (or add it to this script and run the regression tests).
- Catalog strengths are mean RTD values, not allowables; failure F from a
  mesh with stress peaks at clamp corners is mesh dependent (see failure-check).
- Put constraint files and outputs in the dated `Code for Project/MM-DD-YY (Name)/` folder.
