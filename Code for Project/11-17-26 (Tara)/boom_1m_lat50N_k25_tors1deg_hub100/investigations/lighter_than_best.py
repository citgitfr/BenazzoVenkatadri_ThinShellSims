"""Why no untested catalog design can beat the final design (it006 L011/Y026/C008, 104.85 g) (narrative report,
user request 2026-11-19). Takes EVERY material/layup/geometry combination of the catalogs (same set as the study's
design screen), keeps the ones lighter than the final design, and sorts each into the FIRST check it fails, using
the screen's own estimates but with the OPTIMISTIC end of what the FE runs of this study measured:
  0. compared on the screen's own mass formula (it006: 105.5 g screen, 104.85 g FE);
  1. coiling: Hashin F_flat >= 1 or F_hub >= 1 on the 100 mm radius hub (closed-form strain state, exact);
  2. torsion: GJ_est < required (Bredt for closed cells, which the FE matched; St Venant for open sections);
  3. stiffness: k_est x K_CAL_MAX < 25 N/mm, K_CAL_MAX = the largest FE/estimate ratio measured (0.986, it013);
  4. buckling: raw estimate x B_FACTOR_MAX[family] < 50,000 N mm, with the largest measured-strength/estimate
     ratio of that family (C008 1.37 from it016; others from the study's calibration; families never run use
     the largest of all, 1.37);
  5. otherwise "not excluded by the screen": listed one by one with the iteration that tested it, if any.
Usage: python lighter_than_best.py   (writes lighter_than_best.json)"""
import json
import math
import sys
from pathlib import Path

HERE = Path(__file__).resolve().parent
STUDY = HERE.parent
sys.path.insert(0, str(HERE.parents[3] / '.claude' / 'orchestrator' / 'tools'))
import numpy as np  # noqa: E402
import design_screen as ds  # noqa: E402

K_CAL_MAX = 0.986                                  # largest k_FE / k_est in the study (it013)
B_FACTOR_MAX = {'C008': 1.37, 'C006': 1.27, 'C007': 1.11, 'C005': 1.05}   # measured strength / raw estimate
B_FACTOR_OTHER = 1.37                              # families never run: the most favourable factor measured
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
# the final design's mass by the SAME screen formula (the screen's mass is ~0.6% above the FE model's mass, 105.5 vs
# 104.85 g for it006), so every design is compared on the same basis
M_BEST = ds.Lam(mats['L011'], lays['Y026']).areal * geos['C008']['s_total'] * 1e-3 * length * 1e-3
K_CAL_C008_60 = 0.973                              # k_FE / k_est of C008 [60/0/0/60] (it006 0.973, it014 0.970, it015 0.972)
st = json.loads((STUDY / 'state.json').read_text())
tested = {k: d.get('iter') for k, d in st['designs'].items()}
counts = {'total combinations': 0, 'heavier than the final design': 0}
first = {}
by_type = {}
survivors = []
for mid, mat in mats.items():
    for yid, lay in lays.items():
        Lm = ds.Lam(mat, lay)
        Ff, Fh = ds.coiling_indices(Lm, r_all, coil['hub_radius_mm'])
        for ig, gid in enumerate(gids):
            geo = geos[gid]
            counts['total combinations'] += 1
            mass = Lm.areal * geo['s_total'] * 1e-3 * length * 1e-3
            if mass >= M_BEST:
                counts['heavier than the final design'] += 1
                continue
            t = geo['g']['type']
            if Ff[ig] >= 1 or Fh[ig] >= 1:
                why = '1 coiling: Hashin F >= 1 flattened or on the hub'
            else:
                GJ = ds.torsion_GJ(Lm, geo['tors'])
                EIz = Lm.Ex * geo['I1']['Iyy'] * Lm.h
                k = ds.tip_stiffness(EIz, Lm.A66 * geo['shear']['z'], length)
                _, _, M_opp, M_eq = ds.buckling_estimates(Lm, geo, length, buck)
                b = M_opp if buck.get('sense', 'opposite') == 'opposite' else M_eq
                fac = B_FACTOR_MAX.get(gid, B_FACTOR_OTHER)
                if GJ < GJ_req:
                    why = '2 torsion: GJ below the requirement'
                elif k * K_CAL_MAX < stiff['min_N_per_mm']:
                    why = '3 stiffness: k_est x 0.986 < 25 N/mm'
                elif b is not None and b * fac < buck['min_value']:
                    why = '4 buckling: estimate x best measured family factor < 50,000 N mm'
                else:
                    why = '5 not excluded by the screen'
                    key = f'{mid}/{yid}/{gid}'
                    survivors.append(dict(design=key, type=t, layup=lay.get('str') or lay.get('layup_str') or yid,
                                          mass_g=round(mass * 1e3, 2), k_est=round(k, 2), k_opt=round(k * K_CAL_MAX, 2),
                                          buckling_est=round(b or 0), buckling_opt=round((b or 0) * fac),
                                          F_hub=round(float(Fh[ig]), 3), k_with_C008_60_calibration=round(k * K_CAL_C008_60, 2),
                                          tested_iteration=tested.get(key)))
            first[why] = first.get(why, 0) + 1
            by_type.setdefault(t, {}).setdefault(why, 0)
            by_type[t][why] += 1
counts['lighter than the final design'] = counts['total combinations'] - counts['heavier than the final design']
survivors.sort(key=lambda r: r['mass_g'])
res = dict(final_design_screen_mass_g=M_BEST * 1e3, assumptions=dict(K_CAL_MAX=K_CAL_MAX, B_FACTOR_MAX=B_FACTOR_MAX,
           B_FACTOR_OTHER=B_FACTOR_OTHER, GJ_required_Nmm2=GJ_req), counts=counts,
           lighter_first_failed_check=dict(sorted(first.items())), lighter_by_type=by_type, not_excluded=survivors)
(HERE / 'lighter_than_best.json').write_text(json.dumps(res, indent=1))
print(json.dumps({k: v for k, v in res.items() if k != 'not_excluded'}, indent=1))
print(f'{len(survivors)} lighter designs not excluded by the screen:')
for r in survivors:
    print(r)
