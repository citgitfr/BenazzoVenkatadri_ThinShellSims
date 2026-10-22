"""
Large-deflection bending of the aluminum cantilever plate (flat_plate_al.py):
vertical (-z) tip load ramped up to alpha = P L^2 / EI = alpha_max, solved with
geometrically nonlinear corotational shells (ASDShellQ4 -corotational) and
compared with the elastica (elastica.py) and with linear beam theory.

The elastica is evaluated twice: with the beam stiffness EI (free anticlastic
curvature) and with the wide-plate stiffness EI/(1 - nu^2) (anticlastic
curvature suppressed). Which one applies depends on the Searle parameter
b^2/(R t): ~1 or less behaves as a beam, >> 1 as a wide plate. For this plate
b^2/t = 1e5 mm, so as soon as R < ~10 m the plate stiffens toward EI/(1-nu^2).

Units: N, mm, MPa

Usage:
  python plate_large_deflection.py [--size 5] [--alpha-max 7] [--element ASDShellQ4-corot] [--no-gui]

Cost: each Newton iteration re-assembles and factors the full stiffness, about
35 us per DOF on the 2-core project VM: ~4 min for the 10 mm mesh, ~15-20 min
for 5 mm. The 1 mm mesh would take hours; the linear case (plate_tip_load.py)
shows 5 mm and 1 mm give the same small-load deflection.
"""
import argparse
import time
from pathlib import Path

import numpy as np
import openseespy.opensees as ops

import elastica
import flat_plate_al as plate
from flat_plate_al import L, b, t, E, nu

I = b * t**3 / 12
EI = E * I
ALPHA_REPORT = [0.5, 1.0, 2.0, 3.0, 5.0, 7.5, 10.0]


def apply_tip_load(P):
    """Consistent nodal loads for a uniform line load on the free edge x = L."""
    ops.timeSeries('Linear', 1)
    ops.pattern('Plain', 1, 1)
    for j in range(plate.ny + 1):
        w = 0.5 if j in (0, plate.ny) else 1.0
        ops.load(plate.node_tag(plate.nx, j), 0, 0, P * w / plate.ny, 0, 0, 0)


