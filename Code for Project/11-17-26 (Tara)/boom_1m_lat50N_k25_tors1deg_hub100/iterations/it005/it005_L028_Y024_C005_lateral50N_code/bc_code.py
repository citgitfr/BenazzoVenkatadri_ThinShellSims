# === OpenSeesPy piece: supports, loads and solution (written by the shell-bc-load skill) ===
# 1 fixed nodes, 2 rigid end(s), 1 nodal loads; linear analysis; results .npz
# provides: the solved model and the results file (argument 1, default results/<NAME>.npz)
# needs:    FACETS, FRAMES, MESH (mesh piece), LAMINATE (laminate piece)
NAME = 'it005_L028_Y024_C005_lateral50N'
ANALYSIS = 'linear'
GEOMETRY = {'L': 1000.0, 'section': {'type': 'boom', 'id': 'C005'}, 'size': 4.5, 'boom': 'C005'}
CASE = {'name': 'it005_L028_Y024_C005_lateral50N', 'laminate': {'json': 'F:\\Tara\\BenazzoVenkatadri_ThinShellSims\\Code for Project\\11-17-26 (Tara)\\boom_1m_lat50N_k25_tors1deg_hub100\\iterations\\it005\\lam.json'}, 'geometry': {'L': 1000.0, 'section': {'type': 'boom', 'id': 'C005'}, 'size': 4.5, 'boom': 'C005'}, 'element': {'type': 'ASDShellQ4', 'corotational': False}, 'supports': [{'rigid_end': 'x0', 'dofs': [1, 1, 1, 1, 1, 1]}, {'rigid_end': 'xL'}], 'loads': [{'node': {'rigid': 'xL'}, 'force': [0.0, 50.0, 0.0]}], 'analysis': {'type': 'linear'}, 'report_node': {'rigid': 'xL'}}
RIGID = {'x0': 22747, 'xL': 22748}
HISTORY_COLUMNS = ['load_factor']
REPORT_NODE = 22748
if MESH['geometry'] != GEOMETRY or MESH['n_nodes'] != 22746:
    raise ValueError('the mesh piece was written for another geometry than this supports/loads piece')

# --- rigid end master node at the edge centroid ---
ops.node(22747, 0.0, 1.2490009027033017e-14, 3.60822483003176e-16)

# --- rigid end fixture: master node tied to every edge node ---
for r in [
    (1,),
    (224,),
    (447,),
    (670,),
    (893,),
    (1116,),
    (1339,),
    (1562,),
    (1785,),
    (2008,),
    (2231,),
    (2454,),
    (2677,),
    (2900,),
    (3123,),
    (3346,),
    (3569,),
    (3792,),
    (4015,),
    (4238,),
    (4461,),
    (4684,),
    (4907,),
    (5130,),
    (5353,),
    (5576,),
    (5799,),
    (6022,),
    (6245,),
    (6468,),
    (6691,),
    (6914,),
    (7137,),
    (7360,),
    (7583,),
    (7806,),
    (8029,),
    (8252,),
    (8475,),
    (8698,),
    (8921,),
    (9144,),
    (9367,),
    (9590,),
    (9813,),
    (10036,),
    (10259,),
    (10482,),
    (10705,),
    (10928,),
    (11151,),
    (11374,),
    (11597,),
    (11820,),
    (12043,),
    (12266,),
    (12489,),
    (12712,),
    (12935,),
    (13158,),
    (13381,),
    (13604,),
    (13827,),
    (14050,),
    (14273,),
    (14496,),
    (14719,),
    (14942,),
    (15165,),
    (15388,),
    (15611,),
    (15834,),
    (16057,),
    (16280,),
    (16503,),
    (16726,),
    (16949,),
    (17172,),
    (17395,),
    (17618,),
    (17841,),
    (18064,),
    (18287,),
    (18510,),
    (18733,),
    (18956,),
    (19179,),
    (19402,),
    (19625,),
    (19848,),
    (20071,),
    (20294,),
    (20517,),
    (20740,),
    (20963,),
    (21186,),
    (21409,),
    (21632,),
    (21855,),
    (22078,),
    (22301,),
    (22524,),
]:
    ops.rigidLink('beam', 22747, *r)

# --- supports: ux uy uz rx ry rz, 1 = fixed ---
ops.fix(22747, 1, 1, 1, 1, 1, 1)

# --- rigid end master node at the edge centroid ---
ops.node(22748, 1000.000000000001, 1.2490009027033017e-14, 3.60822483003176e-16)

# --- rigid end fixture: master node tied to every edge node ---
for r in [
    (223,),
    (446,),
    (669,),
    (892,),
    (1115,),
    (1338,),
    (1561,),
    (1784,),
    (2007,),
    (2230,),
    (2453,),
    (2676,),
    (2899,),
    (3122,),
    (3345,),
    (3568,),
    (3791,),
    (4014,),
    (4237,),
    (4460,),
    (4683,),
    (4906,),
    (5129,),
    (5352,),
    (5575,),
    (5798,),
    (6021,),
    (6244,),
    (6467,),
    (6690,),
    (6913,),
    (7136,),
    (7359,),
    (7582,),
    (7805,),
    (8028,),
    (8251,),
    (8474,),
    (8697,),
    (8920,),
    (9143,),
    (9366,),
    (9589,),
    (9812,),
    (10035,),
    (10258,),
    (10481,),
    (10704,),
    (10927,),
    (11150,),
    (11373,),
    (11596,),
    (11819,),
    (12042,),
    (12265,),
    (12488,),
    (12711,),
    (12934,),
    (13157,),
    (13380,),
    (13603,),
    (13826,),
    (14049,),
    (14272,),
    (14495,),
    (14718,),
    (14941,),
    (15164,),
    (15387,),
    (15610,),
    (15833,),
    (16056,),
    (16279,),
    (16502,),
    (16725,),
    (16948,),
    (17171,),
    (17394,),
    (17617,),
    (17840,),
    (18063,),
    (18286,),
    (18509,),
    (18732,),
    (18955,),
    (19178,),
    (19401,),
    (19624,),
    (19847,),
    (20070,),
    (20293,),
    (20516,),
    (20739,),
    (20962,),
    (21185,),
    (21408,),
    (21631,),
    (21854,),
    (22077,),
    (22300,),
    (22523,),
    (22746,),
]:
    ops.rigidLink('beam', 22748, *r)

# --- load pattern ---
ops.timeSeries('Linear', 1)
ops.pattern('Plain', 1, 1)

# --- nodal loads (consistent shares), reference level = load factor 1 ---
ops.load(22748, 0.0, 50.0, 0.0, 0.0, 0.0, 0.0)

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
