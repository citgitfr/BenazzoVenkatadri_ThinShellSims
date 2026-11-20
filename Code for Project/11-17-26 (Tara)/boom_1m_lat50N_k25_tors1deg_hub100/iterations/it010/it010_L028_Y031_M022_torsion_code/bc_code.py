# === OpenSeesPy piece: supports, loads and solution (written by the shell-bc-load skill) ===
# 1 fixed nodes, 2 rigid end(s), 1 nodal loads; linear analysis; results .npz
# provides: the solved model and the results file (argument 1, default results/<NAME>.npz)
# needs:    FACETS, FRAMES, MESH (mesh piece), LAMINATE (laminate piece)
NAME = 'it010_L028_Y031_M022_torsion'
ANALYSIS = 'linear'
GEOMETRY = {'L': 1000.0, 'section': {'type': 'boom', 'id': 'M022'}, 'size': 2.5, 'boom': 'M022'}
CASE = {'name': 'it010_L028_Y031_M022_torsion', 'laminate': {'json': 'F:\\Tara\\BenazzoVenkatadri_ThinShellSims\\Code for Project\\11-17-26 (Tara)\\boom_1m_lat50N_k25_tors1deg_hub100\\iterations\\it010\\lam.json'}, 'geometry': {'L': 1000.0, 'section': {'type': 'boom', 'id': 'M022'}, 'size': 2.5, 'boom': 'M022'}, 'element': {'type': 'ASDShellQ4', 'corotational': False}, 'supports': [{'rigid_end': 'x0', 'dofs': [1, 1, 1, 1, 1, 1]}, {'rigid_end': 'xL'}], 'loads': [{'node': {'rigid': 'xL'}, 'force': [0.0, 0.0, 0.0], 'moment': [100.0, 0.0, 0.0]}], 'analysis': {'type': 'linear'}, 'report_node': {'rigid': 'xL'}}
RIGID = {'x0': 58547, 'xL': 58548}
HISTORY_COLUMNS = ['load_factor']
REPORT_NODE = 58548
if MESH['geometry'] != GEOMETRY or MESH['n_nodes'] != 58546:
    raise ValueError('the mesh piece was written for another geometry than this supports/loads piece')

# --- rigid end master node at the edge centroid ---
ops.node(58547, 0.0, 8.881784197001252e-16, 3.9855271860567143e-16)

# --- rigid end fixture: master node tied to every edge node ---
for r in [
    (1,),
    (402,),
    (803,),
    (1204,),
    (1605,),
    (2006,),
    (2407,),
    (2808,),
    (3209,),
    (3610,),
    (4011,),
    (4412,),
    (4813,),
    (5214,),
    (5615,),
    (6016,),
    (6417,),
    (6818,),
    (7219,),
    (7620,),
    (8021,),
    (8422,),
    (8823,),
    (9224,),
    (9625,),
    (10026,),
    (10427,),
    (10828,),
    (11229,),
    (11630,),
    (12031,),
    (12432,),
    (12833,),
    (13234,),
    (13635,),
    (14036,),
    (14437,),
    (14838,),
    (15239,),
    (15640,),
    (16041,),
    (16442,),
    (16843,),
    (17244,),
    (17645,),
    (18046,),
    (18447,),
    (18848,),
    (19249,),
    (19650,),
    (20051,),
    (20452,),
    (20853,),
    (21254,),
    (21655,),
    (22056,),
    (22457,),
    (22858,),
    (23259,),
    (23660,),
    (24061,),
    (24462,),
    (24863,),
    (25264,),
    (25665,),
    (26066,),
    (26467,),
    (26868,),
    (27269,),
    (27670,),
    (28071,),
    (28472,),
    (28873,),
    (29274,),
    (29675,),
    (30076,),
    (30477,),
    (30878,),
    (31279,),
    (31680,),
    (32081,),
    (32482,),
    (32883,),
    (33284,),
    (33685,),
    (34086,),
    (34487,),
    (34888,),
    (35289,),
    (35690,),
    (36091,),
    (36492,),
    (36893,),
    (37294,),
    (37695,),
    (38096,),
    (38497,),
    (38898,),
    (39299,),
    (39700,),
    (40101,),
    (40502,),
    (40903,),
    (41304,),
    (41705,),
    (42106,),
    (42507,),
    (42908,),
    (43309,),
    (43710,),
    (44111,),
    (44512,),
    (44913,),
    (45314,),
    (45715,),
    (46116,),
    (46517,),
    (46918,),
    (47319,),
    (47720,),
    (48121,),
    (48522,),
    (48923,),
    (49324,),
    (49725,),
    (50126,),
    (50527,),
    (50928,),
    (51329,),
    (51730,),
    (52131,),
    (52532,),
    (52933,),
    (53334,),
    (53735,),
    (54136,),
    (54537,),
    (54938,),
    (55339,),
    (55740,),
    (56141,),
    (56542,),
    (56943,),
    (57344,),
    (57745,),
    (58146,),
]:
    ops.rigidLink('beam', 58547, *r)

