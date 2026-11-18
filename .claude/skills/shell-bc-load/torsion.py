"""
Torsion references for the shell-bc-load skill (the torsion counterpart of
elastica.py): torsional stiffness of a shell-mesh cross-section and the
closed-form twist of a cantilever (root clamped, torque T at x = L), linear
and large-twist (Wagner). Units N, mm, MPa. Stiffness form, so laminates work:
per wall segment A66 (membrane shear), D66 (twisting), Ex_t = 1 / a11
(membrane stiffness along x per width, = E t for an isotropic wall).

  GJ_open  = sum 4 D66 l                      (St Venant, open walls; = G l t^3 / 3)
  GJ_bredt = 4 A_c^2 / sum(l / A66)           (single closed cell, Bredt; = 4 A^2 t G / perimeter)
  E Cw     = Ex_t-weighted warping constant (open chain, about the shear centre)
  E dI     = sum Ex_t int (r^2 - I_p/A)^2 ds = Ex_t (I_rr - I_p^2/A)   (Wagner, about the twist axis)

Linear twist (small rotations):
  St Venant (free warping)          phi_L = T L / GJ
  Vlasov, root warping restrained:  phi_L = T/GJ (L - tanh(kL)/k)        tip free to warp (torque on the edge)
                                    phi_L = T/GJ (L - 2 tanh(kL/2)/k)    tip warping restrained (rigid end)
  k = sqrt(GJ / E Cw); closed cells: warping negligible, phi_L = T L / GJ.
Large twist, uniform twist rate theta, no axial force (Wagner; Timoshenko &
Gere, Theory of Elastic Stability, Sec. 5.7; Cullimore 1949):
  T = GJ theta + (E dI / 2) theta^3
The linear regime ends where the cubic term matters:
  wagner_ratio = E dI theta^2 / (2 GJ)  (> ~0.02: run the nonlinear analysis).
For the clamped cantilever the twist rate is not uniform (warping zones);
wagner_tip() uses theta = phi_L / L_eff with the Vlasov effective length
L_eff = phi_L,linear GJ / T: a rough estimate (overstates the stiffening).

Verified (11-17-26): M008 omega Bredt vs linear FE 0.00% (2.5 mm); R001 TRAC
Vlasov vs linear FE +0.03% (rigid end) / +0.8% (edge torque, 1.25 mm); flat
strip Wagner vs nonlinear FE (regression-tests T26).
"""
import math

import numpy as np

_G3 = (np.array([-math.sqrt(0.6), 0.0, math.sqrt(0.6)]) + 1) / 2, np.array([5, 8, 5]) / 18   # Gauss, exact deg 5


def wall_stiffness(laminate):
    """(A66, D66, Ex_t) of a laminate (laminate_properties.Laminate)."""
    abd = laminate.abd()
    return abd[2, 2], abd[5, 5], 1.0 / np.linalg.inv(abd[:3, :3])[0, 0]


def section_segments(mesh, n_per_piece=100):
    """Wall segments of the exact cross-section (the shell-mesh section's own
    arcs and lines, n_per_piece segments per piece, not the facet chords):
    list of (pa, pb, label, A66, D66, Ex_t), pa/pb = (y, z); web branches use
    mesh.web_laminate (set by shell_mesh.build_model), others mesh.laminate."""
    stiff = {'flange': wall_stiffness(mesh.laminate)}
    if getattr(mesh, 'web_laminate', None) is not None:
        stiff['web'] = wall_stiffness(mesh.web_laminate)
    sec = mesh.section
    branches = list(zip(sec.branches, sec.labels)) if hasattr(sec, 'branches') else [(sec, 'flange')]
    segs = []
    for br, label in branches:
        bk = br.breaks
        s = np.unique(np.concatenate([np.linspace(a, c, n_per_piece + 1) for a, c in zip(bk[:-1], bk[1:])]))
        P = np.array([br.point(x) for x in s], float)
        for pa, pb in zip(P[:-1], P[1:]):
            segs.append((pa, pb, label, *stiff.get(label, stiff['flange'])))
    return segs


def _closed_cell(segs):
    """Segments of the single closed cell (2-core of the wall graph), ordered as a loop, or None."""
    key = lambda p: (round(p[0], 6), round(p[1], 6))
    edges = [(key(s[0]), key(s[1]), i) for i, s in enumerate(segs)]
    while True:
        deg = {}
        for a, b, _ in edges:
            deg[a] = deg.get(a, 0) + 1
            deg[b] = deg.get(b, 0) + 1
        keep = [e for e in edges if deg[e[0]] > 1 and deg[e[1]] > 1]
        if len(keep) == len(edges):
            break
        edges = keep
    if not edges:
        return None
    if any(d != 2 for d in deg.values() if d):
        raise ValueError('more than one closed cell: multi-cell torsion is not implemented')
    loop, used, node = [], set(), edges[0][0]
    while len(used) < len(edges):
        a, b, i = next(e for e in edges if e[2] not in used and node in e[:2])
        used.add(i)
        loop.append((segs[i][0], segs[i][1]) if a == node else (segs[i][1], segs[i][0]))
        loop[-1] = (*loop[-1], *segs[i][2:])
        node = b if a == node else a
    return loop


def _chain_points(segs, label='flange'):
    """Ordered points of the segments with this label if they form one open chain, else None."""
    key = lambda p: (round(p[0], 6), round(p[1], 6))
    sel = [s for s in segs if s[2] == label]
    adj = {}
    for s in sel:
        adj.setdefault(key(s[0]), []).append((key(s[1]), s[1]))
        adj.setdefault(key(s[1]), []).append((key(s[0]), s[0]))
    ends = [k for k, v in adj.items() if len(v) == 1]
    if len(ends) != 2 or any(len(v) > 2 for v in adj.values()):
        return None
    start = ends[0]
    pts, prev, cur = [np.array(start)], None, start
    while True:
        nxt = [(k, p) for k, p in adj[cur] if k != prev]
        if not nxt:
            break
        prev, cur = cur, nxt[0][0]
        pts.append(np.array(nxt[0][1]))
    return np.array(pts)


