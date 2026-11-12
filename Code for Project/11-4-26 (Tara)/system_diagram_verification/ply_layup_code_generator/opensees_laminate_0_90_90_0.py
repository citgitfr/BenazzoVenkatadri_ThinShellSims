# === OpenSeesPy piece: laminate (written by the laminate-properties skill) ===
# [0/90/90/0] h = 0.216 mm, user ply
# 2 section(s): one coincident ASDShellQ4 per facet and distinct ply angle
# provides: SECTIONS [(section tag, ply angle from the facet x axis)], LAMINATE (JSON, results file)
# needs:    a model with 6 DOFs per node: ops.model('basic', '-ndm', 3, '-ndf', 6)
LAMINATE = '{"kind": "laminate", "name": "", "n_sub": 4, "merge": true, "G_out": null, "materials": [{"E1": 139500.0, "E2": 6101.0, "E3": 6101.0, "nu12": 0.275, "nu13": 0.275, "nu23": 0.275, "G12": 2574.0, "G13": 2574.0, "G23": 2392.549019607843, "rho": 0.0, "nu23_assumed": true, "nu21": 0.012027060931899642, "nu31": 0.012027060931899642, "nu32": 0.275, "Xt": null, "Xc": null, "Yt": null, "Yc": null, "S": null, "name": "user ply"}], "plies": [{"theta": 0.0, "t": 0.054, "mat": 0}, {"theta": 90.0, "t": 0.054, "mat": 0}, {"theta": 90.0, "t": 0.054, "mat": 0}, {"theta": 0.0, "t": 0.054, "mat": 0}]}'

# --- ply materials: ElasticOrthotropic -> PlaneStress -> PlateFromPlaneStress ---
ops.nDMaterial('ElasticIsotropic', 1, 0.0, 0.0)
ops.nDMaterial('ElasticOrthotropic', 2, 139500.0, 6101.0, 6101.0, 0.275, 0.275, 0.012027060931899642, 2574.0, 2392.549019607843, 2574.0, 0.0)
ops.nDMaterial('PlaneStress', 3, 2)
ops.nDMaterial('PlateFromPlaneStress', 4, 3, 2574.0)

# --- shell sections, layers bottom (-z) to top (+z): material, thickness ---
ops.section('LayeredShell', 1, 16, 4, 0.0135, 4, 0.0135, 4, 0.0135, 4, 0.0135, 1, 0.0135, 1, 0.0135, 1, 0.0135, 1, 0.0135, 1, 0.0135, 1, 0.0135, 1, 0.0135, 1, 0.0135, 4, 0.0135, 4, 0.0135, 4, 0.0135, 4, 0.0135)
ops.section('LayeredShell', 2, 16, 1, 0.0135, 1, 0.0135, 1, 0.0135, 1, 0.0135, 4, 0.0135, 4, 0.0135, 4, 0.0135, 4, 0.0135, 4, 0.0135, 4, 0.0135, 4, 0.0135, 4, 0.0135, 1, 0.0135, 1, 0.0135, 1, 0.0135, 1, 0.0135)

SECTIONS = [(1, 0.0), (2, 90.0)]
