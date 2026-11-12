"""10 N axial-extension check of a study iteration (11-11-26, Tara; toy demo study ts_toy_minmass).
study.py has no axial load case, so this reuses the iteration's own case.json and lam.json (same
geometry, mesh, laminate, clamped root, rigid tip) with the tip load replaced by +P along x (extension),
runs it with shell-assemble-run and checks it with failure-check (Hashin 2D), all from the sandbox skills.
Writes <iteration>/axial_check/ (case, script, results, logs) and axial_check.json.
Usage: python axial_check.py <iteration dir> [--P 10]"""
import argparse, json, re, subprocess, sys
from pathlib import Path
SK = Path(__file__).resolve().parents[1] / 'toy_orch' / '.claude' / 'skills'
ap = argparse.ArgumentParser(); ap.add_argument('idir'); ap.add_argument('--P', type=float, default=10.0)
a = ap.parse_args()
idir = Path(a.idir).resolve(); out = idir / 'axial_check'; out.mkdir(exist_ok=True)
case = json.loads((idir / 'case.json').read_text()); d = json.loads((idir / 'design.json').read_text())
case['name'] = case['name'] + '_axial'
case['loads'] = [{'node': {'rigid': 'xL'}, 'force': [a.P, 0.0, 0.0]}]
(out / 'case.json').write_text(json.dumps(case, indent=1))
def run(args, log):
    p = subprocess.run([sys.executable, *map(str, args)], cwd=SK, capture_output=True, text=True)
    (out / log).write_text(p.stdout + p.stderr); return p.returncode, p.stdout
c1, o1 = run(['shell-assemble-run/assemble_run.py', out / 'case.json', '--laminate', idir / 'lam.json',
              '--script', out / f'{case["name"]}_opensees.py', '--out', out / 'results'], 'model.log')
npz = out / 'results' / f'{case["name"]}.npz'
c2, o2 = run(['failure-check/failure_check.py', npz, '--boom', d['geometry']], 'failure.log')
mF = re.search(r'MAX F = ([\d.eE+-]+)\s*->\s*([^\n(]+)\(([^)]*)\)', o2)
import numpy as np
r = dict(np.load(npz, allow_pickle=True))
tip = None
for k in ('report_disp', 'tip_disp', 'report_u'):
    if k in r: tip = np.asarray(r[k]).tolist(); break
res = dict(iteration=d['iter'], design=d['key'], P_N=a.P, model_ok=c1 == 0 and npz.exists(), failure_ok=c2 == 0,
           F_axial=float(mF.group(1)) if mF else None, verdict=mF.group(2).strip() if mF else None,
           mode=mF.group(3) if mF else None, tip=tip, npz=str(npz), failure_log=str(out / 'failure.log'))
res['passes'] = bool(res['F_axial'] is not None and res['F_axial'] < 1)
(idir / 'axial_check.json').write_text(json.dumps(res, indent=1))
print(json.dumps(res, indent=1))
