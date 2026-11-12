# it005 sanity flag: tip stiffness -47.7% from thin-walled beam theory
Cause (orchestrator investigation, 11-11-26): T003 with [0]x10 (h = 0.35 mm):
b^2/(R h) = 5.6e3 >> 1. The cross-section does not stay rigid under the tip load: the PNG (results/it005_*.png)
shows the edges curling near the tip and the largest Hashin index along the crown rather than at the edges. That is
shear lag / section distortion, so thin-walled beam theory (rigid section) overestimates k. The mesh is the
standard 5 mm (126 elements across the arc), so it is not a coarse-mesh effect. The design is feasible on every
constraint (k_FE 207 N/mm >= 0.05) but 33x heavier than it001, so the flag does not affect the optimum.
Same FE/beam ratio as it002 (0.523): the section distortion is set by the geometry (same lamina, all-0 plies); the [90]3 layup of it004 (ratio 0.95) has hoop-direction fibres that stiffen the section against distortion.
