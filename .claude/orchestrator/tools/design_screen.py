"""
Design screening for the boom optimization (ThinShellOrchestrator tool).

Ranks every catalog combination material (L###) x layup (Y###) x cross-section
(T/R/O/C###) allowed by a study's requirements.json with CLOSED-FORM estimates
only (no FE): mass, beam bending stiffness, buckling estimates and the exact
CLT coiling index. The orchestrator picks its next FE design from this list
(through study.py), so that its choices come from numbers, not from guesses.

    python design_screen.py <study_dir>            # reads <study_dir>/requirements.json
                    [--top 30] [--max-rows 20000]  # writes <study_dir>/screen/screen.csv + screen_summary.json

What is exact and what is an estimate
  exact (CLT, same functions as failure-check):
    mass per length  = areal density x total arc length (webs of TRAC/OM/CO counted twice).
    F_flat           = Hashin 2D of the flange flattened from its smallest arc radius r
                       (k = +-[0, 1/r, 0], N = 0): failure-check's coiling check.
    F_hub            = Hashin 2D of the flange flattened AND bent onto the hub radius R_hub:
                       k = [+-1/R_hub, +-1/r, 0], N = 0, all four sign combinations
                       (equal- and opposite-sense coiling, either face), max kept. Flange only:
                       TRAC webs/OM tabs are bent by k_x only but sit off the neutral surface; not included.
  estimates (thin-walled beam, membrane modulus Ex = 1/(h a11)):
    EI_z, EI_y       = Ex * Iyy (deflection along z), Ex * Izz (along y), centroidal.
    k_est            = 3 EI / L^3 (cantilever tip stiffness) in the requirement's direction.
    P_col            = column buckling (Euler / flexural-torsional, TS only: sb.column_buckling).
    P_loc            = 0.3 x classical curved-panel stress x area (knock-down 0.3), TS only.
    M_fold           = tape-spring steady fold moments: opposite sense (1+nu) D alpha,
                       equal sense (1-nu) D alpha, D = sqrt(D11 D22), nu = D12/D, alpha = b/R; TS only.
                       These are the post-buckling fold moments, a LOWER bound of the peak moment.
  study.py multiplies the estimates by FE/estimate ratios learned from the runs (calibration).

Feasibility by estimate (screen_ok): strengths complete, F_flat < 1, F_hub < 1 (if a hub
radius is required), geometric limits; stiffness and buckling estimates only REJECT when
they miss the requirement by more than the screening margins (est < 0.85 x required
stiffness, est < 0.5 x required buckling), because they are approximate.
Units: N, mm, MPa; mass kg.
"""
import argparse
import csv
import json
import math
import re
import sys
from pathlib import Path

import numpy as np

HERE = Path(__file__).resolve().parent
CLAUDE = HERE.parents[1]
SKILLS = CLAUDE / 'skills'
for d in ('laminate-properties', 'failure-check', 'shell-buckling', 'shell-mesh', 'shell-bc-load'):
    sys.path.insert(0, str(SKILLS / d))
sys.path.insert(0, str(CLAUDE / 'memory.boom_geometry_catalog'))
import laminate_properties as lp      # noqa: E402
import failure_check as fc            # noqa: E402

MAT_CATALOG = CLAUDE / 'memory.material_property_catalog' / 'UD_lamina_catalog_SI.txt'
LAYUP_CATALOG = CLAUDE / 'memory.layup_catalog' / 'layup_catalog.txt'
FE_SUPPORTED = {'TS', 'TRAC', 'OM', 'CO'}   # section types shell-mesh builds (see PROTOCOL.md section 4)
STIFF_MARGIN, BUCK_MARGIN = 0.85, 0.5


def fe_buildable(g):
    """shell-mesh can build this row: type in FE_SUPPORTED and, for OM/CO, both shells with the
    same free chord (different chords are prestressed by bonding, which is not modelled)."""
    if g['type'] not in FE_SUPPORTED:
        return False
    if g['type'] in ('OM', 'CO'):
        import shell_mesh as sm
        try:
            sm.boom_section(g)
        except ValueError:
            return False
    return True


