"""
Method B check on the tape-spring columns of verify_column_buckling.py:
imperfect geometry (mode of method A, amplitude L/1000), displacement control
of the node with the largest mode displacement, Southwell plot
(delta / P = delta / P_cr + a0 / P_cr, fitted on the points beyond
delta > 0.5 a0) -> P_cr. Both elements: ASDShellQ4 corotational (complete
nonlinear residual) and ShellNLDKGQ.

Reason: method A (ShellNLDKGQ K_T eigenvalues) gave +7% (L = 300,
flexural-torsional) and +31% (L = 1200, flexural) above thin-walled theory,
mesh-converged, = 1 / mean(cos^2) of the facet inclination for the
flexural mode: ShellNLDKGQ's geometric stiffness seems to contain only the
facet-normal displacement gradients. Does its residual (path) have the same
defect, and does ASDShellQ4 recover the theory?

    python verify_column_path_B.py
"""
import json
import time

from verify_column_buckling import *     # noqa: F401,F403  (models, constants, sb, ops, np)


def southwell(P, d, a0):
    k = (d > 0.5 * a0) & (d < 10 * a0)          # Southwell line: moderate deflections only
    if k.sum() < 3:
        k = np.argsort(d)[-3:]
    s, c = np.polyfit(d[k], d[k] / P[k], 1)
    return 1.0 / s


def main():
    G2 = E2 / (2 * (1 + NU2))
    props = sb.section_properties(sb.section_points(sm.CrossSection.arc(R2, B2)), T2)
    res = {}
    for L, size in ((1200.0, 5.0), (300.0, 2.0)):
        ref = sb.column_buckling(props, E2, G2, L)['P_cr']
        tape_builder(L, size)()
        rA = sb.stability_path({'type': 'load'}, 0.35 * ref, max_steps=60, n_eig=3, verbose=False)
        PA, mode = rA['critical']['load_factor'], rA['critical']['mode']
        np.savez(HERE / 'results' / f'column_modeA_L{L:g}_h{size:g}.npz', nodes=np.array(list(mode)),
                 vec=np.array(list(mode.values())))
        node = max(mode, key=lambda n: np.linalg.norm(mode[n]))
        dof = 1 + int(np.argmax(np.abs(mode[node])))
        sgn = np.sign(mode[node][dof - 1])
        a0 = L / 1000
        print(f'L = {L:g}, h = {size:g}: theory {ref:.4f} N, method A {PA:.4f} N; control node {node} dof {dof}', flush=True)
        for el in ('ASDShellQ4', 'ShellNLDKGQ'):
            t0 = time.perf_counter()
            tape_builder(L, size, el, mode, a0)()
            # load control (ASDShellQ4's tangent cannot drive a buckling DOF), up to 0.9 of the A estimate
            h, peak, k = sb.imperfect_path({'type': 'load'}, 0.05 * PA, n_steps=18,
                                           record=lambda: [sgn * ops.nodeDisp(node, dof)], verbose=False)
            P, d = h[1:, 1], h[1:, 2]
            Ps = southwell(P, d, a0)
            res[f'L={L:g} {el}'] = dict(theory=ref, A=PA, southwell=Ps, P_last=float(P[-1]), d_last=float(d[-1]),
                                        a0=a0, time=time.perf_counter() - t0, P=P.tolist(), d=d.tolist(),
                                        A_history=rA['history'][:, :3].tolist())
            print(f'  B {el:12s}: P at delta = {d[-1]:.2f} mm: {P[-1]:.4f} N; Southwell P_cr = {Ps:.4f} N '
                  f'({100 * (Ps / ref - 1):+.2f}% vs theory); {time.perf_counter() - t0:.0f} s', flush=True)
    (HERE / 'results' / 'column_path_B.json').write_text(json.dumps(res, indent=1))


if __name__ == '__main__':
    main()
