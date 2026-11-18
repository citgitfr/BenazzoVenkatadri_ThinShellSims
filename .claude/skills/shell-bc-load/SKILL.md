---
name: shell-bc-load
description: Applies supports (clamps, simple supports, rigid end fixtures, incl. a large-rotation rigid end) and loads or load combinations (edge line loads, point loads and moments, torques, pressure) to a shell meshed with the shell-mesh skill, solves it (linear, displacement/rotation control or load control for large deflection and large twist, modal) and saves the results (displacements, per-element membrane strains and curvatures, recorded twist) to an .npz for the shell-visualize and failure-check skills. Also runs a whole case from a JSON file. Includes beam-theory and elastica references for bending and Bredt / St Venant / Vlasov / Wagner references for torsion (linear torsion first, nonlinear when the twist leaves the linear regime).
---

# shell-bc-load

Script: `shell_bc_load.py` (this folder; imports `../laminate-properties`,
`../shell-mesh`). Reference solutions: `elastica.py` (large-deflection
cantilever, two independent solvers), `shell_mesh.arc_section_inertia`.
Units: N, mm, MPa. Examples: `examples/*.json`.

## Run a case (preferred)

```
python shell_bc_load.py case.json [--out results_folder]      # -> <out>/<name>.npz
```
```json
{
 "name": "tape_spring_L024_tip_load",
 "laminate": {"catalog": "L024", "layup": "[0/90]s"},
 "geometry": {"L": 500, "section": {"type": "arc", "R": 50, "b": 100}, "size": 5},
 "element": {"type": "ASDShellQ4", "corotational": false},
 "supports": [{"edge": "x0", "dofs": [1,1,1,1,1,1]}, {"rigid_end": "xL"}],
 "loads": [{"node": {"rigid": "xL"}, "force": [0, 0, -10], "moment": [0, 0, 0]}],
 "analysis": {"type": "linear"},
 "report_node": {"rigid": "xL"}
}
```
- `supports`: `{"edge": e, "dofs": [ux uy uz rx ry rz]}` (1 = fixed; default
  clamp; simple support `[1,1,1,0,0,0]`), `{"rigid_end": e, "dofs": [...]}`
  (fixture: master node restrained), `{"rigid_end": e}` (fixture for loading),
  `{"node": ref, "dofs": [...]}`. `"large_rotation": true` on a rigid end:
  stiff corotational beam spokes instead of rigid links (needed when the end
  rotates more than ~0.1 rad: nonlinear torsion, rotation control).
