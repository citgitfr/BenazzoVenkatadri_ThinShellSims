"""Narrative PDF report of the boom_1m_lat50N_k25_tors1deg_hub100 study (user request 2026-11-19): what was asked,
how the pre-screen removed candidates, the path through the 20 iterations and why each was chosen, when and why
Abaqus verifications were run and what they showed, and why no untested catalog design can beat the final one.
Numbers are read from the study files (ledger.csv, screen/, investigations/*.json); the prose was written by the
orchestrator from the session. Writes NARRATIVE_REPORT.html and prints it to NARRATIVE_REPORT.pdf with headless
Chrome (no PDF library in the project's Python environments; the temporary browser profile is created inside this
folder and removed afterwards).
Usage: python narrative_report.py   (run design_space_plots.py, screen_by_family.py, lighter_than_best.py first)"""
import csv
import html
import json
import shutil
import subprocess
from pathlib import Path

HERE = Path(__file__).resolve().parent
STUDY = HERE.parent
OUT_HTML = STUDY / 'NARRATIVE_REPORT.html'
OUT_PDF = STUDY / 'NARRATIVE_REPORT.pdf'
CHROME = Path(r'C:\Program Files\Google\Chrome\Application\chrome.exe')

led = {int(r['iter']): r for r in csv.DictReader(open(STUDY / 'ledger.csv'))}
fam = json.loads((HERE / 'screen_by_family.json').read_text())
lt = json.loads((HERE / 'lighter_than_best.json').read_text())
scr = json.loads((STUDY / 'screen' / 'screen_summary.json').read_text())
LAY = {'Y001': '[0/0/0]', 'Y009': '[30/0/30]', 'Y017': '[0/30/30/0]', 'Y024': '[30/0/0/30]', 'Y025': '[45/0/0/45]',
       'Y026': '[60/0/0/60]', 'Y027': '[90/0/0/90]', 'Y029': '[-45/0/0/-45]', 'Y030': '[-60/0/0/-60]',
       'Y031': '[0/0/0/0/0]', 'Y033': '[0/0/45/0/0]', 'Y047': '[0/45/0/45/0]', 'Y095': '[30/0/0/0/30]',
       'Y107': '[30/-30/0/-30/30]'}
MAT = {'L002': 'IM7/8552', 'L006': 'IM7/MTM45-1', 'L011': 'T1100G/3960', 'L017': 'IM7 (L017)', 'L028': 'M55J/PAEK',
       'L029': 'AS4D (L029)', 'L030': 'T1100GC/PAEK', 'L038': 'M30SC/PEEK thin-ply'}


def g(i):
    return float(led[i]['mass_kg']) * 1e3


def fmt(x, nd=0):
    return f'{x:,.{nd}f}'


def img(path, caption, width='100%'):
    rel = Path(path).relative_to(STUDY).as_posix()
    return (f'<figure><img src="{html.escape(rel)}" style="width:{width}"><figcaption>{caption}</figcaption>'
            f'</figure>')


def table(head, rows, cls=''):
    h = ''.join(f'<th>{c}</th>' for c in head)
    b = ''.join('<tr>' + ''.join(f'<td>{c}</td>' for c in r) + '</tr>' for r in rows)
    return f'<table class="{cls}"><thead><tr>{h}</tr></thead><tbody>{b}</tbody></table>'


# ---------------- iteration table ----------------
OUTCOME = {
    1: 'too flexible: k = 16.9 N/mm', 2: 'buckled: stalled at 6.5-12.7 kN mm', 3: 'too flexible: k = 24.7 N/mm',
    4: '<b>feasible</b> (B &ge; 57.3 kN mm)', 5: '<b>feasible</b> (B &ge; 51.9)', 6: '<b>feasible, final design</b> (B &ge; 52.2; Abaqus 55.4-56.4)',
    7: 'passes B (&ge; 51.0) but Abaqus first buckling 48.4-49.5: <b>fails strict</b>',
    8: 'passes B (&ge; 50.2) but Abaqus first buckling 48.4-49.5: <b>fails strict</b>',
    9: 'buckled: stalled at 25.3', 10: 'too flexible (k_FE 24.6): buckling skipped', 11: 'buckled: stalled at 27.3',
    12: 'buckled: stalled at 30.2', 13: '<b>feasible</b> (B &ge; 66.6), but +25% mass', 14: '<b>feasible</b> (B &ge; 52.1)',
    15: '<b>feasible</b> (B &ge; 52.2)', 16: 'buckled: stalled at 38.2', 17: 'buckled: stalled at 48.5',
    18: 'buckled: stalled at 31.8', 19: 'buckled: stalled at 25.8', 20: 'buckled: stalled at 27.4 (stopped at 2 h)'}
