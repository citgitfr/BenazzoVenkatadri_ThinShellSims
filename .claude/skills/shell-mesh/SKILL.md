---
name: shell-mesh
description: Builds an OpenSeesPy thin-shell component from a cross-section curve (flat strip, circular arc / tape spring, a chain of lines and arcs such as TRAC or omega sections, or any y-z polyline) extruded along x, meshed with 4-node shells of a given size, with the section from the laminate-properties skill and each facet's laminate orientation set from its own geometry. Use whenever a shell model's geometry and mesh are needed.
---

# shell-mesh

Script: `shell_mesh.py` (this folder; imports `../laminate-properties`). Units: N, mm, MPa.
The OpenSees domain only lives in the Python process that builds it, so this
skill is used from Python (a driver script or the shell-bc-load case runner),
together with shell-bc-load in the same process.

## Python

```python
import sys; sys.path[:0] = [r'<repo>/.claude/skills/laminate-properties', r'<repo>/.claude/skills/shell-mesh']
import laminate_properties as lp, shell_mesh as sm
lam  = lp.laminate_from_spec({'catalog': 'L024', 'layup': '[0/90]s'})
sec  = sm.CrossSection.arc(R=50, b=100)                 # or .flat(b), .segments([...]), .polyline([(y, z), ...])
mesh = sm.ShellMesh(L=1000, section=sec, size=5)
sm.build_model(mesh, lam, element='ASDShellQ4', corotational=False)
print(mesh.summary())
```
Case-file form (used by shell-bc-load): `"geometry": {"L": 1000, "section": {"type": "arc", "R": 50, "b": 100}, "size": 5}`;
section types `flat {b}`, `arc {R, b}`, `segments {segments: [["line", l], ["arc", R, l], ["kink", deg]], heading, center}`,
`polyline {points: [[y, z], ...]}`.

CLI (summary only): `python shell_mesh.py --L 1000 --arc 50 100 --size 5`.

## Geometry conventions
- Extrusion along x from 0 to L. Cross-section parametrized by arc length s.
- `arc(R, b)`: symmetric about y = 0, z = R (1 - cos(phi)); R > 0 = centre of
  curvature on +z. `flat(b)`: y from 0 to b. Identical nodes/tags to v1 StripMesh.
- `segments`: R > 0 turns CCW in the y-z plane; `heading` = start tangent
  angle from +y; `center=True` puts the section midpoint at the origin.
  Every segment end / polyline vertex is a node line (corners exact); each
  piece gets max(1, round(length/size)) elements.
- Node tag = offset + j (nx + 1) + i + 1, i along x, j across. Edges: `x0`,
  `xL`, `y0` (s = 0), `yb` (s = b). `mesh.node_at(x, s)` finds a node.
- Facet frame: e1 along x, n = (n1->n3) x (n2->n4), e2 = n x e1. Ply angles are
  measured in this frame and the `-local` vector is computed per facet, so
  off-axis plies keep their angle on curved sections (the v1 global
  (cos, sin, 0) vector loses up to ~15 deg on an R = 50, b = 100 arc).

## Elements
- `ASDShellQ4` (default): linear, or `corotational=True` for large rotations.
  Required for multi-angle laminates (coincident per-angle elements, `-noeas`
  added automatically; with one element per facet EAS is kept).
- `ShellMITC4`: linear geometry, single-section shells only.
- Do not use `ShellNLDKGQ` (failed on the first step of the large-deflection benchmark).

## Report back
`mesh.summary()` (nx x ny, element size, nodes), elements per facet and total
elements, DOFs (6 per node), element type/options, and the section
(`lam.describe()`). Mesh size: default 5 mm for nonlinear runs; always show
convergence with two mesh sizes (coincident `-noeas` elements are stiffer on
coarse meshes).
