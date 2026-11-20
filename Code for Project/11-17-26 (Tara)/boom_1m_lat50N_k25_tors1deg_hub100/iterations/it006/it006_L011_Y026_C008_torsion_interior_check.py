# scratch: compare_results pairing, statistics restricted by distance from the rigid ends
import sys, numpy as np
sys.path.insert(0, r'F:\Tara\BenazzoVenkatadri_ThinShellSims\.claude\verification')
import compare_results as cr
os_ = cr.load_opensees('results/it006_L011_Y026_C008_torsion.npz')
ab = cr.load_abaqus('it006_L011_Y026_C008_torsion_S4R_4p5mm_odb.npz')
m = cr.align(os_, ab); em = m['elem_map']
st = os_['strains']; xc = os_['centroids'][:, 0]; L = xc.max() + xc.min()
groups = cr.facet_laminates(os_)
nmax = max(len(g[1]['plies']) for g in groups); nf = len(st)
sig = np.full((nf, nmax, 3, 3), np.nan); NM = np.zeros((nf, 6))
for _, lam, msk in groups:
    sg, nm_ = cr.opensees_ply_stresses(st[msk], lam); sig[msk, :sg.shape[1]] = sg; NM[msk] = nm_
S, s_c, s_meta = cr.field_components(ab, 'S')
spmap = cr.section_point_map(s_meta, s_meta.get('section_points') or list(range(1, S.shape[1] + 1)))
s_ab = np.full(sig.shape, np.nan)
for col, (p, j) in spmap.items():
    if p is not None and p < nmax: s_ab[:, p, j] = cr.pick(S[:, col, :][em], s_c, ['S11', 'S22', 'S12'])
s_ab[np.isnan(sig)] = np.nan
SK, sk_c, _ = cr.field_components(ab, 'SK'); kab = cr.pick(SK[:, 0, :][em], sk_c, cr.SK_LABELS)
SE, se_c, _ = cr.field_components(ab, 'SE'); eab = cr.pick(SE[:, 0, :][em], se_c, ['SE1', 'SE2', 'SE3'])
SF, sf_c, _ = cr.field_components(ab, 'SF'); fab = cr.pick(SF[:, 0, :][em], sf_c, ['SF1', 'SF2', 'SF3'])
SM, sm_c, _ = cr.field_components(ab, 'SM'); mab = cr.pick(SM[:, 0, :][em], sm_c, ['SM1', 'SM2', 'SM3'])
web = [msk for lbl, _, msk in groups if lbl.strip() == 'web'][0]
def st_(name, a, b, sel):
    a, b = a[sel], b[sel]; ok = np.isfinite(a) & np.isfinite(b); a, b = a[ok], b[ok]
    rr = np.linalg.norm(a - b) / np.linalg.norm(b); sc = (a @ b) / (b @ b)
    pk = np.abs(b).argmax()
    print(f'  {name:28s} OS peak {b[pk]:+.4g}  Ab same {a[pk]:+.4g}  ({(a[pk]-b[pk])/abs(b[pk])*100:+.1f}%)  relRMS {rr*100:5.1f}%  scale {sc:.4f}')
for lo in (0, 50, 100):
    sel = (xc > lo) & (xc < L - lo)
    print(f'== elements with {lo} < x < {L-lo:.0f} ({sel.sum()})')
    for i, c in enumerate(['exx', 'eyy', 'gxy']): st_(c, eab[:, i], st[:, i], sel)
    for i, c in enumerate(['kxx', 'kyy', 'kxy']): st_(c, kab[:, i], st[:, 3 + i], sel)
    for i, c in enumerate(['N11', 'N22', 'N12']): st_(c, fab[:, i], NM[:, i], sel)
    for i, c in enumerate(['M11', 'M22', 'M12']): st_(c, mab[:, i], NM[:, 3 + i], sel)
    for lbl, msk in (('flange', ~web), ('web', web)):
        a = s_ab[sel & msk].reshape(-1, 3); b = sig[sel & msk].reshape(-1, 3)
        for i, c in enumerate(['s1', 's2', 't12']): st_(f'{lbl} all plies {c}', a[:, i], b[:, i], slice(None))
