"""
Objective and constraints of one design, from the results .npz of a solved
OpenSeesPy shell (written by the script that shell-assemble-run assembles
and runs; shell_bc_load.py writes the same file). Nothing else is read: the
laminate, the case (geometry, supports, loads, analysis) and the mesh are
the ones stored in the .npz.

Objective (always): minimize the mass of the structure,
    m = sum over facets of (facet area) x (areal density of its laminate),
areal density = sum over plies of rho t. Facet areas are the undeformed quad
areas 0.5 |(X2 - X0) x (X3 - X1)|. TRAC/OM/CO web facets carry the doubled
(bonded) laminate, found as the failure-check skill finds them. Rigid end
fixtures have no mass. Density: the laminate's rho if > 0, else the lamina
catalog row named by the material (catalog_material names it 'L024 ...'),
else --rho [kg/m^3]; without any, the mass is not evaluated.

Constraints (always): no failure, F_governing < 1, where F_governing is the
larger of the simulation Hashin 2D index (or Tsai-Hill) and the coiling
(flattening) index, computed with the failure-check skill's functions.

Other constraints: formulas written by the orchestrator from the user's
words, each
    {"name": .., "text": <user's words>, "expr": <formula>, "op": "<=" | "<" | ">=" | ">" | "==",
     "limit": <number or formula>, "tol": <for ==>, "units": ..}
in a JSON file (--constraints, a list or {"constraints": [...]}), or inline
--con "name: expr <= limit". Formulas use the quantity names printed by
--list (N, mm, MPa, kg), numbers, + - * / ** %, and abs min max sqrt
log exp sin cos tan radians degrees pi. Each constraint is reported in
the normalized form g <= 0:
    <=, < : g = value - limit         >=, > : g = limit - value
    ==    : g = |value - limit| - tol (tol default 1e-6 max(1, |limit|))
with g_rel = g / |limit| (g if limit = 0). A constraint whose formula uses
a quantity that this file cannot give (e.g. a buckling load: the
assembled script runs a static analysis) is "not evaluated" unless the
value is passed with --value NAME=VALUE (e.g. from the shell-buckling skill).

Usage:
  python objective_constraints.py results.npz [--constraints c.json] [--con "name: expr op limit" ...]
          [--value NAME=VALUE ...] [--rho KG_M3] [--json out.json] [--list]
          [failure-check options: --criterion --S23 --at --Xt --Xc --Yt --Yc --S --yield
           --boom --web S0 S1 --web-stack --flatten-radius]
Units: N, mm, MPa; mass in kg.
"""
import argparse
import ast
import json
import math
import re
import sys
from pathlib import Path

import numpy as np

_SKILLS = Path(__file__).resolve().parents[1]
for _d in ('laminate-properties', 'shell-bc-load', 'failure-check'):
    sys.path.insert(0, str(_SKILLS / _d))
import laminate_properties as lp   # noqa: E402
import failure_check as fc         # noqa: E402

KG_M3 = 1e-12          # t/mm^3 per kg/m^3
OPS = ('<=', '>=', '==', '<', '>')
FUNCS = dict(abs=abs, min=min, max=max, sqrt=math.sqrt, log=math.log, exp=math.exp, sin=math.sin,
             cos=math.cos, tan=math.tan, radians=math.radians, degrees=math.degrees)
CONSTS = dict(pi=math.pi)


# --- formulas --------------------------------------------------------------------------

_NODES = (ast.Expression, ast.BinOp, ast.UnaryOp, ast.Constant, ast.Name, ast.Load, ast.Call,
          ast.Add, ast.Sub, ast.Mult, ast.Div, ast.Pow, ast.Mod, ast.FloorDiv, ast.USub, ast.UAdd)


def names_in(expr):
    """Quantity names a formula uses (functions and constants excluded)."""
    tree = ast.parse(str(expr), mode='eval')
    return sorted({n.id for n in ast.walk(tree) if isinstance(n, ast.Name)} - set(FUNCS) - set(CONSTS))


