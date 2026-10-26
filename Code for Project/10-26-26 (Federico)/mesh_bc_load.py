"""
Meshing, boundary conditions, loads and static solution control for
OpenSeesPy thin-shell strips (flat plates and tape-spring-like strips with a
circular-arc cross-section). Generalizes the code in "10-22-26 (Federico)"
and is the code behind the MeshBCLoadGenerator agent.

Geometry: the strip runs along x from 0 to L. Its cross-section, at every x,
has arc length b and is either flat (y from 0 to b) or a circular arc of
radius R (curvature centre on +z for R > 0, -z for R < 0), symmetric about
y = 0: phi from -b/(2R) to +b/(2R), y = R sin(phi), z = R (1 - cos(phi)).
Grid indices: i = 0..nx along x, j = 0..ny across the width.
Edges: 'x0' (i = 0), 'xL' (i = nx), 'y0' (j = 0), 'yb' (j = ny).

Units: N, mm, MPa.

Typical use:
    import openseespy.opensees as ops
    import mesh_bc_load as mbl
    mesh = mbl.StripMesh(L=1000, b=100, size=5)            # or R=... for a tape spring
    mbl.create_nodes(mesh)
    ops.section('ElasticMembranePlateSection', 1, E, nu, t, rho)
    mbl.create_elements(mesh, mbl.homogeneous('ASDShellQ4', 1, '-corotational'))
    mbl.fix_edge(mesh, 'x0')                               # clamp
    mbl.edge_load(mesh, 'xL', (0, 0, -P))                  # total force P spread on the edge
    # or, through a rigid end fixture (needed for curved sections):
    #   tip = mbl.rigid_end(mesh, 'xL'); mbl.point_load(tip, (0, 0, -P))
    history = mbl.displacement_control(mesh.node_tag(mesh.nx, mesh.ny // 2), 3, -0.02 * L, n_steps=40)
"""
import math
from dataclasses import dataclass

import numpy as np
import openseespy.opensees as ops


@dataclass
class StripMesh:
    L: float                 # length along x [mm]
    b: float                 # cross-section arc length (width) [mm]
    size: float              # target element size [mm]
    R: float = None          # cross-section radius [mm]; None = flat
    node_offset: int = 0     # first node tag = node_offset + 1

    def __post_init__(self):
        self.nx = max(1, round(self.L / self.size))
        self.ny = max(1, round(self.b / self.size))

    def node_tag(self, i, j):
        return self.node_offset + j * (self.nx + 1) + i + 1

    def coords(self, i, j):
        x = i * self.L / self.nx
        s = j * self.b / self.ny                    # arc length across the width
        if self.R is None:
            return x, s, 0.0
        phi = (s - self.b / 2) / self.R
        return x, self.R * math.sin(phi), self.R * (1 - math.cos(phi))

    def quads(self):
        """(i, j, node tags counter-clockwise seen from +z) for every element."""
        for j in range(self.ny):
            for i in range(self.nx):
                yield i, j, (self.node_tag(i, j), self.node_tag(i + 1, j),
                             self.node_tag(i + 1, j + 1), self.node_tag(i, j + 1))

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

    def summary(self):
        shape = 'flat' if self.R is None else f'arc R = {self.R:g} mm ({math.degrees(self.b / self.R):.1f} deg)'
        return (f'{self.L:g} x {self.b:g} mm strip, {shape}; {self.nx} x {self.ny} = '
                f'{self.nx * self.ny} quads of {self.L / self.nx:.3g} x {self.b / self.ny:.3g} mm, '
                f'{(self.nx + 1) * (self.ny + 1)} nodes')


def create_nodes(mesh, new_model=True):
    """Create the mesh nodes (3D, 6 DOFs per node). new_model wipes first."""
    if new_model:
        ops.wipe()
        ops.model('basic', '-ndm', 3, '-ndf', 6)
    for j in range(mesh.ny + 1):
        for i in range(mesh.nx + 1):
            ops.node(mesh.node_tag(i, j), *mesh.coords(i, j))


def homogeneous(element, sec_tag, *options):
    """Element factory for a single section: element is 'ShellMITC4',
    'ASDShellQ4', 'ShellDKGQ', ...; options e.g. '-corotational'."""
    def make(ele_tag, nodes):
        ops.element(element, ele_tag, *nodes, sec_tag, *options)
        return ele_tag + 1
    return make


def create_elements(mesh, make_element, first_tag=1):
    """Call make_element(ele_tag, nodes) -> next free tag for every quad.
    For a laminate pass
        lambda tag, nodes: add_laminate_elements(tag, nodes, layup, '-corotational')
    from layup.py (10-23-26 (Tara)). Returns the next free element tag."""
    tag = first_tag
    for _, _, nodes in mesh.quads():
        tag = make_element(tag, nodes)
    return tag


def fix_edge(mesh, edge, dofs=(1, 1, 1, 1, 1, 1)):
    """Restrain an edge. dofs: ux uy uz rx ry rz, 1 = fixed. Default clamps.
    Simple support along x0, for example: (1, 1, 1, 0, 0, 0)."""
    for n in mesh.edge_nodes(edge):
        ops.fix(n, *dofs)


