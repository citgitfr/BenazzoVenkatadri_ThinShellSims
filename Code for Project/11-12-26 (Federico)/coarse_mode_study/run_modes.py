"""
Mode part of the coarse-mode test: computes the cheap seeds (dense LBA on <= 8000 DOFs: full-length
coarse mesh and short fine segment, tiled) and compares them (MAC on the fine part-B mesh) with the
reference modes. Writes results/<case>_modes.json and results/<case>_<seed>_mode.npz (fine mesh).

    python run_modes.py omega|tape1m|tapeopp
"""
import json
import sys
import time
from pathlib import Path

import numpy as np

import coarse_mode as cm

HERE = Path(__file__).resolve().parent
OUT = HERE / 'results'
OUT.mkdir(exist_ok=True)
R = cm.REPO / 'Code for Project'
S07 = R / '11-07-26 (Orchestrator)/boom_1m_buck500N_opp1cm_hub50/iterations'
S06 = R / '11-06-26 (Orchestrator)/ts_1m_buck5N_opp2cm_hub40/iterations'


def report(name, fine, refs, seeds, info):
    """MAC table seeds x refs, save every seed on the fine mesh."""
    rows = {}
    for sname, (mode, meta) in seeds.items():
        cm.save_mode(OUT / f'{name}_{sname}_mode.npz', mode)
        rows[sname] = dict(meta, MAC={r: cm.mac(mode, m) for r, m in refs.items()})
        print(f'{sname:28s} ' + '  '.join(f'MAC vs {r} {v:.3f}' for r, v in rows[sname]['MAC'].items())
              + f'   ({meta.get("time", 0):.0f} s, {meta.get("ndof", "-")} DOFs)', flush=True)
    for r, m in refs.items():
        cm.save_mode(OUT / f'{name}_ref_{r}_mode.npz', m)
    refmac = {f'{a} vs {b}': cm.mac(refs[a], refs[b]) for a in refs for b in refs if a < b}
    print('reference vs reference:', refmac)
    cm.jdump(OUT / f'{name}_modes.json', dict(info, fine=fine.summary(), fine_dofs=cm.n_dofs(fine), seeds=rows,
                                              ref_vs_ref=refmac))


def lba_seed(case, fine, lam_small, lam=None, tile=False, n_modes=4, **mesh_kw):
    r = cm.dense_lba(case, lam_small, n_modes=n_modes, lam=lam, **mesh_kw)
    print(f'  dense LBA {mesh_kw}: {r["ndof"]} equations, load factors {np.round(r["lam"], 4).tolist()}, '
          f'times {", ".join(f"{k} {v:.0f} s" for k, v in r["times"].items())}', flush=True)
    src = r['mesh']
    modes = [cm.map_mode(src, m, fine, tile=tile) for m in r['modes']]
    return modes, dict(lam=r['lam'], ndof=r['ndof'], time=r['times']['total'], mesh=src.summary(), **mesh_kw)


