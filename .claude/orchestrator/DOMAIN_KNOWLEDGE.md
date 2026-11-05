# Domain knowledge: thin-shell coilable booms

Read once per session before a study. This is what you **judge** results
with. The numbers you report always come from the tools (PROTOCOL.md).
Symbols: R transverse radius of an arc, alpha its subtended angle (rad),
b = R alpha the flattened width, t (h) the thickness, L the length, D the
laminate bending stiffness matrix, A the membrane stiffness matrix,
E_x = 1/(h a11) with a = A^-1.

## 1. Thin-shell mechanics you need

- **Membrane vs bending.** Bending energy scales with t^3 and membrane
  energy with t. A thin shell deforms inextensionally wherever the geometry
  allows it, and stretching only where it must. Gauss: changing the Gaussian
  curvature K = k1 k2 requires mid-surface strain. A cylinder (K = 0) can be
  flattened or rolled with no stretching. That is why coilable booms are
  developable (cylindrical arcs + flat webs), and why flattening stress is
  pure bending: strain = z dk, max |strain| = (t/2)(1/R).
- **Bending boundary layer.** Near a clamp, a load or a geometric
  discontinuity of a curved shell, bending decays over a length of about
  2.4 sqrt(R t). For R = 10 mm and t = 0.1 mm that is about 2.4 mm. Stresses
  there need elements smaller than this length: this is why failure indices
  at the root are mesh dependent and why `converge` tolerates 10% on F_sim.
- **Membrane locking.** Thin curved shells modelled with low-order elements
  are too stiff if the mesh across the curvature is coarse. The study uses
  at least about 8 elements across the arc (size = min(5, b/8) mm). Never
  coarsen it.
- **Laminate (CLT).** Symmetric layups give B = 0. Any 15-75 deg ply in the
  0..90-only catalog makes the laminate unbalanced: A16, A26 (extension-shear)
  and D16, D26 (bend-twist) are non-zero, so a tip load also twists the boom.
  Cross-ply layups have neither coupling. With few plies, D is dominated by
  the outer plies: the outer 0 deg plies carry EI, while +-45 plies carry
  torsion (GJ) and the shear needed for flattening-induced stresses. With
  ply thickness fixed at 0.035 mm, thinner laminates coil to smaller radii
  but have lower EI (proportional to h) and much lower local buckling
  resistance (proportional to h^2 to h^3).
- **Failure.** The project uses Hashin 2D per ply (fibre/matrix,
  tension/compression; S23 = Yc/2 by default). Coiled thin plies usually fail
  in matrix tension (transverse bending of 0 plies when flattening) or in fibre
  compression on the inner face (longitudinal coiling). Thin plies have higher
  in-situ transverse strength than the catalog values: catalog Yt is
  conservative for 0.035 mm plies. Say so, but do not modify it.

## 2. The four boom families (catalog types)

| | Tape spring (TS) | TRAC (TRAC) | Omega / lenticular (OM) | Corrugated (CO) |
|---|---|---|---|---|
| Section | one circular arc, open | two arcs (flanges) bonded back to back along a flat web, open, T-like (branched) | two shells, each a 3-arc chain (concave-convex-concave), bonded along two flat tabs: **closed** | two shells with several lobes (2n+1 arcs), bonded tabs: closed |
| Torsion | St Venant only, GJ = G b t^3/3: very low | open, low; the shear centre is far from the centroid | Bredt, GJ ~ 4 A_enc^2 G t / s: orders of magnitude higher | closed, high |
| Bending | strong about the axis that puts the arc's depth in bending; weak the other way | high EI about the web-normal axis for its stowed size; much lower about the other axis | high and nearly balanced about both axes | highest per stowed height; local-buckling resistant (short lobes) |
| Typical failure / instability | snap-through (opposite sense), torsional buckling (equal sense), flexural-torsional column buckling | flange-tip local buckling and lateral-torsional buckling | local buckling of the flattest arc; tab delamination; strongly imperfection-sensitive | local lobe buckling |
| Coiling | flatten from R plus bend to hub; simple | flanges flatten onto the web plane; web is double thickness (twice h) | both shells flatten; tabs stay bonded; often needs a deployment mechanism | as OM, smaller r means higher F_flat |
| FE in this project | **supported** | **not yet** (branched section, double web) | **not yet** (closed section) | **not yet** |

Rules of thumb:
- Closed sections win whenever torsion or flexural-torsional buckling
  matters. Open sections are simpler, lighter and coil more easily.
- For an open section, the shear centre lies outside the arc (for a
  tape-spring arc, at about e = 2R (sin a - a cos a)/(a - sin a cos a) from
  the centre, a = alpha/2). A transverse tip load not through it twists the
  boom: in FE the "bending" tip displacement then includes twist. The
  project loads through a rigid end at the section reference point, so a
  stiffness noticeably below beam theory can be twist. Look at the PNG.
- TRAC: the web gives depth (EI about one axis) and the flanges flatten
  against it. Its weakness is lateral-torsional buckling.

## 3. Nonlinear behaviour and buckling of thin curved shells

