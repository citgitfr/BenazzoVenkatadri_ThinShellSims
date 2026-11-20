# === OpenSeesPy piece: laminate (written by the laminate-properties skill) ===
# [-45/0/0/-45] h = 0.14 mm, L006 IM7 / Solvay MTM45-1 epoxy (NCAMP)
# 2 section(s): one coincident ASDShellQ4 per facet and distinct ply angle
# provides: SECTIONS [(section tag, ply angle from the facet x axis)], LAMINATE (JSON, results file)
# needs:    a model with 6 DOFs per node: ops.model('basic', '-ndm', 3, '-ndf', 6)
LAMINATE = '{"kind": "laminate", "name": "", "n_sub": 4, "merge": true, "G_out": null, "materials": [{"E1": 157900.0, "E2": 7650.0, "E3": 7650.0, "nu12": 0.361, "nu13": 0.361, "nu23": 0.45, "G12": 3900.0, "G13": 3900.0, "G23": 2637.9310344827586, "rho": 0.0, "nu23_assumed": false, "nu21": 0.017489867004433186, "nu31": 0.017489867004433186, "nu32": 0.45, "Xt": 2466.0, "Xc": 1252.0, "Yt": 52.3, "Yc": 192.79999999999998, "S": 72.1, "t_ply": 0.034999999999999996, "name": "L006 IM7 / Solvay MTM45-1 epoxy (NCAMP)"}], "plies": [{"theta": -45.0, "t": 0.034999999999999996, "mat": 0}, {"theta": 0.0, "t": 0.034999999999999996, "mat": 0}, {"theta": 0.0, "t": 0.034999999999999996, "mat": 0}, {"theta": -45.0, "t": 0.034999999999999996, "mat": 0}]}'

# --- ply materials: ElasticOrthotropic -> PlaneStress -> PlateFromPlaneStress ---
ops.nDMaterial('ElasticIsotropic', 1, 0.0, 0.0)
ops.nDMaterial('ElasticOrthotropic', 2, 157900.0, 7650.0, 7650.0, 0.361, 0.45, 0.017489867004433186, 3900.0, 2637.9310344827586, 3900.0, 0.0)
ops.nDMaterial('PlaneStress', 3, 2)
ops.nDMaterial('PlateFromPlaneStress', 4, 3, 3900.0)

# --- shell sections, layers bottom (-z) to top (+z): material, thickness ---
ops.section('LayeredShell', 1, 16, 4, 0.008749999999999999, 4, 0.008749999999999999, 4, 0.008749999999999999, 4, 0.008749999999999999, 1, 0.008749999999999999, 1, 0.008749999999999999, 1, 0.008749999999999999, 1, 0.008749999999999999, 1, 0.008749999999999999, 1, 0.008749999999999999, 1, 0.008749999999999999, 1, 0.008749999999999999, 4, 0.008749999999999999, 4, 0.008749999999999999, 4, 0.008749999999999999, 4, 0.008749999999999999)
ops.section('LayeredShell', 2, 16, 1, 0.008749999999999999, 1, 0.008749999999999999, 1, 0.008749999999999999, 1, 0.008749999999999999, 4, 0.008749999999999999, 4, 0.008749999999999999, 4, 0.008749999999999999, 4, 0.008749999999999999, 4, 0.008749999999999999, 4, 0.008749999999999999, 4, 0.008749999999999999, 4, 0.008749999999999999, 1, 0.008749999999999999, 1, 0.008749999999999999, 1, 0.008749999999999999, 1, 0.008749999999999999)

SECTIONS = [(1, -45.0), (2, 0.0)]
