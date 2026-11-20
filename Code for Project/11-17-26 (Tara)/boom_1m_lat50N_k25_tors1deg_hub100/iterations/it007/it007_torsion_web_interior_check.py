# Scratch check (verification agent). Abaqus SE columns are [SE1 SE2 SE6 SE3 SE4 SE5] (extract meta).
# interior (50 < x < 950 mm) vs end zones, from the two result files only.
import numpy as np, json, sys
from scipy.spatial import cKDTree
o = np.load('results/it007_L006_Y025_C008_torsion.npz', allow_pickle=True)
a = np.load('it007_L006_Y025_C008_torsion_S4R_4p5mm_odb.npz', allow_pickle=True)
m = json.loads(str(o['meta'])); lab = m["strip_label"]; lab = eval(lab) if isinstance(lab, str) else lab
ny = m['nstrips']; nx = m['nx']
P = o['points']; tags = {t: i for i, t in enumerate(o['node_tags'])}
F = o["faces"]
co = P[F].mean(1)
amap = {l: i for i, l in enumerate(a['node_labels'])}
ca = a['node_xyz'][np.array([[amap[l] for l in e] for e in a['elem_conn']])].mean(1)
d, j = cKDTree(ca).query(co)
print('max centroid pairing dist', d.max())
s = o['strains'].mean(1)  # (ne, 8) avg over GPs
SE = a['F_SE'][j, 0, :]; SK = a['F_SK'][j, 0, :]
os_ = {'exx': s[:, 0], 'eyy': s[:, 1], 'gxy': s[:, 2], 'kxx': s[:, 3], 'kyy': s[:, 4], 'kxy': s[:, 5]}
ab = {'exx': SE[:, 0], 'eyy': SE[:, 1], 'gxy': SE[:, 3], 'kxx': SK[:, 1], 'kyy': SK[:, 0], 'kxy': SK[:, 2]}
# facet strip label: element order is strip-major or x-major? infer from count
ne = len(co)
web = np.zeros(ne, bool)
# assign strip by nearest strip by element index guess: try both layouts
idx = np.arange(ne)
for lay, strip in (('x-major', idx % ny), ('strip-major', idx // nx)):
    w = np.array([lab[k] == 'web' for k in strip])
    print(lay, 'web facets', w.sum(), 'web x-span', co[w, 0].min().round(1), co[w, 0].max().round(1),
          'web y range', np.unique(np.round(co[w, 1], 1))[:6])
web = np.array([lab[k] == 'web' for k in idx // nx])
x = co[:, 0]
def stats(mask, name):
    print(f'-- {name}: {mask.sum()} facets')
    for k in os_:
        A, B = os_[k][mask], ab[k][mask]
        sc = (A @ B) / (A @ A) if A @ A > 0 else np.nan
        rr = np.linalg.norm(B - A) / max(np.linalg.norm(A), 1e-300)
        print(f'   {k}: |OS|max {abs(A).max():.3e}  |Abq|max {abs(B).max():.3e}  relRMS {100*rr:6.1f}%  scale {sc:.4f}')
inner = (x > 50) & (x < 950)
stats(web & inner, 'web interior 50<x<950'); stats(web & ~inner, 'web end zones')
stats(~web & inner, 'flange interior'); stats(~web & ~inner, 'flange end zones')
# whole-model rms of curvature interior
print('-- least-squares scale of each Abaqus component on each OpenSees column (interior flange)')
msk = ~web & inner
for nm, B in [('SE1',SE[:,0]),('SE2',SE[:,1]),('SE3',SE[:,3]),('SK1',SK[:,0]),('SK2',SK[:,1]),('SK3',SK[:,2])]:
    B = B[msk]; row=[]
    for c in range(8):
        A = s[msk, c]; cc = np.corrcoef(A, B)[0,1] if A.std()>0 else 0
        row.append(f'{c}:{cc:+.2f}')
    print('  ', nm, ' '.join(row))
