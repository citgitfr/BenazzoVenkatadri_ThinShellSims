# Coarse-mode study (11-12-26, Federico + Claude): mode on <= 8000 DOFs vs time

**Question:** can the buckling mode (the part-B imperfection seed) come from a dense LBA on a mesh
of at most 8000 DOFs, with Abaqus used only for verification? What is the mode error, and how much
time does it save?

Scripts:
- `coarse_mode.py`: the library.
- `run_modes.py`: the seeds and their MAC values.
- `run_B.py`: part B with a given seed, using the unchanged boom_buckling.py.
- `shape_metrics.py`: phase-insensitive metrics.

Results are in `results/`. No skill code was changed.

## Mode: error and time

| case | reference mode (time) | cheap mode | time | mode agreement |
|---|---|---|---|---|
| tape 1 m, compression (11-06 it002) | production A scan, 51.1 N (12097 s) | dense LBA, full length, 5 mm (7859 DOFs) | 52 s | MAC 0.000. Spurious free-edge mode that depends on the mesh |
| | | dense LBA, full length, 8 mm | 49 s | MAC 0.000 (spurious) |
| | | **coarse nonlinear scan, 5 mm (7866 DOFs)** | **1104 s (11x faster)** | **MAC 1.000**. Load 43.5 N (-15%) |
| tape 200 mm, opposite bending | fine scan, 2 mm, 297 N mm (598 s) | dense LBA on the same mesh (7881 DOFs; already < 8000) | 48 s (12x) | m1 MAC 0.993; m2 MAC 0.000 |
| omega M008 [0/30/0], 1 m, compression (11-07 it005) | Abaqus LBA 546.6 N (317k DOFs): local lobes, 38.5 mm half-wave | dense LBA, full length, 6 / 8 mm | 79-83 s | MAC ~0. Element-scale zig-zag (29-36 mm half-wave, section MAC 0.31-0.34; m1to4 0.73) |
| | production seed: it003 A mode (23952 s, no crossing) | -- | -- | **orthogonal to Abaqus**: 500 mm global bulge, section MAC 0.07 |
| | | **dense LBA on a fine segment (4 mm x 8 mm, L 144, clamped), tiled** | **80 s (300x faster than A)** | right family: 35.7 mm half-wave (vs 38.5), section MAC 0.67 |
| | | dense LBA on a segment (3 mm, L 104) | 88 s | 50 mm half-wave, section MAC 0.38 |

(Whole-field MAC is phase-sensitive and is ~0 for local lobes shifted along x, so for omega the
half-wave and the section-shape MAC are the meaningful metrics.)

## Strength from part B: effect of the seed

| case | seed | B peak | B time | vs reference seed |
|---|---|---|---|---|
| tape 1 m | production A mode | 77.66 N (lower bound; no convergence at 0.0588 mm) | 606 s | -- |
| | coarse LBA m1 (spurious) | 70.50 N (lower bound; stopped at 0.0536 mm) | 1437 s | -9.2% (a stop, not a peak) |
| | coarse LBA m1-4 (spurious) | 71.84 N (lower bound) | 995 s | -7.5% (a stop, not a peak) |
| tape opposite bending | fine A scan mode | 395.14 N mm | 291 s | -- |
| | LBA m1 | 394.70 N mm | 309 s | -0.11% |
| | LBA m2 (wrong mode, MAC 0) | 394.87 N mm | 304 s | -0.07% |
| omega it005 | production (it003 A mode) | 528.7 N lower bound (stall after passing 500 N) | 19091 s | -- |
| | Abaqus LBA mode | 527.90 N lower bound (same stall) | 21644 s | -0.15% |
| | segment LBA s4 m1 | 527.64 N lower bound (same stall) | 21334 s | -0.20% |
| | full-length coarse LBA s8 m1-4 (wrong) | 528.29 N lower bound (same stall) | 20042 s | -0.08% |

All four omega paths are identical to 0.2% step by step and stall at the same point
(0.1555 mm, step 5, 29-33 iterations).

## Findings so far

1. A dense LBA on a coarsened full-length mesh does **not** give the mode: 0 of 2 cases. With
   8000 DOFs over 1 m, the elements are 8-35 mm long. The LBA then locks onto element-scale or
   free-edge modes. These are artefacts of the finite-difference Kg on a coarse mesh.
