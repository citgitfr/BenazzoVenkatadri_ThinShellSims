---
name: failure-check
description: Computes the stresses in every ply of every element of a solved OpenSeesPy shell (results .npz from shell-bc-load) and the 2D Hashin failure criterion of Benazzo & Pellegrino (AIAA SciTech 2025, Eq. 3), reporting how close the component is to failure (max index and failure mode, strength ratio, critical element/ply/location, per-ply maxima). Tsai-Hill is available as an option. Use for any strength or failure check of a shell model.
---

# failure-check

Script: `failure_check.py` (this folder). Units: MPa.

```
python failure_check.py results/case.npz [--criterion hashin|tsai-hill] [--S23 ..]
       [--at gauss|centroid] [--top 10] [--csv f.csv]
       [--Xt .. --Xc .. --Yt .. --Yc .. --S ..]     # supply/override strengths [MPa]
       [--yield SY]                                 # isotropic shell: X = Y = sy, S = sy/sqrt3
       [--laminate lam.json]                        # if not the one stored in the results
```

## Method
- Generalized strains (eps0, k) per facet and Gauss point (facet frame, CLT
  signs) -> eps(z) = eps0 + z k at the bottom, middle and top of every ply ->
  ply axes with T_eps(theta) -> [s1, s2, t12] = Q eps12 (reduced stiffness
  of that ply). Exact kinematics, independent of the LayeredShell layer
  integration.
- **Hashin 2D** (default; Benazzo & Pellegrino 2025, Eq. 3, after Hashin 1980 /
  Reddy & Pandey 1987). Only the mode matching the stress sign is active,
  F = max of the active modes, failure at F >= 1:
  - fibre tension, s1 >= 0: `F_ft = (s1/Xt)^2 + (t12/S12)^2`
  - fibre compression, s1 < 0: `F_fc = (s1/Xc)^2`
  - matrix tension, s2 >= 0: `F_mt = (s2/Yt)^2 + (t12/S12)^2`
  - matrix compression, s2 < 0: `F_mc = (s2/(2 S23))^2 + ((Yc/(2 S23))^2 - 1) s2/Yc + (t12/S12)^2`
  The paper prints F_mc with S12 instead of S23 in the 2nd/3rd terms and a
  minus on the shear term; the standard Hashin form above is used. S23 is not
  in the catalog: default S23 = Yc/2 (then F_mc = (s2/Yc)^2 + (t12/S12)^2);
  give `--S23` if known and say which was used.
- Strength ratio R: the factor on all ply stresses that brings a point to
  F = 1 (solved per mode from a R^2 + b R = 1, exact for the linear term of
  F_mc). It is a load factor **only for a linear analysis**; after a
  nonlinear run, re-run at a higher load instead.
- `--criterion tsai-hill`: `(s1/X)^2 - s1 s2/X^2 + (s2/Y)^2 + (t12/S)^2`, X, Y by stress sign.
- `--at gauss` (default) checks the 4 Gauss points of each element;
  `centroid` averages them first (what the stress plots use).

## Report back
Max F, its mode and "fails / no failure predicted", the minimum R, the
critical facet (x, y, z), ply, angle and through-thickness position with s1,
s2, t12; the per-ply maxima; S23 used. Catalog strengths are mean RTD values
(not allowables); missing strengths (NA) make the check impossible: say
which and ask, do not invent them. The max often sits at clamp corners,
where stresses are mesh dependent: check with a second mesh or look at the
next ranked points.
