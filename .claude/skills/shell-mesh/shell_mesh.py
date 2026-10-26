"""
Geometry and mesh of an extruded thin shell for OpenSeesPy: a cross-section
curve in the y-z plane, extruded along x from 0 to L, meshed with 4-node
shell elements of a target size, with the section from the
laminate-properties skill (homogeneous or coincident per-angle laminate).

Generalizes "Code for Project/10-26-26 (Federico)/mesh_bc_load.py"
(StripMesh, create_nodes, create_elements, homogeneous): flat and circular-arc
sections give exactly the same nodes, tags and elements as StripMesh.

Cross-sections (s = arc length across the section, 0..b):
  CrossSection.flat(b)             y = s, z = 0 (y from 0 to b)
  CrossSection.arc(R, b)           circular arc, symmetric about y = 0,
                                   phi = (s - b/2)/R, y = R sin(phi), z = R (1 - cos(phi));
                                   R > 0: curvature centre on +z (tape spring opening up)
  CrossSection.segments(segs, ...) chain of straight ('line', length) and circular
                                   ('arc', R, length) segments, tangent-continuous
                                   unless a ('kink', angle_deg) is inserted. R > 0
                                   turns left (CCW in the y-z plane). For TRAC,
                                   omega and lenticular-type sections.
  CrossSection.polyline(points)    any (y, z) polyline, nodes at the vertices
                                   (subdivided to the element size)
Mesh grid: i = 0..nx along x, j = 0..ny across; node tag = offset + j (nx + 1) + i + 1.
Every segment end and polyline vertex is a node line, so corners are exact.
Edges: 'x0' (i = 0), 'xL' (i = nx), 'y0' (j = 0), 'yb' (j = ny).

Laminate element orientation: the ply angle is measured from the facet's own
x direction (along the extrusion) toward its own cross-section direction, CCW
about the facet normal n = (n1->n3) x (n2->n4). The '-local' vector is
computed per facet from its geometry, so off-axis plies keep their angle on
curved sections (a global (cos, sin, 0) vector projected onto a tilted facet
would not). For flat sections in the xy plane this is (cos, sin, 0) exactly.

Units: N, mm, MPa.

Usage (Python; the domain lives in this process):
    import shell_mesh as sm, laminate_properties as lp
    lam = lp.laminate_from_spec({'catalog': 'L024', 'layup': '[0/90]s'})
    mesh = sm.ShellMesh(L=1000, section=sm.CrossSection.arc(R=50, b=100), size=5)
    sm.build_model(mesh, lam, corotational=True)       # nodes, materials, sections, elements
CLI (mesh summary only):
    python shell_mesh.py --L 1000 --arc 50 100 --size 5
"""
import argparse
import math
import sys
from dataclasses import dataclass, field
from pathlib import Path

import numpy as np

_SKILLS = Path(__file__).resolve().parents[1]
sys.path.insert(0, str(_SKILLS / 'laminate-properties'))


# --- cross-section ------------------------------------------------------------------

