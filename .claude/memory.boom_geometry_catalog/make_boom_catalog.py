"""Write the coilable-boom cross-section catalog, check every geometry, and
draw the sections.

Usage: python make_boom_catalog.py            -> boom_geometry_catalog.txt, boom_sections_all.svg,
                                                  boom_sections_selected.svg

The geometries are the GEOMETRIES list in boom_data.py (literature values,
values derived from them, and designed variants). This script only builds,
checks and writes them; edit boom_data.py, then rerun.

Conventions (also written into the catalog header)
- Types: TS tape spring (open, 1 arc), TRAC (web + 2 single-arc flanges),
  OM omega/lenticular (closed, 2 shells bonded on 2 webs, 1-3 arcs per shell),
  CO corrugated (as OM, > 3 arcs per shell).
- Each part is a chain of tangent-continuous circular arcs, R [mm] > 0 and
  signed subtended angle theta [deg]:
    TS    : theta > 0.
    TRAC  : A and B are the two flanges, listed from the web outward; the
            flange leaves the web tangentially; theta > 0 curves away from
            the other flange.
    OM/CO : A = upper shell, B = lower shell, each listed from the left web
            to the right web; theta > 0 = convex (bulging away from the
            bonding plane), theta < 0 = concave (transition / valley arcs).
- w [mm]: TRAC web height; OM/CO bonded tab width on EACH side (both webs).
"""
import math
import os
import sys

HERE = os.path.dirname(os.path.abspath(__file__))
sys.path.insert(0, HERE)
from boom_data import GEOMETRIES, SELECTED  # noqa: E402
from boom_geometry import walk, arc_length, closed_shell  # noqa: E402

OUT = os.path.join(HERE, "boom_geometry_catalog.txt")
SVG_ALL = os.path.join(HERE, "boom_sections_all.svg")
SVG_SEL = os.path.join(HERE, "boom_sections_selected.svg")
SEP = "   "
TOL = 1e-3          # relative tolerance on arc length and chord equality
TYPES = {"TS": "tape spring", "TRAC": "TRAC", "OM": "omega / lenticular", "CO": "corrugated"}


# --- geometry -------------------------------------------------------------------------

def _cross(p, q, r, s):
    """Proper intersection of segments pq and rs (touching endpoints do not count)."""
    def orient(a, b, c):
        return (b[0] - a[0]) * (c[1] - a[1]) - (b[1] - a[1]) * (c[0] - a[0])
    d1, d2, d3, d4 = orient(r, s, p), orient(r, s, q), orient(p, q, r), orient(p, q, s)
    return d1 * d2 < 0 and d3 * d4 < 0


def self_crossing(line):
    segs = list(zip(line[:-1], line[1:]))
    return any(_cross(*segs[i], *segs[j]) for i in range(len(segs)) for j in range(i + 2, len(segs)))


def lines_cross(a, b):
    """Two parts crossing each other, ignoring the first/last segment where they may meet."""
    sa, sb = list(zip(a[:-1], a[1:]))[1:-1], list(zip(b[:-1], b[1:]))[1:-1]
    return any(_cross(*u, *v) for u in sa for v in sb)


