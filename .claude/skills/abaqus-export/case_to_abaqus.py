"""
Abaqus/CAE Python script from a v2.0 case file (the JSON run by the
shell-bc-load skill). The laminate entry of the case can be a laminate JSON
from laminate-properties ({"json": "lam.json"}), a catalog ID, explicit ply
constants or an isotropic shell; it is resolved with laminate_properties, so
Abaqus gets exactly the plies, angles, materials and thicknesses OpenSees got.

Generalizes "Code for Project/10-26-26 (Federico and Tara)/abaqus_tip_load_laminate.py"
(the template of the v1 OpenSeesPyToAbaqusPythonGenerator agent) from one
hard-coded cantilever to any case file.

Translation (OpenSees model -> Abaqus):
  cross-section pieces (shell-mesh)  -> sketch Lines / ArcByCenterEnds in the part XY plane,
                                        BaseShellExtrude(depth=L); the instance is rotated 120 deg
                                        about (1,1,1) so part X, Y, Z = global y, z, x
  mesh nx x ny (per piece)            -> seedEdgeByNumber on every edge, structured quads:
                                        the same node grid as OpenSees
  laminate plies bottom to top        -> one CompositeShellSection, one layer per ply (no
                                        coincident elements or void layers), Simpson, 3 pts/ply
  isotropic shell                     -> HomogeneousShellSection
  ply angle from the facet x axis     -> orientAngle per layer, with a discrete material
                                        orientation: normal = shell normal, axis 1 = extrusion (x)
  facet normal (n1->n3)x(n2->n4) = x cross (section direction)
                                      -> shell normal checked and flipped to match before meshing
  ASDShellQ4 / ShellMITC4             -> S4R (default) or S4 (closer to '-noeas')
  supports on edges / nodes           -> DisplacementBC (global DOFs) on edge / node sets
  rigid_end                           -> reference point at the same centroid + KINEMATIC coupling
  edge_load (consistent nodal shares) -> ConcentratedForce / Moment on node sets with the SAME
                                        nodal shares (end nodes half), so the loads are identical
  point load                          -> ConcentratedForce / Moment on a node or reference point
  pressure along +n                   -> Pressure with magnitude -p (Abaqus pressure acts along -n)
  linear_solve                        -> StaticStep(nlgeom=OFF)
  displacement_control (proportional
  reference load, OpenSees finds the
  load factor)                        -> StaticRiksStep(nlgeom=ON) with the same reference loads,
                                        stopped at the same control displacement (LPF = load factor)
  load_control                        -> StaticStep(nlgeom=ON), loads x max_load_factor
Reference values from the OpenSees run (report-node displacement, top-ply
stresses, load-factor history) are embedded and compared in the Abaqus output.

Usage:
  python case_to_abaqus.py case.json [--out abaqus_<name>.py] [--element S4R|S4] [--no-reference]
The generated script runs with:  abaqus cae noGUI=abaqus_<name>.py [-- <size> <S4R|S4>]
"""
import argparse
import json
import math
import sys
from pathlib import Path

import numpy as np

_SKILLS = Path(__file__).resolve().parents[1]
for _d in ('laminate-properties', 'shell-mesh', 'shell-bc-load', 'failure-check'):
    sys.path.insert(0, str(_SKILLS / _d))
import laminate_properties as lp   # noqa: E402
import shell_mesh as sm            # noqa: E402

EDGES = ('x0', 'xL', 'y0', 'yb')


def section_pieces(sec):
    """Cross-section pieces between breaks as ('line', p0, p1) or
    ('arc', p0, p1, centre, ccw) in (y, z)."""
    out = []
    for a, c in zip(sec.breaks[:-1], sec.breaks[1:]):
        p0, pm, p1 = (np.array(sec.point(s)) for s in (a, (a + c) / 2, c))
        cross = (pm[0] - p0[0]) * (p1[1] - p0[1]) - (pm[1] - p0[1]) * (p1[0] - p0[0])
        if abs(cross) < 1e-9 * (c - a)**2:
            out.append(('line', p0.tolist(), p1.tolist()))
            continue
        # circle through three points
        A = np.array([[2 * (pm[0] - p0[0]), 2 * (pm[1] - p0[1])], [2 * (p1[0] - p0[0]), 2 * (p1[1] - p0[1])]])
        rhs = np.array([pm @ pm - p0 @ p0, p1 @ p1 - p0 @ p0])
        ctr = np.linalg.solve(A, rhs)
        out.append(('arc', p0.tolist(), p1.tolist(), ctr.tolist(), bool(cross < 0)))   # p0->pm->p1 turning left = CCW
    return out


