# === OpenSeesPy piece: laminate (written by the laminate-properties skill) ===
# [0/0/0/0/0] h = 0.175 mm, L038 M30SC (18K, spread tow) / PEEK (Sakai Ovex thin-ply prepreg)
# 1 section(s): one coincident ASDShellQ4 per facet and distinct ply angle
# provides: SECTIONS [(section tag, ply angle from the facet x axis)], LAMINATE (JSON, results file)
# needs:    a model with 6 DOFs per node: ops.model('basic', '-ndm', 3, '-ndf', 6)
LAMINATE = '{"kind": "laminate", "name": "", "n_sub": 3, "merge": true, "G_out": null, "materials": [{"E1": 127000.0, "E2": 5800.0, "E3": 5800.0, "nu12": 0.35, "nu13": 0.35, "nu23": 0.49, "G12": 5200.0, "G13": 5200.0, "G23": 1946.3087248322147, "rho": 0.0, "nu23_assumed": false, "nu21": 0.015984251968503935, "nu31": 0.015984251968503935, "nu32": 0.49, "Xt": 2819.0, "Xc": 2805.0, "Yt": 69.0, "Yc": 67.0, "S": 49.0, "t_ply": 0.034999999999999996, "name": "L038 M30SC (18K, spread tow) / PEEK (Sakai Ovex thin-ply prepreg)"}], "plies": [{"theta": 0.0, "t": 0.034999999999999996, "mat": 0}, {"theta": 0.0, "t": 0.034999999999999996, "mat": 0}, {"theta": 0.0, "t": 0.034999999999999996, "mat": 0}, {"theta": 0.0, "t": 0.034999999999999996, "mat": 0}, {"theta": 0.0, "t": 0.034999999999999996, "mat": 0}]}'

# --- ply materials: ElasticOrthotropic -> PlaneStress -> PlateFromPlaneStress ---
ops.nDMaterial('ElasticIsotropic', 1, 0.0, 0.0)
ops.nDMaterial('ElasticOrthotropic', 2, 127000.0, 5800.0, 5800.0, 0.35, 0.49, 0.015984251968503935, 5200.0, 1946.3087248322147, 5200.0, 0.0)
ops.nDMaterial('PlaneStress', 3, 2)
ops.nDMaterial('PlateFromPlaneStress', 4, 3, 5200.0)

# --- shell sections, layers bottom (-z) to top (+z): material, thickness ---
ops.section('LayeredShell', 1, 15, 4, 0.011666666666666665, 4, 0.011666666666666665, 4, 0.011666666666666665, 4, 0.011666666666666665, 4, 0.011666666666666665, 4, 0.011666666666666665, 4, 0.011666666666666665, 4, 0.011666666666666665, 4, 0.011666666666666665, 4, 0.011666666666666665, 4, 0.011666666666666665, 4, 0.011666666666666665, 4, 0.011666666666666665, 4, 0.011666666666666665, 4, 0.011666666666666665)

SECTIONS = [(1, 0.0)]
