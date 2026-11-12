"""Builds 'Lab Report 3 Narrative Report.docx' (ME 295, same format as Lab Report 2).

Content follows 'Narrative Report Outline.docx'; numbers come from
Code for Project/11-11-26 (Tara)/SUMMARY.md, ts_toy_minmass_REPORT.pdf and the demo slides.
Needs python-docx (pip install python-docx). Figure 3 is made by make_narrative_figs.py.
Inline markup in paragraph text: `code`, *italic*, **bold**, _{sub}, ^{sup}.
"""
import os
import re

from docx import Document
from docx.enum.section import WD_SECTION
from docx.enum.table import WD_TABLE_ALIGNMENT
from docx.enum.text import WD_ALIGN_PARAGRAPH
from docx.oxml import OxmlElement
from docx.oxml.ns import qn
from docx.shared import Inches, Pt, RGBColor

HERE = os.path.dirname(os.path.abspath(__file__))
ROOT = os.path.dirname(HERE)
OUT = os.path.join(HERE, "Lab Report 3 Narrative Report.docx")
FIG1 = os.path.join(HERE, "narrative_figs", "fig1_system_diagram_lab3.png")  # demo slide 2 diagram
FIG2 = os.path.join(ROOT, "Code for Project", "11-11-26 (Tara)", "tape_spring_L001_000_tip_load",
                    "comparison_opensees_abaqus", "pv_uz_deformed.png")
FIG3 = os.path.join(HERE, "narrative_figs", "fig3_screening_27_designs.png")

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
    t = doc.add_table(rows=1 + len(rows), cols=len(header))
    t.alignment = WD_TABLE_ALIGNMENT.CENTER
    for i, row in enumerate([header] + rows):
        for j, val in enumerate(row):
            cell = t.cell(i, j)
            cell.width = Inches(widths[j])
            cp = cell.paragraphs[0]
            cp.alignment = WD_ALIGN_PARAGRAPH.LEFT if j == 0 else WD_ALIGN_PARAGRAPH.CENTER
            add_runs(cp, val, size=8, bold=False)
    # IEEE-style rules: top, below header, bottom
    tbl = t._tbl
    tblPr = tbl.tblPr
    borders = OxmlElement("w:tblBorders")
    for edge in ("top", "bottom"):
        e = OxmlElement(f"w:{edge}")
        e.set(qn("w:val"), "single"); e.set(qn("w:sz"), "6"); e.set(qn("w:color"), "000000")
        borders.append(e)
    tblPr.append(borders)
    for cell in t.rows[0].cells:
        tcPr = cell._tc.get_or_add_tcPr()
        b = OxmlElement("w:tcBorders")
        e = OxmlElement("w:bottom")
        e.set(qn("w:val"), "single"); e.set(qn("w:sz"), "4"); e.set(qn("w:color"), "000000")
        b.append(e)
        tcPr.append(b)
    for row in t.rows:
        trPr = row._tr.get_or_add_trPr()
        h = OxmlElement("w:cantSplit")
        trPr.append(h)
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
p.add_run("ME 295 Lab Report 3").font.size = Pt(12)
p = doc.add_paragraph(); p.alignment = WD_ALIGN_PARAGRAPH.CENTER
p.paragraph_format.space_before = Pt(4)
p.add_run("Tara Venkatadri and Federico Benazzo").font.size = Pt(12)
p = doc.add_paragraph(); p.alignment = WD_ALIGN_PARAGRAPH.CENTER
r = p.add_run("California Institute of Technology, Pasadena, CA  •  November 15, 2026"); r.italic = True
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
para("Thin-shell carbon fiber reinforced polymer (CFRP) booms deploy solar arrays, antennas, and solar "
     "sails from small spacecraft [1], [2]. Many cross-sections are available, including tape springs, "
     "triangular rollable and collapsible (TRAC) booms, omega booms, and corrugated booms, each suited to "
     "different missions [3], and the booms must resist bending, buckling, and coiling around a hub without "
     "material failure. The design variables are coupled: the material and layup are discrete choices, while "
     "the cross-section geometry is continuous. Existing optimizers vary the geometry of a single "
     "cross-section [4]; a chatbot alone cannot compute finite element (FE) responses reliably [5]; and a "
     "fixed script cannot handle the new FE model that each design requires. The goal of the project is a "
     "team of Claude agents that, given the requirements of a boom, finds the lightest design (material, "
     "layup, and cross-section) that meets them without failing, by repeatedly writing and running "
     "OpenSeesPy [6] FE models in an agent loop of thought, action, and observation [7], [8]. LLM agents "
     "have been shown to write and run OpenSeesPy models reliably [5], [9], but none has been applied to "
     "thin-shell composites.")