def edge_nodes_and_weights(mesh, edge):
    """Node coordinates of an edge (global) and their consistent load shares
    (as shell_bc_load.edge_load)."""
    tags = mesh.edge_nodes(edge)
    idx = {mesh.node_tag(i, j): (i, j) for j in range(mesh.ny + 1) for i in range(mesh.nx + 1)}
    xyz = np.array([mesh.coords(*idx[t]) for t in tags])
    seg = np.linalg.norm(np.diff(xyz, axis=0), axis=1)
    if np.ptp(seg) < 1e-9 * seg.max():
        n = len(tags) - 1
        w = np.array([(0.5 if k in (0, n) else 1.0) / n for k in range(n + 1)])
    else:
        w = np.zeros(len(tags))
        w[:-1] += seg / 2
        w[1:] += seg / 2
        w /= w.sum()
    return xyz, w


def node_point(mesh, ref):
    """Global coordinates of a case node reference (None for rigid refs)."""
    if isinstance(ref, dict) and 'rigid' in ref:
        return None
    if ref == 'tip':
        return list(mesh.coords(mesh.nx, mesh.ny // 2))
    if isinstance(ref, dict) and 'i' in ref:
        return list(mesh.coords(ref['i'], ref['j']))
    if isinstance(ref, dict):
        i = int(round(ref['x'] / (mesh.L / mesh.nx)))
        return list(mesh.coords(i, int(np.argmin(np.abs(mesh.s - ref['s'])))))
    raise ValueError(f'node reference {ref!r}: use "tip", {{"x","s"}}, {{"i","j"}} or {{"rigid": edge}}')


def describe_model(case, mesh, lam):
    """Plain data for the Abaqus script (only lists, dicts, floats, strings).
    Everything mesh-dependent (edge nodes, load shares, seeds) is recomputed
    inside Abaqus, so the script also works at another element size."""
    sec = mesh.section
    pieces = section_pieces(sec)
    faces, seeds = [], []
    for a, c in zip(sec.breaks[:-1], sec.breaks[1:]):
        p, q = np.array(sec.point((a + c) / 2 + 1e-6 * (c - a))), np.array(sec.point((a + c) / 2 - 1e-6 * (c - a)))
        t = (p - q) / np.linalg.norm(p - q)
        mid = list(sec.point((a + c) / 2))
        faces.append([mid, [0.0, -t[1], t[0]]])          # facet normal = x cross section tangent
        seeds.append([mid, c - a])
    samples = [[float(x)] + list(sec.point(x)) for x in np.linspace(0, sec.b, 2001)]
    mats = [{k: m[k] for k in ('E1', 'E2', 'nu12', 'G12', 'G13', 'G23', 'rho')} for m in lam.materials]
    d = dict(name=case.get('name', 'case'), L=mesh.L, b=mesh.b, size=mesh.size, pieces=pieces,
             breaks=[list(sec.point(x)) for x in sec.breaks], faces=faces, seeds=seeds, samples=samples,
             kind=lam.kind, materials=mats, plies=[[q['theta'], q['t'], q['mat']] for q in lam.plies],
             h=lam.h, analysis=dict(case.get('analysis', {'type': 'linear'})), supports=[], loads=[], rigid={})
    for item in case.get('supports', []) + case.get('loads', []):
        e = item.get('rigid_end') or (item['node'].get('rigid') if isinstance(item.get('node'), dict) else None)
        if e and e not in d['rigid']:
            xyz, _ = edge_nodes_and_weights(mesh, e)
            w = np.ones(len(xyz))
            w[[0, -1]] = 0.5
            d['rigid'][e] = (w @ xyz / w.sum()).tolist()      # same centroid as shell_bc_load.rigid_end
    for s in case.get('supports', []):
        dofs = s.get('dofs', [1] * 6)
        if 'edge' in s:
            d['supports'].append(dict(kind='edge', edge=s['edge'], dofs=dofs))
        elif 'rigid_end' in s:
            if 'dofs' in s:
                d['supports'].append(dict(kind='rigid', edge=s['rigid_end'], dofs=dofs))
        else:
            d['supports'].append(dict(kind='node', point=node_point(mesh, s['node']), dofs=dofs))
    for ld in case.get('loads', []):
        k = ld.get('factor', 1.0)
        F = [k * f for f in ld.get('force', (0, 0, 0))]
        M = [k * m for m in ld.get('moment', (0, 0, 0))]
        if 'edge' in ld:
            d['loads'].append(dict(kind='edge', edge=ld['edge'], F=F, M=M))
        elif 'pressure' in ld:
            d['loads'].append(dict(kind='pressure', p=k * ld['pressure']))
        elif isinstance(ld['node'], dict) and 'rigid' in ld['node']:
            d['loads'].append(dict(kind='rigid', edge=ld['node']['rigid'], F=F, M=M))
        else:
            d['loads'].append(dict(kind='node', point=node_point(mesh, ld['node']), F=F, M=M))
    rep = case.get('report_node', 'tip')
    d['report'] = dict(rigid=rep['rigid']) if isinstance(rep, dict) and 'rigid' in rep else dict(point=node_point(mesh, rep))
    an = d['analysis']
    if an['type'] == 'displacement_control':
        ctrl = an['node']
        an['control'] = dict(rigid=ctrl['rigid']) if isinstance(ctrl, dict) and 'rigid' in ctrl \
            else dict(point=node_point(mesh, ctrl))
        if an.get('n_steps') is None:
            raise SystemExit('displacement_control without n_steps: give n_steps (target = step x n_steps) for Riks')
        an['target'] = an['step'] * an['n_steps']
    return d


def opensees_reference(case):
    """Run the case in OpenSees and keep what the Abaqus script compares."""
    import io
    from contextlib import redirect_stdout

    import openseespy.opensees as ops

    import failure_check as fc
    import shell_bc_load as bc
    with redirect_stdout(io.StringIO()):
        mesh, res = bc.run_case(case, verbose=False)
    rep = bc.resolve_node(mesh, case.get('report_node', 'tip'))
    lam = lp.Laminate.from_dict(json.loads(res['laminate']))
    sig12 = fc.ply_stresses(res['strains'], lam, 'centroid')[0][:, 0, -1, 2]    # top ply, top surface, ply axes
    k = np.abs(sig12).argmax(axis=0)
    ref = dict(report_disp=list(ops.nodeDisp(rep)), max_u=float(np.abs(res['disp'][:, :3]).max()),
               top_ply_stress=[float(sig12[k[c], c]) for c in range(3)],
               history=res['history'].tolist() if case.get('analysis', {}).get('type') != 'linear' else [])
    ops.wipe()
    return ref


ABAQUS = r'''"""
Abaqus/CAE model generated by case_to_abaqus.py (.claude/skills/abaqus-export) from the
OpenSeesPy case "%(name)s" (shell-bc-load case file %(case_file)s).
NOT RUN IN ABAQUS when generated (Abaqus is not installed on the project VM).

%(summary)s

Units: N, mm, MPa, t/mm^3 (Abaqus has no units; these are the case units).

Usage (Abaqus command line, in an empty working folder):
  abaqus cae noGUI=%(script)s                 # %(size)g mm, %(element)s
  abaqus cae noGUI=%(script)s -- 5 S4         # element size [mm] and element type
Output: <job>_results.txt (also printed), <job>.odb, <job>.cae
"""
import sys

from abaqus import mdb
from abaqusConstants import (ANALYSIS, AXIS_1, AXIS_3, CARTESIAN, CENTROID, CLOCKWISE, COUNTERCLOCKWISE,
                             DEFAULT, DEFORMABLE_BODY, DISCRETE, DOUBLE_PRECISION, FROM_SECTION, GRADIENT,
                             KINEMATIC, LAMINA, MIDDLE_SURFACE, NO_IDEALIZATION, OFF, ON, PERCENTAGE, QUAD,
                             ROTATION_NONE, S4, S4R, SIMPSON, SINGLE, STACK_3, STANDARD, STRUCTURED,
                             SURFACE, SYSTEM, THREE_D, UNIFORM, UNSET, VECTOR, ISOTROPIC, FIXED,
                             WHOLE_SURFACE)
import mesh
import regionToolset
import section
from odbAccess import openOdb

# --- Inputs (from the OpenSeesPy case; do not edit by hand, regenerate instead) ---
M = %(model)s
REF = %(ref)s          # OpenSees results for comparison

args = sys.argv[sys.argv.index('--') + 1:] if '--' in sys.argv else []
SIZE = float(args[0]) if args else M['size']
ELEM = args[1].upper() if len(args) > 1 else '%(element)s'
ELEM_CODES = {'S4R': S4R, 'S4': S4}
JOB = ('%(job)s_%%s_%%gmm' %% (ELEM, SIZE)).replace('.', 'p')
REPORT = open(JOB + '_results.txt', 'w')


def log(text=''):
    # 'abaqus cae noGUI' does not always show print()
    sys.__stdout__.write(text + '\n')
    sys.__stdout__.flush()
    REPORT.write(text + '\n')


def P(g):
    """Global (x, y, z) -> part (X, Y, Z) = (y, z, x)."""
    return (g[1], g[2], g[0])


def compare(name, value, ref, tol=0.03):
    if ref == 0:
        log('       %%-34s Abaqus = %%+.5g   OpenSees = %%+.5g' %% (name, value, ref))
        return True
    err = abs(value - ref) / abs(ref)
    log('[%%s] %%-34s Abaqus = %%+.5g   OpenSees = %%+.5g   diff = %%+.2f%%%%'
        %% ('PASS' if err < tol else 'CHECK', name, value, ref, 100 * (value - ref) / abs(ref)))
    return err < tol


# --- Model ---
model = mdb.Model(name='ShellModel')
if 'Model-1' in mdb.models.keys():
    del mdb.models['Model-1']

sk = model.ConstrainedSketch(name='section', sheetSize=4 * max(M['b'], 1.0))
for pc in M['pieces']:                              # cross-section in the sketch plane: (u, v) = (y, z)
    if pc[0] == 'line':
        sk.Line(point1=tuple(pc[1]), point2=tuple(pc[2]))
    else:
        sk.ArcByCenterEnds(center=tuple(pc[3]), point1=tuple(pc[1]), point2=tuple(pc[2]),
                           direction=COUNTERCLOCKWISE if pc[4] else CLOCKWISE)
part = model.Part(name='Shell', dimensionality=THREE_D, type=DEFORMABLE_BODY)
part.BaseShellExtrude(sketch=sk, depth=M['L'])     # extrusion along part Z = global x

# Shell normal must be the OpenSees facet normal, x cross (section direction),
# on every face: it sets which side is the bottom ply (SNEG) and the ply-angle sign.
for mid, want in M['faces']:
    pm = P((M['L'] / 2, mid[0], mid[1]))
    face = part.faces.findAt((pm,))
    try:
        n = face[0].getNormal(point=pm)
    except TypeError:
        n = face[0].getNormal()
    w = P(want)
    if n[0] * w[0] + n[1] * w[1] + n[2] * w[2] < 0:
        part.flipNormal(regions=regionToolset.Region(side1Faces=face))
        log('shell normal flipped on the face through %%s' %% (mid,))

# Materials and section
for k, m in enumerate(M['materials']):
    mat = model.Material(name='MAT%%d' %% k)
    if M['kind'] == 'isotropic':
        mat.Elastic(type=ISOTROPIC, table=((m['E1'], m['nu12']),))
    else:
        mat.Elastic(type=LAMINA, table=((m['E1'], m['E2'], m['nu12'], m['G12'], m['G13'], m['G23']),))
    if m['rho'] > 0:
        mat.Density(table=((m['rho'],),))
if M['kind'] == 'isotropic':
    model.HomogeneousShellSection(name='Section', preIntegrate=OFF, material='MAT0', thicknessType=UNIFORM,
                                  thickness=M['h'], idealization=NO_IDEALIZATION, poissonDefinition=DEFAULT,
                                  integrationRule=SIMPSON, numIntPts=5)
else:
    layup = tuple(section.SectionLayer(material='MAT%%d' %% m, thickness=t, orientAngle=float(a), numIntPts=3,
                                       plyName='ply%%d' %% (k + 1))
                  for k, (a, t, m) in enumerate(M['plies']))          # first = bottom (SNEG)
    model.CompositeShellSection(name='Section', preIntegrate=OFF, idealization=NO_IDEALIZATION, symmetric=False,
                                thicknessType=UNIFORM, poissonDefinition=DEFAULT, temperature=GRADIENT,
                                integrationRule=SIMPSON, layup=layup)
region = regionToolset.Region(faces=part.faces)
part.SectionAssignment(region=region, sectionName='Section', offsetType=MIDDLE_SURFACE,
                       thicknessAssignment=FROM_SECTION)
# Material axis 1 = extrusion direction (global x = part Z) on every facet, normal = shell normal
try:
    part.MaterialOrientation(region=region, orientationType=DISCRETE, axis=AXIS_3,
                             normalAxisDefinition=SURFACE, normalAxisRegion=regionToolset.Region(side1Faces=part.faces),
                             flipNormalDirection=False, normalAxisDirection=AXIS_3,
                             primaryAxisDefinition=VECTOR, primaryAxisVector=(0.0, 0.0, 1.0),
                             primaryAxisDirection=AXIS_1, flipPrimaryDirection=False,
                             additionalRotationType=ROTATION_NONE, stackDirection=STACK_3)
except Exception as exc:
    log('discrete orientation not available (%%s); using a rectangular CSYS: 1 = global x, '
        'approximate normal = global z (OK for flat plates and shallow sections only)' %% exc)
    csys = part.DatumCsysByThreePoints(coordSysType=CARTESIAN, origin=(0.0, 0.0, 0.0),
                                       point1=(0.0, 0.0, 1.0), point2=(1.0, 0.0, 0.0))
    part.MaterialOrientation(region=region, orientationType=SYSTEM, axis=AXIS_3,
                             localCsys=part.datums[csys.id], additionalRotationType=ROTATION_NONE,
                             stackDirection=STACK_3)

# Mesh: the same structured grid as shell-mesh (round(length / size) per piece)
NX = max(1, int(round(M['L'] / SIZE)))
for y, z in M['breaks']:
    part.seedEdgeByNumber(edges=part.edges.findAt((P((M['L'] / 2, y, z)),)), number=NX, constraint=FIXED)
for (y, z), length in M['seeds']:
    for x in (0.0, M['L']):
        part.seedEdgeByNumber(edges=part.edges.findAt((P((x, y, z)),)),
                              number=max(1, int(round(length / SIZE))), constraint=FIXED)
part.setMeshControls(regions=part.faces, elemShape=QUAD, technique=STRUCTURED)
part.setElementType(regions=region, elemTypes=(mesh.ElemType(elemCode=ELEM_CODES[ELEM], elemLibrary=STANDARD),))
part.generateMesh()

asm = model.rootAssembly
inst = asm.Instance(name='Shell-1', part=part, dependent=ON)
asm.rotateInstance(instanceList=('Shell-1',), axisPoint=(0.0, 0.0, 0.0), axisDirection=(1.0, 1.0, 1.0),
                   angle=120.0)                   # part X, Y, Z -> global y, z, x
NODES = [(nd.label, nd.coordinates) for nd in inst.nodes]   # assembly (= global) coordinates
TOL = 1e-3 * SIZE


def arc_s(y, z):
    # arc length across the section of the point nearest (y, z)
    return min(M['samples'], key=lambda q: (q[1] - y) ** 2 + (q[2] - z) ** 2)[0]


def edge_nodes(edge):
    # labels ordered along the edge, and consistent load shares (as shell_bc_load.edge_load)
    if edge in ('x0', 'xL'):
        x0 = 0.0 if edge == 'x0' else M['L']
        sel = [(arc_s(c[1], c[2]), lab, c) for lab, c in NODES if abs(c[0] - x0) < TOL]
    else:
        y0, z0 = M['breaks'][0] if edge == 'y0' else M['breaks'][-1]
        sel = [(c[0], lab, c) for lab, c in NODES if (c[1] - y0) ** 2 + (c[2] - z0) ** 2 < TOL ** 2]
    sel.sort()
    pts = [c for _, _, c in sel]
    seg = [sum((pts[i + 1][k] - pts[i][k]) ** 2 for k in range(3)) ** 0.5 for i in range(len(pts) - 1)]
    w = [0.0] * len(pts)
    for i, l in enumerate(seg):
        w[i] += l / 2
        w[i + 1] += l / 2
    tot = sum(w)
    return [lab for _, lab, _ in sel], [x / tot for x in w]


def node_set(labels, name):
    return asm.Set(nodes=inst.nodes.sequenceFromLabels(tuple(labels)), name=name)


def nearest(p):
    lab, c = min(NODES, key=lambda q: sum((q[1][k] - p[k]) ** 2 for k in range(3)))
    dist = sum((c[k] - p[k]) ** 2 for k in range(3)) ** 0.5
    if dist > TOL:
        log('note: node %%d used for point %%s is %%.3g mm away (mesh size differs from the case)' %% (lab, p, dist))
    return lab


rps = {}
for edge, c in sorted(M['rigid'].items()):
    rp = asm.ReferencePoint(point=tuple(c))
    rps[edge] = asm.Set(referencePoints=(asm.referencePoints[rp.id],), name='RP-' + edge.upper())
    labels, _ = edge_nodes(edge)
    model.Coupling(name='Rigid-' + edge, controlPoint=rps[edge], surface=node_set(labels, 'RIGID-' + edge.upper()),
                   influenceRadius=WHOLE_SURFACE, couplingType=KINEMATIC, localCsys=None,
                   u1=ON, u2=ON, u3=ON, ur1=ON, ur2=ON, ur3=ON)

STEP = 'Load'
an = M['analysis']
if an['type'] == 'linear':
    model.StaticStep(name=STEP, previous='Initial', nlgeom=OFF)
    lf = 1.0
elif an['type'] == 'load_control':
    n = an.get('n_steps', 10)
    model.StaticStep(name=STEP, previous='Initial', nlgeom=ON, initialInc=1.0 / n, maxInc=1.0 / n, maxNumInc=1000)
    lf = an.get('max_load_factor', 1.0)
else:                                             # displacement control -> Riks with the reference loads
    ctrl = rps[an['control']['rigid']] if 'rigid' in an['control'] else node_set([nearest(an['control']['point'])], 'CONTROL')
    n = an['n_steps']
    model.StaticRiksStep(name=STEP, previous='Initial', nlgeom=ON, maxNumInc=20 * n, initialArcInc=1.0 / n,
                         maxArcInc=2.0 / n, nodeOn=ON, region=ctrl, dof=an.get('dof', 3),
                         maximumDisplacement=an['target'])
    lf = 1.0

for k, s in enumerate(M['supports']):
    d = [0.0 if f else UNSET for f in s['dofs']]
    if s['kind'] == 'rigid':
        reg = rps[s['edge']]
    elif s['kind'] == 'edge':
        reg = node_set(edge_nodes(s['edge'])[0], 'SUP%%d' %% k)
    else:
        reg = node_set([nearest(s['point'])], 'SUP%%d' %% k)
    model.DisplacementBC(name='BC%%d' %% k, createStepName='Initial', region=reg,
                         u1=d[0], u2=d[1], u3=d[2], ur1=d[3], ur2=d[4], ur3=d[5])


def point_loads(name, reg, F, M_):
    if any(F):
        model.ConcentratedForce(name=name + 'F', createStepName=STEP, region=reg,
                                cf1=F[0] or UNSET, cf2=F[1] or UNSET, cf3=F[2] or UNSET)
    if any(M_):
        model.Moment(name=name + 'M', createStepName=STEP, region=reg,
                     cm1=M_[0] or UNSET, cm2=M_[1] or UNSET, cm3=M_[2] or UNSET)


for k, ld in enumerate(M['loads']):
    if ld['kind'] == 'pressure':
        model.Pressure(name='P%%d' %% k, createStepName=STEP, region=regionToolset.Region(side1Faces=inst.faces),
                       magnitude=-lf * ld['p'], distributionType=UNIFORM)        # Abaqus pressure acts along -n
        continue
    F = [lf * f for f in ld['F']]
    Mm = [lf * m for m in ld['M']]
    if ld['kind'] == 'rigid':
        point_loads('L%%d' %% k, rps[ld['edge']], F, Mm)
    elif ld['kind'] == 'node':
        point_loads('L%%d' %% k, node_set([nearest(ld['point'])], 'LOAD%%d' %% k), F, Mm)
    else:                                         # consistent nodal shares (end nodes half), grouped by share
        groups = {}
        for lab, w in zip(*edge_nodes(ld['edge'])):
            groups.setdefault(round(w, 12), []).append(lab)
        for g, (w, labs) in enumerate(sorted(groups.items())):
            point_loads('L%%d_%%d' %% (k, g), node_set(labs, 'LOAD%%d_%%d' %% (k, g)), [w * f for f in F], [w * m for m in Mm])

model.fieldOutputRequests['F-Output-1'].setValues(variables=('S', 'SF', 'SM', 'U', 'UR', 'RF'), frequency=1)

job = mdb.Job(name=JOB, model=model.name, type=ANALYSIS, precision=DOUBLE_PRECISION, nodalOutputPrecision=SINGLE,
              memoryUnits=PERCENTAGE, memory=90)
job.submit(consistencyChecking=OFF)
job.waitForCompletion()
mdb.saveAs(pathName=JOB + '.cae')

# --- Results ---
odb = openOdb(JOB + '.odb', readOnly=True)
step = odb.steps[STEP]
frame = step.frames[-1]
oinst = odb.rootAssembly.instances['SHELL-1']
log('=== %%s: %%s, %%g mm mesh, %%d elements, %%d nodes' %% (JOB, ELEM, SIZE, len(oinst.elements), len(oinst.nodes)))


def disp_at(fr, rep):
    if 'rigid' in rep:
        reg = odb.rootAssembly.nodeSets['RP-' + rep['rigid'].upper()]
        u = fr.fieldOutputs['U'].getSubset(region=reg).values[0].data
        r = fr.fieldOutputs['UR'].getSubset(region=reg).values[0].data
    else:
        p = rep['point']
        lab = nearest(p)                          # ODB node labels = CAE mesh labels (dependent instance)
        u = [v.data for v in fr.fieldOutputs['U'].values if v.nodeLabel == lab and v.instance is not None][0]
        r = [v.data for v in fr.fieldOutputs['UR'].values if v.nodeLabel == lab and v.instance is not None][0]
    return list(u) + list(r)


ok = True
u = disp_at(frame, M['report'])
log('Report node displacement (final frame)')
for i, name in enumerate(('ux', 'uy', 'uz', 'rx', 'ry', 'rz')):
    if abs(REF['report_disp'][i]) > 1e-6 * max(abs(x) for x in REF['report_disp'][:3]):
        ok &= compare(name, u[i], REF['report_disp'][i])
umax = max(max(abs(c) for c in v.data) for v in frame.fieldOutputs['U'].values)
ok &= compare('max |u_i| over the model [mm]', umax, REF['max_u'])

# Top surface of the top ply, material (ply) axes, element centroids
s = frame.fieldOutputs['S'].getSubset(position=CENTROID)
top = max(v.sectionPoint.number for v in s.values if v.sectionPoint is not None)
vals = [v.data for v in s.values if v.sectionPoint is not None and v.sectionPoint.number == top]
log('Top-ply top-surface stress, ply axes [MPa] (section point %%d), largest magnitude' %% top)
for c, name in ((0, 's1 (S11)'), (1, 's2 (S22)'), (3, 't12 (S12)')):
    v = max((x[c] for x in vals), key=abs)
    ok &= compare(name, v, REF['top_ply_stress'][min(c, 2)])

if an['type'] == 'displacement_control' and REF['history']:
    lpf = step.historyRegions['Assembly ASSEMBLY'].historyOutputs['LPF'].data
    rep = an['control']
    log('Load factor vs control displacement (OpenSees load factor interpolated at the Abaqus displacement)')
    h = REF['history']
    for (tlpf, lam), fr in zip(lpf[1:], step.frames[1:]):
        dctl = disp_at(fr, rep)[an.get('dof', 3) - 1]
        xs = [row[1] for row in h]
        ys = [row[0] for row in h]
        order = sorted(range(len(xs)), key=lambda i: xs[i])
        xs, ys = [xs[i] for i in order], [ys[i] for i in order]
        if xs[0] <= dctl <= xs[-1]:
            j = max(i for i in range(len(xs) - 1) if xs[i] <= dctl)
            ref = ys[j] + (ys[j + 1] - ys[j]) * (dctl - xs[j]) / (xs[j + 1] - xs[j] or 1.0)
            ok &= compare('LPF at control disp %%+.4g' %% dctl, lam, ref)

log('\nALL COMPARISONS WITHIN 3%%' if ok else '\nSOME COMPARISONS DIFFER BY MORE THAN 3%% (see CHECK lines)')
odb.close()
REPORT.close()
'''


def generate(case_path, out=None, element='S4R', reference=True):
    case = json.loads(Path(case_path).read_text())
    spec = dict(case['laminate'])
    if 'json' in spec and not Path(spec['json']).is_absolute():          # relative to the case file
        spec['json'] = str(Path(case_path).parent / spec['json'])
        case['laminate'] = spec
    lam = lp.laminate_from_spec(spec)
    mesh = sm.build_from_spec(case['geometry'])
    mesh.size = case['geometry']['size']
    model = describe_model(case, mesh, lam)
    ref = opensees_reference(case) if reference else dict(report_disp=[0.0] * 6, max_u=0.0,
                                                          top_ply_stress=[0.0] * 3, history=[])
    name = model['name']
    out = Path(out) if out else Path(case_path).parent / f'abaqus_{name}.py'
    summary = '\n'.join([
        f'Geometry: {mesh.summary()}',
        f'Section:  {lam.describe()}' + ('' if lam.kind == 'isotropic' else
                                        f', plies bottom (SNEG) to top: {"/".join(f"{a:g}" for a in lam.angles)}'),
        f'Supports: {json.dumps(case.get("supports", []))}',
        f'Loads:    {json.dumps(case.get("loads", []))}',
        f'Analysis: {json.dumps(case.get("analysis", {"type": "linear"}))}',
        'OpenSees reference: ' + ('embedded (REF)' if reference else 'NOT embedded (--no-reference)')])
    text = ABAQUS % dict(name=name, case_file=Path(case_path).name, summary=summary, script=out.name,
                         size=mesh.size, element=element, job=name.replace('-', '_')[:30],
                         model=_literal(model), ref=_literal(ref))
    out.write_text(text, encoding='utf-8')
    return out, model, ref


def _literal(obj):
    """Python 2/3 literal of plain data (floats with full precision)."""
    return json.dumps(obj, indent=1).replace('true', 'True').replace('false', 'False').replace('null', 'None')


def main():
    ap = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument('case')
    ap.add_argument('--out')
    ap.add_argument('--element', default='S4R', choices=('S4R', 'S4'))
    ap.add_argument('--no-reference', action='store_true', help='do not run OpenSees for reference values')
    a = ap.parse_args()
    out, model, ref = generate(a.case, a.out, a.element, not a.no_reference)
    print(f'wrote {out}')
    print(f'  {len(model["pieces"])} cross-section piece(s), {max(1, round(model["L"] / model["size"]))} elements along x, '
          f'{len(model["plies"])} ply/plies, {len(model["supports"])} support(s), {len(model["loads"])} load(s), '
          f'{model["analysis"]["type"]}')
    if not a.no_reference:
        print(f'  OpenSees reference: report node u = {np.round(ref["report_disp"][:3], 6).tolist()}, '
              f'max |u| = {ref["max_u"]:.5g} mm, top-ply stress (s1, s2, t12) = '
              f'{np.round(ref["top_ply_stress"], 4).tolist()} MPa')


if __name__ == '__main__':
    main()
