"""
Abaqus/CAE version of plate_tip_load_laminate.py: [0_2/90_2]_s CFRP cantilever
plate (1000 x 100 mm, h = 8 mm) clamped at x = 0, total tip load P = 5 N (-z)
spread uniformly along the free edge x = L. Linear static (NLGEOM off), S4R
composite shells. Prints the tip deflection and top-surface sigma_xx and checks
them against laminate beam theory, like the OpenSeesPy script.

Units: N, mm, MPa.

Usage (Abaqus command line, in an empty working folder):
  abaqus cae noGUI=abaqus_tip_load_laminate.py              # 10 mm mesh
  abaqus cae noGUI=abaqus_tip_load_laminate.py -- 5         # element size [mm]
  abaqus cae noGUI=abaqus_tip_load_laminate.py -- 5 S4      # and element type
Or File > Run Script in Abaqus/CAE (10 mm, S4R).
"""
import sys

from abaqus import mdb
from abaqusConstants import (ANALYSIS, AXIS_3, CENTROID, DEFAULT, DEFORMABLE_BODY,
                             DOUBLE_PRECISION, FROM_SECTION, GENERAL, GLOBAL, GRADIENT,
                             LAMINA, MIDDLE_SURFACE, NO_IDEALIZATION, OFF, ON, PERCENTAGE,
                             QUAD, ROTATION_NONE, S4, S4R, SIMPSON, SINGLE, STACK_3,
                             STANDARD, THREE_D, UNIFORM, UNSET)
import mesh
import regionToolset
import section
from odbAccess import openOdb

# --- Inputs (same as plate_tip_load_laminate.py) ---
L, b = 1000.0, 100.0                     # length along x, width along y [mm]
P = -5.0                                 # total tip load in z [N]
E1, E2, NU12, G12 = 80000.0, 2000.0, 0.25, 1000.0   # MPa (G12 = 1 GPa placeholder)
NU23 = NU12                              # not given: nu23 = nu12 assumed
G13, G23 = G12, E2 / (2 * (1 + NU23))    # transverse isotropy: 1000, 800 MPa
PLIES = [0, 0, 90, 90, 90, 90, 0, 0]     # bottom (-z) to top (+z), [deg] from x
T_PLY = 1.0                              # ply thickness [mm]
N_INT = 3                                # Simpson points per ply

args = [a for a in sys.argv[sys.argv.index('--') + 1:]] if '--' in sys.argv else []
SIZE = float(args[0]) if args else 10.0
ELEM = args[1].upper() if len(args) > 1 else 'S4R'
ELEM_CODES = {'S4R': S4R, 'S4': S4}
JOB = ('TipLoadLaminate_%s_%gmm' % (ELEM, SIZE)).replace('.', 'p')
REPORT = open(JOB + '_results.txt', 'w')


def log(text=''):
    # 'abaqus cae noGUI' does not always show print(), so write to the
    # console stream and to a results file
    sys.__stdout__.write(text + '\n')
    sys.__stdout__.flush()
    REPORT.write(text + '\n')


# --- Laminate beam theory (as in plate_tip_load_laminate.py) ---
H = T_PLY * len(PLIES)
D = [[3.00202e6, 21366.7], [21366.7, 502118.0]]          # D11 D12 / D12 D22 [N mm]
det = D[0][0] * D[1][1] - D[0][1] ** 2
d11, d12 = D[1][1] / det, -D[0][1] / det                 # D^-1 terms
EI = b / d11                                             # free anticlastic (My = 0)
Q11 = E1 / (1 - NU12 ** 2 * E2 / E1)
Q12 = NU12 * E2 / (1 - NU12 ** 2 * E2 / E1)
K_SHEAR = 5.0 / 6.0


def w_beam(x):
    return P * x ** 2 * (3 * L - x) / (6 * EI)


def w_shear(x):
    return P * x / (K_SHEAR * G13 * b * H)


def sigma_top_beam(x):
    # Downward load -> hogging moment -> top surface (0 deg ply) in tension
    m = -P * (L - x) / b                                 # moment per width [N mm/mm]
    return (Q11 * d11 + Q12 * d12) * m * H / 2


def check(name, value, ref, tol):
    err = abs(value - ref) / abs(ref)
    status = 'PASS' if err < tol else 'FAIL'
    log('[%s] %-30s FE = %+.5g   beam = %+.5g   err = %.2f%%' % (status, name, value, ref, 100 * err))
    return err < tol


# --- Model ---
model = mdb.Model(name='CantileverLaminate')
if 'Model-1' in mdb.models.keys():
    del mdb.models['Model-1']

sketch = model.ConstrainedSketch(name='plate', sheetSize=2 * L)
sketch.rectangle(point1=(0.0, 0.0), point2=(L, b))
part = model.Part(name='Plate', dimensionality=THREE_D, type=DEFORMABLE_BODY)
part.BaseShell(sketch=sketch)                             # plate in the xy plane, normal +z

mat = model.Material(name='CFRP')
mat.Elastic(type=LAMINA, table=((E1, E2, NU12, G12, G13, G23),))

layup = tuple(section.SectionLayer(material='CFRP', thickness=T_PLY, orientAngle=float(a),
                                numIntPts=N_INT, plyName='ply%d_%d' % (k + 1, a))
              for k, a in enumerate(PLIES))               # first layer = bottom (SNEG side)
model.CompositeShellSection(name='Laminate', preIntegrate=OFF, idealization=NO_IDEALIZATION,
                            symmetric=False, thicknessType=UNIFORM, poissonDefinition=DEFAULT,
                            temperature=GRADIENT, integrationRule=SIMPSON, layup=layup)