# --- catalogs -----------------------------------------------------------------------

def caution_ids(path=MAT_CATALOG):
    """Material IDs whose catalog note says CAUTION (data to be verified)."""
    out = set()
    for line in Path(path).read_text(encoding='utf-8').splitlines():
        m = re.match(r'#\s+(L\d{3})\b.*CAUTION', line)
        if m:
            out.add(m.group(1))
    return out


def materials(req):
    rows = lp.read_catalog(MAT_CATALOG)
    sel = req.get('materials', {})
    allow = sel.get('allow', 'all')
    ids = sorted(rows) if allow in ('all', None) else list(allow)
    excl = set(sel.get('exclude', []))
    if not sel.get('allow_caution', False):
        excl |= caution_ids()
    out, skipped = {}, {}
    for cid in ids:
        if cid in excl:
            skipped[cid] = 'excluded (requirements or CAUTION note in the catalog)'
            continue
        try:
            p, notes = lp.catalog_material(cid)
        except (KeyError, ValueError) as e:
            skipped[cid] = str(e)
            continue
        if any(p[k] is None for k in lp.STRENGTHS):
            skipped[cid] = 'strengths incomplete (no failure check possible)'
            continue
        rho, _ = lp._cell(rows[cid]['rho_kg/m3'])
        if rho is None:
            skipped[cid] = 'no density (mass objective impossible)'
            continue
        p['rho_kg_m3'] = rho
        out[cid] = p
    return out, skipped


def layups(req):
    out = {}
    for line in LAYUP_CATALOG.read_text(encoding='utf-8').splitlines():
        if not re.match(r'Y\d{3}\s', line):
            continue
        c = line.split()
        out[c[0]] = dict(id=c[0], n_plies=int(c[1]), layup=c[2], n_angles=int(c[4]), cross_ply=c[6] == 'yes')
    sel = req.get('layups', {})
    allow = sel.get('allow', 'all')
    ids = sorted(out) if allow in ('all', None) else list(allow)
    nmin, nmax = sel.get('min_plies', 1), sel.get('max_plies', 99)
    return {i: out[i] for i in ids if nmin <= out[i]['n_plies'] <= nmax
            and (not sel.get('cross_ply_only') or out[i]['cross_ply'])}


def geometries(req):
    from boom_data import GEOMETRIES
    import make_boom_catalog as mbc
    classes = set(req.get('section_classes') or ['TS', 'TRAC', 'OM', 'CO'])
    sel = req.get('geometries', {})
    allow = sel.get('allow', 'all')
    out = {}
    for g in GEOMETRIES:
        if g['type'] not in classes or (allow not in ('all', None) and g['id'] not in allow):
            continue
        if g['id'] in set(sel.get('exclude', [])):
            continue
        b = mbc.build(g)
        if b['problems']:
            continue
        parts = [(np.array(p), 1.0) for p in b['lines']] + [(np.array(p), 2.0) for p in b['webs']]
        radii = [abs(R) for R, _ in g['A'] + g.get('B', [])]
        y0, y1, z0, z1 = b['bbox']
        geo = dict(g=g, parts=parts, r_min=min(radii), width=y1 - y0, height=z1 - z0,
                   s_total=sum(_len(p) * m for p, m in parts), fe_supported=fe_buildable(g),
                   I1=section_inertia(parts, 1.0), props1=None)
        if g['type'] == 'TS':
            import shell_buckling as sb
            geo['props1'] = sb.section_properties(parts[0][0], 1.0)      # t = 1; scaled per laminate
        out[g['id']] = geo
    return out


def props_at(props1, t):
    """Thin-walled section properties at thickness t from those at t = 1."""
    p = dict(props1)
    for k in ('A', 'Iyy', 'Izz', 'Iyz', 'I1', 'I2', 'Cw'):
        p[k] = props1[k] * t
    p['J'] = props1['J'] * t**3
    return p


