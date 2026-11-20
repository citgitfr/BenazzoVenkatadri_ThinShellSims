# Plan for iterations 8-20 (agreed with Tara, 2026-11-18)

User decision 2026-11-17: run to iteration 20 (stop rule's minimum), to test whether the
closed-boom bending-buckling estimate is conservative for some section family (a lighter
boom than the best). The user may change this at any time.

State at the time of the plan: best it006 L011/Y026/C008 104.9 g (feasible, converged,
Abaqus agree). Stiffness calibration 0.953-0.973 (5 runs): designs lighter than the best
that miss the stiffness estimate are genuinely infeasible; buckling is the only open question.

| iter | design / purpose |
|---|---|
| 7 (running) | L006 [45/0/0/45] C008, 102.8 g, est -13%: last plausible lighter design |
| 8 | depends on it007 (mesh convergence is a separate `converge` run, not an iteration): it007 PASSES -> it008 = mirror layup L006 [-45/0/0/-45] C008 (same mass; checks the unbalanced layup's buckling is not sign-dependent, since the margin is ~1-2%); it007 FAILS -> its stall = measured C008 strength (no extra run), it008 = the M022 omega probe below and every later row moves up one, the freed last slot = one more design that buckles below the requirement (a real strength) |
| 9 | (user decision 2026-11-18) LONG SHOT: L028 [30/0/30] C008, 81.2 g (-21% vs best it007 102.2 g), k_cal 27.3, buckling est 28,803 (-42%): passes only if the C008 estimate is ~1.7x conservative (known >= 1.17x); if it fails its B peak/stall is the first REAL off-axis C008 strength (replaces one of rows 16-17). Catalog NOT to be changed (user). |
| 10 | M022 omega L028 [0/0/0/0/0], 106.1 g, est -8%: omega calibration (4 mm coarse B); later rows move down one |
| 10 | C005 with a 0/90 layup: corrugated calibration inside the LBA-fit domain |
| 11 | C006 closest design: calibration |
| 12 | C007 closest design: calibration |
| 13 | BALANCED: L011 [30/-30/0/-30/30] C005 (~132 g): mass cost of a balanced laminate (user request) |
| 14-15 | [60/0/0/60] on C008 with L030 / L002 (~106 g, est -5/-6%): robustness of the C008 margin |
| 16-17 | one design per family with est 20-30% short: B peaks before the cutoff -> real strength (calibration) |
| 18-20 | follow the data (more probes of a conservative family, else mirror checks of the best) |

Buckling-run time rule (user, 2026-11-18 20:50; iteration 12 onward), checked 2 h after the path starts:
- FAILING (an attempt below 50,000 N mm diverged with residual >= 1e-3, or the last converged load is well
  below 50,000 with steps failing): stop the run, record the stall and bracket with `buckling-stopped`, go to
  the next iteration.
- POSSIBLY PASSING (last converged load close to 50,000, response still linear, failed attempts above 50,000
  ended near convergence, residual <~ 1e-4): let it run past 2 h until it passes or clearly stalls; check hourly.
- Unclear: ask the user.

STRICT BUCKLING CRITERION (user decision 2026-11-19, after the it007 all-cases Abaqus check): "does not
buckle" = no local buckling: the first bifurcation (Abaqus LBA mode 1 and preloaded NLB eigenvalues) must be
above 50,000 N mm, not only the OpenSees imperfect path B. it007 (102.2 g): Abaqus LBA 49,457 / NLB
48,445-48,786 -> fails by ~1%. Feasible designs re-checked in mass order with the Abaqus buckling script
(verify <i> --all-cases, buckling job first, 8 CPUs, ~7 min): it006 104.9 g, it015 105.5, it014 106.2, it005
107.7, it004 110.0 (it013 131.3 g, balanced, would exceed the 10-verification budget). The first that passes
is the final design; its three linear cases are then run and compared too.

Abaqus verifications (2 of min 5 done: it001, it006): it004 (OM, 5-ply), one calibration
probe (C005 or M022), and the final best with `study.py verify <i> --all-cases` (static,
torque, lateral 50 N, buckling; user request). Ask before > 1 CPU for the buckling run.