def omega():
    case = json.loads((S07 / 'it005/buckling.json').read_text())
    lam_true = S07 / 'it005/lam.json'
    case['laminate'] = {'json': str(cm.surrogate_0_90(lam_true, OUT / 'omega_lam_surrogate_0_90.json'))}
    fine = cm.mesh_only(case)
    ab, dmax = cm.abaqus_mode(S07 / 'it005/abaqus_buckling/it005_buck_shape_LBA_mode1.csv', fine)
    a3 = cm.load_mode(S07 / 'it003/buckling/it003_L038_Y035_M008_buck_modeA.npz')
    refs = {'abaqusLBA': ab, 'prodA_it003': {n: v for n, v in a3.items() if n in ab}}
    seeds = {}
    lam_small = 0.5                                     # N (critical ~546 N)
    for s in (6, 8):
        sx, _, _ = cm.coarse_size_x(case, s)
        modes, meta = lba_seed(case, fine, lam_small, size=s, size_x=sx)
        seeds[f'full_s{s}_m1'] = (modes[0], meta)
        seeds[f'full_s{s}_m1to4'] = (cm.combine(modes), meta)
    seg = {}
    for s, sx, L in ((4, 8.0, 144.0), (3, 8.0, None)):
        if L is None:
            _, lines, _ = cm.coarse_size_x(case, s, L=100.0)
            L = sx * (cm.MAX_DOFS // 6 // lines - 2)
        load = {'type': 'compression', 'ends': 'clamped'}
        modes, meta = lba_seed(case, fine, lam_small, tile=True, size=s, size_x=sx, L=L, load=load)
        seeds[f'seg_s{s}_L{L:g}_m1'] = (modes[0], meta)
        seeds[f'seg_s{s}_L{L:g}_m1to4'] = (cm.combine(modes), meta)
        seg[s] = modes
    seeds['full_s8_m1+seg_s4_m1'] = (cm.combine([seeds['full_s8_m1'][0], seg[4][0]]),
                                     dict(time=seeds['full_s8_m1'][1]['time'] + seeds['seg_s4_L144_m1'][1]['time']))
    report('omega', fine, refs, seeds, dict(case='it005 M008 [0/30/0] pinned compression, ShellNLDKGQ on the 0/90 '
                                            'surrogate', abaqus_node_match_mm=dmax))


def tape1m():
    it = S06 / 'it002'
    case = json.loads((it / 'buckling.json').read_text())
    case['laminate'] = {'json': str(it / 'lam.json')}
    fine = cm.mesh_only(case)
    a2 = cm.load_mode(it / 'buckling/it002_L006_Y001_T014_buck_modeA.npz')
    refs = {'prodA_it002': {n: v for n, v in a2.items() if n in set(cm.grid_nodes(fine))}}
    seeds = {}
    for s in (5, 8):
        sx, _, _ = cm.coarse_size_x(case, s)
        modes, meta = lba_seed(case, fine, 0.05, size=s, size_x=sx)
        seeds[f'full_s{s}_m1'] = (modes[0], meta)
        seeds[f'full_s{s}_m1to4'] = (cm.combine(modes), meta)
    sx, _, _ = cm.coarse_size_x(case, 5)
    r = cm.scan_mode(case, case['A']['step'] * -1, case['A']['max'] * -1, max_iter=30, size=5, size_x=sx)
    print(f'  coarse nonlinear scan (s5): load {r["load"]}, {r["time"]:.0f} s', flush=True)
    seeds['full_s5_scanA'] = (cm.map_mode(r['mesh'], r['mode'], fine), dict(load=r['load'], time=r['time'],
                                                                            ndof=r['ndof']))
    report('tape1m', fine, refs, seeds, dict(case='11-06 it002 T014 L006 [0/0/0] 1 m pinned compression',
                                             prodA_critical=51.0568, prodA_time_s=12097))


def tapeopp():
    case = json.loads((cm.SKILLS / 'shell-buckling/examples/tape_spring_opposite_bending.json').read_text())
    case['geometry']['size'] = 2
    fine = cm.mesh_only(case)
    t0 = time.perf_counter()
    r = cm.scan_mode(case, 0.005, 0.2, max_iter=100)
    print(f'  fine nonlinear scan (reference): load {r["load"]}, {r["time"]:.0f} s, {r["ndof"]} DOFs', flush=True)
    refs = {'scanA_fine': r['mode']}
    modes, meta = lba_seed(case, fine, 0.1)
    seeds = {'lba_samemesh_m1': (modes[0], meta), 'lba_samemesh_m2': (modes[1], meta),
             'lba_samemesh_m2to4': (cm.combine(modes[1:]), meta)}
    report('tapeopp', fine, refs, seeds, dict(case='CuBe tape R13.3 b24.6 t0.1 iso, L200, opposite bending, 2 mm',
                                              scanA_load=r['load'], scanA_time=r['time']))


if __name__ == '__main__':
    {'omega': omega, 'tape1m': tape1m, 'tapeopp': tapeopp}[sys.argv[1]]()