2. A dense LBA works when the mesh is already fine enough. That happened in two cases: the 200 mm
   tape (MAC 0.993), and a short fine segment of the omega boom, which found the right local mode
   family in 80 s.
3. For the global mode of the 1 m tape, the coarse **nonlinear** scan (ARPACK) reproduces the
   production mode exactly (MAC 1.000) 11x faster. Its estimate is 15% lower.
4. The B peak is insensitive to the seed in the cases that peak: in opposite bending, even a mode
   with MAC 0 changes the peak by 0.1%. The 1 m tape B path never peaks (each run is a lower
   bound where the solver stops), so its 7-9% spread reflects the solver stop, not mode error.
5. The production omega runs it004/it005 were seeded with a global mode that is orthogonal to the
   Abaqus local mode. **This is not why B crawled.** Seeded with the Abaqus mode itself, B stalls at
   the same 528 N in the same ~6 h. The crawl comes from the ASDShellQ4 solver near the limit point
   (the tangent has no geometric stiffness), not from the seed. With an amplitude of 0.0105 mm
   (t/10), the seed shape changes the B result by at most 0.2% in the cases tested.
6. Production A uses max_iter 10, which can end a scan with a false "march failed". On the
   opposite-bending case it stopped at 116 instead of 297 N mm.

## Conclusion

- **Mode error barely matters for the strength.** Over 3 cases and 10 B runs, a wrong seed
  (MAC 0) moved the B result by 0.1-0.2% where B peaks or stalls. On the 1 m tape, B never peaks,
  so the 7-9% spread there is where the solver stopped.
- **So the expensive step A can be replaced by a cheap seed.** This saves 12097 s (tape) and
  23952 s (omega) per design, minus about 80 s.
  - A segment LBA (about 80 s) gives the right local mode family.
  - A coarse nonlinear scan (about 18 min) gives the right global mode.
  - Even a coarse whole-boom LBA seed gives the same strength. The physical shape of the seed only
    matters for the report, and for an imperfection amplitude much larger than t/10.
- **The remaining time is all in B:** 5.5-6 h on omega for 5 steps, at 20-70 min per step at
  317k DOFs. The next speed-up has to come from B (a coarser B mesh, or Abaqus Riks for the
  verification only). Mode precomputation will not provide it.

## B mesh and early-stop test (11-13-26, `run_Bmesh.py`, results in `results/Bmesh/`)

Setup:
- Case: omega it005 with the true [0/30/0] laminate.
- Seed: the segment-LBA mode, remapped onto each mesh.
- The four runs ran in parallel.

| mesh | DOFs | stop rule | B result | time | vs 2.2 mm production rule (527.6 N, 21334 s) |
|---|---|---|---|---|---|
| 2.2 mm | 317,388 | stop at 500 N | 506.9 N (passes) | 7675 s | 2.8x faster, same pass/fail |
| 3 mm | 168,348 | production (stall after 500) | 549.3 N lower bound | 6502 s | +4.1% |
| 4 mm | 96,396 | production (stall after 500) | 591.4 N lower bound | 2583 s | +12.1% |
| 4 mm | 96,396 | stop at 500 N | 506.95 N (passes) | 1367 s | **15.6x faster**, same pass/fail |

- Up to the requirement, the path is mesh-independent. Load at 0.149 mm: 506.90 / 507.15 /
  506.95 N on the 2.2 / 3 / 4 mm meshes. The 4 mm mesh also converges in fewer iterations
  (17 vs 25 at step 4).
- Near the limit point the coarse meshes are too stiff. The stall moves up from 528 to 549 to
  591 N (Abaqus LBA: 546.6 N). So a coarse mesh is **unconservative by up to ~12% near the peak**.
  It could pass a design whose true strength lies between the requirement and the coarse stall.
- Safe use: run a 4 mm B with the cutoff at 1.12 x the requirement (or 3 mm at 1.04 x). Then
  check the final design on 2.2 mm (cutoff at the requirement) and with Abaqus.
  - Estimated cost: about 0.5-0.75 h per omega design, instead of about 12 h (A + B).
