# === OpenSeesPy piece: supports, loads and solution (written by the shell-bc-load skill) ===
# 39 fixed nodes, 1 rigid end(s), 1 nodal loads; linear analysis; results .npz
# provides: the solved model and the results file (argument 1, default results/<NAME>.npz)
# needs:    FACETS, FRAMES, MESH (mesh piece), LAMINATE (laminate piece)
NAME = 'R001_Al_torsion_rigid_1p25mm'
ANALYSIS = 'linear'
GEOMETRY = {'L': 1000.0, 'section': {'type': 'boom', 'id': 'R001'}, 'size': 1.25}
CASE = {'name': 'R001_Al_torsion_rigid_1p25mm', 'laminate': {'isotropic': {'E': 69000.0, 'nu': 0.33, 't': 0.1, 'rho': 2.7e-09}}, 'geometry': {'L': 1000.0, 'section': {'type': 'boom', 'id': 'R001'}, 'size': 1.25}, 'element': {'type': 'ASDShellQ4', 'corotational': False}, 'supports': [{'edge': 'x0', 'dofs': [1, 1, 1, 1, 1, 1]}, {'rigid_end': 'xL'}], 'loads': [{'node': {'rigid': 'xL'}, 'force': [0, 0, 0], 'moment': [1.0, 0, 0]}], 'analysis': {'type': 'linear'}, 'report_node': {'rigid': 'xL'}}
RIGID = {'xL': 31240}
REPORT_NODE = 31240
if MESH['geometry'] != GEOMETRY or MESH['n_nodes'] != 31239:
    raise ValueError('the mesh piece was written for another geometry than this supports/loads piece')

# --- supports: ux uy uz rx ry rz, 1 = fixed ---
for r in [
    (1,),
    (802,),
    (1603,),
    (2404,),
    (3205,),
    (4006,),
    (4807,),
    (5608,),
    (6409,),
    (7210,),
    (8011,),
    (8812,),
    (9613,),
    (10414,),
    (11215,),
    (12016,),
    (12817,),
    (13618,),
    (14419,),
    (15220,),
    (16021,),
    (16822,),
    (17623,),
    (18424,),
    (19225,),
    (20026,),
    (20827,),
    (21628,),
    (22429,),
    (23230,),
    (24031,),
    (24832,),
    (25633,),
    (26434,),
    (27235,),
    (28036,),
    (28837,),
    (29638,),
    (30439,),
]:
    ops.fix(r[0], 1, 1, 1, 1, 1, 1)

# --- rigid end master node at the edge centroid ---
ops.node(31240, 1000.0000000000002, 2.2204460492503136e-16, 6.06429856085105)

# --- rigid end fixture: master node tied to every edge node ---
for r in [
    (801,),
    (1602,),
    (2403,),
    (3204,),
    (4005,),
    (4806,),
    (5607,),
    (6408,),
    (7209,),
    (8010,),
    (8811,),
    (9612,),
    (10413,),
    (11214,),
    (12015,),
    (12816,),
    (13617,),
    (14418,),
    (15219,),
    (16020,),
    (16821,),
    (17622,),
    (18423,),
    (19224,),
    (20025,),
    (20826,),
    (21627,),
    (22428,),
    (23229,),
    (24030,),
    (24831,),
    (25632,),
    (26433,),
    (27234,),
    (28035,),
    (28836,),
    (29637,),
    (30438,),
    (31239,),
]:
    ops.rigidLink('beam', 31240, *r)

# --- load pattern ---
ops.timeSeries('Linear', 1)
ops.pattern('Plain', 1, 1)

# --- nodal loads (consistent shares), reference level = load factor 1 ---
ops.load(31240, 0.0, 0.0, 0.0, 1.0, 0.0, 0.0)

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
