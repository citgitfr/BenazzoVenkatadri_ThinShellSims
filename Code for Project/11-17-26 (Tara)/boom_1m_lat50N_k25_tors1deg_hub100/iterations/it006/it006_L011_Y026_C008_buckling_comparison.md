# it006 L011 [60/0/0/60] C008: buckling case, OpenSees vs Abaqus (all-cases verification, case 4 of 4)

Written by the orchestrator from the tool outputs only (2026-11-19). The OpenSees buckling path saves no
field results, so the comparator agent (two result files) does not apply; this compares the reported loads.

Sources:
- OpenSees: iteration 6 path B (ASDShellQ4, imperfection 0.1 t, 4.5 mm design mesh) passed the 50,000 N mm
  cutoff at **52,209.7 N mm** (lower bound, still rising).
- Abaqus: `it006_L011_Y026_C008_buc_S4R_4p5mm_results.txt` (run_abaqus.py, 8 CPUs, all 5 jobs COMPLETED),
  "Comparison with OpenSees / theory":

| Abaqus analysis | load (N mm) | vs OpenSees B 52,209.7 | vs requirement 50,000 |
|---|---|---|---|
| LBA mode 1 (perfect shell) | 56,397 | +8.0% | **+12.8%** |
| NLB (preload f = 0.50) | 55,736.5 | +6.8% | +11.5% |
| NLB (preload f = 0.80) | 55,489.6 | +6.3% | +11.0% |
| NLB (preload f = 0.95) | 55,435.8 | +6.2% | **+10.9%** |
| Riks (imperfection = LBA mode 1, 0.014 mm) | rises to 104,955 (max load factor 2) | +101% | +110% |

## Judgment
- Consistent with OpenSees: path B is a lower bound (stopped at the cutoff while rising), and Abaqus puts the
  first bifurcation 6-8% above it; neither code finds buckling below 50,000 N mm.
- Strict criterion (user, 2026-11-19, "no local buckling"): first bifurcation 55,436-56,397 N mm, **10.9-12.8%
  above the requirement: passes.**
- Verdict for this case: **agree**.
