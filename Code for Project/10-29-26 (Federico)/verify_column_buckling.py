"""
Step 2 of the buckling study: check the OpenSeesPy buckling methods of the
shell-buckling skill on columns with analytical answers.

Part 1  Al strip 500 x 10 x 1 mm (E = 70 GPa, nu = 0.3) loaded through rigid
        ends, four end conditions: Euler P = pi^2 E I / (K L)^2.
Part 2  CuBe tape spring (Seffen & Pellegrino 1999 section: R = 13.3 mm,
        alpha = 1.85 rad, t = 0.1 mm, E = 131 GPa, nu = 0.3) with fork
        supports (end sections held in their plane, warping free): flexural
        and flexural-torsional buckling of a thin-walled open section
        (Timoshenko & Gere), L = 300 mm (torsional-flexural) and 1200 mm
        (flexural).
Methods: stability path (nonlinear path + lowest eigenvalue of K_T, load
control) and LBA (linear pre-buckling), ShellNLDKGQ, two meshes each.

    python verify_column_buckling.py  [--quick]
Writes results/column_buckling.json and prints a table.
"""
import json
import math
import sys
import time
from pathlib import Path

HERE = Path(__file__).resolve().parent
SK = HERE.parents[1] / '.claude' / 'skills'
for d in ('laminate-properties', 'shell-mesh', 'shell-bc-load', 'shell-buckling'):
    sys.path.insert(0, str(SK / d))
import numpy as np                         # noqa: E402
import openseespy.opensees as ops          # noqa: E402
import laminate_properties as lp           # noqa: E402
import shell_mesh as sm                    # noqa: E402
import shell_bc_load as bc                 # noqa: E402
import shell_buckling as sb                # noqa: E402

QUICK = '--quick' in sys.argv

# ---- Part 1: strip column, rigid ends ------------------------------------------------------
L1, B1, T1, E1, NU1 = 500.0, 10.0, 1.0, 70000.0, 0.3
EI1 = E1 * B1 * T1**3 / 12
END = {   # name: (fix of master at x0, fix of master at xL, K)
    'pinned-pinned':   ((1, 1, 1, 1, 0, 0), (0, 1, 1, 1, 0, 0), 1.0),
    'clamped-free':    ((1, 1, 1, 1, 1, 1), (0, 0, 0, 0, 0, 0), 2.0),
    'clamped-clamped': ((1, 1, 1, 1, 1, 1), (0, 1, 1, 1, 1, 1), 0.5),
    'clamped-pinned':  ((1, 1, 1, 1, 1, 1), (0, 1, 1, 1, 0, 0), 0.69915),   # 20.19 EI / L^2
}


def strip_builder(ends, size):
    fa, fb, _ = END[ends]

    def build():
        mesh = sm.ShellMesh(L1, sm.CrossSection.flat(B1), size)
        sb.build_shell(mesh, lp.Laminate.isotropic(E1, NU1, T1), 'ShellNLDKGQ')
        a, b = bc.rigid_end(mesh, 'x0'), bc.rigid_end(mesh, 'xL')
        ops.fix(a, *fa)
        if any(fb):
            ops.fix(b, *fb)
        bc.point_load(b, (-1.0, 0, 0))          # reference load 1 N, compression
        return mesh
    return build


# ---- Part 2: tape spring column, fork supports -------------------------------------------
R2, AL2, T2, E2, NU2 = 13.3, 1.85, 0.1, 131000.0, 0.3
B2 = R2 * AL2


