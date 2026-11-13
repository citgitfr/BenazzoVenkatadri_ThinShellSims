"""
Coarse-mesh buckling modes as imperfection seeds (test, 11/12/26, Federico + Claude).

Question: can the expensive step A (ShellNLDKGQ stability scan on the full mesh, hours on the
omega boom) be replaced by a classical linear buckling analysis (dense K0 / Kg, <= 8000 DOFs) on
a coarsened mesh, with the mode interpolated onto the fine part-B mesh? Measured here:
  - MAC between the interpolated coarse mode and a reference mode on the fine mesh,
  - the part-B strength with each seed (boom_buckling.py --only B, production settings),
  - wall-clock times.

Nothing in .claude/ is changed: the skill code is imported (boom_buckling, shell_buckling,
shell_mesh) and the model builder of boom_buckling.build_case is reproduced with two extra
mesh controls (element length along x, length / ends override for a short segment).
Units N, mm, MPa.
"""
import os
for _v in ('OMP_NUM_THREADS', 'OPENBLAS_NUM_THREADS', 'MKL_NUM_THREADS'):
    os.environ.setdefault(_v, '8')          # dense LBA: 8 BLAS threads (shared server)
import json
import math
import sys
import time
from pathlib import Path

import numpy as np

REPO = Path(__file__).resolve().parents[3]
SKILLS = REPO / '.claude' / 'skills'
sys.path.insert(0, str(SKILLS / 'shell-buckling'))
import boom_buckling as bb          # noqa: E402  (adds laminate-properties, shell-mesh, shell-bc-load)
import openseespy.opensees as ops   # noqa: E402

sb, sm = bb.sb, bb.sm
MAX_DOFS = 8000


# --- model ------------------------------------------------------------------------------------

def build(case, element, size=None, size_x=None, L=None, load=None, imperfection=None, amplitude=0.0,
          lam=None):
    """boom_buckling.build_case with mesh controls: size = element size around the section
    (default case size), size_x = element length along x (default = size), L / load = override
    (short segment). Returns (mesh, control dict)."""
    lam = lam or bb.laminate_of(case['laminate'])
    g = case['geometry']
    L = L or g['L']
    size = size or g['size']
    mesh = sm.ShellMesh(L, sm.CrossSection.from_spec(g['section']), size)
    if size_x:
        mesh.nx = max(1, round(L / size_x))
    sb.build_shell(mesh, lam, element, imperfection, amplitude)
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
    mesh.lam = lam
    return mesh, {'type': 'disp', 'node': tip, 'dof': dof}


def grid_nodes(mesh):
    return [mesh.node_tag(i, j) for j in range(mesh.ny + 1) for i in range(mesh.nx + 1)]


def n_dofs(mesh):
    return 6 * ((mesh.nx + 1) * (mesh.ny + 1) + 2)


