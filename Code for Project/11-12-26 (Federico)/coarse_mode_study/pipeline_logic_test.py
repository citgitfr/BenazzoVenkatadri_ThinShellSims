"""Decision logic of study.run_buckling_fast with mocked seed / B runs (no OpenSees). 2026-11-13."""
import json
import sys
import tempfile
from pathlib import Path

HERE = Path(__file__).resolve().parent
sys.path.insert(0, str(HERE.parents[2] / '.claude' / 'orchestrator' / 'tools'))
import study  # noqa: E402

REQ = {'requirements': {'buckling': {'min_value': 500.0}}, 'objective': {'quantity': 'mass', 'sense': 'minimize'}}


def B(p, last=True, stop=None, frac=0.9):
    return dict(peak_load=p, peak_is_last_point=last, stop=stop, amplitude=0.01, imperfection='segment LBA',
                history=[[0, 0], [frac * 0.2, p]])


def run(size, results, req=REQ):
    calls = []
    seq = iter(results)

    def fake_run_B(idir, d, case, logs, tag, mw, cut):
        calls.append((case['geometry']['size'], cut))
        return next(seq), []
    study._run_B = fake_run_B
    study.buckling_seed = lambda idir, d, case, logs, ref: (None, {'method': 'mock', 'model': 'mock', 'time': 1,
                                                                    'error': 'mock'})
    tmp = Path(tempfile.mkdtemp(dir=HERE))
    idir = tmp / 'iterations' / 'it001'
    (idir / 'logs').mkdir(parents=True)
    d = dict(name='it001_x', size=size, L=1000.0, Ex=1e5, h_mm=0.1, b=100.0, EIy=1e6, EIz=1e6)
    case = {'name': 'it001_x_buck', 'laminate': {'json': 'lam.json'},
            'geometry': {'L': 1000.0, 'section': {'type': 'arc', 'R': 20, 'b': 80}, 'size': size},
            'load': {'type': 'compression', 'ends': 'pinned'}, 'A': {'step': 0.01, 'max': 0.6},
            'B': {'step': 0.01, 'max': 0.6, 'amplitude': 0.01, 'control': 'disp'}}
    ok, msg = study.run_buckling_fast(idir, d, idir / 'logs', case, req)
    return d['buckling_value'], d['buckling_kind'], calls


checks = [
    ('2.2 mm, coarse reaches 560 -> pass, no fine run', 2.2, [B(561.0)], 561.0, 'cutoff 560', [(4.0, 560.0)]),
    ('2.2 mm, coarse stalls at 530 -> fine run reaches 500 -> pass', 2.2,
     [B(530.0, stop='stall_passed'), B(506.9)], 506.9, 'cutoff 500', [(4.0, 560.0), (2.2, 500.0)]),
    ('2.2 mm, coarse peak 540 -> fine run peaks at 480 -> fail', 2.2,
     [B(540.0, last=False), B(480.0, last=False)], 480.0, 'B peak', [(4.0, 560.0), (2.2, 500.0)]),
    ('2.2 mm, coarse stalls at 450 -> fail, no fine run', 2.2, [B(450.0, frac=0.1)], 450.0, 'B STALL', [(4.0, 560.0)]),
    ('5 mm design mesh -> B on 5 mm, cutoff 500', 5.0, [B(501.0)], 501.0, 'cutoff 500', [(5.0, 500.0)]),
]
fails = 0
for name, size, res, val, kind, calls in checks:
    v, k, c = run(size, res)
    good = abs(v - val) < 1e-9 and kind.split()[0] in k and (kind.startswith('B') or kind in k.replace(' (= ', ' ')) \
        and [(round(a, 3), round(b, 3)) for a, b in c] == calls
    if kind.startswith('cutoff'):
        good = good and f'cutoff {kind.split()[1]}' in k
    fails += not good
    print('PASS' if good else 'FAIL', name, '|', v, '|', k[:90], '|', c)
v, k, c = run(2.2, [B(620.0, last=False)], req={'requirements': {'buckling': {'min_value': 500.0}},
                                                 'objective': {'quantity': 'buckling', 'sense': 'maximize'}})
good = c == [(2.2, None)] and v == 620.0
fails += not good
print('PASS' if good else 'FAIL', 'maximize buckling -> design mesh, no cutoff |', v, k[:60], c)
print('failures:', fails)
