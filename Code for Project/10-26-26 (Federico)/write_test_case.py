"""
Write the large-deflection cantilever plate run (10-22-26 (Federico),
plate_large_deflection.py, 5 mm mesh) to a plain-text test case with
everything needed to check it analytically: geometry, material, supports,
load direction and magnitude, and the FE results at every load step.

Usage:
  python write_test_case.py   # -> <repo>/test_cases/large_deflection_cantilever_plate.txt
"""
import sys
from pathlib import Path

import numpy as np

HERE = Path(__file__).parent
SRC = HERE.parent / '10-22-26 (Federico)'
sys.path.insert(0, str(SRC))
import elastica                                                    # noqa: E402

L, b, t = 1000.0, 100.0, 0.1         # mm
E, nu, rho = 69_000.0, 0.33, 2.70e-9  # MPa, -, t/mm^3
I = b * t**3 / 12
EI = E * I
SIZE = 5.0
CSV = SRC / 'results' / 'large_deflection_ASDShellQ4-corot_5mm.csv'
OUT = HERE.parent.parent / 'test_cases' / 'large_deflection_cantilever_plate.txt'


def main():
    hist = np.loadtxt(CSV, delimiter=',', skiprows=1)
    lines = f"""\
TEST CASE: Large-deflection bending of a clamped aluminum plate under a tip load
Run: 10/22/26 (Federico), OpenSeesPy 3.8.0
Script: Code for Project/10-22-26 (Federico)/plate_large_deflection.py --size 5
Units: N, mm, MPa

GEOMETRY
  Flat rectangular plate, initially in the global x-y plane (z = 0)
  Length  L = {L:g} mm   (along x, from x = 0 to x = L)
  Width   b = {b:g} mm    (along y, from y = 0 to y = b)
  Thickness t = {t:g} mm
  Second moment of area for bending about the weak axis:
    I = b t^3 / 12 = {I:.6g} mm^4

MATERIAL (aluminum 6061-T6, linear elastic, isotropic)
  Young's modulus  E  = {E:g} MPa
  Poisson's ratio  nu = {nu:g}
  Density          rho = {rho:g} t/mm^3 (not used: static analysis, no gravity)
  Bending stiffness, beam:        EI           = {EI:.6g} N mm^2
  Bending stiffness, wide plate:  EI/(1-nu^2)  = {EI / (1 - nu**2):.6g} N mm^2

BOUNDARY CONDITIONS
  Edge x = 0 clamped: all 6 DOFs (ux uy uz rx ry rz) fixed at all 21 nodes
  All other edges free

LOAD
  Direction: -z (vertically downward), fixed in space (does NOT follow the
             plate as it rotates)
  Location:  free edge x = L, spread uniformly along the width as a line load
             of P/b, applied as consistent nodal loads (21 nodes; the two
             corner nodes carry half the share of the others)
  Magnitude: total P = alpha * EI / L^2, with EI = {EI:.6g} N mm^2, so
             P = alpha * {EI / L**2:.6g} N. Listed for every step below.

MODEL
  Elements: ASDShellQ4 with -corotational (geometrically nonlinear: large
            displacements and rotations, small strains)
  Section:  ElasticMembranePlateSection (E, nu, t above)
  Mesh:     {round(L / SIZE)} x {round(b / SIZE)} = {round(L / SIZE) * round(b / SIZE)} elements of {SIZE:g} x {SIZE:g} mm, {(round(L / SIZE) + 1) * (round(b / SIZE) + 1)} nodes
  Solution: static, Newton-Raphson, displacement control on the vertical
            displacement of the monitored node in steps of 0.02 L (halved near
            the end); convergence: relative displacement increment < 1e-6
  Mesh convergence: a 10 mm mesh gives the same tip displacements within 0.1%

RESULTS (monitored node: free edge, mid-width, initial position x = L, y = b/2, z = 0)
  v = vertical tip deflection, positive downward (= -uz)
  h = horizontal tip pull-back toward the clamp, positive toward x = 0 (= -ux)
  alpha = P L^2 / EI

 step    alpha       P [N]      v [mm]      h [mm]      v/L       h/L
"""
    rows = []
    for k, (alpha, v, h, _) in enumerate(hist):
        rows.append(f'{k:5d} {alpha:8.4f} {alpha * EI / L**2:12.5e} {v * L:10.3f} {h * L:10.3f} '
                    f'{v:9.5f} {h:9.5f}')

    ref = ['',
           'REFERENCE VALUES (for convenience; computed with elastica.py, see SUMMARY.md)',
           '  Elastica: inextensible cantilever, vertical tip load of fixed direction,',
           '  EI theta\'\' = -P cos(theta), theta(0) = 0, theta\'(L) = 0.',
           '  Evaluated at the FE load levels with the beam stiffness EI and with the',
           '  wide-plate stiffness EI/(1-nu^2) (anticlastic curvature suppressed).',
           '',
           '  alpha   v/L FE   v/L beam  v/L plate   h/L FE   h/L beam  h/L plate   linear v/L = alpha/3']
    for alpha in (0.5, 1.0, 2.0, 3.0, 5.0):
        v, h = (np.interp(alpha, hist[:, 0], hist[:, k]) for k in (1, 2))
        vb, hb, _ = elastica.tip(alpha)
        vp, hp, _ = elastica.tip(alpha * (1 - nu**2))
        ref.append(f'  {alpha:5.2f}  {v:7.4f}   {vb:7.4f}   {vp:7.4f}    {h:7.4f}   {hb:7.4f}   {hp:7.4f}   {alpha / 3:7.4f}')
    ref.append('  (FE values interpolated linearly between load steps)')

    OUT.parent.mkdir(exist_ok=True)
    OUT.write_text(lines + '\n'.join(rows) + '\n' + '\n'.join(ref) + '\n', encoding='utf-8')
    print(f'Wrote {OUT}')


if __name__ == '__main__':
    main()