def build(g):
    """Polylines (list of point lists, global y-z) and derived quantities of geometry g."""
    t, A, B, w = g["type"], g["A"], g.get("B"), g.get("w", 0.0)
    out = dict(lines=[], webs=[], s_A=arc_length(A), s_B=arc_length(B) if B else None, chord_A=None,
               chord_B=None, kink=None, problems=[])
    if t == "TS":
        R, th = A[0]
        pts, _ = walk([(R, math.radians(th))], heading=-math.radians(th) / 2)
        out["lines"].append(pts)
    elif t == "TRAC":
        out["webs"].append([(0.0, -w), (0.0, 0.0)])
        a, _ = walk([(R, -math.radians(th)) for R, th in A], heading=math.pi / 2)
        b, _ = walk([(R, math.radians(th)) for R, th in B], heading=math.pi / 2)
        out["lines"] += [a, b]
        if any(y < -1e-9 for y, _ in a[1:]) or any(y > 1e-9 for y, _ in b[1:]):
            out["problems"].append("a flange crosses the web plane")
    else:
        pa, ca, a0, a1 = closed_shell(A)
        pb, cb, b0, b1 = closed_shell(B)
        out.update(chord_A=ca, chord_B=cb, kink=(a0, a1, b0, b1))
        upper = [(y - ca / 2, z) for y, z in pa]
        lower = [(y - cb / 2, -z) for y, z in pb]          # different free chords: drawn centred
        out["lines"] += [upper, lower]
        c = max(ca, cb) / 2
        out["webs"] += [[(-c - w, 0.0), (-ca / 2, 0.0)], [(ca / 2, 0.0), (c + w, 0.0)]]
        if min(z for _, z in pa[1:-1]) < -1e-6 * ca or min(z for _, z in pb[1:-1]) < -1e-6 * cb:
            out["problems"].append("a shell crosses the bonding plane")
        out["same_chord"] = abs(ca - cb) <= TOL * ca
        if max(abs(a0), abs(a1), abs(b0), abs(b1)) > 1e-6:
            out["problems"].append(f"a shell is not tangent to the webs (angles to the web: upper {a0:.3f}/{a1:.3f}, "
                                   f"lower {b0:.3f}/{b1:.3f} deg)")
    if any(self_crossing(line) for line in out["lines"]) or (
            len(out["lines"]) == 2 and lines_cross(*out["lines"])):
        out["problems"].append("the section intersects itself")
    if out["s_B"] is not None and abs(out["s_A"] - out["s_B"]) > TOL * out["s_A"]:
        out["problems"].append(f"flange arc lengths differ ({out['s_A']:.3f} vs {out['s_B']:.3f} mm)")
    pts = [p for line in out["lines"] + out["webs"] for p in line]
    ys, zs = [p[0] for p in pts], [p[1] for p in pts]
    out["bbox"] = (min(ys), max(ys), min(zs), max(zs))
    return out


# --- catalog ----------------------------------------------------------------------------

def fmt(v, d=2):
    s = f"{v:.{d}f}".rstrip("0").rstrip(".")
    return "0" if s in ("-0", "") else s


def lists(part):
    if not part:
        return "-", "-"
    return "/".join(fmt(R) for R, _ in part), "/".join(fmt(t) for _, t in part)


def row(g, b):
    rA, tA = lists(g["A"])
    rB, tB = lists(g.get("B"))
    nB = len(g["B"]) if g.get("B") else 0
    y0, y1, z0, z1 = b["bbox"]
    if g["type"] == "TS":
        flat = "yes (single flange)"
    else:
        flat = "yes" if not b["problems"] else "NO"
    sym = "yes" if g["type"] == "TS" or (g["B"] == g["A"] and g["A"] == g["A"][::-1]) else "no"
    return [g["id"], g["type"], str(len(g["A"])) + (f"+{nB}" if nB else ""), fmt(g.get("w", 0.0)),
            rA, tA, rB, tB, fmt(b["s_A"]), fmt(b["s_B"]) if b["s_B"] is not None else "-",
            (fmt(b["chord_A"]) + ("" if b.get("same_chord", True) else "/" + fmt(b["chord_B"])))
            if b["chord_A"] else "-", fmt(y1 - y0), fmt(z1 - z0), sym, flat,
            g["origin"], g["source"]]


HEADER = ["ID", "type", "n_arcs", "w_mm", "R_A_mm", "theta_A_deg", "R_B_mm", "theta_B_deg", "s_A_mm",
          "s_B_mm", "chord_mm", "width_mm", "height_mm", "symmetric", "flattens", "origin", "source"]


