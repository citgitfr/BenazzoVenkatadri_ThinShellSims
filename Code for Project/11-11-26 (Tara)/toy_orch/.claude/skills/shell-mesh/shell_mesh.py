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
  BranchedSection(branches, labels, flips)
                                   several chains sharing junction nodes (TRAC,
                                   closed omega / corrugated); 'web' branches get
                                   the doubled laminate (laminate_properties.doubled_laminate)
  boom_section(ID)                 a boom geometry catalog row (TS, TRAC, OM, CO)
Mesh grid: i = 0..nx along x, node line j = 0..ny across; node tag = offset + j (nx + 1) + i + 1;
facets in strips k (facet index k nx + i; a single chain: strip k = lines k, k + 1).
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
CLI, this skill's piece of a complete OpenSeesPy script (nodes and elements;
the elements use SECTIONS from the laminate-properties piece; joined by the
shell-assemble-run skill):
    python shell_mesh.py --case case.json --emit-code mesh_code.py
"""
import argparse
import json
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

    def point(self, s, branch=None):
        return self._point(s)

    # a single chain is one branch (same API as BranchedSection)
    labels, flips, offsets, web_stack = ('flange',), (False,), (0.0,), None

    @property
    def branches(self):
        return [self]

    @property
    def pieces(self):
        """[(s0, s1, branch)] between consecutive breaks."""
        return [(a, c, 0) for a, c in zip(self.breaks[:-1], self.breaks[1:])]

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
        if t == 'branched':
            return BranchedSection([cls.from_spec(b['section']) for b in spec['branches']],
                                   [b.get('laminate', 'flange') for b in spec['branches']],
                                   [b.get('flip', False) for b in spec['branches']],
                                   spec.get('web_stack', 'mirror'))
        if t == 'boom':
            return boom_section(spec['id'], spec.get('web_stack', 'mirror'))
        raise ValueError(f'unknown cross-section type {t!r}')

    def describe(self):
        if self.kind == 'flat':
            return 'flat'
        if self.kind == 'arc':
            R = self.params['R']
            return f'arc R = {R:g} mm ({math.degrees(self.b / R):.1f} deg)'
        return f'{self.kind} ({len(self.breaks) - 1} pieces)'


class BranchedSection:
    """Several chains ('branches', each a CrossSection) in the y-z plane that
    share nodes where they meet: TRAC (web + 2 flanges), closed omega /
    corrugated sections (2 shells + 2 bonded tabs), or any branched / closed
    section. Points of different branches closer than tol become ONE node line
    (junction); a branch end lying inside a straight piece of another branch
    splits that piece there. Arc length s runs through the branches in order
    (branch k: offsets[k] .. offsets[k] + its b), so a junction has the s of
    its first appearance.
    labels: per branch 'flange' (the laminate) or 'web' (the doubled laminate,
    laminate_properties.doubled_laminate with web_stack). flips: per branch,
    reverse the facet normal (the branch's facets take their nodes against s).
    Convention of boom_section: every tape's normal points away from its
    bonded face, i.e. the flange layup is listed from the bond outward, which
    is what the mirror web stack assumes."""
    kind = 'branched'

    def __init__(self, branches, labels=None, flips=None, web_stack='mirror', tol=1e-6, params=None):
        self.branches = list(branches)
        n = len(self.branches)
        self.labels = tuple(labels or ['flange'] * n)
        self.flips = tuple(bool(f) for f in (flips or [False] * n))
        if len(self.labels) != n or len(self.flips) != n:
            raise ValueError('one label and one flip per branch')
        bad = set(self.labels) - {'flange', 'web'}
        if bad:
            raise ValueError(f"branch laminate must be 'flange' or 'web', not {bad}")
        self.web_stack = web_stack
        self.offsets = tuple(np.concatenate([[0.0], np.cumsum([br.b for br in self.branches])[:-1]]).tolist())
        self.b = float(sum(br.b for br in self.branches))
        self.tol = tol * max(1.0, self.b)
        self.params = params or {}
        self._split_at_junctions()

    def _split_at_junctions(self):
        ends = [np.array(br.point(s)) for br in self.branches for s in (0.0, br.b)]
        for br in self.branches:
            add = []
            for a, c in zip(br.breaks[:-1], br.breaks[1:]):
                p0, pm, p1 = (np.array(br.point(s)) for s in (a, (a + c) / 2, c))
                d = p1 - p0
                if abs(d[0] * (pm - p0)[1] - d[1] * (pm - p0)[0]) > 1e-9 * (d @ d):
                    continue                                  # only straight pieces are split
                for e in ends:
                    u = (e - p0) @ d / (d @ d)
                    if 1e-9 < u < 1 - 1e-9 and np.linalg.norm(p0 + u * d - e) <= self.tol:
                        add.append(a + u * (c - a))
            if add:
                br.breaks = sorted({*br.breaks, *add})

    def point(self, s, branch=None):
        """(y, z) at arc length s (of branch `branch`; default: the first
        branch whose range contains s)."""
        if branch is None:
            branch = max([k for k, o in enumerate(self.offsets) if o <= s + 1e-12] or [0])
            if branch > 0 and abs(s - self.offsets[branch]) <= 1e-12:
                branch -= 1                              # s at a branch boundary: end of the previous one
        br = self.branches[branch]
        return br.point(min(max(s - self.offsets[branch], 0.0), br.b))

    @property
    def breaks(self):
        return sorted({o + x for o, br in zip(self.offsets, self.branches) for x in br.breaks})

    @property
    def pieces(self):
        """[(s0, s1, branch)] between consecutive breaks of each branch."""
        return [(o + a, o + c, k) for k, (o, br) in enumerate(zip(self.offsets, self.branches))
                for a, c in zip(br.breaks[:-1], br.breaks[1:])]

    def describe(self):
        nw = self.labels.count('web')
        name = self.params.get('boom')
        return (f'{name + " " if name else ""}branched section: {len(self.branches)} branches'
                f'{f", {nw} web(s) with the doubled ({self.web_stack}) laminate" if nw else ""}')


BOOM_CATALOG = _SKILLS.parent / 'memory.boom_geometry_catalog'


def _boom_row(g):
    if isinstance(g, dict):
        return g
    sys.path.insert(0, str(BOOM_CATALOG))
    from boom_data import GEOMETRIES
    for row in GEOMETRIES:
        if row['id'] == str(g).upper():
            return row
    raise ValueError(f'boom {g!r} is not in {BOOM_CATALOG / "boom_geometry_catalog.txt"}')


def _arcs(part, sign):
    """Catalog (R, theta) arcs -> segments; turn = sign * theta."""
    return [('arc', sign * R * math.copysign(1, th), R * math.radians(abs(th))) for R, th in part]


def boom_section(g, web_stack='mirror'):
    """Cross-section of a boom geometry catalog row (ID or boom_data dict),
    exact arcs, placed as make_boom_catalog.build(g):
      TS    -> CrossSection.arc(R, R theta)
      TRAC  -> web (0, -w)..(0, 0) ('web'), flange A (+y side) and flange B,
               both from the web tip outward, tangent to the web
      OM/CO -> left tab, upper shell, lower shell, right tab (tabs 'web'); the
               shells are bonded to the tabs at y = -+chord/2, z = 0
    Tape normals point away from the bonded faces (flange A and the lower
    shell are flipped). OM/CO rows whose two shells have different free
    chords (bonding prestresses them) are rejected; chords equal to 0.1 % are
    made exact by scaling the lower shell's radii."""
    g = _boom_row(g)
    typ, A, B, w = g['type'], g['A'], g.get('B'), g.get('w', 0.0)
    params = dict(boom=g['id'], type=typ)
    if typ == 'TS':
        R, th = A[0]
        sec = CrossSection.arc(R, R * math.radians(th))
        sec.params.update(params)
        return sec
    if typ == 'TRAC':
        web = CrossSection.segments([('line', w)], start=(0.0, -w), heading=90.0)
        fa = CrossSection.segments(_arcs(A, -1), heading=90.0)
        fb = CrossSection.segments(_arcs(B, +1), heading=90.0)
        return BranchedSection([web, fa, fb], ['web', 'flange', 'flange'], [False, True, False], web_stack,
                               params=params)
    if typ in ('OM', 'CO'):
        sys.path.insert(0, str(BOOM_CATALOG))
        from boom_geometry import closed_shell
        _, ca, a0, _ = closed_shell(A)
        _, cb, b0, _ = closed_shell(B)
        if abs(ca - cb) > 1e-3 * ca:
            raise ValueError(f'{g["id"]}: the two shells have different free chords ({ca:.3f} / {cb:.3f} mm); '
                             'bonding prestresses the section, which shell-mesh does not model')
        up = CrossSection.segments(_arcs(A, -1), start=(-ca / 2, 0.0), heading=a0)
        k = ca / cb                       # equal to 0.1 %: scale the lower shell to the same chord exactly
        lo = CrossSection.segments(_arcs([(R * k, th) for R, th in B], +1), start=(-ca / 2, 0.0), heading=-b0)
        left = CrossSection.segments([('line', w)], start=(-ca / 2 - w, 0.0))
        right = CrossSection.segments([('line', w)], start=(ca / 2, 0.0))
        return BranchedSection([left, up, lo, right], ['web', 'flange', 'flange', 'web'],
                               [False, False, True, False], web_stack, params=dict(params, chord=ca))
    raise ValueError(f'unknown boom type {typ!r}')


# --- mesh ----------------------------------------------------------------------------

@dataclass
class ShellMesh:
    L: float                       # extrusion length along x [mm]
    section: CrossSection
    size: float                    # target element size [mm]
    node_offset: int = 0
    facets: list = field(default_factory=list, repr=False)   # filled by create_elements

    def __post_init__(self):
        """Node lines (unique cross-section points, j = 0..ny) and strips
        (facet rows k = 0..nstrips-1 between two node lines). A single chain
        gives strips k = (k, k + 1), i.e. nstrips = ny, exactly as before."""
        self.nx = max(1, round(self.L / self.size))
        sec = self.section
        tol = getattr(sec, 'tol', 1e-6 * max(1.0, sec.b))
        self._line = []                     # node line j -> (branch, local s, (y, z))
        s_glob, strips = [], []

        def line(k, u):
            p = sec.branches[k].point(u)
            if k > 0 or len(sec.branches) > 1:
                for j, (_, _, q) in enumerate(self._line):
                    if abs(q[0] - p[0]) <= tol and abs(q[1] - p[1]) <= tol:
                        return j
            self._line.append((k, u, p))
            s_glob.append(sec.offsets[k] + u)
            return len(self._line) - 1

        for k, br in enumerate(sec.branches):
            us = [0.0]
            for a, c in zip(br.breaks[:-1], br.breaks[1:]):
                n = max(1, round((c - a) / self.size))
                us += [a + (c - a) * q / n for q in range(1, n + 1)]
            js = [line(k, u) for u in us]
            for (ja, ua), (jb, ub) in zip(zip(js[:-1], us[:-1]), zip(js[1:], us[1:])):
                if ja != jb:
                    strips.append((ja, jb, sec.labels[k], sec.flips[k], sec.offsets[k] + (ua + ub) / 2, ub - ua))
            if k == 0:
                self._first = js[0]
            self._last = js[-1]
        self.s = np.array(s_glob)
        self.ny = len(self._line) - 1
        self.strips = strips
        self.nstrips = len(strips)
        if len(sec.branches) > 1:           # every branch must be connected to the others
            parent = list(range(self.ny + 1))

            def root(j):
                while parent[j] != j:
                    j = parent[j]
                return j
            for a, b_, *_ in strips:
                parent[root(a)] = root(b_)
            if len({root(j) for j in range(self.ny + 1)}) > 1:
                raise ValueError('the branches of the cross-section do not meet (no shared junction node)')

    @property
    def b(self):
        return self.section.b

    @property
    def has_web(self):
        return any(st[2] == 'web' for st in self.strips)

    @property
    def facet_labels(self):
        """'flange' / 'web' of every facet (facet index = k nx + i)."""
        return [st[2] for st in self.strips for _ in range(self.nx)]

    def strip_meta(self):
        """Strip data for the results file of a branched section (empty for
        a single chain): per strip its laminate label and mid arc length."""
        if len(self.section.branches) == 1:
            return {}
        return dict(nstrips=self.nstrips, strip_label=[st[2] for st in self.strips],
                    strip_s=[round(st[4], 9) for st in self.strips], web_stack=self.section.web_stack,
                    section_kind=self.section.kind, boom=self.section.params.get('boom'))

    def node_tag(self, i, j):
        return self.node_offset + j * (self.nx + 1) + i + 1

    def coords(self, i, j):
        y, z = self._line[j][2]
        return i * self.L / self.nx, y, z

    def quads(self):
        """(i, k, node tags CCW seen from the facet normal) for every facet,
        strip k by strip k (facet index k nx + i)."""
        for k, (a, c, _, flip, _, _) in enumerate(self.strips):
            if flip:
                a, c = c, a
            for i in range(self.nx):
                yield i, k, (self.node_tag(i, a), self.node_tag(i + 1, a),
                             self.node_tag(i + 1, c), self.node_tag(i, c))

    def facet_index(self, i, k):
        return k * self.nx + i

    def edge_nodes(self, edge):
        """x0 / xL: every node line at x = 0 / L; y0 / yb: the line at the
        start of the first branch / the end of the last branch."""
        if edge == 'x0':
            return [self.node_tag(0, j) for j in range(self.ny + 1)]
        if edge == 'xL':
            return [self.node_tag(self.nx, j) for j in range(self.ny + 1)]
        if edge == 'y0':
            return [self.node_tag(i, self._first) for i in range(self.nx + 1)]
        if edge == 'yb':
            return [self.node_tag(i, self._last) for i in range(self.nx + 1)]
        raise ValueError(f"edge must be 'x0', 'xL', 'y0' or 'yb', not {edge!r}")

    def edge_weights(self, edge, kind='load'):
        """Shares of the edge_nodes(edge) that sum to 1. kind 'load': consistent
        shares of a uniform edge load (uniform spacing: end nodes of every strip
        half shares; else tributary chord lengths); 'centroid': half a share per
        strip meeting the node (rigid-end centroid). Junction nodes of a
        branched section collect the shares of all their strips."""
        if edge in ('y0', 'yb'):
            w = np.ones(self.nx + 1)
            w[[0, -1]] = 0.5
            return w / w.sum()
        deg, trib = np.zeros(self.ny + 1), np.zeros(self.ny + 1)
        chord = []
        for a, c, *_ in self.strips:
            ln = math.dist(self._line[a][2], self._line[c][2])
            chord.append(ln)
            deg[[a, c]] += 0.5
            trib[[a, c]] += ln / 2
        chord = np.array(chord)
        w = deg if kind == 'centroid' or np.ptp(chord) < 1e-9 * chord.max() else trib
        return w / w.sum()

    def node_at(self, x, s):
        """Grid node nearest to (x, arc length s)."""
        return self.node_tag(int(round(x / (self.L / self.nx))), int(np.argmin(np.abs(self.s - s))))

    def summary(self):
        dy = np.array([st[5] for st in self.strips])
        return (f'{self.L:g} x {self.b:g} mm shell, {self.section.describe()}; {self.nx} x {self.nstrips} = '
                f'{self.nx * self.nstrips} quads of {self.L / self.nx:.3g} x {dy.min():.3g}'
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
    Laminate.define(), or {'flange': [...], 'web': [...]} for a section with
    webs (each facet gets the sections of its strip's laminate). One section
    -> one element per facet ('-local' only if theta != 0); several ->
    coincident ASDShellQ4 with per-facet '-local'.
    eas: None = ASDShellQ4 keeps its EAS modes with one element per facet and
    gets '-noeas' with coincident elements anywhere (required there); True/False force.
    Fills mesh.facets with (first element tag, n elements, theta of the first)
    and mesh.frames (n_facets x 3 x 3: e1, e2, n). Returns the next free tag."""
    import openseespy.opensees as ops
    secs = dict(sections) if isinstance(sections, dict) else {'flange': sections}
    missing = {st[2] for st in mesh.strips} - set(secs)
    if missing:
        raise ValueError(f'no sections for the {missing} facets (give {{"flange": .., "web": ..}})')
    coincident = any(len(v) > 1 for v in secs.values())
    if coincident and element != 'ASDShellQ4':
        raise ValueError('multi-angle laminates need ASDShellQ4 (coincident per-angle elements)')
    oriented = coincident or any(th != 0.0 for v in secs.values() for _, th in v)
    if eas is None:
        eas = not coincident
    if element == 'ASDShellQ4' and not eas:
        options = (*options, '-noeas')
    tag, mesh.facets, frames = first_tag, [], []
    for _, k, nodes in mesh.quads():
        S = secs[mesh.strips[k][2]]
        e1, e2, n = mesh.facet_frame([np.array(ops.nodeCoord(q)) for q in nodes])
        frames.append((e1, e2, n))
        mesh.facets.append((tag, len(S), S[0][1]))
        for sec, th in S:
            if oriented:
                c, s = math.cos(math.radians(th)), math.sin(math.radians(th))
                ax = [round(float(v), 15) + 0.0 for v in c * e1 + s * e2]
                ops.element(element, tag, *nodes, sec, *options, '-local', *ax)
            else:
                ops.element(element, tag, *nodes, sec, *options)
            tag += 1
    mesh.frames = np.array(frames)
    return tag


WEB_TAG_OFFSET = 1000      # web laminate: nDMaterial / section tags = flange tags + 1000


def web_laminate(mesh, laminate):
    """Doubled laminate of the web facets (None if the section has no web)."""
    import laminate_properties as lp
    return lp.doubled_laminate(laminate, mesh.section.web_stack or 'mirror') if mesh.has_web else None


def build_model(mesh, laminate, element='ASDShellQ4', corotational=False, mat_tag=1, sec_tag=1,
                extra_options=(), new_model=True, eas=None, web=None):
    """Nodes + laminate materials/sections + elements in one call.
    element: 'ASDShellQ4' (any laminate; '-corotational' for large rotations)
    or 'ShellMITC4' (linear geometry, single-section laminates only).
    Sections with webs (TRAC / OM / CO): web facets get `web` (default: the
    doubled laminate, laminate_properties.doubled_laminate(laminate,
    section.web_stack)), tags mat_tag / sec_tag + WEB_TAG_OFFSET."""
    create_nodes(mesh, new_model)
    sections = laminate.define(mat_tag, sec_tag)
    mesh.laminate, mesh.element = laminate, element
    if mesh.has_web:
        mesh.web_laminate = web or web_laminate(mesh, laminate)
        sections = {'flange': sections,
                    'web': mesh.web_laminate.define(mat_tag + WEB_TAG_OFFSET, sec_tag + WEB_TAG_OFFSET)}
    opts = (*extra_options, '-corotational') if corotational else tuple(extra_options)
    return create_elements(mesh, sections, element, opts, eas=eas)


def write_code(mesh, path, element='ASDShellQ4', corotational=False, eas=None, extra_options=(), geometry=None,
               laminate=None):
    """This skill's piece of a complete OpenSeesPy script: the nodes, and the
    elements on every facet built at run time from SECTIONS (laminate-properties
    piece) exactly as build_model / create_elements do. Provides FACETS,
    FRAMES and MESH for the shell-bc-load piece. geometry: the case-file
    geometry dict (checked by the shell-bc-load piece). Sections with webs
    need `laminate` (the flange laminate of the laminate piece): the piece
    then also defines the doubled web laminate (WEB_SECTIONS) and checks at
    run time that LAMINATE is that flange laminate."""
    import laminate_properties as lp
    import openseespy.opensees as ops
    opts = (*extra_options, '-corotational') if corotational else tuple(extra_options)
    nodes = [(mesh.node_tag(i, j), *mesh.coords(i, j)) for j in range(mesh.ny + 1) for i in range(mesh.nx + 1)]
    meta = dict(summary=mesh.summary(), nx=mesh.nx, ny=mesh.ny, L=mesh.L, b=mesh.b, element=element,
                n_nodes=len(nodes), geometry=geometry, **mesh.strip_meta())
    lines = [lp.PIECE_MARK.format('mesh', 'shell-mesh'),
             f'# {mesh.summary()}',
             f'# {element}{" corotational" if corotational else ""}: one element per facet and entry of SECTIONS'
             + (' (web facets: WEB_SECTIONS)' if mesh.has_web else ''),
             '# provides: FACETS [(first element, elements, ply angle of the first, 4 node tags)], FRAMES, MESH',
             '# needs:    SECTIONS' + (', LAMINATE' if mesh.has_web else '') + ' (laminate piece)',
             f'MESH = {json.loads(json.dumps(meta, default=lp._plain))!r}']
    if mesh.has_web:
        if laminate is None:
            raise ValueError('a section with webs needs the flange laminate (write_code(..., laminate=lam))')
        web = web_laminate(mesh, laminate)
        ops.wipe()
        ops.model('basic', '-ndm', 3, '-ndf', 6)
        with lp.record_ops(('nDMaterial', 'section')) as calls:
            web_secs = web.define(1 + WEB_TAG_OFFSET, 1 + WEB_TAG_OFFSET)
        ops.wipe()
        flange = json.loads(json.dumps(laminate.to_dict(), default=lp._plain))
        lines += ['', f'# --- web (bonded tab) laminate: {web.describe()} ({mesh.section.web_stack} stack of the '
                      'flange laminate) ---',
                  f'WEB_OF = {flange!r}',
                  'if json.loads(LAMINATE) != WEB_OF:',
                  "    raise ValueError('the laminate piece is not the flange laminate this mesh piece was written for')"]
        lines += lp.ops_code(calls)
        lines += [f'WEB_SECTIONS = {[(int(t), float(th)) for t, th in web_secs]!r}',
                  f'STRIP_LAM = {[int(st[2] == "web") for st in mesh.strips]!r}   # per strip: 0 flange, 1 web']
    else:
        lines += ['STRIP_LAM = None']
    lines += ['', '# --- nodes: tag, x (along the extrusion), y, z (cross-section) ---']
    lines += lp.code_table('node', nodes)
    lines += ['', '# --- facets: 4 node tags, counter-clockwise about the facet normal ---', 'QUADS = [']
    lines += [f'    {q!r},' for _, _, q in mesh.quads()]
    lines += [']', '', f'ELEMENT, OPTIONS, EAS = {element!r}, {opts!r}, {eas!r}', ELEMENT_CODE]
    Path(path).write_text('\n'.join(lines), encoding='utf-8')


ELEMENT_CODE = '''

def facet_frame(p1, p2, p3, p4):
    # e1 (along the x edges), e2, n of a facet; n = (n1->n3) x (n2->n4)
    n = np.cross(p3 - p1, p4 - p2)
    n /= np.linalg.norm(n)
    e1 = (p2 - p1) + (p3 - p4)
    e1 -= n * (e1 @ n)
    e1 /= np.linalg.norm(e1)
    return e1, np.cross(n, e1), n


# --- elements: one per entry of the facet's sections on every facet (coincident for several
# ply angles, '-noeas' then required); '-local' = fibre direction of that angle in the facet frame ---
LAM_SECTIONS = [SECTIONS] + ([WEB_SECTIONS] if STRIP_LAM else [])
coincident = any(len(S) > 1 for S in LAM_SECTIONS)
if coincident and ELEMENT != 'ASDShellQ4':
    raise ValueError('multi-angle laminates need ASDShellQ4 (coincident per-angle elements)')
oriented = coincident or any(th != 0.0 for S in LAM_SECTIONS for _, th in S)
eas = (not coincident) if EAS is None else EAS
opts = (*OPTIONS, '-noeas') if ELEMENT == 'ASDShellQ4' and not eas else OPTIONS
FACETS, FRAMES, tag = [], [], 1
for f, quad in enumerate(QUADS):
    S = LAM_SECTIONS[STRIP_LAM[f // MESH['nx']]] if STRIP_LAM else SECTIONS
    e1, e2, n = facet_frame(*[np.array(ops.nodeCoord(k)) for k in quad])
    FRAMES.append((e1, e2, n))
    FACETS.append((tag, len(S), S[0][1], *quad))
    for sec, th in S:
        if oriented:
            c, s = math.cos(math.radians(th)), math.sin(math.radians(th))
            ax = [round(float(v), 15) + 0.0 for v in c * e1 + s * e2]
            ops.element(ELEMENT, tag, *quad, sec, *opts, '-local', *ax)
        else:
            ops.element(ELEMENT, tag, *quad, sec, *opts)
        tag += 1
FRAMES = np.array(FRAMES)
'''


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
    ap.add_argument('--L', type=float)
    g = ap.add_mutually_exclusive_group()
    g.add_argument('--flat', type=float, metavar='B')
    g.add_argument('--arc', type=float, nargs=2, metavar=('R', 'B'))
    ap.add_argument('--size', type=float)
    ap.add_argument('--case', help='case JSON (geometry and element entries) instead of --L/--flat/--arc/--size')
    ap.add_argument('--emit-code', metavar='FILE', help='write the nodes/elements piece of a complete OpenSeesPy '
                                                       'script (joined by shell-assemble-run)')
    a = ap.parse_args()
    if a.case:
        case = json.loads(Path(a.case).read_text())
        mesh, el = build_from_spec(case['geometry']), case.get('element', {})
        print(mesh.summary())
        if a.emit_code:
            import laminate_properties as lp
            lam = lp.laminate_from_spec(case['laminate']) if mesh.has_web else None
            write_code(mesh, a.emit_code, el.get('type', 'ASDShellQ4'), el.get('corotational', False),
                       el.get('eas'), geometry=case['geometry'], laminate=lam)
            print(f'mesh piece of the OpenSeesPy script written to {a.emit_code}')
        return
    if a.L is None or a.size is None or (a.flat is None and a.arc is None):
        ap.error('give --case, or --L, --flat B or --arc R B, and --size')
    sec = CrossSection.flat(a.flat) if a.flat else CrossSection.arc(*a.arc)
    mesh = ShellMesh(a.L, sec, a.size)
    print(mesh.summary())
    print(f'{6 * (mesh.nx + 1) * (mesh.ny + 1)} DOFs; picture it with the shell-visualize skill (--undeformed)')


if __name__ == '__main__':
    main()
