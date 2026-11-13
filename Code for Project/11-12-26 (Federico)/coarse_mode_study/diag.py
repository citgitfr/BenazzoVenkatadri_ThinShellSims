import json, numpy as np, coarse_mode as cm
case = json.loads((cm.SKILLS / 'shell-buckling/examples/tape_spring_opposite_bending.json').read_text())
case['geometry']['size'] = 2
fine = cm.mesh_only(case)
for ls in (0.1, 1.0, 10.0):
    r = cm.dense_lba(case, ls, n_modes=3)
    V = cm.as_grid(fine, r['modes'][0]); a = np.linalg.norm(V, axis=2)
    print('lam_small', ls, 'lam', np.round(r['lam'], 3), 'mode1 |u| along x', np.round(a.max(axis=0)[::10], 2), 'across', np.round(a.max(axis=1), 2))
col = json.loads((cm.SKILLS / 'shell-buckling/examples/tape_spring_compression.json').read_text())
col['load'] = {'type': 'compression', 'ends': 'clamped'}
r = cm.dense_lba(col, 0.05, n_modes=3, size_x=4)
print('tape column L300 clamped (A known 45.6 N): lam', np.round(r['lam'], 3), r['ndof'])