# ---------------------------------------------------------------- Fig. 1 (full width)
new_section(1)
figure(FIG1, 6.1,
       "Fig. 1.  Agent system; all modules are now built and tested. Agents (red) are Claude-driven; tools "
       "(blue) are deterministic Python scripts. The left branch builds and runs the OpenSeesPy model; the "
       "right branch is the Abaqus verification loop, which Claude now runs on the lab server (at most 8 CPUs). "
       "The results comparison agent reads the OpenSeesPy results and the Abaqus output database (ODB) "
       "directly, and the user reviews its comparison.")
new_section(2)

heading("Updates Since Lab Report 2")
lead("Verification split into a tool and an independent agent",
     "In Lab Report 2, a single Abaqus verifier agent both wrote the Abaqus script and compared its results "
     "with OpenSeesPy, which invites confirmation bias. The translation is now a deterministic skill "
     "(`opensees-to-abaqus`) called by the orchestrator, and a separate results comparison agent receives "
     "only the outputs of the two runs (the OpenSeesPy results file and the Abaqus output database) "
     "and never sees the code that built either model.")
lead("Claude on the lab server",
     "The repository was cloned onto the research group's shared Abaqus server, so Claude can run the Abaqus "
     "verification automatically, without a human present to move files between machines. Because the "
     "server is shared, Abaqus is run only through a wrapper (`run_abaqus.py`) that limits each job to at "
     "most 8 CPUs (1 by default) and refuses to write outside the project folder.")
lead("System diagram completed",
     "Every element that was missing at Lab Report 2 has been built and tested: the objective/constraint "
     "calculator, the layup and cross-section catalogs, the optimization loop of the orchestrator, and the "
     "results comparison agent (Fig. 1).")
lead("First end-to-end optimization against a baseline",
     "The full system was run on a sandboxed problem with three materials, three layups, and three "
     "geometries, constructed so that a human can identify the optimum by inspection, to confirm that the "
     "orchestrator finds the same optimum (Section IV-D).")

heading("Agent Design")
subheading("A. System Architecture")
para("Three agents make the decisions that require judgment, and each is separated from the others by "
     "its permissions or its information. The *librarian agent* is the only agent with web access; it "
     "compiled and maintains the three catalogs from which designs are chosen. The *optimization orchestrator "
     "agent* reads the user's requirements, chooses each design, calls the tools, and decides when to stop. "
     "The *results comparison agent* sees only the outputs of the OpenSeesPy and Abaqus runs. The tools "
     "(Claude Code skills, each a Python script with instructions) write the ply/layup, mesh, and load/"
     "boundary-condition code, assemble it into one standalone OpenSeesPy script, run it, plot it, compute "
     "the ply-by-ply Hashin failure index [10], the buckling load, the objective (mass), and the "
     "constraints, and translate the model to Abaqus.")
subheading("B. Optimization Orchestrator")
para("A single agent description was not enough to keep the orchestrator on task over a long "
     "optimization, so it is now built from several parts. A protocol file lists the steps of each "
     "iteration in a fixed order (read the requirements; choose material, geometry, and layup from the "
     "catalogs; build, run, and plot the model; check failure, coiling, and buckling; evaluate the objective "
     "and constraints; choose the next design) and states what the orchestrator may do, what needs the "
     "users' approval, and what is forbidden (for example, editing the catalogs or the verification tools). "
     "A hook blocks forbidden actions while a study is active. A design screen ranks every catalog "
     "combination (about 1.6 million) in about 20 s using closed-form mass, beam stiffness, buckling "
     "estimates, and an exact laminate-theory coiling index. The combinations that fail these prescreens are "
     "discarded, and the optimization is a grid search over the material/layup/geometry combinations that "
     "pass: the orchestrator runs the FE model of each remaining candidate in order of increasing predicted "
     "mass, rather than guessing the next design. A study manager refuses out-of-order steps, checks the FE "
     "stiffness against thin-walled beam theory, schedules mesh-convergence checks and 5–10 Abaqus "
     "verifications, and stops after diminishing returns or 100 iterations.")

