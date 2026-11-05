"""
Study manager of the ThinShellOrchestrator: the state machine, ledger and
runner that keep the optimization loop on its prescribed path.

Run it with the `shells` conda python (it starts the skill scripts with the
same interpreter). Every command prints what was done and the NEXT REQUIRED
ACTION; the orchestrator follows that line (PROTOCOL.md).

    study.py new "<study_name>" [--person NAME]   new study folder + requirements.json to fill in
    study.py init <study>                          check requirements, write constraints.json, screen catalogs
    study.py status [<study>] [--brief]            phase, iteration, best design, verifications, next action
    study.py candidates [<study>] [--n 10]         untried designs, calibrated estimates (choose from these)
    study.py choose --material L### --geometry T### --layup Y### --reason "..." [--override "..."]
    study.py run <iter> --step laminate|model|visualize|failure|buckling|objcon|all
    study.py record <iter>                         sanity checks, ledger, calibration, verification/stop decisions
    study.py converge <iter>                       mesh-convergence rerun (element size x 0.6)
    study.py verify <iter>                         Abaqus script + user instructions (opensees-to-abaqus)
    study.py verify-result <iter> --verdict agree|disagree|inconclusive --comparison FILE [--note ..]
    study.py finalize [--force-reason ..]          final/ folder, REPORT.md, list of files to commit
    study.py close [--reason ..]                   stop without finalizing (removes the active-study marker)

<study> defaults to the active study (.claude/orchestrator/ACTIVE_STUDY).
Units: N, mm, MPa; mass kg.
"""
import argparse
import csv
import datetime as dt
import hashlib
import json
import math
import re
import shutil
import statistics
import subprocess
import sys
from pathlib import Path

HERE = Path(__file__).resolve().parent
ORCH = HERE.parent
CLAUDE = ORCH.parent
REPO = CLAUDE.parent
SKILLS = CLAUDE / 'skills'
ACTIVE = ORCH / 'ACTIVE_STUDY'
PY = sys.executable
sys.path.insert(0, str(HERE))

STEPS = ('laminate', 'model', 'visualize', 'failure', 'buckling', 'objcon')
LEDGER_COLS = ('iter', 'material', 'layup', 'geometry', 'type', 'h_mm', 'size_mm', 'mass_kg', 'k_fe', 'k_beam',
               'k_ratio', 'buckling_fe', 'buckling_kind', 'buckling_est', 'F_sim', 'F_flat', 'F_hub',
               'F_governing', 'feasible', 'objective', 'sanity', 'override', 'reason')
K_TOL = 0.15            # FE tip stiffness vs thin-walled beam theory (rigid-end tape spring: 0.4% in v2.0 tests)
CONV_TOL = dict(k=0.02, F=0.10)
NO_IMPROVE_WINDOW, MIN_ITERS_BEFORE_STOP, IMPROVE_TOL = 15, 20, 0.01


# --- small helpers ---------------------------------------------------------------------

def die(msg):
    print(f'REFUSED: {msg}')
    sys.exit(2)


def jload(p):
    return json.loads(Path(p).read_text(encoding='utf-8'))


def jsave(p, d):
    Path(p).write_text(json.dumps(d, indent=1, default=float), encoding='utf-8')


def rel(p):
    try:
        return str(Path(p).resolve().relative_to(REPO.resolve())).replace('\\', '/')
    except ValueError:
        return str(p)


def study_dir(arg=None):
    if arg:
        p = Path(arg)
        return p if p.is_absolute() else (Path.cwd() / p)
    if not ACTIVE.exists():
        die('no active study: give the study folder, or run "study.py new" and "study.py init"')
    return REPO / ACTIVE.read_text(encoding='utf-8').strip()


def load_state(sd):
    f = sd / 'state.json'
    if not f.exists():
        die(f'{rel(sd)} is not initialized: run study.py init "{rel(sd)}"')
    return jload(f)


def save_state(sd, st):
    jsave(sd / 'state.json', st)


def iter_dir(sd, i):
    return sd / 'iterations' / f'it{i:03d}'


def run_cmd(args, log, cwd=SKILLS, timeout=None):
    """Run a skill script with the same python; output to log; returns (code, text)."""
    cmd = [PY] + [str(a) for a in args]
    with open(log, 'w', encoding='utf-8') as f:
        f.write('$ ' + ' '.join(f'"{c}"' if ' ' in c else c for c in cmd) + '\n\n')
        f.flush()
        p = subprocess.run(cmd, cwd=cwd, stdout=f, stderr=subprocess.STDOUT, timeout=timeout, text=True)
    return p.returncode, Path(log).read_text(encoding='utf-8', errors='replace')


def next_action(st):
    """The single next required action, from the state (also used by the hook)."""
    ph, i = st['phase'], st['iteration']
    if st.get('model_trust', {}).get('ok') is False:
        return 'Abaqus verification DISAGREED: report to the user and wait (no new designs)'
    if ph == 'initialized' or ph == 'recorded':
        if st.get('stop', {}).get('recommended'):
            return f'STOP recommended ({st["stop"]["why"]}): run study.py finalize (verifications first if needed)'
        if st.get('convergence_due'):
            return f'study.py converge {st["convergence_due"]}  (mesh convergence of the new best design)'
        if st.get('verification_due'):
            return f'study.py verify {st["verification_due"]}  (Abaqus verification due), then continue'
        if i >= st['max_iterations']:
            return 'iteration budget used: study.py finalize'
        return 'study.py candidates  ->  choose material, then geometry, then layup  ->  study.py choose ...'
    if ph.startswith('step:'):
        done = ph.split(':', 1)[1]
        todo = [s for s in st['steps'] if s not in st['iter_steps_done']]
        return f'study.py run {i} --step {todo[0]}' if todo else f'study.py record {i}'
    if ph == 'chosen':
        return f'study.py run {i} --step {st["steps"][0]}'
    if ph == 'finalized':
        return 'study finalized: report to the user; commit only the files finalize listed (PROTOCOL.md section 6)'
    return 'study.py status'


# --- new / init ------------------------------------------------------------------------

def cmd_new(a):
    day = dt.date.today().strftime('%m-%d-%y')
    slug = re.sub(r'[^A-Za-z0-9_-]+', '_', a.name).strip('_')
    sd = REPO / 'Code for Project' / f'{day} ({a.person})' / slug
    if sd.exists():
        die(f'{rel(sd)} exists; pick another study name')
    sd.mkdir(parents=True)
    req = jload(ORCH / 'requirements_template.json')
    req['study_name'] = slug
    jsave(sd / 'requirements.json', req)
    print(f'created {rel(sd)}/requirements.json (template).')
    print('NEXT: fill it from the user prompt (PROTOCOL.md step 1; paste the prompt verbatim into "prompt"),')
    print(f'      then: study.py init "{rel(sd)}"')


def _clean(d):
    if isinstance(d, dict):
        return {k: _clean(v) for k, v in d.items() if not str(k).startswith('_')}
    if isinstance(d, list):
        return [_clean(v) for v in d]
    return d


