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
    study.py choose --r1 R1 --alpha ALPHA --reason "..."      (custom-design mode, see below)
    study.py run <iter> --step laminate|model|visualize|failure|buckling|objcon|all
    study.py record <iter>                         sanity checks, ledger, calibration, verification/stop decisions
    study.py converge <iter>                       mesh-convergence rerun (element size x 0.6)
    study.py verify <iter>                         Abaqus script + user instructions (opensees-to-abaqus)
    study.py verify-result <iter> --verdict agree|disagree|inconclusive --comparison FILE [--note ..]
    study.py finalize [--force-reason ..]          final/ folder, REPORT.md, list of files to commit
    study.py close [--reason ..]                   stop without finalizing (removes the active-study marker)

<study> defaults to the active study (.claude/orchestrator/ACTIVE_STUDY).
Units: N, mm, MPa; mass kg.

Custom-design mode (added 11/10/26, Tara, user-approved): requirements.json "custom_design" fixes the
material and layup to user-given laminate JSONs (not catalog rows) and makes the geometry a continuous
parametric family; the orchestrator chooses each design's parameters (study.py choose --r1 --alpha) from
the ledger instead of from the catalog screen. Family "CTM": Palmeri & Laurenzi (2024) collapsible tubular
mast, two omega shells (edge arc r2, central arc r1 over 2 alpha, edge arc r2) bonded on flat tabs of width
w; r2 = (h - 2 w - 2 r1 alpha) / (2 alpha) (their Eq. 4). Keys:
  family, laminate_json, web_laminate_json (static model + failure: the real plies),
  buckling_laminate_json, buckling_web_laminate_json (same ABD with 0/90 plies only, for ShellNLDKGQ),
  failure_laminate_json, failure_web_laminate_json (optional: physical plies for Hashin and coiling when the
  model laminates are an equivalent section), abd_target {flange|web: {A: 3x3, D: 3x3}} (optional: the
  laminate step reports the model ABD against it and requires a match to 1e-6),
  h_mm, w_mm, bounds {r1: [lo, hi], alpha: [lo, hi], r2: [lo, hi]}, mesh_size_mm,
  stop {window, min_iterations, tol}, verification "final_only" | "schedule".
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
CONV_TOL = dict(k=0.02, F=0.10, buckling=0.05)   # buckling: custom mode (objective = buckling value)
# Buckling path cutoff (threshold requirements only): path B stops once it carries this multiple of the required
# load and the value is recorded as a lower bound (the design passes with that margin). Override per study with
# requirements.json "buckling": {"cutoff_factor": ...}; 0 or null = no cutoff. Added 2026-11-06 at the user's request.
BUCKLING_CUTOFF = 3.0
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


def _repo_path(p):
    p = Path(p)
    return p if p.is_absolute() else REPO / p


# --- custom-design mode (CTM family) ------------------------------------------------------

def ctm_r2(cd, r1, a):
    """Palmeri & Laurenzi (2024) Eq. (4)."""
    return (cd['h_mm'] - 2 * cd['w_mm'] - 2 * r1 * a) / (2 * a)


def ctm_section(cd, r1, a, web_json):
    """shell-mesh 'branched' spec of the CTM: left tab, upper shell, lower shell, right tab (tabs = web
    laminate {'json': web_json}); each shell = arc r2 (alpha), arc -r1 (2 alpha), arc r2 (alpha), tangent,
    starting and ending flat at the tabs (z = 0). Shell normals: upper as listed, lower flipped
    (boom_section convention)."""
    r2, w = ctm_r2(cd, r1, a), cd['w_mm']
    c = 2 * (r1 + r2) * math.sin(a)
    arcs = [(r2, r2 * a), (-r1, 2 * r1 * a), (r2, r2 * a)]
    seg = lambda sg: {'type': 'segments', 'segments': [['arc', sg * R, ln] for R, ln in arcs],
                      'start': [-c / 2, 0.0], 'heading': 0.0}
    return {'type': 'branched', 'web_stack': {'json': str(_repo_path(web_json))},
            'branches': [{'section': {'type': 'segments', 'segments': [['line', w]], 'start': [-c / 2 - w, 0.0]},
                          'laminate': 'web'},
                         {'section': seg(1), 'laminate': 'flange'},
                         {'section': seg(-1), 'laminate': 'flange', 'flip': True},
                         {'section': {'type': 'segments', 'segments': [['line', w]], 'start': [c / 2, 0.0]},
                          'laminate': 'web'}]}, r2, c


def custom_section_props(spec, lam_f, lam_w, n=200):
    """Thin-walled properties with the smeared axial stiffness Ex h = 1 / a11 of each branch's laminate:
    EA, EI for deflection along z (bending about y) and along y (bending about z), centroid, b."""
    sys.path.insert(0, str(SKILLS / 'shell-mesh'))
    sys.path.insert(0, str(SKILLS / 'laminate-properties'))
    import numpy as np
    import shell_mesh as sm
    sec = sm.CrossSection.from_spec(spec)
    P, W = [], []
    for br, lab in zip(sec.branches, sec.labels):
        lam = lam_w if lab == 'web' else lam_f
        exh = 1.0 / np.linalg.inv(lam.abd()[:3, :3])[0, 0]
        s = np.linspace(0, br.b, n + 1)
        X = np.array([br.point(x) for x in s])
        P.append(0.5 * (X[1:] + X[:-1]))
        W.append(exh * np.linalg.norm(np.diff(X, axis=0), axis=1))
    P, W = np.vstack(P), np.concatenate(W)
    yc, zc = W @ P[:, 0] / W.sum(), W @ P[:, 1] / W.sum()
    return dict(EA=float(W.sum()), EIz=float(W @ (P[:, 1] - zc) ** 2), EIy=float(W @ (P[:, 0] - yc) ** 2),
                yc=float(yc), zc=float(zc), b=float(sec.b),
                height=float(P[:, 1].max() - P[:, 1].min()), width=float(P[:, 0].max() - P[:, 0].min()))