region = regionToolset.Region(faces=part.faces)
part.SectionAssignment(region=region, sectionName='Laminate', offsetType=MIDDLE_SURFACE,
                       thicknessAssignment=FROM_SECTION)
# Ply angles measured from global x, about the shell normal (+z)
part.MaterialOrientation(region=region, orientationType=GLOBAL, axis=AXIS_3,
                         additionalRotationType=ROTATION_NONE, localCsys=None,
                         stackDirection=STACK_3)

part.seedPart(size=SIZE, deviationFactor=0.1, minSizeFactor=0.1)
part.setMeshControls(regions=part.faces, elemShape=QUAD)
part.setElementType(regions=region, elemTypes=(mesh.ElemType(elemCode=ELEM_CODES[ELEM],
                                                              elemLibrary=STANDARD),))
part.generateMesh()

asm = model.rootAssembly
inst = asm.Instance(name='Plate-1', part=part, dependent=ON)

model.StaticStep(name='TipLoad', previous='Initial', nlgeom=OFF)

root = inst.edges.findAt(((0.0, b / 2, 0.0),))
tip = inst.edges.findAt(((L, b / 2, 0.0),))
model.EncastreBC(name='Clamp', createStepName='Initial', region=regionToolset.Region(edges=root))
# Uniform line load P/b [N/mm] along the tip edge, fixed global -z direction
model.ShellEdgeLoad(name='TipLoad', createStepName='TipLoad',
                    region=regionToolset.Region(side1Edges=tip),
                    magnitude=abs(P) / b, distributionType=UNIFORM, traction=GENERAL,
                    directionVector=((0.0, 0.0, 0.0), (0.0, 0.0, P / abs(P))),
                    follower=OFF, amplitude=UNSET)

model.fieldOutputRequests['F-Output-1'].setValues(variables=('S', 'SF', 'SM', 'U', 'UR', 'RF'))

job = mdb.Job(name=JOB, model=model.name, type=ANALYSIS, precision=DOUBLE_PRECISION,
              nodalOutputPrecision=SINGLE, memoryUnits=PERCENTAGE, memory=90)
job.submit(consistencyChecking=OFF)
job.waitForCompletion()
mdb.saveAs(pathName=JOB + '.cae')

# --- Results ---
odb = openOdb(JOB + '.odb', readOnly=True)
frame = odb.steps['TipLoad'].frames[-1]
oinst = odb.rootAssembly.instances['PLATE-1']
coords = dict((n.label, n.coordinates) for n in oinst.nodes)
uz = dict((v.nodeLabel, v.data[2]) for v in frame.fieldOutputs['U'].values)
tol = 1e-6 * SIZE

log('\n=== %s, %g mm mesh: %d elements, %d nodes' % (ELEM, SIZE, len(oinst.elements), len(coords)))
log('EI = b/d11 = %.6g N mm^2, P = %g N' % (EI, P))
ok = True
log('Deflection w along the mid-width line [mm]')
for x in (L / 4, L / 2, 3 * L / 4, L):
    n = min(coords, key=lambda k: abs(coords[k][0] - x) + abs(coords[k][1] - b / 2))
    ok &= check('w(x = %.0f mm)' % x, uz[n], w_beam(coords[n][0]), 0.03)
tip_nodes = [k for k in coords if abs(coords[k][0] - L) < tol]
n_mid = min(tip_nodes, key=lambda k: abs(coords[k][1] - b / 2))
w_avg = sum(uz[k] for k in tip_nodes) / len(tip_nodes)
for name, w in (('mid-width', uz[n_mid]), ('edge-average', w_avg)):
    log('  tip %-12s %+.5f mm (%+.3f%% vs b/d11 %+.4f, %+.3f%% vs b/d11 + shear %+.4f)'
          % (name, w, 100 * (w / w_beam(L) - 1), w_beam(L),
             100 * (w / (w_beam(L) + w_shear(L)) - 1), w_beam(L) + w_shear(L)))

# Top-surface sigma_xx: S11 at the top section point of the top (0 deg) ply,
# in its material axes = global x. Element centroids along the mid-width row.
s = frame.fieldOutputs['S'].getSubset(position=CENTROID)
top_sp = max(v.sectionPoint.number for v in s.values if v.sectionPoint is not None)
s11 = dict((v.elementLabel, v.data[0]) for v in s.values
           if v.sectionPoint is not None and v.sectionPoint.number == top_sp)
centroid = {}
for e in oinst.elements:
    xs = [coords[n] for n in e.connectivity]
    centroid[e.label] = (sum(c[0] for c in xs) / len(xs), sum(c[1] for c in xs) / len(xs))
log('Top-surface sigma_xx along the mid-width line [MPa] (section point %d)' % top_sp)
for x in (L / 4, L / 2, 3 * L / 4):
    e = min(s11, key=lambda k: abs(centroid[k][0] - (x + SIZE / 2)) + abs(centroid[k][1] - b / 2))
    ok &= check('sigma_xx(x = %.0f mm)' % x, s11[e], sigma_top_beam(centroid[e][0]), 0.03)
e_max = max(s11, key=lambda k: abs(s11[k]))
log('  max |sigma_xx| = %.4g MPa at x = %.1f mm (beam at that centroid: %.4g MPa)'
      % (s11[e_max], centroid[e_max][0], sigma_top_beam(centroid[e_max][0])))

log('\nALL CHECKS PASSED' if ok else '\nSOME CHECKS FAILED')
odb.close()
REPORT.close()
