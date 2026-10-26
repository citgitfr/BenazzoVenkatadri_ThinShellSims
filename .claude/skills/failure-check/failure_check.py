"""
Ply stresses in every element and the 2D Hashin failure criterion (default;
Tsai-Hill as an option) of a solved shell model (results .npz from the
shell-bc-load skill, laminate and strengths from the laminate-properties skill).

Ply stresses (classical lamination theory kinematics on the FE strains):
for each facet and Gauss point the generalized strains (eps0, k) in the
facet frame give eps(z) = eps0 + z k at the bottom, middle and top of every
ply; rotated to the ply axes (angle theta from the facet x axis) and
multiplied by the ply's reduced stiffness Q:
    [s1, s2, t12] = Q T_eps(theta) (eps0 + z k)
This uses the exact kinematics; it does not depend on how LayeredShell
integrates the layers.

Hashin 2D (Benazzo & Pellegrino, AIAA SciTech 2025, AIAA 2025-0188, Eq. 3,
after Hashin 1980 and Reddy & Pandey 1987). Only the mode matching the
stress sign is active; F = max over the active modes, failure at F >= 1:
    fibre tension     (s1 >= 0): F_ft = (s1/Xt)^2 + (t12/S12)^2
    fibre compression (s1 <  0): F_fc = (s1/Xc)^2
    matrix tension    (s2 >= 0): F_mt = (s2/Yt)^2 + (t12/S12)^2
    matrix compression(s2 <  0): F_mc = (s2/(2 S23))^2 + ((Yc/(2 S23))^2 - 1) s2/Yc + (t12/S12)^2
The paper's printed F_mc has S12 in place of S23 in the 2nd/3rd terms and a
minus on the shear term; the standard Hashin form above is used (see the
reorganization log). S23 (transverse shear strength) is not in the catalog:
default S23 = Yc/2, which makes F_mc = (s2/Yc)^2 + (t12/S12)^2.

Strength ratio R: the factor on all ply stresses that brings the point to
F = 1, solved per mode from a R^2 + b R = 1 (exact also for the linear term
of F_mc). It is a load factor only for a linear analysis.

Tsai-Hill (--criterion tsai-hill): FI = (s1/X)^2 - s1 s2/X^2 + (s2/Y)^2 + (t12/S)^2,
X = Xt or Xc and Y = Yt or Yc by the stress sign.

Usage:
  python failure_check.py results.npz [--criterion hashin|tsai-hill] [--S23 ..]
          [--at gauss|centroid] [--top 10] [--csv f.csv]
          [--Xt .. --Xc .. --Yt .. --Yc .. --S ..]   (override / supply strengths, MPa)
          [--yield SY]                               (isotropic: X = Y = sy, S = sy/sqrt3)
Units: N, mm, MPa.
"""
import argparse
import math
import sys
from pathlib import Path

import numpy as np

_SKILLS = Path(__file__).resolve().parents[1]
for _d in ('laminate-properties', 'shell-bc-load'):
    sys.path.insert(0, str(_SKILLS / _d))
import laminate_properties as lp   # noqa: E402

STRENGTHS = lp.STRENGTHS
Z_POINTS = ('bottom', 'middle', 'top')
MODES = ('fibre tension', 'fibre compression', 'matrix tension', 'matrix compression')


def hashin_modes(s1, s2, t12, Xt, Xc, Yt, Yc, S, S23=None):
    """(a, b) of each mode, F_mode(R) = a R^2 + b R for stresses scaled by R
    (inactive modes a = b = 0). Arrays of shape (4,) + s1.shape."""
    S23 = Yc / 2 if S23 is None else S23
    s1, s2, t12 = np.broadcast_arrays(*(np.asarray(x, float) for x in (s1, s2, t12)))
    ft, mt = s1 >= 0, s2 >= 0
    shear = (t12 / S)**2
    a = np.stack([np.where(ft, (s1 / Xt)**2 + shear, 0.0),
                  np.where(ft, 0.0, (s1 / Xc)**2),
                  np.where(mt, (s2 / Yt)**2 + shear, 0.0),
                  np.where(mt, 0.0, (s2 / (2 * S23))**2 + shear)])
    b = np.zeros_like(a)
    b[3] = np.where(mt, 0.0, ((Yc / (2 * S23))**2 - 1) * s2 / Yc)
    return a, b


def hashin(s1, s2, t12, Xt, Xc, Yt, Yc, S, S23=None):
    """Hashin 2D index F = max over the active modes, and the mode index."""
    a, b = hashin_modes(s1, s2, t12, Xt, Xc, Yt, Yc, S, S23)
    F = a + b
    return F.max(axis=0), F.argmax(axis=0)


def tsai_hill(s1, s2, t12, Xt, Xc, Yt, Yc, S):
    """Plane-stress Tsai-Hill index, element-wise on arrays."""
    X = np.where(s1 >= 0, Xt, Xc)
    Y = np.where(s2 >= 0, Yt, Yc)
    return (s1 / X)**2 - s1 * s2 / X**2 + (s2 / Y)**2 + (t12 / S)**2