# --- supports: ux uy uz rx ry rz, 1 = fixed ---
ops.fix(58547, 1, 1, 1, 1, 1, 1)

# --- rigid end master node at the edge centroid ---
ops.node(58548, 999.9999999999985, 8.881784197001252e-16, 3.9855271860567143e-16)

# --- rigid end fixture: master node tied to every edge node ---
for r in [
    (401,),
    (802,),
    (1203,),
    (1604,),
    (2005,),
    (2406,),
    (2807,),
    (3208,),
    (3609,),
    (4010,),
    (4411,),
    (4812,),
    (5213,),
    (5614,),
    (6015,),
    (6416,),
    (6817,),
    (7218,),
    (7619,),
    (8020,),
    (8421,),
    (8822,),
    (9223,),
    (9624,),
    (10025,),
    (10426,),
    (10827,),
    (11228,),
    (11629,),
    (12030,),
    (12431,),
    (12832,),
    (13233,),
    (13634,),
    (14035,),
    (14436,),
    (14837,),
    (15238,),
    (15639,),
    (16040,),
    (16441,),
    (16842,),
    (17243,),
    (17644,),
    (18045,),
    (18446,),
    (18847,),
    (19248,),
    (19649,),
    (20050,),
    (20451,),
    (20852,),
    (21253,),
    (21654,),
    (22055,),
    (22456,),
    (22857,),
    (23258,),
    (23659,),
    (24060,),
    (24461,),
    (24862,),
    (25263,),
    (25664,),
    (26065,),
    (26466,),
    (26867,),
    (27268,),
    (27669,),
    (28070,),
    (28471,),
    (28872,),
    (29273,),
    (29674,),
    (30075,),
    (30476,),
    (30877,),
    (31278,),
    (31679,),
    (32080,),
    (32481,),
    (32882,),
    (33283,),
    (33684,),
    (34085,),
    (34486,),
    (34887,),
    (35288,),
    (35689,),
    (36090,),
    (36491,),
    (36892,),
    (37293,),
    (37694,),
    (38095,),
    (38496,),
    (38897,),
    (39298,),
    (39699,),
    (40100,),
    (40501,),
    (40902,),
    (41303,),
    (41704,),
    (42105,),
    (42506,),
    (42907,),
    (43308,),
    (43709,),
    (44110,),
    (44511,),
    (44912,),
    (45313,),
    (45714,),
    (46115,),
    (46516,),
    (46917,),
    (47318,),
    (47719,),
    (48120,),
    (48521,),
    (48922,),
    (49323,),
    (49724,),
    (50125,),
    (50526,),
    (50927,),
    (51328,),
    (51729,),
    (52130,),
    (52531,),
    (52932,),
    (53333,),
    (53734,),
    (54135,),
    (54536,),
    (54937,),
    (55338,),
    (55739,),
    (56140,),
    (56541,),
    (56942,),
    (57343,),
    (57744,),
    (58145,),
    (58546,),
]:
    ops.rigidLink('beam', 58548, *r)

# --- load pattern ---
ops.timeSeries('Linear', 1)
ops.pattern('Plain', 1, 1)

# --- nodal loads (consistent shares), reference level = load factor 1 ---
ops.load(58548, 0.0, 0.0, 0.0, 100.0, 0.0, 0.0)