def validate_requirements(req):
    errs = []
    if not req.get('prompt') or req['prompt'].startswith('<'):
        errs.append('"prompt" must hold the user prompt verbatim')
    if not isinstance(req.get('length_mm'), (int, float)) or req['length_mm'] <= 0:
        errs.append('"length_mm" must be a positive number (ask the user if the prompt does not give it)')
    obj = req.get('objective', {})
    if obj.get('quantity', 'mass') not in ('mass', 'bending_stiffness', 'buckling'):
        errs.append('objective.quantity must be mass, bending_stiffness or buckling')
    rq = req.get('requirements', {})
    s = rq.get('bending_stiffness')
    if s:
        if s.get('direction') not in ('y', 'z') or s.get('sign') not in (1, -1):
            errs.append('bending_stiffness: direction y|z and sign +1|-1 required')
        if not s.get('min_N_per_mm', 0) > 0:
            errs.append('bending_stiffness.min_N_per_mm must be > 0')
    b = rq.get('buckling')
    if b:
        if b.get('load') == 'bending':
            if b.get('sense') not in ('opposite', 'equal') or b.get('axis', 'y') != 'y':
                errs.append('buckling (bending): axis "y" and sense opposite|equal required')
        elif b.get('load') == 'compression':
            if b.get('ends', 'clamped') not in ('clamped', 'pinned'):
                errs.append('buckling (compression): ends clamped|pinned')
        else:
            errs.append('buckling.load must be bending or compression')
        if not b.get('min_value', 0) > 0:
            errs.append('buckling.min_value must be > 0')
    c = rq.get('coiling')
    if c and not c.get('hub_radius_mm', 0) > 0:
        errs.append('coiling.hub_radius_mm must be > 0')
    if obj.get('quantity') == 'buckling' and not b:
        errs.append('objective "buckling" needs a buckling requirement (load type, sense/ends)')
    if not (s or b or c or req.get('extra_constraints')):
        errs.append('no requirement at all: ask the user what the boom must do')
    v = req.get('verification', {})
    if not 1 <= v.get('min', 5) <= v.get('max', 10):
        errs.append('verification: 1 <= min <= max')
    if not 1 <= req.get('max_iterations', 100) <= 100:
        errs.append('max_iterations must be 1..100 (PROTOCOL.md budget)')
    for k in ('section_classes',):
        bad = set(req.get(k) or []) - {'TS', 'TRAC', 'OM', 'CO'}
        if bad:
            errs.append(f'unknown section classes {bad}')
    return errs


def constraints_from(req):
    rq, L = req.get('requirements', {}), req['length_mm']
    out = [{'name': 'boom length', 'text': f'boom length {L:g} mm (requirements.json)', 'expr': 'L', 'op': '==',
            'limit': L, 'tol': 0.01, 'units': 'mm'}]
    s = rq.get('bending_stiffness')
    if s:
        d = s['direction']
        out.append({'name': 'bending stiffness', 'text': s.get('text', ''), 'expr': f'abs(force_{d}) / abs(tip_u{d})',
                    'op': '>=', 'limit': s['min_N_per_mm'], 'units': 'N/mm'})
    b = rq.get('buckling')
    if b:
        out.append({'name': 'buckling', 'text': b.get('text', ''), 'expr': 'buckling_load', 'op': '>=',
                    'limit': b['min_value'], 'units': b.get('units', 'N mm' if b['load'] == 'bending' else 'N')})
    c = rq.get('coiling')
    if c:
        out.append({'name': 'coiling on hub', 'text': c.get('text', ''), 'expr': 'F_hub', 'op': '<', 'limit': 1,
                    'units': '-'})
    lim = req.get('limits', {})
    for key, expr, nm in (('max_thickness_mm', 'h_max', 'laminate thickness'),
                          ('max_width_mm', 'section_width', 'section width'),
                          ('max_height_mm', 'section_height', 'section height')):
        if lim.get(key):
            out.append({'name': nm, 'text': f'{nm} <= {lim[key]} mm', 'expr': expr, 'op': '<=', 'limit': lim[key],
                        'units': 'mm'})
    return {'constraints': out + list(req.get('extra_constraints') or [])}


def cmd_init(a):
    sd = study_dir(a.study)
    req = _clean(jload(sd / 'requirements.json'))
    errs = validate_requirements(req)
    if errs:
        die('requirements.json:\n  - ' + '\n  - '.join(errs))
    if ACTIVE.exists() and (REPO / ACTIVE.read_text().strip()).resolve() != sd.resolve():
        die(f'another study is active ({ACTIVE.read_text().strip()}): finalize or close it first')
    jsave(sd / 'requirements.clean.json', req)
    jsave(sd / 'constraints.json', constraints_from(req))
    import design_screen as ds
    rows, summary = ds.screen(req)
    (sd / 'screen').mkdir(exist_ok=True)
    if rows:
        with open(sd / 'screen' / 'screen.csv', 'w', newline='') as f:
            w = csv.DictWriter(f, fieldnames=list(rows[0]))
            w.writeheader()
            w.writerows(rows)
    jsave(sd / 'screen' / 'screen_summary.json', summary)
    steps = [s for s in STEPS if s != 'buckling' or req['requirements'].get('buckling')]
    reg = SKILLS / 'regression-tests' / 'last_run_full.txt'
    reg_line = next((ln for ln in reversed(reg.read_text(errors='replace').splitlines()) if ln.strip()), '') \
        if reg.exists() else 'no regression record'
    st = dict(study=rel(sd), created=dt.datetime.now().isoformat(timespec='seconds'),
              req_hash=hashlib.sha1((sd / 'requirements.json').read_bytes()).hexdigest()[:12],
              phase='initialized', iteration=0, max_iterations=req.get('max_iterations', 100), steps=steps,
              iter_steps_done=[], designs={}, best=None, best_history=[], calib=dict(k=[], b=[]),
              verification=dict(min=req.get('verification', {}).get('min', 5),
                                max=req.get('verification', {}).get('max', 10), records=[]),
              verification_due=None, convergence_due=None, converged={}, stop={},
              regression_record=reg_line[:200])
    save_state(sd, st)
    with open(sd / 'ledger.csv', 'w', newline='') as f:
        csv.writer(f).writerow(LEDGER_COLS)
    ACTIVE.write_text(rel(sd), encoding='utf-8')
    print(f'study {rel(sd)} initialized; constraints.json written ({len(constraints_from(req)["constraints"])} '
          'constraints + the always-on no-failure constraint of objective-constraints).')
    print(f'screen: {summary["evaluated"]} combinations, {summary["screen_ok"]} pass the estimates, '
          f'{summary["screen_ok_fe"]} of them FE-supported ({summary["screen_ok_by_type"]}).')
    print(f'rejections: {summary["rejections"]}')
    if summary['materials_skipped']:
        print(f'materials skipped: {summary["materials_skipped"]}')
    if summary['screen_ok_fe'] == 0:
        print('WARNING: no FE-supported (tape-spring) design passes the screening estimates. Tell the user which '
              'requirement rejects them (rejections above) and ask whether to relax it; do not start the loop.')
    print('\nNEXT: ' + next_action(st))


# --- status / candidates ---------------------------------------------------------------

