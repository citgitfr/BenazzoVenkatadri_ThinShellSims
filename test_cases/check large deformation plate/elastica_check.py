"""Independent check of FE cantilever-plate results against the elastica.

Pure Python (no numpy). Two independent methods:
  A) shooting on  theta'' = -alpha cos(theta), theta(0)=0, theta'(1)=0  (RK4)
  B) Bisshopp-Drucker closed form with elliptic integrals (Gauss-Legendre quad)
"""
import math, re, sys

path = sys.argv[1]
txt = open(path).read()

E = float(re.search(r"E\s+=\s+([\d.]+)\s*MPa", txt).group(1))
nu = float(re.search(r"nu\s+=\s+([\d.]+)", txt).group(1))
L = float(re.search(r"L = ([\d.]+) mm", txt).group(1))
b = float(re.search(r"b = ([\d.]+) mm", txt).group(1))
t = float(re.search(r"t = ([\d.]+) mm", txt).group(1))
I = b * t**3 / 12
EI = E * I
EIp = EI / (1 - nu**2)
print(f"E={E} MPa nu={nu} L={L} b={b} t={t} mm")
print(f"I = {I:.6e} mm^4, EI = {EI:.4f} N mm^2, EI/(1-nu^2) = {EIp:.4f} N mm^2")
print(f"b/t = {b/t:.0f}, L/b = {L/b:.0f}")

rows = []
for line in txt.split("RESULTS")[1].split("REFERENCE")[0].splitlines():
    p = line.split()
    if len(p) == 7 and p[0].isdigit():
        rows.append(tuple(float(x) for x in p))

# ---- Method A: shooting ----
def integrate(alpha, k0, n=2000):
    h = 1.0 / n
    th, k, x, z = 0.0, k0, 0.0, 0.0
    f = lambda th, k: (k, -alpha * math.cos(th), math.cos(th), math.sin(th))
    for _ in range(n):
        a = f(th, k)
        bb = f(th + h/2*a[0], k + h/2*a[1])
        c = f(th + h/2*bb[0], k + h/2*bb[1])
        d = f(th + h*c[0], k + h*c[1])
        th += h/6*(a[0]+2*bb[0]+2*c[0]+d[0])
        k  += h/6*(a[1]+2*bb[1]+2*c[1]+d[1])
        x  += h/6*(a[2]+2*bb[2]+2*c[2]+d[2])
        z  += h/6*(a[3]+2*bb[3]+2*c[3]+d[3])
    return k, x, z, th

def shoot(alpha):
    if alpha == 0:
        return 0.0, 0.0
    # theta'(1) as function of k0 is monotone on [0, alpha]
    lo, hi = 0.0, alpha
    for _ in range(60):
        mid = 0.5 * (lo + hi)
        if integrate(alpha, mid, 400)[0] > 0: hi = mid
        else: lo = mid
    k1, x, z, th = integrate(alpha, 0.5*(lo+hi))
    return z, 1 - x  # v/L, h/L

# ---- Method B: elliptic integrals ----
GL_X, GL_W = None, None
def gauss(n=64):
    xs, ws = [], []
    for i in range(1, n+1):
        x = math.cos(math.pi*(i-0.25)/(n+0.5))
        for _ in range(100):
            p0, p1 = 1.0, x
            for j in range(2, n+1):
                p0, p1 = p1, ((2*j-1)*x*p1 - (j-1)*p0)/j
            dp = n*(x*p1 - p0)/(x*x - 1)
            dx = p1/dp; x -= dx
            if abs(dx) < 1e-15: break
        xs.append(x); ws.append(2/((1-x*x)*dp*dp))
    return xs, ws
GL_X, GL_W = gauss()
def quad(f, a, c):
    m, r = 0.5*(a+c), 0.5*(c-a)
    return r*sum(w*f(m+r*x) for x, w in zip(GL_X, GL_W))
F = lambda phi, k: quad(lambda s: 1/math.sqrt(1-(k*math.sin(s))**2), 0, phi)
Ei = lambda phi, k: quad(lambda s: math.sqrt(1-(k*math.sin(s))**2), 0, phi)

def closed_form(theta0):
    """Tip rotation theta0 -> (alpha, v/L, h/L)."""
    k = math.sqrt((1 + math.sin(theta0)) / 2)
    phi1 = math.asin(1 / (math.sqrt(2) * k))
    sa = F(math.pi/2, k) - F(phi1, k)
    alpha = sa**2
    v = 1 - 2/sa * (Ei(math.pi/2, k) - Ei(phi1, k))
    x = math.sqrt(2 * math.sin(theta0)) / sa
    return alpha, v, 1 - x

def elliptic(alpha):
    if alpha == 0:
        return 0.0, 0.0
    lo, hi = 1e-9, math.pi/2 - 1e-9
    for _ in range(60):
        mid = 0.5*(lo+hi)
        if closed_form(mid)[0] < alpha: lo = mid
        else: hi = mid
    _, v, h = closed_form(0.5*(lo+hi))
    return v, h

# FE alpha is P L^2 / EI (beam). For plate stiffness alpha_p = alpha*(1-nu^2).
fac = 1 - nu**2
print("\nCheck of P column: P = alpha*EI/L^2")
maxerr = max(abs(a*EI/L**2 - P)/P for _, a, P, *_ in rows if P > 0)
print(f"  max relative mismatch = {maxerr:.2e}")

print("\nCross-check method A vs B (beam EI):")
for a in (0.5, 2.0, 6.8):
    print(f"  alpha={a}: shoot v/L,h/L = {shoot(a)[0]:.6f},{shoot(a)[1]:.6f}   "
          f"elliptic = {elliptic(a)[0]:.6f},{elliptic(a)[1]:.6f}")

hdr = (" step  alpha   v_FE    v_lin   v_beam  v_plate  err_beam err_plate"
       "    h_FE   h_beam  h_plate  err_beam err_plate")
print("\nAll displacements in mm; err = (FE-analytical)/analytical in %\n" + hdr)
out = []
for st, a, P, v, h, _, _ in rows:
    if a == 0: continue
    vb, hb = elliptic(a)
    vp, hp = elliptic(a * fac)
    vlin = a / 3 * L
    vb, hb, vp, hp = vb*L, hb*L, vp*L, hp*L
    out.append((st, a, v, vb, vp, h, hb, hp))
    print(f"{int(st):5d} {a:6.4f} {v:7.2f} {vlin:7.2f} {vb:7.2f} {vp:7.2f} "
          f"{100*(v-vb)/vb:7.2f}  {100*(v-vp)/vp:7.2f}   {h:7.2f} {hb:7.2f} {hp:7.2f} "
          f"{100*(h-hb)/hb:7.2f}  {100*(h-hp)/hp:7.2f}")

print("\nFile's REFERENCE table re-evaluated:")
for a in (0.5, 1, 2, 3, 5):
    vb, hb = elliptic(a); vp, hp = elliptic(a*fac)
    print(f"  alpha={a}: v/L beam {vb:.4f} plate {vp:.4f} | h/L beam {hb:.4f} plate {hp:.4f}")
