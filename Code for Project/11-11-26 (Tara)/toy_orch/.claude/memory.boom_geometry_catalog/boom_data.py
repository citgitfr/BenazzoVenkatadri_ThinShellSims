"""TOY coilable boom cross-sections for the Tape Spring Baseline demo (same format as
.claude/memory.boom_geometry_catalog/boom_data.py; do not mix with it).

Each entry: id, type (TS), A = [(R [mm], theta [deg])], origin, source, note.
boom_geometry_catalog.txt next to this file is generated from GEOMETRIES with the real
make_boom_catalog.py functions (see make_toy_boom_catalog.py).
"""
TOY = "toy geometry (Tape Spring Baseline demo)"

TAPE_SPRINGS = [
    dict(id="T001", type="TS", A=[(20, 180)], origin="designed", source=TOY,
         note="TOY baseline tape spring: semicircle, R 20 mm, theta 180 deg."),
    dict(id="T002", type="TS", A=[(2, 180)], origin="designed", source=TOY,
         note="TOY small tape spring: semicircle, R 2 mm, theta 180 deg (10x smaller than T001)."),
    dict(id="T003", type="TS", A=[(200, 180)], origin="designed", source=TOY,
         note="TOY large tape spring: semicircle, R 200 mm, theta 180 deg (10x larger than T001)."),
]

GEOMETRIES = TAPE_SPRINGS
SELECTED = ["T001", "T002", "T003"]
