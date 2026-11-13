"""
End-to-end test of study.py run_buckling_fast (2026-11-13) on copies of real study iterations.

    python pipeline_test.py omega|tape
omega: 11-07 it005 (OM M008 [0/30/0], 2.2 mm design mesh, 500 N requirement) -> 4 mm B, cutoff 560 N
tape : 11-06 it002 (T014 [0/0/0], 5 mm design mesh, 5 N requirement)      -> 5 mm B, cutoff 5 N
Copies go to pipeline_test/<case>/iterations/itNNN (the originals are not touched).
"""
import json
import shutil
import sys
import time
from pathlib import Path

HERE = Path(__file__).resolve().parent
REPO = HERE.parents[2]
sys.path.insert(0, str(REPO / '.claude' / 'orchestrator' / 'tools'))
import study  # noqa: E402

SRC = {'omega': REPO / 'Code for Project/11-07-26 (Orchestrator)/boom_1m_buck500N_opp1cm_hub50', 'it': 'it005'}
CASES = {'omega': (REPO / 'Code for Project/11-07-26 (Orchestrator)/boom_1m_buck500N_opp1cm_hub50', 'it005'),
         'tape': (REPO / 'Code for Project/11-06-26 (Orchestrator)/ts_1m_buck5N_opp2cm_hub40', 'it002')}


def main(key):
    sd, it = CASES[key]
    dst = HERE / 'pipeline_test' / key
    idir = dst / 'iterations' / it
    if idir.exists():
        shutil.rmtree(idir)
    idir.mkdir(parents=True)
    for f in ('design.json', 'buckling.json', 'lam.json'):
        shutil.copy2(sd / 'iterations' / it / f, idir / f)
    bc = json.loads((idir / 'buckling.json').read_text())
    for k in ('A_known', 'mode_file', 'B_cutoff', 'B_pass'):
        bc.pop(k, None)
    (idir / 'buckling.json').write_text(json.dumps(bc, indent=1))
    logs = idir / 'logs'
    logs.mkdir()
    d = json.loads((idir / 'design.json').read_text())
    req = json.loads((sd / 'requirements.clean.json').read_text())
    t0 = time.time()
    ok, msg = study.run_buckling(idir, d, logs, req=req)
    print(key, 'ok' if ok else 'FAILED', f'{time.time() - t0:.0f} s')
    print(msg)


if __name__ == '__main__':
    main(sys.argv[1])
