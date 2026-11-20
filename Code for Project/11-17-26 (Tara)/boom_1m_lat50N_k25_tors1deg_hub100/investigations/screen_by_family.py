"""Per-section-family breakdown of the design screen of this study (for the narrative report, 2026-11-19).
Re-runs the same checks as design_screen.screen() (same margins, same estimates) but counts, for each
section type (TS tape spring, TRAC, OM omega, CO corrugated), how many material/layup/geometry combinations
fail each check, and the best (largest) torsional stiffness GJ_est any combination of that type reaches.
Usage: python screen_by_family.py   (writes screen_by_family.json next to this file)"""
import json
import math
import sys
from pathlib import Path

HERE = Path(__file__).resolve().parent
STUDY = HERE.parent
sys.path.insert(0, str(HERE.parents[3] / '.claude' / 'orchestrator' / 'tools'))
import numpy as np  # noqa: E402
import design_screen as ds  # noqa: E402

req = json.loads((STUDY / 'requirements.clean.json').read_text())
length = float(req['length_mm'])
rq = req['requirements']
stiff, buck, tors, coil = rq['bending_stiffness'], rq['buckling'], rq['torsional_stiffness'], rq['coiling']
GJ_req = tors['torque_Nmm'] * length / math.radians(tors['max_twist_deg'])
mats, _ = ds.materials(req)
lays = ds.layups(req)
geos = ds.geometries(req)
gids = list(geos)
r_all = np.array([geos[g]['r_min'] for g in gids])
out = {}
for mid, mat in mats.items():
    for yid, lay in lays.items():
        Lm = ds.Lam(mat, lay)
        Ff, Fh = ds.coiling_indices(Lm, r_all, coil['hub_radius_mm'])
        for ig, gid in enumerate(gids):
            geo = geos[gid]
            t = geo['g']['type']
            o = out.setdefault(t, dict(evaluated=0, ok=0, max_GJ=0.0, max_GJ_id=None, fail={}))
            o['evaluated'] += 1
            fails = []
            if Ff[ig] >= 1:
                fails.append('F_flat >= 1')
            if Fh[ig] >= 1:
                fails.append('F_hub >= 1')
            EIz = Lm.Ex * geo['I1']['Iyy'] * Lm.h
            k = ds.tip_stiffness(EIz, Lm.A66 * geo['shear']['z'], length)
            if k < ds.STIFF_MARGIN * stiff['min_N_per_mm']:
                fails.append('stiffness')
            _, _, M_opp, M_eq = ds.buckling_estimates(Lm, geo, length, buck)
            b = M_opp if buck.get('sense', 'opposite') == 'opposite' else M_eq
            if b is not None and b < ds.BUCK_MARGIN * buck['min_value']:
                fails.append('buckling')
            GJ = ds.torsion_GJ(Lm, geo['tors'])
            if GJ > o['max_GJ']:
                o['max_GJ'], o['max_GJ_id'] = GJ, f'{mid}/{yid}/{gid}'
            if GJ < ds.TORS_MARGIN['closed' if geo['tors']['A_cell'] else 'open'] * GJ_req:
                fails.append('torsion')
            for f in fails:
                o['fail'][f] = o['fail'].get(f, 0) + 1
            if not fails:
                o['ok'] += 1
            if fails == ['torsion']:
                o['fail']['torsion only'] = o['fail'].get('torsion only', 0) + 1
for o in out.values():
    o['max_GJ_over_required'] = o['max_GJ'] / GJ_req
res = dict(GJ_required_Nmm2=GJ_req, by_type=out)
(HERE / 'screen_by_family.json').write_text(json.dumps(res, indent=1))
print(json.dumps(res, indent=1))
