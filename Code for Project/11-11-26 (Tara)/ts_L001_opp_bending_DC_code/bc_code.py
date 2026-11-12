# === OpenSeesPy piece: supports, loads and solution (written by the shell-bc-load skill) ===
# 14 fixed nodes, 1 rigid end(s), 1 nodal loads; displacement_control analysis; results .npz
# provides: the solved model and the results file (argument 1, default results/<NAME>.npz)
# needs:    FACETS, FRAMES, MESH (mesh piece), LAMINATE (laminate piece)
NAME = 'ts_L001_opp_bending_DC'
ANALYSIS = 'displacement_control'
GEOMETRY = {'L': 1000, 'section': {'type': 'arc', 'R': 20, 'b': 62.83185307}, 'size': 5}
CASE = {'name': 'ts_L001_opp_bending_DC', 'laminate': {'catalog': 'L001', 'layup': '[0/0/0]'}, 'geometry': {'L': 1000, 'section': {'type': 'arc', 'R': 20, 'b': 62.83185307}, 'size': 5}, 'element': {'type': 'ASDShellQ4', 'corotational': True}, 'supports': [{'edge': 'x0', 'dofs': [1, 1, 1, 1, 1, 1]}, {'rigid_end': 'xL'}], 'loads': [{'node': {'rigid': 'xL'}, 'force': [0, 0, -1]}], 'analysis': {'type': 'displacement_control', 'node': {'rigid': 'xL'}, 'dof': 3, 'step': -0.5, 'n_steps': 80, 'max_load_factor': 1.0, 'tol': 1e-06}, 'report_node': {'rigid': 'xL'}}
RIGID = {'xL': 2815}
REPORT_NODE = 2815
if MESH['geometry'] != GEOMETRY or MESH['n_nodes'] != 2814:
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
]:
    ops.fix(r[0], 1, 1, 1, 1, 1, 1)

# --- rigid end master node at the edge centroid ---
ops.node(2815, 1000.0000000000002, -3.33066907387547e-16, 7.329629300405855)

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
]:
    ops.rigidLink('beam', 2815, *r)

# --- load pattern ---
ops.timeSeries('Linear', 1)
ops.pattern('Plain', 1, 1)

# --- nodal loads (consistent shares), reference level = load factor 1 ---
ops.load(2815, 0.0, 0.0, -1.0, 0.0, 0.0, 0.0)

# --- analysis: displacement control (displacement_control) ---
# each step moves CONTROL_NODE by STEP in CONTROL_DOF; OpenSees finds the load
# factor; steps are halved (up to MAX_CUTS times) on non-convergence
CONTROL_NODE, CONTROL_DOF, STEP = 2815, 3, -0.5
N_STEPS, MAX_LOAD_FACTOR, TOL, MAX_CUTS = 80, 1.0, 1e-06, 6
t0 = time.perf_counter()
ops.system('UmfPack')
ops.numberer('RCM')
ops.constraints('Transformation')
ops.test('RelativeNormDispIncr', TOL, 40)
ops.algorithm('Newton')
history = [[0.0, 0.0, 0]]             # [load factor, control displacement, iterations]
k = 0
while (N_STEPS is None or k < N_STEPS) and not (MAX_LOAD_FACTOR is not None and abs(history[-1][0]) >= MAX_LOAD_FACTOR):
    du = STEP
    for _ in range(MAX_CUTS + 1):
        ops.integrator('DisplacementControl', CONTROL_NODE, CONTROL_DOF, du)
        ops.analysis('Static')
        if ops.analyze(1) == 0:
            break
        du /= 2
    else:
        print(f'  stopped: no convergence beyond load factor {history[-1][0]:.4g}')
        break
    history.append([ops.getLoadFactor(1), ops.nodeDisp(CONTROL_NODE, CONTROL_DOF), ops.testIter()])
    k += 1
    print(f'  step {k:3d}: load factor {history[-1][0]:.5g}, {history[-1][-1]} iterations', flush=True)
ops.reactions()
history = np.array(history)

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
