"""
Mesh-size pre-study for the CTM buckling studies (11/10/26, Tara): shell-buckling boom_buckling.py step A
(ShellNLDKGQ tangent-eigenvalue scan, perfect geometry) for the three P&L load cases at one design
(r1 = 25.62 mm, alpha = pi/2: P&L's axial optimum), L = 500 mm, several element sizes. The section and
laminates are exactly those study.py custom mode builds (ctm_section, buckling-twin laminates).

    python make_cases.py            # writes case_<load>_<size>.json here
    python <repo>/.claude/skills/shell-buckling/boom_buckling.py case_axial_5.json --out results --only A
"""
import json
import math
import sys
from pathlib import Path

HERE = Path(__file__).resolve().parent
REPO = HERE.parents[2]
sys.path.insert(0, str(REPO / '.claude' / 'orchestrator' / 'tools'))
import study  # noqa: E402

LAM = 'Code for Project/11-10-26 (Tara)/laminates/'
CD = dict(h_mm=130.0, w_mm=4.5)
R1, AL, L = 25.62, math.pi / 2, 500.0
REF = dict(axial=545.0, Mx=11610.0, My=10270.0)        # P&L maxima, only to size the scan range
sys.path.insert(0, str(REPO / '.claude' / 'skills' / 'laminate-properties'))
import laminate_properties as lp  # noqa: E402

sec, r2, _ = study.ctm_section(CD, R1, AL, LAM + 'lam_web_exactPL.json')
sp = study.custom_section_props(sec, lp.Laminate.load(REPO / LAM / 'lam_shell_exactPL.json'),
                                lp.Laminate.load(REPO / LAM / 'lam_web_exactPL.json'))
print(f'r2 = {r2:.4f} mm, EA {sp["EA"]:.5g}, EI_about_y {sp["EIz"]:.5g}, EI_about_z {sp["EIy"]:.5g}')
for load in ('axial', 'Mx', 'My'):
    if load == 'axial':
        ld, mx = {'type': 'compression', 'ends': 'free_tip'}, 2 * REF[load] * L / sp['EA']
    else:
        ld = {'type': 'bending', 'axis': 'y' if load == 'Mx' else 'z', 'sign': 1}
        mx = 2 * REF[load] * L / (sp['EIz'] if load == 'Mx' else sp['EIy'])
    for size in (5.0, 3.5, 2.5):
        case = {'name': f'{load}_{size:g}', 'laminate': {'json': str(REPO / LAM / 'lam_shell_exactPL.json')},
                'geometry': {'L': L, 'section': sec, 'size': size}, 'load': ld,
                'A': {'step': mx / 10, 'max': mx, 'n_coarse': 8, 'n_rounds': 1, 'workers': 16, 'tol': 1e-6, 'max_cuts': 2,
                      'max_iter': 30}}
        (HERE / f'case_{load}_{size:g}.json').write_text(json.dumps(case, indent=1))
        print(f'case_{load}_{size:g}.json: scan to {mx:.4g}')