def evaluate(expr, values):
    """Value of a formula of quantity names, numbers, arithmetic and FUNCS.
    Anything else (attributes, subscripts, other calls) is refused."""
    if isinstance(expr, (int, float)):
        return float(expr)
    tree = ast.parse(str(expr), mode='eval')
    for n in ast.walk(tree):
        if not isinstance(n, _NODES):
            raise ValueError(f'{type(n).__name__} not allowed in a formula: {expr!r}')
        if isinstance(n, ast.Call) and not (isinstance(n.func, ast.Name) and n.func.id in FUNCS):
            raise ValueError(f'only {", ".join(FUNCS)} may be called in a formula: {expr!r}')
    return float(eval(compile(tree, '<formula>', 'eval'), {'__builtins__': {}}, {**FUNCS, **CONSTS, **values}))


def parse_inline(text):
    """'name: expr op limit' (name optional) -> constraint dict."""
    m = re.fullmatch(r'\s*(?:(?P<name>[^:]+?)\s*:\s*)?(?P<expr>.+?)\s*(?P<op><=|>=|==|<|>)\s*(?P<lim>[^<>=]+?)\s*', text)
    if not m:
        raise ValueError(f'cannot read constraint {text!r}: expected "name: expr <= limit"')
    lim = m['lim']
    try:
        lim = float(lim)
    except ValueError:
        pass
    return dict(name=m['name'] or f'{m["expr"]} {m["op"]} {m["lim"]}', expr=m['expr'], op=m['op'], limit=lim)


def check_constraint(c, Q):
    """Evaluate one constraint dict against quantities Q {name: (value, units, description)}."""
    out = dict(name=c.get('name', ''), text=c.get('text', ''), expr=str(c['expr']), op=c['op'],
               limit=c['limit'], units=c.get('units', ''))
    if out['op'] not in OPS:
        return dict(out, status=f'not evaluated: operator {out["op"]!r} is not one of {" ".join(OPS)}')
    try:
        used = names_in(out['expr']) + ([] if isinstance(c['limit'], (int, float)) else names_in(c['limit']))
    except SyntaxError as e:
        return dict(out, status=f'not evaluated: formula does not parse ({e.msg})')
    unknown = [n for n in used if n not in Q]
    if unknown:
        return dict(out, status=f'not evaluated: unknown quantity {", ".join(unknown)} '
                                 '(see --list; pass values from other skills with --value NAME=VALUE)')
    missing = [n for n in used if Q[n][0] is None]
    if missing:
        return dict(out, status='not evaluated: ' + '; '.join(f'{n} not available ({Q[n][2]})' for n in missing))
    vals = {k: v[0] for k, v in Q.items() if v[0] is not None}
    try:
        value, limit = evaluate(out['expr'], vals), evaluate(c['limit'], vals)
    except (ValueError, ZeroDivisionError, OverflowError) as e:
        return dict(out, status=f'not evaluated: {e}')
    op = out['op']
    if op == '==':
        tol = float(c.get('tol', 1e-6 * max(1.0, abs(limit))))
        g, ok = abs(value - limit) - tol, abs(value - limit) <= tol
        out['tol'] = tol
    else:
        g = value - limit if op in ('<=', '<') else limit - value
        ok = g < 0 if op in ('<', '>') else g <= 0
    return dict(out, value=value, limit_value=limit, g=g, g_rel=g / abs(limit) if limit else g,
                satisfied=bool(ok), status='satisfied' if ok else 'VIOLATED')


# --- quantities from the results --------------------------------------------------------------

def facet_areas(res):
    """Undeformed area and area-weighted normal of every quad facet."""
    X = res['points'][res['faces']]
    an = 0.5 * np.cross(X[:, 2] - X[:, 0], X[:, 3] - X[:, 1])
    return np.linalg.norm(an, axis=1), an


def material_density(m, rho_override=None):
    """(rho [t/mm^3] or None, source) of one laminate material."""
    if rho_override:
        return rho_override * KG_M3, f'--rho {rho_override:g} kg/m^3'
    if m.get('rho'):
        return m['rho'], f'laminate rho = {m["rho"] / KG_M3:g} kg/m^3'
    cid = str(m.get('name', '')).split(' ')[0]
    if re.fullmatch(r'L\d{3}', cid):
        rows = lp.read_catalog()
        if cid in rows:
            rho, est = lp._cell(rows[cid]['rho_kg/m3'])
            if rho is not None:
                return rho * KG_M3, f'catalog {cid} rho = {rho:g} kg/m^3{" (estimate)" if est else ""}'
            return None, f'catalog {cid} has no density (NA): give --rho'
    return None, f'no density for material {m.get("name", "")!r}: give --rho [kg/m^3]'


