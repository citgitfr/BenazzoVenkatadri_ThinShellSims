# boom_1m_comp100N_k40_tors1deg10Nmm_hub50_lighter: lighter-than-best check (stopped at 8 designs)

Orchestrator, 2026-11-21. Follow-up of the finalized study `boom_1m_comp100N_k40_tors1deg10Nmm_hub50`
(best: L017/Y016/C008, 105.5 g, k 41.12 N/mm). User request: run 10 designs lighter than the best and check
that they fail, as the screen suggests. Same requirements (k >= 40 N/mm, pin-pin buckling >= 100 N, twist <= 1
deg at 10 N mm, Hashin F < 1 in all load cases and flattening, F_hub < 1 on the 50 mm hub radius).

Designs came from `explore_lighter/screen/screen.csv` (same requirements with the stiffness, buckling and twist
estimate thresholds relaxed; exact coiling checks kept), chosen with `study.py choose --exploratory-screen`,
from the closest to passing to clearly failing, across corrugated, omega, TRAC and tape-spring sections.
Script: `sweep_lighter.sh`, log: `sweep_lighter.log`, results: `ledger.csv`.

## Result: every lighter design fails bending stiffness, as predicted

| it | Design | Type | Mass (g) | k screen (N/mm) | k FE (N/mm) | twist FE (deg) | F_gov | F_hub | Feasible |
|---|---|---|---|---|---|---|---|---|---|
| 1 | L028/Y002/C011 | CO | 80.9 | 40.36 | 37.56 | 0.00054 | 0.55 | 0.63 | no (k) |
| 2 | L011/Y016/C005 | CO | 105.1 | 39.56 | 35.63 | 0.00081 | 0.63 | 0.73 | no (k) |
| 3 | L028/Y001/C005 | CO | 80.8 | 38.94 | 32.83 | 0.0015 | 0.55 | 0.63 | no (k) |
| 4 | L023/Y016/C008 | CO | 104.2 | 37.93 | 36.59 | 0.00038 | 0.70 | 0.79 | no (k) |
| 5 | L038/Y016/C008 | CO | 100.8 | 34.90 | 33.36 | 0.00055 | 0.46 | 0.52 | no (k) |
| 6 | L011/Y001/C008 | CO | 78.6 | 33.06 | 31.35 | 0.00071 | 0.63 | 0.70 | no (k) |
| 7 | L028/Y016/M006 | OM | 88.0 | 24.6 | 22.47 | 0.0023 | 0.15 | 0.30 | no (k) |
| 8 | L028/Y031/R014 | TRAC | 71.8 | 25.86 | 24.86 | 0.19 | 0.06 | 0.46 | no (k) |

- FE/screen stiffness ratio 0.84-0.97: the screen is optimistic, never pessimistic, so no lighter catalog
  design is closer to 40 N/mm than its estimate. Closest miss: it001, 37.56 N/mm (6 % short).
- Every other evaluated constraint passes with margin (twist, Hashin static/torque/axial, flattening, F_hub).
  Buckling was skipped by study.py once stiffness failed.
- it001 (C011) was rejected by the screen only on the St Venant twist estimate (428 deg); FE gives 0.00054 deg
  (warping restrained by the clamped root and rigid tip). The screen twist estimate for C011 is very
  conservative, but the design still fails stiffness.
- Mesh convergence it001 (4.5 -> 2.7 mm): stiffness 0.18 %, converged. Its Abaqus script was written
  (`iterations/it001/abaqus_it001_L028_Y002_C011.py`) but not run (study stopped).

## Not completed (user decision 2026-11-21: stop at 8)

- it009 L028/Y031/T016 (tape spring, 28.2 g): static case ran (tip deflection 63.3 mm under 100 N, far from the
  2.5 mm limit; F 0.78), twist 0.687 deg, load-case Hashin F < 1e-4; not recorded because study.py could not
  parse the load-case failure index: failure_check.py prints `SIMULATION MAX F` only for sections with webs
  (TS has none). Skill fix not approved; iteration left unrecorded.
- it010 L038/Y009/R015 (lightest catalog design, 4.9 g; screen k 0.01 N/mm, buckling 6.7 N, twist 946 deg)
  not run.

## Conclusion

The finalized design L017/Y016/C008 (105.5 g) remains the lightest catalog design meeting all requirements.
