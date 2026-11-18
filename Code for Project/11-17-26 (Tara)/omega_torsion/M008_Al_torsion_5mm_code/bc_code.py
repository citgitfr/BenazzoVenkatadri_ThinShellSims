# === OpenSeesPy piece: supports, loads and solution (written by the shell-bc-load skill) ===
# 52 fixed nodes, 1 rigid end(s), 1 nodal loads; linear analysis; results .npz
# provides: the solved model and the results file (argument 1, default results/<NAME>.npz)
# needs:    FACETS, FRAMES, MESH (mesh piece), LAMINATE (laminate piece)
NAME = 'M008_Al_torsion_5mm'
ANALYSIS = 'linear'
GEOMETRY = {'L': 1000.0, 'section': {'type': 'boom', 'id': 'M008'}, 'size': 5}
CASE = {'name': 'M008_Al_torsion_5mm', 'laminate': {'isotropic': {'E': 69000.0, 'nu': 0.33, 't': 0.1, 'rho': 2.7e-09}}, 'geometry': {'L': 1000.0, 'section': {'type': 'boom', 'id': 'M008'}, 'size': 5}, 'element': {'type': 'ASDShellQ4', 'corotational': False}, 'supports': [{'edge': 'x0', 'dofs': [1, 1, 1, 1, 1, 1]}, {'rigid_end': 'xL'}], 'loads': [{'node': {'rigid': 'xL'}, 'force': [0, 0, 0], 'moment': [1.0, 0, 0]}], 'analysis': {'type': 'linear'}, 'report_node': {'rigid': 'xL'}}
RIGID = {'xL': 10453}
REPORT_NODE = 10453
if MESH['geometry'] != GEOMETRY or MESH['n_nodes'] != 10452:
    raise ValueError('the mesh piece was written for another geometry than this supports/loads piece')

# --- supports: ux uy uz rx ry rz, 1 = fixed ---
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
]:
    ops.fix(r[0], 1, 1, 1, 1, 1, 1)

# --- rigid end master node at the edge centroid ---
ops.node(10453, 999.9999999999995, 6.661338147750938e-16, -2.504940699310509e-15)

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
]:
    ops.rigidLink('beam', 10453, *r)

# --- load pattern ---
ops.timeSeries('Linear', 1)
ops.pattern('Plain', 1, 1)

# --- nodal loads (consistent shares), reference level = load factor 1 ---
ops.load(10453, 0.0, 0.0, 0.0, 1.0, 0.0, 0.0)

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
