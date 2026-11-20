# === OpenSeesPy piece: laminate (written by the laminate-properties skill) ===
# [0/30/30/0] h = 0.14 mm, L017 IM7 / 8551-7 epoxy (WWFE-II)
# 2 section(s): one coincident ASDShellQ4 per facet and distinct ply angle
# provides: SECTIONS [(section tag, ply angle from the facet x axis)], LAMINATE (JSON, results file)
# needs:    a model with 6 DOFs per node: ops.model('basic', '-ndm', 3, '-ndf', 6)
LAMINATE = '{"kind": "laminate", "name": "", "n_sub": 4, "merge": true, "G_out": null, "materials": [{"E1": 165000.0, "E2": 8400.0, "E3": 8400.0, "nu12": 0.34, "nu13": 0.34, "nu23": 0.5, "G12": 5600.0, "G13": 5600.0, "G23": 2800.0, "rho": 0.0, "nu23_assumed": false, "nu21": 0.01730909090909091, "nu31": 0.01730909090909091, "nu32": 0.5, "Xt": 2560.0, "Xc": 1590.0, "Yt": 73.0, "Yc": 185.0, "S": 90.0, "t_ply": 0.034999999999999996, "name": "L017 IM7 / 8551-7 epoxy (WWFE-II)"}], "plies": [{"theta": 0.0, "t": 0.034999999999999996, "mat": 0}, {"theta": 30.0, "t": 0.034999999999999996, "mat": 0}, {"theta": 30.0, "t": 0.034999999999999996, "mat": 0}, {"theta": 0.0, "t": 0.034999999999999996, "mat": 0}]}'

# --- ply materials: ElasticOrthotropic -> PlaneStress -> PlateFromPlaneStress ---
ops.nDMaterial('ElasticIsotropic', 1, 0.0, 0.0)
ops.nDMaterial('ElasticOrthotropic', 2, 165000.0, 8400.0, 8400.0, 0.34, 0.5, 0.01730909090909091, 5600.0, 2800.0, 5600.0, 0.0)
ops.nDMaterial('PlaneStress', 3, 2)
ops.nDMaterial('PlateFromPlaneStress', 4, 3, 5600.0)

# --- shell sections, layers bottom (-z) to top (+z): material, thickness ---
ops.section('LayeredShell', 1, 16, 4, 0.008749999999999999, 4, 0.008749999999999999, 4, 0.008749999999999999, 4, 0.008749999999999999, 1, 0.008749999999999999, 1, 0.008749999999999999, 1, 0.008749999999999999, 1, 0.008749999999999999, 1, 0.008749999999999999, 1, 0.008749999999999999, 1, 0.008749999999999999, 1, 0.008749999999999999, 4, 0.008749999999999999, 4, 0.008749999999999999, 4, 0.008749999999999999, 4, 0.008749999999999999)
ops.section('LayeredShell', 2, 16, 1, 0.008749999999999999, 1, 0.008749999999999999, 1, 0.008749999999999999, 1, 0.008749999999999999, 4, 0.008749999999999999, 4, 0.008749999999999999, 4, 0.008749999999999999, 4, 0.008749999999999999, 4, 0.008749999999999999, 4, 0.008749999999999999, 4, 0.008749999999999999, 4, 0.008749999999999999, 1, 0.008749999999999999, 1, 0.008749999999999999, 1, 0.008749999999999999, 1, 0.008749999999999999)

SECTIONS = [(1, 0.0), (2, 30.0)]
