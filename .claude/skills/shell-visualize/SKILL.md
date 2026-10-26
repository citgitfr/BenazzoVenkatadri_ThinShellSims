---
name: shell-visualize
description: Draws a solved OpenSeesPy shell (results .npz from shell-bc-load) as the deformed shape over the undeformed outline, side by side coloured by a curvature field and by a stress or Hashin failure-index field, as a PNG and/or an interactive 3D window, and writes a .vtp with every field for ParaView. Use to look at or present model results.
---

# shell-visualize

Script: `shell_visualize.py` (this folder; PyVista, Mesa software OpenGL is
preloaded on the GPU-less VM; set `SHELL_VIEWER_HW_GL=1` on a machine with a GPU).

```
python shell_visualize.py results/case.npz --list                       # fields
python shell_visualize.py results/case.npz --png results/case.png --no-gui
       [--curvature k_xx|k_yy|k_xy|k_1|k_2|k_absmax] [--stress sigma_xx_top|...|hashin_max|hashin_ply3|hashin_mode|hashin_R]
       [--field F (one panel)] [--scale S | --target T] [--view iso|xy|xz|yz] [--undeformed] [--title ..]
```
Default panels: `k_xx` and `hashin_max` (if the laminate has all five strengths)
or `sigma_xx_top`. A `.vtp` with all fields is written next to the .npz.

Fields: point `ux uy uz rx ry rz |u|`; per facet `k_xx k_yy k_xy k_1 k_2
k_absmax` [1/mm, change from the initial shape, CLT sign: k_xx > 0 = top
(+n side) in tension], `eps_xx eps_yy gam_xy`, `sigma_{xx,yy}_{top,bottom}
tau_xy_{top,bottom} von_Mises_top` [MPa, facet frame x along the extrusion],
`hashin_max`, `hashin_ply<k>`, `hashin_mode` (0 fibre tension, 1 fibre
compression, 2 matrix tension, 3 matrix compression), `hashin_R` (strength ratio).

## Steps
1. Make the PNG offscreen (`--no-gui`), then **Read the PNG** and check it:
   the shape deforms the expected way, fixed nodes (black dots) are at the
   supports, colour ranges make sense. Edge-on views of a flat plate show only
   the outline.
2. Interactive window: start it as a separate process so it does not block:
   `Start-Process -FilePath <python> -ArgumentList '"<path>\shell_visualize.py"', '"<file>.npz"'`
   and give the user the command to reopen it. Ask the user to close windows
   when done (CPU rendering slows the VM).
3. Report: file paths, what each panel shows (field, units, min/max), the
   deformation magnification ("drawn xN": always state it; a linear result
   drawn x500 looks like a large deflection), anything odd.

## Rules
- Fields of both signs: symmetric coolwarm (white = 0); one-signed: viridis;
  Hashin index: turbo from 0 to its max (failure at 1, stated in the panel text).
- A uniform field (pure bending) shows one colour; that is correct.
- Coincident laminate elements are drawn once per facet.
- Window: drag rotate, shift+drag pan, wheel zoom, r reset, x/y/z axis views, q quit.
