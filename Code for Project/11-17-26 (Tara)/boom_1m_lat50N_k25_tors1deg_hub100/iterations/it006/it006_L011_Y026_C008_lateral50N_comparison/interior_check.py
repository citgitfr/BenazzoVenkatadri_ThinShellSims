"""Scratch: compare_results quantities restricted to x-bands (end zones vs interior). Uses compare_results functions unchanged."""
import sys, numpy as np
sys.path.insert(0, r'F:\Tara\BenazzoVenkatadri_ThinShellSims\.claude\verification')
import compare_results as cr
it = r'F:\Tara\BenazzoVenkatadri_ThinShellSims\Code for Project\11-17-26 (Tara)\boom_1m_lat50N_k25_tors1deg_hub100\iterations\it006'
os_ = cr.load_opensees(it + r'\results\it006_L011_Y026_C008_lateral50N.npz')
ab = cr.load_abaqus(it + r'\it006_L011_Y026_C008_lateral50_S4R_4p5mm_odb.npz')
m = cr.align(os_, ab); o = list(m['order']); em = m['elem_map']; nm = m['node_map']; shell = os_['shell']
st = os_['strains']; xc = os_['centroids'][:, 0]; L = os_['points'][:, 0].max()
groups = cr.facet_laminates(os_)
NM = np.zeros((len(st), 6)); s1top = np.zeros(len(st))
for _, lam, msk in groups:
    sg, nm_ = cr.opensees_ply_stresses(st[msk], lam); NM[msk] = nm_
k_ab = cr.pick(ab['F_SK'][:, 0, :][em], cr.field_components(ab, 'SK')[1], cr.SK_LABELS)
se_ab = cr.pick(ab['F_SE'][:, 0, :][em], cr.field_components(ab, 'SE')[1], ['SE1', 'SE2', 'SE3'])
sf = cr.pick(ab['F_SF'][:, 0, :][em], cr.field_components(ab, 'SF')[1], ['SF1', 'SF2', 'SF3'])
sm = cr.pick(ab['F_SM'][:, 0, :][em], cr.field_components(ab, 'SM')[1], ['SM1', 'SM2', 'SM3'])
fields = {'exx': (se_ab[:, 0], st[:, 0]), 'eyy': (se_ab[:, 1], st[:, 1]), 'gxy': (se_ab[:, 2], st[:, 2]),
          'kxx': (k_ab[:, 0], st[:, 3]), 'kyy': (k_ab[:, 1], st[:, 4]), 'kxy': (k_ab[:, 2], st[:, 5]),
          'N11': (sf[:, 0], NM[:, 0]), 'N22': (sf[:, 1], NM[:, 1]), 'N12': (sf[:, 2], NM[:, 2]),
          'M11': (sm[:, 0], NM[:, 3]), 'M22': (sm[:, 1], NM[:, 4]), 'M12': (sm[:, 2], NM[:, 5])}
UR = ab['UR'][-1][:, o]; xn = os_['points'][shell, 0]
fields_n = {f'r{c}': (UR[nm[shell], i], os_['disp'][shell, 3 + i]) for i, c in enumerate('xyz')}
bands = {'x<25': lambda x: x < 25, '25-100': lambda x: (x >= 25) & (x < 100), 'interior 100..L-100': lambda x: (x >= 100) & (x <= L - 100),
         'L-100..L-25': lambda x: (x > L - 100) & (x <= L - 25), '>L-25': lambda x: x > L - 25}
print(f'{"field":6s} {"band":22s} {"OS max|.|":>11s} {"AB max|.|":>11s} {"relRMS":>8s} {"LSscale":>8s} {"corr":>6s}')
for name, (a, b) in list(fields.items()) + list(fields_n.items()):
    x = xn if name.startswith('r') else xc
    for bn, f in bands.items():
        s = f(x); aa, bb = a[s], b[s]
        rr = np.linalg.norm(aa - bb) / np.linalg.norm(bb); sc = aa @ bb / (bb @ bb); cc = np.corrcoef(aa, bb)[0, 1]
        print(f'{name:6s} {bn:22s} {np.abs(bb).max():11.4g} {np.abs(aa).max():11.4g} {rr*100:7.2f}% {sc:8.4f} {cc:6.3f}')
