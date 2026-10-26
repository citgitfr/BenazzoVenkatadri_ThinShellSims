"""
Regression tests for the v2.0 skills: re-runs the test cases of
  Code for Project/10-22-26 (Federico)/SUMMARY.md   (smoke strip, Al plate tip load,
                                                     large deflection vs elastica)
  Code for Project/10-23-26 (Tara)/SUMMARY.txt       (Poisson convention, ply rotation,
                                                     ABD of [90/0], L1-L4 and other layups,
                                                     per-ply vs merged laminate at large deflection)
  Code for Project/10-26-26 (Federico)/verify_mesh_bc_load.py    (flat, large deflection, curved strip)
  Code for Project/10-26-26 (Federico and Tara)/plate_pure_moment_Mx.py, plate_tip_load_laminate.py
with the laminate-properties, shell-mesh, shell-bc-load, shell-visualize and
failure-check skills, and compares with the v1 numbers (SUMMARY files,
the v1 scripts' printed output, the saved CSVs) and the analytical solutions.
Plus new checks of the Hashin / Tsai-Hill skill against closed-form CLT ply stresses.

Usage:
  python run_regression.py                  # everything except the slow 1 mm / 5 mm runs
  python run_regression.py --full           # also the 1 mm linear plate and the 5 mm large-deflection sweep
  python run_regression.py --only T04 T12   # selected tests
  python run_regression.py --log FILE       # also write the output to FILE
Units: N, mm, MPa.
"""
import argparse
import io
import math
import sys
import time
from contextlib import redirect_stdout
from pathlib import Path

import numpy as np
import openseespy.opensees as ops

SKILLS = Path(__file__).resolve().parents[1]
REPO = SKILLS.parents[1]
for _d in ('laminate-properties', 'shell-mesh', 'shell-bc-load', 'failure-check', 'shell-visualize'):
    sys.path.insert(0, str(SKILLS / _d))
import elastica                     # noqa: E402  (copy of 10-22-26 elastica.py, in shell-bc-load)
import laminate_properties as lp    # noqa: E402
import shell_bc_load as bc          # noqa: E402
import shell_mesh as sm             # noqa: E402
import failure_check as th          # noqa: E402

RESULTS = REPO / 'Code for Project' / '10-22-26 (Federico)' / 'results'
RECORD = []          # (test, name, value, ref, err, tol, ok)
CURRENT = ['']


def check(name, value, ref, tol, absolute=False):
    """Relative error |value - ref| / |ref| < tol (absolute=True: |value - ref| < tol)."""
    err = abs(value - ref) if absolute or ref == 0 else abs(value - ref) / abs(ref)
    ok = bool(err <= tol)
    RECORD.append((CURRENT[0], name, value, ref, err, tol, ok))
    print(f"  [{'PASS' if ok else 'FAIL'}] {name:<58s} got {value:+.6g}  ref {ref:+.6g}  "
          f"{'diff' if absolute or ref == 0 else 'err'} {err:.2e} (tol {tol:.0e})")
    return ok


def info(msg):
    print(f'  (info) {msg}')


# --- materials used in the SUMMARY files -----------------------------------------------
P135 = lp.ply_properties(135000.0, 10000.0, 0.3, 5000.0)          # 10-23 agent examples
P140 = lp.ply_properties(140000.0, 10000.0, 0.34, 6000.0)         # [90/0], 10-23 Part 3.1
P139 = lp.ply_properties(139500.0, 6101.0, 0.275, 2574.0)         # L1-L4, 10-23 Part 3.2
P80 = lp.ply_properties(80000.0, 2000.0, 0.25, 1000.0)            # [0_2/90_2]s, 10-26


# =========================== laminate-properties ===========================

def T01_poisson_convention():
    """ElasticOrthotropic Poisson slots (10-23 takeaway 1): uniaxial stress on
    one stdBrick in each direction; -eps_j/eps_i must equal nu_ij and E_i."""
    p = lp.ply_properties(135000.0, 10000.0, 0.3, 5000.0, nu23=0.45)
    E = [p['E1'], p['E2'], p['E3']]
    nu = {(0, 1): p['nu12'], (0, 2): p['nu13'], (1, 2): p['nu23'], (1, 0): p['nu21'], (2, 0): p['nu31'],
          (2, 1): p['nu32']}
    X = np.array([[0, 0, 0], [1, 0, 0], [1, 1, 0], [0, 1, 0], [0, 0, 1], [1, 0, 1], [1, 1, 1], [0, 1, 1]], float)
    for i in range(3):
        ops.wipe()
        ops.model('basic', '-ndm', 3, '-ndf', 3)
        for k, x in enumerate(X, 1):
            ops.node(k, *x)
        ops.nDMaterial('ElasticOrthotropic', 1, *lp.opensees_args(p))
        ops.element('stdBrick', 1, *range(1, 9), 1)
        for k, x in enumerate(X, 1):         # symmetric supports on the three faces through the origin
            ops.fix(k, int(x[0] == 0), int(x[1] == 0), int(x[2] == 0))
        ops.timeSeries('Constant', 1)
        ops.pattern('Plain', 1, 1)
        for k, x in enumerate(X, 1):
            if x[i] == 1:
                f = [0.0, 0.0, 0.0]
                f[i] = 1.0 / 4                # unit stress on the unit face
                ops.load(k, *f)
        ops.system('UmfPack')
        ops.numberer('Plain')
        ops.constraints('Plain')
        ops.integrator('LoadControl', 1.0)
        ops.algorithm('Linear')
        ops.analysis('Static')
        ops.analyze(1)
        eps = [ops.nodeDisp(7, d + 1) for d in range(3)]
        check(f'E{i + 1} from uniaxial stress [MPa]', 1 / eps[i], E[i], 1e-9)
        for j in range(3):
            if j != i:
                check(f'nu{i + 1}{j + 1} = -eps{j + 1}/eps{i + 1}', -eps[j] / eps[i], nu[(i, j)], 1e-9)
    ops.wipe()