def cmd_status(a):
    sd = study_dir(a.study)
    st = load_state(sd)
    if a.brief:
        best = st['best']
        print(f'[{st["study"]}] iter {st["iteration"]}/{st["max_iterations"]}, phase {st["phase"]}, '
              f'best {best["design"] + " " + format(best["objective"], ".5g") if best else "none"}, '
              f'verifications {len(st["verification"]["records"])}/{st["verification"]["min"]}-'
              f'{st["verification"]["max"]}. NEXT: {next_action(st)}')
        return
    print(json.dumps({k: v for k, v in st.items() if k not in ('designs',)}, indent=1, default=float))
    print(f'designs evaluated: {len(st["designs"])}')
    print('NEXT: ' + next_action(st))


def calib_factor(st, key):
    v = st['calib'][key]
    return statistics.median(v) if v else 1.0


def read_screen(sd):
    f = sd / 'screen' / 'screen.csv'
    if not f.exists():
        return []
    with open(f, newline='') as fh:
        return list(csv.DictReader(fh))


def _num(x):
    try:
        return float(x)
    except (TypeError, ValueError):
        return None


def candidate_list(sd, st, n=10):
    req = jload(sd / 'requirements.clean.json')
    rq = req['requirements']
    ck, cb = calib_factor(st, 'k'), calib_factor(st, 'b')
    tried = set(st['designs'])
    out = []
    for r in read_screen(sd):
        if r['fe_supported'] != 'True':
            continue
        key = f'{r["material"]}/{r["layup"]}/{r["geometry"]}'
        if key in tried:
            continue
        k, b = _num(r['k_est_N_mm']), _num(r['buckling_est'])
        kc = k * ck if k is not None else None
        bc = b * cb if b is not None else None
        pred = True
        if rq.get('bending_stiffness') and kc is not None and kc < rq['bending_stiffness']['min_N_per_mm']:
            pred = False
        if rq.get('buckling') and bc is not None and bc < rq['buckling']['min_value']:
            pred = False
        out.append(dict(design=key, rank=int(r['rank']), material=r['material'], layup=r['layup'],
                        geometry=r['geometry'], h_mm=_num(r['h_mm']), mass_kg=_num(r['mass_kg']),
                        k_cal=kc, buckling_cal=bc, F_flat=_num(r['F_flat']), F_hub=_num(r['F_hub']),
                        n_angles=int(r['n_angles']), predicted_feasible=pred))
    obj = req.get('objective', {})
    q = {'mass': 'mass_kg', 'bending_stiffness': 'k_cal', 'buckling': 'buckling_cal'}[obj.get('quantity', 'mass')]
    sgn = 1 if obj.get('sense', 'minimize') == 'minimize' else -1
    out.sort(key=lambda c: (not c['predicted_feasible'], sgn * (c[q] if c[q] is not None else sgn * 1e99)))
    top = out[:n]
    # diversity: best predicted-feasible design for materials / geometries not yet tried
    tm = {d.split('/')[0] for d in tried}
    tg = {d.split('/')[2] for d in tried}
    explore, seen = [], set()
    for c in out:
        tag = None
        if c['material'] not in tm and ('m', c['material']) not in seen:
            tag = ('m', c['material'])
        elif c['geometry'] not in tg and ('g', c['geometry']) not in seen:
            tag = ('g', c['geometry'])
        if tag and c['predicted_feasible'] and c not in top:
            seen.add(tag)
            explore.append(c)
        if len(explore) >= 5:
            break
    return top, explore, ck, cb


def cmd_candidates(a):
    sd = study_dir(a.study)
    st = load_state(sd)
    top, explore, ck, cb = candidate_list(sd, st, a.n)
    print(f'calibration (median FE/estimate): stiffness x{ck:.3g} ({len(st["calib"]["k"])} runs), '
          f'buckling x{cb:.3g} ({len(st["calib"]["b"])} runs)')
    cols = ('design', 'rank', 'h_mm', 'mass_kg', 'k_cal', 'buckling_cal', 'F_flat', 'F_hub', 'n_angles',
            'predicted_feasible')

    def show(title, rows):
        print(f'\n{title}')
        print('  '.join(cols))
        for r in rows:
            print('  '.join(f'{r[c]:.4g}' if isinstance(r[c], float) else str(r[c]) for c in cols))
    show(f'TOP {len(top)} untried (choose from these unless an FE result justifies an override):', top)
    show('EXPLORE (best untried design with a material / geometry not yet run):', explore)
    jsave(sd / 'screen' / 'last_candidates.json', dict(top=top, explore=explore, iteration=st['iteration']))
    print('\nNEXT: study.py choose --material ... --geometry ... --layup ... --reason "..."')


# --- choose ----------------------------------------------------------------------------

def mesh_size(b, L):
    s = min(5.0, b / 8.0)
    return max(0.5, round(s, 1))