def strength_ratio(a, b):
    """Smallest R > 0 with a R^2 + b R = 1 over the modes (inf if none)."""
    with np.errstate(divide='ignore', invalid='ignore'):
        R = np.where(a > 0, (-b + np.sqrt(b * b + 4 * a)) / (2 * a), np.where(b > 0, 1 / b, np.inf))
    return R.min(axis=0)


def ply_stresses(strains, lam, at='gauss'):
    """strains: (nf, ng, 8) from shell-bc-load. Returns (sig12, sigxy, z):
    stresses (nf, ng', n_ply, 3 z-points, 3) in ply axes [s1, s2, t12] and in
    the facet frame [sxx, syy, txy], and z (n_ply, 3). at = 'centroid'
    averages the Gauss points first (ng' = 1)."""
    E = strains.mean(axis=1, keepdims=True) if at == 'centroid' else strains
    e0, k = E[..., 0:3], E[..., 3:6]
    n = len(lam.plies)
    z = np.array([[q['z0'], (q['z0'] + q['z1']) / 2, q['z1']] for q in lam.plies])
    sig12 = np.zeros(E.shape[:2] + (n, 3, 3))
    sigxy = np.zeros_like(sig12)
    for p, q in enumerate(lam.plies):
        Te = lp.strain_rotation(q['theta'])
        Ts_inv = np.linalg.inv(lp.stress_rotation(q['theta']))
        Q = lp.reduced_stiffness(lam.materials[q['mat']])
        for iz, zz in enumerate(z[p]):
            s = (e0 + zz * k) @ Te.T @ Q.T
            sig12[:, :, p, iz] = s
            sigxy[:, :, p, iz] = s @ Ts_inv.T
    return sig12, sigxy, z


def strengths_of(lam, overrides=None):
    """(n_ply, 5) strengths Xt Xc Yt Yc S per ply [MPa]."""
    out = []
    for q in lam.plies:
        m = dict(lam.materials[q['mat']])
        m.update({k: v for k, v in (overrides or {}).items() if v is not None})
        if any(m.get(k) is None for k in STRENGTHS):
            raise ValueError(f'ply strengths missing ({", ".join(k for k in STRENGTHS if m.get(k) is None)}): '
                             'give them on the command line or use a catalog row with all five')
        out.append([m[k] for k in STRENGTHS])
    return np.array(out)


def failure_index(strains, lam, overrides=None, at='gauss', criterion='hashin', S23=None):
    """Returns F, mode, R, sig12, sigxy, z. F, mode (index into MODES; -1 for
    Tsai-Hill) and R (strength ratio) have shape (nf, ng, n_ply, 3)."""
    sig12, sigxy, z = ply_stresses(strains, lam, at)
    st = strengths_of(lam, overrides)
    F = np.zeros(sig12.shape[:4])
    mode = np.full(F.shape, -1)
    R = np.zeros(F.shape)
    for p in range(len(lam.plies)):
        s = np.moveaxis(sig12[:, :, p], -1, 0)
        if criterion == 'hashin':
            a, b = hashin_modes(*s, *st[p], S23)
            Fm = a + b
            F[:, :, p], mode[:, :, p] = Fm.max(axis=0), Fm.argmax(axis=0)
            R[:, :, p] = strength_ratio(a, b)
        else:
            F[:, :, p] = tsai_hill(*s, *st[p])
            with np.errstate(divide='ignore'):
                R[:, :, p] = 1 / np.sqrt(F[:, :, p])
    return F, mode, R, sig12, sigxy, z


def surface_fields(strains, lam):
    """Per-facet (centroid) fields for plotting: top/bottom surface stresses
    in the facet frame, and von Mises of the top surface (isotropic shells)."""
    _, sigxy, _ = ply_stresses(strains, lam, 'centroid')
    top, bot = sigxy[:, 0, -1, 2], sigxy[:, 0, 0, 0]
    f = {}
    for name, s in (('top', top), ('bottom', bot)):
        f[f'sigma_xx_{name}'], f[f'sigma_yy_{name}'], f[f'tau_xy_{name}'] = s.T
    sx, sy, txy = top.T
    f['von_Mises_top'] = np.sqrt(sx**2 - sx * sy + sy**2 + 3 * txy**2)
    return f


