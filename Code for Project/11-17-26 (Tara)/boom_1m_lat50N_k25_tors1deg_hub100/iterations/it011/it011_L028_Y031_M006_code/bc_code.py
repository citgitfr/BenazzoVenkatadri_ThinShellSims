# === OpenSeesPy piece: supports, loads and solution (written by the shell-bc-load skill) ===
# 1 fixed nodes, 2 rigid end(s), 1 nodal loads; linear analysis; results .npz
# provides: the solved model and the results file (argument 1, default results/<NAME>.npz)
# needs:    FACETS, FRAMES, MESH (mesh piece), LAMINATE (laminate piece)
NAME = 'it011_L028_Y031_M006'
ANALYSIS = 'linear'
GEOMETRY = {'L': 1000.0, 'section': {'type': 'boom', 'id': 'M006'}, 'size': 2.7, 'boom': 'M006'}
CASE = {'name': 'it011_L028_Y031_M006', 'laminate': {'json': 'F:\\Tara\\BenazzoVenkatadri_ThinShellSims\\Code for Project\\11-17-26 (Tara)\\boom_1m_lat50N_k25_tors1deg_hub100\\iterations\\it011\\lam.json'}, 'geometry': {'L': 1000.0, 'section': {'type': 'boom', 'id': 'M006'}, 'size': 2.7, 'boom': 'M006'}, 'element': {'type': 'ASDShellQ4', 'corotational': False}, 'supports': [{'rigid_end': 'x0', 'dofs': [1, 1, 1, 1, 1, 1]}, {'rigid_end': 'xL'}], 'loads': [{'node': {'rigid': 'xL'}, 'force': [0.0, 0.0, -25.0]}], 'analysis': {'type': 'linear'}, 'report_node': {'rigid': 'xL'}}
RIGID = {'x0': 52683, 'xL': 52684}
HISTORY_COLUMNS = ['load_factor']
REPORT_NODE = 52684
if MESH['geometry'] != GEOMETRY or MESH['n_nodes'] != 52682:
    raise ValueError('the mesh piece was written for another geometry than this supports/loads piece')

# --- rigid end master node at the edge centroid ---
ops.node(52683, 0.0, -1.776356839400251e-15, 8.456776945386936e-16)

# --- rigid end fixture: master node tied to every edge node ---
for r in [
    (1,),
    (372,),
    (743,),
    (1114,),
    (1485,),
    (1856,),
    (2227,),
    (2598,),
    (2969,),
    (3340,),
    (3711,),
    (4082,),
    (4453,),
    (4824,),
    (5195,),
    (5566,),
    (5937,),
    (6308,),
    (6679,),
    (7050,),
    (7421,),
    (7792,),
    (8163,),
    (8534,),
    (8905,),
    (9276,),
    (9647,),
    (10018,),
    (10389,),
    (10760,),
    (11131,),
    (11502,),
    (11873,),
    (12244,),
    (12615,),
    (12986,),
    (13357,),
    (13728,),
    (14099,),
    (14470,),
    (14841,),
    (15212,),
    (15583,),
    (15954,),
    (16325,),
    (16696,),
    (17067,),
    (17438,),
    (17809,),
    (18180,),
    (18551,),
    (18922,),
    (19293,),
    (19664,),
    (20035,),
    (20406,),
    (20777,),
    (21148,),
    (21519,),
    (21890,),
    (22261,),
    (22632,),
    (23003,),
    (23374,),
    (23745,),
    (24116,),
    (24487,),
    (24858,),
    (25229,),
    (25600,),
    (25971,),
    (26342,),
    (26713,),
    (27084,),
    (27455,),
    (27826,),
    (28197,),
    (28568,),
    (28939,),
    (29310,),
    (29681,),
    (30052,),
    (30423,),
    (30794,),
    (31165,),
    (31536,),
    (31907,),
    (32278,),
    (32649,),
    (33020,),
    (33391,),
    (33762,),
    (34133,),
    (34504,),
    (34875,),
    (35246,),
    (35617,),
    (35988,),
    (36359,),
    (36730,),
    (37101,),
    (37472,),
    (37843,),
    (38214,),
    (38585,),
    (38956,),
    (39327,),
    (39698,),
    (40069,),
    (40440,),
    (40811,),
    (41182,),
    (41553,),
    (41924,),
    (42295,),
    (42666,),
    (43037,),
    (43408,),
    (43779,),
    (44150,),
    (44521,),
    (44892,),
    (45263,),
    (45634,),
    (46005,),
    (46376,),
    (46747,),
    (47118,),
    (47489,),
    (47860,),
    (48231,),
    (48602,),
    (48973,),
    (49344,),
    (49715,),
    (50086,),
    (50457,),
    (50828,),
    (51199,),
    (51570,),
    (51941,),
    (52312,),
]:
    ops.rigidLink('beam', 52683, *r)

