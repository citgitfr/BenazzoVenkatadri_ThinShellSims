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
       [--boom R011]                                # catalog boom (default: case geometry "boom")
       [--web S0 S1 ...]                            # web range(s) of section arc length s [mm]
       [--web-stack mirror|repeat] [--flatten-radius r]
```
Inputs are the per-facet generalized strains (membrane strains and
curvatures at the Gauss points) stored in the .npz, the laminate (layup,
ply stiffness and the five ply strengths Xt Xc Yt Yc S from the catalog;
`--yield` only for isotropic shells), and optionally the boom catalog ID.

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

## Flange and web
- TRAC webs (OM/CO bonded tabs) are two flange laminates bonded together:
  web facets are checked with the **doubled layup** (z from the bond plane).
  `mirror` (default): identical tapes bonded face to face, the lower one
  turned over (plies reversed, angles negated), e.g. [45/-45/-45/45] ->
  [-45/45/45/-45/45/-45/-45/45]; `repeat`: the plies twice as listed.
- Web facets = facet strips whose mid arc length s is in a web range:
  `--web S0 S1`, else case `"geometry": {..., "web": [[s0, s1]]}`, else for a
  TRAC/OM/CO catalog boom (`--boom` or `"geometry": {..., "boom": "R011"}`)
  the `line` segments of a `segments` section whose length is the catalog
  web width w. A TRAC/OM/CO boom with no web found prints a WARNING and is
  checked all as flange. TS and booms without an ID: all flange.
- A model built from a catalog boom section (shell-mesh `{"type": "boom"}`,
  or any branched section with `web` branches) has the doubled laminate on
  its web facets; its results meta lists them (`strip_label`), and those
  facets ARE the web here (with the model's web stack) unless `--web` is
  given. Older single-chain models put the single laminate on every facet,
  so their FE web is too compliant: web F from them is conservative. Say so.

## Coiling check
Run only when the simulation gives F < 1. The flange is flattened from the
smallest arc radius r (`--flatten-radius`, else min of R_A, R_B of the
catalog boom, else the arcs of the case section): k = [0, 1/r, 0] with
k_xx = k_xy = 0 held and N = 0, so eps0 = -A^-1 B k from the flange ABD
(0 for symmetric layups). Both signs of k are checked (which face is
concave is unknown in the facet frame) and the larger F is kept. Longitudinal
coiling about a hub is not included. The last line, `GOVERNING F`, is the
larger of the simulation F and the coiling F, and says which one it is.

## Report back
Max F, its mode and "fails / no failure predicted", the minimum R, the
critical facet (x, y, z), ply, angle and through-thickness position with s1,
s2, t12; the per-ply maxima; S23 used; the web facets and web layup (if
any); the coiling F, r used and governing F. Catalog strengths are mean RTD values
(not allowables); missing strengths (NA) make the check impossible: say
which and ask, do not invent them. The max often sits at clamp corners,
where stresses are mesh dependent: check with a second mesh or look at the
next ranked points.
