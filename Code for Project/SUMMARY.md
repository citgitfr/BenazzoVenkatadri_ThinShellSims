# Summary of work: OpenSeesPy setup and shell-model verification

**Date:** 10/22/26
**Who:** Federico, working with Claude Code (Opus 5.5)
**Commit:** `b5e140c` on `main` ("Add OpenSeesPy thin-shell verification models")

## Why

Before an agent can explore the design space of thin composite shells, we need
three things: a working Python/OpenSeesPy environment on the AWS VM, a way to
visualize shell models, and evidence that OpenSees shell elements give correct
answers for small and large deflections. This commit covers all three, using
a flat aluminum cantilever plate as the test case. Composites and curved
cross-sections (tape springs, booms) come next.

## What was done, step by step

### 1. Python environment

- The VM's Python 3.13 was the stripped-down "embeddable" build, with no pip
  and no tkinter, so nothing could be installed.
- I installed **Miniconda** for the user only (no admin rights needed) and
  created an env called **`shells`**: Python 3.12, OpenSeesPy 3.8.0, opsvis,
  numpy, scipy, matplotlib and pyvista. Conda packages come from conda-forge
  only, which avoids the Anaconda Terms of Service prompt.
- **Problem found:** numpy crashed on any matrix operation (Windows error
  `0xc06d007f`). The cause was conda-forge's MKL math library, not OpenSees.
  **Fix:** switch the env to OpenBLAS.
- **Problem found:** the VM has no GPU, so the 3D viewer (VTK) could not create
  an OpenGL window. **Fix:** install Mesa, a software OpenGL renderer that runs
  on the CPU. `shell_viewer.py` loads it automatically.
- `environment.yml` rebuilds the same env, with both fixes:
  `conda env create -f environment.yml`.

### 2. Smoke tests (`smoke_tests/`)

- `smoke_shell.py` models a 1000 x 30 x 0.1 mm steel strip with `ShellMITC4`
  elements and checks it against beam theory. Tip deflection is within 0.35%,
  first natural frequency within 0.24%. All checks pass.
- **Finding:** OpenSees' `LayeredShell` section uses one integration point per
  layer, so modeling n plies as n layers gives only (1 - 1/n^2) of the true
  bending stiffness. 4 layers are 6.25% too soft. For composite layups we will
  need several sublayers per ply. The test now checks this behaviour.
- `gui_check.py` confirms that plotting windows open.

### 3. Aluminum plate model and viewer

- `flat_plate_al.py`: 1000 x 100 x 0.1 mm aluminum plate (E = 69 GPa,
  nu = 0.33), clamped on one short edge, meshed with 1 x 1 mm shell elements:
  100,000 elements, about 606,000 degrees of freedom.
- The standard OpenSees plotting tool (opsvis) needed about 90 s to draw this
  mesh and lagged badly. I wrote **`shell_viewer.py`**, a PyVista-based viewer
  that draws it in about 3 s and shows mesh lines, clamped nodes, the deformed
  shape and stress colours.

### 4. Small tip load, linear analysis (`plate_tip_load.py`)

- A small downward load at the free edge bends the plate about its weak axis.
- **Deflection:** within 1.2-2.8% of beam theory (PL^3/3EI). The FE model is
  slightly stiffer because the clamp prevents the plate from curling across
  its width near the root, which is expected plate behaviour.
- **Bending stress:** within 0.06% of beam theory (Mc/I).
- **Pitfall found:** with OpenSees' `Linear` solution algorithm, element
  stresses read as zero after the solve. Call `ops.reactions()` after
  `ops.analyze()`.

### 5. Large loads with nonlinear geometry (`plate_large_deflection.py`, `elastica.py`)

- Linear analysis can't capture large deflections. With linear geometry the
  tip deflection is overestimated by 40% at alpha = PL^2/EI = 2, and the tip
  never moves inward.
- I compared three OpenSees shell elements. **`ASDShellQ4 -corotational`**
  handled large rotations; `ShellNLDKGQ` failed to converge.
- Load control stalled at moderate loads. **Displacement control** (stepping
  the tip deflection and letting OpenSees find the load) reached alpha = 6.8:
  the tip drops 75% of the length and rotates about 80 degrees.
- **Reference solution:** the elastica, the exact large-deflection solution
  for a cantilever with a vertical tip load. `elastica.py` solves it two
  independent ways, which agree to 5 digits.
- **Result:** FE agrees with the elastica within **0.2-2%**, provided the
  elastica uses the wide-plate stiffness EI/(1-nu^2). Once a wide, thin plate
  curls, it can no longer bend freely across its width, so it stiffens. Plain
  beam theory (EI) is about 5% off. **Takeaway for the project:** wide thin
  shells under large bending do not behave like beams, which supports using
  shell FE.
- 10 mm and 5 mm meshes agree within 0.1%, so the results are mesh-converged.
  The plots and data are in `results/`.

## Practical notes for teammates

- **Run times on the VM (2 cores):**
  - linear solve on the 1 mm mesh: about 25 s
  - nonlinear sweep on the 10 mm mesh: about 4 min
  - nonlinear sweep on the 5 mm mesh: about 25 min
  - a nonlinear sweep on the 1 mm mesh would take hours

  Use coarser meshes for nonlinear runs. They give the same answer here.
- **Close 3D viewer windows when you're done.** Without a GPU they render on
  the CPU and slow down everything else on the VM.
- Every script has a `--no-gui` option to run the checks without opening
  windows.

## Next steps

1. Composite layups: orthotropic plies at arbitrary angles, checked against
   Classical Laminate Theory, with enough sublayers per ply.
2. Curved cross-sections (tape spring, lenticular boom) using the same
   verification approach.
3. A parametric run harness and results database, the foundation for the
   design-exploration agent.
