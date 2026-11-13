"""
Cheap buckling-mode seed for path B (replaces step A in the study's fast pipeline, 11/13/26).

    python segment_mode.py <B case.json> --out <mode.npz> [--json info.json] [--ref-load P]
                           [--laminate lam_0_90.json] [--euler P_E --scan-max X]

What it does:
  1. Builds a model of at most 8000 DOFs with ShellNLDKGQ:
       - the whole member, if it fits at 4 mm around the section x 4 mm along x (or 4 x 8 mm);
         it gets the case's own load;
       - otherwise a short SEGMENT at 4 x 8 mm, as long as fits in 8000 DOFs. Its rigid ends are
         clamped in compression; under bending it gets the case's bending load.
  2. Runs a dense classical linear buckling analysis on it (K0 phi = -lam Kg phi). Kg comes from a
     finite difference of the ShellNLDKGQ tangent between load factor 0 and lam_small = 1e-3 x
     ref-load. Typical cost: 50-90 s.
  3. Maps mode 1 onto the mesh of the B case (the segment mode is repeated along the length).
  4. Optional global check (--euler): if the member's Euler load is below the segment's lowest
     critical load, a global mode is likely. Then a coarse nonlinear stability scan (sb.stability_scan,
     ShellNLDKGQ, full length, <= 8000 DOFs, max_iter 30) also runs (about 20 min on a 1 m tape).
     Its mode is mapped and added to the segment mode.
Writes the mode (nodes / vec, the boom_buckling mode_file format; max |translation| = 1) and an info
JSON (method, mesh, load factors, times).

ShellNLDKGQ takes 0/90 plies only: pass --laminate with a 0/90 surrogate for off-axis layups. The
seed is only a shape; path B uses the true laminate.

Validation (Code for Project/11-12-26 (Federico)/coarse_mode_study, SUMMARY.md):
  - The B result is insensitive to the seed shape at amplitude t/10: within 0.2% over 10 runs on 3
    cases, even with a wrong mode (MAC 0).
  - On the omega M008 boom the segment gives the local mode family of the Abaqus LBA (35.7 vs 38.5 mm
    half-wave) in 80 s; the old step A took 6.7 h.
  - On the 1 m tape the coarse scan reproduces the step-A mode (MAC 1.000) in 1104 s vs 12097 s.
  - Known limitation: a dense LBA of the WHOLE member on a coarsened mesh (elements > ~8 mm along x)
    returns spurious element-scale / free-edge modes. That is why long members use a segment.
Units N, mm, MPa.
"""
import os
for _v in ('OMP_NUM_THREADS', 'OPENBLAS_NUM_THREADS', 'MKL_NUM_THREADS'):
    os.environ.setdefault(_v, '8')          # dense eigen-solve: 8 BLAS threads (shared server)
import argparse
import json
import math
import sys
import time
from pathlib import Path

import numpy as np

sys.path.insert(0, str(Path(__file__).resolve().parent))
import boom_buckling as bb          # noqa: E402  (adds laminate-properties, shell-mesh, shell-bc-load)
import openseespy.opensees as ops   # noqa: E402

sb, sm = bb.sb, bb.sm
MAX_DOFS = 8000
SEG_SIZE = 4.0          # element size around the section [mm]
SEG_SIZE_X = 8.0        # element length along x in a segment [mm]
LAM_SMALL = 1e-3        # finite-difference load factor for Kg, as a fraction of the reference load


