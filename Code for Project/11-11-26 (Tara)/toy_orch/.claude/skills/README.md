# Thin-shell simulation skills (v2.0)

Five scripts replace the seven v1.0 agents (`.claude/agents_v1.0/`) and the
repeated model code in `Code for Project/`. Each folder has a `SKILL.md`
(instructions) and one Python script. The orchestrator agent
(`.claude/agents_v2.0/ThinShellOrchestrator.md`) runs them in order;
`CompositeLaminaLibrarian` (v2.0) still maintains the material catalog; the
opensees-to-abaqus skill (11/4/26) replaces the `OpenSeesPyToAbaqusPythonGenerator`
agent and turns an assembled OpenSeesPy script into an Abaqus/CAE script.

```
catalog (Pa, m) --> laminate-properties --> shell-mesh --> shell-bc-load --> results .npz --+--> shell-visualize (PNG / window / .vtp)
 or E1 E2 ...       (ply, layup, ABD,       (cross-section,  (supports, loads,                 |
                     OpenSees sections)      mesh, elements)  solve, strains)                  +--> failure-check (ply stresses, Hashin)
case JSON ------------------------------------------------------------------> abaqus-export (Abaqus/CAE script + OpenSees reference)
laminate-properties / shell-mesh / shell-bc-load --emit-code pieces --> shell-assemble-run (ONE standalone OpenSeesPy script, run) --> results .npz
                                                                                   |
                                                                                   +--> objective-constraints (mass; F_governing < 1 + user constraints -> g, feasible; JSON)
                                                                                   +--> opensees-to-abaqus (Abaqus/CAE script via abaqus-export, model checked vs the script)
results .npz + Abaqus ODB (odb_extract.py --> <job>_odb.npz) --> OpenSeesAbaqusResultsComparator agent
   (.claude/verification/compare_results.py: outputs only, no model-building code; plots + comparison tables)
```

| Skill | Replaces (v1.0 agents / code) |
|---|---|
| laminate-properties | PlyPropertyGenerator, LayupFromPlyGenerator, TheoreticalABDGenerator, ABDFromOpenSeesPyLayup; ply_properties.py, layup.py, theoretical_abd.py, abd_from_opensees.py, ply_materials_*.py, layup_*.py |
| shell-mesh | MeshBCLoadGenerator (geometry/mesh part); mesh_bc_load.StripMesh, flat_plate_al.py |
| shell-bc-load | MeshBCLoadGenerator (supports/loads/solve); mesh_bc_load.py, plate_tip_load.py, plate_large_deflection.py, elastica.py |
| shell-visualize | FEResultVisualizer; fe_result_viewer.py, shell_viewer.py |
| failure-check | new (ToDo items 11-12, Hashin 2D of AIAA 2025-0188); top_surface_stresses() variants |
| abaqus-export | OpenSeesPyToAbaqusPythonGenerator's hand translation; abaqus_tip_load_laminate.py template |
| shell-assemble-run | new: joins the `--emit-code` pieces of laminate-properties, shell-mesh and shell-bc-load into one continuous OpenSeesPy script and runs it |
| opensees-to-abaqus | OpenSeesPyToAbaqusPythonGenerator agent (11/4/26): assembled OpenSeesPy script -> Abaqus/CAE script, model checked against the script's own ops calls |
| regression-tests | the verification runs in the SUMMARY files and verify_mesh_bc_load.py |
| objective-constraints | new (11/4/26): objective/constraint calculator of the optimization loop; reads only the results .npz of the assembled script: mass (objective), governing Hashin F < 1 (via failure-check) and the user's constraints as formulas |
| shell-buckling | new (10/29/26, ToDo 7-8): buckling load/moment and mode (ShellNLDKGQ tangent-eigenvalue scan) and buckling strength (ASDShellQ4 imperfect path); boom_buckling.py case runner |

| design-boom | new (11/5/26): entry point of the v3.0 optimization loop; the session becomes the ThinShellOrchestrator and follows `.claude/orchestrator/PROTOCOL.md` (study.py runs the skills above in order) |

The v1 code in `Code for Project/` is left unchanged as the verified record.
Python: conda env `shells` (openseespy 3.8). Units: N, mm, MPa.
