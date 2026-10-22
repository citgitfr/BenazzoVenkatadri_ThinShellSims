"""
Tip-loaded aluminum cantilever plate (model from flat_plate_al.py), bent about
its weak axis by a vertical (-z) load spread uniformly along the free edge.
Checks deflection and bending stress against Euler-Bernoulli beam theory and
shows the deformed plate coloured by top-surface in-plane stress.

Units: N, mm, MPa

Usage:
  python plate_tip_load.py          # solve, check, open the PyVista viewer
  python plate_tip_load.py --no-gui # solve and check only
"""
import sys
import time
import numpy as np
import openseespy.opensees as ops

import flat_plate_al as plate
from flat_plate_al import L, b, t, E, nu, nx, ny, node_tag

# --- Load ---
P = -1e-5       # total tip load in z [N], small so the response stays linear

# --- Beam theory (rectangular section, bending about the weak axis) ---
I = b * t**3 / 12


def w_beam(x, E_eff=E):
    return P * x**2 * (3 * L - x) / (6 * E_eff * I)


def sigma_top_beam(x):
    # Downward load -> hogging moment -> top surface in tension
    return -P * (L - x) * (t / 2) / I


def apply_tip_load():
    """Consistent nodal loads for a uniform line load on the free edge x = L."""
    ops.timeSeries('Linear', 1)
    ops.pattern('Plain', 1, 1)
    for j in range(ny + 1):
        w = 0.5 if j in (0, ny) else 1.0
        ops.load(node_tag(nx, j), 0, 0, P * w / ny, 0, 0, 0)


def solve():
    ops.system('UmfPack')
    ops.numberer('RCM')
    ops.constraints('Plain')
    ops.integrator('LoadControl', 1.0)
    ops.algorithm('Linear')
    ops.analysis('Static')
    assert ops.analyze(1) == 0, 'static analysis failed'
    # The Linear algorithm never re-forms element resisting forces after the
    # solve, so element stresses stay at zero until something triggers it.
    ops.reactions()


def top_surface_stresses():
    """Element-average top-surface (z = +t/2) in-plane stresses [MPa].

    ShellMITC4 'stresses' gives the section resultants at its 4 Gauss points,
    8 per point: N11 N22 N12 M11 M22 M12 Q13 Q23. Positive M puts the top
    surface in tension, so sigma_top = N/t + 6 M/t^2.
    """
    eles = ops.getEleTags()
    s = np.zeros((len(eles), 3))
    for k, ele in enumerate(eles):
        f = np.reshape(ops.eleResponse(ele, 'stresses'), (4, 8)).mean(axis=0)
        s[k] = f[:3] / t + 6 * f[3:6] / t**2
    sxx, syy, sxy = s.T
    vm = np.sqrt(sxx**2 - sxx * syy + syy**2 + 3 * sxy**2)
    return {'sigma_xx': sxx, 'sigma_yy': syy, 'tau_xy': sxy, 'von_Mises': vm}


def check(name, value, ref, tol):
    err = abs(value - ref) / abs(ref)
    status = 'PASS' if err < tol else 'FAIL'
    print(f'[{status}] {name:<30s} FE = {value:+.5g}   beam = {ref:+.5g}   err = {err:.2%}')
    return err < tol


if __name__ == '__main__':
    plate.build()
    apply_tip_load()
    t0 = time.perf_counter()
    solve()
    print(f'Solved {6 * (len(ops.getNodeTags()) - ny - 1)} DOFs in {time.perf_counter() - t0:.1f} s')
    print(f'Tip load P = {P} N, EI = {E * I:.4g} N mm^2\n')

    ok = True
    jm = ny // 2    # mid-width line, away from the free-edge/corner plate effects

    print('Deflection w along the mid-width line [mm]')
    for x in (L / 4, L / 2, 3 * L / 4, L):
        ok &= check(f'w(x = {x:.0f} mm)', ops.nodeDisp(node_tag(round(x), jm), 3), w_beam(x), 0.03)
    w_tip = np.mean([ops.nodeDisp(node_tag(nx, j), 3) for j in range(ny + 1)])
    print(f'  wide-plate bound E/(1-nu^2): w_tip = {w_beam(L, E / (1 - nu**2)):+.5g} mm, '
          f'FE edge-average = {w_tip:+.5g} mm')

    t0 = time.perf_counter()
    stress = top_surface_stresses()
    print(f'\nTop-surface bending stress sigma_xx along the mid-width line [MPa] '
          f'({time.perf_counter() - t0:.1f} s to recover)')
    for x in (L / 4, L / 2, 3 * L / 4):
        ele = jm * nx + round(x) + 1    # element just past x on the mid-width row
        ok &= check(f'sigma_xx(x = {x:.0f} mm)', stress['sigma_xx'][ele - 1],
                    sigma_top_beam(x + 0.5), 0.03)
    print(f'  max |sigma_xx| = {np.abs(stress["sigma_xx"]).max():.4g} MPa at the root '
          f'(beam: {sigma_top_beam(0):.4g} MPa; the clamp restrains anticlastic curvature)')

    print('\nALL CHECKS PASSED' if ok else '\nSOME CHECKS FAILED')

    if '--no-gui' not in sys.argv:
        import shell_viewer
        shell_viewer.show_deformed(
            stress, field='sigma_xx', target_tip=0.1 * L,
            title=f'Al cantilever plate, tip load P = {abs(P):g} N (-z)',
            scalar_label='Top-surface sigma_xx [MPa]')