# --- supports: ux uy uz rx ry rz, 1 = fixed ---
ops.fix(52683, 1, 1, 1, 1, 1, 1)

# --- rigid end master node at the edge centroid ---
ops.node(52684, 1000.0000000000014, -1.776356839400251e-15, 8.456776945386936e-16)

# --- rigid end fixture: master node tied to every edge node ---
for r in [
    (371,),
    (742,),
    (1113,),
    (1484,),
    (1855,),
    (2226,),
    (2597,),
    (2968,),
    (3339,),
    (3710,),
    (4081,),
    (4452,),
    (4823,),
    (5194,),
    (5565,),
    (5936,),
    (6307,),
    (6678,),
    (7049,),
    (7420,),
    (7791,),
    (8162,),
    (8533,),
    (8904,),
    (9275,),
    (9646,),
    (10017,),
    (10388,),
    (10759,),
    (11130,),
    (11501,),
    (11872,),
    (12243,),
    (12614,),
    (12985,),
    (13356,),
    (13727,),
    (14098,),
    (14469,),
    (14840,),
    (15211,),
    (15582,),
    (15953,),
    (16324,),
    (16695,),
    (17066,),
    (17437,),
    (17808,),
    (18179,),
    (18550,),
    (18921,),
    (19292,),
    (19663,),
    (20034,),
    (20405,),
    (20776,),
    (21147,),
    (21518,),
    (21889,),
    (22260,),
    (22631,),
    (23002,),
    (23373,),
    (23744,),
    (24115,),
    (24486,),
    (24857,),
    (25228,),
    (25599,),
    (25970,),
    (26341,),
    (26712,),
    (27083,),
    (27454,),
    (27825,),
    (28196,),
    (28567,),
    (28938,),
    (29309,),
    (29680,),
    (30051,),
    (30422,),
    (30793,),
    (31164,),
    (31535,),
    (31906,),
    (32277,),
    (32648,),
    (33019,),
    (33390,),
    (33761,),
    (34132,),
    (34503,),
    (34874,),
    (35245,),
    (35616,),
    (35987,),
    (36358,),
    (36729,),
    (37100,),
    (37471,),
    (37842,),
    (38213,),
    (38584,),
    (38955,),
    (39326,),
    (39697,),
    (40068,),
    (40439,),
    (40810,),
    (41181,),
    (41552,),
    (41923,),
    (42294,),
    (42665,),
    (43036,),
    (43407,),
    (43778,),
    (44149,),
    (44520,),
    (44891,),
    (45262,),
    (45633,),
    (46004,),
    (46375,),
    (46746,),
    (47117,),
    (47488,),
    (47859,),
    (48230,),
    (48601,),
    (48972,),
    (49343,),
    (49714,),
    (50085,),
    (50456,),
    (50827,),
    (51198,),
    (51569,),
    (51940,),
    (52311,),
    (52682,),
]:
    ops.rigidLink('beam', 52684, *r)

# --- load pattern ---
ops.timeSeries('Linear', 1)
ops.pattern('Plain', 1, 1)

# --- nodal loads (consistent shares), reference level = load factor 1 ---
ops.load(52684, 0.0, 0.0, -25.0, 0.0, 0.0, 0.0)

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
