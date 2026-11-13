"""Phase-insensitive comparison of local modes: dominant half-wavelength along x and cross-section shape MAC
(best over stations), since MAC of the whole field is ~0 for the same lobe pattern shifted along x."""
import json, numpy as np, coarse_mode as cm
from pathlib import Path
R = Path('results')
o = json.loads(open(cm.REPO/'Code for Project/11-07-26 (Orchestrator)/boom_1m_buck500N_opp1cm_hub50/iterations/it005/buckling.json').read())
fine = cm.mesh_only(o)
def metrics(name):
    V = cm.as_grid(cm.mesh_only(o), cm.load_mode(R / f'omega_{name}_mode.npz'))   # [line, station, 3]
    W = V.transpose(0, 2, 1).reshape(-1, V.shape[1])                                  # (line,comp) x station
    F = np.abs(np.fft.rfft(W - W.mean(axis=1, keepdims=True), axis=1))**2
    spec = F.sum(axis=0); k = np.argmax(spec[1:]) + 1
    half = fine.L / (2 * k)
    i = int(np.argmax(np.linalg.norm(V, axis=(0, 2))))
    return half, V[:, i, :].ravel()
ref_half, ref_sec = metrics('ref_abaqusLBA')
out = {}
for n in ('ref_abaqusLBA', 'ref_prodA_it003', 'full_s6_m1', 'full_s8_m1', 'full_s8_m1to4', 'seg_s4_L144_m1',
          'seg_s4_L144_m1to4', 'seg_s3_L104_m1', 'seg_s3_L104_m1to4'):
    half, sec = metrics(n)
    secmac = float((sec @ ref_sec)**2 / ((sec @ sec) * (ref_sec @ ref_sec)))
    out[n] = dict(half_wave_mm=half, section_MAC_vs_abaqus=secmac)
    print(f'{n:22s} half-wave {half:7.1f} mm   section-shape MAC vs Abaqus {secmac:.3f}')
cm.jdump(R / 'omega_shape_metrics.json', out)
