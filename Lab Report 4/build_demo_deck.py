"""Build the Lab Report 4 demonstration deck (same template as the Lab Report 3 deck).

Run with any Python that has python-pptx, python-docx, Pillow (and the figures from make_lab4_figs.py):
    python "Lab Report 4/make_lab4_figs.py"
    python "Lab Report 4/build_demo_deck.py"
Template: the slide helpers, theme, title background and Caltech logo of Lab Report 3/build_demo_deck.py
(the 11-11-26 group-meeting deck). Content follows 'Lab Report 4 Outline.docx'; numbers come from the
REPORT.md / ledger.csv / FINDINGS.md / investigations of the three test cases, the regression-test log and the
Running Log.
Output: "Lab Report 4/Lab Report 4 Demonstration of Optimization Test Cases.pptx".
"""
import io
import os
import re
import sys

from PIL import Image, ImageFont
from pptx import Presentation
from pptx.enum.text import MSO_ANCHOR, PP_ALIGN

HERE = os.path.dirname(os.path.abspath(__file__))
ROOT = os.path.dirname(HERE)
sys.path.insert(0, os.path.join(ROOT, "Lab Report 3"))
import build_demo_deck as L3          # noqa: E402  (Lab 3 helpers: header, boxes, tables, pills, ...)
import prompt_bubbles as pb           # noqa: E402

from build_demo_deck import (BORDER, GREEN_BG, GREEN_LN, GREEN_TXT, GREY_TXT, ORANGE, PEACH,  # noqa: E402
                             RED_BG, RED_TXT, SYM, WHITE, add_box, add_pic, add_table, add_text, label,
                             status_pill)

OUT = os.path.join(HERE, "Lab Report 4 Demonstration of Optimization Test Cases.pptx")
FIGS = os.path.join(HERE, "figs")
CFP = os.path.join(ROOT, "Code for Project")
TARA = os.path.join(CFP, "11-17-26 (Tara)", "boom_1m_lat50N_k25_tors1deg_hub100")
K40 = os.path.join(CFP, "11-21-26 (Orchestrator)", "boom_1m_comp100N_k40_tors1deg10Nmm_hub50")
TORS = os.path.join(CFP, "11-17-26 (Tara)", "trac_torsion", "trac_torque_twist.png")

X, W = 0.3, 12.75          # usable slide width (13.33 in slide)
T = 18                     # body text size
TB = 15                    # table text size
NB = 16                    # note box text size


def img(path):
    with open(path, "rb") as f:
        return f.read()


def fig(name):
    return img(os.path.join(FIGS, name))


def bubble(text, w, pt=9.5):
    items = []
    for part in text:
        items.append(("b", part[2:]) if part.startswith("- ") else ("p", part))
    return pb.bubble(items, w, pt)


def pic_fit(s, blob, x, y, maxw, maxh, name=None, border=False):
    """picture as large as fits in maxw x maxh; returns (w, h)"""
    im = Image.open(io.BytesIO(blob))
    ar = im.size[1] / im.size[0]
    w = min(maxw, maxh / ar)
    _, w, h = add_pic(s, blob, x, y, w=w, border=border, name=name)
    return w, h


# --------------------------------------------------------------------- text height (Calibri metrics)
_F = {}


def _font(size, bold):
    k = (size, bold)
    if k not in _F:
        _F[k] = ImageFont.truetype("C:/Windows/Fonts/" + ("calibrib.ttf" if bold else "calibri.ttf"),
                                   int(round(size * 100 / 72)))
    return _F[k]


def text_h(paras, w, size, space_after, inset=0.1, bullets=False, first_plain=False):
    """height [in] of paragraphs wrapped into a box of width w (same wrapping as PowerPoint, approx.)"""
    total = 0.0
    for i, para in enumerate(paras):
        runs = [(para, {})] if isinstance(para, str) else para
        ind = 25 if bullets and not (first_plain and i == 0) else 0
        avail = (w - 2 * inset) * 100 - ind
        cur, lines, sz = 0.0, 1, size
        for t, o in runs:
            sz = o.get("size", size)
            f = _font(sz, o.get("bold", False))
            for wd in re.sub(r"_\{([^}]*)\}", r"\1", t).split(" "):
                wl = f.getlength(wd + " ")
                if cur + wl > avail + f.getlength(" ") and cur > 0:
                    lines, cur = lines + 1, wl
                else:
                    cur += wl
        total += lines * sz * 1.2 / 72 + space_after / 72
    return total


def bullets(s, x, y, w, items, size=T, space_after=6, h=None):
    hh = text_h(items, w, size, space_after, inset=0.05, bullets=True) + 0.15
    add_text(s, x, y, w, h or hh, items, size=size, bullets=True, space_after=space_after)
    return hh


def text(s, x, y, w, items, size=T, space_after=4, color=None):
    hh = text_h(items, w, size, space_after, inset=0.05) + 0.12
    add_text(s, x, y, w, hh, items, size=size, space_after=space_after)
    return hh


def note(s, x, y, w, runs, good=None, size=NB, space_after=2):
    """note box exactly as tall as its text (no empty colored band above/below)"""
    fill, line = (PEACH, ORANGE) if good is None else ((GREEN_BG, GREEN_LN) if good else (RED_BG, RED_TXT))
    h = text_h(runs, w, size, space_after, inset=0.12) + 0.2
    add_box(s, x, y, w, h, runs, fill=fill, line=line, size=size, align=PP_ALIGN.LEFT, space_after=space_after,
            inset=0.12)
    return h


def req_box(s, x, y, w, lines, size=16):
    paras = [[B("Requirements (minimize mass)")]] + lines
    h = text_h(paras, w, size, 4, inset=0.15, bullets=True, first_plain=True) + 0.2
    add_box(s, x, y, w, h, paras, fill=WHITE, line=BORDER, size=size, align=PP_ALIGN.LEFT, anchor=MSO_ANCHOR.TOP,
            bullets=True, space_after=4, inset=0.15)
    return h


def B(t):
    return (t, {"bold": True})


def N(t):
    return (t, {})


def G(t):
    return (t, {"color": GREY_TXT})


# =============================================================================================== deck

