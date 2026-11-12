"""Diagnostic (11-11-26, Tara): every toy-catalog combination with the design_screen.py estimates
(no rejection), using design_screen's own functions from the toy sandbox toy_orch/.claude.
Usage: python screen_all.py <study folder>"""
import json, math, sys
from pathlib import Path
import numpy as np
TOOLS = Path(__file__).resolve().parents[1] / 'toy_orch' / '.claude' / 'orchestrator' / 'tools'
sys.path.insert(0, str(TOOLS))
import design_screen as ds  # noqa: E402
req = json.loads((Path(sys.argv[1]) / 'requirements.json').read_text())
L = float(req['length_mm']); rq = req['requirements']
mats, _ = ds.materials(req); lays = ds.layups(req); geos = ds.geometries(req)
print('mat  lay  geo   h_mm   mass_kg    k_est_N/mm  M_opp_est_Nmm  F_flat    F_hub')
for mid, mat in mats.items():
    for yid, lay in lays.items():
        Lm = ds.Lam(mat, lay)
        gids = list(geos); r = np.array([geos[g]['r_min'] for g in gids])
        Ff, Fh = ds.coiling_indices(Lm, r, rq['coiling']['hub_radius_mm'])
        for ig, gid in enumerate(gids):
            g = geos[gid]
            k = 3 * Lm.Ex * g['I1']['Iyy'] * Lm.h / L**3
            _, _, Mo, _ = ds.buckling_estimates(Lm, g, L, rq['buckling'])
            m = Lm.areal * g['s_total'] * 1e-3 * L * 1e-3
            print(f'{mid} {yid} {gid} {Lm.h:.3f} {m:10.4g} {k:12.4g} {Mo:12.4g} {Ff[ig]:9.3g} {Fh[ig]:9.3g}')