- `loads` (one combination, applied together, reference level = load factor
  1): `{"edge": e, "force": [Fx,Fy,Fz], "moment": [Mx,My,Mz], "factor": k}`
  (totals, spread as consistent nodal loads), `{"node": ref, ...}`,
  `{"pressure": p}` (along each facet's initial normal). Fixed directions:
  no follower loads. A different combination = a different case.
- node refs: tag, `"tip"` (x = L, mid-section), `{"x":..,"s":..}`, `{"i":..,"j":..}`, `{"rigid": "xL"}`.
- `analysis`: `{"type": "linear"}` | `{"type": "displacement_control", "node": ref, "dof": 3,
  "step": -20, "n_steps": 40, "max_load_factor": 7, "tol": 1e-6}` | `{"type": "load_control",
  "n_steps": 10, "max_load_factor": 1}`. Nonlinear options: `"dof": 4` = rotation control
  (torsion), `"record_twist": "xL"` (exact twist of that edge added to every history row; for corotational elements),
  `"test": "EnergyIncr"` (tol default 1e-14, `"max_iter"` default 250; default test
  `RelativeNormDispIncr`, tol 1e-6, 40 iterations). History columns are in the results
  meta `history_columns` (e.g. `[load_factor, control_dof, twist_xL, iterations]`).
- Edge moments for a CLT moment resultant: on `xL` (normal +x) Mx is a moment
  vector +y (`[0, Mx*b, 0]`), on `x0` the opposite; on `yb` (normal +y) My is a
  moment vector **-x**.

## Torsion (twist): linear first, nonlinear past the linear regime
Same pattern as bending (linear, then corotational + displacement control when
the elastica says so). Reference module: `torsion.py` (as `elastica.py`).
1. **Linear first.** Root clamped, tip `{"rigid_end": "xL"}`, load
   `{"node": {"rigid": "xL"}, "moment": [T, 0, 0]}` (or `{"edge": "xL", "moment":
   [T, 0, 0]}` for a tip free to warp), `"analysis": {"type": "linear"}`. Tip twist =
   `rx` of the rigid node; profile `bc.twist_profile(res)` (section rotation per x station:
   small-rotation fit for linear results, exact for corotational ones). Check against `torsion.section_torsion(mesh)` (after `build_model`):
   closed cell (OM/CO): Bredt, `phi_L = T L / GJ`; open (TS/TRAC):
   `torsion.vlasov_tip(T, L, GJ, ECw, tip='restrained'|'free')` (root warping restrained;
   St Venant `T L / GJ` overstates the twist by 10-25% for 1 m booms). Give % differences.
2. **Past the linear regime?** With theta = phi_L / L_eff (L_eff = phi_L GJ / T, L for a
   closed cell), `torsion.wagner_ratio(theta, GJ, EdI)` = cubic / linear Wagner torque
   term. **> 0.02** (or phi_L > ~0.1 rad) -> run the nonlinear analysis; tell the user the
   linear twist is only the initial stiffness. Closed cells stay linear (ratio ~1e-9 at
   1 N mm for M008); thin open booms do not (R001, T = 1 N mm: linear 0.86 rad,
   nonlinear 0.65 rad).
3. **Nonlinear:** `"element": {"type": "ASDShellQ4", "corotational": true}`, tip
   `{"rigid_end": "xL", "large_rotation": true}`, load `{"node": {"rigid": "xL"},
   "moment": [1, 0, 0]}` (reference torque 1 N mm: load factor = torque), and
   ```json
   "analysis": {"type": "displacement_control", "node": {"rigid": "xL"}, "dof": 4,
                "step": 0.05, "n_steps": 20, "max_load_factor": T, "record_twist": "xL",
                "test": "EnergyIncr"}
   ```
   (target rotation ~ the linear twist; stops after the step that passes T). Twist at
   the torque T: `bc.twist_at(res['history'], T)` (history columns load factor = torque,
   ..., `twist_xL`, iterations). Reference: `torsion.wagner_tip(T, L_eff, GJ, EdI)` (rough
   for clamped booms: uniform twist rate) - compare the stiffening relative to the FE's own
   initial slope (flat strip: x1.282 FE vs x1.287 Wagner at 0.9 rad, T26).
   Abaqus: opensees-to-abaqus maps the spokes to the same coupling and rotation control
   to Riks on the reference point's DOF 4; or translate a `load_control` copy of the case
   to T (Abaqus load control converges; done 11-17-26, R001: 0.673 vs 0.647 rad on 5 mm,
   the 4% = the 5 mm element spread).

## Code piece for a complete OpenSeesPy script
```
python shell_bc_load.py case.json --emit-code bc_code.py      # or bc.write_code(case, path)
```
Writes the fixities, rigid ends and nodal loads of the case (the calls
`apply_supports` / `apply_loads` make, exact), the analysis (as
`linear_solve` / `displacement_control` / `load_control`) and the results
.npz (as `collect_results`). Needs `FACETS`, `FRAMES`, `MESH` (shell-mesh
piece) and `LAMINATE` (laminate-properties piece); refuses to run if the
mesh piece is for another geometry. Joined and run by shell-assemble-run.

## Python (custom drivers)
```python
import shell_bc_load as bc
bc.fix_edge(mesh, 'x0'); tip = bc.rigid_end(mesh, 'xL'); bc.point_load(tip, (0, 0, -P))
bc.edge_load(mesh, 'xL', (0, 0, -P), (0, M, 0)); bc.pressure_load(mesh, p)
bc.linear_solve()  |  h = bc.displacement_control(node, 3, -0.02 * L, stop=lambda lam: lam >= 7)
bc.modal(1)
res = bc.collect_results(mesh, h, title='...'); bc.save_results('results/case.npz', res)
tip = bc.rigid_end(mesh, 'xL', large_rotation=True); bc.edge_twist(mesh, 'xL')   # torsion
x, phi = bc.twist_profile(res); bc.twist_at(res['history'], T)
import torsion; d = torsion.section_torsion(mesh)   # GJ, GJ_bredt, ECw, k, EdI
```

## Checks before reporting
Compare with beam theory where the case allows: PL^3/(3EI), Mc/I (for an arc
section use its own centroidal I, `arc_section_inertia`), laminated beam
EI = b / d11 (d = D^-1), elastica `elastica.tip(alpha)` for large tip loads
(wide plates: use EI/(1-nu^2)). Give % differences.

## Rules learned (tell the user when relevant)
- Consistent edge loads: end nodes half shares (done by `edge_load`).
- Curved thin sections: load/clamp through `rigid_end` unless the edge really
  is free (free arc edge: tip 8% too flexible; rigid end: 0.4% from beam theory).
- Large rotations: `corotational` ASDShellQ4 + displacement control; load
  control stalls at alpha = PL^2/EI ~ 2.8, displacement control reaches ~6.8.
  Tolerance 1e-6..1e-7 (1e-9 stalls). Linear geometry overestimates the tip
  deflection by ~40% at alpha = 2.
- Wide thin plates stiffen toward EI/(1-nu^2) once they curl (b^2/(R t) >> 1).
- Strains/stresses after a Linear solve read zero until element forces are
  re-formed; the solvers call `ops.reactions()`.
- Results strains are per facet and Gauss point in the facet frame with the
  **CLT curvature sign** (OpenSees reports -k; flipped here). Curvatures are
  changes from the initial shape.
- Cost on the 2-core VM: ~35 us per DOF per Newton iteration; a 606k-DOF
  linear solve ~25 s; a nonlinear sweep 1000 x 100 mm: ~4 min at 10 mm, ~15-25 min at 5 mm.
  Coincident laminate elements multiply the element count by the number of distinct angles.
- With every DOF prescribed, `system('FullGeneral')` exits Python silently: use UmfPack.
- Torsion (11-17-26): load control of a tip torque stalls at ~0.03 rad with the default
  test (rigidLink, edge moments and spokes alike); rotation control + `EnergyIncr`
  reaches 1 rad. Newton iterations still grow with the twist (inexact corotational
  tangent: 8 -> 50 per 0.05 rad step); the converged points are valid (full residual),
  only slower: R001 1 m, 5 mm, 0 -> 0.65 rad in 13 steps = 10 min. Edge moments about x
  load the shells' drilling DOF on curved walls: fine linear (R001 within 0.8% of
  Vlasov), not for nonlinear runs - use the large-rotation rigid end.
- Rigid links (`rigid_end` default) are a linear constraint: at a rotation phi the end
  section stretches by ~phi^2/2 - use `"large_rotation": true` past ~0.1 rad.
