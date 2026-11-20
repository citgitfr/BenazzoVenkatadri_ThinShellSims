"""Segment-LBA calibration set for a lateral-bending (axis z) local-buckling screen estimate of closed booms
(11-17-26, Tara, user-approved). For each (material, 0/90 layup, catalog geometry): laminate JSON with
laminate-properties, then shell-buckling segment_mode.py (dense LBA of a <= 8000-DOF segment, ShellNLDKGQ,
bending about z) -> lowest critical moment. Runs N_PAR processes at once, each with 1 BLAS thread
(user CPU cap 16). Writes lba_calibration.csv next to this script.
Usage: python lba_calibration.py [N_PAR]"""
import csv
import json
import os
import subprocess
import sys
from concurrent.futures import ThreadPoolExecutor
from pathlib import Path

HERE = Path(__file__).resolve().parent
REPO = HERE.parents[3]
SK = REPO / '.claude' / 'skills'
PY = sys.executable
OUT = HERE / 'lba_runs'
OUT.mkdir(exist_ok=True)
N_PAR = int(sys.argv[1]) if len(sys.argv) > 1 else 14
LAYUPS = {'Y001': '[0/0/0]', 'Y005': '[0/90/0]', 'Y016': '[0/0/0/0]', 'Y020': '[0/90/90/0]',
          'Y031': '[0/0/0/0/0]', 'Y063': '[0/90/0/90/0]'}
GEOMS = ['C008', 'C005', 'C016', 'M006', 'M022']
RUNS = [('L038', y, g) for g in GEOMS for y in LAYUPS] + [('L028', 'Y001', g) for g in GEOMS]
ENV = dict(os.environ, OMP_NUM_THREADS='1', OPENBLAS_NUM_THREADS='1', MKL_NUM_THREADS='1')


def one(run):
    mat, lay, geo = run
    tag = f'{mat}_{lay}_{geo}'
    info = OUT / f'{tag}.json'
    if not info.exists():
        lam = OUT / f'lam_{mat}_{lay}.json'
        if not lam.exists():
            subprocess.run([PY, SK / 'laminate-properties' / 'laminate_properties.py', '--catalog', mat, '--layup',
                            LAYUPS[lay], '--save-json', lam], capture_output=True, env=ENV, check=True)
        case = {'name': tag, 'laminate': {'json': str(lam)},
                'geometry': {'L': 1000.0, 'section': {'type': 'boom', 'id': geo}, 'size': 4.5},
                'load': {'type': 'bending', 'axis': 'z', 'sign': 1},
                'B': {'step': 1e-4, 'max': 1e-2, 'amplitude': 0.01, 'control': 'disp'}}
        cf = OUT / f'{tag}_case.json'
        cf.write_text(json.dumps(case, indent=1))
        p = subprocess.run([PY, SK / 'shell-buckling' / 'segment_mode.py', cf, '--out', OUT / f'{tag}.npz',
                            '--json', info, '--ref-load', '50000'], capture_output=True, text=True, env=ENV,
                           cwd=OUT)
        (OUT / f'{tag}.log').write_text(p.stdout + p.stderr)
        if not info.exists():
            return dict(material=mat, layup=lay, geometry=geo, M_lba=None, note=f'failed rc {p.returncode}')
    d = json.loads(info.read_text())
    return dict(material=mat, layup=lay, geometry=geo, M_lba=min(abs(x) for x in d['lam']), model=d.get('model'),
                time_s=round(d.get('time', 0)), note='')


if __name__ == '__main__':
    with ThreadPoolExecutor(N_PAR) as ex:
        rows = list(ex.map(one, RUNS))
    with open(HERE / 'lba_calibration.csv', 'w', newline='') as f:
        w = csv.DictWriter(f, fieldnames=['material', 'layup', 'geometry', 'M_lba', 'model', 'time_s', 'note'])
        w.writeheader()
        w.writerows(rows)
    for r in rows:
        print(r)
