# === OpenSeesPy piece: laminate (written by the laminate-properties skill) ===
# [0/0/90/90/90/90/0/0] h = 8 mm, user ply
# 2 section(s): one coincident ASDShellQ4 per facet and distinct ply angle
# provides: SECTIONS [(section tag, ply angle from the facet x axis)], LAMINATE (JSON, results file)
# needs:    a model with 6 DOFs per node: ops.model('basic', '-ndm', 3, '-ndf', 6)
LAMINATE = '{"kind": "laminate", "name": "", "n_sub": 4, "merge": true, "G_out": null, "materials": [{"E1": 80000, "E2": 2000, "E3": 2000, "nu12": 0.25, "nu13": 0.25, "nu23": 0.25, "G12": 1000, "G13": 1000, "G23": 800.0, "rho": 0.0, "nu23_assumed": true, "nu21": 0.00625, "nu31": 0.00625, "nu32": 0.25, "Xt": null, "Xc": null, "Yt": null, "Yc": null, "S": null, "name": "user ply"}], "plies": [{"theta": 0.0, "t": 1.0, "mat": 0}, {"theta": 0.0, "t": 1.0, "mat": 0}, {"theta": 90.0, "t": 1.0, "mat": 0}, {"theta": 90.0, "t": 1.0, "mat": 0}, {"theta": 90.0, "t": 1.0, "mat": 0}, {"theta": 90.0, "t": 1.0, "mat": 0}, {"theta": 0.0, "t": 1.0, "mat": 0}, {"theta": 0.0, "t": 1.0, "mat": 0}]}'

# --- ply materials: ElasticOrthotropic -> PlaneStress -> PlateFromPlaneStress ---
ops.nDMaterial('ElasticIsotropic', 1, 0.0, 0.0)
ops.nDMaterial('ElasticOrthotropic', 2, 80000, 2000, 2000, 0.25, 0.25, 0.00625, 1000, 800.0, 1000, 0.0)
ops.nDMaterial('PlaneStress', 3, 2)
ops.nDMaterial('PlateFromPlaneStress', 4, 3, 1000)

# --- shell sections, layers bottom (-z) to top (+z): material, thickness ---
ops.section('LayeredShell', 1, 32, 4, 0.25, 4, 0.25, 4, 0.25, 4, 0.25, 4, 0.25, 4, 0.25, 4, 0.25, 4, 0.25, 1, 0.25, 1, 0.25, 1, 0.25, 1, 0.25, 1, 0.25, 1, 0.25, 1, 0.25, 1, 0.25, 1, 0.25, 1, 0.25, 1, 0.25, 1, 0.25, 1, 0.25, 1, 0.25, 1, 0.25, 1, 0.25, 4, 0.25, 4, 0.25, 4, 0.25, 4, 0.25, 4, 0.25, 4, 0.25, 4, 0.25, 4, 0.25)
ops.section('LayeredShell', 2, 32, 1, 0.25, 1, 0.25, 1, 0.25, 1, 0.25, 1, 0.25, 1, 0.25, 1, 0.25, 1, 0.25, 4, 0.25, 4, 0.25, 4, 0.25, 4, 0.25, 4, 0.25, 4, 0.25, 4, 0.25, 4, 0.25, 4, 0.25, 4, 0.25, 4, 0.25, 4, 0.25, 4, 0.25, 4, 0.25, 4, 0.25, 4, 0.25, 1, 0.25, 1, 0.25, 1, 0.25, 1, 0.25, 1, 0.25, 1, 0.25, 1, 0.25, 1, 0.25)

SECTIONS = [(1, 0.0), (2, 90.0)]
