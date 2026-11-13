"""
B mesh / early-stop test on omega it005 (11-13-26).

    python run_Bmesh.py <size_mm> <stop>      # stop = 'pass' (production: cutoff 750, B_pass 500)
                                              #        'req'  (cutoff 500 N: stop once the requirement is carried)
Seed = the segment-LBA mode (seg_s4_L144_m1), remapped from the 2.2 mm mesh onto the <size> mesh.
Writes results/Bmesh/omega_s<size>_<stop>.json/.log (boom_buckling.py --only B, unchanged).
"""
import subprocess
import sys
import time
from pathlib import Path

import coarse_mode as cm
import run_B

HERE = Path(__file__).resolve().parent
OUT = HERE / 'results' / 'Bmesh'
OUT.mkdir(parents=True, exist_ok=True)


def main(size, stop):
    c = run_B.case_for('omega')
    src = cm.mesh_only(c)
    seed = cm.load_mode(HERE / 'results' / 'omega_seg_s4_L144_m1_mode.npz')
    c['geometry']['size'] = size
    tgt = cm.mesh_only(c)
    tag = f'omega_s{size:g}_{stop}'
    mf = OUT / f'{tag}_seed.npz'
    cm.save_mode(mf, cm.map_mode(src, seed, tgt))
    c['name'], c['mode_file'] = tag, str(mf)
    if stop == 'req':
        c['B_cutoff'] = 500.0
    cf = OUT / f'{tag}_case.json'
    cm.jdump(cf, c)
    t0 = time.time()
    with open(OUT / f'{tag}.log', 'w') as lg:
        code = subprocess.call([sys.executable, '-u', str(cm.SKILLS / 'shell-buckling' / 'boom_buckling.py'), str(cf),
                                '--out', str(OUT), '--only', 'B'], stdout=lg, stderr=subprocess.STDOUT, cwd=OUT)
    print(tag, 'exit', code, f'{time.time() - t0:.0f} s wall', f'{cm.n_dofs(tgt)} DOFs', flush=True)


if __name__ == '__main__':
    main(float(sys.argv[1]), sys.argv[2])
