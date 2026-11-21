# Orchestrator: re-evaluate the study's existing FE results against bending stiffness >= 40 N/mm
# (user request 2026-11-21). Uses study.py's own helpers and objective_constraints.py; study state untouched.
import sys, json, copy, csv
from pathlib import Path
sys.path.insert(0, r'C:/Users/fbenazzo/Desktop/ME295/BenazzoVenkatadri_ThinShellSims/.claude/orchestrator/tools')
import study as S
sd = Path(__file__).resolve().parent.parent; out = Path(__file__).resolve().parent
req = json.load(open(sd / 'requirements.json'))
req['requirements']['bending_stiffness']['min_N_per_mm'] = 40.0
req['requirements']['bending_stiffness']['text'] = ('relaxed by the user 2026-11-21: tip deflection <= 2.5 mm under 100 N '
                                                     '(cantilever, load along z): k >= 40 N/mm')
json.dump(req, open(out / 'requirements_k40.json', 'w'), indent=1)
cons = S.constraints_from(S._clean(req)); json.dump(cons, open(out / 'constraints_k40.json', 'w'), indent=1)
rows = []
for idir in sorted((sd / 'iterations').glob('it0*')):
    d = json.load(open(idir / 'design.json'))
    npz = idir / 'results' / f"{d['name']}.npz"
    vals = S._custom_values(d) + S._loadcase_values(d)
    if d.get('F_hub') is not None: vals += ['--value', f'F_hub={d["F_hub"]}']
    if d.get('buckling_value') is not None: vals += ['--value', f'buckling_load={d["buckling_value"]}']
    js = out / f"{idir.name}_objcon_k40.json"
    S.run_cmd(['objective-constraints/objective_constraints.py', npz, '--constraints', out / 'constraints_k40.json']
              + S._boom_args(d) + S._fail_args(d) + ['--flatten-radius', d['r_min'], '--json', js] + vals,
              out / f"{idir.name}_objcon_k40.log")
    oc = json.load(open(js))
    st = {c['name']: (c.get('status'), c.get('value')) for c in oc['constraints']}
    rows.append(dict(it=idir.name, design=d['key'], mass_g=round(oc['objective']['value'] * 1e3, 1),
                     k=round(st['bending stiffness'][1], 2), F_gov=round(st['no failure'][1], 3),
                     statuses=';'.join(f'{n}={s}' for n, (s, v) in st.items()), feasible=oc.get('feasible')))
with open(out / 'reassess_k40.csv', 'w', newline='') as f:
    w = csv.DictWriter(f, fieldnames=list(rows[0])); w.writeheader(); w.writerows(rows)
for r in sorted(rows, key=lambda r: r['mass_g']):
    print(r['it'], r['design'], r['mass_g'], 'g  k', r['k'], ' F', r['F_gov'], ' feasible', r['feasible'], '|', r['statuses'])
