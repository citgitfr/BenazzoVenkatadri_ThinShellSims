import json, numpy as np, coarse_mode as cm, openseespy.opensees as ops
col = json.loads((cm.SKILLS / 'shell-buckling/examples/tape_spring_compression.json').read_text())
col['load'] = {'type': 'compression', 'ends': 'clamped'}
kw = dict(size_x=4)
mesh, _ = cm.build(col, 'ShellNLDKGQ', **kw)
K = cm.sb._dense_tangent(0.0)
nodes = cm.grid_nodes(mesh)
eq = np.array([ops.nodeDOFs(n) for n in nodes])
print('n', K.shape[0], 'eq range', eq.min(), eq.max(), 'unique', len(np.unique(eq[eq>=0])), 'nodes', len(nodes))
r = cm.dense_lba(col, 0.05, n_modes=2, **kw)
s = cm.scan_mode(col, -0.002, -0.06, max_iter=30, **kw)
print('LBA', r['lam'], 'scan', s['load'])
m = r['modes'][0]; a = s['mode']
print('MAC same coarse mesh', cm.mac(m, a))
V = cm.as_grid(r['mesh'], m); A = cm.as_grid(s['mesh'], a)
print('LBA |u| along x', np.round(np.linalg.norm(V,axis=2).max(axis=0)[::8],2))
print('scan |u| along x', np.round(np.linalg.norm(A,axis=2).max(axis=0)[::8],2))
print('LBA comps max', np.abs(V).max(axis=(0,1)), 'scan comps max', np.abs(A).max(axis=(0,1)))