def build(case, element, lam, size, size_x=None, L=None, load=None):
    """boom_buckling.build_case with an element length along x and a length / load override."""
    g = case['geometry']
    L = L or g['L']
    mesh = sm.ShellMesh(L, sm.CrossSection.from_spec(g['section']), size)
    if size_x:
        mesh.nx = max(1, round(L / size_x))
    sb.build_shell(mesh, lam, element, None, 0.0)
    E = max(m['E1'] for m in lam.materials)
    root, tip = sb.rigid_end(mesh, 'x0', E, lam.h), sb.rigid_end(mesh, 'xL', E, lam.h)
    ld = load or case['load']
    ops.timeSeries('Linear', 1)
    ops.pattern('Plain', 1, 1)
    if ld['type'] == 'bending':
        ops.fix(root, 1, 1, 1, 1, 1, 1)
        if ld.get('axis', 'y') == 'y':
            ops.fix(tip, 0, 1, 0, 1, 0, 1)
            ops.load(tip, 0, 0, 0, 0, ld.get('sign', 1.0), 0)
            dof = 5
        else:
            ops.fix(tip, 0, 0, 1, 1, 1, 0)
            ops.load(tip, 0, 0, 0, 0, 0, ld.get('sign', 1.0))
            dof = 6
    elif ld['type'] == 'compression' and ld.get('ends') == 'free_tip':
        ops.fix(root, 1, 1, 1, 1, 1, 1)
        ops.fix(tip, 0, 0, 0, 1, 0, 0)
        ops.load(tip, -1.0, 0, 0, 0, 0, 0)
        dof = 1
    elif ld['type'] == 'compression':
        pinned = ld.get('ends', 'clamped') == 'pinned'
        ops.fix(root, 1, 1, 1, 1, *((0, 0) if pinned else (1, 1)))
        ops.fix(tip, 0, 1, 1, 1, *((0, 0) if pinned else (1, 1)))
        ops.load(tip, -1.0, 0, 0, 0, 0, 0)
        dof = 1
    else:
        raise ValueError(ld['type'])
    return mesh, {'type': 'disp', 'node': tip, 'dof': dof}


def mesh_only(case, size=None, size_x=None, L=None):
    g = case['geometry']
    mesh = sm.ShellMesh(L or g['L'], sm.CrossSection.from_spec(g['section']), size or g['size'])
    if size_x:
        mesh.nx = max(1, round((L or g['L']) / size_x))
    return mesh


def grid_nodes(mesh):
    return [mesh.node_tag(i, j) for j in range(mesh.ny + 1) for i in range(mesh.nx + 1)]


def n_dofs(mesh):
    return 6 * ((mesh.nx + 1) * (mesh.ny + 1) + 2)