heading("Working Demonstrations")
para("The accompanying slides demonstrate each part of Fig. 1 with the prompt given and the output "
     "returned. This section summarizes what each demonstration shows. All demonstrations use a 1 m tape "
     "spring of IM7/8552 (catalog entry L001 [11]) with a [0/0/0] layup of 0.035 mm plies (h = 0.105 mm) and "
     "a 180° cross-section of radius R = 20 mm, clamped at the root and free at the tip.")
subheading("A. Catalogs")
para("The librarian built a material catalog of 38 unidirectional laminae (carbon, glass, basalt, and flax "
     "fibers in epoxy and thermoplastic matrices) with stiffness, strength, ply thickness, density, and a "
     "source for every row, taken from qualification reports, papers, and datasheets (e.g., [11]–[13]); "
     "estimated values are marked. The layup catalog lists all 199 symmetric layups of 3–5 plies with "
     "angles of 0, ±30, ±45, ±60, and 90° and at least one 0° ply, and the "
     "cross-section catalog lists 100 geometries, 25 each of tape springs, TRAC [14], omega, and corrugated "
     "[15] booms, from the literature or within published ranges. A script checks that every cross-section "
     "flattens, has tangent connections, and does not self-intersect.")
subheading("B. OpenSeesPy Write/Run Pipeline")
para("For a 1 N tip load in opposite-sense bending, the tools generated, assembled, and ran a 20 700-line "
     "OpenSeesPy script; only its outputs fit on a slide. Table I shows that the tip deflection and "
     "rotation are within 1.3% of beam theory and change by 0.9% when the 5 mm mesh is refined to 2.5 mm. "
     "The objective/constraint calculator gives a mass of 10.42 g, which agrees with a hand calculation, and "
     "a maximum Hashin index of 4.2 × 10^{−4} (fiber tension at the root); the flattening of the "
     "cross-section for coiling gives a larger index of 0.136, so coiling governs, but all indices are below "
     "1. The visualizer draws the axial stress in the top ply and the transverse deflection (exaggerated "
     "11.7×, with the true values on the colorbar).")
table("I", "Tape spring under a 1 N tip load: pipeline and Abaqus verification",
      ["Quantity", "OpenSeesPy 5 mm", "OpenSeesPy 2.5 mm", "Abaqus 2.5 mm", "Beam theory"],
      [["Tip deflection (mm)", "−8.596", "−8.523", "−8.583", "−8.414"],
       ["Tip rotation (rad)", "0.01277", "0.01266", "0.01275", "0.01262"],
       ["σ_{1}, top ply (MPa)", "–", "46.14", "46.33", "–"],
       ["τ_{12}, top ply (MPa)", "–", "0.355", "0.354", "–"]],
      [1.05, 0.6, 0.65, 0.6, 0.5])
subheading("C. Abaqus Verification Loop")
para("The same model was translated to an Abaqus/CAE script, which Claude ran on the lab server through "
     "the CPU-limited wrapper. The comparison agent, given only the two results files, found that the tip "
     "deflection and rotation agree within 0.7% and the ply stresses within 0.4% (Table I, Fig. 2). This "
     "difference is acceptable because the two programs model shell elements, layered composites, and loads "
     "and boundary conditions differently. The comparison agent also found a bug in the comparison script "
     "(two curvature components paired in the wrong order), which shows the value of a verifier that "
     "inspects the results independently.")