def main():
    prs = Presentation(L3.BASE)
    media = L3.base_media(prs)
    diag = L3.diagram_crops()
    logo = media["caltech_logo.png"]
    sldIdLst = prs.slides._sldIdLst
    for sldId in list(sldIdLst):
        prs.part.drop_rel(sldId.rId)
        sldIdLst.remove(sldId)
    blank = [lay for lay in prs.slide_layouts if lay.name == "Blank"][0]

    def new_slide(title=None):
        s = prs.slides.add_slide(blank)
        if title:
            L3.header(s, title, len(prs.slides), logo)
        return s

    # 1 ------------------------------------------------------------------------------------- title
    s = new_slide()
    s.shapes.add_picture(io.BytesIO(media["title_bg.png"]), 0, 0, prs.slide_width, prs.slide_height)
    add_text(s, 1.2, 2.35, 10.93, 1.45, ["AI Agents for the Optimization of", "Thin-Shell Composite Booms"],
             size=42, bold=True, align=PP_ALIGN.CENTER, anchor=MSO_ANCHOR.MIDDLE, space_after=0)
    add_text(s, 2.4, 3.95, 8.53, 2.45,
             ["Federico Benazzo and Tara Venkatadri",
              "Lab Report 4 Demonstration: Optimization Test Cases",
              [("Disclaimer: These slides were generated by Claude Opus 5.5 (Anthropic) based on an outline "
                "provided by the authors.", {"size": 16, "color": GREY_TXT})]],
             size=24, align=PP_ALIGN.CENTER, space_after=10)

    # 2 ------------------------------------------------------------------------------------- system diagram
    s = new_slide("Agent System and What This Demonstration Shows")
    add_pic(s, diag["full"], 0.3, 0.95, w=7.3, border=False, name="system_diagram")
    add_text(s, 7.75, 0.8, 5.3, 0.45, [[B("On the next slides")]], size=20, space_after=0)
    items = [("Lab 3 recap and the tools", "baseline met in Lab 3", "3-4"),
             ("Changes since Lab 3", "faster buckling, pre-screen fixes, torsion", "5-7"),
             ("Pre-screening method", "closed-form checks used in all three cases", "8"),
             ("Test case 1: tape spring", "buckling, stiffness, coiling", "9-13"),
             ("Test case 2: any cross-section", "+ torsion, stiffness 40 N/mm", "14-18"),
             ("Test case 3: any cross-section", "+ buckling under a bending moment", "19-25")]
    y = 1.3
    for name, who, sl in items:
        add_box(s, 7.75, y, 5.3, 0.8,
                [[("✓  ", {"font": SYM, "bold": True, "color": GREEN_TXT}), B(name)],
                 [G(f"{who}, slides {sl}" if "-" in sl else f"{who}, slide {sl}")]],
                fill=WHITE, line=BORDER, align=PP_ALIGN.LEFT, size=16, space_after=0, inset=0.15)
        y += 0.88
    add_text(s, 0.3, 6.5, 10.8, 0.8,
             [[G("Same system as Lab 3: librarian (catalogs), orchestrator (optimization loop), comparison agent "
                 "(Abaqus check)")]], size=14, space_after=0)

    # 3 ------------------------------------------------------------------------------------- lab 3 recap
    s = new_slide("Lab 3 Recap: Every Component Demonstrated")
    add_table(s, X, 0.85, [3.4, 5.3, 4.05],
              [["Component (agent or tool)", "Lab 3 demonstration", "Result"],
               ["Catalogs (librarian agent)", "Lamina properties, layups and boom cross-sections from the "
                                              "literature, each entry checked", "38 materials, 199 layups, "
                                                                                "100 cross-sections"],
               ["OpenSeesPy write/run pipeline (tools)", "Tape-spring cantilever, 1 N tip load: model, plots, "
                                                         "Hashin check, objective", "Tip deflection 1.3% from "
                                                                                    "beam theory"],
               ["Abaqus verification loop (comparison agent)", "Same model in Abaqus S4R, compared from the two "
                                                               "result files only", "Tip deflection within 0.7%"],
               ["End-to-end baseline (orchestrator)", "Sandbox: 3 materials × 3 layups × 3 cross-sections = 27 "
                                                      "designs, optimum known to a human",
                "Pre-screens removed 19 of 27; optimum at iteration 1, equal to the human's choice"],
               ["Failure case", "Reproduce the omega-boom optimization of Palmeri and Laurenzi [1]",
                "Outside the system's scope: continuous geometry, material given"]],
              size=TB, row_h=[0.45, 0.72, 0.72, 0.72, 0.95, 0.72], first_col_bold=True, align=PP_ALIGN.LEFT)
    status_pill(s, X, 5.6, text="Baseline met in Lab 3", w=3.9, h=0.55)
    add_text(s, 4.3, 5.5, 0.6, 0.7, [[("→", {"bold": True, "color": ORANGE})]], size=32, space_after=0)
    note(s, 4.95, 5.45, 6.55,
         [[B("Lab 4 moves past the baseline: "), N("the full catalogs, 0.18-0.72 million combinations per test "
                                                   "case, which no human can sort by inspection")]], size=17)
    L3.refs(s, ["[1] Palmeri, F., & Laurenzi, S. (2024). Neural network-based surrogate modeling for buckling "
                "performance optimization of lightweight-composite collapsible tubular masts. Biomimetics, 9(8), 494."])

    # 4 ------------------------------------------------------------------------------------- tools
    s = new_slide("Deterministic Tools Called by the Orchestrator")
    label(s, X, 0.75, 12.0, "Each iteration runs the same chain of tools (Claude Code skills and scripts)", size=20)
    add_table(s, X, 1.25, [3.6, 9.15],
              [["Tool", "What it does"],
               ["design_screen", "Ranks every catalog combination with closed-form checks (slide 8)"],
               ["study", "Allows only the next legal step of an iteration (choose design → model → "
                                            "checks → record), so no check or record can be skipped; applies the "
                                            "calibration, stop rule and Abaqus schedule"],
               ["laminate-properties", "Ply properties + layup → OpenSeesPy shell sections, CLT ABD check"],
               ["shell-mesh", "Any catalog cross-section extruded to 1 m, doubled laminate on bonded webs"],
               ["shell-bc-load", "Supports, loads, linear and nonlinear solves, torsion (new)"],
               ["shell-assemble-run", "Joins the pieces into one standalone script and runs it"],
               ["failure-check", "2D Hashin in every ply, flattening and coiling on the hub"],
               ["shell-buckling", "Imperfect nonlinear load path (fast pipeline, new)"],
               ["objective-constraints", "Mass and every requirement as a margin"],
               ["opensees-to-abaqus + run_abaqus", "Abaqus script of the same model, run on ≤ 8 CPUs"]],
              size=16, row_h=[0.45, 0.44, 0.8, 0.44, 0.44, 0.44, 0.44, 0.44, 0.44, 0.44, 0.44],
              first_col_bold=True, align=PP_ALIGN.LEFT)

    # 5 ------------------------------------------------------------------------------------- fast buckling
    s = new_slide("Changes Since Lab 3: Faster Buckling Pipeline")
    hh = bullets(s, X, 0.8, 6.6,
                 [[B("LBA "), N("(linear buckling analysis): eigenvalue problem giving the buckling load and mode "
                                "shape of the perfect shell")],
                  [B("Problem: "), N("~12 h per omega design, mostly the nonlinear scan that found the mode")],
                  [B("Now: "), N("an 80 s LBA of a short segment gives the mode; 0.1 × thickness of that shape is "
                                 "the imperfection (strength changed < 0.2% with the seed, 10 runs)")],
                  [B("Load path: "), N("load raised in steps on the imperfect shell (right). Still rising past the "
                                       "requirement → passes (lower bound); peaks or stalls below → that is the "
                                       "buckling load")],
                  [B("4 mm mesh: "), N("the path runs first on a coarse 4 mm mesh, faster but slightly too stiff, "
                                       "so it must reach 1.12 × the requirement; if not, it re-runs on the design "
                                       "mesh")]],
                 size=17, space_after=5)
    add_table(s, X, max(0.8 + hh + 0.05, 5.4), [2.8, 1.9, 1.9],
              [["Design", "Before", "After"],
               ["Tape spring, 5 N", "> 3.4 h", "68 s"],
               ["Omega, 500 N", "≈ 12 h", "27 min"]],
              size=16, row_h=0.4, first_col_bold=True)
    label(s, 7.15, 0.75, 5.9, "Load path of one design (test case 3, it7)")
    pic_fit(s, fig("buckling_steps.png"), 7.15, 1.25, 5.9, 4.4, name="buckling_steps")

    # 6 ------------------------------------------------------------------------------------- screen fixes
    s = new_slide("Changes Since Lab 3: Pre-Screen Fixes, Regression Suite")
    label(s, X, 0.75, 7.6, "Pre-screen and verification fixes (each found by a test case)")
    add_table(s, X, 1.25, [3.4, 4.3],
              [["Change", "Why it was needed"],
               ["Timoshenko shear term in the beam estimate", "Omega boom 41% softer in FE than Euler-Bernoulli "
                                                              "beam theory"],
               ["Shear modulus from 1/a_{66}", "Twist of unbalanced layups 3.6× off"],
               ["Bending-buckling fit for closed booms (35 segment LBAs)", "3-ply corrugated booms buckled at "
                                                                         "13-25% of the required moment; the "
                                                                         "screen had no estimate"],
               ["Warping restraint for open sections (Vlasov)", "TRAC twist estimate 109° vs 0.032° in FE"],
               ["Abaqus on every load case", "Static-only checks missed a local buckling mode"]],
              size=TB, row_h=[0.45, 0.75, 0.55, 1.0, 0.75, 0.6], first_col_bold=True, align=PP_ALIGN.LEFT)
    paras = [[B("Regression suite: 395 of 395 checks pass")],
             "Re-run after every change to a skill or tool",
             "Laminate stiffness (ABD) vs classical lamination theory",
             "Plate and tape-spring deflection vs beam theory, elastica and saved runs",
             "Hashin and Tsai-Hill indices vs closed forms",
             "Torsion vs Bredt, Vlasov and Wagner",
             "Abaqus export and assembled scripts vs the original models"]
    h = text_h(paras, 4.85, 16, 5, inset=0.15, bullets=True, first_plain=True) + 0.2
    add_box(s, 8.2, 1.25, 4.85, h, paras, fill=GREEN_BG, line=GREEN_LN, size=16, align=PP_ALIGN.LEFT,
            anchor=MSO_ANCHOR.TOP, bullets=True, space_after=5, inset=0.15)
    text(s, 8.2, 1.25 + h + 0.15, 4.85, [[G("Every change approved by the user and logged")]], size=15)

    # 7 ------------------------------------------------------------------------------------- torsion
    s = new_slide("Changes Since Lab 3: Linear and Nonlinear Torsion")
    add_pic(s, img(TORS), X, 0.85, w=6.9, name="trac_torque_twist")
    label(s, 7.4, 0.75, 5.6, "Added to shell-bc-load")
    hh = bullets(s, 7.4, 1.2, 5.65,
                 ["Large-rotation rigid end, rotation control, twist recorder",
                  "Theories: Bredt (closed cell), St Venant, Vlasov (restrained warping), Wagner (stiffening at "
                  "large twist)",
                  "Linear first; nonlinear once the twist leaves the linear regime"],
                 size=17, space_after=4)
    ty = 1.2 + hh + 0.05
    add_table(s, 7.4, ty, [2.05, 1.3, 1.45, 0.85],
              [["1 m Al boom", "OpenSeesPy", "Reference", "Error"],
               ["Omega M008 (closed)", "1.787×10⁻⁶ rad", "Bredt 1.797×10⁻⁶", "−0.6%"],
               ["TRAC R001, linear", "0.857 rad", "Vlasov 0.862", "−0.5%"],
               ["TRAC R001, nonlinear", "0.647 rad", "Abaqus 0.673", "−3.9%"]],
              size=14, row_h=[0.42, 0.6, 0.45, 0.6], first_col_bold=True)
    note(s, 7.4, ty + 2.2, 5.65,
         [[B("New requirement type: "), N("a prompt can set a maximum twist under a torque; the pre-screen "
                                          "checks it with Bredt or Vlasov, the FE model with a torque load case")]],
         good=True, size=16)

    # 8 ------------------------------------------------------------------------------------- pre-screen method
    s = new_slide("Pre-Screening: Closed-Form Checks Before Any FE Run")
    hh = text(s, X, 0.75, W,
              [[B("All checks are closed-form analytical formulas "), N("from beam, plate and shell theory (no FE): "
                                                                        "design_screen evaluates every material "
                                                                        "× layup × cross-section in ~20 s")]],
              size=17, space_after=0)
    add_table(s, X, 0.8 + hh, [2.1, 7.0, 3.65],
              [["Check", "Theory", "Rejects a design if"],
               ["Mass", "Areal density × arc length (bonded webs counted twice): exact", "Never (orders the list)"],
               ["Coiling", "CLT + 2D Hashin: flange flattened from its smallest radius, then bent onto the hub. "
                           "4 sign combinations (either face toward the hub × flattened from either side); the "
                           "worst is kept", "F_{flat} ≥ 1 or F_{hub} ≥ 1"],
               ["Bending stiffness", "Thin-walled Timoshenko beam: k = 1 / (L³/3EI + L/kGA)",
                "k < 0.85 × required"],
               ["Buckling", "Column: Euler / flexural-torsional. Local: classical curved-panel stress × 0.3 "
                            "knockdown (real shells buckle at ~30% of the perfect-shell value because of "
                            "imperfections). Closed booms in bending: fit of 35 segment LBAs",
                "Estimate < 0.5 × required"],
               ["Torsion", "Closed cross-sections: Bredt + St Venant walls; open cross-sections: Vlasov, warping "
                           "restrained at both ends",
                "GJ < 0.85 × required"]],
              size=TB, row_h=[0.42, 0.45, 0.95, 0.45, 1.2, 0.6], first_col_bold=True, align=PP_ALIGN.LEFT)
    note(s, X, 5.65, 6.2,
         [[B("Loose tolerances: "), N("an estimate only rejects designs that miss by more than its error, so "
                                     "feasible designs are not lost")]])
    note(s, 6.75, 5.65, 6.3,
         [[B("Calibration: "), N("after each FE run, study multiplies the estimates by the measured FE / "
                                 "estimate ratio and re-ranks the candidates")]])

    # ===================================================================================== TEST CASE 1
    s = new_slide("Test Case 1: Tape Spring, Requirements and Pre-Screen")
    label(s, X, 0.75, 5.0, "Input: prompt")
    _, _, bh = add_pic(s, bubble(["1 m long tape-spring boom, must have buckling strength above 5N under axial "
                                  "compression when under pin/pin boundary conditions, must have transverse "
                                  "stiffness in the direction of opposite sense bending such that it does not "
                                  "deflect more than 2 cm under a 5N load if clamped at the root, coils on a 40 mm "
                                  "hub"], 4.9, 11), X, 1.2, w=4.9, name="prompt")
    req_box(s, X, 1.2 + bh + 0.15, 4.9,
            ["Tape-spring sections only",
             "L = 1 m",
             "Opposite-sense tip stiffness k ≥ 5 N / 20 mm = 0.25 N/mm (clamped root)",
             "Pin-pin axial buckling ≥ 5 N",
             "No Hashin failure, including coiling on a 40 mm hub"])
    label(s, 5.45, 0.75, 7.6, "Output: 179,100 combinations, 7,617 pass every check")
    _, ph = pic_fit(s, fig("prescreen_ts.png"), 5.45, 1.2, 7.6, 4.3, name="prescreen")
    bullets(s, 5.45, 1.25 + ph, 7.6,
            [[B("179,100 "), N("= 36 materials × 199 layups × 25 tape springs")],
             [B("Bars: "), N("designs removed by each check (first failure only); green: left for FE")],
             [B("Survivors: "), N("4 of 25 sections (T014, T015, T016, T023), 31 materials, all 199 layups")]],
            size=16, space_after=3)

    s = new_slide("Test Case 1: Path Through the Design Space")
    _, ph = pic_fit(s, fig("mass_history_ts.png"), X, 0.8, 8.3, 4.2, name="mass_history")
    bullets(s, 8.75, 0.8, 4.3,
            [[B("it1: "), N("lightest design that passed the pre-screen; missed k by 1% (0.2475 N/mm)")],
             [B("it2: "), N("stiffer IM7 fiber (L006), same section: feasible, 12.81 g, the optimum")],
             [B("it3: "), N("a second material and section, explored early to calibrate the screen")],
             [B("it4-20: "), N("remaining candidates on T014, to reach the 20-iteration minimum; all feasible, "
                               "0.6-3% heavier")],
             [B("Why none is lighter: "), N("all use the thinnest layup on T014; only density changes")]],
            size=17)
    note(s, X, 0.95 + ph, 8.3,
         [[B("Off-axis layups were feasible but never optimal: "),
           N("[0/θ/0] cut k from 0.43 to 0.29-0.31 N/mm at the same mass and left the coiling index unchanged "
             "(set by the 0° outer plies); balanced or thicker layups only add mass")]])

    s = new_slide("Test Case 1: Iterations")
    add_table(s, X, 0.8, [0.75, 3.35, 1.2, 1.25, 3.05, 3.15],
              [["it", "Design", "Mass (g)", "k (N/mm)", "Why tested", "Learned / next"],
               ["1", "L038 M30SC/PEEK [0/0/0] T014", "12.64", "0.248 (fail)", "Lightest design that passed the "
                                                                              "pre-screen",
                "1% short in stiffness → stiffer fiber"],
               ["2", "L006 IM7/MTM45-1 [0/0/0] T014", "12.81", "0.306", "Stiffer fiber, same section",
                "Feasible: optimum, buckling ≥ 29.9 N"],
               ["3", "L021 M40JB [0/0/0] T015", "13.11", "0.304", "Explore a second section",
                "Feasible, heavier; calibrates the screen"],
               ["4-7", "L005, L010, L012, L009 [0/0/0] T014", "12.89-12.98", "0.28-0.31",
                "Next lightest on T014", "Feasible, heavier (density)"],
               ["8", "L021 [0/0/0] T014", "13.06", "0.428", "Highest-modulus fiber on T014",
                "Largest stiffness margin"],
               ["9-15", "L021 [0/θ/0] T014, 7 layups", "13.06", "0.29-0.31", "Do off-axis plies lower F_{hub}?",
                "No: stiffness drops, F_{hub} stays 0.86"],
               ["16-20", "L011, L001, L002, L004, L017 [0/0/0] T014", "13.14-13.23", "0.27-0.33",
                "Reach the 20-iteration minimum", "Feasible, heavier: stop rule met"]],
              size=TB, row_h=[0.45, 0.65, 0.65, 0.65, 0.65, 0.65, 0.65, 0.65], first_col_bold=True,
              fills={(2, None): GREEN_BG, (1, None): RED_BG})
    text(s, X, 6.25, 11.0,
         [[G("Buckling: every run passed with ≥ 29.9 N (path stopped while still rising; requirement 5 N). "
             "F_{hub} ≤ 0.86 for all designs.")]], size=15, space_after=0)

    s = new_slide("Test Case 1: Optimal Design L006 [0/0/0] T014, 12.81 g")
    label(s, X, 0.75, 6.4, "z-displacement, 5 N tip load (drawn × 6.1)")
    pic_fit(s, fig("uz_ts.png"), X, 1.2, 6.4, 3.3, name="uz")
    label(s, 7.0, 0.75, 6.0, "Pin-pin compression: passes buckling")
    pic_fit(s, fig("buckpath_ts.png"), 7.0, 1.2, 5.3, 3.3, name="buck")
    pic_fit(s, fig("utilization_ts.png"), X, 4.6, 6.6, 2.75, name="utilization")
    add_table(s, 7.2, 4.75, [2.7, 1.25, 1.1],
              [["Requirement", "Value", "Limit"],
               ["Tip stiffness (N/mm)", "0.306", "≥ 0.25"],
               ["Buckling (N)", "≥ 29.9", "≥ 5"],
               ["F_{hub}, 40 mm hub", "0.21", "< 1"]],
              size=16, row_h=0.42, first_col_bold=True)

    s = new_slide("Test Case 1: Why It Is the Best, and Abaqus Checks")
    label(s, X, 0.75, 6.2, "Why no catalog design beats it")
    hh = bullets(s, X, 1.2, 6.2,
                 [[B("Only 2 designs that passed the pre-screen are lighter:")],
                  [B("L038: "), N("run as iteration 1 and failed (FE k = 0.2475 N/mm < 0.25)")],
                  [B("L008: "), N("not run: its beam estimate, 0.246 N/mm, is already below 0.25, and FE came "
                                  "out 1-3% below the estimate in all 20 runs, so it cannot pass")],
                  [B("Stop rule: "), N("best improved < 1% over the last 15 iterations")]],
                 size=17)
    hh += text(s, X, 1.3 + hh, 6.2, [[B("Mesh convergence "), N("of the optimum (5 → 3 mm): k changes 0.82%, "
                                                                  "Hashin F 4.1% (limits 2% and 10%)")]], size=17)
    status_pill(s, X, 1.45 + hh, text="Optimum: iteration 2", w=3.6, h=0.5)
    label(s, 6.75, 0.75, 6.3, "Abaqus verifications (5, S4R)")
    add_table(s, 6.75, 1.2, [0.8, 3.0, 2.5],
              [["it", "When / why", "Result"],
               ["1", "First design: check the chain", "Agree"],
               ["2", "Optimum", "k 0.3008 vs 0.3055 N/mm"],
               ["3", "Second section (T015)", "Agree"],
               ["13", "Off-axis layup", "Agree"],
               ["19", "Late iteration", "Agree"]],
              size=TB, row_h=0.42, first_col_bold=True)
    pic_fit(s, fig("abaqus_ts.png"), 6.75, 3.9, 3.35, 2.85, name="abaqus")
    note(s, 10.25, 3.95, 2.8,
         [[N("OpenSeesPy 1.6-2.2% stiffer than Abaqus in all 5 runs; ply stress within ~1%; margin still +20% "
             "with the Abaqus value")]], size=15)

    # ===================================================================================== TEST CASE 2
    s = new_slide("Test Case 2: Requirements and Pre-Screen")
    label(s, X, 0.75, 5.0, "Input: prompt")
    _, _, bh = add_pic(s, bubble(["1 m long, any cross-section, 100 N under compression buckling load pin-pin, "
                                  "transverse bending stiffness such that no more than 2 mm deflection under 100 N, "
                                  "torsional stiffness such that it will not rotate more than 1 degrees under 10 "
                                  "Nmm torque, include any layups and materials, coil on 50 mm hub, ensure to check "
                                  "no material failure throughout the simulation runs.",
                                  "- do not modify any files outside of the current folder",
                                  "- do not use more than 16 CPUs with abaqus anlaysis",
                                  "- give me an update every 3 hours",
                                  "Do not ask me for anything, you should be able to do everything on your own"],
                                 4.9, 8.5), X, 1.2, w=4.9, name="prompt")
    req_box(s, X, 1.2 + bh + 0.12, 4.9,
            ["Any catalog cross-section, material, layup; L = 1 m",
             "Pin-pin axial buckling ≥ 100 N",
             "Tip stiffness k ≥ 100 N / 2.5 mm = 40 N/mm, changed from 50 with user input (50 was unreachable: ≤ 44.3 N/mm in FE)",
             "Twist ≤ 1° under 10 N·mm",
             "No Hashin failure, including a 50 mm hub"], size=15)
    label(s, 5.45, 0.75, 7.6, "Output: 716,400 combinations, 241 pass every check")
    _, ph = pic_fit(s, fig("prescreen_k40.png"), 5.45, 1.2, 7.6, 4.3, name="prescreen")
    bullets(s, 5.45, 1.25 + ph, 7.6,
            [[B("716,400 "), N("= 36 materials × 199 layups × 100 sections")],
             [B("All tape springs, TRAC and omega booms eliminated; "),
              N("survivors: corrugated C005 (126), C008 (63), C006 (33), C007 (19); 14 materials, 53 layups")]],
            size=16, space_after=3)

    s = new_slide("Test Case 2: Path Through the Design Space")
    _, ph = pic_fit(s, fig("mass_history_k40.png"), X, 0.8, 8.6, 4.2, name="mass_history")
    bullets(s, 9.05, 0.8, 4.0,
            [[B("it1: "), N("lightest design that passed the pre-screen (3 plies, 80.8 g): 39.3 N/mm, just "
                            "short")],
             [B("it2: "), N("4-ply [0/0/0/0] on C008, 105.5 g: feasible and the optimum")],
             [B("it3-20: "), N("every heavier candidate in mass order (107.7-133.0 g)")],
             [B("Mirror layups "), N("(±30, ±45, ±60) gave identical results")],
             [B("Stop: "), N("< 1% gain over 15 iterations")]],
            size=17)
    note(s, X, 0.95 + ph, 8.6,
         [[B("Balanced and off-axis layups were not competitive: "),
           N("every extra or angled ply lowers the axial modulus, so 40 N/mm needs a thicker, heavier wall; the "
             "lightest designs are all-0° on the stiffest closed section")]])

    s = new_slide("Test Case 2: Iterations")
    add_table(s, X, 0.8, [0.75, 3.45, 1.15, 1.25, 3.05, 3.1],
              [["it", "Design", "Mass (g)", "k (N/mm)", "Why tested", "Learned / next"],
               ["1", "L028 M55JB/PAEK [0/30/0] C005", "80.8", "39.3 (fail)", "Lightest design that passed the "
                                                                             "pre-screen",
                "3-ply walls just short → 4 plies"],
               ["2", "L017 IM7/8551-7 [0/0/0/0] C008", "105.5", "41.1", "Lightest 4-ply candidate",
                "Feasible: optimum, buckling ≥ 154.9 N"],
               ["3-4", "L028 [±30/0/0/±30] C005", "107.7", "42.9", "Next lightest (mirror pair)",
                "Identical results, heavier"],
               ["5", "L038 [0/0/0/0/0] C008", "126.1", "41.7", "Next lightest on the pre-screen list",
                "Feasible, heavier"],
               ["6-12", "L017 5-ply layups on C005", "132.2", "40.1-43.9", "Layup sweep on C005",
                "All feasible, heavier"],
               ["13-15, 17-18", "L030 T1100GC/PAEK 5-ply on C005", "133.0", "40.5-44.2", "Material sweep",
                "All feasible, heavier"],
               ["16, 19", "L030 [0/0/±60/0/0] C005 + mirror", "133.0", "39.7 (fail)", "Material sweep",
                "0.8% short in stiffness"],
               ["20", "L030 [30/0/0/0/30] C008", "132.7", "44.3", "Reach the 20-iteration minimum (lightest "
                                                                  "not yet run)", "Feasible, heavier: stop rule met"]],
              size=TB, row_h=[0.45] + [0.58] * 8, first_col_bold=True,
              fills={(2, None): GREEN_BG, (1, None): RED_BG, (7, None): RED_BG})
    text(s, X, 6.3, 11.0,
         [[G("All feasible designs passed pin-pin buckling with ≥ 154.9 N and twist ≤ 0.002° (limit 1°).")]],
         size=15, space_after=0)

    s = new_slide("Test Case 2: Optimal Design L017 [0/0/0/0] C008, 105.5 g")
    label(s, X, 0.75, 6.4, "z-displacement, 100 N tip load (drawn × 41)")
    pic_fit(s, fig("uz_k40.png"), X, 1.2, 6.4, 3.3, name="uz")
    label(s, 7.0, 0.75, 6.0, "Pin-pin compression: passes buckling")
    pic_fit(s, fig("buckpath_k40.png"), 7.0, 1.2, 5.3, 3.3, name="buck")
    pic_fit(s, fig("utilization_k40.png"), X, 4.55, 6.6, 2.8, name="utilization")
    add_table(s, 7.2, 4.75, [2.7, 1.25, 1.1],
              [["Requirement", "Value", "Limit"],
               ["Tip stiffness (N/mm)", "41.1", "≥ 40"],
               ["Buckling (N)", "≥ 154.9", "≥ 100"],
               ["Twist (deg)", "0.0005", "≤ 1"],
               ["F_{hub}, 50 mm hub", "0.91", "< 1"]],
              size=16, row_h=0.4, first_col_bold=True)

    s = new_slide("Test Case 2: Why It Is the Best, and Abaqus Checks")
    label(s, X, 0.75, 6.4, "Check: 8 lighter designs run in FE (user request)")
    add_table(s, X, 1.2, [2.2, 1.45, 1.05, 1.0, 0.75],
              [["Design", "Type", "Mass (g)", "k FE", "OK?"],
               ["L028/Y002/C011", "Corrugated", "80.9", "37.6", "No"],
               ["L011/Y016/C005", "Corrugated", "105.1", "35.6", "No"],
               ["L028/Y001/C005", "Corrugated", "80.8", "32.8", "No"],
               ["L023/Y016/C008", "Corrugated", "104.2", "36.6", "No"],
               ["L038/Y016/C008", "Corrugated", "100.8", "33.4", "No"],
               ["L011/Y001/C008", "Corrugated", "78.6", "31.4", "No"],
               ["L028/Y016/M006", "Omega", "88.0", "22.5", "No"],
               ["L028/Y031/R014", "TRAC", "71.8", "24.9", "No"]],
              size=14, row_h=0.37, first_col_bold=True)
    hh = text(s, X, 4.65, 6.45,
              [[B("All fail stiffness, as predicted: "), N("FE / screen 0.84-0.97, so the screen is optimistic "
                                                           "and never rejects a feasible design")]], size=16)
    note(s, X, 4.7 + hh, 6.45,
         [[B("Not checked in Abaqus: buckling. "), N("The Abaqus export tool cannot yet model pinned end "
                                                     "supports, so buckling was checked only in OpenSeesPy.")],
          [B("Small stiffness margin: "), N("41.1 N/mm is only 2.8% above 40; catalog stiffnesses are mean "
                                            "values, so a built boom could fall below the requirement.")]],
         good=False, size=15)
    label(s, 7.0, 0.75, 6.0, "Abaqus verifications (5, all agree)")
    add_table(s, 7.0, 1.2, [0.7, 2.55, 2.8],
              [["it", "When / why", "Result"],
               ["1", "First design", "Agree"],
               ["2", "Optimum, all load cases", "Agree (plot below)"],
               ["3", "C005 family", "Agree"],
               ["13", "Other material", "Agree"],
               ["20", "Last iteration", "Agree"]],
              size=TB, row_h=0.4, first_col_bold=True)
    hh = text(s, 7.0, 3.7, 6.05, [[B("Mesh convergence "), N("of the optimum (4.5 → 2.7 mm): k 0.11%, "
                                                              "Hashin F 4.2%")]], size=16)
    pic_fit(s, fig("abaqus_k40.png"), 7.0, 3.75 + hh, 4.6, 6.75 - 3.75 - hh, name="abaqus")

    # ===================================================================================== TEST CASE 3
    s = new_slide("Test Case 3: Requirements and Pre-Screen")
    label(s, X, 0.75, 5.0, "Input: prompt")
    _, _, bh = add_pic(s, bubble(["Use the optimization orchestrator agent (including Abaqus verification) to "
                                  "design a composite boom with minimum mass and the following constraints:",
                                  "1 m long, any cross-section/material/layup from the respective catalogs, does "
                                  "not buckle under a 50 N lateral bending load in a cantilever beam configuration, "
                                  "transverse bending stiffness such that it has no more than 1 mm deflection under "
                                  "25 N tip load as a cantilever beam, torsional stiffness such that it will not "
                                  "rotate more than 1 degree under 100 N*mm end torque, coils on 100 mm hub, ensure "
                                  "no material failure throughout the simulation runs.",
                                  "Do not use more than 16 CPU cores, and do not modify anything outside the "
                                  "BenazzoVenkatadri_ThinShellSims folder.  Provide a status update every 15 "
                                  "minutes."],
                                 4.9, 8.5), X, 1.2, w=4.9, name="prompt")
    req_box(s, X, 1.2 + bh + 0.12, 4.9,
            ["Any catalog cross-section, material, layup; L = 1 m",
             "Tip stiffness k ≥ 25 N / 1 mm = 25 N/mm",
             "Buckling moment ≥ 50 N × 1 m = 50,000 N·mm",
             "Twist ≤ 1° under 100 N·mm",
             "No Hashin failure, including a 100 mm hub"], size=15)
    label(s, 5.45, 0.75, 7.6, "Output: 716,400 combinations, 3,322 pass every check")
    _, ph = pic_fit(s, fig("prescreen_tara.png"), 5.45, 1.2, 7.6, 4.0, name="prescreen")
    bullets(s, 5.45, 1.25 + ph, 7.6,
            [[B("Torsion eliminates every open section: "), N("the best tape spring and TRAC reach 0.24% and "
                                                              "0.86% of the required GJ")],
             [B("Survivors: "), N("9 closed sections (C005-C008, C016, M005, M006, M021, M022), 26 materials, "
                                  "165 layups")]],
            size=16, space_after=3)

    s = new_slide("Test Case 3: Path Through the Design Space")
    _, ph = pic_fit(s, img(os.path.join(TARA, "investigations", "design_space_plots", "4_iteration_history.png")),
                    X, 0.8, 7.9, 4.5, name="iteration_history")
    bullets(s, 8.4, 0.8, 4.65,
            [[B("it1-5: "), N("first feasible designs; it1 exposed the missing shear term, it2 the missing "
                              "closed-boom buckling estimate")],
             [B("it6-8: "), N("user asked whether the buckling screen is conservative for some family: C008 "
                              "designs 6-13% short on the estimate passed")],
             [B("it9-20: "), N("user-guided plan: a lighter long shot, calibration of each family, a balanced "
                               "layup (+25% mass), robustness of the C008 margin")],
             [B("Final: "), N("it6, after Abaqus rejected it7 and it8")]],
            size=17)
    note(s, X, 0.95 + ph, 7.9,
         [[B("Balanced laminates "), N("(no bend-twist coupling) were feasible but 25% heavier (it13, 131 g), so "
                                      "the unbalanced [60/0/0/60] wins on mass")]])

    cols3 = [0.55, 3.25, 0.95, 3.05, 1.65, 3.3]
    head3 = ["it", "Design", "Mass (g)", "Why tested", "Buckling FE / screen", "Learned / next"]
    rows3 = [
        ["1", "L028 M55JB/PAEK [0/0/0] M006", "66.0", "Lightest design that passed the pre-screen", "not run",
         "k = 16.9 N/mm < 25: shear missing from the screen"],
        ["2", "L038 [0/0/0] C008", "75.6", "Higher shear modulus (shear was 39% of deflection)", "6.5-12.7 / none",
         "Buckled far below 50: add the LBA fit to the screen"],
        ["3", "L028 [0/45/0/45/0] M006", "110.0", "5 plies for buckling margin", "not run", "k = 24.7 N/mm < 25"],
        ["4", "L028 [30/0/0/0/30] M006", "110.0", "Change only the layup", "≥ 57.3 / 65.8", "First feasible design"],
        ["5", "L028 [30/0/0/30] C005", "107.7", "Only lighter predicted-feasible design", "≥ 51.9 / 51.7",
         "Feasible"],
        ["6", "L011 T1100G [60/0/0/60] C008", "104.9", "Is the C008 estimate conservative?", "≥ 52.2 / 47.1",
         "Feasible: final design"],
        ["7", "L006 IM7 [45/0/0/45] C008", "102.2", "Last plausible lighter design", "≥ 51.0 / 43.6",
         "Path passes; Abaqus LBA 1.1% below 50"],
        ["8", "L006 [−45/0/0/−45] C008", "102.2", "Mirror: sign of the coupling?", "≥ 50.2 / 43.6",
         "Same as it7: rejected"],
        ["9", "L028 [30/0/30] C008", "80.6", "21%-lighter long shot", "25.3 / 28.8", "Buckled below 50"],
        ["10", "L028 [0/0/0/0/0] M022", "106.1", "Omega calibration", "not run",
         "k = 24.6 N/mm < 25, so buckling not run"],
    ]
    rows3b = [
        ["11", "L028 [0/0/0/0/0] M006", "110.0", "Omega calibration (it10 missed k, so no omega buckling value "
                                                 "yet)", "27.3 / 46.2", "Buckled: FE / screen 0.59"],
        ["12", "L038 [0/0/0/0/0] C005", "126.3", "Design inside the LBA-fit data", "30.2 / 41.0",
         "Buckled: 0.74, imperfections cut the perfect-shell value"],
        ["13", "L011 [30/−30/0/−30/30] C005", "131.3", "Balanced layup (user)", "≥ 66.6 / 59.6",
         "Feasible, +25% mass"],
        ["14", "L030 [60/0/0/60] C008", "106.2", "Robustness: other material", "≥ 52.1 / 47.6", "Feasible"],
        ["15", "L002 [60/0/0/60] C008", "105.5", "Robustness: third material", "≥ 52.2 / 46.9", "Feasible"],
        ["16", "L029 [30/0/0/30] C008", "106.2", "Measure a real C008 strength", "38.2 / 34.6",
         "Buckled: 1.10 (conservative)"],
        ["17", "L011 [60/0/0/60] C006", "104.9", "Does C006 behave like C008?", "48.5 / 44.3",
         "Buckled: 1.09 (conservative)"],
        ["18", "L030 [30/0/0/30] C007", "106.2", "Last family not run", "31.8 / 34.3", "Buckled: 0.93"],
        ["19", "L017 [0/30/30/0] C005", "105.7", "Real C005 strength", "25.8 / 30.5", "Buckled: 0.85"],
        ["20", "L028 [0/0/45/0/0] M006", "110.0", "Real omega off-axis strength", "27.4 / 45.2",
         "Buckled: 0.61"],
    ]
    s = new_slide("Test Case 3: Iterations 1-10")
    add_table(s, X, 0.8, cols3, [head3] + rows3, size=14, row_h=[0.45] + [0.48] * len(rows3), first_col_bold=True,
              fills={**{(i, None): RED_BG for i in (1, 2, 3, 7, 8, 9, 10)}, (6, None): GREEN_BG})
    text(s, X, 6.3, 11.2,
         [[G("Buckling: end moment in kN·mm (requirement 50); ≥ = path still rising when stopped (lower bound). "
             "Screen = pre-screen estimate, a fit of LBAs (linear buckling analyses) of the perfect shell.")]],
         size=14, space_after=0)

    s = new_slide("Test Case 3: Iterations 11-20")
    add_table(s, X, 0.8, cols3, [head3] + rows3b, size=14, row_h=[0.45] + [0.43] * len(rows3b),
              first_col_bold=True, fills={(i, None): RED_BG for i in (1, 2, 6, 7, 8, 9, 10)})
    note(s, X, 5.95, 11.2,
         [[B("Pre-screen vs FE buckling: "), N("FE / screen ≥ 1.09 for C008 and C006 with angled outer plies "
                                              "(estimate conservative), but 0.59-0.61 for omega, 0.74-0.85 for C005 "
                                              "and 0.93 for C007 (unconservative): the screen is a perfect-shell fit, "
                                              "and imperfections lower the real strength")]], size=15)

    s = new_slide("Test Case 3: Optimal Design L011 [60/0/0/60] C008, 104.9 g")
    label(s, X, 0.75, 6.4, "z-displacement, 25 N tip load (drawn × 111)")
    pic_fit(s, fig("uz_tara.png"), X, 1.2, 6.4, 3.25, name="uz")
    label(s, 6.9, 0.75, 6.15, "Lateral bending: passes buckling (it6)")
    pic_fit(s, fig("buckling_tara_it006_it007.png"), 6.9, 1.2, 5.6, 3.3, name="buckling")
    pic_fit(s, fig("utilization_tara.png"), X, 4.55, 6.5, 2.85, name="utilization")
    add_table(s, 7.0, 4.65, [3.0, 1.4, 1.0],
              [["Requirement", "Value", "Limit"],
               ["Tip stiffness (N/mm)", "27.8", "≥ 25"],
               ["First buckling (kN·mm)", "55.4-56.4", "> 50"],
               ["Tip twist (deg)", "0.0037", "≤ 1"],
               ["F_{hub}, 100 mm hub", "0.45", "< 1"]],
              size=16, row_h=0.4, first_col_bold=True)

    s = new_slide("Test Case 3: Why No Lighter Design Can Beat It")
    _, ph = pic_fit(s, img(os.path.join(TARA, "investigations", "design_space_plots", "1_screen_funnel.png")),
                    X, 0.8, 7.6, 3.4, name="funnel")
    text(s, X, 0.9 + ph, 7.6,
         [[B("Every one of the 716,400 designs was re-checked "),
           N("with the most favorable FE corrections measured (stiffness × 0.986, buckling × the best factor of its "
             "family): 69,437 are heavier than it6, and all but 9 of the 646,963 lighter designs fail a check")]],
         size=17, space_after=0)
    label(s, 8.15, 0.75, 4.9, "The 9 lighter designs left")
    add_table(s, 8.15, 1.2, [2.3, 2.6],
              [["Designs", "Why not better"],
               ["L006 [±45/0/0/±45] C008", "Run as it7, it8: Abaqus first buckling 1-3% low"],
               ["L006 [±60/0/0/±60] C008", "Not run (below)"],
               ["L011 [60/0/0/60] C006 + mirror", "Run as it17: buckled at 48.5"],
               ["L011 [±45/0/0/±45] C006", "Weaker estimate than it17; 0.03 g heavier than it6"],
               ["L011 [90/0/0/90] C006", "k 24.3 N/mm with the C006 correction"]],
              size=14, row_h=[0.42, 0.72, 0.5, 0.72, 0.72, 0.72], first_col_bold=True, align=PP_ALIGN.LEFT)
    note(s, 8.15, 5.2, 4.9,
         [[B("Why [±60/0/0/±60] C008 was not run: "),
           N("with the stiffness correction measured on C008 [60/0/0/60] (FE / estimate 0.97) its k is 24.7 N/mm "
             "< 25, so the orchestrator ranked it infeasible")]], size=14)

    s = new_slide("Test Case 3: Abaqus Verifications Changed the Answer")
    add_table(s, X, 0.8, [0.6, 1.85, 3.25, 2.4],
              [["it", "When", "What Abaqus showed", "Effect on the search"],
               ["1", "First design", "Agrees with OpenSeesPy: the 41% stiffness gap was in the screen",
                "Shear added to the screen"],
               ["4", "First feasible", "Agree", "Trust in omega models"],
               ["6", "Best so far (static)", "Agree", "—"],
               ["12", "Calibration probe", "Agree", "—"],
               ["7", "New best, all cases", "Linear cases agree; first buckling (LBA) 49,457 N·mm, 1.1% below 50,000",
                "Rejected"],
               ["8", "Mirror, buckling only", "Same as it7", "Rejected"],
               ["6", "Final, all cases", "Tip −0.12%, twist +0.36%, lateral +0.11%; first buckling 55,436-56,397 "
                                     "(+11-13%)", "Final design"]],
              size=14, row_h=[0.42, 0.75, 0.42, 0.42, 0.42, 0.75, 0.42, 0.75], first_col_bold=True,
              align=PP_ALIGN.LEFT, fills={(5, None): RED_BG, (6, None): RED_BG, (7, None): GREEN_BG})
    note(s, X, 5.5, 8.1,
         [[B("Why it7 fails: "), N("Abaqus found a local buckling mode of the flat bonded tab at 49.5 kN·mm that "
                                   "OpenSeesPy did not show (its imperfect path kept rising to 51.0), so it7 fails "
                                   "the buckling requirement. Only the all-case Abaqus check caught it.")]], size=15)
    label(s, 8.6, 0.75, 4.45, "Final design it6: Abaqus vs OpenSeesPy")
    _, ph = pic_fit(s, fig("abaqus_tara_buckling.png"), 8.6, 1.2, 4.45, 3.3, name="abaqus_buckling")
    text(s, 8.6, 1.3 + ph, 4.45,
         [[N("Neither code buckles below 50; the Riks path keeps rising to 2 × the requirement")],
          [B("Mesh convergence "), N("of it6 (4.5 → 2.7 mm): k 0.24%, Hashin F 3.2%")]],
         size=15, space_after=6)

    # ===================================================================================== summary
    s = new_slide("Summary: Beyond the Lab 3 Baseline")
    add_table(s, X, 0.8, [3.0, 2.0, 2.0, 2.0],
              [["", "Case 1", "Case 2", "Case 3"],
               ["Combinations", "179,100", "716,400", "716,400"],
               ["Pass the pre-screen", "7,617", "241", "3,322"],
               ["FE iterations", "20", "20 (+8 checks)", "20"],
               ["Optimum at iteration", "2", "2", "6"],
               ["Mass (g)", "12.8", "105.5", "104.9"],
               ["Abaqus runs", "5 agree", "5 agree", "8; it7 fails"]],
              size=16, row_h=0.42, first_col_bold=True)
    text(s, X, 3.8, 9.0,
         [[G("Case 2: +8 lighter designs run in FE after the study, at the user's request, to confirm that none "
             "is feasible")]], size=14, space_after=0)
    bullets(s, 9.5, 0.8, 3.55,
            ["Manual grid search of FE: months",
             "Screen removes 95.7-99.97% of the designs",
             "Orchestrator: 20 runs, ~2 days (case 3)"],
            size=18)
    y = 4.45
    y += note(s, X, y, W,
              [[B("Why 20 runs are enough: "),
                N("the pre-screen removes almost every design with closed-form checks; the orchestrator sorts the "
                  "rest by mass and, after each FE run, recalibrates the estimates to drop the candidates that "
                  "cannot be both lighter and feasible")]]) + 0.15
    note(s, X, y, 6.2,
         [[B("Where the user was needed: "),
           N("interpreting requirements (buckling criterion, unreachable stiffness) and choosing iterations after "
             "the optimum to calibrate the pre-screens")]])
    note(s, 6.75, y, 4.75,
         [[B("Next: "), N("final report and presentation; possible extension: continuous geometry optimization "
                          "(Palmeri and Laurenzi [1])")]])
    L3.refs(s, ["[1] Palmeri, F., & Laurenzi, S. (2024). Neural network-based surrogate modeling for buckling "
                "performance optimization of lightweight-composite collapsible tubular masts. Biomimetics, 9(8), 494."])

    prs.save(OUT)
    print("wrote", OUT, len(prs.slides), "slides")


if __name__ == "__main__":
    main()
