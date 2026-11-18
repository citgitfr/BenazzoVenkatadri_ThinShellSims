"""Geometrically nonlinear twist of the R001 aluminum TRAC boom (OpenSeesPy, skills API).

  python trac_nonlinear_twist.py <size_mm> [T_max=2] [n_steps=40]

Same model as R001_Al_torsion_edge_<size>mm.json (E 69000, nu 0.33, t 0.1, web doubled,
L 1000, root clamped), but ASDShellQ4 -corotational and load control of a torque about
global x spread on the tip edge (fixed direction; a torque about the boom axis stays about
the boom axis), from 0 to T_max N mm in n_steps. Tip edge free to warp.

Tip twist per step = exact 2D rotation (Procrustes) of the deformed tip section vs the
undeformed one, about its own centroid (valid for any rotation, not only small ones).
Writes results/R001_Al_torsion_nl_<size>mm.npz (shell-bc-load results format; history
rows [T, phi_tip, iterations]) and R001_Al_torsion_nl_<size>mm_history.csv.
"""
import math
import sys
import time
from pathlib import Path

import numpy as np

HERE = Path(__file__).resolve().parent
SK = HERE.parents[2] / '.claude' / 'skills'
for d in ('laminate-properties', 'shell-mesh', 'shell-bc-load'):
    sys.path.insert(0, str(SK / d))
import laminate_properties as lp   # noqa: E402
import shell_mesh as sm            # noqa: E402
import shell_bc_load as bc         # noqa: E402
import openseespy.opensees as ops  # noqa: E402

size = float(sys.argv[1]) if len(sys.argv) > 1 else 2.5
T_max = float(sys.argv[2]) if len(sys.argv) > 2 else 2.0
n_steps = int(sys.argv[3]) if len(sys.argv) > 3 else 40
RIGID = '--edge' not in sys.argv
ROTCTL = RIGID and '--rotctl' in sys.argv     # default: torque on a corotational rigid end (shell-buckling)
tag = f'{size:g}'.replace('.', 'p')
name = f'R001_Al_torsion_nl_{"rigid" if RIGID else "edge"}{"_rotctl" if ROTCTL else ""}_{tag}mm'
L = 1000.0

if '--energy' in sys.argv:
    # Newton with RelativeNormDispIncr needs ever more iterations as the twist grows (inexact
    # tangent of the corotational shells under twist); EnergyIncr with more iterations
    # converges at full steps. The residual is the complete nonlinear one, so converged
    # points are valid; only the cost grows.
    _setup = bc.static_setup

    def _energy_setup(tol=1e-6, max_iter=40):
        _setup(tol, max_iter)
        ops.test('EnergyIncr', 1e-14, 250)
    bc.static_setup = _energy_setup

case = {'name': name,
        'laminate': {'isotropic': {'E': 69000.0, 'nu': 0.33, 't': 0.1, 'rho': 2.7e-9}},
        'geometry': {'L': L, 'section': {'type': 'boom', 'id': 'R001'}, 'size': size},
        'element': {'type': 'ASDShellQ4', 'corotational': True},
        'supports': [{'edge': 'x0', 'dofs': [1, 1, 1, 1, 1, 1]}],
        'loads': [{'edge': 'xL', 'force': [0, 0, 0], 'moment': [T_max, 0, 0]}],
        'analysis': {'type': 'load_control', 'n_steps': n_steps, 'max_load_factor': 1.0}}

lam = lp.laminate_from_spec(case['laminate'])
mesh = sm.build_from_spec(case['geometry'])
sm.build_model(mesh, lam, 'ASDShellQ4', corotational=True)
bc.apply_supports(mesh, case['supports'])
if RIGID:
    sys.path.insert(0, str(SK / 'shell-buckling'))
    import shell_buckling as sb    # noqa: E402
    master = sb.rigid_end(mesh, 'xL', 69000.0, 0.1)   # corotational spokes: large rotations, tip warping restrained
    bc.point_load(master, (0, 0, 0), (1.0 if ROTCTL else T_max, 0, 0))
else:
    bc.apply_loads(mesh, case['loads'])
tip = mesh.edge_nodes('xL')
X0 = np.array([ops.nodeCoord(n)[1:3] for n in tip])
X0c = X0 - X0.mean(0)


def tip_twist():
    u = np.array([ops.nodeDisp(n)[1:3] for n in tip])
    Y = X0 + u
    Yc = Y - Y.mean(0)
    cross = np.sum(X0c[:, 0] * Yc[:, 1] - X0c[:, 1] * Yc[:, 0])
    dot = np.sum(X0c * Yc)
    phi_tip = math.atan2(cross, dot)
    print(f'    tip twist {phi_tip:.5f} rad, torque {ops.getLoadFactor(1) * (1.0 if ROTCTL else T_max):.5f} N mm '
          f'({time.strftime("%H:%M:%S")})', flush=True)
    return [phi_tip]


print(f'{mesh.summary()}; corotational ASDShellQ4; T 0 -> {T_max} N mm in {n_steps} steps', flush=True)
t0 = time.perf_counter()
if ROTCTL:
    # rotation control of the rigid-end master node about x: T_max is then the target tip
    # rotation [rad]; the load factor is the torque (reference torque 1 N mm)
    hist = bc.displacement_control(master, 4, T_max / n_steps, n_steps, record=tip_twist, tol=1e-6)
else:
    hist = bc.load_control(n_steps, 1.0, record=tip_twist, tol=1e-6)
    hist[:, 0] *= T_max
print(f'solved in {time.perf_counter() - t0:.0f} s; reached T = {hist[-1, 0]:.4g} N mm, '
      f'phi_tip = {hist[-1, 1]:.5f} rad', flush=True)
i1 = np.argmin(abs(hist[:, 0] - 1.0))
print(f'at T = {hist[i1, 0]:.4g} N mm: phi_tip = {hist[i1, 1]:.5f} rad')
res = bc.collect_results(mesh, hist, title=name, case=case)
bc.save_results(HERE / 'results' / f'{name}.npz', res)
np.savetxt(HERE / f'{name}_history.csv', hist, delimiter=',', header='T_Nmm,phi_tip_rad,iterations',
           comments='')
print('saved', HERE / 'results' / f'{name}.npz')