figure(FIG2, COL_W,
       "Fig. 2.  Transverse deflection u_{z} (mm) of the tape spring under a 1 N tip load from OpenSeesPy "
       "(left, tip −8.523 mm) and from the translated Abaqus model run on the lab server (right, tip "
       "−8.582 mm); deformation drawn ×20.")
subheading("D. End-to-End Baseline")
para("To show that the full system finds an optimum that a human knows to be optimal, the orchestrator "
     "was given sandboxed catalogs of three options each, giving 27 designs. Only tape-spring cross-sections "
     "were considered, each a single circular arc subtending an angle of 180°. The user selected the "
     "expected optimum as L001 (the unmodified IM7/8552 entry), a [0/0/0] layup, and R = 20 mm: this is the "
     "only material with both the real density and the real strengths, the thinnest layup with all fibers along the "
     "boom (the loads are axial tension and bending, so off-axis plies add no useful stiffness or strength), "
     "and the narrowest cross-section that can still be coiled. Every other option changes a single property "
     "of this design so that it becomes heavier or fails a requirement. The sandbox was a copy "
     "of the orchestrator, so the real catalogs were not modified. The objective was minimum mass, subject to "
     "no failure under a 10 N axial tension, a tip deflection of at most 2 cm and no failure under a 1 N "
     "opposite-sense tip load, and no failure when coiled on a 4 cm radius hub.")
para("The materials were L001, L001 with 1000 times the density (same stiffness and strength, so it can "
     "never be optimal for mass), and L001 with all strengths reduced by a factor of 1000. The last is "
     "expected to fail because the Hashin index is quadratic in stress/strength, so it rises by a factor of "
     "10^{6}; flattening the cross-section for coiling, which gives an index of 0.136 with L001, then gives "
     "about 10^{5}. The layups were [0/0/0] (expected optimum, since the loads are axial and bending and need "
     "no off-axis plies), [0]_{10}, and [90/90/90]. The [0]_{10} layup is 3.3 times thicker, so it is heavier, "
     "and the coiling strains, which grow with the half-thickness h/2, give a hub index of 2.03 on R = 20 mm, "
     "so it is expected to fail when coiled. The [90/90/90] layup places the fibers around the cross-section, "
     "so its axial modulus is E_{2} instead of E_{1}, about 1/18 as large, and its tip deflection under 1 N "
     "is about 150 mm, well above the 2 cm limit. The geometries were R = 20 mm, R = 200 mm "
     "(10 times heavier), and R = 2 mm. The R = 2 mm section is expected to fail in two ways: the flattening "
     "strain (h/2)/R is 10 times larger, giving a hub index of 14, and the bending stiffness, which scales "
     "with R^{3}, is 1000 times lower than for R = 20 mm.")
para("The tools were first run without any agent on the expected optimum to establish the baseline "
     "(Table II). The orchestrator was then given the problem as a single prompt. Before running any FE "
     "model, its design screen applied two prescreens to all 27 designs. The coiling prescreen computes the "
     "ply stresses of the cross-section flattened (transverse curvature change 1/R) and bent onto the 4 cm hub "
     "(longitudinal curvature ±1/40 mm^{−1}, all four sign combinations) from the laminate "
     "ABD matrix; because this curvature state is uniform, classical laminate theory is exact and no FE model "
     "is needed, and a design is rejected if its Hashin index is 1 or more. The stiffness prescreen estimates "
     "the tip stiffness from thin-walled beam theory, k = 3E_{x}I/L^{3}, and rejects a design if k is below "
     "85% of the required 1 N/20 mm = 0.05 N/mm, which allows for the 15% tolerance of the estimate. Mass "
     "was not used to reject designs, only to order them. The coiling prescreen rejected 17 designs (all L003 "
     "and all R = 2 mm designs, and [0]_{10} on R = 20 mm) and the stiffness prescreen 12 (some fail both), "
     "so 19 of the 27 designs were rejected and the grid search needed only 8 FE iterations (Fig. 3).")
