import json, numpy as np
from pathlib import Path
import coarse_mode as cm
R = cm.REPO / 'Code for Project'
it005 = R / '11-07-26 (Orchestrator)/boom_1m_buck500N_opp1cm_hub50/iterations/it005'
it003 = R / '11-07-26 (Orchestrator)/boom_1m_buck500N_opp1cm_hub50/iterations/it003'
case = json.loads((it005 / 'buckling.json').read_text())
fine = cm.mesh_only(case)
print('omega fine:', fine.summary(), 'DOFs', cm.n_dofs(fine))
ab, dmax = cm.abaqus_mode(it005 / 'abaqus_buckling/it005_buck_shape_LBA_mode1.csv', fine)
print('abaqus -> fine max node distance', dmax)
mA = cm.load_mode(it003 / 'buckling/it003_L038_Y035_M008_buck_modeA.npz')
mA = {n: v for n, v in mA.items() if n in ab}
print('it003 A mode nodes', len(mA), 'of', len(ab), ' MAC(Abaqus, it003 A) =', cm.mac(ab, mA))
print('identity map MAC', cm.mac(ab, cm.map_mode(fine, ab, fine)))
# where is the Abaqus mode: amplitude along x, wavelength
V = cm.as_grid(fine, ab)
amp = np.linalg.norm(V, axis=2).max(axis=0)
xs = np.linspace(0, fine.L, fine.nx + 1)
print('Abaqus mode |u| along x (every 50 mm):', np.round(amp[::23], 2))
j = int(np.argmax(np.linalg.norm(V, axis=2).max(axis=1)))
sig = V[j, :, :]; c = int(np.argmax(np.abs(sig).max(axis=0))); s = sig[:, c]
zc = np.where(np.diff(np.sign(s[np.abs(s) > 0.02 * np.abs(s).max()])) != 0)[0]
print('line', j, 'comp', c, 'sign changes', len(zc), '-> half-wave ~', fine.L * (np.abs(s) > 0.02).mean() / max(len(zc), 1), 'mm')
A = cm.as_grid(fine, mA); ampA = np.linalg.norm(A, axis=2).max(axis=0)
print('it003 A mode |u| along x:', np.round(ampA[::23], 2))
for size in (4, 6, 8, 10):
    print('section size', size, '-> size_x, lines, nx =', cm.coarse_size_x(case, size))
tcase = json.loads((R / '11-06-26 (Orchestrator)/ts_1m_buck5N_opp2cm_hub40/iterations/it002/buckling.json').read_text())
print('tape fine', cm.mesh_only(tcase).summary(), cm.n_dofs(cm.mesh_only(tcase)))
for size in (5, 8):
    print('tape section size', size, cm.coarse_size_x(tcase, size))