def tape_builder(L, size, element='ShellNLDKGQ', imperfection=None, amplitude=0.0):
    def build():
        mesh = sm.ShellMesh(L, sm.CrossSection.arc(R2, B2), size)
        sb.build_shell(mesh, lp.Laminate.isotropic(E2, NU2, T2), element, imperfection, amplitude)
        for e in ('x0', 'xL'):
            bc.fix_edge(mesh, e, (0, 1, 1, 0, 0, 0))   # section held in its plane, warping free
        ops.fix(mesh.node_tag(0, mesh.ny // 2), 1, 0, 0, 0, 0, 0)
        bc.edge_load(mesh, 'x0', (1.0, 0, 0))           # equal and opposite 1 N end loads
        bc.edge_load(mesh, 'xL', (-1.0, 0, 0))
        return mesh
    return build


def mode_kind(mesh, mode):
    """Rough classification of a column mode at mid-length: twist vs translation."""
    i = mesh.nx // 2
    u = np.array([mode[mesh.node_tag(i, j)] for j in range(mesh.ny + 1)])
    trans = np.abs(u.mean(axis=0))
    rot = np.ptp(u[:, 1]) + np.ptp(u[:, 2])
    return f'mean (uy, uz) = ({trans[1]:.2f}, {trans[2]:.2f}), spread {rot:.2f}'


def run(label, build, P_ref, step_frac=0.35):
    out = {}
    t0 = time.perf_counter()
    mesh = build()
    r = sb.stability_path({'type': 'load'}, step_frac * P_ref, max_steps=60, n_eig=3, verbose=False)
    c = r['critical']
    out['path'] = c['load_factor'] if c else float('nan')
    out['path_steps'] = int(r['history'].shape[0] - 1)
    out['mode'] = mode_kind(mesh, c['mode']) if c else ''
    t1 = time.perf_counter()
    out['dofs'] = 6 * len(ops.getNodeTags())
    lam = sb.lba(build, 1e-3 * P_ref, verbose=False)[0] if out['dofs'] <= 6000 else float('nan')
    out['lba'] = lam
    out['t_path'], out['t_lba'] = t1 - t0, time.perf_counter() - t1
    out['dofs'] = 6 * len(ops.getNodeTags())
    out['ref'] = P_ref
    print(f'{label:42s} ref {P_ref:9.4f} | path {out["path"]:9.4f} ({100 * (out["path"] / P_ref - 1):+6.2f}%) '
          f'| LBA {lam:9.4f} ({100 * (lam / P_ref - 1):+6.2f}%) | {out["dofs"]} DOFs, '
          f'{out["t_path"]:.0f} + {out["t_lba"]:.0f} s | {out["mode"]}', flush=True)
    return out


def main():
    res = {}
    print('Part 1: Al strip column 500 x 10 x 1 mm, rigid ends, Euler P = pi^2 E I / (K L)^2, I = b t^3 / 12')
    for ends, (_, _, K) in END.items():
        P = math.pi**2 * EI1 / (K * L1)**2
        for size in ((5.0,) if QUICK else (10.0, 5.0)):
            res[f'strip {ends} h={size:g}'] = run(f'strip {ends}, element {size:g} mm', strip_builder(ends, size), P)
    print('  (plate-strip bound with D = E t^3 / 12(1 - nu^2): +9.9%)')

    print('\nPart 2: CuBe tape spring column, fork supports (Timoshenko & Gere thin-walled theory)')
    G2 = E2 / (2 * (1 + NU2))
    props = sb.section_properties(sb.section_points(sm.CrossSection.arc(R2, B2)), T2)
    cf = sb.arc_closed_form(R2, B2, T2)
    print(f'  section: A {props["A"]:.4f} mm^2, I (z-defl.) {props["Iyy"]:.4f}, I (y-defl.) {props["Izz"]:.3f} mm^4, '
          f'J {props["J"]:.5f} mm^4, Cw {props["Cw"]:.3f} mm^6 (closed form {cf["Cw"]:.3f}), '
          f'shear centre {R2 - props["zs"]:.4f} mm from arc centre (closed form {cf["e"]:.4f})')
    for L, sizes in ((300.0, (2.0, 1.25)), (1200.0, (5.0, 2.5))):
        cb = sb.column_buckling(props, E2, G2, L)
        print(f'  L = {L:g}: flexural (z) {cb["P_v"]:.4f} N, torsional {cb["P_phi"]:.4f} N, '
              f'flexural-torsional {cb["P_coupled"][0]:.4f} N -> P_cr = {cb["P_cr"]:.4f} N')
        for size in (sizes[:1] if QUICK else sizes):
            res[f'tape L={L:g} h={size:g}'] = run(f'tape spring L = {L:g}, element {size:g} mm',
                                                  tape_builder(L, size), cb['P_cr'])
    (HERE / 'results').mkdir(exist_ok=True)
    (HERE / 'results' / 'column_buckling.json').write_text(json.dumps(res, indent=1))


if __name__ == '__main__':
    main()