def report(res, lam, F, mode, R, sig12, z, at, criterion, top=10):
    """Text summary: worst points, per-ply maxima."""
    meta = res['meta']
    nx = meta['nx']
    pts, faces = res['points'], res['faces']
    nf = F.shape[0]
    name = 'Hashin 2D' if criterion == 'hashin' else 'Tsai-Hill'
    md = lambda m: MODES[m] if m >= 0 else '-'
    lines = [f'{name} check: {meta.get("title", "")}  [{lam.describe()}], {nf} facets, '
             f'{"Gauss points" if at == "gauss" else "facet centroids"}, 3 points through each ply']
    lines.append(f'{"rank":>4} {"F":>9} {"R":>8} {"facet":>6} {"x":>8} {"y":>8} {"z":>8} {"ply":>3} {"theta":>6} '
                 f'{"at":>6} {"s1":>10} {"s2":>10} {"t12":>10}  mode')
    for r, idx in enumerate(np.argsort(F, axis=None)[::-1][:top], 1):
        f, g, p, iz = np.unravel_index(idx, F.shape)
        c = pts[faces[f]].mean(axis=0)
        s1, s2, t12 = sig12[f, g, p, iz]
        lines.append(f'{r:>4} {F[f, g, p, iz]:>9.4g} {R[f, g, p, iz]:>8.4g} {f:>6} {c[0]:>8.4g} {c[1]:>8.4g} '
                     f'{c[2]:>8.4g} {p + 1:>3} {lam.plies[p]["theta"]:>6g} {Z_POINTS[iz]:>6} {s1:>10.4g} '
                     f'{s2:>10.4g} {t12:>10.4g}  {md(mode[f, g, p, iz])}')
    lines.append('Per ply (max over the model):')
    for p in range(len(lam.plies)):
        k = np.unravel_index(F[:, :, p].argmax(), F[:, :, p].shape)
        lines.append(f'  ply {p + 1:>2} ({lam.plies[p]["theta"]:>6g} deg, z {z[p, 0]:+.4g}..{z[p, 2]:+.4g}): '
                     f'max F {F[:, :, p][k]:.4g} ({md(mode[:, :, p][k])}), min R {R[:, :, p].min():.4g}, '
                     f'max |s1| {np.abs(sig12[:, :, p, :, 0]).max():.4g}, max |s2| {np.abs(sig12[:, :, p, :, 1]).max():.4g}, '
                     f'max |t12| {np.abs(sig12[:, :, p, :, 2]).max():.4g} MPa')
    f, g, p, iz = np.unravel_index(F.argmax(), F.shape)
    Fmax = F.max()
    lines.append(f'MAX F = {Fmax:.4g} -> {"FAILS (F >= 1)" if Fmax >= 1 else "no failure predicted"}'
                 f'{"" if criterion != "hashin" else f" ({md(mode[f, g, p, iz])})"}; '
                 f'min strength ratio R = {R.min():.4g} (at the max F point: {R[f, g, p, iz]:.4g}; facet {f}, '
                 f'i = {f % nx}, j = {f // nx}, ply {p + 1}, {Z_POINTS[iz]})')
    return '\n'.join(lines)


def main():
    ap = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument('results', help='.npz from shell-bc-load')
    ap.add_argument('--criterion', choices=('hashin', 'tsai-hill'), default='hashin')
    ap.add_argument('--S23', type=float, help='transverse shear strength for Hashin matrix compression [MPa] '
                                               '(default Yc/2)')
    ap.add_argument('--laminate', help='laminate JSON (default: the one stored in the results)')
    ap.add_argument('--at', choices=('gauss', 'centroid'), default='gauss')
    ap.add_argument('--top', type=int, default=10)
    ap.add_argument('--csv', help='per-facet max F, its ply and mode, CSV')
    for k in STRENGTHS:
        ap.add_argument(f'--{k}', type=float, help=f'{k} [MPa] (overrides the laminate)')
    ap.add_argument('--yield', dest='sy', type=float, help='isotropic: X = Y = sy, S = sy/sqrt(3)')
    a = ap.parse_args()

    import shell_bc_load as bc
    res = bc.load_results(a.results)
    lam = lp.Laminate.load(a.laminate) if a.laminate else lp.Laminate.from_dict(res['laminate'])
    ov = {k: getattr(a, k) for k in STRENGTHS}
    if a.sy:
        ov = dict(Xt=a.sy, Xc=a.sy, Yt=a.sy, Yc=a.sy, S=a.sy / math.sqrt(3))
    F, mode, R, sig12, _, z = failure_index(res['strains'], lam, ov, a.at, a.criterion, a.S23)
    if a.criterion == 'hashin':
        print(f'S23 = {"Yc/2 (default)" if a.S23 is None else f"{a.S23:g} MPa"}')
    print(report(res, lam, F, mode, R, sig12, z, a.at, a.criterion, a.top))
    if a.csv:
        Ff = F.reshape(F.shape[0], -1)
        k = Ff.argmax(axis=1)
        ply = np.unravel_index(k, F.shape[1:])[1] + 1
        np.savetxt(a.csv, np.column_stack([np.arange(len(k)), Ff.max(axis=1), ply, mode.reshape(len(k), -1)[np.arange(len(k)), k]]),
                   delimiter=',', header='facet,max_F,critical_ply,mode(0 ft,1 fc,2 mt,3 mc,-1 n/a)', comments='',
                   fmt=['%d', '%.6g', '%d', '%d'])
        print(f'saved {a.csv}')


if __name__ == '__main__':
    main()
