# === OpenSeesPy piece: laminate (written by the laminate-properties skill) ===
# isotropic shell t = 0.1 mm
# 1 section(s): one coincident ASDShellQ4 per facet and distinct ply angle
# provides: SECTIONS [(section tag, ply angle from the facet x axis)], LAMINATE (JSON, results file)
# needs:    a model with 6 DOFs per node: ops.model('basic', '-ndm', 3, '-ndf', 6)
LAMINATE = '{"kind": "isotropic", "name": "", "n_sub": 15, "merge": true, "G_out": null, "materials": [{"E1": 69000.0, "E2": 69000.0, "E3": 69000.0, "nu12": 0.33, "nu13": 0.33, "nu23": 0.33, "G12": 25939.84962406015, "G13": 25939.84962406015, "G23": 25939.84962406015, "rho": 2.7e-09, "nu23_assumed": false, "nu21": 0.33, "nu31": 0.33, "nu32": 0.33, "name": "isotropic E = 69000 MPa, nu = 0.33"}], "plies": [{"theta": 0.0, "t": 0.1, "mat": 0}]}'

# --- shell sections, layers bottom (-z) to top (+z): material, thickness ---
ops.section('ElasticMembranePlateSection', 1, 69000.0, 0.33, 0.1, 2.7e-09)

SECTIONS = [(1, 0.0)]