def cmd_choose(a):
    sd = study_dir(a.study)
    st = load_state(sd)
    if st['phase'] not in ('initialized', 'recorded'):
        die(f'iteration {st["iteration"]} is not recorded yet (phase {st["phase"]}). NEXT: {next_action(st)}')
    if st['iteration'] >= st['max_iterations']:
        die(f'iteration budget ({st["max_iterations"]}) used: run study.py finalize')
    if st.get('convergence_due'):
        die(f'mesh convergence of iteration {st["convergence_due"]} is due first: study.py converge '
            f'{st["convergence_due"]}')
    if st.get('verification_due'):
        die(f'an Abaqus verification of iteration {st["verification_due"]} is due first: study.py verify '
            f'{st["verification_due"]} (it only writes the script; the loop goes on while the user runs Abaqus)')
    key = f'{a.material}/{a.layup}/{a.geometry}'
    if key in st['designs']:
        die(f'{key} was already evaluated (iteration {st["designs"][key]["iter"]}); pick another design')
    rows = {f'{r["material"]}/{r["layup"]}/{r["geometry"]}': r for r in read_screen(sd)}
    if key not in rows:
        die(f'{key} is not in the screen (wrong ID, excluded by the requirements, or rejected by an exact check: '
            'coiling F >= 1 or a limit). Choose from study.py candidates')
    row = rows[key]
    if row['fe_supported'] != 'True':
        die(f'{a.geometry} is a {row["type"]}: shell-mesh cannot build it faithfully (PROTOCOL.md section 4)')
    if not a.reason or len(a.reason) < 20:
        die('--reason must say why this material, geometry and layup (in that order), in a sentence or more')
    last = sd / 'screen' / 'last_candidates.json'
    listed = set()
    if last.exists():
        lc = jload(last)
        if lc.get('iteration') == st['iteration']:
            listed = {c['design'] for c in lc['top'] + lc['explore']}
    if key not in listed and not a.override:
        die('this design is not in the current study.py candidates list (run it first, choose from TOP/EXPLORE), '
            'or give --override "<the FE result that justifies it>"')
    if st.get('model_trust', {}).get('ok') is False:
        die('an Abaqus verification disagreed: report it to the user and wait for instructions')
    req = jload(sd / 'requirements.clean.json')
    sys.path.insert(0, str(CLAUDE / 'memory.boom_geometry_catalog'))
    from boom_data import GEOMETRIES  # noqa: E402
    i = st['iteration'] + 1
    idir = iter_dir(sd, i)
    idir.mkdir(parents=True, exist_ok=True)
    g = next(x for x in GEOMETRIES if x['id'] == a.geometry)
    R, th = g['A'][0]
    b = R * math.radians(th)
    L = float(req['length_mm'])
    size = mesh_size(b, L)
    s = req['requirements'].get('bending_stiffness') or {'direction': 'z', 'sign': -1, 'load_N': 1.0}
    F = [0.0, 0.0, 0.0]
    F['xyz'.index(s['direction'])] = s['sign'] * reference_load(s, L)
    name = f'it{i:03d}_{a.material}_{a.layup}_{a.geometry}'
    lay = row['layup']
    layup_str = next(ln.split()[2] for ln in (CLAUDE / 'memory.layup_catalog' / 'layup_catalog.txt')
                     .read_text().splitlines() if ln.startswith(a.layup + ' '))
    case = {'name': name, 'laminate': {'json': 'lam.json'},
            'geometry': {'L': L, 'section': {'type': 'arc', 'R': R, 'b': round(b, 6)}, 'size': size,
                         'boom': a.geometry},
            'element': {'type': 'ASDShellQ4', 'corotational': False},
            'supports': [{'rigid_end': 'x0', 'dofs': [1, 1, 1, 1, 1, 1]}, {'rigid_end': 'xL'}],
            'loads': [{'node': {'rigid': 'xL'}, 'force': F}],
            'analysis': {'type': 'linear'}, 'report_node': {'rigid': 'xL'}}
    jsave(idir / 'case.json', case)
    design = dict(iter=i, key=key, material=a.material, layup=a.layup, layup_str=layup_str, geometry=a.geometry,
                  type=row['type'], R=R, b=b, L=L, size=size, name=name, reason=a.reason,
                  override=a.override or '', screen_rank=int(row['rank']), h_mm=float(row['h_mm']),
                  k_est=_num(row['k_est_N_mm']), buckling_est=_num(row['buckling_est']),
                  Ex=float(row['Ex_MPa']), EIz=float(row['EIz_Nmm2']), EIy=float(row['EIy_Nmm2']), F_flat=float(row['F_flat']),
                  F_hub=_num(row['F_hub']), r_min=float(row['r_min_mm']), cross_ply=row['cross_ply'] == 'True')
    bq = req['requirements'].get('buckling')
    if bq:
        design['buckling_est_cal'] = (design['buckling_est'] or bq['min_value']) * calib_factor(st, 'b')
        jsave(idir / 'buckling.json', buckling_case(design, bq))
    jsave(idir / 'design.json', design)
    st['designs'][key] = dict(iter=i)
    st.update(iteration=i, phase='chosen', iter_steps_done=[])
    save_state(sd, st)
    print(f'iteration {i}: {key} ({row["type"]} R {R:g} mm, b {b:.4g} mm, {lay} = {layup_str}, h {row["h_mm"]} mm, '
          f'L {L:g} mm, element size {size} mm){" OVERRIDE" if a.override else ""}')
    print(f'case: {rel(idir / "case.json")}')
    print('NEXT: ' + next_action(st))


def reference_load(s, L):
    """Tip load of the static case: the user's service load (load_N), else the load that deflects a boom of
    exactly the required stiffness by L/100 (the failure check is only meaningful at a stated load)."""
    if s.get('load_N'):
        return float(s['load_N'])
    if s.get('min_N_per_mm'):
        return s['min_N_per_mm'] * L / 100
    return 1.0


def buckling_case(d, bq):
    """boom_buckling.py case for the design (path range from the screening estimates)."""
    case = {'name': d['name'] + '_buck', 'laminate': {'json': 'lam.json'},
            'geometry': {'L': d['L'], 'section': {'type': 'arc', 'R': d['R'], 'b': round(d['b'], 6)},
                         'size': d['size']}}
    est = max(d.get('buckling_est_cal') or 0, bq['min_value'])   # range from the calibrated estimate
    if bq['load'] == 'bending':
        case['load'] = {'type': 'bending', 'axis': 'y', 'sign': 1 if bq['sense'] == 'opposite' else -1}
        th = 4 * est * d['L'] / d['EIz']
        mx = min(max(th, 0.05), 1.0)
    else:
        case['load'] = {'type': 'compression', 'ends': bq.get('ends', 'clamped')}
        mx = 3 * est * d['L'] / (d['Ex'] * d['h_mm'] * d['b'])   # 3 x end shortening at P_est
    case['A'] = {'step': mx / 60, 'max': mx, 'n_coarse': 8}
    case['B'] = {'step': mx / 60, 'max': mx, 'amplitude': round(0.1 * d['h_mm'], 6), 'control': 'disp'}
    return case


# --- run -------------------------------------------------------------------------------

def cmd_run(a):
    sd = study_dir(a.study)
    st = load_state(sd)
    i = a.iter
    if i != st['iteration'] or st['phase'] not in ('chosen',) and not st['phase'].startswith('step:'):
        die(f'iteration {i} is not the open iteration (open: {st["iteration"]}, phase {st["phase"]})')
    steps = st['steps'] if a.step == 'all' else [a.step]
    for step in steps:
        if step not in st['steps']:
            die(f'step {step} is not part of this study (steps: {st["steps"]})')
        todo = [s for s in st['steps'] if s not in st['iter_steps_done']]
        if step in st['iter_steps_done'] and a.step != 'all':
            die(f'step {step} already done; next: {next_action(st)}')
        if step in st['iter_steps_done']:
            continue
        if todo[0] != step:
            die(f'out of order: {todo[0]} comes before {step} (PROTOCOL.md section 3)')
        ok, msg = run_step(sd, st, i, step)
        print(msg)
        if not ok:
            st['phase'] = f'step:{step}-FAILED'
            save_state(sd, st)
            die(f'step {step} failed: read the log, fix the cause (never the skill scripts without the user), then '
                f'rerun "study.py run {i} --step {step}"')
        st['iter_steps_done'].append(step)
        st['phase'] = f'step:{step}'
        save_state(sd, st)
    print('NEXT: ' + next_action(st))