def choose_model(case):
    """(L, size_x, load, tile, label) of the seed model: whole member if it fits, else a segment."""
    L = case['geometry']['L']
    for sx in (SEG_SIZE, SEG_SIZE_X):
        if n_dofs(mesh_only(case, SEG_SIZE, sx)) <= MAX_DOFS:
            return L, sx, case['load'], False, f'whole member {SEG_SIZE:g} x {sx:g} mm'
    lines = mesh_only(case, SEG_SIZE, SEG_SIZE_X, L=100.0).ny + 1
    nx = max(4, MAX_DOFS // 6 // lines - 2)
    Ls = SEG_SIZE_X * nx
    ld = case['load'] if case['load']['type'] == 'bending' else {'type': 'compression', 'ends': 'clamped'}
    return Ls, SEG_SIZE_X, ld, True, f'segment L {Ls:g} mm, {SEG_SIZE:g} x {SEG_SIZE_X:g} mm, tiled'


def dense_lba(case, lam, lam_small, n_modes=4, **kw):
    """Classical LBA with eigenvectors on a <= MAX_DOFS model. Returns dict(lam, modes, mesh, ndof, times)."""
    import scipy.linalg as sl
    t0 = time.perf_counter()
    mesh, _ = build(case, 'ShellNLDKGQ', lam, SEG_SIZE, **kw)
    if n_dofs(mesh) > MAX_DOFS + 60:
        raise ValueError(f'{n_dofs(mesh)} DOFs > {MAX_DOFS}')
    K0 = sb._dense_tangent(0.0)
    t1 = time.perf_counter()
    mesh, _ = build(case, 'ShellNLDKGQ', lam, SEG_SIZE, **kw)
    K1 = sb._dense_tangent(lam_small)
    nodes = grid_nodes(mesh)
    eqs = {n: ops.nodeDOFs(n)[:3] for n in nodes}
    t2 = time.perf_counter()
    Kg = (K1 - K0) / lam_small
    K0, Kg = (K0 + K0.T) / 2, (Kg + Kg.T) / 2
    n = K0.shape[0]
    k = min(n, max(3 * n_modes, 12))
    mu, V = sl.eigh(-Kg, K0, subset_by_index=[n - k, n - 1])     # largest mu = smallest positive lam
    order = np.argsort(-mu)
    mu, V = mu[order], V[:, order]
    keep = mu > 1e-12 * np.abs(mu).max()
    lam_cr, V = 1.0 / mu[keep][:n_modes], V[:, keep][:, :n_modes]
    t3 = time.perf_counter()
    modes = []
    for q in range(V.shape[1]):
        md = {nd: np.array([V[e, q] if e >= 0 else 0.0 for e in eqs[nd]]) for nd in nodes}
        m = max(np.linalg.norm(v) for v in md.values()) or 1.0
        modes.append({nd: v / m for nd, v in md.items()})
    ops.wipe()
    return dict(lam=[float(x) for x in lam_cr], modes=modes, mesh=mesh, ndof=n,
                times=dict(K0=t1 - t0, K1=t2 - t1, eig=t3 - t2, total=t3 - t0))


def coarse_scan(case, lam, scan_max, max_iter=30):
    """Nonlinear stability scan (ShellNLDKGQ, ARPACK) of the whole member on <= MAX_DOFS (global mode)."""
    t0 = time.perf_counter()
    lines = mesh_only(case, SEG_SIZE, L=100.0).ny + 1
    size = SEG_SIZE
    while lines * 4 * 6 > MAX_DOFS and size < 50:           # very wide sections: coarsen around the section too
        size *= 1.25
        lines = mesh_only(case, size, L=100.0).ny + 1
    nx = max(4, MAX_DOFS // 6 // lines - 2)
    sx = case['geometry']['L'] / nx
    sgn = bb._sign(case['load'].get('sign', 1.0)) if case['load']['type'] == 'bending' else -1.0
    holder = {}

    def b():
        mesh, ctrl = build(case, 'ShellNLDKGQ', lam, size, size_x=sx)
        holder['mesh'] = mesh
        return ctrl
    r = sb.stability_scan(b, sgn * scan_max / 60, sgn * scan_max, n_coarse=8, n_refine=5, tol=1e-6,
                          max_iter=max_iter, verbose=False)
    mesh = holder['mesh']
    gn = set(grid_nodes(mesh))
    mode = {n: np.asarray(v, float)[:3] for n, v in r['mode'].items() if n in gn} if r['mode'] else None
    ops.wipe()
    return dict(load=None if r['load_factor'] is None else abs(r['load_factor']), mode=mode, mesh=mesh,
                ndof=n_dofs(mesh), size=size, size_x=sx, time=time.perf_counter() - t0)


def map_mode(src_mesh, src_mode, tgt_mesh, tile=False):
    """Interpolate a mode from src_mesh onto tgt_mesh (same cross-section): each target node line is
    projected onto the nearest source strip in the y-z plane (linear between its two lines), x linearly
    between source stations. tile=True: the source is a segment with rigid ends, repeated
    n = round(L_tgt / L_src) times along the target. Returns {node: vec}, max |translation| = 1."""
    S = np.zeros((src_mesh.ny + 1, src_mesh.nx + 1, 3))
    for j in range(src_mesh.ny + 1):
        for i in range(src_mesh.nx + 1):
            S[j, i] = src_mode.get(src_mesh.node_tag(i, j), 0.0)
    P = np.array([q[2] for q in src_mesh._line])
    strips = [(a, c) for a, c, *_ in src_mesh.strips]
    xs = np.linspace(0, src_mesh.L, src_mesh.nx + 1)
    n_tile = max(1, round(tgt_mesh.L / src_mesh.L)) if tile else 1
    lines = []
    for j in range(tgt_mesh.ny + 1):
        p = np.array(tgt_mesh._line[j][2])
        best = None
        for a, c in strips:
            d = P[c] - P[a]
            t = float(np.clip((p - P[a]) @ d / (d @ d), 0, 1)) if d @ d > 0 else 0.0
            dist = np.linalg.norm(P[a] + t * d - p)
            if best is None or dist < best[0]:
                best = (dist, a, c, t)
        lines.append(best)
    out = {}
    for i in range(tgt_mesh.nx + 1):
        x = i * tgt_mesh.L / tgt_mesh.nx
        if tile:
            u = x / tgt_mesh.L * n_tile
            u = u - math.floor(u) if i < tgt_mesh.nx else 1.0
            x = u * src_mesh.L
        x = min(max(x, 0.0), src_mesh.L)
        k = min(int(np.searchsorted(xs, x, side='right')) - 1, src_mesh.nx - 1)
        w = (x - xs[k]) / (xs[k + 1] - xs[k])
        for j, (_, a, c, t) in enumerate(lines):
            out[tgt_mesh.node_tag(i, j)] = (1 - w) * ((1 - t) * S[a, k] + t * S[c, k]) + \
                w * ((1 - t) * S[a, k + 1] + t * S[c, k + 1])
    m = max(np.linalg.norm(v) for v in out.values()) or 1.0
    return {n: v / m for n, v in out.items()}


def combine(modes):
    out = {n: sum(np.asarray(m[n]) for m in modes) for n in modes[0]}
    s = max(np.linalg.norm(v) for v in out.values()) or 1.0
    return {n: v / s for n, v in out.items()}


def seed(case, ref_load, laminate=None, euler=None, scan_max=None):
    """The seed mode on the B-case mesh and an info dict."""
    lam = bb.laminate_of(laminate or case['laminate'])
    L, sx, ld, tile, label = choose_model(case)
    tgt = mesh_only(case)
    r = dense_lba(case, lam, LAM_SMALL * ref_load, L=L, size_x=sx, load=ld)
    mode = map_mode(r['mesh'], r['modes'][0], tgt, tile=tile)
    info = dict(method='segment LBA' if tile else 'whole-member LBA', model=label, ndof=r['ndof'],
                lam=r['lam'], lam_small=LAM_SMALL * ref_load, times=r['times'], time=r['times']['total'],
                target_dofs=n_dofs(tgt))
    print(f'seed LBA ({label}, {r["ndof"]} equations): load factors {np.round(r["lam"], 4).tolist()}; '
          f'{r["times"]["total"]:.0f} s', flush=True)
    if euler and scan_max and r['lam'] and euler < r['lam'][0]:
        s = coarse_scan(case, lam, scan_max)
        info.update(global_scan=dict(load=s['load'], ndof=s['ndof'], size=s['size'], size_x=s['size_x'],
                                     time=s['time'], euler=euler))
        info['time'] += s['time']
        print(f'global check: Euler {euler:.5g} < segment {r["lam"][0]:.5g} -> coarse nonlinear scan '
              f'({s["ndof"]} DOFs): critical {s["load"]}; {s["time"]:.0f} s', flush=True)
        if s['mode']:
            mode = combine([map_mode(s['mesh'], s['mode'], tgt), mode])
            info['method'] += ' + coarse global scan'
    elif euler:
        info['global_scan'] = dict(skipped=f'Euler {euler:.5g} >= segment {r["lam"][0]:.5g}' if r['lam']
                                   else 'no positive LBA factor')
    return mode, info


def main():
    ap = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument('case', help='boom_buckling case of path B (its geometry size = the B mesh)')
    ap.add_argument('--out', required=True, help='mode .npz to write')
    ap.add_argument('--json', default=None, help='info JSON to write')
    ap.add_argument('--ref-load', type=float, required=True,
                    help='load scale (required or estimated buckling load, N or N mm) for lam_small')
    ap.add_argument('--laminate', default=None, help='0/90 laminate JSON for ShellNLDKGQ (off-axis layups)')
    ap.add_argument('--euler', type=float, default=None, help='Euler load of the member (global check)')
    ap.add_argument('--scan-max', type=float, default=None, help='range of the global scan (end shortening)')
    a = ap.parse_args()
    case = json.loads(Path(a.case).read_text())
    mode, info = seed(case, a.ref_load, {'json': a.laminate} if a.laminate else None, a.euler, a.scan_max)
    np.savez(a.out, nodes=np.array(list(mode)), vec=np.array([np.asarray(v, float) for v in mode.values()]))
    if a.json:
        Path(a.json).write_text(json.dumps(info, indent=1, default=float))
    print(f'seed: {info["method"]}, {info["time"]:.0f} s -> {a.out}')


if __name__ == '__main__':
    main()
