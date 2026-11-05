---
name: shell-mesh
description: Builds an OpenSeesPy thin-shell component from a cross-section (flat strip, circular arc / tape spring, a chain of lines and arcs, any y-z polyline, or a branched / closed section such as a TRAC or omega / corrugated boom straight from the boom geometry catalog, with the doubled laminate on its bonded webs) extruded along x, meshed with 4-node shells of a given size, with the section from the laminate-properties skill and each facet's laminate orientation set from its own geometry. Use whenever a shell model's geometry and mesh are needed.
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
`polyline {points: [[y, z], ...]}`, `boom {id, web_stack}` (a boom geometry catalog row), and
`branched {branches: [{section: {...}, laminate: "flange" | "web", flip: false}, ...], web_stack}`.

## Catalog booms: TRAC, omega (OM), corrugated (CO)
`sm.boom_section('R001')` (or `"section": {"type": "boom", "id": "R001"}`) builds the
row exactly (arcs, not the catalog's drawing polylines), placed as
`make_boom_catalog.build(g)`:
- TRAC: web (0, -w)..(0, 0), flanges A (+y side) and B from the web tip, tangent to it.
- OM/CO: left tab, upper shell, lower shell, right tab; one closed loop.
- TS: the plain `arc` section.
Rows whose two OM/CO shells have different free chords (M011-M013, M023, M024,
C012) raise ValueError (bonding prestresses them; not modelled).

`BranchedSection`: several chains sharing junction nodes (points closer than
1e-6 b merge into one node line; a branch end inside a straight piece of
another branch splits it). Every node line j has ONE tag per x station
(`node_tag(i, j)`, `coords(i, j)`, j = 0..ny); facets come in strips k =
0..nstrips-1 (`mesh.strips`, facet index k nx + i; a single chain has
nstrips = ny exactly as before; a closed loop has one strip more than
ny). Edges `x0`/`xL` = all node lines; `y0`/`yb` = start of the first /
end of the last branch. `mesh.edge_weights(edge)` gives consistent load
shares (junctions collect every strip's share); shell-bc-load uses them.

Web laminate: web / tab facets get `laminate_properties.doubled_laminate(lam,
web_stack)` (default mirror: the tape turned over, plies reversed with negated
angles, bonded under the tape; z from the bond plane, which is the shell
mid-surface; no adhesive, no +-h/2 offset of the tapes). Its nDMaterial and
section tags are the flange tags + `sm.WEB_TAG_OFFSET` (1000). Tape normals
point away from the bonded faces (flange A and the lower shell are
`flip`ped), i.e. the flange layup is read from the bond outward. The results
file (shell-bc-load) gets `strip_label` / `strip_s` / `web_stack` / `boom`
in its meta, so failure-check and objective-constraints check exactly the
model's web facets with the doubled layup. EI vs thin-walled beam theory:
within 0.5% (regression T23).

CLI (summary only): `python shell_mesh.py --L 1000 --arc 50 100 --size 5`.

Code piece for a complete OpenSeesPy script (joined by shell-assemble-run):
`python shell_mesh.py --case case.json --emit-code mesh_code.py` (geometry and
element entries of the case) or `sm.write_code(mesh, path, element, corotational, eas, geometry=..., laminate=lam)`
(`laminate` = the flange laminate, required for sections with webs: the piece then
also defines the web laminate, `WEB_SECTIONS`, and stops if `LAMINATE` of the laminate
piece is not that flange laminate).
It writes the nodes and the facet table, and builds the elements at run time
from `SECTIONS` of the laminate-properties piece exactly as `build_model`
(same `-local` vectors, `-noeas` rule); it provides `FACETS`, `FRAMES`, `MESH`.

## Geometry conventions
- Extrusion along x from 0 to L. Cross-section parametrized by arc length s.
- `arc(R, b)`: symmetric about y = 0, z = R (1 - cos(phi)); R > 0 = centre of
  curvature on +z. `flat(b)`: y from 0 to b. Identical nodes/tags to v1 StripMesh.
- `segments`: R > 0 turns CCW in the y-z plane; `heading` = start tangent
  angle from +y; `center=True` puts the section midpoint at the origin.
  Every segment end / polyline vertex is a node line (corners exact); each
  piece gets max(1, round(length/size)) elements.
- Node tag = offset + j (nx + 1) + i + 1, i along x, j = node line across. Edges: `x0`,
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
