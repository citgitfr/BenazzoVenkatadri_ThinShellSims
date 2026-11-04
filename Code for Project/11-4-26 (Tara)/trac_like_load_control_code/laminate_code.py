# === OpenSeesPy piece: laminate (written by the laminate-properties skill) ===
# [45/-45/-45/45] h = 0.32 mm, L024 carbon, unspecified / epoxy (lenticular boom CFRP)
# 2 section(s): one coincident ASDShellQ4 per facet and distinct ply angle
# provides: SECTIONS [(section tag, ply angle from the facet x axis)], LAMINATE (JSON, results file)
# needs:    a model with 6 DOFs per node: ops.model('basic', '-ndm', 3, '-ndf', 6)
LAMINATE = '{"kind": "laminate", "name": "", "n_sub": 4, "merge": true, "G_out": null, "materials": [{"E1": 80080.0, "E2": 6670.0, "E3": 6670.0, "nu12": 0.344, "nu13": 0.344, "nu23": 0.33, "G12": 2930.0, "G13": 2930.0, "G23": 2507.518796992481, "rho": 0.0, "nu23_assumed": false, "nu21": 0.028652347652347653, "nu31": 0.028652347652347653, "nu32": 0.32999999999999996, "Xt": 1063.48, "Xc": 662.6899999999999, "Yt": 65.99, "Yc": 144.54, "S": 126.75999999999999, "t_ply": 0.08, "name": "L024 carbon, unspecified / epoxy (lenticular boom CFRP)"}], "plies": [{"theta": 45.0, "t": 0.08, "mat": 0}, {"theta": -45.0, "t": 0.08, "mat": 0}, {"theta": -45.0, "t": 0.08, "mat": 0}, {"theta": 45.0, "t": 0.08, "mat": 0}]}'

# --- ply materials: ElasticOrthotropic -> PlaneStress -> PlateFromPlaneStress ---
ops.nDMaterial('ElasticIsotropic', 1, 0.0, 0.0)
ops.nDMaterial('ElasticOrthotropic', 2, 80080.0, 6670.0, 6670.0, 0.344, 0.33, 0.028652347652347653, 2930.0, 2507.518796992481, 2930.0, 0.0)
ops.nDMaterial('PlaneStress', 3, 2)
ops.nDMaterial('PlateFromPlaneStress', 4, 3, 2930.0)

# --- shell sections, layers bottom (-z) to top (+z): material, thickness ---
ops.section('LayeredShell', 1, 16, 4, 0.02, 4, 0.02, 4, 0.02, 4, 0.02, 1, 0.02, 1, 0.02, 1, 0.02, 1, 0.02, 1, 0.02, 1, 0.02, 1, 0.02, 1, 0.02, 4, 0.02, 4, 0.02, 4, 0.02, 4, 0.02)
ops.section('LayeredShell', 2, 16, 1, 0.02, 1, 0.02, 1, 0.02, 1, 0.02, 4, 0.02, 4, 0.02, 4, 0.02, 4, 0.02, 4, 0.02, 4, 0.02, 4, 0.02, 4, 0.02, 1, 0.02, 1, 0.02, 1, 0.02, 1, 0.02)

SECTIONS = [(1, 45.0), (2, -45.0)]