def T02_ply_rotation():
    """Ply at theta: OpenSees membrane stiffness = t Q_bar (10-23 2.1, machine
    precision at 0, +-45, 90, 30, 17.3 deg); Q_bar rotation = invariants."""
    for theta in (0, 45, -45, 90, 30, 17.3):
        lam = lp.Laminate.from_layup([theta], 0.125, P135, n_sub=3)
        A = lam.measure_abd()[:3, :3]
        ref = 0.125 * lp.q_bar(P135, theta)
        check(f'theta = {theta:g}: max|A_fe - t Q_bar| / max|t Q_bar|', np.abs(A - ref).max() / np.abs(ref).max(),
              0.0, 1e-12, absolute=True)
        check(f'theta = {theta:g}: Q_bar rotation vs Tsai-Pagano invariants',
              np.abs(lp.q_bar(P135, theta) - lp.q_bar_invariants(P135, theta)).max() / np.abs(ref).max() * 0.125,
              0.0, 1e-13, absolute=True)


def T03_hand_check():
    """Single 0-deg ply, t = 0.2 mm (10-23 'Hand check of CLT')."""
    K = lp.Laminate.from_layup([0], 0.2, P135).abd()
    check('A11 = Q11 t [N/mm]', K[0, 0], 27181.2, 5e-6)
    check('D11 = Q11 t^3/12 [N mm]', K[3, 3], 90.604, 5e-6)


def T04_90_0():
    """[90/0], 1 mm plies, E1 = 140 GPa (10-23 Part 3.1)."""
    lam = lp.Laminate.from_layup('[90/0]', 1.0, P140)
    K, Kfe = lam.abd(), lam.measure_abd()
    for name, (i, j), ref in (('A11', (0, 0), 151248.88), ('A22', (1, 1), 151248.88), ('A12', (0, 1), 6856.62),
                              ('A66', (2, 2), 12000.0), ('B11', (0, 3), 65541.18), ('B22', (1, 4), -65541.18),
                              ('D11', (3, 3), 50416.29), ('D22', (4, 4), 50416.29)):
        check(f'CLT {name}', K[i, j], ref, 1e-6)        # SUMMARY values rounded to 0.01
    check('OpenSees D11 (8 layers per ply) [N mm]', Kfe[3, 3], 50219.36, 2e-7)
    check('OpenSees A, B vs CLT', max(lp.block_errors(Kfe, K)['A'], lp.block_errors(Kfe, K)['B']), 0.0, 1e-13, True)
    nz = np.abs(K[3:, 3:]) > 1e-9 * np.abs(K[3:, 3:]).max()
    check('OpenSees D: every term low by exactly 1/256 (16 layers)',
          np.abs((K[3:, 3:] - Kfe[3:, 3:])[nz] / K[3:, 3:][nz] - 1 / 256).max(), 0, 1e-9, True)
    lam32 = lp.Laminate.from_layup('[90/0]', 1.0, P140, n_sub=32)
    check('--n-sub 32: D error ~0.02%', lp.block_errors(lam32.measure_abd(), K)['D'], 1 / 64**2, 1e-6)


def T05_L1_L4():
    """Four symmetric 4-ply layups, t = 0.054 mm, 8 layers per ply (10-23 Part 3.2)."""
    ref = {'L1': ('[0/90/90/0]', 5.8e-4), 'L2': ('[90/0/0/90]', 5.8e-4), 'L3': ('[45/0/0/45]', 1.7e-3),
           'L4': ('[-45/90/90/-45]', 1.7e-3)}
    Ks = {}
    for name, (lay, derr) in ref.items():
        lam = lp.Laminate.from_layup(lay, 0.054, P139, n_sub=8)
        K, Kfe = lam.abd(), lam.measure_abd()
        Ks[name] = (K, Kfe)
        e = lp.block_errors(Kfe, K)
        check(f'{name} {lay}: A vs CLT', e['A'], 0.0, 1e-13, True)
        check(f'{name} {lay}: B = 0 (symmetric)', e['B'], 0.0, 1e-13, True)
        check(f'{name} {lay}: D error (SUMMARY {derr:.1e})', e['D'], derr, 0.05)
        check(f'{name}: elements per facet = distinct angles', len(lam.groups()), 2, 0, True)
    check('L1 CLT D11 [N mm]', Ks['L1'][0][3, 3], 103.49, 5e-5)
    check('L2 CLT D11 [N mm]', Ks['L2'][0][3, 3], 19.19, 5e-4)
    check('L3 CLT A16 = A26 [N/mm]', Ks['L3'][0][0, 2], 3613.73, 2e-6)
    check('L3 CLT D16 = D26 [N mm]', Ks['L3'][0][3, 5], 24.59, 5e-4)
    check('L1 OpenSees D11 (v1 output) [N mm]', Ks['L1'][1][3, 3], 103.432, 5e-6)
    check('L3 OpenSees D11 (v1 output) [N mm]', Ks['L3'][1][3, 3], 43.9658, 5e-6)
    P = np.diag([1, 1, -1])           # 90 deg rotation: swap 1 <-> 2, flip 16/26
    S = np.array([[0, 1, 0], [1, 0, 0], [0, 0, 1]]) @ P
    for blk, sl in (('A', np.s_[:3, :3]), ('D', np.s_[3:, 3:])):
        rot = S @ Ks['L3'][0][sl] @ S.T
        check(f'L4 = L3 rotated 90 deg ({blk})', np.abs(rot - Ks['L4'][0][sl]).max() / np.abs(rot).max(), 0, 1e-13,
              True)