# --- analysis: linear static at load factor 1 (linear_solve) ---
t0 = time.perf_counter()
ops.system('UmfPack')
ops.numberer('RCM')
ops.constraints('Transformation')     # handles the rigid links
ops.integrator('LoadControl', 1.0)
ops.algorithm('Linear')
ops.analysis('Static')
if ops.analyze(1) != 0:
    # UmfPack (32-bit) runs out of memory near 1M DOFs; SuperLU solves those models
    print('UmfPack failed; retrying the linear step with SuperLU', flush=True)
    ops.system('SuperLU')
    ops.analysis('Static')
    if ops.analyze(1) != 0:
        raise RuntimeError('linear analysis failed')
ops.reactions()                       # re-forms element forces (strains read zero otherwise)
history = np.array([[0.0], [1.0]])

print(f"{MESH['summary']}\n{len(ops.getEleTags())} elements, {6 * len(ops.getNodeTags())} DOFs; "
      f"{ANALYSIS} solved in {time.perf_counter() - t0:.1f} s")


# --- results file (collect_results; read by shell-visualize and failure-check) ---
def strain_rotation(theta_deg):
    # [eps_1, eps_2, gam_12] = T [eps_x, eps_y, gam_xy] (laminate-properties)
    c, s = math.cos(math.radians(theta_deg)), math.sin(math.radians(theta_deg))
    return np.array([[c * c, s * s, c * s], [s * s, c * c, -c * s], [-2 * c * s, 2 * c * s, c * c - s * s]])


def facet_strains():
    # (facets, Gauss points, 8) [eps_xx eps_yy gam_xy k_xx k_yy k_xy gam_xz gam_yz] in the
    # facet frame, CLT curvature sign (OpenSees reports -k); first element of each facet
    out = []
    for first, _, th, *_ in FACETS:
        s = np.reshape(ops.eleResponse(first, 'strains'), (-1, 8)).copy()
        s[:, 3:6] *= -1.0
        if th != 0.0:
            T = strain_rotation(-th)           # element (ply) axes -> facet axes
            s[:, 0:3] = s[:, 0:3] @ T.T
            s[:, 3:6] = s[:, 3:6] @ T.T
            c, sn = math.cos(math.radians(th)), math.sin(math.radians(th))
            g1, g2 = s[:, 6].copy(), s[:, 7].copy()
            s[:, 6], s[:, 7] = c * g1 - sn * g2, sn * g1 + c * g2
        out.append(s)
    return np.array(out)


STRIP_KEYS = ('nstrips', 'strip_label', 'strip_s', 'web_stack', 'section_kind', 'boom')   # branched sections
tags = ops.getNodeTags()
index = {t: k for k, t in enumerate(tags)}
fixed = np.zeros(len(tags), dtype=np.int8)
fixed[[index[n] for n in ops.getFixedNodes()]] = 1
meta = dict(title=NAME, summary=MESH['summary'], nx=MESH['nx'], ny=MESH['ny'], L=MESH['L'], b=MESH['b'],
            element=MESH['element'], rigid=RIGID, case=CASE, history_columns=HISTORY_COLUMNS,
            **{k: MESH[k] for k in STRIP_KEYS if k in MESH})
results = dict(points=np.array([ops.nodeCoord(t) for t in tags]), node_tags=np.array(tags),
               disp=np.array([(ops.nodeDisp(t) + [0.0] * 6)[:6] for t in tags]), fixed=fixed,
               faces=np.array([[index[n] for n in f[3:]] for f in FACETS]), frames=FRAMES,
               strains=facet_strains(), history=history, laminate=LAMINATE, meta=json.dumps(meta))
out = Path(sys.argv[1]) if len(sys.argv) > 1 else Path(__file__).resolve().parent / 'results' / f'{NAME}.npz'
out.parent.mkdir(parents=True, exist_ok=True)
np.savez_compressed(out, **results)
print(f'saved {out}')
print(f'report node {REPORT_NODE}: u = {np.round(ops.nodeDisp(REPORT_NODE), 6).tolist()}')
print(f"max |u| = {np.linalg.norm(results['disp'][:, :3], axis=1).max():.6g} mm")