class CrossSection:
    """Curve in the y-z plane parametrized by arc length s in [0, b].
    breaks: arc lengths that must be node lines (segment ends, corners)."""

    def __init__(self, point, b, breaks=(), kind='custom', params=None):
        self._point, self.b, self.kind, self.params = point, float(b), kind, params or {}
        self.breaks = sorted({0.0, float(b), *[float(x) for x in breaks]})

    def point(self, s):
        return self._point(s)

    @classmethod
    def flat(cls, b):
        return cls(lambda s: (s, 0.0), b, kind='flat', params=dict(b=b))

    @classmethod
    def arc(cls, R, b):
        def pt(s):
            phi = (s - b / 2) / R
            return R * math.sin(phi), R * (1 - math.cos(phi))
        return cls(pt, b, kind='arc', params=dict(R=R, b=b))

    @classmethod
    def segments(cls, segs, start=(0.0, 0.0), heading=0.0, center=False):
        """segs: ('line', length) | ('arc', R, length) | ('kink', angle_deg).
        heading: initial tangent angle from +y toward +z [deg]. center: shift
        so the section's midpoint (s = b/2) is at y = z = 0."""
        pieces, y, z, th, s0 = [], start[0], start[1], math.radians(heading), 0.0
        for seg in segs:
            if seg[0] == 'kink':
                th += math.radians(seg[1])
                continue
            if seg[0] == 'line':
                pieces.append(('line', s0, seg[1], y, z, th, None))
                y, z = y + seg[1] * math.cos(th), z + seg[1] * math.sin(th)
            elif seg[0] == 'arc':
                R, ln = seg[1], seg[2]
                pieces.append(('arc', s0, ln, y, z, th, R))
                dth = ln / R
                y += R * (math.sin(th + dth) - math.sin(th))
                z += -R * (math.cos(th + dth) - math.cos(th))
                th += dth
            else:
                raise ValueError(f'unknown segment {seg!r}')
            s0 += pieces[-1][2]
        b = s0

        def raw(s):
            for kind, a, ln, y0, z0, t0, R in pieces:
                if s <= a + ln + 1e-12 or (kind, a) == pieces[-1][:2]:
                    u = s - a
                    if kind == 'line':
                        return y0 + u * math.cos(t0), z0 + u * math.sin(t0)
                    return y0 + R * (math.sin(t0 + u / R) - math.sin(t0)), z0 - R * (math.cos(t0 + u / R) - math.cos(t0))
            raise ValueError(s)
        off = raw(b / 2) if center else (0.0, 0.0)
        return cls(lambda s: (raw(s)[0] - off[0], raw(s)[1] - off[1]), b,
                   breaks=[p[1] for p in pieces], kind='segments', params=dict(segs=[list(x) for x in segs]))

    @classmethod
    def polyline(cls, points):
        P = np.asarray(points, dtype=float)
        cum = np.concatenate([[0.0], np.cumsum(np.linalg.norm(np.diff(P, axis=0), axis=1))])

        def pt(s):
            k = min(np.searchsorted(cum, s, side='right') - 1, len(P) - 2)
            u = (s - cum[k]) / (cum[k + 1] - cum[k])
            return tuple(P[k] + u * (P[k + 1] - P[k]))
        return cls(pt, cum[-1], breaks=cum, kind='polyline', params=dict(points=P.tolist()))

    @classmethod
    def from_spec(cls, spec):
        """{'type': 'flat', 'b': ..} | {'type': 'arc', 'R': .., 'b': ..} |
        {'type': 'segments', 'segments': [...], 'heading': 0, 'center': false} |
        {'type': 'polyline', 'points': [[y, z], ...]}"""
        t = spec['type']
        if t == 'flat':
            return cls.flat(spec['b'])
        if t == 'arc':
            return cls.arc(spec['R'], spec['b'])
        if t == 'segments':
            return cls.segments([tuple(s) for s in spec['segments']], tuple(spec.get('start', (0, 0))),
                                spec.get('heading', 0.0), spec.get('center', False))
        if t == 'polyline':
            return cls.polyline(spec['points'])
        raise ValueError(f'unknown cross-section type {t!r}')

    def describe(self):
        if self.kind == 'flat':
            return 'flat'
        if self.kind == 'arc':
            R = self.params['R']
            return f'arc R = {R:g} mm ({math.degrees(self.b / R):.1f} deg)'
        return f'{self.kind} ({len(self.breaks) - 1} pieces)'


# --- mesh ----------------------------------------------------------------------------

@dataclass
class ShellMesh:
    L: float                       # extrusion length along x [mm]
    section: CrossSection
    size: float                    # target element size [mm]
    node_offset: int = 0
    facets: list = field(default_factory=list, repr=False)   # filled by create_elements

    def __post_init__(self):
        self.nx = max(1, round(self.L / self.size))
        s = [0.0]
        br = self.section.breaks
        for a, c in zip(br[:-1], br[1:]):
            n = max(1, round((c - a) / self.size))
            s += [a + (c - a) * k / n for k in range(1, n + 1)]
        self.s = np.array(s)
        self.ny = len(s) - 1

    @property
    def b(self):
        return self.section.b

    def node_tag(self, i, j):
        return self.node_offset + j * (self.nx + 1) + i + 1

    def coords(self, i, j):
        y, z = self.section.point(self.s[j])
        return i * self.L / self.nx, y, z

    def quads(self):
        """(i, j, node tags CCW seen from the facet normal) for every facet."""
        for j in range(self.ny):
            for i in range(self.nx):
                yield i, j, (self.node_tag(i, j), self.node_tag(i + 1, j),
                             self.node_tag(i + 1, j + 1), self.node_tag(i, j + 1))

    def facet_index(self, i, j):
        return j * self.nx + i

    def edge_nodes(self, edge):
        if edge == 'x0':
            return [self.node_tag(0, j) for j in range(self.ny + 1)]
        if edge == 'xL':
            return [self.node_tag(self.nx, j) for j in range(self.ny + 1)]
        if edge == 'y0':
            return [self.node_tag(i, 0) for i in range(self.nx + 1)]
        if edge == 'yb':
            return [self.node_tag(i, self.ny) for i in range(self.nx + 1)]
        raise ValueError(f"edge must be 'x0', 'xL', 'y0' or 'yb', not {edge!r}")

    def node_at(self, x, s):
        """Grid node nearest to (x, arc length s)."""
        return self.node_tag(int(round(x / (self.L / self.nx))), int(np.argmin(np.abs(self.s - s))))

    def summary(self):
        dy = np.diff(self.s)
        return (f'{self.L:g} x {self.b:g} mm shell, {self.section.describe()}; {self.nx} x {self.ny} = '
                f'{self.nx * self.ny} quads of {self.L / self.nx:.3g} x {dy.min():.3g}'
                f'{"" if np.ptp(dy) < 1e-9 else f"-{dy.max():.3g}"} mm, {(self.nx + 1) * (self.ny + 1)} nodes')

    def facet_frame(self, nodes_xyz):
        """e1 (along x edges), e2, n of a facet from its 4 node coordinates."""
        p1, p2, p3, p4 = nodes_xyz
        n = np.cross(p3 - p1, p4 - p2)
        n /= np.linalg.norm(n)
        e1 = (p2 - p1) + (p3 - p4)
        e1 -= n * (e1 @ n)
        e1 /= np.linalg.norm(e1)
        return e1, np.cross(n, e1), n


