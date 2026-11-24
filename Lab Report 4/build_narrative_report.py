"""Builds 'Lab Report 4 Narrative Report.docx' (ME 295, same format as Lab Reports 2 and 3, 2 pages maximum).

Content follows 'Lab Report 4 Outline.docx'; numbers come from the REPORT.md, ledger.csv and investigation
files of the three test cases (see build_demo_deck.py) and the Running Log. Helpers are copied from
Lab Report 3/build_narrative_report.py. Needs python-docx (pip install python-docx).
Inline markup in paragraph text: `code`, *italic*, **bold**, _{sub}, ^{sup}.
"""
import os
import re

from docx import Document
from docx.enum.section import WD_SECTION
from docx.enum.table import WD_CELL_VERTICAL_ALIGNMENT, WD_TABLE_ALIGNMENT
from docx.enum.text import WD_ALIGN_PARAGRAPH
from docx.oxml import OxmlElement
from docx.oxml.ns import qn
from docx.shared import Inches, Pt, RGBColor

HERE = os.path.dirname(os.path.abspath(__file__))
ROOT = os.path.dirname(HERE)
OUT = os.path.join(HERE, "Lab Report 4 Narrative Report.docx")
FIG1 = os.path.join(ROOT, "Lab Report 3", "narrative_figs", "fig1_system_diagram_lab3.png")  # Lab 3 diagram

FONT = "Times New Roman"
MONO = "Courier New"

doc = Document()
st = doc.styles["Normal"]
st.font.name = FONT
st.font.size = Pt(10)
st.element.rPr.rFonts.set(qn("w:eastAsia"), FONT)
st.paragraph_format.space_after = Pt(0)
st.paragraph_format.space_before = Pt(0)
st.paragraph_format.line_spacing = 1.0

sec = doc.sections[0]
sec.page_width, sec.page_height = Inches(8.5), Inches(11)
sec.left_margin = sec.right_margin = Inches(0.7)
sec.top_margin = Inches(0.75)
sec.bottom_margin = Inches(0.8)
COL_W = (8.5 - 1.4 - 0.25) / 2  # inches


def set_cols(section, n):
    sp = section._sectPr
    cols = sp.find(qn("w:cols"))
    if cols is None:
        cols = OxmlElement("w:cols")
        sp.append(cols)
    cols.set(qn("w:num"), str(n))
    cols.set(qn("w:space"), "360")


def new_section(ncols):
    s = doc.add_section(WD_SECTION.CONTINUOUS)
    set_cols(s, ncols)
    return s


TOKEN = re.compile(r"(`[^`]+`|\*\*[^*]+\*\*|\*[^*]+\*|_\{[^}]+\}|\^\{[^}]+\})")


def add_runs(p, text, size=None, italic=False, bold=False):
    for part in TOKEN.split(text):
        if not part:
            continue
        r_italic, r_bold, font, sub, sup = italic, bold, None, False, False
        if part.startswith("`"):
            part, font = part[1:-1], MONO
        elif part.startswith("**"):
            part, r_bold = part[2:-2], True
        elif part.startswith("*"):
            part, r_italic = part[1:-1], True
        elif part.startswith("_{"):
            part, sub = part[2:-1], True
        elif part.startswith("^{"):
            part, sup = part[2:-1], True
        r = p.add_run(part)
        r.italic, r.bold = r_italic, r_bold
        if font:
            r.font.name = font
            r._element.rPr.rFonts.set(qn("w:eastAsia"), font)
            r.font.size = Pt((size or 10) - 1)
        elif size:
            r.font.size = Pt(size)
        if sub:
            r.font.subscript = True
        if sup:
            r.font.superscript = True
    return p


def para(text, indent=True, align=WD_ALIGN_PARAGRAPH.JUSTIFY, size=None, italic=False, after=0):
    p = doc.add_paragraph()
    p.alignment = align
    if indent:
        p.paragraph_format.first_line_indent = Inches(0.14)
    p.paragraph_format.space_after = Pt(after)
    return add_runs(p, text, size=size, italic=italic)