def run_step(sd, st, i, step):
    idir = iter_dir(sd, i)
    d = jload(idir / 'design.json')
    npz = idir / 'results' / f'{d["name"]}.npz'
    logs = idir / 'logs'
    logs.mkdir(exist_ok=True)
    log = logs / f'{step}.log'
    if step == 'laminate':
        code, out = run_cmd(['laminate-properties/laminate_properties.py', '--catalog', d['material'],
                             '--layup', d['layup_str'], '--check', '--save-json', idir / 'lam.json'], log)
        m = re.search(r'max relative difference: A ([\d.e+-]+), B ([\d.e+-]+), D ([\d.e+-]+).*?= ([\d.e+-]+)', out)
        if code or not m:
            return False, f'laminate-properties failed (log {rel(log)})'
        A, B, D, Dexp = map(float, m.groups())
        good = A < 1e-10 and B < 1e-10 and D <= 2 * Dexp + 1e-12
        d['abd_check'] = dict(A=A, B=B, D=D, D_expected=Dexp, ok=good)
        jsave(idir / 'design.json', d)
        return good, f'laminate {d["material"]} {d["layup_str"]}: ABD check A {A:.1e}, B {B:.1e}, D {D:.1e} ' \
                     f'(expected ~{Dexp:.1e}) -> {"OK" if good else "FAIL: stop (PROTOCOL.md section 5)"}'
    if step == 'model':
        code, out = run_cmd(['shell-assemble-run/assemble_run.py', idir / 'case.json', '--laminate',
                             idir / 'lam.json'], log)
        ok = code == 0 and npz.exists()
        return ok, f'assembled + ran {rel(idir / (d["name"] + "_opensees.py"))} -> {rel(npz)} ' \
                   f'({"OK" if ok else "FAILED"}; log {rel(log)})'
    if step == 'visualize':
        png = idir / 'results' / f'{d["name"]}.png'
        code, _ = run_cmd(['shell-visualize/shell_visualize.py', npz, '--png', png, '--no-gui', '--boom',
                           d['geometry']], log)
        return code == 0 and png.exists(), f'picture {rel(png)}: READ IT before going on (deformed shape, ' \
                                           f'supports, load direction)'
    if step == 'failure':
        code, out = run_cmd(['failure-check/failure_check.py', npz, '--boom', d['geometry'], '--flatten-radius',
                             d['r_min']], log)
        m = re.search(r'GOVERNING F[^0-9]*([\d.]+(?:e[+-]?\d+)?)', out)
        d['failure_log'] = rel(log)
        d['F_governing_fc'] = float(m.group(1)) if m else None
        jsave(idir / 'design.json', d)
        return code == 0, f'failure-check: GOVERNING F = {d["F_governing_fc"]} (log {rel(log)})'
    if step == 'buckling':
        # buckling paths cost tens of minutes: skip them for designs already infeasible without buckling
        pre = idir / 'objcon_pre.json'
        vals = ['--value', f'F_hub={d["F_hub"]}'] if d.get('F_hub') is not None else []
        run_cmd(['objective-constraints/objective_constraints.py', npz, '--constraints', sd / 'constraints.json',
                 '--boom', d['geometry'], '--flatten-radius', d['r_min'], '--json', pre] + vals,
                logs / 'objcon_pre.log')
        if pre.exists() and jload(pre).get('feasible') is False:
            bad = [c['name'] for c in jload(pre)['constraints'] if c.get('status') == 'VIOLATED']
            d.update(buckling_value=None, buckling_kind=f'skipped: already violates {", ".join(bad)}')
            jsave(idir / 'design.json', d)
            return True, f'buckling skipped: the design already violates {", ".join(bad)} (saves the path run)'
        return run_buckling(idir, d, logs)
    if step == 'objcon':
        vals = []
        if d.get('F_hub') is not None:
            vals += ['--value', f'F_hub={d["F_hub"]}']
        if d.get('buckling_value') is not None:
            vals += ['--value', f'buckling_load={d["buckling_value"]}']
        code, out = run_cmd(['objective-constraints/objective_constraints.py', npz, '--constraints',
                             sd / 'constraints.json', '--boom', d['geometry'], '--flatten-radius', d['r_min'],
                             '--json', idir / 'objcon.json'] + vals, log)
        return code == 0 and (idir / 'objcon.json').exists(), f'objective-constraints -> {rel(idir / "objcon.json")}'
    return False, f'unknown step {step}'


def _widen(case, f=2.0):
    for k in ('A', 'B'):
        if k in case:
            case[k]['max'] *= f
            case[k]['step'] *= f
    return case


def run_buckling(idir, d, logs, max_widen=3):
    """boom_buckling.py on the design. The path range comes from the screening estimate (a lower bound for
    tape springs), so it is doubled (up to max_widen times) while A finds no crossing or B's path is still
    rising at its end. Off-axis layups: mode shape of A from a 0/90 surrogate of the same thickness."""
    case = jload(idir / 'buckling.json')
    bdir = idir / 'buckling'
    notes = []
    if not d['cross_ply'] and 'mode_file' not in case:
        lam = jload(idir / 'lam.json')
        surlam = idir / 'lam_surrogate_0_90.json'
        for p in lam.get('plies', []):
            p['theta'] = 0.0 if abs(p['theta']) % 180 < 45 or abs(p['theta']) % 180 > 135 else 90.0
        jsave(surlam, lam)
        sur = dict(json.loads(json.dumps(case)), name=case['name'] + '_surrogate_0_90',
                   laminate={'json': surlam.name})
        for k in range(max_widen + 1):
            jsave(idir / 'buckling_surrogate.json', sur)
            code, _ = run_cmd([SKILLS / 'shell-buckling' / 'boom_buckling.py', idir / 'buckling_surrogate.json',
                               '--out', bdir, '--only', 'A'], logs / f'buckling_surrogate_{k}.log', cwd=idir)
            rs = bdir / f'{sur["name"]}.json'
            if code == 0 and rs.exists() and (jload(rs).get('A') or {}).get('critical_load'):
                break
            _widen(sur)
        mf = bdir / f'{sur["name"]}_mode.npz'
        if mf.exists():
            case['mode_file'] = str(mf)
            notes.append('mode shape from a 0/90 surrogate laminate (ShellNLDKGQ takes 0/90 plies only)')
        else:
            notes.append('NO MODE SHAPE (surrogate scan found no crossing): B ran without imperfection')
    for k in range(max_widen + 1):
        jsave(idir / 'buckling.json', case)
        code, out = run_cmd([SKILLS / 'shell-buckling' / 'boom_buckling.py', idir / 'buckling.json', '--out', bdir],
                            logs / f'buckling_{k}.log', cwd=idir)
        rf = bdir / f'{case["name"]}.json'
        if code or not rf.exists():
            return False, f'boom_buckling failed (log {rel(logs / f"buckling_{k}.log")})'
        r = jload(rf)
        B = r.get('B') or {}
        if B.get('peak_load') is not None and not B.get('peak_is_last_point'):
            break
        if k < max_widen:
            notes.append(f'path range doubled to {case["B"]["max"] * 2:g} (no peak yet)')
            _widen(case)
    A = (r.get('A') or {}).get('critical_load')
    if B.get('peak_load') is not None and not B.get('peak_is_last_point'):
        val, kind = B['peak_load'], 'B peak (limit point)'
        drop = 1 - abs(B['history'][-1][1]) / abs(B['peak_load']) if B.get('history') else 0
        if drop < 0.01:
            kind = 'B peak (limit point reached, path stalled there: falling branch not traced; Abaqus Riks to confirm)'
    elif B.get('peak_load') is not None:
        val, kind = B['peak_load'], 'B LOWER BOUND (path stopped while rising)'
    elif A:
        val, kind = A, 'A estimate only'
    else:
        val, kind = None, 'none'
    if B.get('imperfection') == 'none' and B.get('peak_load') is not None:
        kind += ' [no imperfection: a bifurcation may have been missed]'
    d.update(buckling_value=val, buckling_kind=kind, buckling_A=A, buckling_B=B.get('peak_load'),
             buckling_amplitude=B.get('amplitude'), buckling_imperfection=B.get('imperfection'),
             buckling_notes=notes)
    jsave(idir / 'design.json', d)
    return val is not None, f'buckling: {kind} = {val} (A {A}, B {B.get("peak_load")}, imperfection '                             f'{B.get("imperfection")}; {"; ".join(notes)}; {rel(rf)}, picture '                             f'{rel(bdir / (case["name"] + ".png"))})'


