# OpenSeesPy thin-shell simulations

Verification models for thin-shell cantilevers in OpenSeesPy, the first step
toward the design-space-exploration agent.

Units throughout: N, mm, MPa, tonne (density in t/mm^3).

For a plain-language account of what was done and why, see `SUMMARY.md`.

## Setup (AWS VM, no admin rights)

```
conda env create -f environment.yml
conda activate shells
```

Or call `D:\Users\<you>\miniconda3\envs\shells\python.exe` directly. Two
machine-specific fixes are baked into `environment.yml`:

- **OpenBLAS instead of MKL.** conda-forge's MKL build crashes `numpy.linalg`
  on the VM (Windows error `0xc06d007f`).
- **Mesa software OpenGL.** The VM has no GPU and Windows' built-in OpenGL is
  1.1, but VTK needs 3.2+. `shell_viewer.py` preloads Mesa's `opengl32.dll`;
  set `SHELL_VIEWER_HW_GL=1` to skip that on a machine with a GPU.

## Files

| File | What it does |
|---|---|
| `smoke_tests/smoke_shell.py` | 1000 x 30 x 0.1 mm steel strip, ShellMITC4: tip deflection, LayeredShell, first frequency vs beam theory |
| `smoke_tests/gui_check.py` | Opens opsvis/matplotlib windows to check the GUI works |
| `flat_plate_al.py` | Aluminum plate 1000 x 100 x 0.1 mm, clamped at x = 0, 1 x 1 mm mesh (element type and size selectable) |
| `shell_viewer.py` | Fast PyVista viewer: mesh with edges, fixed nodes, deformed shape coloured by element stress |
| `plate_tip_load.py` | Small tip load, linear: deflection and bending stress vs beam theory |
| `elastica.py` | Large-deflection cantilever (elastica), BVP solver cross-checked by shooting |
| `plate_large_deflection.py` | Large tip load with corotational shells (`ASDShellQ4 -corotational`), vs elastica |
| `results/` | Load-deflection curves (CSV + PNG) for the 10 mm and 5 mm meshes |

## Results so far

**Linear, small load** (`plate_tip_load.py`, 100,000 ShellMITC4, 606k DOFs, ~25 s solve):
tip deflection 1.2% stiffer than PL^3/3EI (the clamp suppresses anticlastic
curvature near the root); bending stress within 0.06% of Mc/I.

**Large deflection** (`plate_large_deflection.py`, 5 mm mesh, alpha = PL^2/EI up to 6.8,
tip drop 75% of L, tip rotation ~80 deg):

| alpha | v/L FE | elastica, beam EI | elastica, plate EI/(1-nu^2) | FE vs plate |
|---|---|---|---|---|
| 0.5 | 0.1484 | 0.1621 | 0.1453 | +2.1% |
| 1 | 0.2775 | 0.3017 | 0.2739 | +1.3% |
| 2 | 0.4635 | 0.4935 | 0.4604 | +0.7% |
| 3 | 0.5759 | 0.6033 | 0.5736 | +0.4% |
| 5 | 0.6931 | 0.7138 | 0.6920 | +0.2% |

The 10 mm and 5 mm meshes agree within 0.1%. Mid-span stress matches statics
on the deformed shape within ~1%.

## Lessons for later models

- **Wide-plate behaviour.** Once the plate curls, anticlastic curvature is
  suppressed (Searle parameter b^2/(R t) >> 1) and the plate stiffens to
  EI/(1-nu^2). For this geometry that happens already at alpha ~ 1. Expect the
  same in tape springs and booms.
- **Linear geometry is wrong at large loads.** ShellMITC4 at alpha = 2 gives
  v/L = 0.66 (elastica: 0.46) and no tip pull-back at all.
- **Use displacement control** for large rotations; load control stalled at
  alpha ~ 2.8. `ShellNLDKGQ` failed to converge on the first step.
- **Stresses after a Linear solve read as zero** until element forces are
  re-formed: call `ops.reactions()` after `ops.analyze()`.
- **LayeredShell** uses one integration point per layer, so n layers give
  (1 - 1/n^2) of the true bending stiffness. Use several sublayers per ply.
- **Cost.** Each Newton iteration costs ~35 us per DOF on the 2-core VM;
  a nonlinear sweep on the 1 x 1 mm mesh would take hours.
