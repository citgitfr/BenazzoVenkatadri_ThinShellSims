# === OpenSeesPy piece: supports, loads and solution (written by the shell-bc-load skill) ===
# 39 fixed nodes, 0 rigid end(s), 39 nodal loads; linear analysis; results .npz
# provides: the solved model and the results file (argument 1, default results/<NAME>.npz)
# needs:    FACETS, FRAMES, MESH (mesh piece), LAMINATE (laminate piece)
NAME = 'R001_Al_torsion_edge_1p25mm'
ANALYSIS = 'linear'
GEOMETRY = {'L': 1000.0, 'section': {'type': 'boom', 'id': 'R001'}, 'size': 1.25}
CASE = {'name': 'R001_Al_torsion_edge_1p25mm', 'laminate': {'isotropic': {'E': 69000.0, 'nu': 0.33, 't': 0.1, 'rho': 2.7e-09}}, 'geometry': {'L': 1000.0, 'section': {'type': 'boom', 'id': 'R001'}, 'size': 1.25}, 'element': {'type': 'ASDShellQ4', 'corotational': False}, 'supports': [{'edge': 'x0', 'dofs': [1, 1, 1, 1, 1, 1]}], 'loads': [{'edge': 'xL', 'force': [0, 0, 0], 'moment': [1.0, 0, 0]}], 'analysis': {'type': 'linear'}, 'report_node': 'tip'}
RIGID = {}
REPORT_NODE = 16020
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

# --- load pattern ---
ops.timeSeries('Linear', 1)
ops.pattern('Plain', 1, 1)

# --- nodal loads (consistent shares), reference level = load factor 1 ---
for r in [
    (801, 0.014108111464048565),
    (1602, 0.02821622292809713),
    (2403, 0.02821622292809714),
    (3204, 0.02821622292809714),
    (4005, 0.02821622292809714),
    (4806, 0.02821622292809714),
    (5607, 0.04006756966503038),
    (6408, 0.02595945820098179),
    (7209, 0.02595945820098176),
    (8010, 0.025959458200981788),
    (8811, 0.02595945820098183),
    (9612, 0.02595945820098178),
    (10413, 0.025959458200981774),
    (11214, 0.02595945820098178),
    (12015, 0.02595945820098178),
    (12816, 0.02595945820098182),
    (13617, 0.025959458200981805),
    (14418, 0.02595945820098176),
    (15219, 0.025959458200981774),
    (16020, 0.02595945820098182),
    (16821, 0.025959458200981774),
    (17622, 0.025959458200981764),
    (18423, 0.012979729100490908),
    (19224, 0.02595945820098179),
    (20025, 0.02595945820098176),
    (20826, 0.02595945820098179),
    (21627, 0.025959458200981823),
    (22428, 0.025959458200981767),
    (23229, 0.025959458200981823),
    (24030, 0.02595945820098181),
    (24831, 0.025959458200981764),
    (25632, 0.02595945820098182),
    (26433, 0.025959458200981753),
    (27234, 0.02595945820098176),
    (28035, 0.02595945820098181),
    (28836, 0.025959458200981802),
    (29637, 0.025959458200981753),
    (30438, 0.025959458200981774),
    (31239, 0.012979729100490908),
]:
    ops.load(r[0], 0.0, 0.0, 0.0, r[1], 0.0, 0.0)

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