def T06_other_layups():
    """[0/45/-45/90], [0/+-45/90]s, [0/90/-30] (unequal t), single ply (10-23 'Verification done today')."""
    for lay, t in (('[0/45/-45/90]', [0.125]), ('[0/±45/90]s', [0.125]), ('[0/90/-30]', [0.1, 0.2, 0.15]),
                   ('[30]', [0.125])):
        for merge in (True, False):
            lam = lp.Laminate.from_layup(lay, t, P135, merge=merge)
            e = lp.block_errors(lam.measure_abd(), lam.abd())
            tag = f'{lay} t = {"/".join(f"{x:g}" for x in t)} {"merged" if merge else "per ply"}'
            check(f'{tag}: A, B vs CLT', max(e['A'], e['B']), 0.0, 1e-13, True)
            # SUMMARY: 'D within ~0.4%'; the [0/90/-30] thicknesses were not recorded, these are new
            check(f'{tag}: D within 0.6% (~1/layers^2)', e['D'], 0.0, 6e-3, True)
    check('expand [0/±45/90]s', float(lp.expand_layup('[0/±45/90]s') == [0, 45, -45, 90, 90, -45, 45, 0]), 1, 0, True)
    check('expand [0_2/90_2]s', float(lp.expand_layup('[0_2/90_2]s') == [0, 0, 90, 90, 90, 90, 0, 0]), 1, 0, True)
    check('expand [0/90]2', float(lp.expand_layup('[0/90]2') == [0, 90, 0, 90]), 1, 0, True)