# --- record ----------------------------------------------------------------------------

def cmd_record(a):
    sd = study_dir(a.study)
    st = load_state(sd)
    i = a.iter
    if i != st['iteration'] or [s for s in st['steps'] if s not in st['iter_steps_done']]:
        die(f'iteration {i} is not complete. NEXT: {next_action(st)}')
    idir = iter_dir(sd, i)
    d = jload(idir / 'design.json')
    oc = jload(idir / 'objcon.json')
    req = jload(sd / 'requirements.clean.json')
    Q = {k: (v.get('value') if isinstance(v, dict) else v) for k, v in oc.get('quantities', {}).items()}
    s = req['requirements'].get('bending_stiffness') or {'direction': 'z'}
    dirn = s['direction']
    F = abs(Q.get(f'force_{dirn}') or 0.0)
    u = abs(Q.get(f'tip_u{dirn}') or 0.0)
    k_fe = F / u if u > 0 else None
    EI = d['EIz'] if dirn == 'z' else d['EIy']
    k_beam = 3 * EI / d['L']**3
    k_ratio = k_fe / k_beam if k_fe else None
    sanity = []
    if k_ratio is None or not math.isfinite(k_ratio):
        sanity.append('no tip stiffness (zero or non-finite tip displacement)')
    elif abs(k_ratio - 1) > K_TOL:
        sanity.append(f'tip stiffness {100 * (k_ratio - 1):+.1f}% from thin-walled beam theory (tolerance '
                      f'{100 * K_TOL:.0f}%)')
    if not d.get('abd_check', {}).get('ok'):
        sanity.append('ABD check failed')
    Fg = (oc.get('failure') or {}).get('F_governing', Q.get('F_governing'))
    if Fg is None or (isinstance(Fg, float) and not math.isfinite(Fg)):
        sanity.append('no failure index')
    if d.get('buckling_kind', '').startswith('B LOWER') and (d.get('buckling_value') or 0) <             req['requirements']['buckling']['min_value']:
        sanity.append('buckling path stopped while rising below the requirement (lower bound only)')
    if 'no imperfection' in d.get('buckling_kind', ''):
        sanity.append('buckling path without imperfection: a bifurcation may have been missed')
    if d.get('buckling_A') and d.get('buckling_B') and d['buckling_B'] > 1.5 * d['buckling_A']:
        sanity.append('buckling B peak > 1.5 x A estimate: check the path and imperfection')
    # consistency with previously verified results of the same section family
    for v in st['verification']['records']:
        if v.get('verdict') == 'agree' and v.get('k_ratio') and k_ratio and v.get('type') == d['type']:
            if abs(k_ratio / v['k_ratio'] - 1) > 0.05:
                sanity.append(f'FE/beam ratio {k_ratio:.3f} differs > 5% from the Abaqus-verified iteration '
                              f'{v["iter"]} ({v["k_ratio"]:.3f})')
            break
    # calibration (only from sane runs)
    if not sanity:
        if k_fe and d.get('k_est'):
            st['calib']['k'].append(k_fe / d['k_est'])
        if d.get('buckling_value') and d.get('buckling_est') and d.get('buckling_kind', '').startswith('B peak'):
            st['calib']['b'].append(d['buckling_value'] / d['buckling_est'])
    obj = req.get('objective', {})
    qn = obj.get('quantity', 'mass')
    objective = (oc.get('objective') or {}).get('value') if qn == 'mass' else k_fe if qn == 'bending_stiffness' \
        else d.get('buckling_value')
    feasible = oc.get('feasible')
    better = False
    if feasible is True and not sanity and objective is not None:
        best = st['best']
        sgn = 1 if obj.get('sense', 'minimize') == 'minimize' else -1
        if best is None or sgn * objective < sgn * best['objective']:
            improvement = None if best is None else abs(objective - best['objective']) / abs(best['objective'])
            st['best'] = dict(iter=i, design=d['key'], objective=objective, improvement=improvement)
            better = True
    st['best_history'].append(st['best']['objective'] if st['best'] else None)
    row = dict(iter=i, material=d['material'], layup=d['layup'], geometry=d['geometry'], type=d['type'],
               h_mm=d['h_mm'], size_mm=d['size'], mass_kg=(oc.get('objective') or {}).get('value'), k_fe=k_fe,
               k_beam=k_beam, k_ratio=k_ratio, buckling_fe=d.get('buckling_value'),
               buckling_kind=d.get('buckling_kind', ''), buckling_est=d.get('buckling_est'),
               F_sim=Q.get('F_sim'), F_flat=d['F_flat'], F_hub=d.get('F_hub'), F_governing=Fg,
               feasible=feasible, objective=objective, sanity='; '.join(sanity), override=d['override'],
               reason=d['reason'])
    with open(sd / 'ledger.csv', 'a', newline='') as f:
        csv.writer(f).writerow([row[c] for c in LEDGER_COLS])
    d.update(k_fe=k_fe, k_beam=k_beam, k_ratio=k_ratio, sanity=sanity, feasible=feasible, objective=objective)
    jsave(idir / 'design.json', d)
    st['designs'][d['key']].update(feasible=feasible, objective=objective, sanity=bool(sanity))
    st['phase'] = 'recorded'
    st['convergence_due'] = i if (better or i == 1) and not st['converged'].get(str(i)) else None
    st['verification_due'] = verification_due(st, i, better, bool(sanity))
    st['stop'] = stop_decision(st, sd)
    save_state(sd, st)
    print(f'iteration {i} recorded: {d["key"]}  mass {row["mass_kg"]} kg, k_FE {k_fe} N/mm '
          f'(beam theory {k_beam:.4g}, ratio {k_ratio}), buckling {row["buckling_fe"]} ({row["buckling_kind"]}), '
          f'F_governing {Fg}, F_hub {d.get("F_hub")}, feasible {feasible}')
    print('constraints: ' + '; '.join(f'{c.get("name")}: {c.get("status")} (g_rel {c.get("g_rel")})'
                                      for c in (oc.get('constraints') or [])))
    if sanity:
        print('SANITY FLAGS (investigate before using this result; it is excluded from best and calibration):\n  - '
              + '\n  - '.join(sanity))
    if better:
        print(f'NEW BEST feasible design (objective {objective:.6g})')
    print('NEXT: ' + next_action(st))


def verification_due(st, i, better, flagged):
    V = st['verification']
    n = len(V['records'])
    if n >= V['max']:
        return None
    last = max((v['iter'] for v in V['records']), default=None)
    if i == 1:
        return i
    spacing_ok = last is None or i - last >= 5
    if flagged and spacing_ok:
        return i
    if better and spacing_ok:
        verified_types = {v.get('type') for v in V['records']}
        lastv = next((v for v in reversed(V['records']) if v.get('objective') is not None), None)
        if st['best'] and (lastv is None or abs(st['best']['objective'] - lastv['objective'])
                           >= 0.10 * abs(lastv['objective'])):
            return i
        d = st['designs'].get(st['best']['design'], {}) if st['best'] else {}
        if d and d.get('type') not in verified_types:
            return i
    if last is not None and i - last >= 12:
        return i
    return None