def lead(label, text):
    """Paragraph starting with an italic run-in label, as in Lab Report 2."""
    p = doc.add_paragraph()
    p.alignment = WD_ALIGN_PARAGRAPH.JUSTIFY
    p.paragraph_format.first_line_indent = Inches(0.14)
    r = p.add_run(label + ": ")
    r.italic = True
    add_runs(p, text)
    return p


ROMAN = iter(["I", "II", "III", "IV", "V", "VI", "VII", "VIII"])


def heading(title, numbered=True):
    p = doc.add_paragraph()
    p.alignment = WD_ALIGN_PARAGRAPH.CENTER
    p.paragraph_format.space_before = Pt(8)
    p.paragraph_format.space_after = Pt(3)
    p.paragraph_format.keep_with_next = True
    r = p.add_run((next(ROMAN) + ". " if numbered else "") + title)
    r.font.small_caps = True
    r.font.size = Pt(10)


def subheading(text):
    p = doc.add_paragraph()
    p.paragraph_format.space_before = Pt(3)
    p.paragraph_format.space_after = Pt(1)
    p.paragraph_format.keep_with_next = True
    r = p.add_run(text)
    r.italic = True


def figure(path, width, caption):
    p = doc.add_paragraph()
    p.alignment = WD_ALIGN_PARAGRAPH.CENTER
    p.paragraph_format.space_before = Pt(4)
    p.paragraph_format.keep_with_next = True
    p.add_run().add_picture(path, width=Inches(width))
    c = doc.add_paragraph()
    c.alignment = WD_ALIGN_PARAGRAPH.JUSTIFY
    c.paragraph_format.space_after = Pt(6)
    add_runs(c, caption, size=8)