def _len(P):
    return float(np.hypot(*np.diff(P, axis=0).T).sum())


# --- section and laminate quantities --------------------------------------------------

def section_inertia(parts, t):
    """Centroidal Iyy (= int z^2 dA), Izz, A of polylines with thickness multipliers."""
    A = Sy = Sz = Iyy = Izz = 0.0
    segs = []
    for P, m in parts:
        for a, b in zip(P[:-1], P[1:]):
            ln = math.hypot(*(b - a))
            segs.append((a, b, ln * t * m))
    for a, b, dA in segs:
        A += dA
        Sy += dA * (a[0] + b[0]) / 2
        Sz += dA * (a[1] + b[1]) / 2
    yc, zc = Sy / A, Sz / A
    for a, b, dA in segs:
        ya, yb, za, zb = a[0] - yc, b[0] - yc, a[1] - zc, b[1] - zc
        Iyy += dA * (za * za + za * zb + zb * zb) / 3
        Izz += dA * (ya * ya + ya * yb + yb * yb) / 3
    return dict(A=A, Iyy=Iyy, Izz=Izz, yc=yc, zc=zc)


class Lam:
    """Laminate quantities needed by the screen (one material, one layup)."""

    def __init__(self, mat, lay):
        self.lam = lp.Laminate.from_layup(lay['layup'], mat['t_ply'], mat)
        self.h = sum(q['t'] for q in self.lam.plies)
        K = self.lam.abd()
        A, D = K[:3, :3], K[3:, 3:]
        a = np.linalg.inv(A)
        self.Ex, self.Gxy = 1 / (self.h * a[0, 0]), 1 / (self.h * a[2, 2])
        self.nu_xy = -a[0, 1] / a[0, 0]
        self.D11, self.D22, self.D12 = D[0, 0], D[1, 1], D[0, 1]
        self.areal = mat['rho_kg_m3'] * self.h * 1e-3          # kg/m^2
        # ply stresses (ply axes) for unit curvature k_x and unit k_y (symmetric: eps0 = 0)
        E = np.zeros((2, 1, 8))
        E[0, 0, 3], E[1, 0, 4] = 1.0, 1.0
        s12, _, _ = fc.ply_stresses(E, self.lam, 'gauss')
        self.Sx, self.Sy = s12[0, 0], s12[1, 0]               # (n_ply, 3, 3)
        self.st = np.array([mat[k] for k in lp.STRENGTHS])

    def hashin_max(self, kx, ky):
        """max Hashin 2D over plies / through-thickness points for curvature arrays kx, ky (same shape)."""
        kx, ky = np.asarray(kx, float)[..., None, None, None], np.asarray(ky, float)[..., None, None, None]
        s = kx * self.Sx + ky * self.Sy
        a, b = fc.hashin_modes(s[..., 0], s[..., 1], s[..., 2], *self.st)
        return (a + b).max(axis=0).reshape(np.shape(kx)[:-3] + (-1,)).max(axis=-1)


def coiling_indices(L, r, R_hub):
    """F_flat (flatten only) and F_hub (flatten + hub, 4 sign combinations).
    r may be an array of radii (one laminate, many sections): arrays returned."""
    r = np.atleast_1d(np.asarray(r, float))
    one = np.ones((len(r), 2))
    F_flat = L.hashin_max(0 * one, np.stack([1 / r, -1 / r], axis=1)).max(axis=1)
    if not R_hub:
        return F_flat, None
    sx = np.array([1, 1, -1, -1])[None, :] / R_hub * np.ones((len(r), 1))
    sy = np.array([1, -1, 1, -1])[None, :] / r[:, None]
    F_hub = np.maximum(L.hashin_max(sx, sy).max(axis=1), F_flat)
    return F_flat, F_hub