- **Tape-spring bending** (Seffen & Pellegrino; Mansfield). The arc gives
  high bending stiffness until the section flattens locally and a fold forms.
  - *Opposite-sense bending* (longitudinal curvature opposite in sign to the
    transverse one; the edges in tension; shell-buckling `sign +1` in the
    project's arc orientation, as in `examples/tape_spring_opposite_bending.json`):
    a high peak moment then a sudden snap (a **limit point**) down to the
    steady fold moment M+* = (1 + nu) D alpha. The project's estimate uses the
    fold moment, a lower bound of the peak. study.py calibrates it with the FE
    peaks.
  - *Equal-sense bending* (the edges in compression): lower peak; a
    **bifurcation** into a torsional/flexural-torsional mode with a more
    gradual drop, then the fold moment M-* = -(1 - nu) D alpha.
  - Use D = sqrt(D11 D22) and nu = D12/D as orthotropic stand-ins (estimate
    only). The fold radius equals R for isotropic tapes; for orthotropic
    tapes it depends on the D-ratios.
- **Columns of open sections** buckle in the lowest of the flexural and the
  coupled flexural-torsional modes (Timoshenko & Gere). For tape springs
  the flexural-torsional mode usually governs. Local shell buckling of the
  arc (classical stress E t / (R sqrt(3(1 - nu^2))), knocked down strongly by
  imperfections) can come first for wide, thin arcs.
- **Imperfection sensitivity.** Curved shells in compression have an
  unstable post-buckling path (Koiter): real strengths are a fraction of
  the classical value. Always seed an imperfection: the eigenmode at
  0.1-0.2 t (Leclerc & Pellegrino use 0.2 t; the study uses 0.1 t). Report
  the amplitude. A strength that changes a lot with the amplitude is a
  warning.
- **Limit point vs bifurcation.** Load control cannot pass a limit point;
  displacement (or arc-length/Riks) control can. The project follows
  rotation or end-shortening control (path B). A path that ends while the load
  is still rising has NOT found the strength: it is a lower bound. Shrinking
  load steps mean a peak is near.
- **Tangent eigenvalues.** Buckling is where the lowest eigenvalue of the
  tangent stiffness K_T crosses zero along the path. In OpenSees,
  ASDShellQ4's tangent has no geometric stiffness (it cannot see this);
  ShellNLDKGQ's does, for normal displacements only. Hence A gives an
  estimate and mode, and B the strength (see the shell-buckling SKILL.md).
- **Large rotations.** Use corotational formulations. Linear analysis
  overestimates large deflections (about 40% at PL^2/EI = 2). The static
  stiffness case is linear on purpose: it measures the small-load stiffness
  the requirement asks for.

## 4. Coiling

- A boom coiled on a hub of radius R_hub is flattened transversely
  (dk_y = -1/R for each arc) and bent longitudinally (k_x = +-1/R_hub). In
  CLT, for a symmetric laminate the ply stresses are linear in (k_x, k_y), so
  F_hub follows exactly from the ABD. The screen checks all four sign
  combinations (equal/opposite-sense coiling, either face out).
- The largest strain is about (t/2)(1/R + 1/R_hub) on the outer faces. Thin
  laminates and large radii coil safely. The coil's transition zone (where
  the section goes from flat to its natural shape) has extra stresses that
  this check does not see: keep margin (F_hub of 0.8 is safer than 0.99).
- Webs and tabs (TRAC, OM, CO) are double thickness and sit off the neutral
  surface when coiled. They are not in F_hub (PROTOCOL.md section 4).
- Viscoelastic stress relaxation during long stowage and the strain-energy
  deployment dynamics are outside the project's tools: mention them when
  relevant, do not model them.

## 5. Numerical-modelling discipline

- Verification (is the model solved right?): ABD check, beam theory, CLT,
  Euler/fold moments, mesh convergence, regression tests. Validation (is it
  the right model?): agreement with an independent code (Abaqus) and, in the
  end, with tests. The project's Abaqus step is a code-to-code verification;
  agreement does not prove the physics of what neither model includes
  (contact, the coil transition, delamination).
- Change one thing at a time between designs, so that the ledger teaches you
  something.
- An unexpectedly good design is suspect until it passes convergence and
  verification: check it before celebrating it.
- Prefer quantities that converge (stiffness, buckling peak) over local peak
  stresses at clamps when you rank designs. The failure index there is
  mesh-dependent: report the next-ranked point too (failure-check `--top`).

## 6. Key references (project Literature folder and the catalogs' sources)

Seffen & Pellegrino 1999 (tape-spring folding, fold moments); Mansfield
1973; Calladine 1983 (Theory of Shell Structures, boundary layer, Gauss);
Timoshenko & Gere 1961 (thin-walled columns); Koiter (imperfection
sensitivity); Murphey & Banik (TRAC); Leclerc & Pellegrino 2020 (TRAC
buckling, imperfection 0.2 t); Liu et al. 2022 (lenticular boom folding);
Fernandez (COROTUB corrugated booms); Benazzo & Pellegrino AIAA SciTech 2025
(Hashin 2D on coiled shells).