def table(title_no, title, header, rows, widths, note=None):
    cap = doc.add_paragraph()
    cap.alignment = WD_ALIGN_PARAGRAPH.CENTER
    cap.paragraph_format.space_before = Pt(6)
    cap.paragraph_format.keep_with_next = True
    add_runs(cap, "TABLE " + title_no, size=8)
    cap2 = doc.add_paragraph()
    cap2.alignment = WD_ALIGN_PARAGRAPH.CENTER
    cap2.paragraph_format.keep_with_next = True
    cap2.paragraph_format.space_after = Pt(2)
    r = add_runs(cap2, title, size=8)
    for run in r.runs:
        run.font.small_caps = True
    # header: one row (list of str) or several (list of lists); in a header row, None merges the cell
    # with the one to its left and "^" merges it with the one above
    hrows = header if isinstance(header[0], list) else [header]
    nh = len(hrows)
    t = doc.add_table(rows=nh + len(rows), cols=len(hrows[0]))
    t.alignment = WD_TABLE_ALIGNMENT.CENTER
    tblPr = t._tbl.tblPr
    t.autofit = False                   # fixed layout: Word keeps the column widths
    mar = OxmlElement("w:tblCellMar")   # narrow side margins (0.04 in) so the columns fit the text
    for side in ("left", "right"):
        e = OxmlElement(f"w:{side}"); e.set(qn("w:w"), "58"); e.set(qn("w:type"), "dxa"); mar.append(e)
    tblPr.insert_element_before(mar, "w:tblLook", "w:tblCaption", "w:tblDescription")
    for j, w in enumerate(widths):
        t.columns[j].width = Inches(w)
    for i, row in enumerate(hrows + rows):
        for j, val in enumerate(row):
            cell = t.cell(i, j)
            cell.width = Inches(widths[j])
            if val is None or val == "^":
                continue
            cp = cell.paragraphs[0]
            cp.alignment = WD_ALIGN_PARAGRAPH.LEFT if j == 0 else WD_ALIGN_PARAGRAPH.CENTER
            cp.paragraph_format.keep_with_next = i < nh + len(rows) - 1   # keep the table on one page
            add_runs(cp, val, size=8, bold=False)
    for i, row in enumerate(hrows):
        for j, val in enumerate(row):
            if val is None:
                k = j - 1
                while hrows[i][k] is None:
                    k -= 1
                t.cell(i, k).merge(t.cell(i, j))
            elif val == "^":
                t.cell(i - 1, j).merge(t.cell(i, j))
    for i in range(nh + len(rows) - 1):          # merged cells: keep their paragraphs with the next row too
        for c in t.rows[i].cells:
            for cp in c.paragraphs:
                cp.paragraph_format.keep_with_next = True
    # IEEE-style rules: top, below header, bottom
    tbl = t._tbl
    tblPr = tbl.tblPr
    borders = OxmlElement("w:tblBorders")
    for edge in ("top", "bottom"):
        e = OxmlElement(f"w:{edge}")
        e.set(qn("w:val"), "single"); e.set(qn("w:sz"), "6"); e.set(qn("w:color"), "000000")
        borders.append(e)
    tblPr.insert_element_before(borders, "w:shd", "w:tblLayout", "w:tblCellMar", "w:tblLook",
                                "w:tblCaption", "w:tblDescription")
    for tc in t.rows[nh - 1]._tr.tc_lst:       # rule below the (last) header row
        tcPr = tc.get_or_add_tcPr()
        b = OxmlElement("w:tcBorders")
        e = OxmlElement("w:bottom")
        e.set(qn("w:val"), "single"); e.set(qn("w:sz"), "4"); e.set(qn("w:color"), "000000")
        b.append(e)
        tcPr.insert_element_before(b, "w:shd", "w:noWrap", "w:tcMar", "w:textDirection", "w:tcFitText",
                                   "w:vAlign", "w:hideMark")
    for row in t.rows:
        trPr = row._tr.get_or_add_trPr()
        h = OxmlElement("w:cantSplit")
        trPr.append(h)
    if nh > 1:
        t.cell(0, 0).vertical_alignment = WD_CELL_VERTICAL_ALIGNMENT.CENTER
    if note:
        n = doc.add_paragraph()
        n.alignment = WD_ALIGN_PARAGRAPH.JUSTIFY
        add_runs(n, note, size=7.5, italic=True)
    sp = doc.add_paragraph()
    sp.paragraph_format.space_after = Pt(2)


# ---------------------------------------------------------------- title block (1 column)
set_cols(sec, 1)
p = doc.add_paragraph(); p.alignment = WD_ALIGN_PARAGRAPH.CENTER
r = p.add_run("AI Agents for Optimization of Thin-Shell Composites"); r.font.size = Pt(22)
p = doc.add_paragraph(); p.alignment = WD_ALIGN_PARAGRAPH.CENTER
p.add_run("ME 295 Lab Report 4").font.size = Pt(12)
p = doc.add_paragraph(); p.alignment = WD_ALIGN_PARAGRAPH.CENTER
p.paragraph_format.space_before = Pt(4)
p.add_run("Tara Venkatadri and Federico Benazzo").font.size = Pt(12)
p = doc.add_paragraph(); p.alignment = WD_ALIGN_PARAGRAPH.CENTER
r = p.add_run("California Institute of Technology, Pasadena, CA  •  November 29, 2026"); r.italic = True
p = doc.add_paragraph(); p.alignment = WD_ALIGN_PARAGRAPH.CENTER
p.paragraph_format.space_before = Pt(4)
r = p.add_run("Team: "); r.italic = True; r.font.size = Pt(9)
r = p.add_run("Tara Venkatadri and Federico Benazzo (identical reports are submitted, as permitted in the "
              "feedback on Lab Report 1)"); r.font.size = Pt(9)
