# === OpenSeesPy piece: laminate (written by the laminate-properties skill) ===
# [30/0/0/30] h = 0.14 mm, L030 T1100GC / LM-PAEK (Toray Cetex TC1225)
# 2 section(s): one coincident ASDShellQ4 per facet and distinct ply angle
# provides: SECTIONS [(section tag, ply angle from the facet x axis)], LAMINATE (JSON, results file)
# needs:    a model with 6 DOFs per node: ops.model('basic', '-ndm', 3, '-ndf', 6)
LAMINATE = '{"kind": "laminate", "name": "", "n_sub": 4, "merge": true, "G_out": null, "materials": [{"E1": 173000.0, "E2": 9000.0, "E3": 9000.0, "nu12": 0.32, "nu13": 0.32, "nu23": 0.49, "G12": 4030.0, "G13": 4030.0, "G23": 3020.1342281879197, "rho": 0.0, "nu23_assumed": false, "nu21": 0.016647398843930634, "nu31": 0.016647398843930634, "nu32": 0.49, "Xt": 3613.0, "Xc": 1595.0, "Yt": 90.0, "Yc": 192.0, "S": 69.0, "t_ply": 0.034999999999999996, "name": "L030 T1100GC / LM-PAEK (Toray Cetex TC1225)"}], "plies": [{"theta": 30.0, "t": 0.034999999999999996, "mat": 0}, {"theta": 0.0, "t": 0.034999999999999996, "mat": 0}, {"theta": 0.0, "t": 0.034999999999999996, "mat": 0}, {"theta": 30.0, "t": 0.034999999999999996, "mat": 0}]}'

# --- ply materials: ElasticOrthotropic -> PlaneStress -> PlateFromPlaneStress ---
ops.nDMaterial('ElasticIsotropic', 1, 0.0, 0.0)
ops.nDMaterial('ElasticOrthotropic', 2, 173000.0, 9000.0, 9000.0, 0.32, 0.49, 0.016647398843930634, 4030.0, 3020.1342281879197, 4030.0, 0.0)
ops.nDMaterial('PlaneStress', 3, 2)
ops.nDMaterial('PlateFromPlaneStress', 4, 3, 4030.0)

# --- shell sections, layers bottom (-z) to top (+z): material, thickness ---
ops.section('LayeredShell', 1, 16, 4, 0.008749999999999999, 4, 0.008749999999999999, 4, 0.008749999999999999, 4, 0.008749999999999999, 1, 0.008749999999999999, 1, 0.008749999999999999, 1, 0.008749999999999999, 1, 0.008749999999999999, 1, 0.008749999999999999, 1, 0.008749999999999999, 1, 0.008749999999999999, 1, 0.008749999999999999, 4, 0.008749999999999999, 4, 0.008749999999999999, 4, 0.008749999999999999, 4, 0.008749999999999999)
ops.section('LayeredShell', 2, 16, 1, 0.008749999999999999, 1, 0.008749999999999999, 1, 0.008749999999999999, 1, 0.008749999999999999, 4, 0.008749999999999999, 4, 0.008749999999999999, 4, 0.008749999999999999, 4, 0.008749999999999999, 4, 0.008749999999999999, 4, 0.008749999999999999, 4, 0.008749999999999999, 4, 0.008749999999999999, 1, 0.008749999999999999, 1, 0.008749999999999999, 1, 0.008749999999999999, 1, 0.008749999999999999)

SECTIONS = [(1, 30.0), (2, 0.0)]
