"""
Tests odb_extract.py and compare_results.py without Abaqus: an ODB stand-in
(odb_mock.py) built from OpenSees results files is extracted and compared
with the same results (everything must PASS), then with perturbed copies
(each perturbation must be reported). Also checks the three conventions
found on real Abaqus 2026 ODBs: SK1/SK2 = curvature about local axis 1/2
(kxx = SK2), the doubled laminate on web facets (same facets and plies as
failure_check / laminate_properties), and the pairing of section points
with plies (all points, or only Abaqus' default ones; flange vs web layups).
  python test_verification.py [<results.npz> ...] [--out DIR]
Without results files it solves three small default cases first (tape
spring [0/90]s, TRAC R001 [0/90/0], omega M014 [0/90]s; shell-bc-load).
"""
import argparse
import contextlib
import io
import json
import runpy
import sys
from pathlib import Path

import numpy as np

HERE = Path(__file__).resolve().parent
sys.path.insert(0, str(HERE))
import compare_results as cr   # noqa: E402
import odb_mock                # noqa: E402

for _d in ('laminate-properties', 'failure-check', 'shell-mesh', 'shell-bc-load'):
    sys.path.insert(0, str(odb_mock._SKILLS / _d))

DEFAULT_CASES = [
    dict(name='tape_spring_0_90s', laminate={'catalog': 'L024', 'layup': '[0/90]s'},
         geometry={'L': 150, 'section': {'type': 'arc', 'R': 50, 'b': 100}, 'size': 5},
         element={'type': 'ASDShellQ4'}, supports=[{'edge': 'x0', 'dofs': [1, 1, 1, 1, 1, 1]}, {'rigid_end': 'xL'}],
         loads=[{'node': {'rigid': 'xL'}, 'force': [0, 0.5, -10], 'moment': [20, 0, 0]}], analysis={'type': 'linear'}),
    dict(name='trac_R001_0_90_0', laminate={'catalog': 'L024', 'layup': '[0/90/0]'},
         geometry={'L': 60, 'section': {'type': 'boom', 'id': 'R001'}, 'size': 4}, element={'type': 'ASDShellQ4'},
         supports=[{'rigid_end': 'x0', 'dofs': [1, 1, 1, 1, 1, 1]}, {'rigid_end': 'xL'}],
         loads=[{'node': {'rigid': 'xL'}, 'force': [-1, 0.05, -0.2], 'moment': [3, 5, 0]}], analysis={'type': 'linear'}),
    dict(name='omega_M014_0_90s', laminate={'catalog': 'L024', 'layup': '[0/90]s'},
         geometry={'L': 45, 'section': {'type': 'boom', 'id': 'M014'}, 'size': 3}, element={'type': 'ASDShellQ4'},
         supports=[{'edge': 'x0', 'dofs': [1, 1, 1, 1, 1, 1]}, {'rigid_end': 'xL'}],
         loads=[{'node': {'rigid': 'xL'}, 'force': [-1, 0.1, -0.5], 'moment': [3, 0, 0]}], analysis={'type': 'linear'}),
]


def ply_rows(r):
    return [x for x in r if ' ply ' in f' {x["group"]}']


def is_check(x):
    return not x['verdict'].startswith('PASS')


# (label, make_odb options, displacement scale, expectation on the rows, only for models with webs)
PERTURB = [
    ('exact', {}, 1.0, lambda r: all(x['verdict'].startswith('PASS') for x in r), False),
    ('displacements x 1.05', {}, 1.05, lambda r: any(x['group'] == 'displacement' and x['verdict'] == 'CHECK' for x in r),
     False),
    ('curvature kxy x 2', {'field_scale': {'SK': [1, 1, 2]}}, 1.0,
     lambda r: any(x['comp'].startswith('kxy') and 'factor 2' in x['verdict'] for x in r)
     or all(abs(x['opensees']) < 1e-12 for x in r if x['comp'].startswith('kxy')), False),
    # SK2 is kxx (curvature about local axis 2): flipping SK2 must flag kxx, not kyy
    ('kxx (SK2) sign flipped', {'field_scale': {'SK': [1, -1, 1]}}, 1.0,
     lambda r: any(x['comp'] == 'kxx (SK2)' and 'sign' in x['verdict'] for x in r)
     and not any(x['comp'].startswith('kyy') and is_check(x) for x in r), False),
    # an ODB with SK in CLT order (what the tool assumed before) is not Abaqus' order: reported
    ('SK stored as [kxx, kyy, kxy]', {'sk_order': 'clt'}, 1.0,
     lambda r: any(x['comp'][:3] in ('kxx', 'kyy') and is_check(x) for x in r), False),
    ('S11 x 0.9', {'field_scale': {'S': [0.9, 1, 1]}}, 1.0,
     lambda r: any(x['comp'].startswith('s1') and x['verdict'] == 'CHECK' for x in r), False),
    # only layer 2 (an interior ply) changed: its rows are CHECK, every other ply still PASS
    ('layer 2 S22 x 0.9', {'layer_scale': {2: [1, 0.9, 1]}}, 1.0,
     lambda r: any(' ply 2 ' in f' {x["group"]} ' and x['comp'].startswith('s2') and is_check(x) for x in r)
     and all(x['verdict'].startswith('PASS') for x in ply_rows(r) if ' ply 2 ' not in f' {x["group"]} '), False),
    # Abaqus' default section points only (bottom of layer 1, top of the last layer of each section)
    ('default section points only', {'sp': 'default'}, 1.0,
     lambda r: all(x['verdict'].startswith('PASS') for x in r)
     and {x['group'] for x in ply_rows(r)} == {f'{lbl}ply {p + 1} ({lam["plies"][p]["theta"]:g} deg) {pos}'
                                               for lbl, lam in DEFAULT_GROUPS[0]
                                               for p, pos in ((0, 'bottom'), (len(lam['plies']) - 1, 'top'))}, False),
    # a web with the single (flange) laminate in Abaqus: N11 on the web differs (half the A matrix)
    ('web with the single laminate', {'web_single': True}, 1.0,
     lambda r: any(x['comp'].startswith('N11') and is_check(x) for x in r), True),
]
DEFAULT_GROUPS = [[]]


