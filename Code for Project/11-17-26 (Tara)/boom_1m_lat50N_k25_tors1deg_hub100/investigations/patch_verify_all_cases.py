"""One-off patch (11-17-26, Tara, user request): study.py verify --all-cases writes an Abaqus script for every
OpenSeesPy load case of the design (static, loadcases torque / extra tip loads, buckling); verify-result takes
one --comparison per case for such a record; finalize requires an all-cases verification of the best design."""
from pathlib import Path
p = Path(r'F:\Tara\BenazzoVenkatadri_ThinShellSims\.claude\orchestrator\tools\study.py')
s = p.read_text(encoding='utf-8')


def rep(a, b):
    global s
    assert s.count(a) == 1, (s.count(a), a[:80])
    s = s.replace(a, b)


rep("""    study.py verify <iter>                         Abaqus script (opensees-to-abaqus) + the run_abaqus.py command
    study.py verify-result <iter> --verdict agree|disagree|inconclusive --comparison FILE [--note ..]""",
    """    study.py verify <iter> [--all-cases]           Abaqus script (opensees-to-abaqus) + the run_abaqus.py command;
                                                   --all-cases: one script per OpenSeesPy load case (static,
                                                   loadcases, buckling); required for the final best design
    study.py verify-result <iter> --verdict agree|disagree|inconclusive --comparison FILE [--comparison ..] [--note ..]""")

# verify: all cases
rep("""    if (idir / 'buckling.json').exists() and d.get('buckling_value') is not None:
        fb = final_B(idir, d)
        if fb:
            print(fb)
        bscript, bmsg = abaqus_buckling_script(idir, d)
        print(bmsg)
    V['records'].append(dict(iter=i, design=d['key'], type=d['type'], status='pending', verdict=None,
                             requested=dt.datetime.now().isoformat(timespec='seconds'), k_ratio=d.get('k_ratio'),
                             objective=d.get('objective'), instructions=rel(instr)))""",
    """    abq = idir / f'abaqus_{d["name"]}.py'
    cases = [dict(case='static', abaqus=rel(abq), opensees_npz=rel(idir / 'results' / (d['name'] + '.npz')))]
    bscript = None
    if (idir / 'buckling.json').exists() and d.get('buckling_value') is not None:
        fb = final_B(idir, d)
        if fb:
            print(fb)
        bscript, bmsg = abaqus_buckling_script(idir, d)
        print(bmsg)
    if getattr(a, 'all_cases', False):
        # every OpenSeesPy load case of the design (11-17-26, Tara, user request): the loadcases-step scripts
        for tag in (d.get('loadcase_F') or {}):
            ls = idir / f'{d["name"]}_{tag}_opensees.py'
            if not ls.exists():
                die(f'load case {tag}: assembled script {rel(ls)} missing (rerun the loadcases step)')
            code, _ = run_cmd(['opensees-to-abaqus/opensees_to_abaqus.py', ls], idir / 'logs' / f'abaqus_{tag}.log')
            if code:
                die(f'opensees-to-abaqus model check FAILED for load case {tag} (log '
                    f'{rel(idir / "logs" / ("abaqus_" + tag + ".log"))})')
            cases.append(dict(case=tag, abaqus=rel(idir / f'abaqus_{d["name"]}_{tag}.py'),
                              opensees_npz=rel(idir / 'results' / f'{d["name"]}_{tag}.npz')))
        if bscript:
            cases.append(dict(case='buckling', abaqus=rel(bscript), opensees_npz=None,
                              opensees_reference=dict(value=d.get('buckling_value'), kind=d.get('buckling_kind'))))
    V['records'].append(dict(iter=i, design=d['key'], type=d['type'], status='pending', verdict=None,
                             requested=dt.datetime.now().isoformat(timespec='seconds'), k_ratio=d.get('k_ratio'),
                             objective=d.get('objective'), instructions=rel(instr),
                             all_cases=bool(getattr(a, 'all_cases', False)), cases=cases))""")
rep("""    abq = idir / f'abaqus_{d["name"]}.py'
    print(f'Abaqus script ready for iteration {i}: {rel(abq)} (model check passed).')""",
    """    print(f'Abaqus script ready for iteration {i}: {rel(abq)} (model check passed).')
    if len(cases) > 1:
        print(f'all-cases verification: {len(cases)} Abaqus scripts, run them ONE AT A TIME with the runner and '
              'compare each with its OpenSees results (verify-result takes one --comparison per case, in this order):')
        for c in cases:
            print(f'  [{c["case"]}] {c["abaqus"]}  vs  {c["opensees_npz"] or "the OpenSees buckling value " + str(c.get("opensees_reference"))}')""")
# verify-result: several comparisons
rep("""    if not Path(a.comparison).exists():
        die(f'{a.comparison} does not exist: the OpenSeesAbaqusResultsComparator report is required')
    rec.update(status='done', verdict=a.verdict, comparison=rel(a.comparison), note=a.note or '')""",
    """    for c in a.comparison:
        if not Path(c).exists():
            die(f'{c} does not exist: the OpenSeesAbaqusResultsComparator report is required')
    n_need = len(rec.get('cases') or [None]) if rec.get('all_cases') else 1
    if len(a.comparison) < n_need:
        die(f'this all-cases verification has {n_need} load cases '
            f'({", ".join(c["case"] for c in rec["cases"])}): give one --comparison per case')
    rec.update(status='done', verdict=a.verdict, comparison=rel(a.comparison[0]),
               comparisons=[rel(c) for c in a.comparison], note=a.note or '')""")
rep("""    p.add_argument('--comparison', required=True)""",
    """    p.add_argument('--comparison', required=True, action='append')""")
# verify parser flag
rep("""    for name, f in (('record', cmd_record), ('converge', cmd_converge), ('verify', cmd_verify)):
        p = sp.add_parser(name)
        p.add_argument('iter', type=int)
        p.add_argument('--study')
        p.set_defaults(f=f)""",
    """    for name, f in (('record', cmd_record), ('converge', cmd_converge), ('verify', cmd_verify)):
        p = sp.add_parser(name)
        p.add_argument('iter', type=int)
        p.add_argument('--study')
        p.set_defaults(f=f)
        if name == 'verify':
            p.add_argument('--all-cases', action='store_true',
                           help='one Abaqus script per OpenSeesPy load case (static, loadcases, buckling)')""")
p.write_text(s, encoding='utf-8')
print('ok')