def buckling_estimates(L, geo, length, req_b):
    """(P_col, P_loc, M_opp, M_eq) estimates for TS sections, else Nones."""
    g = geo['g']
    if g['type'] != 'TS':
        return None, None, None, None
    import shell_buckling as sb
    R, th = g['A'][0]
    b = R * math.radians(th)
    Dm = math.sqrt(L.D11 * L.D22)
    nu = L.D12 / Dm
    alpha = b / R
    M_opp, M_eq = (1 + nu) * Dm * alpha, (1 - nu) * Dm * alpha
    P_col = P_loc = None
    if req_b and req_b.get('load') == 'compression':
        props = props_at(geo['props1'], L.h)
        K = 0.5 if req_b.get('ends', 'clamped') == 'clamped' else 1.0
        try:
            P_col = float(sb.column_buckling(props, L.Ex, L.Gxy, length, K, K)['P_cr'])
        except Exception:                                      # noqa: BLE001
            P_col = math.pi**2 * L.Ex * min(props['Iyy'], props['Izz']) / (K * length)**2
        nu_m = min(abs(L.nu_xy), 0.49)
        sig = L.Ex * L.h / (R * math.sqrt(3 * (1 - nu_m**2)))
        P_loc = 0.3 * sig * props['A']
    return P_col, P_loc, M_opp, M_eq


# --- screen -------------------------------------------------------------------------

def screen(req, top=30, max_rows=20000):
    length = float(req['length_mm'])
    rq = req.get('requirements', {})
    stiff, buck, coil = rq.get('bending_stiffness'), rq.get('buckling'), rq.get('coiling')
    R_hub = coil.get('hub_radius_mm') if coil else None
    lim = req.get('limits', {})
    mats, mskip = materials(req)
    lays = layups(req)
    geos = geometries(req)
    rows, reasons, n = [], {}, 0
    gids = list(geos)
    r_all = np.array([geos[g]['r_min'] for g in gids])
    for mid, mat in mats.items():
        for yid, lay in lays.items():
            Lm = Lam(mat, lay)
            if lim.get('max_thickness_mm') and Lm.h > lim['max_thickness_mm'] + 1e-12:
                reasons['thickness limit'] = reasons.get('thickness limit', 0) + len(geos)
                n += len(geos)
                continue
            Ff_all, Fh_all = coiling_indices(Lm, r_all, R_hub)
            for ig, gid in enumerate(gids):
                geo = geos[gid]
                n += 1
                F_flat = float(Ff_all[ig])
                F_hub = None if Fh_all is None else float(Fh_all[ig])
                # cheap exact rejections first; rejected rows are only counted, not stored
                if F_flat >= 1 or (F_hub is not None and F_hub >= 1) or (
                        lim.get('max_width_mm') and geo['width'] > lim['max_width_mm']) or (
                        lim.get('max_height_mm') and geo['height'] > lim['max_height_mm']):
                    for w, bad in (('F_flat >= 1', F_flat >= 1), ('F_hub >= 1', F_hub is not None and F_hub >= 1),
                                   ('width limit', lim.get('max_width_mm') and geo['width'] > lim['max_width_mm']),
                                   ('height limit', lim.get('max_height_mm') and geo['height'] > lim['max_height_mm'])):
                        if bad:
                            reasons[w] = reasons.get(w, 0) + 1
                    continue
                why = []
                EIz, EIy = Lm.Ex * geo['I1']['Iyy'] * Lm.h, Lm.Ex * geo['I1']['Izz'] * Lm.h
                k_est = None
                if stiff:
                    EI = EIz if stiff.get('direction', 'z') == 'z' else EIy
                    k_est = 3 * EI / length**3
                    if k_est < STIFF_MARGIN * stiff['min_N_per_mm']:
                        why.append('stiffness estimate')
                P_col, P_loc, M_opp, M_eq = buckling_estimates(Lm, geo, length, buck)
                b_est = None
                if buck:
                    if buck['load'] == 'compression' and P_col is not None:
                        b_est = min(P_col, P_loc)
                    elif buck['load'] == 'bending' and M_opp is not None:
                        b_est = M_opp if buck.get('sense', 'opposite') == 'opposite' else M_eq
                    if b_est is not None and b_est < BUCK_MARGIN * buck['min_value']:
                        why.append('buckling estimate')
                mpl = Lm.areal * geo['s_total'] * 1e-3               # kg/m
                for w in why:
                    reasons[w] = reasons.get(w, 0) + 1
                if why:
                    continue
                rows.append(dict(material=mid, layup=yid, geometry=gid, type=geo['g']['type'],
                                 fe_supported=geo['fe_supported'], screen_ok=not why, reject=';'.join(why),
                                 n_plies=lay['n_plies'], n_angles=lay['n_angles'], cross_ply=lay['cross_ply'],
                                 h_mm=Lm.h, r_min_mm=geo['r_min'], width_mm=geo['width'], height_mm=geo['height'],
                                 mass_kg=mpl * length * 1e-3, mass_per_length_kg_m=mpl,
                                 Ex_MPa=Lm.Ex, EIz_Nmm2=EIz, EIy_Nmm2=EIy, k_est_N_mm=k_est,
                                 buckling_est=b_est, P_col=P_col, P_loc=P_loc, M_fold_opp=M_opp, M_fold_eq=M_eq,
                                 F_flat=F_flat, F_hub=F_hub))
    sense = req.get('objective', {}).get('sense', 'minimize')
    q = req.get('objective', {}).get('quantity', 'mass')
    key = {'mass': 'mass_kg', 'bending_stiffness': 'k_est_N_mm', 'buckling': 'buckling_est'}.get(q, 'mass_kg')
    rows.sort(key=lambda r: (not r['fe_supported'],
                             (r[key] if sense == 'minimize' else -(r[key] or 0)) if r[key] is not None else 1e99))
    for i, r in enumerate(rows):
        r['rank'] = i + 1
    by_type = {}
    for r in rows:
        by_type[r['type']] = by_type.get(r['type'], 0) + 1
    summary = dict(evaluated=n, screen_ok=len(rows), screen_ok_fe=sum(r['fe_supported'] for r in rows),
                   screen_ok_by_type=by_type,
                   note='only screen_ok rows are written; rejected combinations are counted in "rejections"',
                   rejections=reasons, materials_used=sorted(mats), materials_skipped=mskip,
                   n_layups=len(lays), geometries=sorted(geos),
                   fe_supported_types=sorted(FE_SUPPORTED), ranking_key=f'{sense} {key}',
                   margins=dict(stiffness=STIFF_MARGIN, buckling=BUCK_MARGIN))
    return rows[:max_rows], summary


