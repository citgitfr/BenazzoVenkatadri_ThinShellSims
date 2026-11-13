"""
Part-B strength with a given seed (boom_buckling.py --only B, unchanged skill code).

    python run_B.py omega|tape1m|tapeopp <seed>      # seed = results/<case>_<seed>_mode.npz

omega : the it005 production case (true [0/30/0] laminate, B_pass 500 N, cutoff 750 N, tol 1e-6,
        40 iterations, adaptive steps), only the imperfection shape changes. Production reference
        (seed = it003 step-A mode): 528.7 N lower bound, 19091 s.
tape1m: the 11-06 it002 case without the cutoff (path to 0.06 mm end shortening) to see the peak.
tapeopp: the CuBe opposite-bending example (2 mm mesh).
Writes results/B/<case>_<seed>.json (+ .png) and a log.
"""
import json
import subprocess
import sys
from pathlib import Path

import coarse_mode as cm

HERE = Path(__file__).resolve().parent
OUT = HERE / 'results' / 'B'
OUT.mkdir(parents=True, exist_ok=True)
R = cm.REPO / 'Code for Project'
S07 = R / '11-07-26 (Orchestrator)/boom_1m_buck500N_opp1cm_hub50/iterations'
S06 = R / '11-06-26 (Orchestrator)/ts_1m_buck5N_opp2cm_hub40/iterations'
PY = sys.executable


def case_for(key):
    if key == 'omega':
        c = json.loads((S07 / 'it005/buckling.json').read_text())
        c['laminate'] = {'json': str(S07 / 'it005/lam.json')}
        c.pop('A', None)
        c.pop('A_known', None)
        return c
    if key == 'tape1m':
        it = S06 / 'it002'
        c = json.loads((it / 'buckling.json').read_text())
        c['laminate'] = {'json': str(it / 'lam.json')}
        c.pop('A', None)
        c.pop('B_cutoff', None)
        c['B'] = {'step': 0.001, 'max': 0.06, 'amplitude': 0.0105, 'control': 'disp', 'tol': 1e-6, 'max_iter': 40}
        return c
    if key == 'tapeopp':
        c = json.loads((cm.SKILLS / 'shell-buckling/examples/tape_spring_opposite_bending.json').read_text())
        c['geometry']['size'] = 2
        c.pop('A', None)
        c['B'].update(tol=1e-6, max_iter=40)
        return c
    raise ValueError(key)


def main(key, seed):
    c = case_for(key)
    c['name'] = f'{key}_{seed}'
    mf = HERE / 'results' / f'{key}_{seed}_mode.npz'
    if not mf.exists():
        raise SystemExit(f'no seed file {mf}')
    c['mode_file'] = str(mf)
    cf = OUT / f'{key}_{seed}_case.json'
    cf.write_text(json.dumps(c, indent=1))
    with open(OUT / f'{key}_{seed}.log', 'w') as lg:
        code = subprocess.call([PY, '-u', str(cm.SKILLS / 'shell-buckling' / 'boom_buckling.py'), str(cf),
                                '--out', str(OUT), '--only', 'B'], stdout=lg, stderr=subprocess.STDOUT, cwd=OUT)
    print(key, seed, 'exit', code)


if __name__ == '__main__':
    main(sys.argv[1], sys.argv[2])