WHY = {
    1: 'Lightest screen candidate (stiffest material per mass, thinnest layup, lightest closed omega). Also the end-to-end test of the chain including the new torsion/lateral load-case step.',
    2: 'New family (corrugated) with a higher-G12 material, chosen because iteration 1 showed shear deformation is ~39% of the tip deflection.',
    3: 'Back to the verified omega, 5 plies for the 50 kN mm moment; &plusmn;45 plies added for shear stiffness. Buckling estimate +40% to cover the expected knockdown.',
    4: 'Change one variable from it003 (layup): outer 30&deg; plies raise transverse bending stiffness of the walls (D22) and the buckling moment while keeping k.',
    5: 'Of 613 untried designs lighter than 110 g only L028 [30/0/0/30] C005 was predicted feasible (buckling +3%).',
    6: 'User request: test whether the buckling estimate is conservative for some family. C008 has the most lighter designs that fail only the buckling estimate; this one was 6% short.',
    7: 'it006 showed the C008 estimate is &ge; 11% conservative; this lighter design was 13% short, so it passes only if the margin is larger. The last plausible lighter design.',
    8: 'Mirror layup of it007 (same mass): the unbalanced layup has bend-twist coupling, so lateral buckling could depend on the sign of the &plusmn;45 plies; it007 passed by only 2%.',
    9: 'User-requested long shot: 21% lighter, buckling estimate 42% short; passes only if C008 is ~1.7x conservative. Otherwise gives a real off-axis C008 strength.',
    10: 'Omega calibration with an all-0 layup (inside the domain of the buckling fit).',
    11: 'Replacement for it010 (which missed stiffness, so its buckling was skipped): same purpose on the verified M006 omega.',
    12: 'Corrugated calibration inside the fit domain: this exact design was in the 35-run segment-LBA calibration set, so its path B gives the LBA-to-path-B knockdown directly.',
    13: 'User request: one balanced laminate (no extension-shear / bend-twist coupling) to show its mass cost.',
    14: 'Robustness: the passing C008 [60/0/0/60] design with a different material (L030).',
    15: 'Robustness: a third material (L002) on C008 [60/0/0/60].',
    16: 'A C008 4-ply off-axis design expected to buckle well below 50 kN mm, to measure a REAL strength (the passing runs only gave lower bounds).',
    17: 'C006 family probe with the winning layup [60/0/0/60]: does the C008 conservatism carry over to another corrugated family? It is 0.03 g heavier than it006.',
    18: 'C007, the last corrugated family not run, same layup as it005/it016 so the families compare directly.',
    19: 'A real C005 off-axis strength (it005 passed, lower bound only).',
    20: 'A real off-axis omega strength (it004 passed, lower bound only; it011 showed the omega estimate is too high).'}
it_rows = []
for i in range(1, 21):
    r = led[i]
    it_rows.append([str(i), f'{r["material"]}<br><span class="sm">{MAT.get(r["material"], "")}</span>',
                    f'{r["layup"]}<br><span class="sm">{LAY.get(r["layup"], "")}</span>', f'{r["geometry"]} ({r["type"]})',
                    f'{g(i):.1f}', f'{float(r["k_fe"]):.1f}', WHY[i], OUTCOME[i]])

# ---------------- screen tables ----------------
GJr = fam['GJ_required_Nmm2']
fam_rows = []
for t, name in (('TS', 'tape spring (open)'), ('TRAC', 'TRAC (open)'), ('OM', 'omega / lenticular (closed)'),
                ('CO', 'corrugated (closed)')):
    o = fam['by_type'][t]
    f = o['fail']
    fam_rows.append([name, fmt(o['evaluated']), fmt(f.get('torsion', 0)), f'{100 * o["max_GJ_over_required"]:.2f}%'
                     if o['max_GJ_over_required'] < 1 else f'{o["max_GJ_over_required"]:,.0f}x',
                     fmt(f.get('stiffness', 0)), fmt(f.get('buckling', 0)) if t != 'TRAC' else 'no estimate',
                     fmt(max(f.get('F_flat >= 1', 0), f.get('F_hub >= 1', 0))) + '+', f'<b>{fmt(o["ok"])}</b>'])