def stop_decision(st, sd):
    i = st['iteration']
    if i >= st['max_iterations']:
        return dict(recommended=True, why=f'{st["max_iterations"]} iterations')
    top, _, _, _ = candidate_list(sd, st, 1)
    if not top:
        return dict(recommended=True, why='no untried candidate left')
    h = st['best_history']
    if i >= MIN_ITERS_BEFORE_STOP and h[-1] is not None and len(h) > NO_IMPROVE_WINDOW:
        ref = h[-1 - NO_IMPROVE_WINDOW]
        if ref is not None and abs(h[-1] - ref) <= IMPROVE_TOL * abs(ref):
            return dict(recommended=True, why=f'best improved < {100 * IMPROVE_TOL:g}% over the last '
                                              f'{NO_IMPROVE_WINDOW} iterations (diminishing returns)')
    if top and not top[0]['predicted_feasible'] and st['best'] is not None and i >= MIN_ITERS_BEFORE_STOP:
        return dict(recommended=True, why='no untried candidate is predicted feasible')
    return dict(recommended=False)


# --- convergence / verification ----------------------------------------------------------

def cmd_converge(a):
    sd = study_dir(a.study)
    st = load_state(sd)
    i = a.iter
    idir = iter_dir(sd, i)
    d = jload(idir / 'design.json')
    if st['phase'] != 'recorded' or i > st['iteration']:
        die('converge runs on a recorded iteration')
    if not d.get('k_fe'):
        die(f'iteration {i} has no FE tip stiffness to compare (sanity flag); investigate it instead')
    case = jload(idir / 'case.json')
    fine = round(max(0.3, d['size'] * 0.6), 2)
    cdir = idir / 'convergence'
    cdir.mkdir(exist_ok=True)
    case['name'] = d['name'] + '_fine'
    case['geometry']['size'] = fine
    case['laminate'] = {'json': str((idir / 'lam.json').resolve())}
    jsave(cdir / 'case_fine.json', case)
    code, _ = run_cmd(['shell-assemble-run/assemble_run.py', cdir / 'case_fine.json', '--laminate', idir / 'lam.json'],
                      cdir / 'model.log')
    npz = cdir / 'results' / f'{case["name"]}.npz'
    if code or not npz.exists():
        die(f'fine-mesh run failed (log {rel(cdir / "model.log")})')
    code, _ = run_cmd(['objective-constraints/objective_constraints.py', npz, '--constraints', sd / 'constraints.json',
                       '--boom', d['geometry'], '--flatten-radius', d['r_min'], '--json', cdir / 'objcon_fine.json']
                      + (['--value', f'F_hub={d["F_hub"]}'] if d.get('F_hub') is not None else []), cdir / 'objcon.log')
    oc = jload(cdir / 'objcon_fine.json')
    Q = {k: (v.get('value') if isinstance(v, dict) else v) for k, v in oc.get('quantities', {}).items()}
    req = jload(sd / 'requirements.clean.json')
    dirn = (req['requirements'].get('bending_stiffness') or {'direction': 'z'})['direction']
    k_fine = abs(Q[f'force_{dirn}']) / abs(Q[f'tip_u{dirn}'])
    dk = abs(k_fine / d['k_fe'] - 1)
    F0, F1 = jload(idir / 'objcon.json')['quantities'].get('F_sim'), oc['quantities'].get('F_sim')
    F0 = F0.get('value') if isinstance(F0, dict) else F0
    F1 = F1.get('value') if isinstance(F1, dict) else F1
    dF = abs(F1 / F0 - 1) if F0 else 0.0
    ok = dk <= CONV_TOL['k'] and dF <= CONV_TOL['F']
    st['converged'][str(i)] = dict(ok=ok, size=d['size'], fine=fine, dk=dk, dF=dF)
    if st.get('convergence_due') == i:
        st['convergence_due'] = None
    if not ok and st['best'] and st['best']['iter'] == i:
        print('NOT CONVERGED: the best design is withdrawn until the mesh is refined (PROTOCOL.md section 5)')
        st['best'] = None
        prev = [(v['objective'], k) for k, v in st['designs'].items()
                if v.get('feasible') is True and not v.get('sanity') and v.get('objective') is not None
                and st['converged'].get(str(v['iter']), {}).get('ok', True) and v['iter'] != i]
        if prev:
            obj, key = min(prev)
            st['best'] = dict(iter=st['designs'][key]['iter'], design=key, objective=obj, improvement=None)
    save_state(sd, st)
    print(f'mesh convergence of iteration {i}: size {d["size"]} -> {fine} mm: tip stiffness {100 * dk:.2f}% '
          f'(tol {100 * CONV_TOL["k"]:.0f}%), F_sim {100 * dF:.1f}% (tol {100 * CONV_TOL["F"]:.0f}%) -> '
          f'{"CONVERGED" if ok else "NOT CONVERGED"}')
    print('NEXT: ' + next_action(st))


def cmd_verify(a):
    sd = study_dir(a.study)
    st = load_state(sd)
    i = a.iter
    V = st['verification']
    if any(v['iter'] == i for v in V['records']):
        die(f'iteration {i} already has a verification record')
    if len(V['records']) >= V['max']:
        die(f'verification budget ({V["max"]}) used')
    idir = iter_dir(sd, i)
    d = jload(idir / 'design.json')
    script = idir / f'{d["name"]}_opensees.py'
    code, out = run_cmd(['opensees-to-abaqus/opensees_to_abaqus.py', script], idir / 'logs' / 'abaqus.log')
    instr = idir / f'abaqus_{d["name"]}_instructions.txt'
    if code:
        die(f'opensees-to-abaqus model check FAILED: do not hand the script out (log {rel(idir / "logs/abaqus.log")})')
    V['records'].append(dict(iter=i, design=d['key'], type=d['type'], status='pending', verdict=None,
                             requested=dt.datetime.now().isoformat(timespec='seconds'), k_ratio=d.get('k_ratio'),
                             objective=d.get('objective'), instructions=rel(instr)))
    if st.get('verification_due') == i:
        st['verification_due'] = None
    save_state(sd, st)
    print(f'Abaqus script ready for iteration {i}. Give the user the instructions block VERBATIM from '
          f'{rel(instr)} and continue the loop; the comparison runs when the user brings back <job>_odb.npz.')
    print(instr.read_text(encoding='utf-8', errors='replace') if instr.exists() else out[-3000:])
    print('NEXT: ' + next_action(st))


def cmd_verify_result(a):
    sd = study_dir(a.study)
    st = load_state(sd)
    rec = next((v for v in st['verification']['records'] if v['iter'] == a.iter), None)
    if rec is None:
        die(f'no verification was requested for iteration {a.iter}')
    if not Path(a.comparison).exists():
        die(f'{a.comparison} does not exist: the OpenSeesAbaqusResultsComparator report is required')
    rec.update(status='done', verdict=a.verdict, comparison=rel(a.comparison), note=a.note or '')
    if a.verdict == 'disagree':
        st['model_trust'] = dict(ok=False, iter=a.iter, note=a.note or '')
        print('DISAGREE: stop choosing new designs. Report the discrepancy to the user and wait for instructions '
              '(PROTOCOL.md section 5).')
    save_state(sd, st)
    print(f'verification of iteration {a.iter}: {a.verdict}')
    print('NEXT: ' + next_action(st))