def T07_merged_vs_per_ply_large_deflection():
    """Per-ply coincident elements vs merged same-angle elements, cantilever
    strip 100 x 10 mm, 20 x 2 mesh, corotational, tip pushed to 0.6 L
    (10-23: per-ply vs single-element agree to ~1e-14 for [0/90]s,
    [0/90/0/90] and [30]4)."""
    for lay in ('[0/90]s', '[0/90/0/90]', '[30]4'):
        out = {}
        for merge in (False, True):
            lam = lp.Laminate.from_layup(lay, 0.125, P135, merge=merge)
            mesh = sm.ShellMesh(100.0, sm.CrossSection.flat(10.0), 5.0)
            sm.build_model(mesh, lam, corotational=True, eas=False)
            bc.fix_edge(mesh, 'x0')
            D11 = lam.abd()[3, 3]
            bc.edge_load(mesh, 'xL', (0, 0, -10.0 * D11 / 100.0**2))
            tip = mesh.node_tag(mesh.nx, mesh.ny // 2)
            h = bc.displacement_control(tip, 3, -3.0, n_steps=20, verbose=False,
                                        record=lambda: [ops.nodeDisp(tip, 3), ops.nodeDisp(tip, 1),
                                                        ops.nodeDisp(mesh.node_tag(mesh.nx, 0), 3)])
            out[merge] = (h, len(ops.getEleTags()))
        (h0, n0), (h1, n1) = out[False], out[True]
        n = min(len(h0), len(h1))
        check(f'{lay}: steps converged (per ply / merged)', n, 21, 0, True)
        check(f'{lay}: load factor, merged ({n1} el.) vs per ply ({n0} el.)',
              np.abs(h1[:n, 0] - h0[:n, 0]).max() / np.abs(h0[:n, 0]).max(), 0, 1e-8, True)
        check(f'{lay}: tip ux and corner uz, merged vs per ply',
              np.abs(h1[:n, 2:4] - h0[:n, 2:4]).max() / 60.0, 0, 1e-8, True)
        info(f'{lay}: at tip w = -60 mm (0.6 L): load factor {h1[n - 1, 0]:.5g}, tip ux {h1[n - 1, 2]:.4g} mm, '
             f'corner w {h1[n - 1, 3]:.4g} mm (twist if != -60)')


# =========================== isotropic shells (10-22, 10-26 Federico) ===========================

def T08_smoke_strip():
    """Steel strip 1000 x 30 x 0.1 mm, ShellMITC4 100 x 3 (10-22 smoke_shell.py)."""
    E, nu, t, rho, P = 200000.0, 0.3, 0.1, 7.85e-9, 1e-5
    I = 30 * t**3 / 12
    out = {}
    for name, lam in (('homogeneous', lp.Laminate.isotropic(E, nu, t, rho)),
                      ('4 layers', lp.Laminate.from_layup([0] * 4, t / 4, lp.ply_properties(E, E, nu, E / 2.6, nu), n_sub=1)),
                      ('20 layers', lp.Laminate.from_layup([0] * 20, t / 20, lp.ply_properties(E, E, nu, E / 2.6, nu), n_sub=1))):
        mesh = sm.ShellMesh(1000.0, sm.CrossSection.flat(30.0), 10.0)
        sm.build_model(mesh, lam, 'ShellMITC4')
        bc.fix_edge(mesh, 'x0')
        bc.edge_load(mesh, 'xL', (0, 0, P))
        bc.linear_solve()
        out[name] = np.mean([ops.nodeDisp(n, 3) for n in mesh.edge_nodes('xL')])
    check('tip deflection, homogeneous [mm] (v1 6.643)', out['homogeneous'], 6.643, 1e-4)
    check('tip deflection, homogeneous vs PL^3/3EI', out['homogeneous'], P * 1000.0**3 / (3 * E * I), 0.0036)
    check('4-layer LayeredShell = homogeneous / (1 - 1/16) (v1 7.0858)', out['4 layers'], out['homogeneous'] / (1 - 1 / 16), 1e-3)
    check('20-layer LayeredShell (v1 6.6598)', out['20 layers'], 6.6598, 1e-4)
    mesh = sm.ShellMesh(1000.0, sm.CrossSection.flat(30.0), 10.0)
    sm.build_model(mesh, lp.Laminate.isotropic(E, nu, t, rho), 'ShellMITC4')
    bc.fix_edge(mesh, 'x0')
    f1_ref = 1.875104**2 / (2 * math.pi * 1000.0**2) * math.sqrt(E * I / (rho * 30 * t))
    f1 = bc.modal(1)[0]
    check('first frequency [Hz] (v1 0.08173)', f1, 0.08173, 1e-4)
    check('first frequency vs beam theory', f1, f1_ref, 0.003)


def _flat_al(size, element, corot=False):
    lam = lp.Laminate.isotropic(69000.0, 0.33, 0.1, 2.7e-9)
    mesh = sm.ShellMesh(1000.0, sm.CrossSection.flat(100.0), size)
    sm.build_model(mesh, lam, element, corot)
    bc.fix_edge(mesh, 'x0')
    return mesh, lam


def T09_al_plate_1mm():
    """Al plate 1000 x 100 x 0.1 mm, 1 x 1 mm ShellMITC4 (606k DOFs), P = 1e-5 N
    (10-22 plate_tip_load.py). Slow (--full)."""
    mesh, lam = _flat_al(1.0, 'ShellMITC4')
    bc.edge_load(mesh, 'xL', (0, 0, -1e-5))
    t0 = time.perf_counter()
    bc.linear_solve()
    info(f'linear solve {time.perf_counter() - t0:.1f} s ({6 * len(ops.getNodeTags())} DOFs)')
    I = 100 * 0.1**3 / 12
    jm = mesh.ny // 2
    for x, v1 in ((250, -0.48412), (500, -1.7786), (750, -3.6168), (1000, -5.7271)):
        w = ops.nodeDisp(mesh.node_tag(x, jm), 3)
        check(f'w(x = {x}) [mm] vs v1', w, v1, 1e-4)
        check(f'w(x = {x}) vs beam theory (v1: 1.2-2.8%)', w, -1e-5 * x**2 * (3000 - x) / (6 * 69000 * I), 0.03)
    S = th.surface_fields(bc.facet_strains(mesh), lam)['sigma_xx_top']
    for x, v1 in ((250, 0.044991), (500, 0.029987), (750, 0.014975)):
        s = S[jm * mesh.nx + x]
        check(f'top sigma_xx(x = {x}) [MPa] vs v1', s, v1, 1e-4)
        check(f'top sigma_xx(x = {x}) vs Mc/I', s, 1e-5 * (1000 - x - 0.5) * 0.05 / I, 0.001)


def T10_flat_linear_5mm():
    """verify_mesh_bc_load.py check 1 (ShellMITC4, 5 mm)."""
    mesh, lam = _flat_al(5.0, 'ShellMITC4')
    bc.edge_load(mesh, 'xL', (0, 0, -1e-5))
    bc.linear_solve()
    I = 100 * 0.1**3 / 12
    w = ops.nodeDisp(mesh.node_tag(mesh.nx, mesh.ny // 2), 3)
    check('tip deflection mid-width [mm] (v1 -5.72296)', w, -5.72296, 1e-5)
    check('tip deflection vs PL^3/3EI (v1 1.28%)', w, -1e-5 * 1000**3 / (3 * 69000 * I), 0.03)
    S = th.surface_fields(bc.facet_strains(mesh), lam)['sigma_xx_top']
    k = (mesh.ny // 2) * mesh.nx + mesh.nx // 2
    xc = (mesh.nx // 2 + 0.5) * 5.0
    check('top sigma_xx at mid-span [MPa] (v1 +0.029848)', S[k], 0.029848, 1e-4)
    check('top sigma_xx at mid-span vs Mc/I', S[k], 1e-5 * (1000 - xc) * 0.05 / I, 0.002)


def _large_deflection(size, alpha_max=7.0):
    mesh, lam = _flat_al(size, 'ASDShellQ4', True)
    EI = 69000.0 * 100 * 0.1**3 / 12
    bc.edge_load(mesh, 'xL', (0, 0, -EI / 1000.0**2))
    tip = mesh.node_tag(mesh.nx, mesh.ny // 2)
    t0 = time.perf_counter()
    h = bc.displacement_control(tip, 3, -0.02 * 1000.0, stop=lambda a: a >= alpha_max, verbose=False,
                                record=lambda: [-ops.nodeDisp(tip, 3) / 1000.0, -ops.nodeDisp(tip, 1) / 1000.0])
    info(f'{size:g} mm sweep: {len(h) - 1} steps, {int(h[:, -1].sum())} Newton iterations, '
         f'{time.perf_counter() - t0:.0f} s, alpha_max reached {h[-1, 0]:.4f}')
    return mesh, lam, h


def _compare_saved(h, csv, size):
    saved = np.loadtxt(csv, delimiter=',', skiprows=1)
    n = min(len(h), len(saved))
    check(f'{size:g} mm: number of steps (saved {len(saved) - 1})', len(h) - 1, len(saved) - 1, 0, True)
    # Steps are halved where Newton fails near the convergence limit; compare the
    # steps that reached the same controlled displacement, report where paths split.
    same = np.flatnonzero(np.abs(h[:n, 1] - saved[:n, 1]) < 1e-9)
    split = next((k for k in range(n) if k not in set(same)), None)
    if split is not None:
        info(f'{size:g} mm: step-halving path differs from step {split} on '
             f'(v/L {h[split, 1]:.4f} vs saved {saved[split, 1]:.4f}; final alpha {h[-1, 0]:.4f} vs saved {saved[-1, 0]:.4f})')
    check(f'{size:g} mm: steps on the same path as the saved run', len(same), n - (0 if split is None else n - split), 0, True)
    for k, name in ((0, 'alpha'), (2, 'h/L')):
        check(f'{size:g} mm: max |{name} - saved| on those steps', np.abs(h[same, k] - saved[same, k]).max(), 0, 1e-6, True)
    nu = 0.33
    for alpha, ref_err in ((0.5, 0.021), (1.0, 0.013), (2.0, 0.007), (3.0, 0.004), (5.0, 0.002)):
        v = np.interp(alpha, h[:, 0], h[:, 1])
        vp = elastica.tip(alpha * (1 - nu**2))[0]
        check(f'{size:g} mm: v/L at alpha = {alpha:g} vs wide-plate elastica (5 mm: +{ref_err:.1%})', v, vp,
              ref_err + 0.004)


def T11_large_deflection_10mm():
    """Al plate, ASDShellQ4 -corotational, displacement control to alpha = 7
    (10-22 plate_large_deflection.py --size 10; saved CSV; verify_mesh_bc_load check 2)."""
    mesh, lam, h = _large_deflection(10.0)
    _compare_saved(h, RESULTS / 'large_deflection_ASDShellQ4-corot_10mm.csv', 10.0)
    # mid-span stress vs statics on the deformed shape (10-22: within ~1%)
    jm, im = mesh.ny // 2, mesh.nx // 2
    xd = lambda i: ops.nodeCoord(mesh.node_tag(i, jm), 1) + ops.nodeDisp(mesh.node_tag(i, jm), 1)
    P = h[-1, 0] * 69000.0 * 100 * 0.1**3 / 12 / 1000.0**2
    st = P * (xd(mesh.nx) - 0.5 * (xd(im) + xd(im + 1))) * 0.05 / (100 * 0.1**3 / 12)
    s = th.surface_fields(bc.facet_strains(mesh), lam)['sigma_xx_top'][jm * mesh.nx + im]
    check(f'mid-span top sigma_xx at alpha = {h[-1, 0]:.3g} vs statics on deformed shape', s, st, 0.015)


def T12_large_deflection_5mm():
    """Same at 5 mm (the SUMMARY table). Slow (--full, ~15-25 min)."""
    _, _, h = _large_deflection(5.0)
    _compare_saved(h, RESULTS / 'large_deflection_ASDShellQ4-corot_5mm.csv', 5.0)


def T13_curved_strip():
    """Arc R = 50 mm, b = 100 mm, Al t = 0.1, tip load 1 N through a rigid end
    (verify_mesh_bc_load.py check 3); and the free-edge load warning (8%)."""
    lam = lp.Laminate.isotropic(69000.0, 0.33, 0.1)
    mesh = sm.ShellMesh(1000.0, sm.CrossSection.arc(50.0, 100.0), 5.0)
    sm.build_model(mesh, lam, 'ShellMITC4')
    bc.fix_edge(mesh, 'x0')
    tip = bc.rigid_end(mesh, 'xL')
    bc.point_load(tip, (0, 0, -1.0))
    bc.linear_solve()
    zc, I = sm.arc_section_inertia(50.0, 100.0, 0.1)
    check('arc I [mm^4] (v1 481.285)', I, 481.285, 1e-5)
    check('tip deflection, rigid end [mm] (v1 -9.99961)', ops.nodeDisp(tip, 3), -9.99961, 1e-5)
    check('tip deflection vs PL^3/3EI (v1 0.38%)', ops.nodeDisp(tip, 3), -1000.0**3 / (3 * 69000 * I), 0.005)
    for x, v1 in ((250, -0.8608), (500, -3.12704), (750, -6.32981)):
        w = np.mean([ops.nodeDisp(mesh.node_tag(x // 5, j), 3) for j in range(mesh.ny + 1)])
        check(f'section-average w(x = {x}) [mm] vs v1', w, v1, 1e-4)
        check(f'section-average w(x = {x}) vs beam theory', w, -x**2 * (3000 - x) / (6 * 69000 * I), 0.005)
    E = bc.facet_strains(mesh)
    _, sxy, _ = th.ply_stresses(E, lam, 'centroid')
    i = mesh.nx // 2
    M = 1000.0 - (i + 0.5) * 5.0
    for j in (0, mesh.ny // 2):
        zm = 0.5 * (mesh.coords(0, j)[2] + mesh.coords(0, j + 1)[2])
        check(f'mid-surface sigma_xx at x = 502.5, j = {j} vs M (z - z_c) / I', sxy[mesh.facet_index(i, j), 0, 0, 1, 0],
              M * (zm - zc) / I, 0.01)
    # free edge loaded directly: tip too flexible (v1 rule: ~8%)
    sm.build_model(mesh, lam, 'ShellMITC4')
    bc.fix_edge(mesh, 'x0')
    bc.edge_load(mesh, 'xL', (0, 0, -1.0))
    bc.linear_solve()
    w = np.mean([ops.nodeDisp(n, 3) for n in mesh.edge_nodes('xL')])
    info(f'load spread on the free arc edge instead: section-average tip w = {w:.5g} mm, '
         f'{w / (-1000.0**3 / (3 * 69000 * I)) - 1:+.1%} vs beam theory (v1 rule: ~8% too flexible)')


# =========================== laminated plates (10-26 Federico and Tara) ===========================

LAM_0090S = dict(angles='[0_2/90_2]s', t=1.0, n_sub=4)
Q11_80, Q12_80 = 80125.2, 500.782


def T14_pure_moment():
    """Free [0_2/90_2]s plate 100 x 100 x 8 mm, Mx = 50 N mm/mm (plate_pure_moment_Mx.py)."""
    lam = lp.Laminate.from_layup('[0_2/90_2]s', 1.0, P80, n_sub=4)
    d = np.linalg.inv(lam.abd())
    kref = d[3:, 3:] @ np.array([50.0, 0, 0])
    check('CLT kx [1/mm] (v1 1.66605e-5)', kref[0], 1.66605e-5, 2e-6)
    check('CLT ky [1/mm] (v1 -7.0896e-7)', kref[1], -7.0896e-7, 2e-5)
    for size in (10.0, 5.0):
        mesh = sm.ShellMesh(100.0, sm.CrossSection.flat(100.0), size)
        sm.build_model(mesh, lam)
        ops.fix(mesh.node_tag(0, 0), 1, 1, 1, 0, 0, 0)
        ops.fix(mesh.node_tag(mesh.nx, 0), 0, 1, 1, 0, 0, 0)
        ops.fix(mesh.node_tag(0, mesh.ny), 0, 0, 1, 0, 0, 0)
        bc.edge_load(mesh, 'xL', (0, 0, 0), (0, 50.0 * 100, 0))
        bc.edge_load(mesh, 'x0', (0, 0, 0), (0, -50.0 * 100, 0))
        bc.linear_solve()
        E = bc.facet_strains(mesh)
        kx, ky, kxy = E[:, :, 3].mean(), E[:, :, 4].mean(), E[:, :, 5].mean()
        check(f'{size:g} mm: kx from element strains (v1 fit +1.666999e-05)', kx, 1.666999e-05, 1e-6)
        check(f'{size:g} mm: ky (v1 fit -7.110915e-07)', ky, -7.110915e-07, 1e-6)
        check(f'{size:g} mm: kx vs CLT (v1 +0.057%)', kx, kref[0], 1e-3)
        check(f'{size:g} mm: kxy = 0', kxy, 0.0, 1e-15, True)
        # uz quadratic fit, as v1
        tags = [mesh.node_tag(i, j) for j in range(mesh.ny + 1) for i in range(mesh.nx + 1)]
        xyz = np.array([ops.nodeCoord(n) for n in tags])
        w = np.array([ops.nodeDisp(n, 3) for n in tags])
        A = np.column_stack([np.ones(len(xyz)), xyz[:, 0], xyz[:, 1], xyz[:, 0]**2, xyz[:, 0] * xyz[:, 1], xyz[:, 1]**2])
        c = np.linalg.lstsq(A, w, rcond=None)[0]
        check(f'{size:g} mm: kx from the uz fit = from element strains', -2 * c[3], kx, 1e-9)
        info(f'{size:g} mm: {len(ops.getEleTags())} elements ({len(ops.getEleTags()) // (mesh.nx * mesh.ny)} per facet; v1 used 8)')
    s = th.surface_fields(E, lam)['sigma_xx_top']
    check('top sigma_xx [MPa] (v1 +5.3413)', s.mean(), 5.3413, 2e-5)
    check('top sigma_xx vs CLT (Q11 kx + Q12 ky) h/2', s.mean(), (Q11_80 * kref[0] + Q12_80 * kref[1]) * 4, 1e-3)
    check('top sigma_xx uniform', np.ptp(s) / s.mean(), 0, 1e-9, True)


def T15_tip_load_laminate():
    """[0_2/90_2]s cantilever 1000 x 100 x 8 mm, P = -5 N on the free edge,
    10, 5, 2.5 mm (plate_tip_load_laminate.py)."""
    lam = lp.Laminate.from_layup('[0_2/90_2]s', 1.0, P80, n_sub=4)
    D = lam.abd()[3:5, 3:5]
    d = np.linalg.inv(D)
    EI = 100 / d[0, 0]
    wb = lambda x: -5.0 * x**2 * (3000 - x) / (6 * EI)
    sb = lambda x: (Q11_80 * (d @ (5.0 * (1000 - x) / 100, 0))[0] + Q12_80 * (d @ (5.0 * (1000 - x) / 100, 0))[1]) * 4
    v1 = {10.0: (-5.56263, (3.9794, 2.644, 1.3086), (-0.47925, -1.7396, -3.5209)),
          5.0: (-5.56274, (3.9928, 2.6573, 1.322), (-0.47927, -1.7396, -3.521)),
          2.5: (-5.56277, (3.9995, 2.664, 1.3287), (-0.47928, -1.7397, -3.521))}
    for size, (wtip, sig, ws) in v1.items():
        mesh = sm.ShellMesh(1000.0, sm.CrossSection.flat(100.0), size)
        sm.build_model(mesh, lam)
        bc.fix_edge(mesh, 'x0')
        bc.edge_load(mesh, 'xL', (0, 0, -5.0))
        t0 = time.perf_counter()
        bc.linear_solve()
        info(f'{size:g} mm: {len(ops.getEleTags())} elements (v1: {8 * mesh.nx * mesh.ny}), '
             f'solve {time.perf_counter() - t0:.1f} s')
        jm = mesh.ny // 2
        w = ops.nodeDisp(mesh.node_tag(mesh.nx, jm), 3)
        check(f'{size:g} mm: tip w mid-width [mm] (v1 {wtip})', w, wtip, 2e-6)
        check(f'{size:g} mm: tip w vs laminated beam b/d11 (v1 +0.16%)', w, wb(1000.0), 0.0025)
        for x, wv in zip((250, 500, 750), ws):
            check(f'{size:g} mm: w(x = {x}) vs v1', ops.nodeDisp(mesh.node_tag(round(x / size), jm), 3), wv, 2e-4)
        S = th.surface_fields(bc.facet_strains(mesh), lam)['sigma_xx_top']
        for x, sv in zip((250, 500, 750), sig):
            k = jm * mesh.nx + round(x / size)
            check(f'{size:g} mm: top sigma_xx(x = {x}) [MPa] vs v1', S[k], sv, 2e-4)
            check(f'{size:g} mm: top sigma_xx(x = {x}) vs beam', S[k], sb(x + size / 2), 0.001)


# =========================== new: curved laminate orientation, failure criteria ===========================

def T16_orientation_on_curved_facets():
    """Per-facet '-local' on an arc: the fibre axis must lie in the facet at
    theta from the facet x axis. Compares with the v1 global (cos, sin, 0)."""
    mesh = sm.ShellMesh(100.0, sm.CrossSection.arc(50.0, 100.0), 5.0)
    lam = lp.Laminate.from_layup('[45/-45]', 0.1, P135)
    sm.build_model(mesh, lam)
    worst, v1_worst = 0.0, 0.0
    for k in range(len(mesh.facets)):
        e1, e2, nrm = mesh.frames[k]
        # the '-local' vector create_elements gives a 45-deg ply on this facet
        ax =math.cos(math.radians(45)) * e1 + math.sin(math.radians(45)) * e2
        worst = max(worst, abs(ax @ nrm), abs(math.degrees(math.atan2(ax @ e2, ax @ e1)) - 45))
        g = np.array([math.cos(math.radians(45)), math.sin(math.radians(45)), 0.0])
        gp = g - (g @ nrm) * nrm
        v1_worst = max(v1_worst, abs(math.degrees(math.atan2(gp @ e2, gp @ e1)) - 45))
    check('per-facet axis: in-plane and at 45.000 deg from facet x (max error)', worst, 0.0, 1e-9, True)
    info(f'v1 global (cos, sin, 0) projected on the arc facets: ply angle off by up to {v1_worst:.1f} deg '
         '(at the arc edges, 57 deg from horizontal)')
    E = bc.facet_strains(mesh)
    check('strain recovery runs on oriented curved facets (finite)', float(np.isfinite(E).all()), 1, 0, True)


def T17_failure_unit():
    """Closed-form cases of the Hashin 2D (AIAA 2025-0188 Eq. 3) and Tsai-Hill indices."""
    X = dict(Xt=1500.0, Xc=1200.0, Yt=50.0, Yc=200.0, S=80.0)
    for s, name, mode in (((1500, 0, 0), 's1 = Xt', 0), ((-1200, 0, 0), 's1 = -Xc', 1), ((0, 50, 0), 's2 = Yt', 2),
                          ((0, -200, 0), 's2 = -Yc', 3), ((0, 0, 80), 't12 = S', 0), ((0, 0, -80), 't12 = -S', 0)):
        F, m = th.hashin(*np.array(s, float), **X)
        check(f'Hashin F = 1 at {name}', float(F), 1.0, 1e-12)
        check(f'Hashin mode at {name}: {th.MODES[mode]}', float(m), mode, 0, True)
        check(f'Tsai-Hill FI = 1 at {name}', float(th.tsai_hill(*np.array(s, float), **X)), 1.0, 1e-12)
    s1, t = 600.0, 30.0
    check('Hashin fibre tension (s1 > 0): (s1/Xt)^2 + (t12/S)^2', float(th.hashin(s1, 20.0, t, **X)[0]),
          max((s1 / 1500)**2 + (t / 80)**2, (20 / 50)**2 + (t / 80)**2), 1e-12)
    check('Hashin matrix tension wins (s2 = 40)', float(th.hashin(100.0, 40.0, t, **X)[0]), (40 / 50)**2 + (t / 80)**2, 1e-12)
    check('Hashin fibre compression ignores shear', float(th.hashin(-600.0, 0.0, t, **X)[0]), max((600 / 1200)**2, 0.0), 1e-12)
    S23 = 70.0
    s2 = -100.0
    ref = (s2 / (2 * S23))**2 + ((200 / (2 * S23))**2 - 1) * s2 / 200 + (t / 80)**2
    check('Hashin matrix compression, S23 = 70 (Hashin 1980 form)', float(th.hashin(-1.0, s2, t, **X, S23=S23)[0]),
          max(ref, (1 / 1200)**2), 1e-12)
    check('s1 = 0 counts as fibre tension: F = max(F_ft, F_mc)', float(th.hashin(0.0, s2, t, **X, S23=S23)[0]),
          max(ref, (t / 80)**2), 1e-12)
    check('Hashin matrix compression, S23 = Yc/2: (s2/Yc)^2 + (t12/S)^2', float(th.hashin(0.0, s2, t, **X)[0]),
          (s2 / 200)**2 + (t / 80)**2, 1e-12)
    a, b = th.hashin_modes(0.0, s2, t, **X, S23=S23)
    R = float(th.strength_ratio(a, b))
    check('strength ratio R: F(R stresses) = 1 (with the linear term)', float(th.hashin(0.0, R * s2, R * t, **X, S23=S23)[0]),
          1.0, 1e-12)
    rng = np.random.default_rng(1)
    s = rng.normal(0, 100, (1000, 3))
    sy = 250.0
    vm = np.sqrt(s[:, 0]**2 - s[:, 0] * s[:, 1] + s[:, 1]**2 + 3 * s[:, 2]**2)
    fi = th.tsai_hill(*s.T, sy, sy, sy, sy, sy / math.sqrt(3))
    check('Tsai-Hill isotropic X = Y = sy, S = sy/sqrt3: FI = (von Mises / sy)^2', np.abs(fi - (vm / sy)**2).max(), 0, 1e-12, True)


def T18_failure_vs_clt():
    """L024 CFRP (catalog, all strengths) [0/±45/90]s plate under pure Mx and under
    combined N + M: FE ply stresses and Hashin index at every ply vs closed-form CLT."""
    mat, _ = lp.catalog_material('L024')
    lam = lp.Laminate.from_layup('[0/±45/90]s', mat['t_ply'], mat, n_sub=8)
    K = lam.abd()
    for name, NM in (('pure Mx = 1 N mm/mm', np.array([0, 0, 0, 1.0, 0, 0])),
                     ('Nx = 20 N/mm + Mx = 1 + My = -0.5 N mm/mm', np.array([20.0, 0, 0, 1.0, -0.5, 0]))):
        mesh = sm.ShellMesh(40.0, sm.CrossSection.flat(40.0), 4.0)
        sm.build_model(mesh, lam)
        ops.fix(mesh.node_tag(0, 0), 1, 1, 1, 0, 0, 0)
        ops.fix(mesh.node_tag(mesh.nx, 0), 0, 1, 1, 0, 0, 0)
        ops.fix(mesh.node_tag(0, mesh.ny), 0, 0, 1, 0, 0, 0)
        b = 40.0
        bc.edge_load(mesh, 'xL', (NM[0] * b, 0, 0), (0, NM[3] * b, 0))
        bc.edge_load(mesh, 'x0', (-NM[0] * b, 0, 0), (0, -NM[3] * b, 0))
        # M_yy on the edge y = b (outward normal +y): moment vector along -x
        bc.edge_load(mesh, 'yb', (0, 0, 0), (-NM[4] * b, 0, 0))
        bc.edge_load(mesh, 'y0', (0, 0, 0), (NM[4] * b, 0, 0))
        bc.linear_solve()
        E = bc.facet_strains(mesh)
        # closed form: generalized strains from the CLT ABD, then the stresses by hand
        e_ref = np.linalg.solve(K, NM)
        F_fe, mode_fe, R_fe, s_fe, _, _ = th.failure_index(E, lam, at='centroid')
        c = mesh.facet_index(mesh.nx // 2, mesh.ny // 2)
        st = th.strengths_of(lam)
        F_cl, s_cl = np.zeros((len(lam.plies), 3)), np.zeros((len(lam.plies), 3, 3))
        for p, q in enumerate(lam.plies):
            Qb = lp.q_bar_invariants(lam.materials[q['mat']], q['theta'])
            for iz, z in enumerate((q['z0'], (q['z0'] + q['z1']) / 2, q['z1'])):
                sxy = Qb @ (e_ref[:3] + z * e_ref[3:])
                s_cl[p, iz] = lp.stress_rotation(q['theta']) @ sxy
                F_cl[p, iz] = th.hashin(*s_cl[p, iz], *st[p])[0]
        check(f'{name}: central facet ply stresses vs CLT (max rel.)',
              np.abs(s_fe[c, 0] - s_cl).max() / np.abs(s_cl).max(), 0, 2e-3, True)
        check(f'{name}: max Hashin F, FE (all facets) vs CLT', F_fe.max(), F_cl.max(), 4e-3)
        p, iz = np.unravel_index(F_cl.argmax(), F_cl.shape)
        pf, izf = np.unravel_index(F_fe[c, 0].argmax(), F_fe[c, 0].shape)
        check(f'{name}: critical ply/position FE = CLT (ply {p + 1}, {th.Z_POINTS[iz]})', float((pf, izf) == (p, iz)), 1, 0, True)
        info(f'{name}: max Hashin F {F_cl.max():.4g} ({th.MODES[mode_fe[c, 0, pf, izf]]}), '
             f'R = {R_fe[c].min():.4g} -> failure at {R_fe[c].min():.4g} x this load (linear)')


def T19_case_file_and_viewer():
    """Example case files run end to end (JSON -> npz -> Hashin -> PNG)."""
    import json
    import tempfile
    import shell_visualize as sv
    ex = SKILLS / 'shell-bc-load' / 'examples'
    with tempfile.TemporaryDirectory() as tmp:
        case = json.loads((ex / 'plate_tip_load_laminate.json').read_text())
        with redirect_stdout(io.StringIO()):
            mesh, res = bc.run_case(case, tmp, verbose=False)
        check('plate_tip_load_laminate.json: tip w [mm] (v1 10 mm -5.56263)',
              ops.nodeDisp(mesh.node_tag(mesh.nx, mesh.ny // 2), 3), -5.56263, 2e-6)
        r2 = bc.load_results(Path(tmp) / 'plate_tip_load_laminate.npz')
        check('results file round trip (strains)', np.abs(r2['strains'] - res['strains']).max(), 0, 1e-15, True)
        case = json.loads((ex / 'tape_spring_L024_tip_load.json').read_text())
        with redirect_stdout(io.StringIO()):
            bc.run_case(case, tmp, verbose=False)
            r = bc.load_results(Path(tmp) / 'tape_spring_L024_tip_load.npz')
            pd = sv.to_polydata(r)
            sv.show(pd, ['k_xx', 'hashin_max'], png=str(Path(tmp) / 'ts.png'), gui=False)
        check('tape spring: hashin_max field present and finite', float(np.isfinite(pd.cell_data['hashin_max']).all()), 1, 0, True)
        check('tape spring: PNG written', float((Path(tmp) / 'ts.png').stat().st_size > 10000), 1, 0, True)


TESTS = [T01_poisson_convention, T02_ply_rotation, T03_hand_check, T04_90_0, T05_L1_L4, T06_other_layups,
         T07_merged_vs_per_ply_large_deflection, T08_smoke_strip, T09_al_plate_1mm, T10_flat_linear_5mm,
         T11_large_deflection_10mm, T12_large_deflection_5mm, T13_curved_strip, T14_pure_moment,
         T15_tip_load_laminate, T16_orientation_on_curved_facets, T17_failure_unit, T18_failure_vs_clt,
         T19_case_file_and_viewer]
SLOW = {'T09', 'T12'}


def main():
    ap = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument('--full', action='store_true')
    ap.add_argument('--only', nargs='+')
    ap.add_argument('--log')
    a = ap.parse_args()
    buf = io.StringIO()

    class Tee:
        def write(self, s):
            sys.__stdout__.write(s)
            buf.write(s)

        def flush(self):
            sys.__stdout__.flush()

    sys.stdout = Tee()
    t_all = time.perf_counter()
    for t in TESTS:
        code = t.__name__[:3]
        if a.only and code not in a.only:
            continue
        if not a.only and code in SLOW and not a.full:
            print(f'\n{t.__name__}: skipped (slow; use --full)')
            continue
        CURRENT[0] = code
        print(f'\n{t.__name__}: {t.__doc__.strip().splitlines()[0]}')
        t0 = time.perf_counter()
        try:
            t()
        except Exception as e:                      # record and go on
            RECORD.append((code, f'EXCEPTION {type(e).__name__}: {e}', 0, 0, 0, 0, False))
            print(f'  [FAIL] exception: {type(e).__name__}: {e}')
        print(f'  ({time.perf_counter() - t0:.1f} s)')
    ops.wipe()
    n_fail = sum(not r[-1] for r in RECORD)
    print(f'\n{len(RECORD)} checks, {len(RECORD) - n_fail} passed, {n_fail} failed '
          f'({time.perf_counter() - t_all:.0f} s)')
    for r in RECORD:
        if not r[-1]:
            print(f'  FAILED {r[0]} {r[1]}: got {r[2]:.6g}, ref {r[3]:.6g}, err {r[4]:.2e}, tol {r[5]:.0e}')
    sys.stdout = sys.__stdout__
    if a.log:
        Path(a.log).write_text(buf.getvalue(), encoding='utf-8')
    raise SystemExit(1 if n_fail else 0)


if __name__ == '__main__':
    main()
