---
name: shell-bc-load
description: Applies supports (clamps, simple supports, rigid end fixtures) and loads or load combinations (edge line loads, point loads and moments, pressure) to a shell meshed with the shell-mesh skill, solves it (linear, displacement control or load control for large deflection, modal) and saves the results (displacements, per-element membrane strains and curvatures) to an .npz for the shell-visualize and failure-check skills. Also runs a whole case from a JSON file. Includes beam-theory and elastica references for checking.
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
  `{"node": ref, "dofs": [...]}`.
- `loads` (one combination, applied together, reference level = load factor
  1): `{"edge": e, "force": [Fx,Fy,Fz], "moment": [Mx,My,Mz], "factor": k}`
  (totals, spread as consistent nodal loads), `{"node": ref, ...}`,
  `{"pressure": p}` (along each facet's initial normal). Fixed directions:
  no follower loads. A different combination = a different case.
- node refs: tag, `"tip"` (x = L, mid-section), `{"x":..,"s":..}`, `{"i":..,"j":..}`, `{"rigid": "xL"}`.
- `analysis`: `{"type": "linear"}` | `{"type": "displacement_control", "node": ref, "dof": 3,
  "step": -20, "n_steps": 40, "max_load_factor": 7, "tol": 1e-6}` | `{"type": "load_control",
  "n_steps": 10, "max_load_factor": 1}`.
- Edge moments for a CLT moment resultant: on `xL` (normal +x) Mx is a moment
  vector +y (`[0, Mx*b, 0]`), on `x0` the opposite; on `yb` (normal +y) My is a
  moment vector **-x**.

## Python (custom drivers)
```python
import shell_bc_load as bc
bc.fix_edge(mesh, 'x0'); tip = bc.rigid_end(mesh, 'xL'); bc.point_load(tip, (0, 0, -P))
bc.edge_load(mesh, 'xL', (0, 0, -P), (0, M, 0)); bc.pressure_load(mesh, p)
bc.linear_solve()  |  h = bc.displacement_control(node, 3, -0.02 * L, stop=lambda lam: lam >= 7)
bc.modal(1)
res = bc.collect_results(mesh, h, title='...'); bc.save_results('results/case.npz', res)
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