def end_nodes(res, x_end, tol=1e-6):
    """Indices of the grid nodes at x = x_end (rigid masters excluded)."""
    rigid = set(res['meta'].get('rigid', {}).values())
    grid = np.array([t not in rigid for t in res['node_tags']])
    return np.flatnonzero(grid & (np.abs(res['points'][:, 0] - x_end) <= tol * max(1.0, res['meta']['L'])))


def tip_end(res):
    """The free end, 'x0' or 'xL': an end is supported if its rigid master is
    fixed or more than half of its edge nodes are (a support along a y edge
    fixes only the corner node); the tip is the unsupported end, xL if both
    or neither are. Returns (edge, node indices of the displacement reported, how)."""
    L, meta = res['meta']['L'], res['meta']
    idx = {t: k for k, t in enumerate(res['node_tags'])}
    rigid = {e: idx[t] for e, t in meta.get('rigid', {}).items() if t in idx}
    fixed = {}
    for e, x in (('x0', 0.0), ('xL', L)):
        fixed[e] = bool(res['fixed'][rigid[e]]) if e in rigid else False
        fixed[e] |= res['fixed'][end_nodes(res, x)].mean() > 0.5
    edge = 'x0' if fixed['xL'] and not fixed['x0'] else 'xL'
    if edge in rigid:
        return edge, [rigid[edge]], f'rigid end master node at {edge}'
    nodes = end_nodes(res, 0.0 if edge == 'x0' else L)
    return edge, list(nodes), f'mean of the {len(nodes)} edge nodes at {edge}'


def applied_loads(res, areas_n):
    """Total applied force [N] and applied couples [N mm] at load factor 1
    (reference load) from the case loads; None if the case is not stored."""
    case = res['meta'].get('case')
    if not case:
        return None, None
    F, C = np.zeros(3), np.zeros(3)
    for ld in case.get('loads', []):
        k = ld.get('factor', 1.0)
        if 'pressure' in ld:
            F += k * ld['pressure'] * areas_n.sum(axis=0)
        else:
            F += k * np.asarray(ld.get('force', (0, 0, 0)), float)
            C += k * np.asarray(ld.get('moment', (0, 0, 0)), float)
    return F, C


def section_radii(geom, boom=None):
    """Arc radii of the cross-section [mm] (catalog boom rows first)."""
    if boom is not None:
        return [abs(r) for r, _ in boom['A'] + boom.get('B', [])]
    sec = geom.get('section', {})
    return ([abs(sec['R'])] if sec.get('type') == 'arc' else
            [abs(s[1]) for s in sec.get('segments', []) if s[0] == 'arc'] if sec.get('type') == 'segments' else [])


