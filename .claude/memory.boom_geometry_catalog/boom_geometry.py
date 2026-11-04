"""Cross-section geometry of coilable booms: arc chains, chords, and solvers
that design a second shell/flange with the same flattened width.

Arc chains are lists of (R [mm], theta [deg]) with the sign conventions of
make_boom_catalog.py (OM/CO: theta > 0 convex, < 0 concave).
"""
import math


def walk(arcs, start=(0.0, 0.0), heading=0.0, n=40):
    """Points of a chain of arcs (R, turn [rad], turn > 0 = CCW) from start, initial heading [rad]."""
    y, z, th = start[0], start[1], heading
    pts = [(y, z)]
    for R, turn in arcs:
        dth = turn / n
        step = 2 * R * math.sin(abs(dth) / 2)   # chord of one arc step
        for _ in range(n):
            mid = th + dth / 2
            y, z = y + step * math.cos(mid), z + step * math.sin(mid)
            th += dth
            pts.append((y, z))
    return pts, th


def arc_length(part):
    return sum(R * math.radians(abs(t)) for R, t in part)


def chord_vector(part):
    """Exact end-point offset of an OM/CO shell flange walked from heading 0 (convex turns CW)."""
    y = z = th = 0.0
    for R, t in part:
        turn = -math.radians(t)
        c = 2 * R * math.sin(abs(turn) / 2)
        y, z, th = y + c * math.cos(th + turn / 2), z + c * math.sin(th + turn / 2), th + turn
    return y, z


def closed_shell(part):
    """Points of one OM/CO shell flange with both ends on z = 0, starting at the origin, upper side.
    Returns points, chord, start and end heading from +y [deg] (0 = tangent to the webs)."""
    pts, _ = walk([(R, -math.radians(t)) for R, t in part])
    dy, dz = chord_vector(part)
    rot = -math.atan2(dz, dy)
    c, s = math.cos(rot), math.sin(rot)
    pts = [(y * c - z * s, y * s + z * c) for y, z in pts]
    total = -sum(math.radians(t) for _, t in part)
    return pts, math.hypot(dy, dz), math.degrees(rot), math.degrees(rot + total)


def chord(part):
    return math.hypot(*chord_vector(part))


# --- design helpers -------------------------------------------------------------------------

def omega(R_t, th_t, R_c):
    """Symmetric 3-arc omega shell tangent to both webs: concave transition (R_t, th_t),
    convex centre (R_c, 2 th_t), concave transition."""
    return [(R_t, -th_t), (R_c, 2 * th_t), (R_t, -th_t)]


def corrugated(n, r_w, r_v, r_c, a, b):
    """Symmetric corrugated shell with n convex lobes (2n + 1 arcs) tangent to both webs: web arcs
    (r_w, -a), convex lobes (r_v, b), concave valleys (r_c, -c) with c = (n b - 2 a)/(n - 1) so that the
    signed angles sum to zero (COROTUB-type geometry)."""
    c = (n * b - 2 * a) / (n - 1)
    arcs = [(r_w, -a)]
    for k in range(n):
        arcs.append((r_v, b))
        arcs.append((r_c, -c) if k < n - 1 else (r_w, -a))
    return arcs


def match(template, part, lo, hi):
    """Partner shell for `part`: template(p) gives a unit-size arc chain for shape parameter p in
    [lo, hi]; p is found so that chord/arc length equals that of `part`, then all radii are scaled so
    that the arc length (hence the flattened width) is the same. Returns [(R, theta), ...]."""
    target = chord(part) / arc_length(part)
    ratio = lambda p: chord(template(p)) / arc_length(template(p))
    f_lo = ratio(lo) - target
    if f_lo * (ratio(hi) - target) > 0:
        raise ValueError(f"no shape in [{lo}, {hi}] matches chord/length {target:.4f}")
    for _ in range(200):
        mid = (lo + hi) / 2
        if (ratio(mid) - target) * f_lo > 0:
            lo = mid
        else:
            hi = mid
    unit = template((lo + hi) / 2)
    k = arc_length(part) / arc_length(unit)
    return [(R * k, t) for R, t in unit]


def tangent(part, d=2):
    """Round radii and angles to d decimals (as printed in the catalog) and give the rounding residual of
    the angle sum to the middle arc, so that the printed chain is exactly tangent to both webs
    (sum of signed angles = 0). Returns the chain and the correction applied [deg]."""
    out = [(round(R, d), round(t, d)) for R, t in part]
    m = len(out) // 2
    res = round(-sum(t for _, t in out), d)
    out[m] = (out[m][0], round(out[m][1] + res, d))
    return out, res
