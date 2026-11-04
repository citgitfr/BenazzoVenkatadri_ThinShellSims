"""
Tests odb_extract.py and compare_results.py without Abaqus: an ODB stand-in
(odb_mock.py) built from OpenSees results files is extracted and compared
with the same results (everything must PASS), then with perturbed copies
(each perturbation must be reported).
  python test_verification.py <results.npz> [...] [--out DIR]
"""
import argparse
import contextlib
import io
import json
import runpy
import sys
from pathlib import Path

HERE = Path(__file__).resolve().parent
sys.path.insert(0, str(HERE))
import compare_results as cr   # noqa: E402
import odb_mock                # noqa: E402

PERTURB = [('exact', {}, 1.0, lambda r: all(x['verdict'].startswith('PASS') for x in r)),
           ('displacements x 1.05', {}, 1.05, lambda r: any(x['group'] == 'displacement' and x['verdict'] == 'CHECK' for x in r)),
           ('curvature kxy x 2', {'SK': [1, 1, 2]}, 1.0,
            lambda r: any(x['comp'].startswith('kxy') and 'factor 2' in x['verdict'] for x in r)
            or all(abs(x['opensees']) < 1e-12 for x in r if x['comp'].startswith('kxy'))),
           ('kxx sign flipped', {'SK': [-1, 1, 1]}, 1.0, lambda r: any(x['comp'].startswith('kxx') and 'sign' in x['verdict'] for x in r)),
           ('S11 x 0.9', {'S': [0.9, 1, 1]}, 1.0, lambda r: any(x['comp'].startswith('s1') and x['verdict'] == 'CHECK' for x in r))]


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


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument('results', nargs='+')
    ap.add_argument('--out', default=str(HERE / '_test_out'))
    a = ap.parse_args()
    fails = 0
    for res in a.results:
        name = Path(res).stem
        for label, fs, us, expect in PERTURB:
            out = Path(a.out) / name / label.replace(' ', '_')
            out.mkdir(parents=True, exist_ok=True)
            msg = extract(odb_mock.make_odb(res, u_scale=us, field_scale=fs), out / 'job_odb.npz')
            info, rows = cr.run(Path(res), out / 'job_odb.npz', out, 0.03, name)
            ok = expect(rows)
            fails += not ok
            n = sum(r['verdict'].startswith('PASS') for r in rows)
            print(f'[{"PASS" if ok else "FAIL"}] {name}: {label}: {n}/{len(rows)} rows PASS, axes {info["axis_order"]}, '
                  f'same mesh {info["same_mesh"]}' + (f'  ({msg})' if label == 'exact' else ''))
            if label == 'exact' and not ok:
                for r in rows:
                    if not r['verdict'].startswith('PASS'):
                        print('    ', r['group'], r['comp'], r['opensees'], r['abaqus_same_point'], r['verdict'])
    print(f'{fails} test(s) failed')
    raise SystemExit(1 if fails else 0)


if __name__ == '__main__':
    main()
