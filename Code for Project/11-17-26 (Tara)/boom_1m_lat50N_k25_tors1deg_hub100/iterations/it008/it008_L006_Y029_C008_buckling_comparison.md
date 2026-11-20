# it008 L006 [-45/0/0/-45] C008 (mirror of it007): buckling case, OpenSees vs Abaqus

Written by the orchestrator from the tool outputs only (2026-11-19). The OpenSees buckling path saves no
field results, so the comparator agent (two result files) does not apply; this compares the reported loads.
Run because the user asked whether it008 had actually been checked (it had been marked FAIL by a
mirror-symmetry assumption without an Abaqus run; corrected).

Sources:
- OpenSees: iteration 8 path B (ASDShellQ4, imperfection 0.1 t, 4.5 mm design mesh) passed the 50,000 N mm
  cutoff at **50,218.6 N mm** (lower bound).
- Abaqus: `abaqus_runs/abaqus_it008_L006_Y029_C008_buckling_20261119_151522/it008_L006_Y029_C008_buc_S4R_4p5mm_results.txt`
  (run_abaqus.py, 8 CPUs, 6.3 min, all 5 jobs COMPLETED).

| Abaqus analysis | load (N mm) | vs OpenSees B 50,218.6 | vs requirement 50,000 |
|---|---|---|---|
| LBA mode 1 (perfect shell) | 49,457.8 | -1.5% | **-1.1%** |
| NLB (preload f = 0.50) | 48,786.6 | -2.9% | -2.4% |
| NLB (preload f = 0.80) | 48,510.2 | -3.4% | -3.0% |
| NLB (preload f = 0.95) | 48,445.3 | -3.5% | **-3.1%** |
| Riks (imperfection = LBA mode 1, 0.014 mm) | 100,529 (max load factor 2, no peak) | +100% | +101% |

## Judgment
- Abaqus first-bifurcation values are identical to it007 within 0.001% (49,457.4 / 48,445.2 there): the
  [45/0/0/45] and [-45/0/0/-45] layups buckle at the same load, as the mirror symmetry predicts; it is now
  checked rather than assumed.
- The codes agree with each other to 1.5-3.5% (OpenSees B passed the cutoff by only 0.4% while struggling).
- Strict criterion (user, 2026-11-19, "no local buckling"): first bifurcation 48,445-49,458 N mm, 1.1-3.1%
  BELOW the requirement: **fails**. it006 (104.9 g) stays the final design.
- Verdict for this case: **inconclusive** for pass/fail (as it007): codes agree, but the strict criterion fails it.
