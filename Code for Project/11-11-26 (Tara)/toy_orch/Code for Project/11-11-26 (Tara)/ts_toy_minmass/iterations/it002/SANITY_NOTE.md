# it002 sanity flag: tip stiffness -47.7% from thin-walled beam theory
Cause (orchestrator investigation, 11-11-26): T003 is a semicircle with R = 200 mm, b = 628 mm and h = 0.105 mm, so
b^2/(R h) = 1.9e4 >> 1. The cross-section does not stay rigid under the tip load: the PNG (results/it002_*.png)
shows the edges curling near the tip and the largest Hashin index along the crown rather than at the edges. That is
shear lag / section distortion, so thin-walled beam theory (rigid section) overestimates k. The mesh is the
standard 5 mm (126 elements across the arc), so it is not a coarse-mesh effect. The design is feasible on every
constraint (k_FE 62 N/mm >= 0.05) but 10x heavier than it001, so the flag does not affect the optimum.