def failure_quantities(res, lam, a, groups, boom):
    """F_sim, F_coil, F_governing and the critical point, as failure_check.main
    computes them. Returns (dict, notes); dict is empty if the strengths are missing."""
    ov = {k: getattr(a, k) for k in fc.STRENGTHS}
    if a.sy:
        ov = dict(Xt=a.sy, Xc=a.sy, Yt=a.sy, Yc=a.sy, S=a.sy / math.sqrt(3))
    notes = []
    try:
        fc.strengths_of(lam, ov)
    except ValueError as e:
        return {}, [f'failure check not possible: {e}']
    if a.criterion == 'hashin':
        notes.append(f'S23 = {"Yc/2 (default)" if a.S23 is None else f"{a.S23:g} MPa"}')
    nx = res['meta']['nx']
    F_sim, R_min, crit = 0.0, math.inf, None
    for label, gl, idx in groups:
        if not len(idx):
            continue
        F, mode, R, sig12, _, _ = fc.failure_index(res['strains'][idx], gl, ov, a.at, a.criterion, a.S23)
        if crit is None or F.max() > F_sim:
            f, g, p, iz = np.unravel_index(F.argmax(), F.shape)
            m = mode[f, g, p, iz]
            crit = dict(group=label, facet=int(idx[f]), i=int(idx[f] % nx), j=int(idx[f] // nx), ply=int(p + 1),
                        theta=gl.plies[p]['theta'], at=fc.Z_POINTS[iz], mode=fc.MODES[m] if m >= 0 else '-',
                        s1_s2_t12=[float(s) for s in sig12[f, g, p, iz]])
        F_sim = max(F_sim, float(F.max()))
        R_min = min(R_min, float(R.min()))
    out = dict(F_sim=F_sim, R_min=R_min, critical=crit, F_coil=None, governing='simulation')
    if F_sim >= 1:
        notes.append('coiling check not run: the simulation already fails')
    else:
        r, rsrc = fc.flatten_radius(fc.case_geometry(res), boom, a.flatten_radius)
        if r is None:
            notes.append(f'coiling check not run: {rsrc}')
        else:
            (Fc, modec, *_), _, _ = fc.coiling_check(lam, r, ov, a.criterion, a.S23)
            out['F_coil'] = float(Fc.max())
            notes.append(f'coiling: flange flattened from r = {r:g} mm ({rsrc}), F = {out["F_coil"]:.4g} '
                         f'({fc.MODES[modec.flat[Fc.argmax()]] if modec.flat[Fc.argmax()] >= 0 else "-"})')
    F_gov = F_sim if out['F_coil'] is None else max(F_sim, out['F_coil'])
    if out['F_coil'] is not None and out['F_coil'] > F_sim:
        out['governing'] = 'coiling (flattening the flange)'
    out['F_governing'] = F_gov
    return out, notes


def quantities(res, a):
    """{name: (value or None, units, description)} and notes."""
    meta, geom = res['meta'], fc.case_geometry(res)
    case = meta.get('case') or {}
    lam = lp.Laminate.load(a.laminate) if a.laminate else lp.Laminate.from_dict(res['laminate'])
    groups, web, boom, web_note = fc.facet_groups(res, lam, a.boom, a.web, a.web_stack,
                                                  lp.Laminate.load(a.web_laminate) if a.web_laminate else None)
    notes = [web_note] if web.any() or boom else []
    Q = {}

    # mass
    area, area_n = facet_areas(res)
    rho, srcs = [], []
    for m in lam.materials:
        r, s = material_density(m, a.rho)
        rho.append(r)
        srcs.append(s)
    notes += sorted(set(srcs))
    if all(r is not None for r in rho):
        mu = sum(rho[q['mat']] * q['t'] for q in lam.plies)                     # t/mm^2
        m_fl, m_web = mu * area[~web].sum(), 2 * mu * area[web].sum()            # web = two flange laminates
        mass = (m_fl + m_web) * 1e3
        why = None
    else:
        mu = mass = m_fl = m_web = None
        why = 'density unknown: give --rho [kg/m^3]'
    Q['mass'] = (mass, 'kg', why or 'mass of the shell (web facets with the doubled laminate)')
    Q['mass_g'] = (None if mass is None else mass * 1e3, 'g', why or 'mass in grams')
    Q['mass_flange'] = (None if mass is None else m_fl * 1e3, 'kg', why or 'mass of the flange (single-laminate) facets')
    Q['mass_web'] = (None if mass is None else m_web * 1e3, 'kg', why or 'mass of the web (doubled-laminate) facets')
    Q['areal_density'] = (None if mu is None else mu * 1e9, 'kg/m^2', why or 'flange laminate mass per area')
    Q['mass_per_length'] = (None if mass is None else mass / meta['L'] * 1e3, 'kg/m', why or 'mass / L')

    # dimensions
    sec = res['points'][end_nodes(res, 0.0)]
    radii = section_radii(geom, boom)
    Q['L'] = (float(meta['L']), 'mm', 'length along x')
    Q['b'] = (float(meta['b']), 'mm', 'cross-section arc length (flat width)')
    Q['section_width'] = (float(np.ptp(sec[:, 1])), 'mm', 'cross-section extent along y')
    Q['section_height'] = (float(np.ptp(sec[:, 2])), 'mm', 'cross-section extent along z')
    Q['radius_min'] = (min(radii) if radii else None, 'mm', 'smallest arc radius of the section'
                       if radii else 'the section has no arcs')
    Q['radius_max'] = (max(radii) if radii else None, 'mm', 'largest arc radius of the section'
                       if radii else 'the section has no arcs')
    Q['area'] = (float(area.sum()), 'mm^2', 'shell mid-surface area')
    Q['h'] = (lam.h, 'mm', 'flange laminate thickness')
    Q['n_plies'] = (float(len(lam.plies)), '', 'plies in the flange laminate')
    Q['h_web'] = (2 * lam.h if web.any() else None, 'mm', 'web (doubled) laminate thickness' if web.any() else 'no web')
    Q['h_max'] = (2 * lam.h if web.any() else lam.h, 'mm', 'largest laminate thickness anywhere')

    # displacements
    d = res['disp']
    edge, nodes, how = tip_end(res)
    notes.append(f'tip = free end {edge}: {how}')
    tip = d[nodes].mean(axis=0)
    for k, c in enumerate(('ux', 'uy', 'uz', 'rx', 'ry', 'rz')):
        Q[f'tip_{c}'] = (float(tip[k]), 'mm' if k < 3 else 'rad', f'tip {c} ({how})')
    Q['tip_u'] = (float(np.linalg.norm(tip[:3])), 'mm', 'tip translation magnitude')
    Q['tip_rot'] = (float(np.linalg.norm(tip[3:])), 'rad', 'tip rotation magnitude (small-rotation vector)')
    Q['max_u'] = (float(np.linalg.norm(d[:, :3], axis=1).max()), 'mm', 'largest node translation magnitude')
    for k, c in enumerate(('ux', 'uy', 'uz')):
        Q[f'max_abs_{c}'] = (float(np.abs(d[:, k]).max()), 'mm', f'largest |{c}| over all nodes')
    Q['max_rot'] = (float(np.linalg.norm(d[:, 3:], axis=1).max()), 'rad', 'largest node rotation magnitude')

    # loads and path
    an = case.get('analysis', {'type': 'linear'})
    hist = res['history']
    lam_f = float(hist[-1, 0]) if hist.size else 1.0
    lam_pk = float(np.abs(hist[:, 0]).max()) if hist.size else 1.0
    F, C = applied_loads(res, area_n)
    no_case = 'no case stored in the results'
    for k, c in enumerate('xyz'):
        Q[f'force_{c}'] = (None if F is None else float(lam_f * F[k]), 'N',
                           no_case if F is None else f'total applied force {c} at the final load factor')
    for k, c in enumerate('xyz'):
        Q[f'couple_{c}'] = (None if C is None else float(lam_f * C[k]), 'N mm',
                            no_case if C is None else f'applied couples {c} at the final load factor (not r x F)')
    Q['load_factor'] = (lam_f, '', f'final load factor ({an["type"]})')
    nonlin = an['type'] != 'linear'
    Q['load_factor_peak'] = (lam_pk if nonlin else None, '', 'largest |load factor| along the path'
                             if nonlin else 'linear analysis: no load path')
    Q['limit_point'] = (float(abs(lam_f) < 0.99 * lam_pk) if nonlin else None, '',
                        '1 if the load factor fell after its peak (limit point / snap), else 0'
                        if nonlin else 'linear analysis: no load path')
    Q['control_disp'] = (float(hist[-1, 1]) if an['type'] == 'displacement_control' else None, 'mm',
                         'final control displacement' if an['type'] == 'displacement_control'
                         else 'not a displacement-control analysis')
    Q['buckling_load'] = (None, '', 'not in a static results file: run the shell-buckling skill and pass '
                                    '--value buckling_load=...')

    # failure
    fq, fnotes = failure_quantities(res, lam, a, groups, boom)
    notes += fnotes
    why = None if fq else fnotes[-1]
    crit = 'Hashin 2D' if a.criterion == 'hashin' else 'Tsai-Hill'
    Q['F_sim'] = (fq.get('F_sim'), '', why or f'max {crit} index of the simulation (all facets, plies, points)')
    Q['F_coil'] = (fq.get('F_coil'), '', why or ('coiling (flattening) index' if fq.get('F_coil') is not None
                                                  else 'coiling check not run'))
    Q['F_governing'] = (fq.get('F_governing'), '', why or f'governing failure index ({fq["governing"]})')
    Q['strength_ratio_min'] = (fq.get('R_min'), '', why or 'smallest strength ratio of the simulation '
                                                           '(a load factor only for a linear analysis)')
    if fq:
        notes.append(f'critical point of the simulation: {fq["critical"]}')
    return Q, notes, lam, fq


# --- report ---------------------------------------------------------------------------------

FAILURE = dict(name='no failure', text='always: the component must not fail (failure-check skill)',
               expr='F_governing', op='<', limit=1.0, units='')


def fmt(v):
    return 'n/a' if v is None else f'{v:.6g}'


def main():
    ap = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument('results', help='results .npz written by the assembled OpenSeesPy script')
    ap.add_argument('--constraints', help='JSON: list of constraints or {"constraints": [...]}')
    ap.add_argument('--con', action='append', default=[], help='inline constraint "name: expr op limit"')
    ap.add_argument('--value', action='append', default=[], metavar='NAME=VALUE',
                    help='quantity from another skill (e.g. buckling_load=12.3); replaces one of the same name')
    ap.add_argument('--rho', type=float, help='ply density [kg/m^3] (overrides the laminate and catalog)')
    ap.add_argument('--json', help='output JSON (default <results dir>/<name>_objcon.json)')
    ap.add_argument('--list', action='store_true', help='print every quantity with its value and stop')
    g = ap.add_argument_group('failure-check options (same meaning as in failure_check.py)')
    g.add_argument('--criterion', choices=('hashin', 'tsai-hill'), default='hashin')
    g.add_argument('--S23', type=float)
    g.add_argument('--laminate', help='laminate JSON (default: the one stored in the results)')
    g.add_argument('--web-laminate', help='web laminate JSON for the web facets (default: the model\'s)')
    g.add_argument('--at', choices=('gauss', 'centroid'), default='gauss')
    for k in fc.STRENGTHS:
        g.add_argument(f'--{k}', type=float)
    g.add_argument('--yield', dest='sy', type=float)
    g.add_argument('--boom')
    g.add_argument('--web', type=float, nargs=2, action='append', metavar=('S0', 'S1'))
    g.add_argument('--web-stack', choices=('mirror', 'repeat'), default='mirror')
    g.add_argument('--flatten-radius', type=float)
    a = ap.parse_args()

    import shell_bc_load as bc
    res = bc.load_results(a.results)
    Q, notes, lam, fq = quantities(res, a)
    for item in a.value:
        name, _, v = item.partition('=')
        Q[name.strip()] = (float(v), '', 'given with --value')

    title = res['meta'].get('title', Path(a.results).stem)
    print(f'Objective / constraints: {title}  [{lam.describe()}]')
    if a.list:
        for k, (v, u, d) in Q.items():
            print(f'  {k:<20} {fmt(v):>12} {u:<7} {d}')
        return

    cons = []
    if a.constraints:
        c = json.loads(Path(a.constraints).read_text(encoding='utf-8'))
        cons += c['constraints'] if isinstance(c, dict) else c
    cons += [parse_inline(t) for t in a.con]
    results = [check_constraint(c, Q) for c in [FAILURE] + cons]

    m = Q['mass']
    print(f'OBJECTIVE  minimize mass: {fmt(m[0])} kg' + ('' if m[0] is None else f' ({Q["mass_g"][0]:.4g} g)')
          + ('' if m[0] is not None else f'  -- {m[2]}'))
    print('CONSTRAINTS (g <= 0 is satisfied; g_rel = g / |limit|)')
    for r in results:
        print(f'  [{r["status"].split(":")[0]:<13}] {r["name"]}: {r["expr"]} {r["op"]} {r["limit"]}'
              + (f'  value {fmt(r["value"])}, limit {fmt(r["limit_value"])}, g {fmt(r["g"])}, g_rel {fmt(r["g_rel"])}'
                 if 'value' in r else f'  -- {r["status"]}'))
    evaluated = [r for r in results if 'satisfied' in r]
    if any(not r['satisfied'] for r in evaluated):
        feasible = False
    elif len(evaluated) == len(results):
        feasible = True
    else:
        feasible = None
    print(f'FEASIBLE: {"yes" if feasible else "NO" if feasible is False else "unknown (constraints not evaluated)"}')
    for n in notes:
        print(f'  note: {n}')

    out = Path(a.json) if a.json else Path(a.results).with_name(f'{Path(a.results).stem}_objcon.json')
    doc = dict(results=str(Path(a.results).resolve()), title=title, laminate=lam.describe(),
               objective=dict(name='mass', sense='minimize', value=m[0], units='kg', note=m[2]),
               constraints=results, feasible=feasible,
               quantities={k: dict(value=v, units=u, description=d) for k, (v, u, d) in Q.items()},
               failure=fq, notes=notes)
    out.write_text(json.dumps(doc, indent=1, default=float), encoding='utf-8')
    print(f'saved {out}')


if __name__ == '__main__':
    main()
