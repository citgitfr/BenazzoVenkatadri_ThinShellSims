"""
Shell-element smoke test: 1 m flat strip (30 mm wide x 0.1 mm thick) meshed
with ShellMITC4, checked against Euler-Bernoulli beam theory.

Units: N, mm, MPa, tonne (so density is in t/mm^3)
Checks:
  1. Static tip deflection, homogeneous ElasticMembranePlateSection
  2. Same, with LayeredShell (identical isotropic plies). LayeredShell uses one
     integration point per layer (mid-layer), so n equal layers give a bending
     stiffness of (1 - 1/n^2) x exact: 4 layers -> 6.25% too soft. We check that
     factor and that 20 layers converge to the homogeneous answer.
  3. First bending natural frequency
"""
import math
import openseespy.opensees as ops

# --- Geometry ---
L = 1000.0      # strip length [mm]
b = 30.0        # strip width [mm]
t = 0.1         # strip thickness [mm]
nx, ny = 100, 3 # elements along length / width (10 mm square elements)

# --- Material (steel) ---
E = 200_000.0   # Young's modulus [MPa]
nu = 0.3
rho = 7.85e-9   # density [t/mm^3]

# --- Load ---
P = 1e-5        # total tip load [N], small so the response stays linear

# --- Reference solutions (beam theory) ---
I = b * t**3 / 12
delta_ref = P * L**3 / (3 * E * I)
f1_ref = 1.875104**2 / (2 * math.pi * L**2) * math.sqrt(E * I / (rho * b * t))


def node_tag(i, j):
    return j * (nx + 1) + i + 1


def build(section='membrane_plate', n_layers=4):
    """Build the cantilevered strip. Fixed edge at x = 0, free edge at x = L."""
    ops.wipe()
    ops.model('basic', '-ndm', 3, '-ndf', 6)

    for j in range(ny + 1):
        for i in range(nx + 1):
            ops.node(node_tag(i, j), i * L / nx, j * b / ny, 0.0)
            if i == 0:
                ops.fix(node_tag(i, j), 1, 1, 1, 1, 1, 1)

    if section == 'membrane_plate':
        ops.section('ElasticMembranePlateSection', 1, E, nu, t, rho)
    elif section == 'layered':
        ops.nDMaterial('ElasticIsotropic', 1, E, nu, rho)
        ops.nDMaterial('PlateFiber', 2, 1)
        layers = [2, t / n_layers] * n_layers
        ops.section('LayeredShell', 1, n_layers, *layers)
    else:
        raise ValueError(section)

    ele = 1
    for j in range(ny):
        for i in range(nx):
            ops.element('ShellMITC4', ele,
                        node_tag(i, j), node_tag(i + 1, j),
                        node_tag(i + 1, j + 1), node_tag(i, j + 1), 1)
            ele += 1


def tip_deflection():
    """Apply P as a uniform line load on the free edge; return mean tip w."""
    ops.timeSeries('Linear', 1)
    ops.pattern('Plain', 1, 1)
    weights = [0.5 if j in (0, ny) else 1.0 for j in range(ny + 1)]
    for j, w in enumerate(weights):
        ops.load(node_tag(nx, j), 0, 0, P * w / ny, 0, 0, 0)

    ops.system('UmfPack')
    ops.numberer('RCM')
    ops.constraints('Plain')
    ops.integrator('LoadControl', 1.0)
    ops.algorithm('Linear')
    ops.analysis('Static')
    assert ops.analyze(1) == 0, 'static analysis failed'
    return sum(ops.nodeDisp(node_tag(nx, j), 3) for j in range(ny + 1)) / (ny + 1)


def first_frequency():
    lam = ops.eigen(1)[0]
    return math.sqrt(lam) / (2 * math.pi)


def check(name, value, ref, tol):
    err = abs(value - ref) / ref
    status = 'PASS' if err < tol else 'FAIL'
    print(f'[{status}] {name:<34s} FE = {value:.5g}   ref = {ref:.5g}   err = {err:.2%}')
    return err < tol


if __name__ == '__main__':
    print(f'OpenSees {ops.version()} | ShellMITC4, {nx}x{ny} mesh\n')
    ok = True

    build('membrane_plate')
    d_hom = tip_deflection()
    ok &= check('Tip deflection, homogeneous [mm]', d_hom, delta_ref, 0.03)

    build('layered', n_layers=4)
    ok &= check('Tip deflection, 4-layer shell [mm]', tip_deflection(),
                d_hom / (1 - 1 / 4**2), 1e-3)

    build('layered', n_layers=20)
    ok &= check('Tip deflection, 20-layer shell [mm]', tip_deflection(), d_hom, 0.005)

    build('membrane_plate')
    ok &= check('First frequency [Hz]', first_frequency(), f1_ref, 0.03)

    print('\nALL CHECKS PASSED' if ok else '\nSOME CHECKS FAILED')
    raise SystemExit(0 if ok else 1)