para("The orchestrator ran the lightest remaining candidate first and confirmed that the other 7 feasible "
     "designs were 10–33 000 times heavier. The optimal design identified by the orchestrator, L001 with "
     "a [0/0/0] layup and R = 20 mm, matches the user-specified baseline design. Its results agree with the "
     "baseline within the differences caused by its coarser mesh (Table II), and its Abaqus verification "
     "agrees within 2.6%. An Abaqus Riks analysis placed the snap-through moment of the optimum at "
     "1395 N·mm, above the 1000 N·mm root moment of the 1 N load, consistent with the OpenSeesPy "
     "buckling path, which was still rising at the requirement. Thus, the full orchestrator architecture "
     "works as intended.")
table("II", "Optimal design: baseline, orchestrator, and Abaqus",
      ["Quantity", "Baseline 2.5 mm", "Orchestrator 5 mm", "Abaqus 5 mm"],
      [["Mass (g)", "10.42", "10.40", "–"],
       ["Tip deflection, 1 N (mm)", "8.52", "8.60", "8.82"],
       ["Tip rotation (rad)", "0.0127", "0.0128", "0.0131"],
       ["Hashin F, 1 N tip load", "4.2×10^{−4}", "3.7×10^{−4}", "–"],
       ["Hashin F, 10 N axial", "4.0×10^{−7}", "3.9×10^{−7}", "–"],
       ["Hashin F, coiled on hub", "0.183", "0.183", "–"]],
      [1.35, 0.75, 0.8, 0.6])
figure(FIG3, COL_W,
       "Fig. 3.  Mass of the 27 sandboxed designs (digits: material, layup, and geometry option). Nineteen "
       "were rejected before any FE run; the remaining eight were run in the order shown, and the optimum "
       "(L001, [0/0/0], R = 20 mm) was found in the first iteration.")
subheading("E. Failure Case")
para("The first attempt at a baseline was to reproduce the omega-boom optimization of Palmeri and Laurenzi "
     "[16], which maximized buckling loads and moments. This problem turned out to be outside the scope of "
     "the orchestrator: it used a user-specified material and layup rather than the catalogs, a continuous "
     "rather than discrete geometry, and buckling analyses that the existing skills do not support for closed "
     "sections. After several hours, Claude could not complete a mesh-convergence study even for the "
     "published optimal design, because of the limited buckling capabilities of OpenSeesPy, so this "
     "baseline was replaced by the simpler one in Section IV-D.")

heading("Evaluation")
subheading("A. Verification Independent of the LLM")
para("The deterministic tools were checked against classical laminate theory, beam theory, the elastica, "
     "and Abaqus in Lab Report 2, and the new coiling check uses exact laminate theory. Within an "
     "optimization, the FE stiffness of every design is compared with thin-walled beam theory, mesh "
     "convergence is checked, and the Abaqus comparison is performed by an agent that never sees the model "
     "code.")
subheading("B. Baseline")
para("The optimal design identified by the orchestrator matches the user-specified baseline, its values match the tools-only baseline, "
     "and the Abaqus verification agrees, so the system passes the baseline test proposed in Lab Report 2. "
     "The run also revealed limitations: buckling was checked on the perfect geometry "
     "only, and the closed-form buckling estimate of the screen, the steady fold moment of the tape spring, "
     "was more than 80 times below the FE result and would have rejected every design, so it was not used "
     "to reject designs in this study.")

heading("Next Steps")
para("These next steps will be the focus of Lab Report 4. First, the orchestrator will be run on optimizations that a human cannot solve by inspection: large "
     "searches over the full catalogs, in which every material, layup, and geometry is realistic and none "
     "can be ruled out by eye, so that the speed of the orchestrator relative to a manual search can be "
     "measured. Second, the system will be extended to the TRAC, omega, and corrugated cross-sections, "
     "which requires meshing the bonded double-thickness webs and closed sections and, as the failure case "
     "showed, a better approach to buckling, possibly with a greater role for Abaqus.")

heading("Running Log and Repository")
para("The running log and the GitHub repository are updated regularly. Dated log entries for each team "
     "member are in the `Running Log` folder (entries from November 4 to 11 cover the work in this report), "
     "and a separate log records every change Claude made to the tools during orchestrator runs. The code and "
     "results of each test are in `Code for Project`, the agents, skills, "
     "orchestrator, and catalogs are in `.claude`, and the Claude conversations used to build and test the "
     "system are in `Claude Conversations`.")

