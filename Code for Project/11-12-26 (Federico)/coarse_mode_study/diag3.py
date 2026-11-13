import json, numpy as np, coarse_mode as cm
from pathlib import Path
R = Path('results')
def prof(case, name):
    fine = cm.mesh_only(case)
    m = cm.load_mode(R / name)
    V = cm.as_grid(fine, m); a = np.linalg.norm(V, axis=2)
    st = max(1, fine.nx // 20)
    print(f'{name:40s} along x', np.round(a.max(axis=0)[::st], 2))
o = json.loads(open(cm.REPO/'Code for Project/11-07-26 (Orchestrator)/boom_1m_buck500N_opp1cm_hub50/iterations/it005/buckling.json').read())
for n in ('omega_ref_abaqusLBA','omega_ref_prodA_it003','omega_full_s6_m1','omega_full_s8_m1','omega_full_s8_m1to4','omega_seg_s4_L144_m1','omega_seg_s3_L104_m1'):
    prof(o, n + '_mode.npz')
t = json.loads(open(cm.REPO/'Code for Project/11-06-26 (Orchestrator)/ts_1m_buck5N_opp2cm_hub40/iterations/it002/buckling.json').read())
for n in ('tape1m_ref_prodA_it002','tape1m_full_s5_m1','tape1m_full_s5_m1to4','tape1m_full_s5_scanA'):
    prof(t, n + '_mode.npz')