def custom_coiling(lam, radii, R_hub):
    """Exact CLT Hashin of the flange laminate flattened from each radius (dk_y = -+1/r) and, with a hub,
    bent onto it (k_x = +-1/R_hub; 4 sign combinations). Returns F_flat, F_hub and the governing case."""
    sys.path.insert(0, str(SKILLS / 'failure-check'))
    import numpy as np
    import failure_check as fc
    K = lam.abd()

    def F_of(kx, ky):
        k = np.array([kx, ky, 0.0])
        e0 = -np.linalg.solve(K[:3, :3], K[:3, 3:] @ k)
        E = np.zeros((1, 1, 8))
        E[0, 0, :3], E[0, 0, 3:6] = e0, k
        F, mode, *_ = fc.failure_index(E, lam)
        i = np.unravel_index(np.argmax(F), F.shape)
        return float(F[i]), fc.MODES[int(mode[i])], int(i[2]) + 1
    flat = max((F_of(0.0, sy / r) + (r,) for r in radii for sy in (1, -1)), key=lambda t: t[0])
    hub = None
    if R_hub:
        hub = max((F_of(sx / R_hub, sy / r) + (r,) for r in radii for sx in (1, -1) for sy in (1, -1)),
                  key=lambda t: t[0])
    return flat, hub


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
        if st.get('custom'):
            return ('study.py candidates  ->  choose the next (r1, alpha) from the ledger  ->  '
                    'study.py choose --r1 .. --alpha ..')
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
    maxb = obj.get('quantity') == 'buckling' and obj.get('sense') == 'maximize'
    if b:
        if b.get('load') == 'bending':
            if b.get('axis', 'y') not in ('y', 'z') or (b.get('axis', 'y') == 'y' and
                                                          b.get('sense') not in ('opposite', 'equal')):
                errs.append('buckling (bending): axis "y" with sense opposite|equal, or axis "z"')
        elif b.get('load') == 'compression':
            if b.get('ends', 'clamped') not in ('clamped', 'pinned', 'free_tip'):
                errs.append('buckling (compression): ends clamped|pinned|free_tip')
        else:
            errs.append('buckling.load must be bending or compression')
        if not b.get('min_value', 0) > 0 and not maxb:
            errs.append('buckling.min_value must be > 0 (or the objective must be maximize buckling)')
        if maxb and not b.get('min_value') and not b.get('range_estimate'):
            errs.append('maximize buckling without min_value: give buckling.range_estimate (sizes the path range)')
    cd = req.get('custom_design')
    if cd:
        if cd.get('family') != 'CTM':
            errs.append('custom_design.family: only "CTM" (Palmeri & Laurenzi omega mast) is implemented')
        for k in ('laminate_json', 'web_laminate_json', 'buckling_laminate_json', 'buckling_web_laminate_json'):
            if not cd.get(k) or not _repo_path(cd[k]).exists():
                errs.append(f'custom_design.{k}: laminate JSON file required (laminate-properties --save-json)')
        bd = cd.get('bounds', {})
        for k in ('r1', 'alpha', 'r2'):
            if len(bd.get(k) or []) != 2 or not bd[k][0] < bd[k][1]:
                errs.append(f'custom_design.bounds.{k}: [lower, upper] required')
        for k in ('h_mm', 'w_mm'):
            if not cd.get(k, 0) > 0:
                errs.append(f'custom_design.{k} must be > 0')
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
    if b and b.get('min_value'):
        out.append({'name': 'buckling', 'text': b.get('text', ''), 'expr': 'buckling_load', 'op': '>=',
                    'limit': b['min_value'], 'units': b.get('units', 'N mm' if b['load'] == 'bending' else 'N')})
    c = rq.get('coiling')
    if c:
        out.append({'name': 'coiling on hub', 'text': c.get('text', ''), 'expr': 'F_hub', 'op': '<', 'limit': 1,
                    'units': '-'})
    cd = req.get('custom_design')
    if cd:
        for k, u in (('r1', 'mm'), ('alpha', 'rad'), ('r2', 'mm')):
            lo, hi = cd['bounds'][k]
            src = ' (Eq. 4 of Palmeri & Laurenzi 2024)' if k == 'r2' else ''
            out.append({'name': f'{k} lower bound', 'text': f'{k} >= {lo:g} {u}{src}', 'expr': k, 'op': '>=',
                        'limit': lo, 'units': u})
            out.append({'name': f'{k} upper bound', 'text': f'{k} <= {hi:g} {u}{src}', 'expr': k, 'op': '<=',
                        'limit': hi, 'units': u})
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
    (sd / 'screen').mkdir(exist_ok=True)
    if req.get('custom_design'):
        rows, summary = [], dict(evaluated=0, screen_ok=0, screen_ok_fe=0, screen_ok_by_type={},
                                 rejections='custom-design mode: no catalog screen (material, layup and the '
                                            'geometry family are fixed by requirements.json custom_design)',
                                 materials_skipped=[], custom_design=True)
    else:
        import design_screen as ds
        rows, summary = ds.screen(req)
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
              regression_record=reg_line[:200], custom=bool(req.get('custom_design')),
              custom_stop=(req.get('custom_design') or {}).get('stop'),
              verification_schedule=(req.get('custom_design') or {}).get('verification', 'schedule'))
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
    if summary['screen_ok_fe'] == 0 and not req.get('custom_design'):
        print('WARNING: no FE-supported design passes the screening estimates. Tell the user which '
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


def custom_candidates(sd, st):
    """Custom mode: no catalog list. Shows the design space (r1 range allowed by the r2 bounds at each alpha)
    and the ledger sorted by objective; the orchestrator chooses the next (r1, alpha) from them."""
    req = jload(sd / 'requirements.clean.json')
    cd = req['custom_design']
    (r1lo, r1hi), (alo, ahi), (r2lo, r2hi) = cd['bounds']['r1'], cd['bounds']['alpha'], cd['bounds']['r2']
    H2w = cd['h_mm'] - 2 * cd['w_mm']
    print(f'custom design space ({cd["family"]}): r1 in [{r1lo:g}, {r1hi:g}] mm, alpha in [{alo:.4f}, {ahi:.4f}] rad, '
          f'r2 = (h - 2w - 2 r1 alpha)/(2 alpha) in [{r2lo:g}, {r2hi:g}] mm')
    print('alpha [rad]   feasible r1 range [mm]')
    for k in range(9):
        al = alo + (ahi - alo) * k / 8
        lo = max(r1lo, (H2w - 2 * r2hi * al) / (2 * al))
        hi = min(r1hi, (H2w - 2 * r2lo * al) / (2 * al))
        print(f'  {al:.4f}      ' + (f'[{lo:.3f}, {hi:.3f}]' if lo <= hi else 'none'))
    rows = []
    for k, v in st['designs'].items():
        f = iter_dir(sd, v['iter']) / 'design.json'
        if f.exists():
            d = jload(f)
            rows.append((v.get('objective'), v['iter'], d.get('r1'), d.get('alpha'), d.get('r2'), v.get('feasible'),
                         v.get('sanity'), d.get('buckling_A'), d.get('buckling_B')))
    obj = req.get('objective', {})
    sgn = -1 if obj.get('sense') == 'maximize' else 1
    rows.sort(key=lambda r: (r[0] is None, sgn * (r[0] or 0)))

    def g(x, f):
        return 'None' if x is None else format(x, f)
    print(f'\nevaluated designs, best first ({obj.get("sense")} {obj.get("quantity")}):')
    print('iter  r1       alpha    r2       objective    A_est        B_peak       feasible  sanity')
    for o, i, r1, al, r2, fe, sa, A, B in rows:
        print(f'{i:<5d} {r1:<8.3f} {al:<8.4f} {r2:<8.3f} {g(o, ".6g"):<12} {g(A, ".6g"):<12} {g(B, ".6g"):<12} '
              f'{str(fe):<9} {sa}')
    jsave(sd / 'screen' / 'last_candidates.json', dict(top=[], explore=[], iteration=st['iteration'], custom=True))
    print('\nNEXT: study.py choose --r1 R1 --alpha ALPHA --reason "<why this point, from the ledger>"')


def cmd_candidates(a):
    sd = study_dir(a.study)
    st = load_state(sd)
    if st.get('custom'):
        return custom_candidates(sd, st)
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

def fe_section(g):
    """shell-mesh section of a catalog row, smallest radius R and the
    section's total mid-line length b [mm] (webs counted once; TS: the arc).
    TS: {'type': 'arc'} (as before); TRAC / OM / CO: {'type': 'boom', 'id'}
    (branched section with the doubled web / tab laminate)."""
    if g['type'] == 'TS':
        R, th = g['A'][0]
        b = R * math.radians(th)
        return {'type': 'arc', 'R': R, 'b': round(b, 6)}, R, b
    sys.path.insert(0, str(CLAUDE / 'skills' / 'shell-mesh'))
    import shell_mesh as sm  # noqa: E402
    sec = sm.boom_section(g)                     # raises for OM/CO shells with different free chords
    return {'type': 'boom', 'id': g['id']}, min(abs(R) for R, _ in g['A'] + (g.get('B') or [])), sec.b


def branched_mesh_size(g, b):
    """Element size of a TRAC / OM / CO model [mm]: about 24 elements across the whole section
    (b = total mid-line length), at least 6 across the shortest flange / shell and 2 across a web / tab,
    at most 5 mm, at least 0.5 mm."""
    flange = min(sum(R * math.radians(abs(th)) for R, th in part) for part in (g['A'], g.get('B') or g['A']))
    s = min(5.0, b / 24.0, flange / 6.0, g.get('w', 1e9) / 2.0)
    return max(0.5, round(s, 1))


def mesh_size(b, L):
    s = min(5.0, b / 8.0)
    return max(0.5, round(s, 1))


def custom_choose(a, sd, st):
    import numpy as np
    req = jload(sd / 'requirements.clean.json')
    cd = req['custom_design']
    if a.r1 is None or a.alpha is None:
        die('custom-design mode: give --r1 and --alpha (no catalog IDs)')
    if not a.reason or len(a.reason) < 20:
        die('--reason must say why this (r1, alpha), citing the ledger, in a sentence or more')
    r1, al = float(a.r1), float(a.alpha)
    r2 = ctm_r2(cd, r1, al)
    bd = cd['bounds']
    bad = [f'{k} = {v:.4g} outside [{bd[k][0]:g}, {bd[k][1]:g}]' for k, v in (('r1', r1), ('alpha', al), ('r2', r2))
           if not bd[k][0] - 1e-5 <= v <= bd[k][1] + 1e-5]
    if bad:
        die('design outside the design space: ' + '; '.join(bad))
    r1 = min(max(r1, bd['r1'][0]), bd['r1'][1])            # values within 1e-5 of a bound (rounding): on it
    al = min(max(al, bd['alpha'][0]), bd['alpha'][1])
    r2 = ctm_r2(cd, r1, al)
    if not bd['r2'][0] - 1e-5 <= r2 <= bd['r2'][1] + 1e-5:
        die(f'r2 = {r2:.6g} outside [{bd["r2"][0]:g}, {bd["r2"][1]:g}] after rounding to the bounds')
    for k, v in st['designs'].items():
        f = iter_dir(sd, v['iter']) / 'design.json'
        if f.exists():
            o = jload(f)
            if abs(o['r1'] - r1) < 0.01 and abs(o['alpha'] - al) < 1e-4:
                die(f'(r1, alpha) = ({r1}, {al}) was already evaluated (iteration {v["iter"]}); pick another point')
    if st.get('model_trust', {}).get('ok') is False:
        die('an Abaqus verification disagreed: report it to the user and wait for instructions')
    sys.path.insert(0, str(SKILLS / 'laminate-properties'))
    import laminate_properties as lp
    lam_f = lp.Laminate.load(_repo_path(cd['laminate_json']))
    lam_w = lp.Laminate.load(_repo_path(cd['web_laminate_json']))
    lam_fail = lp.Laminate.load(_repo_path(cd['failure_laminate_json'])) if cd.get('failure_laminate_json') else lam_f
    i = st['iteration'] + 1
    idir = iter_dir(sd, i)
    idir.mkdir(parents=True, exist_ok=True)
    section, _, chord = ctm_section(cd, r1, al, cd['web_laminate_json'])
    bsection, _, _ = ctm_section(cd, r1, al, cd['buckling_web_laminate_json'])
    sp = custom_section_props(section, lam_f, lam_w)
    L = float(req['length_mm'])
    size = float(cd.get('mesh_size_mm', 5.0))
    hub = (req['requirements'].get('coiling') or {}).get('hub_radius_mm')
    flat, hubc = custom_coiling(lam_fail, (r1, r2), hub)
    s = req['requirements'].get('bending_stiffness') or {'direction': 'z', 'sign': -1, 'load_N': 1.0}
    F = [0.0, 0.0, 0.0]
    F['xyz'.index(s['direction'])] = s['sign'] * reference_load(s, L)
    name = f'it{i:03d}_CTM_r{r1:.3f}_a{al:.4f}'.replace('.', 'p')
    key = f'CTM/r1={r1:.3f}/alpha={al:.4f}'
    case = {'name': name, 'laminate': {'json': 'lam.json'},
            'geometry': {'L': L, 'section': section, 'size': size},
            'element': {'type': 'ASDShellQ4', 'corotational': False},
            'supports': [{'rigid_end': 'x0', 'dofs': [1, 1, 1, 1, 1, 1]}, {'rigid_end': 'xL'}],
            'loads': [{'node': {'rigid': 'xL'}, 'force': F}],
            'analysis': {'type': 'linear'}, 'report_node': {'rigid': 'xL'}}
    jsave(idir / 'case.json', case)
    Ex = 1.0 / (lam_f.h * np.linalg.inv(lam_f.abd()[:3, :3])[0, 0])
    design = dict(iter=i, key=key, custom=True, family=cd['family'], r1=r1, alpha=al, r2=r2, chord=chord,
                  material='custom', layup='custom', layup_str=lam_f.name, geometry=f'CTM(r1={r1:.3f},a={al:.4f})',
                  type='OM', section=section, buckling_section=bsection, R=min(r1, r2), b=sp['b'], L=L, size=size,
                  name=name, reason=a.reason, override='', screen_rank=0, h_mm=lam_f.h, h_web_mm=lam_w.h,
                  k_est=None, buckling_est=None, Ex=Ex,
                  EIz=sp['EIz'], EIy=sp['EIy'], EA=sp['EA'], section_height=sp['height'], section_width=sp['width'],
                  F_flat=flat[0], F_flat_case=dict(mode=flat[1], ply=flat[2], r=flat[3]),
                  F_hub=None if hubc is None else hubc[0],
                  F_hub_case=None if hubc is None else dict(mode=hubc[1], ply=hubc[2], r=hubc[3], R_hub=hub),
                  r_min=min(r1, r2), cross_ply=True,
                  buckling_laminate=str(_repo_path(cd['buckling_laminate_json'])),
                  flange_laminate=str(_repo_path(cd['laminate_json'])),
                  web_laminate=str(_repo_path(cd['web_laminate_json'])),
                  buckling_objective=cd.get('buckling_objective', 'B'),
                  failure_laminate=str(_repo_path(cd['failure_laminate_json'])) if cd.get('failure_laminate_json') else None,
                  failure_web_laminate=(str(_repo_path(cd['failure_web_laminate_json']))
                                        if cd.get('failure_web_laminate_json') else None),
                  abd_target=cd.get('abd_target'))
    bq = req['requirements'].get('buckling')
    if bq:
        design['buckling_est_cal'] = bq.get('range_estimate') or bq.get('min_value')
        jsave(idir / 'buckling.json', buckling_case(design, bq))
    jsave(idir / 'design.json', design)
    st['designs'][key] = dict(iter=i)
    st.update(iteration=i, phase='chosen', iter_steps_done=[])
    save_state(sd, st)
    print(f'iteration {i}: {key}  r2 = {r2:.4f} mm (Eq. 4), chord {chord:.3f} mm, height {sp["height"]:.3f} mm, '
          f'section mid-line {sp["b"]:.2f} mm, L {L:g} mm, element size {size} mm')
    print(f'EA {sp["EA"]:.5g} N, EI (z-deflection, about y) {sp["EIz"]:.5g} N mm2, EI (about z) {sp["EIy"]:.5g} N mm2; '
          f'coiling: F_flat {flat[0]:.3f} ({flat[1]}, ply {flat[2]}, r {flat[3]:.3f} mm)'
          + (f', F_hub {hubc[0]:.3f} ({hubc[1]}, ply {hubc[2]}, r {hubc[3]:.3f} mm, R_hub {hub:g} mm)' if hubc else ''))
    print(f'case: {rel(idir / "case.json")}')
    print('NEXT: ' + next_action(st))


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
    if st.get('custom'):
        return custom_choose(a, sd, st)
    if not (a.material and a.geometry and a.layup):
        die('give --material, --geometry and --layup (catalog IDs)')
    key = f'{a.material}/{a.layup}/{a.geometry}'
    if key in st['designs']:
        die(f'{key} was already evaluated (iteration {st["designs"][key]["iter"]}); pick another design')
    rows = {f'{r["material"]}/{r["layup"]}/{r["geometry"]}': r for r in read_screen(sd)}
    if key not in rows:
        die(f'{key} is not in the screen (wrong ID, excluded by the requirements, or rejected by an exact check: '
            'coiling F >= 1 or a limit). Choose from study.py candidates')
    row = rows[key]
    if row['fe_supported'] != 'True':
        die(f'{a.geometry} is a {row["type"]} that shell-mesh cannot build (OM/CO shells with different free chords; PROTOCOL.md section 4)')
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
    section, R, b = fe_section(g)
    L = float(req['length_mm'])
    size = mesh_size(b, L) if g['type'] == 'TS' else branched_mesh_size(g, b)
    s = req['requirements'].get('bending_stiffness') or {'direction': 'z', 'sign': -1, 'load_N': 1.0}
    F = [0.0, 0.0, 0.0]
    F['xyz'.index(s['direction'])] = s['sign'] * reference_load(s, L)
    name = f'it{i:03d}_{a.material}_{a.layup}_{a.geometry}'
    lay = row['layup']
    layup_str = next(ln.split()[2] for ln in (CLAUDE / 'memory.layup_catalog' / 'layup_catalog.txt')
                     .read_text().splitlines() if ln.startswith(a.layup + ' '))
    case = {'name': name, 'laminate': {'json': 'lam.json'},
            'geometry': {'L': L, 'section': section, 'size': size, 'boom': a.geometry},
            'element': {'type': 'ASDShellQ4', 'corotational': False},
            'supports': [{'rigid_end': 'x0', 'dofs': [1, 1, 1, 1, 1, 1]}, {'rigid_end': 'xL'}],
            'loads': [{'node': {'rigid': 'xL'}, 'force': F}],
            'analysis': {'type': 'linear'}, 'report_node': {'rigid': 'xL'}}
    jsave(idir / 'case.json', case)
    design = dict(iter=i, key=key, material=a.material, layup=a.layup, layup_str=layup_str, geometry=a.geometry,
                  type=row['type'], section=section, R=R, b=b, L=L, size=size, name=name, reason=a.reason,
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
            'geometry': {'L': d['L'], 'section': d.get('section') or {'type': 'arc', 'R': d['R'], 'b': round(d['b'], 6)},
                         'size': d['size']}}
    est = max(d.get('buckling_est_cal') or 0, bq.get('min_value') or 0)   # range from the calibrated estimate
    if d.get('custom'):            # custom mode: the exact 0/90 twin laminate (same ABD) for ShellNLDKGQ
        case['laminate'] = {'json': d['buckling_laminate']}
        case['geometry']['section'] = d['buckling_section']
    if bq['load'] == 'bending':
        ax = bq.get('axis', 'y')
        case['load'] = {'type': 'bending', 'axis': ax,
                        'sign': 1 if bq.get('sense', 'opposite') == 'opposite' else -1}
        th = 4 * est * d['L'] / (d['EIz'] if ax == 'y' else d['EIy'])
        mx = min(th, 1.0) if d.get('custom') else min(max(th, 0.05), 1.0)
    else:
        case['load'] = {'type': 'compression', 'ends': bq.get('ends', 'clamped')}
        EA = d.get('EA') or d['Ex'] * d['h_mm'] * d['b']
        mx = 3 * est * d['L'] / EA                                  # 3 x end shortening at P_est
    case['A'] = {'step': mx / 60, 'max': mx, 'n_coarse': 8}
    case['B'] = {'step': mx / 60, 'max': mx, 'amplitude': round(0.1 * d['h_mm'], 6), 'control': 'disp'}
    if d.get('buckling_objective') == 'A':
        # custom option: the objective is method A (perfect geometry, tangent-stiffness zero crossing along the
        # nonlinear path = Palmeri & Laurenzi's "nonlinear buckling load"); B runs only for the final design
        case['A'].update(step=mx / 10, n_rounds=1, max_cuts=2)   # a point that cannot advance (limit point) is unstable: do not creep
        case['B_final_only'] = case.pop('B')
    return solver_settings(case)


# Solution control of the study's buckling runs (user request 2026-11-08: make them faster, up to 16 CPUs).
# Profiling it001 (TRAC, 58k DOFs): NormDispIncr 1e-8 is at the round-off floor of these models (Newton
# converges quadratically to ~1e-6, then stalls), so 1e-8 cost 2x the iterations per step and up to 100
# iterations per failed attempt near buckling; the converged load factors agree to 5 digits at 1e-6.
# Step A's scan points run in parallel processes (boom_buckling.py 'workers').
BUCKLING_SOLVER = {'A': dict(tol=1e-6, max_iter=30, workers=16, n_rounds=2),
                   'B': dict(tol=1e-6, max_iter=40)}


def solver_settings(case):
    """Add the study's solution-control settings to a buckling case (keeps values already in it)."""
    for blk, kv in BUCKLING_SOLVER.items():
        if blk in case:
            for k, v in kv.items():
                case[blk].setdefault(k, v)
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


def _boom_args(d):
    return [] if d.get('custom') else ['--boom', d['geometry']]


def _fail_args(d):
    """custom mode: physical plies for the ply stresses (the model may use an equivalent section)"""
    out = []
    if d.get('failure_laminate'):
        out += ['--laminate', d['failure_laminate']]
    if d.get('failure_web_laminate'):
        out += ['--web-laminate', d['failure_web_laminate']]
    return out


def _custom_values(d):
    return sum((['--value', f'{k}={d[k]}'] for k in ('r1', 'alpha', 'r2')), []) if d.get('custom') else []


def midpoint_abd(lam):
    """ABD with each ply split into lam.n_sub equal layers integrated at their mid-planes: exactly what
    OpenSees LayeredShell computes (A, B exact; D low by the sum of t_layer^3 / 12 Q_bar)."""
    import numpy as np
    sys.path.insert(0, str(SKILLS / 'laminate-properties'))
    import laminate_properties as lp
    K = np.zeros((6, 6))
    for q in lam.plies:
        Q = lp.q_bar(lam.materials[q['mat']], q['theta'])
        t = (q['z1'] - q['z0']) / lam.n_sub
        for k in range(lam.n_sub):
            z = q['z0'] + (k + 0.5) * t
            K[:3, :3] += Q * t
            K[:3, 3:] += Q * t * z
            K[3:, 3:] += Q * t * z * z
    K[3:, :3] = K[:3, 3:].T
    return K


def custom_abd_check(idir):
    """Custom mode laminate step (run as a subprocess, own OpenSees domain): for the flange, web and buckling-
    twin laminates, the OpenSees-measured ABD (laminate-properties measure_abd) against CLT (A, B: ~1e-15) and
    against the mid-plane-layer integral (D: exact, ~1e-15; the D difference from CLT is reported); the twin
    must have the flange ABD. Copies the laminates into the iteration (lam.json, lam_web.json,
    lam_buckling.json)."""
    import numpy as np
    sys.path.insert(0, str(SKILLS / 'laminate-properties'))
    import laminate_properties as lp
    idir = Path(idir)
    d = jload(idir / 'design.json')
    runs, ok, lams = [], True, {}
    items = [('flange', d['flange_laminate'], 'lam.json'), ('web', d['web_laminate'], 'lam_web.json'),
             ('buckling twin', d['buckling_laminate'], 'lam_buckling.json')]
    items += [(t, d[k], f) for t, k, f in (('failure plies', 'failure_laminate', 'lam_failure.json'),
                                           ('failure web plies', 'failure_web_laminate', 'lam_failure_web.json'))
              if d.get(k)]
    tgt = d.get('abd_target') or {}
    for tag, src, dst in items:
        lam = lp.Laminate.load(src)
        lam.save(idir / dst)
        lams[tag] = lam
        K, Km, Kmid = lam.abd(), lam.measure_abd(), midpoint_abd(lam)
        e = lp.block_errors(Km, K)
        eD = lp.block_errors(Km, Kmid)['D']
        good = e['A'] < 1e-10 and e['B'] < 1e-10 and eD < 1e-8
        ok &= good
        T = tgt.get({'flange': 'flange', 'buckling twin': 'flange', 'failure plies': 'flange', 'web': 'web',
                     'failure web plies': 'web'}[tag])
        terr = None
        if T:
            A0, D0 = np.array(T['A'], float), np.array(T['D'], float)
            nz = lambda X, X0: np.abs(X - X0)[X0 != 0] / np.abs(X0[X0 != 0])
            terr = dict(A=float(nz(Km[:3, :3], A0).max()), D=float(nz(Km[3:, 3:], D0).max()))
            model_lam = not tag.startswith('failure')
            if model_lam:
                good &= max(terr.values()) < 1e-6
                ok &= good
            print(f'    vs target ABD (requirements custom_design.abd_target): max rel. error A {terr["A"]:.2e}, '
                  f'D {terr["D"]:.2e}{"" if model_lam else " (failure plies: information only)"}')
        runs.append(dict(laminate=tag, file=str(src), n_layers=lam.n_sub * len(lam.plies), A=e['A'], B=e['B'],
                         D_vs_CLT=e['D'], D_vs_midpoint_layers=eD, vs_target=terr, ok=good))
        print(f'{tag}: {lam.name}, h {lam.h:g} mm, {lam.n_sub * len(lam.plies)} layers: OpenSees vs CLT A {e["A"]:.1e}, '
              f'B {e["B"]:.1e}, D {e["D"]:.1e} (mid-plane layer integration); D vs the exact layer integral '
              f'{eD:.1e} -> {"OK" if good else "FAIL"}')
    twin = float(np.abs(lams['buckling twin'].abd() - lams['flange'].abd()).max() / np.abs(lams['flange'].abd()).max())
    ok &= twin < 1e-9
    d['abd_check'] = dict(ok=bool(ok), twin_rel_diff=twin, runs=runs)
    jsave(idir / 'design.json', d)
    print(f'buckling twin (0/90 plies) ABD vs flange ABD: {twin:.1e}')
    print(f'custom laminates: ABD check {"OK" if ok else "FAIL: stop (PROTOCOL.md section 5)"}')


def run_step(sd, st, i, step):
    idir = iter_dir(sd, i)
    d = jload(idir / 'design.json')
    npz = idir / 'results' / f'{d["name"]}.npz'
    logs = idir / 'logs'
    logs.mkdir(exist_ok=True)
    log = logs / f'{step}.log'
    if step == 'laminate' and d.get('custom'):
        code, out = run_cmd([HERE / 'study.py', '_custom_abd_check', idir], log, cwd=REPO)
        dd = jload(idir / 'design.json')
        return code == 0 and dd.get('abd_check', {}).get('ok', False), out.strip().splitlines()[-1] + \
            f' (log {rel(log)})'
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
        code, _ = run_cmd(['shell-visualize/shell_visualize.py', npz, '--png', png, '--no-gui'] + _boom_args(d)
                          + _fail_args(d), log)
        return code == 0 and png.exists(), f'picture {rel(png)}: READ IT before going on (deformed shape, ' \
                                           f'supports, load direction)'
    if step == 'failure':
        code, out = run_cmd(['failure-check/failure_check.py', npz] + _boom_args(d) + _fail_args(d) +
                            ['--flatten-radius', d['r_min']], log)
        m = re.search(r'GOVERNING F[^0-9]*([\d.]+(?:e[+-]?\d+)?)', out)
        d['failure_log'] = rel(log)
        d['F_governing_fc'] = float(m.group(1)) if m else None
        jsave(idir / 'design.json', d)
        return code == 0, f'failure-check: GOVERNING F = {d["F_governing_fc"]} (log {rel(log)})'
    if step == 'buckling':
        # buckling paths cost tens of minutes: skip them for designs already infeasible without buckling
        pre = idir / 'objcon_pre.json'
        vals = (['--value', f'F_hub={d["F_hub"]}'] if d.get('F_hub') is not None else []) + _custom_values(d)
        run_cmd(['objective-constraints/objective_constraints.py', npz, '--constraints', sd / 'constraints.json']
                + _boom_args(d) + _fail_args(d) + ['--flatten-radius', d['r_min'], '--json', pre] + vals,
                logs / 'objcon_pre.log')
        if pre.exists() and jload(pre).get('feasible') is False:
            bad = [c['name'] for c in jload(pre)['constraints'] if c.get('status') == 'VIOLATED']
            d.update(buckling_value=None, buckling_kind=f'skipped: already violates {", ".join(bad)}')
            jsave(idir / 'design.json', d)
            return True, f'buckling skipped: the design already violates {", ".join(bad)} (saves the path run)'
        return run_buckling(idir, d, logs, req=_clean(jload(sd / 'requirements.json')))
    if step == 'objcon':
        vals = _custom_values(d)
        if d.get('F_hub') is not None:
            vals += ['--value', f'F_hub={d["F_hub"]}']
        if d.get('buckling_value') is not None:
            vals += ['--value', f'buckling_load={d["buckling_value"]}']
        code, out = run_cmd(['objective-constraints/objective_constraints.py', npz, '--constraints',
                             sd / 'constraints.json'] + _boom_args(d) + _fail_args(d) + ['--flatten-radius', d['r_min'],
                             '--json', idir / 'objcon.json'] + vals, log)
        return code == 0 and (idir / 'objcon.json').exists(), f'objective-constraints -> {rel(idir / "objcon.json")}'
    return False, f'unknown step {step}'


def _widen(case, f=2.0):
    for k in ('A', 'B'):
        if k in case:
            case[k]['max'] *= f
            case[k]['step'] *= f
    return case


def buckling_cutoff(req, d):
    """Load at which path B may stop with a lower bound (cutoff_factor x required value), or None."""
    bq = (req or {}).get('requirements', {}).get('buckling')
    obj = (req or {}).get('objective', {})
    if not bq or not bq.get('min_value') or (obj.get('quantity') == 'buckling' and obj.get('sense') == 'maximize'):
        return None, None
    f = bq.get('cutoff_factor', BUCKLING_CUTOFF)
    if not f:
        return None, None
    return f * bq['min_value'], f


def apply_cutoff(case, d, cut):
    """Shorten B's path range to twice the linear end shortening / rotation at the cutoff load, so the path
    passes the cutoff unless it buckles first (A keeps its full range: it must find the mode)."""
    if 'B' not in case or not cut:
        return
    if case['load']['type'] == 'bending':
        lin = cut * d['L'] / d['EIz']
    else:
        lin = cut * d['L'] / (d['Ex'] * d['h_mm'] * d['b'])
    mx = min(case['B']['max'], 2 * lin)
    case['B']['step'] = min(case['B']['step'], mx / 20)
    case['B']['max'] = mx


def resume_A(case, bdir, logs):
    """A finished in an earlier, interrupted run of this case (its mode file and its log line exist): reuse it,
    so only B is rerun. Returns the A result dict or None."""
    mf = bdir / f'{case["name"]}_mode.npz'
    if case.get('A_known') or not mf.exists():
        return case.get('A_known')
    for lg in sorted(logs.glob('buckling_*.log')):
        m = re.search(r'A \(ShellNLDKGQ stability scan\): critical ([\d.eE+-]+) at ([\d.eE+-]+); (\d+) s',
                      lg.read_text(errors='ignore'))
        if m:
            keep = bdir / f'{case["name"]}_modeA.npz'     # a copy: B rewrites <name>_mode.npz
            shutil.copyfile(mf, keep)
            shutil.copyfile(lg, logs / f'A_reused_from_{lg.name}')
            case['mode_file'] = str(keep)
            case['A_known'] = dict(critical_load=float(m.group(1)), critical_param=float(m.group(2)),
                                   time=float(m.group(3)), source=f'logs/A_reused_from_{lg.name}')
            return case['A_known']
    return None


def reuse_section_mode(case, idir, d, bdir):
    """Step A costs hours (dense K_T eigenvalues at every scan point), so it runs once per section: a later design
    with the same geometry, element size, length and load case takes the A mode shape of the first one as its
    imperfection and runs B only (user decision, 2026-11-06). A's critical load is laminate-specific and is NOT
    carried over. Returns the A_known dict (critical_load None) or None."""
    if case.get('A_known') or case.get('mode_file'):
        return case.get('A_known')
    for od in sorted(idir.parent.glob('it[0-9][0-9][0-9]')):
        if od == idir or not (od / 'design.json').exists() or not (od / 'buckling.json').exists():
            continue
        o = jload(od / 'design.json')
        oc = jload(od / 'buckling.json')
        if (o.get('geometry'), o.get('size'), o.get('L')) != (d.get('geometry'), d.get('size'), d.get('L')) \
                or oc.get('load') != case.get('load') or not o.get('buckling_A') \
                or o.get('buckling_imperfection') != 'mode A' or (oc.get('A_known') or {}).get('from_section'):
            continue                                   # only modes computed by a real step A on this section
        ob = od / 'buckling'
        src = next((p for p in (ob / f'{oc["name"]}_modeA.npz', ob / f'{oc["name"]}_mode.npz') if p.exists()), None)
        if src is None:
            continue
        bdir.mkdir(parents=True, exist_ok=True)
        keep = bdir / f'{case["name"]}_modeA.npz'
        shutil.copyfile(src, keep)
        case['mode_file'] = str(keep)
        case['A_known'] = dict(critical_load=None, critical_param=None, from_section=True,
                               source=f'{od.name} ({o.get("key")}): A mode of section {d.get("geometry")}, '
                                      f'size {d.get("size")} mm, reused as imperfection shape')
        return case['A_known']
    return None


def run_buckling(idir, d, logs, max_widen=3, req=None):
    """boom_buckling.py on the design. The path range comes from the screening estimate (a lower bound for
    tape springs), so it is doubled (up to max_widen times) while A finds no crossing or B's path is still
    rising at its end. Off-axis layups: mode shape of A from a 0/90 surrogate of the same thickness.
    Threshold requirements: B stops at cutoff_factor x the required value (lower bound, design passes).
    A finished in an interrupted run is reused (only B reruns)."""
    case = solver_settings(jload(idir / 'buckling.json'))
    bdir = idir / 'buckling'
    notes = []
    cut, cut_f = buckling_cutoff(req, d)
    if cut and 'B_cutoff' not in case:
        apply_cutoff(case, d, cut)
        case['B_cutoff'] = cut
    A_known = resume_A(case, bdir, logs)
    if A_known:
        notes.append(f'A reused from an interrupted run ({A_known["source"]}); only B rerun')
    else:
        A_known = reuse_section_mode(case, idir, d, bdir)
        if A_known:
            notes.append(f'A not run: mode shape from {A_known["source"]}; only B run (no A crossing value)')
    only = ['--only', 'B'] if A_known else []
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
    tag = 'Bonly_' if A_known else ''
    for k in range(max_widen + 1):
        jsave(idir / 'buckling.json', case)
        lg = logs / f'buckling_{tag}{k}.log'
        code, out = run_cmd([SKILLS / 'shell-buckling' / 'boom_buckling.py', idir / 'buckling.json', '--out', bdir]
                            + only, lg, cwd=idir)
        rf = bdir / f'{case["name"]}.json'
        if code or not rf.exists():
            return False, f'boom_buckling failed (log {rel(lg)})'
        r = jload(rf)
        B = r.get('B') or {}
        if 'B' not in case:                                # objective = A (custom option): widen only if no crossing
            if (r.get('A') or {}).get('critical_load'):
                break
            if k < max_widen:
                notes.append(f'A scan range doubled to {case["A"]["max"] * 2:g} (no crossing yet)')
                _widen(case)
            continue
        if B.get('peak_load') is not None and not B.get('peak_is_last_point'):
            break
        if cut and B.get('peak_load') is not None and B['peak_load'] >= cut:
            break
        if k < max_widen:
            notes.append(f'path range doubled to {case["B"]["max"] * 2:g} (no peak yet)')
            _widen(case)
    A =(r.get('A') or {}).get('critical_load') or (A_known or {}).get('critical_load')
    passed_cut = cut and B.get('peak_load') is not None and B['peak_load'] >= cut and B.get('peak_is_last_point')
    if passed_cut:
        val, kind = B['peak_load'], (f'B LOWER BOUND: path passed the cutoff {cut:g} (= {cut_f:g} x requirement) '
                                     f'still rising; stopped there by design')
    elif B.get('peak_load') is not None and not B.get('peak_is_last_point'):
        val, kind = B['peak_load'], 'B peak (limit point)'
        drop = 1 - abs(B['history'][-1][1]) / abs(B['peak_load']) if B.get('history') else 0
        if drop < 0.01:
            kind = 'B peak (limit point reached, path stalled there: falling branch not traced; Abaqus Riks to confirm)'
    elif B.get('peak_load') is not None:
        val, kind = B['peak_load'], 'B LOWER BOUND (path stopped while rising)'
    elif A and 'B_final_only' in case:
        val, kind = A, ('A: perfect-geometry nonlinear buckling (K_T zero crossing on the nonlinear path; '
                        'objective by user choice, B for the final design)')
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
    bq_ = req['requirements'].get('buckling') or {}
    if d.get('buckling_kind', '').startswith('B LOWER') and (d.get('buckling_value') or 0) < (bq_.get('min_value') or 0):
        sanity.append('buckling path stopped while rising below the requirement (lower bound only)')
    if (d.get('buckling_kind', '').startswith('B LOWER') and req.get('objective', {}).get('quantity') == 'buckling'
            and req.get('objective', {}).get('sense') == 'maximize'):
        sanity.append('buckling objective is only a lower bound (B path stopped while rising)')
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
    if st.get('custom') and i != 1:     # continuous search: nearly every step is a new best; the final best is
        st['convergence_due'] = None    # converged before finalize (finalize enforces it)
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
    if st.get('verification_schedule') == 'final_only':
        return None                    # user decision: Abaqus scripts only for the optimum (study.py verify <best>)
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
    if st.get('custom'):
        cs = st.get('custom_stop') or {}
        win, mn, tol = cs.get('window', NO_IMPROVE_WINDOW), cs.get('min_iterations', MIN_ITERS_BEFORE_STOP), \
            cs.get('tol', IMPROVE_TOL)
        h = st['best_history']
        if i >= mn and h and h[-1] is not None and len(h) > win:
            ref = h[-1 - win]
            if ref is not None and abs(h[-1] - ref) <= tol * abs(ref):
                return dict(recommended=True, why=f'best improved < {100 * tol:g}% over the last {win} iterations '
                                                  '(diminishing returns)')
        return dict(recommended=False)
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
    code, _ = run_cmd(['objective-constraints/objective_constraints.py', npz, '--constraints', sd / 'constraints.json']
                      + _boom_args(d) + _fail_args(d) + ['--flatten-radius', d['r_min'], '--json', cdir / 'objcon_fine.json']
                      + (['--value', f'F_hub={d["F_hub"]}'] if d.get('F_hub') is not None else []) + _custom_values(d),
                      cdir / 'objcon.log')
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
    conv = dict(ok=ok, size=d['size'], fine=fine, dk=dk, dF=dF)
    if d.get('custom') and d.get('buckling_value') and (idir / 'buckling.json').exists():
        # custom mode: the objective is the buckling value, so it is converged too (A and B on the fine mesh)
        bc = solver_settings(jload(idir / 'buckling.json'))
        bc = {k: v for k, v in bc.items() if k not in ('A_known', 'mode_file', 'B_cutoff')}
        bc['name'] = bc['name'] + '_fine'
        bc['geometry']['size'] = fine
        jsave(cdir / 'buckling_fine.json', bc)
        code, _ = run_cmd([SKILLS / 'shell-buckling' / 'boom_buckling.py', cdir / 'buckling_fine.json', '--out',
                           cdir / 'buckling'], cdir / 'buckling_fine.log', cwd=cdir)
        rf = cdir / 'buckling' / f'{bc["name"]}.json'
        if code or not rf.exists():
            die(f'fine-mesh buckling run failed (log {rel(cdir / "buckling_fine.log")})')
        r = jload(rf)
        A1, B1 = (r.get('A') or {}).get('critical_load'), (r.get('B') or {}).get('peak_load')
        v1 = B1 if B1 is not None and not (r.get('B') or {}).get('peak_is_last_point') else A1
        db = abs(v1 / d['buckling_value'] - 1) if v1 else float('inf')
        conv.update(buckling_coarse=d['buckling_value'], buckling_fine=v1, A_fine=A1, B_fine=B1, dbuckling=db,
                    buckling_tol=CONV_TOL['buckling'])
        ok = ok and db <= CONV_TOL['buckling']
        conv['ok'] = ok
        print(f'buckling on the fine mesh: {v1} vs {d["buckling_value"]} ({100 * db:.1f}%, tol '
              f'{100 * CONV_TOL["buckling"]:.0f}%; A {A1}, B {B1})')
    st['converged'][str(i)] = conv
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


def final_B(idir, d):
    """Custom option buckling_objective 'A': method B (imperfect ASDShellQ4 path, mode A at 0.1 t) for the
    final design, so the report has the imperfect strength too. Range: 1.5 x A's critical end rotation /
    shortening, doubled while the path is still rising (up to 3 times)."""
    bc = jload(idir / 'buckling.json')
    if 'B_final_only' not in bc or d.get('buckling_B') is not None:
        return None
    mf = idir / 'buckling' / f'{bc["name"]}_mode.npz'
    if not mf.exists():
        return 'final B not run: no A mode file'
    rf = idir / 'buckling' / f'{bc["name"]}.json'
    A = jload(rf).get('A') or {}
    b = dict(bc['B_final_only'])
    pc = A.get('critical_param') or b['max']
    b.update(max=1.5 * pc, step=1.5 * pc / 40)
    case = {k: v for k, v in bc.items() if k not in ('B_final_only', 'A', 'A_known')}
    case.update(name=bc['name'] + '_finalB', B=b, mode_file=str(mf))
    for k in range(4):
        jsave(idir / 'buckling_finalB.json', case)
        lg = idir / 'logs' / f'buckling_finalB_{k}.log'
        code, _ = run_cmd([SKILLS / 'shell-buckling' / 'boom_buckling.py', idir / 'buckling_finalB.json', '--out',
                           idir / 'buckling', '--only', 'B'], lg, cwd=idir)
        r = jload(idir / 'buckling' / f'{case["name"]}.json') if code == 0 else {}
        B = r.get('B') or {}
        if code or B.get('peak_load') is None or not B.get('peak_is_last_point'):
            break
        case['B'] = dict(case['B'], max=2 * case['B']['max'], step=2 * case['B']['step'])
    d.update(buckling_B=B.get('peak_load'), buckling_B_kind=(None if not B else 'B LOWER BOUND (path stopped while rising)'
                                                              if B.get('peak_is_last_point') else 'B peak'),
             buckling_amplitude=B.get('amplitude'), buckling_imperfection=B.get('imperfection'))
    jsave(idir / 'design.json', d)
    return f'final B (imperfect strength): {d["buckling_B_kind"]} = {d["buckling_B"]} (A {A.get("critical_load")})'


def abaqus_buckling_script(idir, d):
    """shell-buckling buckling_to_abaqus.py script of the design's buckling case (LBA, Palmeri & Laurenzi /
    Leclerc & Pellegrino preload + *BUCKLE, imperfect Riks), with the real laminate (lam.json: off-axis plies
    as such) and the OpenSees A and B values as references. Added 11/10/26 (custom mode; works for any study)."""
    bc = jload(idir / 'buckling.json')
    ld = bc['load']
    if ld['type'] == 'bending':
        dof = 5 if ld.get('axis', 'y') == 'y' else 6
        tipfix = [0, 1, 0, 1, 0, 1] if dof == 5 else [0, 0, 1, 1, 1, 0]
        mom = [0, ld.get('sign', 1), 0] if dof == 5 else [0, 0, ld.get('sign', 1)]
        loads = [{'node': {'rigid': 'xL'}, 'moment': mom}]
    else:
        dof = 1
        tipfix = {'free_tip': [0, 0, 0, 1, 0, 0], 'clamped': [0, 1, 1, 1, 1, 1]}.get(ld.get('ends', 'clamped'))
        if tipfix is None:
            return None, 'Abaqus buckling script not written: pinned ends are not mapped (supports differ at the root)'
        loads = [{'node': {'rigid': 'xL'}, 'force': [-1, 0, 0]}]
    A, B = d.get('buckling_A'), d.get('buckling_B')
    scale = A or B or d.get('buckling_value')
    sec = d.get('section') or bc['geometry']['section']
    case = {'name': d['name'] + '_buck', 'laminate': {'json': str((idir / 'lam.json').resolve())},
            'geometry': {'L': d['L'], 'section': sec, 'size': d['size']},
            'supports': [{'rigid_end': 'x0', 'dofs': [1, 1, 1, 1, 1, 1]}, {'rigid_end': 'xL', 'dofs': tipfix}],
            'loads': loads,
            'buckling': {'scale': scale, 'n_modes': 4, 'preload_fractions': [0.5, 0.8, 0.95],
                         'riks': {'amplitude': (bc.get('B') or bc.get('B_final_only') or {}).get('amplitude', 0.1 * d['h_mm']),
                                  'control': {'rigid': 'xL', 'dof': dof}, 'max_disp': 2 * bc['A']['max'],
                                  'max_lpf': 2.0, 'max_inc': 300},
                         'monitor': {'rigid': 'xL', 'dof': dof}},
            'reference': {k: v for k, v in (('OpenSees A (ShellNLDKGQ K_T eigen, perfect)', A),
                                            ('OpenSees B (ASDShellQ4 imperfect path peak)', B)) if v}}
    cf = idir / 'abaqus_buckling_case.json'
    jsave(cf, case)
    out = idir / f'abaqus_{d["name"]}_buckling.py'
    code, txt = run_cmd([SKILLS / 'shell-buckling' / 'buckling_to_abaqus.py', cf, '--out', out, '--mock'],
                        idir / 'logs' / 'abaqus_buckling.log')
    if code or not out.exists():
        return None, f'Abaqus buckling script FAILED (log {rel(idir / "logs" / "abaqus_buckling.log")})'
    return out, (f'Abaqus buckling script {rel(out)} (model part checked on the mock API; run: '
                 f'abaqus cae noGUI={out.name} in {rel(idir)})')


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
    if (idir / 'buckling.json').exists() and d.get('buckling_value') is not None:
        fb = final_B(idir, d)
        if fb:
            print(fb)
        bscript, bmsg = abaqus_buckling_script(idir, d)
        print(bmsg)
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
                  idir / 'buckling.json', idir / 'buckling' / f'{d["name"]}_buck.png',
                  idir / f'abaqus_{d["name"]}_buckling.py', idir / 'abaqus_buckling_case.json',
                  idir / 'lam_web.json', idir / 'lam_buckling.json']:
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
    if len(sys.argv) == 3 and sys.argv[1] == '_custom_abd_check':      # internal: laminate step of custom mode
        return custom_abd_check(sys.argv[2])
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
        p.add_argument(f'--{k}', type=str.upper)
    p.add_argument('--r1', type=float, help='custom-design mode (CTM): central arc radius [mm]')
    p.add_argument('--alpha', type=float, help='custom-design mode (CTM): subtended angle [rad]')
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
