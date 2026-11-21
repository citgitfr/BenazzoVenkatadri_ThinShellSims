# Orchestrator diagnostic (read-only use of design_screen): stiffness of the largest catalog
# sections with the thickest laminates, and why they fail the screen.
import sys, json, math, numpy as np
sys.path.insert(0, r'C:/Users/fbenazzo/Desktop/ME295/BenazzoVenkatadri_ThinShellSims/.claude/orchestrator/tools')
import design_screen as ds
req = json.load(open(sys.argv[1]))
mats, _ = ds.materials(req); lays = ds.layups(req); geos = ds.geometries(req)
tp = {m: v.get('t_ply', v.get('t')) if isinstance(v, dict) else None for m, v in mats.items()}
L = 1000.
lam5 = {y: l for y, l in lays.items() if l['n_plies'] == 5}
print('ply thickness values (mm):', sorted({round(ds.Lam(m, lays['Y001']).h / lays['Y001']['n_plies'], 4) for m in mats.values()}))
print('5-ply layups:', len(lam5))
gids = list(geos); r_all = np.array([geos[g]['r_min'] for g in gids])
best = {}
for mid, mat in mats.items():
    for yid, lay in lam5.items():
        Lm = ds.Lam(mat, lay)
        Ff, Fh = ds.coiling_indices(Lm, r_all, 50.0)
        for i, g in enumerate(gids):
            geo = geos[g]
            EIz = Lm.Ex * geo['I1']['Iyy'] * Lm.h
            k = ds.tip_stiffness(EIz, Lm.A66 * geo['shear']['z'], L)
            if g not in best or k > best[g][0]:
                best[g] = (k, mid, yid, float(Ff[i]), float(Fh[i]), Lm.h, geo['width'], geo['height'], geo['r_min'])
print('%-5s %7s %6s %6s %6s %6s %6s %6s %5s %5s' % ('geo','k_max','mat','lay','h','w','ht','r_min','Fflat','Fhub'))
for g, v in sorted(best.items(), key=lambda kv: -kv[1][0])[:25]:
    k, m, y, ff, fh, h, w, ht, r = v
    print('%-5s %7.1f %6s %6s %6.3f %6.1f %6.1f %6.1f %5.2f %5.2f' % (g, k, m, y, h, w, ht, r, ff, fh))
print('\nbest k among ALL layups (3-5 plies) that pass F_flat<1 and F_hub<1 (50 mm hub), largest sections:')
top = [g for g, _ in sorted(best.items(), key=lambda kv: -kv[1][0])[:10]]
r_top = np.array([geos[g]['r_min'] for g in top]); ok = {}
for mid, mat in mats.items():
    for yid, lay in lays.items():
        Lm = ds.Lam(mat, lay)
        Ff, Fh = ds.coiling_indices(Lm, r_top, 50.0)
        for i, g in enumerate(top):
            if Ff[i] < 1 and Fh[i] < 1:
                geo = geos[g]
                k = ds.tip_stiffness(Lm.Ex * geo['I1']['Iyy'] * Lm.h, Lm.A66 * geo['shear']['z'], L)
                if g not in ok or k > ok[g][0]:
                    ok[g] = (k, mid, yid, lay['n_plies'], float(Fh[i]))
for g in top:
    print(g, ok.get(g, 'none pass coiling'))
