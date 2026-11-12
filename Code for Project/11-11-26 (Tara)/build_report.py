"""Builds the PDF narrative report of the [0/0/0] tape-spring checks (11-11-26, Tara).
reportlab is installed locally in ./_pylibs (pip --target, Python 3.13), so run with the system Python:
    "C:/Program Files/Python313/python.exe" build_report.py
Figures: report_figs/*.png (shell-visualize skill and report_figures.py)."""
import sys
from pathlib import Path

HERE = Path(__file__).parent
sys.path.insert(0, str(HERE / '_pylibs'))

from reportlab.lib import colors                                       # noqa: E402
from reportlab.lib.enums import TA_CENTER                              # noqa: E402
from reportlab.lib.pagesizes import letter                             # noqa: E402
from reportlab.lib.styles import ParagraphStyle, getSampleStyleSheet  # noqa: E402
from reportlab.lib.units import inch                                   # noqa: E402
from reportlab.platypus import (Image, KeepTogether, PageBreak, Paragraph,  # noqa: E402
                                SimpleDocTemplate, Spacer, Table, TableStyle)

FIG = HERE / 'report_figs'
OUT = HERE / 'TapeSpring_L001_000_report.pdf'

ss = getSampleStyleSheet()
body = ParagraphStyle('body', parent=ss['BodyText'], fontSize=10, leading=13.5, spaceAfter=6)
small = ParagraphStyle('small', parent=body, fontSize=8.5, leading=11)
cap = ParagraphStyle('cap', parent=small, alignment=TA_CENTER, textColor=colors.HexColor('#444444'), spaceAfter=10)
cell = ParagraphStyle('cell', parent=body, fontSize=8.5, leading=10.5, spaceAfter=0)
cellb = ParagraphStyle('cellb', parent=cell, fontName='Helvetica-Bold')
h1, h2 = ss['Heading1'], ss['Heading2']
h1.fontSize, h2.fontSize = 15, 12


def P(t, s=body):
    return Paragraph(t, s)


def table(rows, widths, header=True):
    data = [[P(c, cellb if (header and i == 0) else cell) for c in r] for i, r in enumerate(rows)]
    t = Table(data, colWidths=widths, repeatRows=1 if header else 0)
    st = [('GRID', (0, 0), (-1, -1), 0.4, colors.HexColor('#999999')),
          ('VALIGN', (0, 0), (-1, -1), 'TOP'),
          ('LEFTPADDING', (0, 0), (-1, -1), 4), ('RIGHTPADDING', (0, 0), (-1, -1), 4)]
    if header:
        st.append(('BACKGROUND', (0, 0), (-1, 0), colors.HexColor('#e6eef7')))
    t.setStyle(TableStyle(st))
    return t


def fig(name, width, caption):
    from reportlab.lib.utils import ImageReader
    w, h = ImageReader(str(FIG / name)).getSize()
    return KeepTogether([Image(str(FIG / name), width=width, height=width * h / w), P(caption, cap)])


def footer(canvas, doc):
    canvas.saveState()
    canvas.setFont('Helvetica', 8)
    canvas.setFillColor(colors.HexColor('#666666'))
    canvas.drawString(0.8 * inch, 0.5 * inch, 'ME295 thin-shell project - tape spring L001 [0/0/0] - 11 Nov 2026')
    canvas.drawRightString(7.7 * inch, 0.5 * inch, f'page {doc.page}')
    canvas.restoreState()


s = []
s += [P('Tape-Spring Boom L001 [0/0/0]: Axial, Opposite-Sense Bending and Coiling Checks', ss['Title']),
      P('ME295 thin-shell project (Benazzo, Venkatadri) &nbsp;|&nbsp; 11 November 2026 &nbsp;|&nbsp; '
        'OpenSeesPy shell models built with the project skills in <font face="Courier">.claude/skills</font>',
        ParagraphStyle('sub', parent=small, alignment=TA_CENTER)),
      Spacer(1, 10)]