def write_catalog(rows, notes, path=OUT):
    widths = [max(len(r[i]) for r in [HEADER] + rows) for i in range(len(HEADER) - 1)]
    with open(path, "w", encoding="utf-8") as f:
        f.write(HEAD_NOTES)
        for line in notes:
            f.write(line + "\n")
        f.write("#\n")
        for r in [HEADER] + rows:
            f.write(SEP.join(c.ljust(w) for c, w in zip(r, widths)) + SEP + r[-1] + "\n")


HEAD_NOTES = """\
# Coilable boom cross-section catalog (read by the ThinShellOrchestrator agent).
# GENERATED by make_boom_catalog.py from boom_data.py; edit boom_data.py, then rerun.
# Pictures: boom_sections_all.svg (every row), boom_sections_selected.svg (a few, larger).
#
# Types: TS = tape spring (open, 1 arc); TRAC = web + two single-arc flanges (Murphey & Banik);
#   OM = omega / lenticular (closed: upper + lower shell bonded on two flat webs, 3 arcs per shell: a concave
#        transition arc at each web and a convex central arc; a single-arc shell would meet the web at a kink);
#   CO = corrugated (as OM with more than 3 arcs per shell).
#
# Columns
#   n_arcs        arcs of part A (+ arcs of part B).
#   w_mm          TRAC: web height. OM/CO: width of EACH bonded web (tab) beside the flanges. TS: 0.
#   R_A, theta_A  part A arcs in order: radius [mm] and signed subtended angle [deg], separated by "/".
#   R_B, theta_B  part B arcs (TS: -).
#     TRAC : A, B = the two flanges, listed from the web outward; each leaves the web tangentially;
#            theta > 0 curves away from the other flange.
#     OM/CO: A = upper shell, B = lower shell, listed from the left web to the right web;
#            theta > 0 = convex (bulging away from the bonding plane), theta < 0 = concave (transition/valley).
#   s_A, s_B      flange arc lengths sum(R |theta|) [mm] (TS: the tape width).
#   chord_mm      OM/CO: distance between the inner edges of the two webs in each shell's free (unbonded) shape.
#                 One value = both shells span the same chord (stress-free closed section). "a/b" = the free shapes
#                 differ (e.g. NASA Bi-CTM inner/outer shells): the boom still flattens, but bonding prestresses it.
#   width/height  bounding box of the section incl. webs [mm] (mid-surface, no thickness).
#   symmetric     yes if both parts are identical and each is mirror-symmetric (TS always yes).
#   flattens      the flatten check (see below).
#   origin        literature = as published; derived = completed/adjusted from a published one (see notes);
#                 designed = new variant made for this project from the published ranges.
#
# Flatten check (done by make_boom_catalog.py for every row, tolerance 0.1%)
#   TRAC : s_A = s_B, so both flanges flatten to the same strip width; both leave the web tangent to it.
#   OM/CO: s_A = s_B (both shells flatten to the same width, so the webs stay bonded when flat); each shell leaves
#          and meets the webs tangentially (sum of its signed angles = 0 and both ends level, checked to 1e-6 deg);
#          neither shell crosses the bonding plane. Equal chords are reported separately (chord_mm), not required.
#   All  : arcs are tangent-continuous by construction (each arc starts with the heading the previous one ends with),
#          TRAC flanges leave the web tangentially; no part intersects itself or the other part.
#   TS   : one flange, always flattens.
#
# Using a row in shell-mesh (open chains only): TS -> {"type": "arc", "R": R, "b": s_A}. TRAC and OM/CO need the
#   web(s) as a double-thickness strip and OM/CO a closed two-shell section, which shell-mesh does not build yet.
#
"""


# --- pictures -----------------------------------------------------------------------------