def extract(odb, out):
    odb_mock.install(odb)
    argv = sys.argv
    sys.argv = ['odb_extract.py', 'job.odb', str(out)]
    try:
        with contextlib.redirect_stdout(io.StringIO()) as buf:
            runpy.run_path(str(HERE / 'odb_extract.py'), run_name='__main__')
    finally:
        sys.argv = argv
    return buf.getvalue().strip()


def default_results(out):
    import shell_bc_load as bc
    paths = []
    for case in DEFAULT_CASES:
        p = Path(out) / 'cases' / f'{case["name"]}.npz'
        if not p.exists():
            with contextlib.redirect_stdout(io.StringIO()):
                bc.run_case(case, p.parent, verbose=False)
        paths.append(p)
    return paths


def static_checks(res_path):
    """compare_results' web facets and laminates = failure_check.facet_groups (laminate_properties);
    every ply of every facet group gets rows at its bottom and top with all section points."""
    import failure_check as fc
    import laminate_properties as lp
    os_ = cr.load_opensees(res_path)
    res = dict(meta=os_['meta'], faces=os_['faces'], points=os_['points'])
    lam = lp.Laminate.from_dict(os_['lam'])
    fc_groups = fc.facet_groups(res, lam)[0]
    cr_groups = cr.facet_laminates(os_)
    ok = len(fc_groups) == len(cr_groups)
    for (_, flam, idx), (_, clam, msk) in zip(fc_groups, cr_groups):
        ok &= set(idx.tolist()) == set(np.flatnonzero(msk).tolist())
        ok &= [(q['theta'], q['t'], q['mat']) for q in flam.to_dict()['plies']] == \
              [(q['theta'], q['t'], q['mat']) for q in clam['plies']]
    DEFAULT_GROUPS[0] = [(lbl, l) for lbl, l, _ in cr_groups]
    return ok, f'{len(cr_groups)} facet group(s): ' + '; '.join(
        f'{lbl.strip() or "all"} {int(m.sum())} [' + '/'.join(f'{q["theta"]:g}' for q in l['plies']) + ']'
        for lbl, l, m in cr_groups)


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument('results', nargs='*')
    ap.add_argument('--out', default=str(HERE / '_test_out'))
    a = ap.parse_args()
    results = a.results or default_results(a.out)
    fails = n = 0
    for res in results:
        name = Path(res).stem
        ok, note = static_checks(res)
        fails += not ok
        n += 1
        print(f'[{"PASS" if ok else "FAIL"}] {name}: web facets and laminates = failure_check.facet_groups ({note})')
        has_web = len(DEFAULT_GROUPS[0]) > 1
        for label, opts, us, expect, web_only in PERTURB:
            if web_only and not has_web:
                continue
            out = Path(a.out) / name / label.replace(' ', '_').replace('[', '').replace(']', '').replace(',', '')
            out.mkdir(parents=True, exist_ok=True)
            msg = extract(odb_mock.make_odb(res, u_scale=us, **opts), out / 'job_odb.npz')
            info, rows = cr.run(Path(res), out / 'job_odb.npz', out, 0.03, name)
            ok = expect(rows)
            if label == 'exact':                         # every ply of every group compared at bottom and top
                want = {f'{lbl}ply {p + 1} ({q["theta"]:g} deg) {pos}' for lbl, lam in DEFAULT_GROUPS[0]
                        for p, q in enumerate(lam['plies']) for pos in ('bottom', 'top')}
                got = {x['group'] for x in ply_rows(rows)}
                ok &= want == got
            fails += not ok
            n += 1
            npass = sum(r['verdict'].startswith('PASS') for r in rows)
            print(f'[{"PASS" if ok else "FAIL"}] {name}: {label}: {npass}/{len(rows)} rows PASS, axes {info["axis_order"]}, '
                  f'same mesh {info["same_mesh"]}' + (f'  ({msg})' if label == 'exact' else ''))
            if not ok and label in ('exact', 'default section points only'):
                for r in rows:
                    if not r['verdict'].startswith('PASS'):
                        print('    ', r['group'], r['comp'], r['opensees'], r['abaqus_same_point'], r['verdict'])
    print(f'{n - fails}/{n} test(s) passed, {fails} failed')
    raise SystemExit(1 if fails else 0)


if __name__ == '__main__':
    main()