# ---- summary
s += [P('Summary', h1),
      P('A 1 m long composite tape spring (IM7/8552 carbon/epoxy, catalog material L001, three 0 deg plies, '
        'transverse radius 20 mm, 180 deg arc) clamped at one end was checked for three load cases: a 10 N axial '
        'pull, a 1 N transverse tip load in opposite-sense bending, and coiling around a 40 mm radius hub. For each case '
        'the ply stresses were checked with the 2D Hashin failure criterion, where failure is predicted at F = 1. '
        'The strength ratio R is the factor by which the load (or the stresses) could be multiplied before F reaches 1. '
        '<b>No case is close to material failure.</b> Coiling is the governing case (F = 0.18, R = 2.3). The boom '
        'mass is <b>10.42 g</b>.'),
      table([['Load case', 'Deformation', 'Max Hashin F', 'Strength ratio R', 'Critical mode / location'],
             ['Axial pull, 10 N', 'tip extension 0.0096 mm', '4.0 x 10<super>-7</super>', '1576',
              'fibre tension, uniform along the boom'],
             ['Tip load 1 N, opposite-sense bending', '<b>tip deflection 8.52 mm</b>', '4.2 x 10<super>-4</super>',
              '49', 'fibre tension, root, tape edges'],
             ['Coiling on 40 mm hub', 'flattened (k<sub>y</sub> = 1/20 mm<super>-1</super>) and bent '
              '(k<sub>x</sub> = 1/40 mm<super>-1</super>)', '<b>0.183</b>', '2.34',
              'matrix tension, outer ply']],
            [1.45 * inch, 1.65 * inch, 0.95 * inch, 0.85 * inch, 1.6 * inch]),
      Spacer(1, 8)]

# ---- boom and material
s += [P('1. The boom and its material', h1),
      P('<b>Geometry.</b> Circular-arc cross-section with radius R = 20 mm and subtended angle 180 deg, so the '
        'flattened width is b = pi R = 62.83 mm. Length L = 1000 mm along x. The arc is symmetric about y = 0 with '
        'its centre of curvature on +z: the crown is at z = 0 and the two free edges at z = 20 mm. The '
        'centroid of the arc is at z = R(1 - 2/pi) = 7.27 mm and its second moment of area about the horizontal '
        'centroidal axis is I = R<super>3</super> h (pi/2 - 4/pi) = 250 mm<super>4</super>.'),
      fig('section.png', 3.3 * inch, 'Figure 1. Cross-section. In opposite-sense bending the edges are in tension '
          'and the crown in compression.'),
      P('<b>Material and layup.</b> L001 in the project UD lamina catalog is Hexcel IM7/8552 (NCAMP, room '
        'temperature dry mean values). The project uses a ply thickness of 0.035 mm for every catalog row, '
        'so the [0/0/0] laminate is h = 0.105 mm thick, with all fibres along the boom axis.'),
      table([['E<sub>1</sub>', 'E<sub>2</sub>', 'G<sub>12</sub>', 'nu<sub>12</sub>', 'X<sub>t</sub>',
              'X<sub>c</sub>', 'Y<sub>t</sub>', 'Y<sub>c</sub>', 'S<sub>12</sub>', 't<sub>ply</sub>', 'rho'],
             ['158.5 GPa', '8.95 GPa', '4.67 GPa', '0.316', '2501 MPa', '1716 MPa', '64 MPa', '285.7 MPa',
              '91.1 MPa', '0.035 mm', '1580 kg/m<super>3</super>']],
            [0.62 * inch] * 4 + [0.66 * inch] * 5 + [0.6 * inch, 0.75 * inch]),
      Spacer(1, 6),
      P('The laminate-properties skill gives the classical lamination theory (CLT) stiffness: '
        'A<sub>11</sub> = 16737, A<sub>22</sub> = 945, A<sub>12</sub> = 299, A<sub>66</sub> = 490 N/mm; B = 0 '
        '(symmetric); D<sub>11</sub> = 15.38, D<sub>22</sub> = 0.868, D<sub>12</sub> = 0.274, D<sub>66</sub> = '
        '0.451 N mm. The same skill measured the stiffness the OpenSeesPy section actually has, by imposing strains '
        'on one element: A and B agree with CLT exactly and D is 0.4% lower, the expected effect of the layer '
        'integration. The axial modulus of the laminate is E<sub>x</sub> = (A<sub>11</sub> - A<sub>12</sub>'
        '<super>2</super>/A<sub>22</sub>)/h = 158.5 GPa, so the bending stiffness of the boom is EI = 3.96 x 10'
        '<super>7</super> N mm<super>2</super>.')]