def section_torsion(mesh, axis=None):
    """Torsional stiffness of the mesh's cross-section:
    dict(GJ_open, GJ_bredt (None if open), GJ, A_cell, ECw (open single-chain
    or symmetric TRAC flange chain, else None), k (1/mm, None if no ECw),
    EdI (Wagner, about `axis` = (y, z); default the shear centre found with ECw,
    else the Ex_t-weighted centroid), axis).
    ECw of a TRAC: warping constant of the flange chain about its shear centre;
    exact when the web lies on the symmetry axis through that pole (the web's
    sectorial coordinate is then 0), as for the catalog TRACs."""
    segs = section_segments(mesh)
    GJ_open = sum(4 * s[4] * np.linalg.norm(s[1] - s[0]) for s in segs)
    cell = _closed_cell(segs)
    GJ_bredt = A_cell = None
    if cell is not None:
        A_cell = abs(sum(0.5 * (pa[0] * pb[1] - pb[0] * pa[1]) for pa, pb, *_ in cell))
        GJ_bredt = 4 * A_cell**2 / sum(np.linalg.norm(pb - pa) / a66 for pa, pb, _, a66, *_ in cell)
    ECw = k = None
    ys = None
    if cell is None:
        pts = _chain_points(segs, 'flange')
        ex = {s[5] for s in segs if s[2] == 'flange'}
        if pts is not None and len(ex) == 1:
            import sys
            from pathlib import Path
            sys.path.insert(0, str(Path(__file__).resolve().parents[1] / 'shell-buckling'))
            import shell_buckling as sb
            p = sb.section_properties(pts, 1.0)
            ECw, ys = ex.pop() * p['Cw'], (p['ys'], p['zs'])
    GJ = (GJ_bredt or 0.0) + GJ_open
    if ECw:
        k = math.sqrt(GJ / ECw)
    if axis is None:
        if ys is not None:
            axis = ys
        else:
            w = np.array([s[5] * np.linalg.norm(s[1] - s[0]) for s in segs])
            c = np.array([(s[0] + s[1]) / 2 for s in segs])
            axis = tuple(w @ c / w.sum())
    y0, z0 = axis
    EA = EIp = EIrr = 0.0
    for pa, pb, _, _, _, ex in segs:
        l = np.linalg.norm(pb - pa)
        for u, wq in zip(*_G3):
            p = pa + u * (pb - pa)
            r2 = (p[0] - y0)**2 + (p[1] - z0)**2
            EA += ex * l * wq
            EIp += ex * l * wq * r2
            EIrr += ex * l * wq * r2**2
    EdI = EIrr - EIp**2 / EA            # Ex_t-weighted: E (I_rr - I_p^2 / A) for a uniform material
    return dict(GJ_open=GJ_open, GJ_bredt=GJ_bredt, GJ=GJ, A_cell=A_cell, ECw=ECw, k=k, EdI=EdI, axis=tuple(axis))


def st_venant_tip(T, L, GJ):
    return T * L / GJ


def vlasov_tip(T, L, GJ, ECw, tip='restrained'):
    """Linear tip twist of a cantilever with the root warping restrained;
    tip='restrained' (rigid end) or 'free' (torque spread on the edge)."""
    k = math.sqrt(GJ / ECw)
    red = 2 * math.tanh(k * L / 2) / k if tip == 'restrained' else math.tanh(k * L) / k
    return T / GJ * (L - red)


def vlasov_profile(x, T, L, GJ, ECw, tip='restrained'):
    """Linear twist phi(x) for vlasov_tip's boundary conditions."""
    k = math.sqrt(GJ / ECw)
    x = np.asarray(x, float)
    c = math.tanh(k * L / 2) if tip == 'restrained' else math.tanh(k * L)
    return T / GJ * (x - (np.sinh(k * x) - c * (np.cosh(k * x) - 1)) / k)


def wagner_torque(theta, GJ, EdI):
    """Torque [N mm] for a uniform twist rate theta [rad/mm] (Wagner)."""
    return GJ * theta + 0.5 * EdI * theta**3


def wagner_twist_rate(T, GJ, EdI):
    """Inverse of wagner_torque (the real root of the cubic)."""
    r = np.roots([0.5 * EdI, 0.0, GJ, -T])
    return float(np.real(r[np.argmin(np.abs(np.imag(r)))]))


def wagner_ratio(theta, GJ, EdI):
    """Cubic / linear torque term: > ~0.02 means the twist is past the linear regime."""
    return 0.5 * EdI * theta**2 / GJ


def wagner_tip(T, L_eff, GJ, EdI):
    """Rough large-twist tip rotation of the cantilever: uniform twist rate
    over L_eff = phi_L,linear GJ / T (L for free warping / closed cells)."""
    return wagner_twist_rate(T, GJ, EdI) * L_eff


if __name__ == '__main__':
    # flat isotropic strip b x t (thin): GJ = G b t^3 / 3, E dI = E b^5 t / 180
    E, nu, b, t = 69000.0, 0.33, 20.0, 0.5
    G = E / (2 * (1 + nu))
    GJ, EdI = G * b * t**3 / 3, E * b**5 * t / 180
    for th in (0.001, 0.003, 0.005):
        print(f'strip theta = {th}: T = {wagner_torque(th, GJ, EdI):.4f} N mm '
              f'(linear {GJ * th:.4f}), Wagner ratio {wagner_ratio(th, GJ, EdI):.3f}')
