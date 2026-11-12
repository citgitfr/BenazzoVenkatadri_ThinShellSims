# 11-11-26 (Tara): tape spring L001 [0/0/0], R = 20 mm, 180 deg, L = 1000 mm, cantilever

Laminate: L001 (IM7/8552), [0/0/0], t_ply 0.035 mm, h = 0.105 mm (`L001_000.json`; OpenSees ABD vs CLT: A, B exact, D -0.4%).
Section: arc R = 20 mm, b = pi R = 62.83 mm (centre of curvature +z, edges up). Root edge x0 clamped, tip xL rigid end.
Mesh: ASDShellQ4, 2.5 mm (400 x 25 = 10000 elements, 62562 DOFs). Python: shells env, 16 BLAS threads.
Hashin 2D (failure-check skill), S23 = Yc/2 default; catalog mean RTD strengths.

| Case | Script / case | Result | Max Hashin F | Mode, location |
|---|---|---|---|---|
| Axial 10 N (linear) | `ts_L001_axial*.json/_opensees.py` | tip ux = 0.00957 mm (PL/EA 0.00951, +0.6%) | 4.0e-7 (R = 1576) | fibre tension, uniform s1 = 1.59 MPa |
| Tip load 1 N opposite sense, Fz = -1 (linear) | `ts_L001_opp_bending*` | **tip uz = -8.52 mm** (1.25 mm mesh: 8.50; PL^3/3EI = 8.41, EI = 3.96e7 N mm^2) | 4.2e-4 (R = 49) | fibre tension, s1 = 50 MPa at root edges (Mc/I = 51) |
| Coiling on 40 mm hub (flatten r = 20 + k_x = 1/40, worst of 4 signs) | `coil_hub_check.py` -> `results/coil_hub_40mm.txt` | strength ratio 2.34 | **0.183** | matrix tension, outer ply, s1 = 217, s2 = 27.4 MPa |
| (flattening only, skill CLI) | failure_check.py | | 0.136 | matrix tension |

Mass (objective-constraints skill): **10.42 g** (rho 1580 kg/m^3; hand check rho b h L = 10.42 g).

Nonlinear checks of the bending case:
- Corotational load control / displacement control of the 1 N tip load (`ts_L001_opp_bending_NL`, `_DC`, 5 mm mesh)
  stalled near 0.23-0.25 N with the path still linear (no softening): solver non-convergence (the shell-buckling
  SKILL.md notes rigidLink rigid ends are small-rotation only), not a snap.
- shell-buckling phase B only (`ts_L001_opp_moment_buckling.json`, L = 200, uniform opposite-sense moment,
  rotation control, perfect tape, no imperfection): moment linear (197e3 N mm/rad vs EI/L 198e3) and still rising
  at 3328 N mm (0.017 rad) when stopped by request. Root moment of the 1 N tip load = 1000 N mm, at least 3.3x below that, so no
  snap/buckling under the 1 N load; the peak (snap) moment was not determined. Phase A (ShellNLDKGQ scan) was
  stopped after 78 min without output.

## [90/90/90] (same geometry, loads, mesh; `ts_L001_90_*`, laminate `L001_909090.json`)

| Case | Result | Max Hashin F | Mode, location |
|---|---|---|---|
| Axial 10 N (linear) | tip ux = 0.169 mm (PL/EA 0.169) | 5.8e-4 (R = 42) | matrix tension, s2 = 1.54 MPa |
| Tip load 1 N opposite sense (linear) | **tip uz = -149.6 mm** (1.25 mm mesh 149.2; PL^3/3EI = 149.0, EI = 2.24e6 N mm^2), tip rotation 0.22 rad | **0.589** (1.25 mm mesh 0.621), R = 1.30 (1.27) | matrix tension, s2 = 49-50 MPa at the root edges (Mc/I = 51 -> F = 0.63) |

Snap check (shell-buckling phase B only, L = 200 uniform opposite-sense moment, perfect tape,
`ts_L001_90_opp_moment_buckling.json`): moment still rising at 1056 N mm (0.1 rad), above the 1000 N mm root
moment, so no snap under 1 N. The path softens (slope 111 -> 97 N mm per 0.01 rad; 1056 vs linear 1118 N mm at
0.1 rad, -5.6%): cross-section flattening is starting. PL^2/EI = 0.45, so the linear tip deflection is a few %
high (beam geometric nonlinearity) while flattening makes the root a few % softer; the linear 149.6 mm is an
estimate to within ~5-10%. No material failure predicted; margin R ~ 1.3 on the linear stresses.