# ---- method
s += [P('2. How the load cases were evaluated', h1),
      P('<b>Finite-element model.</b> Each case was written as a case file and turned into one standalone '
        'OpenSeesPy script by the project skills: <i>laminate-properties</i> (orthotropic ply material and '
        'LayeredShell section), <i>shell-mesh</i> (the arc extruded along x and meshed with 4-node shells), '
        '<i>shell-bc-load</i> (supports, loads, solver, results file) and <i>shell-assemble-run</i>, which '
        'joins the three code pieces, checks that they fit, and runs the script. The mesh is 400 x 25 ASDShellQ4 '
        'elements of 2.5 x 2.5 mm (10,000 elements, 62,562 degrees of freedom). The root edge x = 0 is fully '
        'clamped. The tip edge x = L is attached to a rigid end fixture whose master node carries the load, '
        'which is how the project loads curved thin sections; a free arc edge would be about 8% too flexible. The '
        'solutions are linear static, solved with 16 CPU threads.'),
      P('<b>Load cases.</b> (1) Axial: F<sub>x</sub> = +10 N on the tip fixture. (2) Bending: F<sub>z</sub> = '
        '-1 N on the tip fixture. With the crown at the bottom, a downward tip load puts the edges in tension and '
        'gives a longitudinal curvature opposite in sign to the transverse curvature: this is <i>opposite-sense</i> '
        'bending (the project convention, shell-buckling sign +1). (3) Coiling: there is no FE run. The ply '
        'stresses of a flange that is flattened and wound on the hub follow from CLT alone, as described below.'),
      P('<b>Failure check.</b> The <i>failure-check</i> skill reads the membrane strains and curvatures of every '
        'element at its four Gauss points and computes the ply stresses at the bottom, middle and top of each ply. '
        'These are exact CLT kinematics, then the ply stiffness. It then evaluates the 2D Hashin criterion '
        '(Benazzo &amp; Pellegrino, AIAA SciTech 2025, Eq. 3). Only the mode matching the stress sign is active:'),
      table([['fibre tension (s<sub>1</sub> &gt;= 0)', 'F = (s<sub>1</sub>/X<sub>t</sub>)<super>2</super> + '
              '(t<sub>12</sub>/S<sub>12</sub>)<super>2</super>'],
             ['fibre compression (s<sub>1</sub> &lt; 0)', 'F = (s<sub>1</sub>/X<sub>c</sub>)<super>2</super>'],
             ['matrix tension (s<sub>2</sub> &gt;= 0)', 'F = (s<sub>2</sub>/Y<sub>t</sub>)<super>2</super> + '
              '(t<sub>12</sub>/S<sub>12</sub>)<super>2</super>'],
             ['matrix compression (s<sub>2</sub> &lt; 0)', 'F = (s<sub>2</sub>/Y<sub>c</sub>)<super>2</super> + '
              '(t<sub>12</sub>/S<sub>12</sub>)<super>2</super> (with the default S<sub>23</sub> = Y<sub>c</sub>/2)']],
            [2.2 * inch, 4.3 * inch], header=False),
      Spacer(1, 6),
      P('The largest F over all elements, Gauss points, plies and through-thickness points is reported with its '
        'strength ratio R. Because the analyses are linear, R is also a load factor: the load could be multiplied by '
        'R before F reaches 1.'),
      P('<b>Coiling.</b> A tape spring wound on a hub is flattened transversely (curvature change k<sub>y</sub> = '
        '1/R = 0.05 mm<super>-1</super>) and bent along its length to the hub radius (k<sub>x</sub> = 1/R'
        '<sub>hub</sub> = 0.025 mm<super>-1</super>). The failure-check command-line tool covers only the '
        'flattening. The hub bending was added in a short script (<font face="Courier">coil_hub_check.py</font>) '
        'that calls the skill\'s own stress and Hashin functions with (k<sub>x</sub>, k<sub>y</sub>) and zero '
        'membrane force. Which face ends up outside depends on how the tape is wound, so all four sign '
        'combinations of k<sub>x</sub> and k<sub>y</sub> were checked and the largest F kept. The hub radius '
        '40 mm was used as the coil radius of the mid-surface. The true value is 40.05 mm, so this is slightly '
        'conservative.'),
      P('<b>Mass.</b> The <i>objective-constraints</i> skill sums the undeformed element areas times the areal '
        'density rho h, with rho = 1580 kg/m<super>3</super> taken from the L001 catalog row.'),
      P('<b>Checks.</b> Every result was compared with a hand calculation (bar or beam theory). The bending case '
        'was rerun on a 1.25 mm mesh (40,000 elements). Whether the bending stays in the linear regime was checked '
        'separately with the <i>shell-buckling</i> skill (section 3.2).')]

