# Thin-shell simulation skills (v2.0)

Five scripts replace the seven v1.0 agents (`.claude/agents_v1.0/`) and the
repeated model code in `Code for Project/`. Each folder has a `SKILL.md`
(instructions) and one Python script. The orchestrator agent
(`.claude/agents_v2.0/ThinShellOrchestrator.md`) runs them in order;
`CompositeLaminaLibrarian` (v2.0) still maintains the material catalog and
`OpenSeesPyToAbaqusPythonGenerator` (v2.0) exports cases to Abaqus with abaqus-export.

```
catalog (Pa, m) --> laminate-properties --> shell-mesh --> shell-bc-load --> results .npz --+--> shell-visualize (PNG / window / .vtp)
 or E1 E2 ...       (ply, layup, ABD,       (cross-section,  (supports, loads,                 |
                     OpenSees sections)      mesh, elements)  solve, strains)                  +--> failure-check (ply stresses, Hashin)
case JSON ------------------------------------------------------------------> abaqus-export (Abaqus/CAE script + OpenSees reference)
```

| Skill | Replaces (v1.0 agents / code) |
|---|---|
| laminate-properties | PlyPropertyGenerator, LayupFromPlyGenerator, TheoreticalABDGenerator, ABDFromOpenSeesPyLayup; ply_properties.py, layup.py, theoretical_abd.py, abd_from_opensees.py, ply_materials_*.py, layup_*.py |
| shell-mesh | MeshBCLoadGenerator (geometry/mesh part); mesh_bc_load.StripMesh, flat_plate_al.py |
| shell-bc-load | MeshBCLoadGenerator (supports/loads/solve); mesh_bc_load.py, plate_tip_load.py, plate_large_deflection.py, elastica.py |
| shell-visualize | FEResultVisualizer; fe_result_viewer.py, shell_viewer.py |
| failure-check | new (ToDo items 11-12, Hashin 2D of AIAA 2025-0188); top_surface_stresses() variants |
| abaqus-export | OpenSeesPyToAbaqusPythonGenerator's hand translation; abaqus_tip_load_laminate.py template |
| regression-tests | the verification runs in the SUMMARY files and verify_mesh_bc_load.py |

The v1 code in `Code for Project/` is left unchanged as the verified record.
Python: conda env `shells` (openseespy 3.8). Units: N, mm, MPa.