fc = lt['lighter_first_failed_check']
lk = sorted(fc)
surv = lt['not_excluded']
SURV_WHY = {
    'L006/Y025/C008': 'tested: iteration 7. Abaqus first buckling 48.4-49.5 kN mm: fails the strict criterion.',
    'L006/Y029/C008': 'tested: iteration 8. Abaqus first buckling 48.4-49.5 kN mm: fails the strict criterion.',
    'L006/Y026/C008': 'stiffness: with the FE/estimate ratio measured for C008 [60/0/0/60] (0.970-0.973 in it006/014/015) k = 24.7 N/mm &lt; 25. Passes only with the single best ratio of the whole study (0.986, a balanced C005).',
    'L006/Y030/C008': 'mirror of the row above: same stiffness, k = 24.7 N/mm &lt; 25.',
    'L011/Y026/C006': 'tested: iteration 17. Buckled at 48.5 kN mm. Also 0.03 g heavier than it006 in the FE model.',
    'L011/Y030/C006': 'mirror of iteration 17: same mass and stiffness; it017 buckled at 48.5 kN mm.',
    'L011/Y025/C006': 'same FE mass as it017 (0.03 g heavier than it006, so cannot be lighter); its buckling estimate (43.5) is below it017\'s (44.3), which buckled at 48.5.',
    'L011/Y029/C006': 'mirror of the row above.',
    'L011/Y027/C006': 'stiffness: [90/0/0/90] on C006 with the C006 ratio (0.960, it017) gives k = 24.3 N/mm &lt; 25; also 0.03 g heavier than it006.'}
surv_rows = [[s['design'].replace('/', ' / '), LAY.get(s['design'].split('/')[1], ''), f'{s["mass_g"]:.1f}',
              f'{s["k_opt"]:.1f}', f'{s["buckling_opt"] / 1e3:.1f}', SURV_WHY[s['design']]] for s in surv]

# ---------------- verification table ----------------
ver_rows = [
    ['1', 'it001 L028 [0/0/0] M006', 'static (25 N)', 'First design of the study, first omega: checks the whole chain (laminate, mesh, rigid tip, Timoshenko reference) before trusting any result.', 'agree: 81/82 checks; only the drilling rotation at the webs differs (element formulation)'],
    ['2', 'it006 L011 [60/0/0/60] C008', 'static', 'First feasible corrugated design and new best: first check of a closed corrugated section with bonded webs.', 'agree: tip uz -0.12%; flange ply stresses 1-5% RMS; differences only in the end zones'],
    ['3', 'it004 L028 [30/0/0/0/30] M006', 'static', 'Second omega, first 5-ply off-axis laminate (required minimum of 5 verifications spread over families).', 'agree: displacements, curvatures, ply stresses within 0.1-1%'],
    ['4', 'it012 L038 [0/0/0/0/0] C005', 'static', 'Sanity flag: FE/beam-theory stiffness ratio 0.916 vs 0.973 for it006. Was the OpenSees model wrong?', 'agree: tip uz -0.13%. The low ratio is physics of low-G all-0 laminates (shear-area estimate), not a model error'],
    ['5', 'it007 L006 [45/0/0/45] C008', 'all 4 cases', 'It was the best design under the path-B criterion; the user asked that the final design be checked in every OpenSees load case.', 'linear cases agree (0.1-0.5%); buckling: Abaqus first bifurcation 48.4-49.5 kN mm, 1-3% below 50: <b>inconclusive / fails strict</b>'],
    ['6', 'it006 L011 [60/0/0/60] C008', 'all 4 cases', 'After the user chose the strict "no local buckling" criterion, the next-lightest feasible design was checked in every case.', '<b>agree</b>: uz -0.12%, rx +0.36%, uy +0.11%; first bifurcation 55.4-56.4 kN mm (+11-13%)'],
    ['7', 'it008 L006 [-45/0/0/-45] C008', 'buckling', 'User question: had the mirror of it007 actually been checked? It had only been assumed to fail.', 'fails strict: 48.4-49.5 kN mm, identical to it007 within 0.001%'],
]

