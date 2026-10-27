---
name: regression-tests
description: Re-runs every verified test case of the thin-shell project (10-22, 10-23 and 10-26 SUMMARY/verification scripts plus closed-form Hashin checks) through the laminate-properties, shell-mesh, shell-bc-load, shell-visualize and failure-check skills and compares with the v1 results and analytical solutions. Run after changing any skill script.
---

# regression-tests

```
python run_regression.py                    # ~1-2 min, skips the slow T09 (1 mm plate) and T12 (5 mm sweep)
python run_regression.py --full --log last_run_full.txt     # ~30 min on the 2-core VM
python run_regression.py --only T04 T18
```
Exit code 0 = all checks pass. Each check prints PASS/FAIL, the value, the
reference (v1 number or closed form) and the tolerance.

| Test | Source | What |
|---|---|---|
| T01 | 10-23 takeaway 1 | ElasticOrthotropic Poisson slots on a stdBrick |
| T02-T06 | 10-23 SUMMARY 2.1, 3.1, 3.2, verification | ply rotation t Q_bar, hand check, [90/0], L1-L4, other layups, layup notation |
| T07 | 10-23 verification | merged same-angle vs per-ply coincident elements, large deflection |
| T08 | 10-22 smoke_shell.py | steel strip, LayeredShell 1/n^2, first frequency |
| T09 | 10-22 plate_tip_load.py | Al plate 1 mm mesh, 606k DOFs (slow) |
| T10, T13 | 10-26 verify_mesh_bc_load.py | flat linear 5 mm; curved arc strip with rigid end |
| T11, T12 | 10-22 plate_large_deflection.py, saved CSVs | large deflection 10 mm / 5 mm (slow) vs saved runs and elastica |
| T14, T15 | 10-26 plate_pure_moment_Mx.py, plate_tip_load_laminate.py | [0_2/90_2]s laminate vs CLT and laminated beam |
| T16 | new | per-facet ply orientation on curved facets |
| T17, T18 | new | Hashin (AIAA 2025-0188 Eq. 3) and Tsai-Hill closed forms; FE ply stresses and Hashin index vs CLT |
| T19 | new | JSON case -> npz -> Hashin -> PNG |
| T20 | new | abaqus-export: generated scripts run on a stand-in Abaqus API; supports, couplings, nodal loads, seeds, layup, step vs OpenSees |

Report any FAIL with its numbers; do not loosen a tolerance to make a test
pass without saying why.
