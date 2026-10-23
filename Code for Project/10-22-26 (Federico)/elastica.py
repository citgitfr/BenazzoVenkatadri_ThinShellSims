"""
Large-deflection (elastica) solution for an inextensible cantilever with a
vertical tip load P that keeps its direction (non-follower).

With s the arc length from the clamp and theta(s) the slope:
  EI theta'' = -P cos(theta),   theta(0) = 0,   theta'(L) = 0
Non-dimensional load alpha = P L^2 / EI. Small alpha recovers w_tip = PL^3/(3EI).
Reference values: Bisshopp & Drucker (1945), Quart. Appl. Math. 3, 272-275.
"""
import numpy as np
from scipy.integrate import solve_bvp, cumulative_trapezoid


def solve(alpha, n=2001):
    """Return s/L, x/L, y/L, theta along the deformed beam (y positive in the
    load direction)."""
    s = np.linspace(0.0, 1.0, n)

    def rhs(s, u, a):
        return np.vstack([u[1], -a * np.cos(u[0])])

    def bc(u0, u1):
        return np.array([u0[0], u1[1]])

    # Continuation in alpha: start from the linear solution at a small load and
    # reuse each converged shape as the guess for the next, larger load.
    guess = None
    for a in np.geomspace(min(alpha, 0.5), alpha, 1 + int(np.ceil(np.log2(max(alpha, 0.5) / 0.5)) * 4)):
        guess = np.vstack([a * (s - s**2 / 2), a * (1 - s)]) if guess is None else sol.sol(s)
        sol = solve_bvp(lambda s, u: rhs(s, u, a), bc, s, guess, tol=1e-10, max_nodes=100000)
        assert sol.success, sol.message
    theta = sol.sol(s)[0]
    x = cumulative_trapezoid(np.cos(theta), s, initial=0.0)
    y = cumulative_trapezoid(np.sin(theta), s, initial=0.0)
    return s, x, y, theta


def tip(alpha):
    """Tip vertical deflection / L, horizontal shortening / L, tip slope [rad]."""
    _, x, y, theta = solve(alpha)
    return y[-1], 1.0 - x[-1], theta[-1]


def tip_shooting(alpha):
    """Independent check: shoot on the root curvature theta'(0) = k so that the
    free end is moment-free, theta'(1) = 0, using an initial-value solver."""
    from scipy.integrate import solve_ivp
    from scipy.optimize import brentq

    def ivp(k):
        f = lambda s, u: [u[1], -alpha * np.cos(u[0]), np.cos(u[0]), np.sin(u[0])]
        return solve_ivp(f, (0, 1), [0, k, 0, 0], rtol=1e-12, atol=1e-12).y[:, -1]

    # Root moment M(0) = P x_tip, so 0 < k = alpha * x_tip/L <= alpha
    k = brentq(lambda k: ivp(k)[1], 1e-9, alpha, xtol=1e-14)
    theta1, _, x1, y1 = ivp(k)
    return y1, 1.0 - x1, theta1


if __name__ == '__main__':
    # Bisshopp & Drucker (1945): alpha = 1 -> vertical/L = 0.30172, horizontal/L = 0.05643
    for alpha in (1.0, 2.0, 5.0, 10.0):
        v, hz, th = tip(alpha)
        v2, hz2, _ = tip_shooting(alpha)
        print(f'alpha = {alpha:4.1f}: vertical/L = {v:.5f} (shooting {v2:.5f}), '
              f'horizontal/L = {hz:.5f} (shooting {hz2:.5f}), tip slope = {np.degrees(th):.1f} deg')