p = doc.add_paragraph(); p.alignment = WD_ALIGN_PARAGRAPH.CENTER
p.paragraph_format.space_after = Pt(6)
r = p.add_run("GitHub repository: "); r.italic = True; r.font.size = Pt(9)
r = p.add_run("https://github.com/citgitfr/BenazzoVenkatadri_ThinShellSims/tree/main")
r.font.size = Pt(9); r.underline = True; r.font.color.rgb = RGBColor(0x1F, 0x4E, 0xA0)

# ---------------------------------------------------------------- body (2 columns)
new_section(2)

heading("Project Description and Goal")
para("Thin-shell carbon fiber reinforced polymer (CFRP) booms deploy solar arrays, antennas, and solar sails "
     "from small spacecraft, and they must resist bending, buckling, and torsion and be coiled around a hub "
     "without material failure [1], [2]. The material, layup, and cross-section are coupled design choices, "
     "and every candidate design needs its own finite element (FE) model, so neither a chatbot alone nor a "
     "fixed script can carry out the optimization [3]. The goal of the project is a team of Claude agents "
     "that, given the requirements of a boom, finds the lightest design in catalogs of materials, layups, and "
     "cross-sections that meets them, by repeatedly writing and running OpenSeesPy [4] FE models and "
     "verifying selected designs in Abaqus.")

heading("Agent Design")
para("The agent system is unchanged since Lab Report 3 (Fig. 1), where every component was demonstrated and "
     "the baseline was met. A librarian agent maintains catalogs of 38 laminae, 199 layups, and 100 "
     "cross-sections; the optimization orchestrator agent chooses each design and calls deterministic tools "
     "(Claude Code skills and scripts) that build, run, and post-process the OpenSeesPy model; and a results "
     "comparison agent, which sees only the outputs of the two codes, compares selected designs with Abaqus. "
     "The tools were changed as follows.")
figure(FIG1, 0.85 * COL_W,
       "Fig. 1.  Agent system (from Lab Report 3). Agents (red) are Claude-driven; tools (blue) are "
       "deterministic Python scripts. The right branch is the Abaqus verification loop, run on the lab server.")
lead("Faster buckling",
     "Buckling took about 12 h per omega design, mostly in a nonlinear scan for the buckling mode. The "
     "strength changed by less than 0.2% with the shape of the imperfection, so the scan was replaced by an "
     "80 s linear buckling analysis (LBA) of a short segment, whose mode, scaled to 0.1 times the thickness, "
     "is the imperfection. The load is then raised in steps on the imperfect shell: a path still rising past "
     "the requirement passes (the value is a lower bound), and a path that peaks or stalls below it gives the "
     "buckling load. The path runs first on a coarse 4 mm mesh, which is slightly too stiff, so it must reach "
     "1.12 times the requirement or is rerun on the design mesh. An omega design now takes 27 min and a tape "
     "spring 68 s.")
lead("Torsion",
     "A large-rotation rigid end, rotation control, and the torsion theories of Bredt (closed cells), St "
     "Venant, Vlasov (restrained warping), and Wagner (stiffening at large twist) were added. For 1 m "
     "aluminum booms, the OpenSeesPy twist was within 0.6% of Bredt for an omega boom (Abaqus within 0.05%), "
     "within 0.5% of Vlasov for a TRAC boom, and within 3.9% of Abaqus for the nonlinear TRAC twist. A prompt "
     "can now set a maximum twist under a torque.")
lead("Pre-screen",
     "All pre-screen checks are closed-form formulas from beam, plate, and shell theory, evaluated for every "
     "catalog combination in about 20 s. Each was corrected when a test case exposed a discrepancy: a "
     "Timoshenko shear term, an effective shear modulus for unbalanced layups, a local-buckling fit for closed "
     "booms in bending (35 segment LBAs), and warping restraint for open cross-sections. The Abaqus "
     "verification of the final design now covers every load case, and 395 regression checks are rerun "
     "after every change.")