CSS = """
@page { size: Letter; margin: 17mm 16mm 18mm 16mm; }
body { font-family: 'Segoe UI', Arial, sans-serif; font-size: 9.6pt; line-height: 1.42; color: #1b1b1a; }
h1 { font-size: 19pt; margin: 0 0 2mm 0; }
h2 { font-size: 13pt; margin: 7mm 0 2mm 0; border-bottom: 1px solid #c9c8c2; padding-bottom: 1mm; page-break-after: avoid; }
h3 { font-size: 10.8pt; margin: 4mm 0 1.5mm 0; page-break-after: avoid; }
p { margin: 1.4mm 0 2mm 0; text-align: justify; }
.sub { color: #52514e; font-size: 9.5pt; margin-bottom: 5mm; }
table { border-collapse: collapse; width: 100%; margin: 2mm 0 3mm 0; font-size: 8.3pt; page-break-inside: auto; }
tr { page-break-inside: avoid; }
th { background: #f0efec; text-align: left; padding: 1.2mm 1.4mm; border-bottom: 1px solid #b9b8b3; }
td { padding: 1.1mm 1.4mm; border-bottom: 1px solid #e4e3df; vertical-align: top; }
.sm { color: #52514e; font-size: 7.6pt; }
figure { margin: 3mm 0 4mm 0; page-break-inside: avoid; text-align: center; }
figcaption { font-size: 8.4pt; color: #52514e; text-align: left; margin-top: 1mm; }
.box { background: #f6f5f2; border-left: 3px solid #2a78d6; padding: 2mm 3mm; margin: 3mm 0; }
ul { margin: 1mm 0 2mm 0; padding-left: 5mm; } li { margin: 0.6mm 0; }
.it td:nth-child(7) { width: 37%; } .it td:nth-child(8) { width: 19%; }
.pb { page-break-before: always; }
"""

