# === OpenSeesPy piece: supports, loads and solution (written by the shell-bc-load skill) ===
# 1 fixed nodes, 2 rigid end(s), 1 nodal loads; linear analysis; results .npz
# provides: the solved model and the results file (argument 1, default results/<NAME>.npz)
# needs:    FACETS, FRAMES, MESH (mesh piece), LAMINATE (laminate piece)
NAME = 'it004_L001_Y003_T003_axial'
ANALYSIS = 'linear'
GEOMETRY = {'L': 1000.0, 'section': {'type': 'arc', 'R': 200, 'b': 628.318531}, 'size': 5.0, 'boom': 'T003'}
CASE = {'name': 'it004_L001_Y003_T003_axial', 'laminate': {'json': 'F:\\Tara\\BenazzoVenkatadri_ThinShellSims\\Code for Project\\11-11-26 (Tara)\\toy_orch\\Code for Project\\11-11-26 (Tara)\\ts_toy_minmass\\iterations\\it004\\lam.json'}, 'geometry': {'L': 1000.0, 'section': {'type': 'arc', 'R': 200, 'b': 628.318531}, 'size': 5.0, 'boom': 'T003'}, 'element': {'type': 'ASDShellQ4', 'corotational': False}, 'supports': [{'rigid_end': 'x0', 'dofs': [1, 1, 1, 1, 1, 1]}, {'rigid_end': 'xL'}], 'loads': [{'node': {'rigid': 'xL'}, 'force': [10.0, 0.0, 0.0]}], 'analysis': {'type': 'linear'}, 'report_node': {'rigid': 'xL'}}
RIGID = {'x0': 25528, 'xL': 25529}
REPORT_NODE = 25529
if MESH['geometry'] != GEOMETRY or MESH['n_nodes'] != 25527:
    raise ValueError('the mesh piece was written for another geometry than this supports/loads piece')

# --- rigid end master node at the edge centroid ---
ops.node(25528, 0.0, 2.5646151868841122e-14, 72.68264175648925)

# --- rigid end fixture: master node tied to every edge node ---
for r in [
    (1,),
    (202,),
    (403,),
    (604,),
    (805,),
    (1006,),
    (1207,),
    (1408,),
    (1609,),
    (1810,),
    (2011,),
    (2212,),
    (2413,),
    (2614,),
    (2815,),
    (3016,),
    (3217,),
    (3418,),
    (3619,),
    (3820,),
    (4021,),
    (4222,),
    (4423,),
    (4624,),
    (4825,),
    (5026,),
    (5227,),
    (5428,),
    (5629,),
    (5830,),
    (6031,),
    (6232,),
    (6433,),
    (6634,),
    (6835,),
    (7036,),
    (7237,),
    (7438,),
    (7639,),
    (7840,),
    (8041,),
    (8242,),
    (8443,),
    (8644,),
    (8845,),
    (9046,),
    (9247,),
    (9448,),
    (9649,),
    (9850,),
    (10051,),
    (10252,),
    (10453,),
    (10654,),
    (10855,),
    (11056,),
    (11257,),
    (11458,),
    (11659,),
    (11860,),
    (12061,),
    (12262,),
    (12463,),
    (12664,),
    (12865,),
    (13066,),
    (13267,),
    (13468,),
    (13669,),
    (13870,),
    (14071,),
    (14272,),
    (14473,),
    (14674,),
    (14875,),
    (15076,),
    (15277,),
    (15478,),
    (15679,),
    (15880,),
    (16081,),
    (16282,),
    (16483,),
    (16684,),
    (16885,),
    (17086,),
    (17287,),
    (17488,),
    (17689,),
    (17890,),
    (18091,),
    (18292,),
    (18493,),
    (18694,),
    (18895,),
    (19096,),
    (19297,),
    (19498,),
    (19699,),
    (19900,),
    (20101,),
    (20302,),
    (20503,),
    (20704,),
    (20905,),
    (21106,),
    (21307,),
    (21508,),
    (21709,),
    (21910,),
    (22111,),
    (22312,),
    (22513,),
    (22714,),
    (22915,),
    (23116,),
    (23317,),
    (23518,),
    (23719,),
    (23920,),
    (24121,),
    (24322,),
    (24523,),
    (24724,),
    (24925,),
    (25126,),
    (25327,),
]:
    ops.rigidLink('beam', 25528, *r)

# --- supports: ux uy uz rx ry rz, 1 = fixed ---
ops.fix(25528, 1, 1, 1, 1, 1, 1)

# --- rigid end master node at the edge centroid ---
ops.node(25529, 1000.0000000000007, 2.5646151868841122e-14, 72.68264175648925)

# --- rigid end fixture: master node tied to every edge node ---
for r in [
    (201,),
    (402,),
    (603,),
    (804,),
    (1005,),
    (1206,),
    (1407,),
    (1608,),
    (1809,),
    (2010,),
    (2211,),
    (2412,),
    (2613,),
    (2814,),
    (3015,),
    (3216,),
    (3417,),
    (3618,),
    (3819,),
    (4020,),
    (4221,),
    (4422,),
    (4623,),
    (4824,),
    (5025,),
    (5226,),
    (5427,),
    (5628,),
    (5829,),
    (6030,),
    (6231,),
    (6432,),
    (6633,),
    (6834,),
    (7035,),
    (7236,),
    (7437,),
    (7638,),
    (7839,),
    (8040,),
    (8241,),
    (8442,),
    (8643,),
    (8844,),
    (9045,),
    (9246,),
    (9447,),
    (9648,),
    (9849,),
    (10050,),
    (10251,),
    (10452,),
    (10653,),
    (10854,),
    (11055,),
    (11256,),
    (11457,),
    (11658,),
    (11859,),
    (12060,),
    (12261,),
    (12462,),
    (12663,),
    (12864,),
    (13065,),
    (13266,),
    (13467,),
    (13668,),
    (13869,),
    (14070,),
    (14271,),
    (14472,),
    (14673,),
    (14874,),
    (15075,),
    (15276,),
    (15477,),
    (15678,),
    (15879,),
    (16080,),
    (16281,),
    (16482,),
    (16683,),
    (16884,),
    (17085,),
    (17286,),
    (17487,),
    (17688,),
    (17889,),
    (18090,),
    (18291,),
    (18492,),
    (18693,),
    (18894,),
    (19095,),
    (19296,),
    (19497,),
    (19698,),
    (19899,),
    (20100,),
    (20301,),
    (20502,),
    (20703,),
    (20904,),
    (21105,),
    (21306,),
    (21507,),
    (21708,),
    (21909,),
    (22110,),
    (22311,),
    (22512,),
    (22713,),
    (22914,),
    (23115,),
    (23316,),
    (23517,),
    (23718,),
    (23919,),
    (24120,),
    (24321,),
    (24522,),
    (24723,),
    (24924,),
    (25125,),
    (25326,),
    (25527,),
]:
    ops.rigidLink('beam', 25529, *r)

# --- load pattern ---
ops.timeSeries('Linear', 1)
ops.pattern('Plain', 1, 1)

# --- nodal loads (consistent shares), reference level = load factor 1 ---
ops.load(25529, 10.0, 0.0, 0.0, 0.0, 0.0, 0.0)

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
            element=MESH['element'], rigid=RIGID, case=CASE,
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