heading("Demonstration")
para("The accompanying slides present three optimizations over the full catalogs in order of increasing "
     "complexity (Table I): for each, the requirements, the pre-screen, the path through the iterations, the "
     "optimal design, why no catalog design is lighter, the Abaqus checks, and the mesh convergence of the "
     "optimum. In test case 1 (a tape spring), the lightest design that passed the pre-screen missed the "
     "stiffness by 1%, and the next one, a stiffer fiber on the same section, was optimal. Test case 2 added "
     "torsion and a 40 N/mm stiffness. In test case 3, buckling is under a bending moment, and the torsion "
     "requirement eliminated every open cross-section (the best tape spring and TRAC reached 0.24% and 0.86% "
     "of the required torsional stiffness).")
table("I", "Optimizations over the full catalogs",
      ["", "Case 1", "Case 2", "Case 3"],
      [["Requirements (1 m boom, minimize mass)", "k ≥ 0.25 N/mm, P_{cr} ≥ 5 N, 40 mm hub",
        "k ≥ 40 N/mm, P_{cr} ≥ 100 N, 1° at 10 N·mm, 50 mm hub",
        "k ≥ 25 N/mm, M_{cr} ≥ 50 N·m, 1° at 100 N·mm, 100 mm hub"],
       ["Combinations", "179,100*", "716,400", "716,400"],
       ["Pass the pre-screen", "7,617*", "241", "3,322"],
       ["FE iterations", "20", "20 (+8 checks)", "20"],
       ["Optimum (iteration)", "2", "2", "6"],
       ["Optimal design", "L006 [0/0/0], tape spring", "L017 [0/0/0/0], corrugated",
        "L011 [60/0/0/60], corrugated"],
       ["Mass (g)", "12.8", "105.5", "104.9"],
       ["Abaqus runs", "5, all agree", "5, all agree", "8; it. 7 fails"],
       ["Mesh convergence (Δk / ΔF)", "0.82% / 4.1%", "0.11% / 4.2%", "0.24% / 3.2%"]],
      [0.86, 0.84, 0.84, 0.84],
      note="k: tip stiffness; P_{cr}, M_{cr}: buckling load and moment; 1°: maximum twist under the torque; "
           "+8: lighter designs run after the study at the user's request; ΔF: change of the Hashin index. "
           "*Tape-spring sections only.")

heading("Evaluation")
subheading("A. How the System Serves the Goal")
para("The goal was a system that optimizes thin-shell composite booms more efficiently than a grid search of "
     "FE models over the catalogs. Lab Report 3 met the baseline on a sandbox of 27 designs; the test cases "
     "here contain 0.18–0.72 million combinations, none of which can be ruled out by eye. A manual grid search "
     "of FE models would take months, since one iteration with buckling takes minutes to hours. The pre-screen "
     "removes 95.7–99.97% of the combinations, and the orchestrator sorts the rest by mass and, after each FE "
     "run, recalibrates the estimates to drop candidates that cannot be both lighter and feasible, so 20 runs "
     "suffice (about two days for test case 3). In test case 1, the only two lighter designs that passed the "
     "pre-screen fail the stiffness; in test case 2, eight lighter designs were run and all failed the "
     "stiffness; in test case 3, all but 9 of the 646,963 lighter designs fail a pre-screen even with the most "
     "favorable FE corrections, and those 9 were run, are mirrors of run designs, or miss the stiffness with "
     "their own correction.")
subheading("B. Where the System Broke")
lead("Shear deformation",
     "In test case 3, the first FE design (an omega boom) was 41% less stiff than the Euler–Bernoulli "
     "estimate, and Abaqus agreed with OpenSeesPy, so the estimate was at fault: shear of the thin walls caused "
     "39% of the deflection. With Timoshenko beam theory, the estimate is within 9% of the FE result.")
lead("Local buckling missed by OpenSeesPy",
     "The Abaqus check first covered only the static bending case. With every load case verified, iteration "
     "7 of test case 3 (102.2 g) buckled locally in Abaqus at 49,457 N·mm, 1.1% below the requirement, while "
     "the OpenSeesPy imperfect path rose past 51,014 N·mm, because the local mode of a flat bonded tab is "
     "stable and the path continues past it. Iteration 7 and its mirror therefore fail the buckling "
     "requirement, and iteration 6 (104.9 g, first buckling 11–13% above the requirement) is the optimum.")