# --- finalize / close --------------------------------------------------------------------

def cmd_finalize(a):
    sd = study_dir(a.study)
    st = load_state(sd)
    if st['phase'] not in ('recorded', 'initialized'):
        die(f'finish iteration {st["iteration"]} first (phase {st["phase"]})')
    V = st['verification']
    best = st['best']
    problems = []
    if best is None:
        problems.append('no feasible, sane design was found')
    else:
        if not st['converged'].get(str(best['iter']), {}).get('ok'):
            problems.append(f'best design (iteration {best["iter"]}) has no passed mesh-convergence check: '
                            f'study.py converge {best["iter"]}')
        if not any(v['iter'] == best['iter'] for v in V['records']):
            problems.append(f'best design (iteration {best["iter"]}) has no Abaqus verification: '
                            f'study.py verify {best["iter"]}')
    if len(V['records']) < V['min']:
        problems.append(f'only {len(V["records"])} verifications requested (minimum {V["min"]}): verify more designs '
                        '(best first, then the most different feasible ones)')
    if problems and not a.force_reason:
        die('cannot finalize yet:\n  - ' + '\n  - '.join(problems) + '\n(or --force-reason "..." if the user says so)')
    fin = sd / 'final'
    fin.mkdir(exist_ok=True)
    files = [sd / 'requirements.json', sd / 'constraints.json', sd / 'ledger.csv', sd / 'REPORT.md']
    if best:
        idir = iter_dir(sd, best['iter'])
        d = jload(idir / 'design.json')
        for f in [idir / 'case.json', idir / 'lam.json', idir / 'design.json', idir / 'objcon.json',
                  idir / f'{d["name"]}_opensees.py', idir / 'results' / f'{d["name"]}.png',
                  idir / f'abaqus_{d["name"]}.py', idir / f'abaqus_{d["name"]}_instructions.txt',
                  idir / 'buckling.json', idir / 'buckling' / f'{d["name"]}_buck.png']:
            if f.exists():
                shutil.copy2(f, fin / f.name)
        files.append(fin)
    report = sd / 'REPORT.md'
    if not report.exists():
        report.write_text(report_skeleton(sd, st), encoding='utf-8')
    st['phase'] = 'finalized'
    st['finalized'] = dict(time=dt.datetime.now().isoformat(timespec='seconds'), forced=a.force_reason or '',
                           open_problems=problems)
    save_state(sd, st)
    if ACTIVE.exists():
        ACTIVE.unlink()
    print(f'finalized {rel(sd)}. Complete REPORT.md (sections marked TODO), then commit ONLY these paths:')
    for f in files:
        print(f'  git add "{rel(f)}"')
    print('Skill changes go in a separate commit, only after regression-tests pass (PROTOCOL.md section 6).')


def report_skeleton(sd, st):
    req = jload(sd / 'requirements.clean.json')
    best = st['best']
    lines = [f'# Boom design study: {req.get("study_name")}', '', '## Prompt', '', '> ' + req['prompt'], '',
             '## Requirements as formulas', '', '```json', (sd / 'constraints.json').read_text(), '```', '',
             '## Result', '']
    if best:
        d = jload(iter_dir(sd, best['iter']) / 'design.json')
        lines += [f'- Best design: **{d["key"]}** (iteration {best["iter"]}): material {d["material"]}, '
                  f'layup {d["layup"]} = {d["layup_str"]} (h = {d["h_mm"]} mm), geometry {d["geometry"]} '
                  f'(R {d["R"]:g} mm, flattened width {d["b"]:.4g} mm), L {d["L"]:g} mm',
                  f'- Objective ({req.get("objective", {}).get("sense", "minimize")} '
                  f'{req.get("objective", {}).get("quantity", "mass")}): {best["objective"]:.6g}',
                  f'- Tip stiffness FE {d.get("k_fe")} N/mm (beam theory {d.get("k_beam"):.4g}); buckling '
                  f'{d.get("buckling_value")} ({d.get("buckling_kind", "not required")}); F_governing / F_hub: see '
                  'objcon.json', '']
    else:
        lines += ['No feasible design found. TODO: say which constraint blocks and what to relax.', '']
    lines += ['## Verification records', '']
    for v in st['verification']['records']:
        lines.append(f'- iteration {v["iter"]} {v["design"]}: {v["status"]}, verdict {v["verdict"]} '
                     f'{v.get("comparison", "")}')
    lines += ['', '## Convergence', '', '```json', json.dumps(st['converged'], indent=1, default=float), '```', '',
              '## TODO (orchestrator)', '',
              '- History of the search (ledger.csv): what was tried and why, what the FE taught (calibration).',
              '- Limitations that apply (PROTOCOL.md section 4, DOMAIN_KNOWLEDGE.md).',
              '- Pending verifications and what the user must run.', '']
    return '\n'.join(lines)


def cmd_close(a):
    sd = study_dir(a.study)
    st = load_state(sd)
    st['phase'] = 'closed'
    st['closed'] = dict(time=dt.datetime.now().isoformat(timespec='seconds'), reason=a.reason or '')
    save_state(sd, st)
    if ACTIVE.exists():
        ACTIVE.unlink()
    print(f'study {rel(sd)} closed (not finalized). Nothing is committed.')


def main():
    ap = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    sp = ap.add_subparsers(dest='cmd', required=True)
    p = sp.add_parser('new')
    p.add_argument('name')
    p.add_argument('--person', default='Orchestrator')
    p.set_defaults(f=cmd_new)
    for name, f in (('init', cmd_init), ('status', cmd_status), ('candidates', cmd_candidates),
                    ('finalize', cmd_finalize), ('close', cmd_close)):
        p = sp.add_parser(name)
        p.add_argument('study', nargs='?')
        p.set_defaults(f=f)
        if name == 'status':
            p.add_argument('--brief', action='store_true')
        if name == 'candidates':
            p.add_argument('--n', type=int, default=10)
        if name == 'finalize':
            p.add_argument('--force-reason')
        if name == 'close':
            p.add_argument('--reason')
    p = sp.add_parser('choose')
    p.add_argument('--study')
    for k in ('material', 'geometry', 'layup'):
        p.add_argument(f'--{k}', required=True, type=str.upper)
    p.add_argument('--reason', required=True)
    p.add_argument('--override')
    p.set_defaults(f=cmd_choose)
    p = sp.add_parser('run')
    p.add_argument('iter', type=int)
    p.add_argument('--step', required=True, choices=STEPS + ('all',))
    p.add_argument('--study')
    p.set_defaults(f=cmd_run)
    for name, f in (('record', cmd_record), ('converge', cmd_converge), ('verify', cmd_verify)):
        p = sp.add_parser(name)
        p.add_argument('iter', type=int)
        p.add_argument('--study')
        p.set_defaults(f=f)
    p = sp.add_parser('verify-result')
    p.add_argument('iter', type=int)
    p.add_argument('--verdict', required=True, choices=('agree', 'disagree', 'inconclusive'))
    p.add_argument('--comparison', required=True)
    p.add_argument('--note')
    p.add_argument('--study')
    p.set_defaults(f=cmd_verify_result)
    a = ap.parse_args()
    a.f(a)


if __name__ == '__main__':
    main()