heading("AI Use Acknowledgment", numbered=False)
para("Claude Code (Opus 5.5, Anthropic) was used to create all Python scripts, skills, and agents, to run "
     "the test cases and the optimization, and to run Abaqus on the lab server. It was also used to write "
     "the draft of this report and the demonstration slides from detailed outlines provided by the authors, "
     "and to make the figures. The authors read all agent and protocol files to ensure that they matched the "
     "desired functionality, designed the sandboxed baseline so that its optimum was known, checked the "
     "results against analytical calculations and Abaqus models, and proofread and edited the final report "
     "to ensure that it conveyed the intended information.")

heading("References", numbered=False)
REFS = [
    'T. W. Murphey, W. Francis, B. Davis, and J. M. Mejia-Ariza, "High strain composites," in *Proc. 2nd AIAA Spacecraft Struct. Conf.*, 2015, AIAA 2015-0942.',
    'J. M. Fernandez, "Advanced deployable shell-based composite booms for small satellite structural applications including solar sails," presented at the *Int. Symp. Solar Sailing*, Kyoto, Japan, Jan. 2017.',
    'T. W. Murphey, D. Hunt, D. Browning, and M. W. Folkers, "Performance comparison of flattenable and rollable booms," in *AIAA SciTech 2026 Forum*, 2026, AIAA 2026-0802.',
    'T.-W. Liu, J.-B. Bai, and N. Fantuzzi, "Folding behavior of the thin-walled lenticular deployable composite boom: Analytical analysis and many-objective optimization," *Mech. Adv. Mater. Struct.*, vol. 30, no. 11, pp. 2221–2239, 2023.',
    'J. Liu, Z. Geng, R. Cao, L. Cheng, P. Bocchini, and M. Cheng, "A large language model-empowered agent for reliable and robust structural analysis," *Struct. Infrastruct. Eng.*, pp. 1–16, 2026.',
    'M. Zhu, F. McKenna, and M. H. Scott, "OpenSeesPy: Python library for the OpenSees finite element framework," *SoftwareX*, vol. 7, pp. 6–11, 2018.',
    'C. Daraio, "ME/CE/AM 295 Agentic AI in Scientific Discovery," lecture slides, California Institute of Technology, 2026.',
    'S. Yao, J. Zhao, D. Yu, N. Du, I. Shafran, K. Narasimhan, and Y. Cao, "ReAct: Synergizing reasoning and acting in language models," in *Proc. Int. Conf. Learn. Represent. (ICLR)*, 2023.',
    'Z. Zhang, K. Chen, C. B. Cevik, and C. D. Moen, "LLM agent framework for structural steel design," in *Proc. Annu. Stability Conf.*, Structural Stability Research Council, 2026.',
    'Z. Hashin, "Failure criteria for unidirectional fiber composites," *J. Appl. Mech.*, vol. 47, no. 2, pp. 329–334, 1980.',
    'National Center for Advanced Materials Performance, "Hexcel 8552 IM7 unidirectional prepreg qualification material property data report," Wichita State Univ., Wichita, KS, Rep. CAM-RP-2009-015 Rev. A, 2011.',
    'P. P. Camanho, P. Maimí, and C. G. Dávila, "Prediction of size effects in notched laminates using continuum damage mechanics," *Compos. Sci. Technol.*, vol. 67, no. 13, pp. 2715–2727, 2007.',
    'P. D. Soden, M. J. Hinton, and A. S. Kaddour, "Lamina properties, lay-up configurations and loading conditions for a range of fibre-reinforced composite laminates," *Compos. Sci. Technol.*, vol. 58, no. 7, pp. 1011–1022, 1998.',
    'F. Benazzo and S. Pellegrino, "Design and manufacturing of ultra-thin thermoplastic composites for coilable longerons," in *AIAA SciTech 2025 Forum*, 2025.',
    'J. M. Fernandez and C. E. Volle, "Corrugated rollable tubular booms," in *AIAA SciTech 2021 Forum*, 2021.',
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
