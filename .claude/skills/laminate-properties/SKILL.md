---
name: laminate-properties
description: Turns UD lamina properties (from the project catalog .claude/memory.material_property_catalog/UD_lamina_catalog_SI.txt by ID, or given E1 E2 nu12 G12 [nu23] and strengths) and a layup into the OpenSeesPy constitutive definition of a thin shell (ElasticOrthotropic -> PlaneStress -> PlateFromPlaneStress, LayeredShell sections, coincident per-angle ASDShellQ4 orientation), with the CLT ABD and a check of the ABD OpenSees actually sees. Also isotropic shells. Replaces the v1.0 PlyPropertyGenerator, LayupFromPlyGenerator, TheoreticalABDGenerator and ABDFromOpenSeesPyLayup agents.
---

# laminate-properties

Script: `laminate_properties.py` (this folder). Units out: **N, mm, MPa, t/mm^3**.
The catalog is in Pa and m; the script converts (Pa x 1e-6 -> MPa, m x 1e3 -> mm).

Python: the conda env `shells` (openseespy 3.8): Federico
`D:\Users\fbenazzo\miniconda3\envs\shells\python.exe`, Tara
`D:\Users\tvenkata\miniforge3\envs\shells\python.exe`.

## Command line

```
python laminate_properties.py --list-catalog                       # IDs, usable for stiffness / Tsai-Hill?
python laminate_properties.py --catalog L024 --layup "[0/±45/90]s" --check [--thickness 0.08]
python laminate_properties.py --E1 135000 --E2 10000 --nu12 0.3 --G12 5000 [--nu23 ..] [--Xt .. --Xc .. --Yt .. --Yc .. --S ..] \
       --angles 0 45 -45 90 --thickness 0.125 --check
  options: --n-sub N (layers per ply)  --no-merge  --G-out G  --save-json lam.json  --save-abd abd.csv  --emit calls.py
```
- Layup notation: `[0/±45/90]s`, `[0_2/90_2]s`, `[0/90]2`, `[45/0/0/45]`, or `--angles`.
  Plies are listed **bottom (-z) to top (+z)**; if the user does not say, the
  first ply listed is the bottom one, and say so. Angle: from the facet x axis
  (along the extrusion) to the fibre, CCW about the facet normal.
- Thickness defaults to the catalog `t_ply`; one value or one per ply.
- `--check` measures the ABD of one OpenSees facet (imposed strains, work) and
  compares with CLT. Expect A, B ~1e-15 and D low by ~1/(total layers)^2.
  Anything bigger is a definition error: do not present it as verified.
- `--save-json` writes the laminate (materials incl. strengths, plies, n_sub,
  merge) for the other skills and case files (`{"laminate": {"json": "lam.json"}}`).

## Python

```python
import laminate_properties as lp
lam = lp.laminate_from_spec({'catalog': 'L024', 'layup': '[0/90]s'})           # or {'ply': {...}, 'layup':..., 'thickness':...}
lam = lp.Laminate.isotropic(E=69000, nu=0.33, t=0.1, rho=2.7e-9, strength=None)  # homogeneous shell
lam.abd(); lam.measure_abd(); lam.groups(); lam.save('lam.json')
sections = lam.define(mat_tag=1, sec_tag=1)    # in an open model: [(sec_tag, theta)], one element per entry per facet
```
Elements are created by the shell-mesh skill (it orients each facet).

## Report back
- the material table (inputs, derived, strengths, t_ply) and **visibly**: "nu23
  was not given, so nu23 = nu12 = ... was assumed (G23 = ... MPa)"; catalog
  `*` estimates; catalog G23 inconsistent with E2/(2(1+nu23)); WARNING lines;
- the layup table (ply, angle, t, z range, element group), "ply 1 = bottom";
- CLT ABD with units and the convention N = A eps + B k, M = B eps + D k
  (engineering gam_xy, twist k_xy = -2 w,xy); point out B = 0 (symmetric),
  A16 = A26 = 0 (balanced), D16/D26 (bend-twist);
- the `--check` line.

## Rules (from v1.0 verification; do not get these wrong)
- Transverse isotropy: E3 = E2, G13 = G12, nu13 = nu12, G23 = E2/(2(1+nu23)).
- `ElasticOrthotropic(tag, Ex, Ey, Ez, vxy, vyz, vzx, Gxy, Gyz, Gzx, rho)`: v_ij =
  -eps_j/eps_i, so **vzx = nu31 = nu12 E2/E1** (~0.02), not nu13.
- OpenSees 3.8 cannot rotate a material; one ASDShellQ4 has one `-local` for
  all its layers. So: one LayeredShell + one coincident ASDShellQ4 per
  **distinct angle** (same-angle plies share one; exact with `-noeas`), void
  (E = 0) layers elsewhere. `-noeas` is required with coincident elements and
  makes coarse meshes stiffer (5% at 20 x 2 in a [30]4 test): do a mesh
  convergence study.
- LayeredShell integrates at layer mid-planes: n_sub layers per ply
  (default max(2, ceil(15/n_plies))); D error ~1/(layers)^2; LayeredShell
  needs >= 3 layers. ABD does not depend on nu13, nu23, nu31, G23.
- Give consistent constants: compute nu21 = nu12 E2/E1, never a separately
  rounded nu21.
- PlateFromPlaneStress takes one transverse shear modulus (G_out = G13 default).
- Missing E1/E2/G12/nu12 in the catalog row: stop and say so (do not invent).