def coarse_size_x(case, size, max_dofs=MAX_DOFS, L=None):
    """Element length along x that keeps the model under max_dofs for section element size `size`."""
    L = L or case['geometry']['L']
    m = sm.ShellMesh(L, sm.CrossSection.from_spec(case['geometry']['section']), size)
    lines = m.ny + 1
    nx = max(1, max_dofs // 6 // lines - 1 - 1)
    return L / nx, lines, nx


# --- dense linear buckling with eigenvectors ----------------------------------------------------

def dense_lba(case, lam_small, n_modes=4, lam=None, **mesh_kw):
    """Classical LBA (K0 phi = -lam Kg phi, Kg by finite difference of the ShellNLDKGQ tangent
    between load factors 0 and lam_small) on the given mesh. Returns dict(lam (load factors),
    modes [{node: (ux, uy, uz)}], mesh, ndof, times)."""
    import scipy.linalg as sl
    t0 = time.perf_counter()
    mesh, _ = build(case, 'ShellNLDKGQ', lam=lam, **mesh_kw)
    if n_dofs(mesh) > MAX_DOFS + 60:
        raise ValueError(f'{n_dofs(mesh)} DOFs > {MAX_DOFS}')
    K0 = sb._dense_tangent(0.0)
    t1 = time.perf_counter()
    mesh, _ = build(case, 'ShellNLDKGQ', lam=lam, **mesh_kw)
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
    return dict(lam=lam_cr, modes=modes, mesh=mesh, ndof=n,
                times=dict(K0=t1 - t0, K1=t2 - t1, eig=t3 - t2, total=t3 - t0))


def scan_mode(case, step, max_param, lam=None, n_coarse=8, n_refine=5, max_iter=10, **mesh_kw):
    """Production-style step A (serial stability_scan, ARPACK) on the given mesh: critical load and mode."""
    t0 = time.perf_counter()
    holder = {}

    def b():
        mesh, ctrl = build(case, 'ShellNLDKGQ', lam=lam, **mesh_kw)
        holder['mesh'] = mesh
        return ctrl
    r = sb.stability_scan(b, step, max_param, n_coarse=n_coarse, n_refine=n_refine, tol=1e-6, max_iter=max_iter,
                          verbose=False)
    mesh = holder['mesh']
    mode = r['mode']
    mode = {n: v for n, v in mode.items() if n in set(grid_nodes(mesh))} if mode else None
    ops.wipe()
    return dict(load=None if r['load_factor'] is None else abs(r['load_factor']), mode=mode, mesh=mesh,
                ndof=n_dofs(mesh), time=time.perf_counter() - t0, evaluations=r['evaluations'])


# --- mode transfer -----------------------------------------------------------------------------

def mesh_only(case, size=None, size_x=None, L=None):
    """The ShellMesh object (no OpenSees model) for node bookkeeping."""
    g = case['geometry']
    mesh = sm.ShellMesh(L or g['L'], sm.CrossSection.from_spec(g['section']), size or g['size'])
    if size_x:
        mesh.nx = max(1, round((L or g['L']) / size_x))
    return mesh


def as_grid(mesh, mode):
    """{node: vec} -> array V[j, i, 3] on the mesh grid."""
    V = np.zeros((mesh.ny + 1, mesh.nx + 1, 3))
    for j in range(mesh.ny + 1):
        for i in range(mesh.nx + 1):
            V[j, i] = mode.get(mesh.node_tag(i, j), 0.0)
    return V


def map_mode(src_mesh, src_mode, tgt_mesh, tile=False):
    """Interpolate a mode from src_mesh onto tgt_mesh (same cross-section): each target node line is
    projected onto the nearest source strip in the y-z plane (linear between its two lines), and x is
    interpolated linearly between source stations. tile=True: the source is a short segment whose ends
    are rigid (zero mode there); it is repeated n = round(L_tgt / L_src) times along the target, each
    copy stretched to L_tgt / n. Returns {node: vec} on the target grid, max |translation| = 1."""
    S = as_grid(src_mesh, src_mode)
    P = np.array([q[2] for q in src_mesh._line])
    strips = [(a, c) for a, c, *_ in src_mesh.strips]
    xs = np.linspace(0, src_mesh.L, src_mesh.nx + 1)
    n_tile = max(1, round(tgt_mesh.L / src_mesh.L)) if tile else 1
    out = {}
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
            v = (1 - w) * ((1 - t) * S[a, k] + t * S[c, k]) + w * ((1 - t) * S[a, k + 1] + t * S[c, k + 1])
            out[tgt_mesh.node_tag(i, j)] = v
    m = max(np.linalg.norm(v) for v in out.values()) or 1.0
    return {n: v / m for n, v in out.items()}


def abaqus_mode(csv, tgt_mesh):
    """Abaqus LBA mode CSV (label,x,y,z,ux,uy,uz) -> {node: vec} on tgt_mesh by nearest node.
    Returns (mode, max node distance)."""
    from scipy.spatial import cKDTree
    a = np.loadtxt(csv, delimiter=',', comments='#', skiprows=2)
    tree = cKDTree(a[:, 1:4])
    nodes, X = [], []
    for j in range(tgt_mesh.ny + 1):
        for i in range(tgt_mesh.nx + 1):
            nodes.append(tgt_mesh.node_tag(i, j))
            X.append(tgt_mesh.coords(i, j))
    d, k = tree.query(np.array(X))
    U = a[k, 4:7]
    m = np.linalg.norm(U, axis=1).max() or 1.0
    return {n: U[q] / m for q, n in enumerate(nodes)}, float(d.max())


def combine(modes, weights=None):
    """Sum of modes (each normalized to max translation 1), result renormalized to 1."""
    weights = weights or [1.0] * len(modes)
    keys = modes[0].keys()
    out = {n: sum(w * np.asarray(m[n]) for w, m in zip(weights, modes)) for n in keys}
    s = max(np.linalg.norm(v) for v in out.values()) or 1.0
    return {n: v / s for n, v in out.items()}


def mac(a, b):
    """Modal assurance criterion of two {node: vec} modes on the same nodes (translations)."""
    keys = sorted(set(a) & set(b))
    A = np.concatenate([np.asarray(a[k], float) for k in keys])
    B = np.concatenate([np.asarray(b[k], float) for k in keys])
    return float((A @ B) ** 2 / ((A @ A) * (B @ B)))


def save_mode(path, mode):
    np.savez(path, nodes=np.array(list(mode)), vec=np.array([np.asarray(v, float) for v in mode.values()]))


def load_mode(path):
    f = np.load(path)
    return {int(n): np.asarray(v, float) for n, v in zip(f['nodes'], f['vec'])}


def surrogate_0_90(lam_json, out):
    """Production rule (study.py run_buckling): |theta| < 45 -> 0, else 90."""
    d = json.loads(Path(lam_json).read_text())
    for p in d.get('plies', []):
        p['theta'] = 0.0 if abs(p['theta']) % 180 < 45 or abs(p['theta']) % 180 > 135 else 90.0
    Path(out).write_text(json.dumps(d, indent=1))
    return out


def jdump(path, obj):
    def conv(o):
        if isinstance(o, (np.floating, np.integer)):
            return o.item()
        if isinstance(o, np.ndarray):
            return o.tolist()
        return str(o)
    Path(path).write_text(json.dumps(obj, indent=1, default=conv))