def create_nodes(mesh, new_model=True):
    """Create the nodes (3D, 6 DOFs). new_model wipes the domain first."""
    import openseespy.opensees as ops
    if new_model:
        ops.wipe()
        ops.model('basic', '-ndm', 3, '-ndf', 6)
    for j in range(mesh.ny + 1):
        for i in range(mesh.nx + 1):
            ops.node(mesh.node_tag(i, j), *mesh.coords(i, j))


def create_elements(mesh, sections, element='ASDShellQ4', options=(), first_tag=1, eas=None):
    """Elements on every facet. sections: [(sec_tag, theta)] from
    Laminate.define(). One section -> one element per facet ('-local' only
    if theta != 0); several -> coincident ASDShellQ4 with per-facet '-local'.
    eas: None = ASDShellQ4 keeps its EAS modes with one element per facet and
    gets '-noeas' with coincident elements (required there); True/False force.
    Fills mesh.facets with (first element tag, n elements, theta of the first)
    and mesh.frames (n_facets x 3 x 3: e1, e2, n). Returns the next free tag."""
    import openseespy.opensees as ops
    coincident = len(sections) > 1
    if coincident and element != 'ASDShellQ4':
        raise ValueError('multi-angle laminates need ASDShellQ4 (coincident per-angle elements)')
    oriented = coincident or any(th != 0.0 for _, th in sections)
    if eas is None:
        eas = not coincident
    if element == 'ASDShellQ4' and not eas:
        options = (*options, '-noeas')
    tag, mesh.facets, frames = first_tag, [], []
    for _, _, nodes in mesh.quads():
        e1, e2, n = mesh.facet_frame([np.array(ops.nodeCoord(k)) for k in nodes])
        frames.append((e1, e2, n))
        mesh.facets.append((tag, len(sections), sections[0][1]))
        for sec, th in sections:
            if oriented:
                c, s = math.cos(math.radians(th)), math.sin(math.radians(th))
                ax = [round(float(v), 15) + 0.0 for v in c * e1 + s * e2]
                ops.element(element, tag, *nodes, sec, *options, '-local', *ax)
            else:
                ops.element(element, tag, *nodes, sec, *options)
            tag += 1
    mesh.frames = np.array(frames)
    return tag


def build_model(mesh, laminate, element='ASDShellQ4', corotational=False, mat_tag=1, sec_tag=1,
                extra_options=(), new_model=True, eas=None):
    """Nodes + laminate materials/sections + elements in one call.
    element: 'ASDShellQ4' (any laminate; '-corotational' for large rotations)
    or 'ShellMITC4' (linear geometry, single-section laminates only)."""
    create_nodes(mesh, new_model)
    sections = laminate.define(mat_tag, sec_tag)
    opts = (*extra_options, '-corotational') if corotational else tuple(extra_options)
    mesh.laminate = laminate
    mesh.element = element
    return create_elements(mesh, sections, element, opts, eas=eas)


def build_from_spec(spec):
    """Mesh from a case dict: {'L':.., 'section': {...}, 'size':..}."""
    return ShellMesh(spec['L'], CrossSection.from_spec(spec['section']), spec['size'],
                     spec.get('node_offset', 0))


def arc_section_inertia(R, b, t, n=200001):
    """Thin-walled arc: centroid z_c and I about the horizontal centroidal
    axis (as verify_mesh_bc_load.py)."""
    phi = np.linspace(-b / (2 * R), b / (2 * R), n)
    z = R * (1 - np.cos(phi))
    ds = R * (phi[1] - phi[0])
    zc = np.sum(z) * ds / b
    return zc, t * np.sum((z - zc)**2) * ds


def main():
    ap = argparse.ArgumentParser(description=__doc__.split('\n\n')[0])
    ap.add_argument('--L', type=float, required=True)
    g = ap.add_mutually_exclusive_group(required=True)
    g.add_argument('--flat', type=float, metavar='B')
    g.add_argument('--arc', type=float, nargs=2, metavar=('R', 'B'))
    ap.add_argument('--size', type=float, required=True)
    a = ap.parse_args()
    sec = CrossSection.flat(a.flat) if a.flat else CrossSection.arc(*a.arc)
    mesh = ShellMesh(a.L, sec, a.size)
    print(mesh.summary())
    print(f'{6 * (mesh.nx + 1) * (mesh.ny + 1)} DOFs; picture it with the shell-visualize skill (--undeformed)')


if __name__ == '__main__':
    main()