def rigid_end(mesh, edge, master_tag=None):
    """Rigid end fixture: a new node at the edge's centroid (tributary-weighted
    mean of the edge nodes), tied to every edge node with a rigid beam link.
    Load or restrain the returned master node instead of the edge nodes.

    Use it whenever the real structure is loaded or clamped through a fixture.
    Loads spread directly on the free edge of a curved thin wall distort the
    cross-section locally (R = 50 mm, t = 0.1 mm arc: tip deflection 8% too
    large, edges 40% more than the centre). Flat strips are hardly affected."""
    nodes = mesh.edge_nodes(edge)
    w = np.ones(len(nodes))
    w[[0, -1]] = 0.5
    xyz = np.array([ops.nodeCoord(n) for n in nodes])
    centroid = w @ xyz / w.sum()
    master = master_tag or max(ops.getNodeTags()) + 1
    ops.node(master, *centroid)
    for n in nodes:
        ops.rigidLink('beam', master, n)
    return master


def load_pattern(tag=1, series_tag=1):
    ops.timeSeries('Linear', series_tag)
    ops.pattern('Plain', tag, series_tag)


def edge_load(mesh, edge, force, moment=(0.0, 0.0, 0.0), pattern_tag=1):
    """Total force (Fx, Fy, Fz) [N] (and moment [N mm]) spread uniformly along
    an edge as consistent nodal loads (end nodes get half shares). Fixed
    global direction: does not follow the deformation. Creates the load
    pattern if pattern_tag is new."""
    nodes = mesh.edge_nodes(edge)
    if pattern_tag not in ops.getPatterns():
        load_pattern(pattern_tag, pattern_tag)
    n = len(nodes) - 1
    for k, node in enumerate(nodes):
        w = (0.5 if k in (0, n) else 1.0) / n
        ops.load(node, *(w * f for f in force), *(w * m for m in moment))


def point_load(node, force, moment=(0.0, 0.0, 0.0), pattern_tag=1):
    if pattern_tag not in ops.getPatterns():
        load_pattern(pattern_tag, pattern_tag)
    ops.load(node, *force, *moment)


def static_setup(tol=1e-6, max_iter=40):
    ops.system('UmfPack')
    ops.numberer('RCM')
    ops.constraints('Transformation')     # handles rigid_end links; same as Plain without them
    ops.test('RelativeNormDispIncr', tol, max_iter)
    ops.algorithm('Newton')


def linear_solve():
    """One linear static step at load factor 1. Re-forms element forces so
    eleResponse(..., 'stresses') is correct afterwards (with the Linear
    algorithm they otherwise read as zero)."""
    ops.system('UmfPack')
    ops.numberer('RCM')
    ops.constraints('Transformation')
    ops.integrator('LoadControl', 1.0)
    ops.algorithm('Linear')
    ops.analysis('Static')
    if ops.analyze(1) != 0:
        raise RuntimeError('linear analysis failed')
    ops.reactions()


def displacement_control(node, dof, step, n_steps=None, stop=None, max_cuts=6,
                         record=None, pattern_tag=1, verbose=True):
    """Nonlinear static analysis under displacement control: each step moves
    `node` by `step` [mm] in `dof`; OpenSees finds the load factor. Steps are
    halved (up to max_cuts times) on non-convergence. Runs n_steps steps, or
    until stop(load_factor) is True. Use with corotational elements for large
    rotations; load control stalls there.

    record(): extra values to store each step (default: the controlled
    displacement). Returns an array of rows [load factor, record()...,
    Newton iterations], starting with the unloaded state."""
    record = record or (lambda: [ops.nodeDisp(node, dof)])
    static_setup()
    history = [[0.0, *[0.0] * len(record()), 0]]
    k = 0
    while (n_steps is None or k < n_steps) and not (stop and stop(history[-1][0])):
        du = step
        for _ in range(max_cuts + 1):
            ops.integrator('DisplacementControl', node, dof, du)
            ops.analysis('Static')
            if ops.analyze(1) == 0:
                break
            du /= 2
        else:
            if verbose:
                print(f'  stopped: no convergence beyond load factor {history[-1][0]:.4g}')
            break
        history.append([ops.getLoadFactor(pattern_tag), *record(), ops.testIter()])
        k += 1
        if verbose:
            print(f'  step {k:3d}: load factor {history[-1][0]:.5g}, '
                  f'{history[-1][-1]} iterations', flush=True)
    ops.reactions()
    return np.array(history)


def top_surface_stresses(t):
    """Element-average top-surface (z = +t/2) in-plane stresses [MPa] for a
    homogeneous shell of thickness t, from the 'stresses' resultants of
    4-node shells (4 Gauss points x N11 N22 N12 M11 M22 M12 Q13 Q23; positive
    M puts the top in tension). Call after linear_solve() or
    displacement_control(), which re-form element forces."""
    eles = ops.getEleTags()
    s = np.zeros((len(eles), 3))
    for k, ele in enumerate(eles):
        f = np.reshape(ops.eleResponse(ele, 'stresses'), (4, 8)).mean(axis=0)
        s[k] = f[:3] / t + 6 * f[3:6] / t**2
    sxx, syy, sxy = s.T
    vm = np.sqrt(sxx**2 - sxx * syy + syy**2 + 3 * sxy**2)
    return {'sigma_xx': sxx, 'sigma_yy': syy, 'tau_xy': sxy, 'von_Mises': vm}