# ---- results
s += [P('3. Results', h1),
      P('3.1 Axial pull, 10 N', h2),
      P('The tip moves <b>0.00957 mm</b> along the axis, against PL/(E<sub>x</sub> h b) = 0.00956 mm from bar '
        'theory (+0.06%). The axial stress in the fibres is about 1.5 MPa everywhere: 10 N / (62.83 x 0.105) '
        'mm<super>2</super> = 1.52 MPa, rising to 1.59 MPa next to the clamp, where the clamp restrains Poisson '
        'contraction. The Hashin index is F = 4.0 x 10<super>-7</super> (fibre tension), a strength ratio of R = '
        '1576. Material failure in tension would need a load of about 15.8 kN.'),
      fig('axial.png', 6.4 * inch, 'Figure 2. Axial 10 N: deformed shape drawn x10,500 over the undeformed outline (gray). '
          'Left: longitudinal curvature k<sub>xx</sub>, essentially zero. Right: Hashin index, uniform at '
          '4 x 10<super>-7</super>.'),
      P('3.2 Transverse tip load, 1 N, opposite-sense bending', h2),
      P('The tip deflects <b>8.52 mm</b> downward and rotates 0.0127 rad. Cantilever beam theory, PL<super>3</super>'
        '/(3EI) with EI = 3.96 x 10<super>7</super> N mm<super>2</super>, gives 8.41 mm. The shell model is 1.3% '
        'more flexible, which is expected because the clamped and loaded ends of a thin curved section are not '
        'perfectly rigid. Halving the element size to 1.25 mm changes the deflection to 8.50 mm (-0.2%), so the mesh '
        'is converged.'),
      P('The largest stress is at the root, where the bending moment is P L = 1000 N mm. It is fibre tension at '
        'the two free edges: s<sub>1</sub> = 50.0 MPa, against M c/I = 1000 x 12.73 '
        '/ 250 = 50.9 MPa from beam theory, with c = 20 - 7.27 = 12.73 mm. The crown is in compression. The Hashin '
        'index is <b>F = 4.2 x 10<super>-4</super></b> (fibre tension), a strength ratio of R = 49. The fibres '
        'carry the bending stress and are very strong, so material failure is far away.'),
      fig('bending.png', 6.4 * inch, 'Figure 3. Tip load 1 N, opposite-sense: deformed shape drawn x11.7. '
          'Left: longitudinal curvature k<sub>xx</sub>. Right: Hashin index, largest along the root edges.'),
      P('<b>Is the linear analysis valid?</b> At the scale of the whole beam, yes: PL<super>2</super>/EI = 0.025, '
        'far below the value of about 1 where large-rotation effects matter. A tape spring can also snap when its '
        'cross-section flattens. Under opposite-sense bending this is a limit point, which a linear analysis cannot '
        'see. To check it, a 200 mm segment under a uniform opposite-sense end moment was followed with rotation '
        'control (shell-buckling skill, corotational ASDShellQ4, phase B only, perfect geometry). The '
        'moment-rotation path stays linear (197,000 vs EI/L = 198,000 N mm/rad). It was still rising at 3,328 N mm '
        'when it was stopped, more than 3.3 times the 1000 N mm root moment of this load case (Figure 4). The 1 N '
        'load therefore causes no snap-through, and the linear result stands. The actual snap moment was not '
        'computed. Two nonlinear runs of the full cantilever (load and displacement control) stopped converging '
        'near 0.25 N while their paths were still exactly linear. This was a solver problem with the rigid tip '
        'fixture at large rotations, not a structural limit point.'),
      fig('moment_rotation.png', 3.9 * inch, 'Figure 4. Opposite-sense moment vs end rotation of a 200 mm segment '
          '(OpenSeesPy, 2.5 mm mesh) against linear theory.'),
      P('3.3 Coiling around a 40 mm radius hub', h2),
      P('Flattening alone (failure-check skill) gives F = 0.136. With the hub curvature added, the worst of the four '
        'sign combinations is <b>F = 0.183</b> (matrix tension, strength ratio R = 2.34). It occurs on the outer '
        'face of the outer ply when the flattening and the coiling curvature have the same sign: there, s<sub>1'
        '</sub> = 217 MPa (fibre tension, F contribution 0.008) and s<sub>2</sub> = 27.4 MPa transverse. The '
        'transverse stress governs because Y<sub>t</sub> = 64 MPa is 40 times lower than X<sub>t</sub>. The '
        'surface strains are h/(2R) = 0.26% across the boom and h/(2R<sub>hub</sub>) = 0.13% along it. Coiling is the governing load case of this '
        'boom, but its margin is still comfortable.'),
      fig('coiling.png', 3.9 * inch, 'Figure 5. Hashin index of the coiled flange for the four curvature sign '
          'combinations (k in mm<super>-1</super>) and for flattening only.')]

