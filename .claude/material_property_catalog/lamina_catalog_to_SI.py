"""Convert the readable UD lamina catalog (GPa, MPa, mm) to SI (Pa, m) and check it.

Usage: python lamina_catalog_to_SI.py [readable.txt] [SI.txt]

Estimate markers (*) and NA are carried over unchanged. Both files are written
with space-aligned columns (the readable file is re-aligned in place, so new
rows can be typed with tabs or 2+ spaces). The checks print which rows can go
to PlyPropertyGenerator (E1, E2, G12, nu12, nu23, admissible) and which have
the five strengths needed for in-plane Tsai-Hill.
"""
import math
import os
import re
import sys

HERE = os.path.dirname(os.path.abspath(__file__))
SRC = os.path.join(HERE, "UD_lamina_catalog_readable.txt")
DST = os.path.join(HERE, "UD_lamina_catalog_SI.txt")
SEP = "   "  # column separator after padding

# readable column name -> (SI column name, factor)
UNITS = {
    "E1_GPa": ("E1_Pa", 1e9), "E2_GPa": ("E2_Pa", 1e9), "G12_GPa": ("G12_Pa", 1e9),
    "G23_GPa": ("G23_Pa", 1e9),
    "Xc_MPa": ("Xc_Pa", 1e6), "Xt_MPa": ("Xt_Pa", 1e6), "Yc_MPa": ("Yc_Pa", 1e6),
    "Yt_MPa": ("Yt_Pa", 1e6), "S12_MPa": ("S12_Pa", 1e6),
    "t_ply_mm": ("t_ply_m", 1e-3),
}


def value(cell):
    """Return (float or None, is_estimate)."""
    if cell == "NA":
        return None, False
    est = cell.endswith("*")
    return float(cell.rstrip("*")), est


def to_si(cell, factor):
    v, est = value(cell)
    if v is None:
        return "NA"
    return f"{v * factor:.6g}" + ("*" if est else "")


def split(line):
    """Columns are separated by a tab or by 2+ spaces (cells never hold 2 spaces)."""
    return [c.strip() for c in re.split(r"\t| {2,}", line.strip())]


def write_table(f, header, table):
    """Write header + rows with space-padded, left-aligned columns (last one unpadded)."""
    widths = [max(len(r[i]) for r in [header] + table) for i in range(len(header) - 1)]
    for r in [header] + table:
        f.write(SEP.join(c.ljust(w) for c, w in zip(r, widths)) + SEP + r[-1] + "\n")


def read(path):
    comments, header, rows = [], None, []
    with open(path, encoding="utf-8") as f:
        for line in f:
            line = line.rstrip("\n")
            if line.startswith("#") or not line.strip():
                comments.append(line)
            elif header is None:
                header = split(line)
            else:
                cells = split(line)
                assert len(cells) == len(header), f"wrong column count: {cells[0]}"
                rows.append(dict(zip(header, cells)))
    return comments, header, rows


def check(row):
    """Return (ply_ok, tsai_hill_ok, list of warnings)."""
    g = lambda k: value(row[k])[0]
    E1, E2, G12, nu12, nu23, G23 = (g(k) for k in
                                    ("E1_GPa", "E2_GPa", "G12_GPa", "nu12", "nu23", "G23_GPa"))
    warn = []
    ply_ok = None not in (E1, E2, G12, nu12, nu23)
    if ply_ok:
        if not (E1 > 0 and E2 > 0 and G12 > 0):
            warn.append("non-positive modulus")
        if not abs(nu12) < math.sqrt(E1 / E2):
            warn.append("|nu12| >= sqrt(E1/E2)")
        if not 0 < nu23 < 1:
            warn.append("nu23 outside (0, 1)")
        if not 1 - nu12 ** 2 * E2 / E1 > 0:
            warn.append("1 - nu12^2 E2/E1 <= 0")
        ply_ok = not warn
    if None not in (E2, nu23, G23):
        rel = E2 / (2 * (1 + nu23))
        if abs(G23 - rel) > 0.01 * rel + 0.006:
            warn.append(f"G23 {G23} != E2/(2(1+nu23)) = {rel:.2f}")
    s = {k: g(k) for k in ("Xt_MPa", "Xc_MPa", "Yt_MPa", "Yc_MPa", "S12_MPa")}
    th_ok = None not in s.values()
    if th_ok:
        if not s["Xt_MPa"] > s["Yt_MPa"]:
            warn.append("Xt <= Yt")
        if not s["Yc_MPa"] > s["Yt_MPa"]:
            warn.append("Yc <= Yt")
    return ply_ok, th_ok, warn


def main():
    src = sys.argv[1] if len(sys.argv) > 1 else SRC
    dst = sys.argv[2] if len(sys.argv) > 2 else DST
    comments, header, rows = read(src)

    with open(src, "w", encoding="utf-8") as f:
        for c in comments:
            f.write(c + "\n")
        write_table(f, header, [[r[h] for h in header] for r in rows])

    si_header = [UNITS[h][0] if h in UNITS else h for h in header]
    with open(dst, "w", encoding="utf-8") as f:
        f.write("# UD lamina property catalog (SI units: Pa, m). GENERATED from\n")
        f.write(f"# {os.path.basename(src)} by lamina_catalog_to_SI.py; edit the readable file, then rerun.\n")
        f.write("# Notes, estimate markers (*) and sources below are those of the readable file.\n")
        for c in comments[1:]:
            f.write(c + "\n")
        write_table(f, si_header, [[to_si(r[h], UNITS[h][1]) if h in UNITS else r[h]
                                    for h in header] for r in rows])

    ply, th = [], []
    for r in rows:
        p, t, warn = check(r)
        if p:
            ply.append(r["ID"])
        if t:
            th.append(r["ID"])
        for w in warn:
            print(f"WARNING {r['ID']}: {w}")
    print(f"{len(rows)} rows written to {dst}")
    print(f"PlyPropertyGenerator-ready ({len(ply)}): {' '.join(ply)}")
    print(f"Tsai-Hill-ready ({len(th)}): {' '.join(th)}")
    print(f"both ({len(set(ply) & set(th))}): {' '.join(i for i in ply if i in th)}")


if __name__ == "__main__":
    main()
