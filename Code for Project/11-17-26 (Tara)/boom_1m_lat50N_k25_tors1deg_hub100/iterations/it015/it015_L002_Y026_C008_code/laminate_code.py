# === OpenSeesPy piece: laminate (written by the laminate-properties skill) ===
# [60/0/0/60] h = 0.14 mm, L002 IM7 / Hexcel HexPly 8552 epoxy
# 2 section(s): one coincident ASDShellQ4 per facet and distinct ply angle
# provides: SECTIONS [(section tag, ply angle from the facet x axis)], LAMINATE (JSON, results file)
# needs:    a model with 6 DOFs per node: ops.model('basic', '-ndm', 3, '-ndf', 6)
LAMINATE = '{"kind": "laminate", "name": "", "n_sub": 4, "merge": true, "G_out": null, "materials": [{"E1": 171420.0, "E2": 9080.0, "E3": 9080.0, "nu12": 0.32, "nu13": 0.32, "nu23": 0.45, "G12": 5290.0, "G13": 5290.0, "G23": 3131.034482758621, "rho": 0.0, "nu23_assumed": false, "nu21": 0.016950180842375453, "nu31": 0.016950180842375453, "nu32": 0.45, "Xt": 2326.2, "Xc": 1200.1, "Yt": 62.3, "Yc": 199.79999999999998, "S": 92.3, "t_ply": 0.034999999999999996, "name": "L002 IM7 / Hexcel HexPly 8552 epoxy"}], "plies": [{"theta": 60.0, "t": 0.034999999999999996, "mat": 0}, {"theta": 0.0, "t": 0.034999999999999996, "mat": 0}, {"theta": 0.0, "t": 0.034999999999999996, "mat": 0}, {"theta": 60.0, "t": 0.034999999999999996, "mat": 0}]}'

# --- ply materials: ElasticOrthotropic -> PlaneStress -> PlateFromPlaneStress ---
ops.nDMaterial('ElasticIsotropic', 1, 0.0, 0.0)
ops.nDMaterial('ElasticOrthotropic', 2, 171420.0, 9080.0, 9080.0, 0.32, 0.45, 0.016950180842375453, 5290.0, 3131.034482758621, 5290.0, 0.0)
ops.nDMaterial('PlaneStress', 3, 2)
ops.nDMaterial('PlateFromPlaneStress', 4, 3, 5290.0)

# --- shell sections, layers bottom (-z) to top (+z): material, thickness ---
ops.section('LayeredShell', 1, 16, 4, 0.008749999999999999, 4, 0.008749999999999999, 4, 0.008749999999999999, 4, 0.008749999999999999, 1, 0.008749999999999999, 1, 0.008749999999999999, 1, 0.008749999999999999, 1, 0.008749999999999999, 1, 0.008749999999999999, 1, 0.008749999999999999, 1, 0.008749999999999999, 1, 0.008749999999999999, 4, 0.008749999999999999, 4, 0.008749999999999999, 4, 0.008749999999999999, 4, 0.008749999999999999)
ops.section('LayeredShell', 2, 16, 1, 0.008749999999999999, 1, 0.008749999999999999, 1, 0.008749999999999999, 1, 0.008749999999999999, 4, 0.008749999999999999, 4, 0.008749999999999999, 4, 0.008749999999999999, 4, 0.008749999999999999, 4, 0.008749999999999999, 4, 0.008749999999999999, 4, 0.008749999999999999, 4, 0.008749999999999999, 1, 0.008749999999999999, 1, 0.008749999999999999, 1, 0.008749999999999999, 1, 0.008749999999999999)

SECTIONS = [(1, 60.0), (2, 0.0)]