def main():
    ap = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument('study')
    ap.add_argument('--top', type=int, default=30)
    ap.add_argument('--max-rows', type=int, default=20000)
    a = ap.parse_args()
    study = Path(a.study)
    req = json.loads((study / 'requirements.json').read_text())
    rows, summary = screen(req, a.top, a.max_rows)
    out = study / 'screen'
    out.mkdir(exist_ok=True)
    if rows:
        with open(out / 'screen.csv', 'w', newline='') as f:
            w = csv.DictWriter(f, fieldnames=list(rows[0]))
            w.writeheader()
            w.writerows(rows)
    (out / 'screen_summary.json').write_text(json.dumps(summary, indent=1))
    print(json.dumps({k: v for k, v in summary.items() if k != 'materials_skipped'}, indent=1))
    print(f'materials skipped: {summary["materials_skipped"]}')
    print(f'\ntop {a.top} (screen_ok, FE-supported first):')
    cols = ('rank', 'material', 'layup', 'geometry', 'h_mm', 'mass_kg', 'k_est_N_mm', 'buckling_est', 'F_flat',
            'F_hub', 'reject')
    print('  '.join(cols))
    for r in rows[:a.top]:
        print('  '.join(f'{r[c]:.4g}' if isinstance(r[c], float) else str(r[c]) for c in cols))
    print(f'\nwrote {out / "screen.csv"} ({len(rows)} rows) and screen_summary.json')


if __name__ == '__main__':
    main()