S = []
S.append(f"""<h1>Designing a minimum-mass coilable composite boom</h1>
<div class="sub">Narrative report of the ThinShellOrchestrator study <i>boom_1m_lat50N_k25_tors1deg_hub100</i>,
17-19 November 2026 (Tara Venkatadri, ME295). Written by Claude from the study files; all numbers come from the
tool outputs (ledger.csv, screen, OpenSees and Abaqus result files).</div>
<div class="box"><b>Result.</b> The lightest design that meets every requirement, including a strict
"no local buckling" check in Abaqus, is <b>iteration 6</b>: material L011 (T1100G/3960 epoxy), layup Y026
[60/0/0/60] (4 plies, 0.14 mm), closed corrugated section C008, <b>104.9 g</b>. Abaqus agrees with OpenSees on all
four load cases. Two lighter designs (iterations 7 and 8, 102.2 g) passed the OpenSees buckling path but their
first buckling in Abaqus is 1-3% below the requirement, so they were rejected. Of the {fmt(lt['counts']['lighter than the final design'])}
catalog designs that are lighter than iteration 6, none can meet all requirements (section 7).</div>

<h2>1. What was asked</h2>
<p>The prompt asked for a composite boom of minimum mass, built from any material, layup and cross-section in the
project catalogs, with these requirements (units N, mm):</p>
{table(['load case / requirement', 'how it was modelled', 'pass condition'], [
    ['Length', 'L = 1000 mm, clamped root, rigid tip fixture', 'L = 1000 mm'],
    ['Transverse bending stiffness: &le; 1 mm deflection under a 25 N tip load', 'linear cantilever, 25 N tip load along z (user: stiffness load along z)', 'k = 25 / u<sub>z</sub> &ge; 25 N/mm'],
    ['No buckling under a 50 N lateral bending load (cantilever)', 'root moment 50 N x 1000 mm = 50,000 N mm about z (user: lateral = y). Applied as a uniform end moment, which puts the root moment along the whole boom (conservative). Imperfection-seeded nonlinear path in OpenSees (path B); later the first bifurcation in Abaqus', 'buckling moment &ge; 50,000 N mm'],
    ['Torsional stiffness: &le; 1&deg; twist under 100 N mm end torque', 'linear cantilever, 100 N mm torque at the rigid tip (step added to study.py at the user\'s request)', 'tip twist &le; 1&deg; (GJ &ge; 5.73 x 10<sup>6</sup> N mm<sup>2</sup>)'],
    ['Coils on a 100 mm hub', 'hub radius 100 mm (user answer); Hashin index of the flattened section and of the section coiled on the hub', 'F<sub>flat</sub> &lt; 1 and F<sub>hub</sub> &lt; 1'],
    ['No material failure in any simulation', 'Hashin 2D criterion in every ply under the 25 N load, the 100 N mm torque and the 50 N lateral tip load', 'F &lt; 1 in each case'],
])}
<p>Other instructions: at most 16 CPU cores (Abaqus jobs capped at 8 by the shared-server protocol), nothing written
outside the project folder, a status update every 15 minutes, all new code in <i>Code for Project/11-17-26 (Tara)</i>,
and Abaqus verification. During the study the user also asked to: add torsion to study.py; commit every tool change;
run to iteration 20; test whether the buckling estimate is conservative for some section family; include one balanced
laminate; try an 81 g long shot without changing the catalog; check the final design in Abaqus under every OpenSees
load case; let failing buckling runs go for 2 hours (longer if they look like passing); and finally use the strict
buckling criterion (first bifurcation above 50,000 N mm).</p>

<h2>2. Tools and changes made to them</h2>
<p>The study ran through <i>study.py</i>, a state machine that enforces the protocol: requirements &rarr; screen
&rarr; choose a design &rarr; laminate, model, plots, Hashin failure, extra load cases, buckling, objective/constraints
&rarr; record &rarr; mesh convergence and Abaqus verification when due. OpenSeesPy shell models (ASDShellQ4) did the
analysis; Abaqus/CAE (S4R) scripts were generated from the same models and run through the server's runner script.
Shortcomings found in the tools were fixed, committed and pushed as they appeared:</p>
<ul>
<li><b>Torsion and extra failure load cases</b> (new <i>loadcases</i> step): torque twist from the rigid tip, Bredt +
St Venant GJ estimate in the screen.</li>
<li><b>Shear deformation</b>: iteration 1's FE stiffness was 41.5% below Euler-Bernoulli. The split showed shear is ~39%
of the tip deflection of these thin closed sections, so the screen now uses Timoshenko beam theory with
kGA = (1/a<sub>66</sub>) &Sigma; m l (dz/ds)<sup>2</sup>.</li>
<li><b>Unbalanced layups</b>: A<sub>66</sub> overestimated GJ 3.6x for laminates with extension-shear coupling;
replaced by the effective 1/a<sub>66</sub>.</li>
<li><b>Closed-section buckling estimate</b>: after iteration 2 buckled at a quarter of the requirement, 35 segment
linear-buckling runs were fitted to N<sub>cr</sub> = 1.094 D<sub>11</sub><sup>0.407</sup>
D<sub>22</sub><sup>0.454</sup> A<sub>22s</sub><sup>-0.156</sup> R<sub>min</sub><sup>0.033</sup>,
M = N<sub>cr</sub> I / c.</li>
<li><b>Process</b>: <i>buckling-stopped</i> (records a stalled run, only below the requirement), <i>verify
--all-cases</i>, and re-reading the state file before saving (a long run had overwritten newer verification records).</li>
</ul>

<h2>3. Pre-screening: which candidates were eliminated, and why</h2>
<p>The catalogs give {len(scr['materials_used'])} usable materials (2 more carry a caution note and were excluded),
{scr['n_layups']} symmetric 3-5 ply layups and 100 cross-sections (25 each of tape springs, TRACs, omegas and
corrugated booms): <b>{fmt(scr['evaluated'])} combinations</b>. Each was screened with closed-form estimates:
mass; Timoshenko tip stiffness; the bending-buckling moment; torsional stiffness (Bredt for closed cells, St Venant
for open sections); and the Hashin index of the flattened and coiled section. Screen margins were deliberately loose
(stiffness 0.85x, buckling 0.5x, torsion 0.85x closed / 0.5x open) so that near-misses were kept for the FE to decide.
{fmt(scr['screen_ok'])} combinations survived: {fmt(scr['screen_ok_by_type']['CO'])} corrugated and
{fmt(scr['screen_ok_by_type']['OM'])} omega, and <b>no open section</b>.</p>
{table(['section family', 'combinations', 'fail torsion', 'best GJ / required', 'fail stiffness', 'fail buckling', 'fail coiling', 'pass'], fam_rows)}
<p><b>Open sections were eliminated by the torsion requirement.</b> An open thin wall carries torque only by
St Venant shear flow through its thickness, GJ &asymp; G &Sigma; b t<sup>3</sup>/3, which for a 0.1-0.2 mm laminate
is tiny. The best tape spring in the catalog reaches {100 * fam['by_type']['TS']['max_GJ_over_required']:.2f}% of the
required GJ and the best TRAC {100 * fam['by_type']['TRAC']['max_GJ_over_required']:.2f}%: even the best of them would twist about 410&deg;
(tape spring) and 120&deg; (TRAC) instead of 1&deg;. A closed cell carries torque by a shear flow around the cell (Bredt, GJ = 4A<sup>2</sup>G t /
&#8750;ds), so omegas and corrugated booms exceed the requirement by up to ~2,700x. Tape springs also fail the stiffness
and buckling estimates everywhere, so they were out on three counts. The torsion requirement therefore decided the
section class without any FE run: only omega (OM) and corrugated (CO) booms were candidates. Among the closed
sections, the stiffness requirement removed most of the remaining designs (thin omegas are too flexible about z), and
coiling on the 100 mm hub removed the thick or stiff-fibre laminates on tightly curved sections.</p>
{img(HERE / 'design_space_plots' / '1_screen_funnel.png', 'Figure 1. Every catalog design lighter than the final design, sorted by the first check it fails (log scale). Checks in order: coiling (exact Hashin), torsion, stiffness (estimate x 0.986, the best FE ratio measured), buckling (estimate x the best measured factor of its family).', '88%')}

<h2 class="pb">4. The path through the iterations</h2>
<p>Each iteration took one design from the screen and ran the full chain. The next design was chosen from what the
previous runs taught: the screen's list of untried designs lighter than the current best, re-ranked with the
estimates <i>calibrated</i> against the FE results so far (stiffness FE/estimate 0.91-0.99 depending on the laminate;
buckling factors per family, section 6), changing one variable at a time where possible. After iteration 7 the
remaining iterations followed a plan agreed with the user (investigations/PLAN_iterations_8-20.md), whose main goal
was the user's question: is the buckling estimate conservative for some family, which could unlock a lighter boom?</p>
{img(HERE / 'design_space_plots' / '4_iteration_history.png', 'Figure 2. Mass of every iteration (FE model), its outcome and its section; the line is the best design so far under the final (strict) criterion.', '96%')}
<h3>Phase 1: establishing the chain and a first feasible design (iterations 1-5)</h3>
<p><b>Iteration 1</b> (66.0 g omega) was the lightest screen candidate and the first full test of the chain. Its
stiffness came out at 16.9 N/mm instead of the predicted 28.8: shear deformation was missing from the screen. After the
Timoshenko fix, <b>iteration 2</b> (75.6 g, a corrugated C008 with a higher-shear-modulus material) met stiffness but
buckled at only 6.5-12.7 kN mm. Thin 3-ply closed sections buckle locally at a fraction of the requirement, so the
segment linear-buckling fit was added to the screen. <b>Iteration 3</b> went to a 5-ply omega for buckling margin but
missed stiffness by 1.1% (24.7 N/mm). <b>Iteration 4</b> changed only the layup (outer 30&deg; plies) and became the first
feasible design at 110.0 g. <b>Iteration 5</b> (107.7 g, C005 [30/0/0/30]) was the only predicted-feasible design
lighter than that, and passed.</p>
<h3>Phase 2: probing the buckling margin of the C008 family (iterations 6-8)</h3>
<p>At the user's request the study then tested whether the buckling estimate is conservative for some family. C008
had the most lighter designs that failed <i>only</i> the buckling estimate. <b>Iteration 6</b> (104.9 g, [60/0/0/60],
estimate 6% short) passed at &ge; 52.2 kN mm, so the C008 estimate was at least 11% conservative. <b>Iteration 7</b>
(102.2 g, [45/0/0/45], estimate 13% short) was the last plausible lighter design and also passed, at &ge; 51.0 kN mm.
<b>Iteration 8</b>, its mirror [-45/0/0/-45], checked that the unbalanced layup's bend-twist coupling did not make
buckling depend on the ply sign; it passed at &ge; 50.2. At this point iteration 7 was the best under the path-B
criterion.</p>
<h3>Phase 3: calibration, the long shot and the balanced laminate (iterations 9-13)</h3>
<p><b>Iteration 9</b> was the user's 81 g long shot ([30/0/30] C008, 21% lighter, estimate 42% short): it stalled at
25.3 kN mm, which settled that no thin 3-ply design could work. <b>Iterations 10-12</b> calibrated the estimate inside
the domain of its fit (all-0 layups). Iteration 10 (M022) missed stiffness, so iteration 11 repeated the test on M006:
the omega stalled at 27.3 kN mm against an estimate of 46.2, showing that the estimate is about 40% too high for omegas.
Iteration 12 (C005 all-0) was in the LBA calibration set, so its stall at 30.2 gave the knockdown from perfect-shell
LBA to the imperfect path for a corrugated boom. <b>Iteration 13</b>, the balanced laminate the user asked for
([30/-30/0/-30/30] C005), passed comfortably but weighs 131.3 g: removing the coupling of an unbalanced layup costs
about 25% mass here.</p>
<h3>Phase 4: robustness and real strengths (iterations 14-20)</h3>
<p><b>Iterations 14-15</b> repeated the winning C008 [60/0/0/60] with two other materials; both passed (&ge; 52.1 and
52.2 kN mm), so the margin is not specific to one material. Passing runs only give lower bounds, so <b>iterations
16-20</b> deliberately chose designs expected to buckle, to measure real strengths: C008 [30/0/0/30] (38.2), C006
[60/0/0/60] (48.5, so the C008 conservatism largely carries over to C006 but not enough to pass), C007 (31.8), C005
[0/30/30/0] (25.8) and an off-axis omega (27.4, stopped at the 2-hour limit). These populate the calibration in
section 6.</p>

<h3>All iterations</h3>
{table(['it', 'material', 'layup', 'section', 'mass g', 'k N/mm', 'why it was tested', 'outcome'], it_rows, 'it')}
<p class="sm">Buckling values in kN mm. "B &ge;" = the OpenSees path passed the requirement and was stopped there
(lower bound); "stalled" = highest converged load before the path stopped converging.</p>

<h2 class="pb">5. Abaqus verifications: when, why, and what they showed</h2>
<p>The protocol asks for 5-10 Abaqus verifications per study, never blocking the loop. They were placed where an
independent check would change a decision: at the start (to trust the chain), at each new section family that became
the best design, when the results looked suspicious, and for the final candidates. Each Abaqus script was generated
from the OpenSees model and run here (8 CPUs for the buckling jobs); for the linear cases a separate comparator agent
compared the two result files without seeing either model's code.</p>
{table(['#', 'design', 'cases', 'why then', 'what it showed'], ver_rows)}
<p><b>What we learned.</b> (1) For linear response the OpenSees models are accurate: tip displacements and twist agree
to 0.1-0.5% and ply stresses to a few percent; the only differences are in the rigid-end zones and in the drilling
rotation, which the two element formulations treat differently. (2) Verification 4 showed that a surprising stiffness
ratio was physics (low shear modulus of all-0 laminates), not a modelling error, so the calibration could be trusted.
(3) The most important lesson came from buckling. The OpenSees criterion follows an imperfect nonlinear path and
passes a design if that path climbs past 50,000 N mm. For iterations 7 and 8 the path did, but Abaqus found that the
perfect shell first bifurcates at 48.4-49.5 kN mm: a local mode of the flat bonded tab on the compressed side, after
which the boom keeps carrying load. Both codes see the same instability (within 3-5%), so this is not a disagreement
between codes; it is a question of what "does not buckle" means. The user chose the strict meaning (no local buckling),
which rejected iterations 7 and 8 and made iteration 6 the final design, with a first bifurcation 11-13% above the
requirement. (4) Iteration 8 had at first been marked as failing by symmetry with iteration 7, without an Abaqus run;
when the user asked, it was run and gave the same values to 0.001%.</p>
{img(STUDY / 'final' / 'it006_L011_Y026_C008.png', 'Figure 3. Final design (iteration 6, L011 [60/0/0/60] C008) under the 25 N tip load in OpenSees: deformed shape with curvature and Hashin failure index (max 0.38).', '96%')}

<h2>6. How good was the buckling estimate?</h2>
<p>Every buckling run compared the OpenSees path with the screen's raw estimate. The estimate is conservative by at
least 9-17% for C008 (and about 9% for C006) with angled outer plies, roughly right for C005 and C007 (0.85-1.05), and
about 40% too high for omegas. This answers the user's question with a yes for C008/C006, but the extra margin could not
be exploited: the designs it would have allowed (iterations 7 and 8) fail the strict local-buckling check.</p>
{img(HERE / 'design_space_plots' / '5_buckling_calibration.png', 'Figure 4. OpenSees path-B buckling value against the screen\'s raw estimate. Triangles are lower bounds (the run passed 50,000 N mm and was stopped); circles are the highest load reached before the run stalled.', '84%')}

<h2 class="pb">7. Why no untested design can beat the final design</h2>
<p>Only 20 of {fmt(scr['evaluated'])} combinations were simulated, so the claim that iteration 6 is the optimum rests on the screen.
To make that argument as strong as possible, every combination was re-checked using the <i>most optimistic</i> numbers the
study measured (investigations/lighter_than_best.py): stiffness estimate x 0.986, the highest FE/estimate ratio of all
runs; and buckling estimate x the best measured factor of its family (1.37 for C008 and for families never run). Masses are
compared on the screen's own mass formula (it overestimates the FE mass by about 0.6% for all designs alike).</p>
<ul>
<li><b>{fmt(lt['counts']['heavier than the final design'])} designs are heavier</b> than iteration 6, so they cannot be the optimum
whatever their performance.</li>
<li>Of the <b>{fmt(lt['counts']['lighter than the final design'])} lighter designs</b>: {fmt(fc[lk[0]])} break on the hub or when flattened
(Hashin F &ge; 1, an exact check); {fmt(fc[lk[1]])} are too soft in torsion (all tape springs and TRACs, plus thin closed
sections); {fmt(fc[lk[2]])} are too flexible even with the optimistic stiffness factor; {fmt(fc[lk[3]])} buckle below
50,000 N mm even with the best buckling factor measured for their family.</li>
<li>Only <b>{len(surv)}</b> lighter designs pass every optimistic check. Each one is either an iteration that was run, its
mirror, or fails a check once the stiffness ratio actually measured for its own section and layup is used:</li>
</ul>
{table(['design (material / layup / section)', 'layup', 'mass g (screen)', 'k x 0.986', 'buckling x factor', 'why it is not better than iteration 6'], surv_rows)}
<p>The two strongest remaining candidates are the untested L006 [&plusmn;60/0/0/&plusmn;60] C008 pair (102.8 g on the screen).
Their stiffness estimate is 25.4 N/mm; the three [60/0/0/60] C008 runs measured FE/estimate = 0.970-0.973, giving
24.7 N/mm, 1.1% short of the requirement. They would only pass if this layup behaved like the stiffest-ratio balanced C005
laminate, which no C008 run did. Their buckling estimate (44.7 kN mm) is also close to iterations 7 and 8, which failed
the strict criterion by 1-3%. So the remaining risk that a lighter feasible design was missed is small and limited to
this pair; running one of them would settle it.</p>
{img(HERE / 'design_space_plots' / '2_mass_vs_stiffness.png', 'Figure 5. Closed sections that coil on the hub and meet torsion: stiffness estimate (x 0.986) against mass. Light dots are untested designs, markers the iterations. Designs that are stiff enough (above the dashed line) and lighter than the final design (left of the dotted line) form a narrow corner.', '100%')}
{img(HERE / 'design_space_plots' / '3_mass_vs_buckling.png', 'Figure 6. Designs that also meet stiffness: optimistic buckling estimate against mass. The shaded box holds designs that would beat the final one; the only ones in it are iterations 7 and 8 (rejected by Abaqus) and the untested [&plusmn;60/0/0/&plusmn;60] pair, which misses stiffness by 1.1% with its own calibration.', '100%')}

<h2>8. Limitations</h2>
<ul>
<li>The buckling load is applied as a uniform end moment equal to the root moment (conservative versus the real
cantilever, where the moment falls to zero at the tip).</li>
<li>The strict criterion uses Abaqus linear and preloaded eigenvalues of the perfect shell on the 4.5 mm design mesh; that
mesh was converged for stiffness and stress (4.5 &rarr; 2.7 mm: 0.24% / 3.2%), not separately for buckling.</li>
<li>Bonded webs are modelled as a perfectly bonded doubled laminate; adhesive failure is not checked. Coiling is checked as
the flattened-and-bent strain state, not a coiling simulation. The nonlinear buckling path itself is not failure-checked.</li>
<li>The final layup is unbalanced: its bend-twist coupling is in the FE but was not a requirement.</li>
<li>Stalled runs give the last converged load (a lower bound on the strength); runs were stopped after 2 hours by the user's rule.</li>
<li>State-file hand edits (each logged in state.json notes): stale calibration references corrected, two records lost to a
save race restored, the best design set to iteration 6 under the strict criterion, iteration 8's record closed with only its
buckling case, and iteration 20's failed phase set after it was stopped.</li>
</ul>

<h2>9. Where to find things</h2>
<p class="sm">REPORT.md (summary written by study.py), ledger.csv (all iterations), final/ (the final design's model, scripts and
plots), iterations/itNNN/ (every model, log, result and Abaqus comparison), screen/ (screening output),
investigations/ (calibration runs, design-space plots and checks, this report's generator narrative_report.py, and the plan of
iterations 8-20).</p>
"""
)

OUT_HTML.write_text(f'<!doctype html><html><head><meta charset="utf-8"><title>Boom study narrative report</title>'
                    f'<style>{CSS}</style></head><body>{"".join(S)}</body></html>', encoding='utf-8')
prof = HERE / '_chrome_profile_tmp'
try:
    subprocess.run([str(CHROME), '--headless=new', '--disable-gpu', f'--user-data-dir={prof}', '--no-pdf-header-footer',
                    '--allow-file-access-from-files', f'--print-to-pdf={OUT_PDF}', OUT_HTML.as_uri()],
                   check=True, timeout=180, capture_output=True)
finally:
    shutil.rmtree(prof, ignore_errors=True)
print('wrote', OUT_HTML, OUT_PDF, OUT_PDF.stat().st_size // 1024, 'kB')