def svg(items, path, cols, cell, title):
    """items: (geometry, build). Each panel is scaled to fit; a 10 mm scale bar per panel."""
    rows_n = math.ceil(len(items) / cols)
    W, H = cols * cell[0], rows_n * cell[1] + 40
    out = [f'<svg xmlns="http://www.w3.org/2000/svg" width="{W}" height="{H}" viewBox="0 0 {W} {H}" '
           f'font-family="Helvetica, Arial, sans-serif">',
           f'<rect width="{W}" height="{H}" fill="white"/>',
           f'<text x="10" y="26" font-size="18" font-weight="bold">{title}</text>']
    colors = {"TS": "#1f5fa8", "TRAC": "#b5361c", "OM": "#2a7d3a", "CO": "#7a3fa0"}
    for k, (g, b) in enumerate(items):
        cx, cy = (k % cols) * cell[0], 40 + (k // cols) * cell[1]
        y0, y1, z0, z1 = b["bbox"]
        pad, top = 14, 34
        sc = min((cell[0] - 2 * pad) / max(y1 - y0, 1e-9), (cell[1] - top - 2 * pad - 14) / max(z1 - z0, 1e-9))
        ox = cx + (cell[0] - sc * (y1 - y0)) / 2 - sc * y0
        oy = cy + top + pad + (cell[1] - top - 2 * pad - 14 - sc * (z1 - z0)) / 2 + sc * z1
        P = lambda p: f"{ox + sc * p[0]:.1f},{oy - sc * p[1]:.1f}"
        out.append(f'<rect x="{cx + 3}" y="{cy + 3}" width="{cell[0] - 6}" height="{cell[1] - 6}" fill="none" '
                   f'stroke="#ccc"/>')
        flat = "flattens" if not b["problems"] else "DOES NOT FLATTEN"
        out.append(f'<text x="{cx + 10}" y="{cy + 20}" font-size="13" font-weight="bold">{g["id"]}  '
                   f'{TYPES[g["type"]]}</text>')
        out.append(f'<text x="{cx + 10}" y="{cy + 34}" font-size="10" fill="#555">{g["origin"]}; {flat}; '
                   f's = {fmt(b["s_A"], 1)} mm</text>')
        for line in b["lines"]:
            out.append(f'<polyline fill="none" stroke="{colors[g["type"]]}" stroke-width="2" '
                       f'points="{" ".join(P(p) for p in line)}"/>')
        for web in b["webs"]:
            out.append(f'<polyline fill="none" stroke="#222" stroke-width="4" '
                       f'points="{" ".join(P(p) for p in web)}"/>')
        bar = 10 * sc
        bx, by = cx + 10, cy + cell[1] - 12
        out.append(f'<line x1="{bx:.1f}" y1="{by}" x2="{bx + bar:.1f}" y2="{by}" stroke="#000" stroke-width="2"/>')
        out.append(f'<text x="{bx + bar + 5:.1f}" y="{by + 4}" font-size="10">10 mm</text>')
    out.append("</svg>")
    with open(path, "w", encoding="utf-8") as f:
        f.write("\n".join(out))


def main():
    ids = [g["id"] for g in GEOMETRIES]
    assert len(ids) == len(set(ids)), "duplicate IDs"
    built = [(g, build(g)) for g in GEOMETRIES]
    rows = [row(g, b) for g, b in built]
    notes = ["# Per-ID notes"] + [f"#  {g['id']} {g['note']}" for g in GEOMETRIES if g.get("note")]
    write_catalog(rows, notes)
    svg(built, SVG_ALL, 8, (230, 190), "Coilable boom cross-sections (each panel scaled to fit; black = web)")
    sel = [x for x in built if x[0]["id"] in SELECTED]
    svg(sel, SVG_SEL, 4, (360, 300), "Selected coilable boom cross-sections (black = web)")
    for g, b in built:
        for p in b["problems"]:
            print(f"FAIL {g['id']}: {p}")
    count = {t: sum(g["type"] == t for g in GEOMETRIES) for t in TYPES}
    print(f"{len(GEOMETRIES)} geometries ({', '.join(f'{t} {n}' for t, n in count.items())}); "
          f"{sum(not b['problems'] for _, b in built)} flatten; written {OUT}")


if __name__ == "__main__":
    main()
