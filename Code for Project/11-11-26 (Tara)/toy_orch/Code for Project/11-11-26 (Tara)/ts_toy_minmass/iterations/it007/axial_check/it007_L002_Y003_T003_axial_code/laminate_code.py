# === OpenSeesPy piece: laminate (written by the laminate-properties skill) ===
# [90/90/90] h = 0.105 mm, L002 IM7 / Hexcel HexPly 8552 epoxy (TOY rho x1000)
# 1 section(s): one coincident ASDShellQ4 per facet and distinct ply angle
# provides: SECTIONS [(section tag, ply angle from the facet x axis)], LAMINATE (JSON, results file)
# needs:    a model with 6 DOFs per node: ops.model('basic', '-ndm', 3, '-ndf', 6)
LAMINATE = '{"kind": "laminate", "name": "", "n_sub": 5, "merge": true, "G_out": null, "materials": [{"E1": 158500.0, "E2": 8950.0, "E3": 8950.0, "nu12": 0.316, "nu13": 0.316, "nu23": 0.45, "G12": 4670.0, "G13": 4670.0, "G23": 3086.206896551724, "rho": 0.0, "nu23_assumed": false, "nu21": 0.01784353312302839, "nu31": 0.01784353312302839, "nu32": 0.45, "Xt": 2501.0, "Xc": 1716.0, "Yt": 64.0, "Yc": 285.7, "S": 91.1, "t_ply": 0.034999999999999996, "name": "L002 IM7 / Hexcel HexPly 8552 epoxy (TOY rho x1000)"}], "plies": [{"theta": 90.0, "t": 0.034999999999999996, "mat": 0}, {"theta": 90.0, "t": 0.034999999999999996, "mat": 0}, {"theta": 90.0, "t": 0.034999999999999996, "mat": 0}]}'

# --- ply materials: ElasticOrthotropic -> PlaneStress -> PlateFromPlaneStress ---
ops.nDMaterial('ElasticIsotropic', 1, 0.0, 0.0)
ops.nDMaterial('ElasticOrthotropic', 2, 158500.0, 8950.0, 8950.0, 0.316, 0.45, 0.01784353312302839, 4670.0, 3086.206896551724, 4670.0, 0.0)
ops.nDMaterial('PlaneStress', 3, 2)
ops.nDMaterial('PlateFromPlaneStress', 4, 3, 4670.0)

# --- shell sections, layers bottom (-z) to top (+z): material, thickness ---
ops.section('LayeredShell', 1, 15, 4, 0.006999999999999999, 4, 0.006999999999999999, 4, 0.006999999999999999, 4, 0.006999999999999999, 4, 0.006999999999999999, 4, 0.006999999999999999, 4, 0.006999999999999999, 4, 0.006999999999999999, 4, 0.006999999999999999, 4, 0.006999999999999999, 4, 0.006999999999999999, 4, 0.006999999999999999, 4, 0.006999999999999999, 4, 0.006999999999999999, 4, 0.006999999999999999)

SECTIONS = [(1, 90.0)]