def ramp(alpha_max, dv=0.02, max_cuts=6):
    """Displacement control on the mid-width tip node's vertical DOF, in steps
    of dv*L (halved on non-convergence), until the load reaches alpha_max.
    Load control stalls at large rotations; this does not. The reference load
    is P = EI/L^2, so the load factor is alpha."""
    ops.system('UmfPack')
    ops.numberer('RCM')
    ops.constraints('Plain')
    ops.test('RelativeNormDispIncr', 1e-6, 40)
    ops.algorithm('Newton')

    tip = plate.node_tag(plate.nx, plate.ny // 2)
    history = [(0.0, 0.0, 0.0, 0)]
    while history[-1][0] < alpha_max:
        step = dv
        for cut in range(max_cuts + 1):
            ops.integrator('DisplacementControl', tip, 3, -step * L)
            ops.analysis('Static')
            if ops.analyze(1) == 0:
                break
            step /= 2
        else:
            print(f'  did not converge beyond alpha = {history[-1][0]:.3f}')
            break
        history.append((ops.getLoadFactor(1), -ops.nodeDisp(tip, 3) / L,
                        -ops.nodeDisp(tip, 1) / L, ops.testIter()))
        print(f'  alpha = {history[-1][0]:6.3f}: v/L = {history[-1][1]:.4f}, '
              f'h/L = {history[-1][2]:.4f} ({history[-1][3]} iterations)', flush=True)
    return np.array(history)


def midspan_stress_check(P):
    """Top-surface sigma_xx at the mid-width element nearest s = L/2, against
    statics on the FE deformed shape: M = P (x_tip - x), sigma = M (t/2) / I.
    Statics holds whatever the stiffness, so this checks stress recovery."""
    ops.reactions()
    jm, im = plate.ny // 2, plate.nx // 2
    ele = jm * plate.nx + im + 1
    f = np.reshape(ops.eleResponse(ele, 'stresses'), (4, 8)).mean(axis=0)
    sigma_fe = f[0] / t + 6 * f[3] / t**2
    x_deformed = lambda i: ops.nodeCoord(plate.node_tag(i, jm), 1) + ops.nodeDisp(plate.node_tag(i, jm), 1)
    x_mid = 0.5 * (x_deformed(im) + x_deformed(im + 1))
    sigma_statics = -P * (x_deformed(plate.nx) - x_mid) * (t / 2) / I
    return sigma_fe, sigma_statics


def plot_curves(history, path, label):
    import matplotlib
    matplotlib.use('Agg')
    import matplotlib.pyplot as plt

    a = np.linspace(0, history[-1, 0], 60)[1:]
    beam = np.array([elastica.tip(x)[:2] for x in a])
    wide = np.array([elastica.tip(x * (1 - nu**2))[:2] for x in a])

    fig, ax = plt.subplots(figsize=(8, 5.5))
    ax.plot(a, a / 3, ':', color='gray', label='Linear beam theory, $PL^3/3EI$')
    ax.plot(a, beam[:, 0], '-', color='C0', label='Elastica, beam $EI$: vertical')
    ax.plot(a, beam[:, 1], '--', color='C0', label='Elastica, beam $EI$: horizontal')
    ax.plot(a, wide[:, 0], '-', color='C1', label=r'Elastica, wide plate $EI/(1-\nu^2)$: vertical')
    ax.plot(a, wide[:, 1], '--', color='C1', label=r'Elastica, wide plate $EI/(1-\nu^2)$: horizontal')
    ax.plot(history[1:, 0], history[1:, 1], 'o', ms=4, color='k', label=f'{label}: vertical')
    ax.plot(history[1:, 0], history[1:, 2], 's', ms=4, mfc='none', color='k',
            label=f'{label}: horizontal')
    ax.set_xlabel(r'Load parameter $\alpha = PL^2/EI$')
    ax.set_ylabel('Tip displacement / L')
    ax.set_ylim(0, 1.0)
    ax.grid(alpha=0.3)
    ax.legend(fontsize=8, loc='upper left')
    ax.set_title(f'Al cantilever plate {L:.0f} x {b:.0f} x {t} mm, large-deflection tip load')
    fig.tight_layout()
    fig.savefig(path, dpi=130)


if __name__ == '__main__':
    parser = argparse.ArgumentParser()
    parser.add_argument('--size', type=float, default=5.0, help='element size [mm]')
    # Beyond alpha ~ 7.5 (v/L ~ 0.76) Newton stalls under displacement control
    parser.add_argument('--alpha-max', type=float, default=7.0)
    parser.add_argument('--element', default='ASDShellQ4-corot', choices=plate.ELEMENTS)
    parser.add_argument('--no-gui', action='store_true')
    args = parser.parse_args()

    plate.build(args.element, size=args.size)
    P_ref = -EI / L**2
    apply_tip_load(P_ref)
    print(f'{args.element}, {plate.nx} x {plate.ny} mesh ({args.size:g} mm), '
          f'P = alpha x {abs(P_ref):.4g} N, up to alpha = {args.alpha_max:g}')

    t0 = time.perf_counter()
    history = ramp(args.alpha_max)
    print(f'Solved in {time.perf_counter() - t0:.0f} s, {len(history) - 1} steps, '
          f'{int(history[:, 3].sum())} Newton iterations\n')

    print(f'{"alpha":>6s} | {"v/L FE":>7s} {"beam":>7s} {"plate":>7s} {"err":>6s} | '
          f'{"h/L FE":>7s} {"beam":>7s} {"plate":>7s} {"err":>6s} | {"linear":>6s}')
    for alpha in ALPHA_REPORT:
        if alpha > history[-1, 0]:
            continue
        v, hz = (np.interp(alpha, history[:, 0], history[:, k]) for k in (1, 2))
        vb, hb, _ = elastica.tip(alpha)
        vp, hp, _ = elastica.tip(alpha * (1 - nu**2))
        print(f'{alpha:6.2f} | {v:7.4f} {vb:7.4f} {vp:7.4f} {(v - vp) / vp:+6.1%} | '
              f'{hz:7.4f} {hb:7.4f} {hp:7.4f} {(hz - hp) / hp:+6.1%} | {alpha / 3:6.3f}')
    print('(FE interpolated between steps; err = FE vs wide-plate elastica)')

    P_final = P_ref * history[-1, 0]
    s_fe, s_st = midspan_stress_check(P_final)
    print(f'\nMid-span top-surface sigma_xx at alpha = {history[-1, 0]:g}: FE = {s_fe:.5g} MPa, '
          f'statics on deformed shape = {s_st:.5g} MPa ({(s_fe - s_st) / s_st:+.2%})')

    tag = f'{args.element}_{args.size:g}mm'
    out = Path(__file__).with_name('results')
    out.mkdir(exist_ok=True)
    np.savetxt(out / f'large_deflection_{tag}.csv', history, delimiter=',',
               header='alpha,v_over_L,h_over_L,newton_iters', comments='')
    plot_curves(history, out / f'large_deflection_{tag}.png', f'FE {args.element} ({args.size:g} mm)')
    print(f'Saved results/large_deflection_{tag}.csv and .png')

    if not args.no_gui:
        import plate_tip_load
        import shell_viewer
        shell_viewer.show_deformed(
            plate_tip_load.top_surface_stresses(), field='sigma_xx', scale=1.0,
            title=f'Al cantilever plate, alpha = {history[-1, 0]:g} '
                  f'(P = {abs(P_final):.3g} N), true scale',
            scalar_label='Top-surface sigma_xx [MPa]')
