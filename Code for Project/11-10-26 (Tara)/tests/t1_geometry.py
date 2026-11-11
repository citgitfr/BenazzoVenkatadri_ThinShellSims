import sys, time, math
sys.path.insert(0, '..')
import numpy as np, matplotlib; matplotlib.use('Agg'); import matplotlib.pyplot as plt
import ctm_model as cm
designs = [(19.45, 1.5708), (25.62, 1.5708), (41.71, 1.12), (12, 0.8), (30, 0.7)]
fig, ax = plt.subplots(figsize=(8, 5))
for d in designs:
    sec = cm.section(*d)
    for br in sec.branches:
        s = np.linspace(0, br.b, 200)
        P = np.array([br.point(x) for x in s])
        ax.plot(P[:, 0], P[:, 1])
    print(d, 'r2 = %.3f' % cm.r2_of(*d), 'b = %.2f' % sec.b, 'coil', cm.coiling_failure(*d))
ax.set_aspect('equal'); fig.savefig('t1_sections.png', dpi=110)
for size in (5, 3):
    m = cm.sm.ShellMesh(cm.L, cm.section(25.62, 1.5708), size)
    print(size, m.summary())
    for load in ('axial', 'Mx', 'My'):
        t = time.perf_counter(); c = cm.compliance((25.62, 1.5708), load, size)
        print('  ', load, 'compliance', c, '%.1f s' % (time.perf_counter() - t))