lead("Unreachable requirement",
     "Test case 2 first asked for 50 N/mm, but no catalog design that coils on the hub reached it (44.3 N/mm "
     "at most in FE), because larger sections fail the coiling check. The orchestrator can only report such a "
     "case; with user input, the requirement was changed to 40 N/mm and a new study was run.")
lead("Buckling not verified",
     "The Abaqus export tool cannot model pinned end supports, so the pin-pin buckling of the test case 2 "
     "optimum (at least 154.9 N against 100 N) was checked only in OpenSeesPy.")
lead("Pre-screen calibration",
     "The buckling pre-screen is a perfect-shell fit: it was conservative by at least 9% for corrugated booms "
     "with angled outer plies, but omega booms buckled up to 41% below it. Because the optimum was found at "
     "iteration 2 or 6, the user chose the remaining iterations to calibrate it for each family of "
     "cross-sections. User input remains necessary for such decisions and for interpreting requirements.")

heading("Plan and Risks")
para("All components of the system were built by Lab Report 3 and tested on the baseline, and this report "
     "demonstrated them on problems beyond it, so the project is complete; the final report and presentation "
     "will summarize the work of the term. The main risk of the designs is their small margins: the test "
     "case 2 stiffness is only 2.8% above the requirement and rests on mean catalog properties. Continuous "
     "optimization of the cross-section geometry, as in Palmeri and Laurenzi [5], instead of discrete catalog "
     "rows, is a possible extension.")

heading("AI Use Acknowledgment", numbered=False)
para("Claude Code (Opus 5.5, Anthropic) was used to write all Python scripts, skills, and agents, to run the "
     "optimizations and the Abaqus verifications on the lab server, and to draft this report, the slides, "
     "and the figures from detailed outlines provided by the authors. The authors set the requirements, "
     "approved every tool change, decided the buckling criterion and the changed stiffness requirement, checked the "
     "results against theory and Abaqus, and proofread and edited the report.")

heading("References", numbered=False)
REFS = [
    'T. W. Murphey, W. Francis, B. Davis, and J. M. Mejia-Ariza, "High strain composites," in *Proc. 2nd AIAA Spacecraft Struct. Conf.*, 2015, AIAA 2015-0942.',
    'J. M. Fernandez, "Advanced deployable shell-based composite booms for small satellite structural applications including solar sails," presented at the *Int. Symp. Solar Sailing*, Kyoto, Japan, Jan. 2017.',
    'J. Liu, Z. Geng, R. Cao, L. Cheng, P. Bocchini, and M. Cheng, "A large language model-empowered agent for reliable and robust structural analysis," *Struct. Infrastruct. Eng.*, pp. 1–16, 2026.',
    'M. Zhu, F. McKenna, and M. H. Scott, "OpenSeesPy: Python library for the OpenSees finite element framework," *SoftwareX*, vol. 7, pp. 6–11, 2018.',
    'F. Palmeri and S. Laurenzi, "Neural network-based surrogate modeling for buckling performance optimization of lightweight-composite collapsible tubular masts," *Biomimetics*, vol. 9, no. 8, p. 494, 2024.',
]
for i, ref in enumerate(REFS, 1):
    p = doc.add_paragraph()
    p.alignment = WD_ALIGN_PARAGRAPH.LEFT
    p.paragraph_format.left_indent = Inches(0.3)
    p.paragraph_format.first_line_indent = Inches(-0.3)
    p.paragraph_format.space_after = Pt(1)
    add_runs(p, f"[{i}]\t" + ref, size=8)
    p.paragraph_format.tab_stops.add_tab_stop(Inches(0.3))

doc.save(OUT)
print("saved", OUT)