# ---- mass
s += [P('4. Mass', h1),
      P('The objective-constraints skill gives a boom mass of <b>10.42 g</b> (0.01042 kg), or 10.4 g/m. A hand '
        'check gives the same value: rho b h L = 1580 kg/m<super>3</super> x 62.83 mm x 0.105 mm x 1000 mm = 10.42 g. '
        'The rigid end fixtures used to apply the loads are not part of the structure and have no mass.')]

# ---- limitations
s += [P('5. Assumptions and limitations', h1),
      P('- Strengths are catalog mean values (not design allowables) measured on 0.18 mm plies. Thin 35 um plies '
        'usually have higher in-situ transverse and shear strengths, so the matrix-mode indices are probably '
        'conservative. S<sub>23</sub> is not in the catalog; the default S<sub>23</sub> = Y<sub>c</sub>/2 was '
        'used. It only affects matrix compression, which does not govern any case here.', small),
      P('- The coiling check is the uniform, fully coiled state. The transition zone, where the section opens '
        'from flat back to its arc shape, has extra stresses this check does not include, so some margin is '
        'needed. The coiling F of 0.18 leaves plenty. Stress relaxation during long stowage is not modelled.', small),
      P('- The bending result is linear; the snap check shows that the 1 N load is well below the opposite-sense '
        'snap moment, but the snap moment itself and equal-sense bending were not evaluated.', small),
      P('- Stresses next to the clamp corners are mesh dependent. Here the peak bending stress matches beam theory '
        'within 2%, so it is not a corner singularity.', small)]

# ---- files
s += [P('6. Files', h1),
      P('All in <font face="Courier">Code for Project/11-11-26 (Tara)/</font>: case files <font face="Courier">'
        'ts_L001_axial.json</font>, <font face="Courier">ts_L001_opp_bending.json</font> (and the 1.25 mm mesh '
        'and nonlinear variants); the assembled OpenSeesPy scripts <font face="Courier">*_opensees.py</font>; '
        'laminate <font face="Courier">L001_000.json</font>; coiling check <font face="Courier">coil_hub_check.py'
        '</font>; snap check <font face="Courier">ts_L001_opp_moment_buckling.json</font>; results, Hashin '
        'reports, mass JSON and logs in <font face="Courier">results/</font>; figures in <font face="Courier">'
        'report_figs/</font>; this report from <font face="Courier">build_report.py</font>.', small)]

doc = SimpleDocTemplate(str(OUT), pagesize=letter, leftMargin=0.8 * inch, rightMargin=0.8 * inch,
                        topMargin=0.75 * inch, bottomMargin=0.8 * inch,
                        title='Tape-spring boom L001 [0/0/0] checks', author='ME295 thin-shell project')
doc.build(s, onFirstPage=footer, onLaterPages=footer)
print('saved', OUT)
