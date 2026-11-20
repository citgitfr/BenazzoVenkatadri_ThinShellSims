# it007 L006 [45/0/0/45] C008: buckling case, OpenSees vs Abaqus (all-cases verification, case 4 of 4)

Written by the orchestrator from the tool outputs only (2026-11-19). The OpenSees buckling path saves no
field results, so the OpenSeesAbaqusResultsComparator (which compares two result files) does not apply to
this case; the comparison is between the reported load values.

Sources:
- OpenSees: `design.json` / ledger of iteration 7: path B (ASDShellQ4, imperfection 0.1 t, 4.5 mm design
  mesh) passed the 50,000 N mm cutoff at **51,013.9 N mm** (lower bound, path still rising, linear response
  ~13,350 N mm/rad); attempts at 58,855 / 52,595 / 55,734 / 52,595 failed to converge (residuals 1.5e-3,
  1.7e-5 ... see logs/buckling_B_0.log).
- Abaqus: `it007_L006_Y025_C008_buc_S4R_4p5mm_results.txt` (run_abaqus.py, 8 CPUs, 7.1 min, all 5 jobs
  COMPLETED), section "Comparison with OpenSees / theory":

| Abaqus analysis | load (N mm) | vs OpenSees B 51,013.9 | vs requirement 50,000 |
|---|---|---|---|
| LBA mode 1 (perfect shell) | 49,457.4 | -3.1% | **-1.1%** |
| NLB (preload f = 0.50) | 48,786.4 | -4.4% | -2.4% |
| NLB (preload f = 0.80) | 48,510.2 | -4.9% | -3.0% |
| NLB (preload f = 0.95) | 48,445.2 | -5.0% | -3.1% |
| Riks (imperfect) | rises linearly to 102,050 (max load factor 2), no peak | +100% | +104% |

## Judgment
- Onset of buckling: Abaqus LBA/NLB (48,445-49,457) and the load band where the OpenSees path struggles to
  converge (failed attempts from ~52,000 up, success at 51,014) agree to about 3-5%: the two codes see the
  same local instability (the flat bonded tab on the compressed side, seed mode in
  investigations/it007_buckling_plots/).
- That onset lies 1-3% BELOW the 50,000 N mm requirement. The load-carrying path continues past it in both
  codes (stable local post-buckling of a flat plate element; the Abaqus Riks path did not soften at all, so it
  may not have picked up the local mode and is not used as evidence of strength).
- Verdict for this case: **inconclusive** for the pass/fail of the requirement: the codes agree with each
  other, but the strict criterion chosen by the user (2026-11-19: "no local buckling", first bifurcation
  above 50,000 N mm) makes iteration 7 FAIL by ~1%, while the study's path-B criterion passed it.
