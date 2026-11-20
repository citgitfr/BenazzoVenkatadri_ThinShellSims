"""Scratch: OpenSees vs Abaqus agreement away from the ends (uses compare_results.py functions only)."""
import sys, numpy as np
sys.path.insert(0, r'F:/Tara/BenazzoVenkatadri_ThinShellSims/.claude/verification')
import compare_results as cr
os_ = cr.load_opensees('results/it007_L006_Y025_C008_lateral50N.npz')
ab = cr.load_abaqus('it007_L006_Y025_C008_lateral50_S4R_4p5mm_odb.npz')
m = cr.align(os_, ab); em = m['elem_map']
st = os_['strains']; x = os_['centroids'][:, 0]; y = os_['centroids'][:, 1]
SK, skc, _ = cr.field_components(ab, 'SK'); k_ab = cr.pick(SK[:, 0, :][em], skc, cr.SK_LABELS)
SE, sec, _ = cr.field_components(ab, 'SE'); e_ab = cr.pick(SE[:, 0, :][em], sec, ['SE1', 'SE2', 'SE3'])
groups = cr.facet_laminates(os_)
S, sc, smeta = cr.field_components(ab, 'S')
def stat(lbl, a, b, msk):
    a, b = a[msk], b[msk]
    for c in range(a.shape[1]):
        ok = np.isfinite(a[:, c]) & np.isfinite(b[:, c]); xa, yb = a[ok, c], b[ok, c]
        k = np.argmax(np.abs(yb))
        print(f'{lbl} c{c}: OS peak {yb[k]:+.4g} AB same {xa[k]:+.4g} ({(xa[k]-yb[k])/abs(yb[k])*100:+.1f}%)  '
              f'relRMS {np.linalg.norm(xa-yb)/np.linalg.norm(yb)*100:.1f}%  scale {xa@yb/(yb@yb):.4f}  max|AB| {np.abs(xa).max():.4g}')
for name, msk in [('all', np.ones_like(x, bool)), ('50<x<950', (x > 50) & (x < 950)), ('100<x<900', (x > 100) & (x < 900))]:
    print('==', name, msk.sum())
    stat('membrane', e_ab, st[:, 0:3], msk)
    stat('curv kxx,kyy,kxy', k_ab, st[:, 3:6], msk)
    for lbl, lam, gm in groups:
        sg, NM = cr.opensees_ply_stresses(st[gm], lam)
        spmap = cr.section_point_map(smeta, smeta.get('section_points') or list(range(1, S.shape[1] + 1)))
        for col, (p, j) in spmap.items():
            if p is None or p >= sg.shape[1] or j != 2: continue
            vals = cr.pick(S[:, col, :][em], sc, ['S11', 'S22', 'S12'])[gm]
            stat(f'{lbl}ply{p+1} top', vals, sg[:, p, j], msk[gm])
# where are the web stress outliers (OS s1 ~ -26, AB ~ -20)?
lbl, lam, gm = [g for g in groups if 'web' in g[0]][0]
sg, _ = cr.opensees_ply_stresses(st[gm], lam)
print('web facets x range', x[gm].min(), x[gm].max(), 'y', np.unique(np.round(y[gm], 2))[:6])
