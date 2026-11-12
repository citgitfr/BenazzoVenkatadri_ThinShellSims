"""Build the Lab Report 3 demonstration deck in the style of the 11-11-26 group meeting deck.

Run with any Python that has python-pptx, python-docx and Pillow:
    python "Lab Report 3/build_demo_deck.py"
Inputs: the 11-11-26 deck (theme, title background, Caltech logo, section drawings), the screenshots
in "Lab Report 3/Demo Slides Outline.docx" and the system diagram made by system_diagram_lab3.py.
Output: "Lab Report 3/Lab Report 3 Demonstration of Agent System.pptx".
"""
import io
import os
import re

import docx
from docx.oxml.ns import qn as dqn
from PIL import Image, ImageDraw
from pptx import Presentation
from pptx.dml.color import RGBColor
from pptx.enum.dml import MSO_LINE_DASH_STYLE
from pptx.enum.shapes import MSO_CONNECTOR, MSO_SHAPE
from pptx.enum.text import MSO_ANCHOR, PP_ALIGN
from pptx.oxml.ns import qn
from pptx.util import Emu, Inches, Pt

ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
HERE = os.path.join(ROOT, "Lab Report 3")
BASE = os.path.join(ROOT, "11-11-26 Group Meeting Presentation",
                    "AI Agents for Thin-Shell Composite Booms (11-11-26).pptx")
OUTLINE = os.path.join(HERE, "Demo Slides Outline.docx")
# 11-04 diagram updated for Lab 3 (Claude runs Abaqus on the server; made by system_diagram_lab3.py)
DIAGRAM = os.path.join(HERE, "system_diagram_lab3.png")
OUT = os.path.join(HERE, "Lab Report 3 Demonstration of Agent System.pptx")

# 11-11 deck palette
BLACK = RGBColor(0, 0, 0)
GREY_TXT = RGBColor(0x59, 0x59, 0x59)
HEAD_BG = RGBColor(0xF2, 0xF2, 0xF2)
ORANGE = RGBColor(0xED, 0x7D, 0x31)
PEACH = RGBColor(0xFB, 0xE5, 0xD6)
WHITE = RGBColor(0xFF, 0xFF, 0xFF)
BORDER = RGBColor(0xBF, 0xBF, 0xBF)
GREEN_TXT = RGBColor(0x38, 0x76, 0x1D)
GREEN_BG = RGBColor(0xE2, 0xF0, 0xD9)
GREEN_LN = RGBColor(0x54, 0x82, 0x35)
RED_TXT = RGBColor(0xC0, 0x00, 0x00)
RED_BG = RGBColor(0xFC, 0xE4, 0xE4)
TILE_GREY = RGBColor(0xE7, 0xE6, 0xE6)

FONT = "Calibri"
SYM = "Segoe UI Symbol"  # for check / cross marks (not in Calibri)

# ----------------------------------------------------------------------------- assets

def outline_images():
    """Screenshots of the outline .docx, in document order (img01 ... img21)."""
    d = docx.Document(OUTLINE)
    out = []
    for p in d.paragraphs:
        for b in p._p.findall(".//" + dqn("a:blip")):
            out.append(d.part.related_parts[b.get(dqn("r:embed"))].blob)
    return {f"img{i + 1:02d}": blob for i, blob in enumerate(out)}


def base_media(prs):
    """Pictures of the 11-11 deck by their alt text (file name)."""
    media = {}
    for s in prs.slides:
        for sh in s.shapes:
            if sh.shape_type == 13:
                descr = sh._element.nvPicPr.cNvPr.get("descr")
                media.setdefault(descr, sh.image.blob)
    return media


def diagram_crops():
    im = Image.open(DIAGRAM).convert("RGB")
    s = im.size[0] / 722.0  # coordinates below were read on a 722 px wide copy

    def crop(box, hl=None, white=None):
        b = [int(v * s) for v in box]
        c = im.crop(b).copy()
        d = ImageDraw.Draw(c)
        if white:
            d.rectangle(white, fill=(255, 255, 255))
        if hl:
            h = [int(v * s) for v in hl]
            h = [h[0] - b[0], h[1] - b[1], h[2] - b[0], h[3] - b[1]]
            d.rounded_rectangle(h, radius=30, outline=(237, 125, 49), width=12)
        buf = io.BytesIO()
        c.save(buf, "PNG")
        return buf.getvalue()

    top = (118, 50, 598, 198)
    # full diagram, with the empty margin at the bottom trimmed
    gray = im.convert("L").point(lambda v: 255 if v < 250 else 0)
    bbox = gray.getbbox()
    full = io.BytesIO()
    im.crop((0, 0, im.size[0], min(im.size[1], bbox[3] + int(10 * s)))).save(full, "PNG")
    return {
        "full": full.getvalue(),
        "mat": crop(top, (126, 128, 276, 188)),
        "lay": crop(top, (286, 128, 436, 188)),
        "geo": crop(top, (445, 128, 594, 188)),
        "bl": crop((0, 299, 362, 545)),
        "br": crop((350, 297, 722, 528), white=(0, 780, 75, 920)),
    }

# ----------------------------------------------------------------------------- helpers

SUB = re.compile(r"_\{([^}]*)\}")


def _runs(p, runs, size, bold, color, italic=False):
    """Add runs; "_{...}" inside a run's text is written as a subscript run."""
    if isinstance(runs, str):
        runs = [(runs, {})]
    split = []
    for text, o in runs:
        pos = 0
        for m in SUB.finditer(text):
            if m.start() > pos:
                split.append((text[pos:m.start()], o, False))
            split.append((m.group(1), o, True))
            pos = m.end()
        if pos < len(text):
            split.append((text[pos:], o, False))
    for text, o, sub in split:
        r = p.add_run()
        r.text = text
        if sub:
            r.font._element.set("baseline", "-25000")
        f = r.font
        f.name = o.get("font", FONT)
        f.size = Pt(o.get("size", size))
        f.bold = o.get("bold", bold)
        f.italic = o.get("italic", italic)
        f.color.rgb = o.get("color", color)


def add_text(slide, x, y, w, h, paras, size=18, bold=False, color=BLACK, align=PP_ALIGN.LEFT,
             anchor=MSO_ANCHOR.TOP, italic=False, bullets=False, space_after=4, name=None, wrap=True):
    """paras: str, or list of paragraphs; each paragraph a str or a list of (text, opts) runs."""
    tb = slide.shapes.add_textbox(Inches(x), Inches(y), Inches(w), Inches(h))
    if name:
        tb.name = name
    tf = tb.text_frame
    tf.word_wrap = wrap
    tf.auto_size = None
    tf.margin_left = tf.margin_right = Emu(45720)
    tf.margin_top = tf.margin_bottom = Emu(45720)
    tf.vertical_anchor = anchor
    if isinstance(paras, str):
        paras = [paras]
    for i, para in enumerate(paras):
        p = tf.paragraphs[0] if i == 0 else tf.add_paragraph()
        p.alignment = align
        p.space_after = Pt(space_after)
        if bullets:
            _bullet(p)
        _runs(p, para, size, bold, color, italic)
    return tb


def _bullet(p, char="•", indent=0.25):
    pPr = p._p.get_or_add_pPr()
    pPr.set("marL", str(int(Inches(indent))))
    pPr.set("indent", str(-int(Inches(indent))))
    for tag in ("a:buNone", "a:buChar", "a:buAutoNum"):
        for e in pPr.findall(qn(tag)):
            pPr.remove(e)
    bu = pPr.makeelement(qn("a:buChar"), {"char": char})
    pPr.append(bu)


def add_box(slide, x, y, w, h, paras=None, fill=WHITE, line=BORDER, line_w=1.5, size=18, bold=False,
            color=BLACK, align=PP_ALIGN.CENTER, anchor=MSO_ANCHOR.MIDDLE, shape=MSO_SHAPE.ROUNDED_RECTANGLE,
            dash=False, adj=0.07, bullets=False, space_after=4, inset=0.1):
    sh = slide.shapes.add_shape(shape, Inches(x), Inches(y), Inches(w), Inches(h))
    if shape == MSO_SHAPE.ROUNDED_RECTANGLE:
        sh.adjustments[0] = adj
    sh.shadow.inherit = False
    if fill is None:
        sh.fill.background()
    else:
        sh.fill.solid()
        sh.fill.fore_color.rgb = fill
    if line is None:
        sh.line.fill.background()
    else:
        sh.line.color.rgb = line
        sh.line.width = Pt(line_w)
        if dash:
            sh.line.dash_style = MSO_LINE_DASH_STYLE.DASH
    tf = sh.text_frame
    tf.word_wrap = True
    tf.vertical_anchor = anchor
    tf.margin_left = tf.margin_right = Inches(inset)
    tf.margin_top = tf.margin_bottom = Inches(0.06)
    if paras:
        if isinstance(paras, str):
            paras = [paras]
        for i, para in enumerate(paras):
            p = tf.paragraphs[0] if i == 0 else tf.add_paragraph()
            p.alignment = align
            p.space_after = Pt(space_after)
            if bullets and i > 0:
                _bullet(p)
            _runs(p, para, size, bold, color)
    return sh


def add_pic(slide, blob, x, y, w=None, h=None, border=True, name=None):
    im = Image.open(io.BytesIO(blob))
    ar = im.size[1] / im.size[0]
    if w is None:
        w = h / ar
    if h is None:
        h = w * ar
    pic = slide.shapes.add_picture(io.BytesIO(blob), Inches(x), Inches(y), Inches(w), Inches(h))
    if name:
        pic.name = name
        pic._element.nvPicPr.cNvPr.set("descr", name)
    if border:
        pic.line.color.rgb = BORDER
        pic.line.width = Pt(0.75)
    return pic, w, h


def add_table(slide, x, y, col_w, rows, size=18, row_h=0.42, header=True, first_col_bold=False,
              fills=None, align_first=PP_ALIGN.LEFT, align=PP_ALIGN.CENTER, header_size=None):
    nr, nc = len(rows), len(rows[0])
    rh = row_h if isinstance(row_h, (list, tuple)) else [row_h] * nr
    gf = slide.shapes.add_table(nr, nc, Inches(x), Inches(y), Inches(sum(col_w)), Inches(sum(rh)))
    tbl = gf.table
    tblPr = tbl._tbl.tblPr
    tblPr.set("firstRow", "0")
    tblPr.set("bandRow", "0")
    for j, cw in enumerate(col_w):
        tbl.columns[j].width = Inches(cw)
    for i in range(nr):
        tbl.rows[i].height = Inches(rh[i])
        for j in range(nc):
            cell = tbl.cell(i, j)
            val = rows[i][j]
            cell.margin_left = cell.margin_right = Emu(64008)
            cell.margin_top = cell.margin_bottom = Emu(27432)
            cell.vertical_anchor = MSO_ANCHOR.MIDDLE
            is_head = header and i == 0
            fill = ORANGE if is_head else WHITE
            if fills and not is_head and fills.get((i, j)) is not None:
                fill = fills[(i, j)]
            elif fills and not is_head and fills.get((i, None)) is not None:
                fill = fills[(i, None)]
            cell.fill.solid()
            cell.fill.fore_color.rgb = fill
            tf = cell.text_frame
            tf.word_wrap = True
            p = tf.paragraphs[0]
            p.alignment = align_first if j == 0 else align
            if is_head:
                p.alignment = PP_ALIGN.CENTER
            b = is_head or (first_col_bold and j == 0)
            _runs(p, val, header_size if (is_head and header_size) else size, b,
                  WHITE if is_head else BLACK)
    return gf


def status_pill(slide, x, y, ok=True, w=1.75, h=0.45, text=None):
    mark = "✓ " if ok else "✗ "
    label = text or ("Working" if ok else "Failing")
    return add_box(slide, x, y, w, h,
                   [[(mark, {"font": SYM, "bold": True, "color": GREEN_TXT if ok else RED_TXT}),
                     (label, {"bold": True, "color": GREEN_TXT if ok else RED_TXT})]],
                   fill=GREEN_BG if ok else RED_BG, line=GREEN_LN if ok else RED_TXT, size=18,
                   adj=0.5, inset=0.05)


def header(slide, title, num, logo):
    r = slide.shapes.add_shape(MSO_SHAPE.RECTANGLE, 0, Emu(12801), Emu(12191695), Emu(558698))
    r.fill.solid()
    r.fill.fore_color.rgb = HEAD_BG
    r.line.fill.background()
    r.shadow.inherit = False
    ln = slide.shapes.add_connector(MSO_CONNECTOR.STRAIGHT, 0, Emu(571500), Emu(12191695), Emu(571500))
    ln.line.color.rgb = ORANGE
    ln.line.width = Pt(1.5)
    t = add_text(slide, 0.36, 0.0, 12.3, 0.625, [[(title, {})]], size=36, bold=True,
                 anchor=MSO_ANCHOR.MIDDLE, wrap=False, space_after=0, name="Title")
    t.text_frame.margin_top = t.text_frame.margin_bottom = 0
    add_text(slide, 12.85, 0.03, 0.45, 0.3, str(num), size=12, align=PP_ALIGN.RIGHT, wrap=False,
             space_after=0, name="Slide number")
    slide.shapes.add_picture(io.BytesIO(logo), Emu(10643616), Emu(6237125), Emu(1545335), Emu(619957))


def label(slide, x, y, w, text, size=18):
    return add_text(slide, x, y, w, 0.45, [[(text, {"bold": True})]], size=size, space_after=0)


def what_it_does(slide, x, y, w, h, text):
    add_text(slide, x, y, w, 0.4, [[("What this section does:", {"bold": True})]], size=18, space_after=0)
    add_text(slide, x, y + 0.38, w, h - 0.38, text, size=18, space_after=6)


def refs(slide, lines, y=6.93):
    add_text(slide, 0.1, y, 11.45, 7.45 - y, lines, size=12, space_after=0, name="References")

# ----------------------------------------------------------------------------- deck

def main():
    prs = Presentation(BASE)
    media = base_media(prs)
    shots = outline_images()
    diag = diagram_crops()
    logo = media["caltech_logo.png"]

    # drop every slide of the 11-11 deck, keep its masters and theme
    sldIdLst = prs.slides._sldIdLst
    for sldId in list(sldIdLst):
        prs.part.drop_rel(sldId.rId)
        sldIdLst.remove(sldId)
    blank = [l for l in prs.slide_layouts if l.name == "Blank"][0]

    def new_slide(title=None, notes=None):
        s = prs.slides.add_slide(blank)
        if title:
            header(s, title, len(prs.slides), logo)
        if notes:
            s.notes_slide.notes_text_frame.text = notes
        return s

    # 1 ------------------------------------------------------------------ title
    s = new_slide(notes="Suggested presenters are in each slide's notes (edit as needed).")
    s.shapes.add_picture(io.BytesIO(media["title_bg.png"]), 0, 0, prs.slide_width, prs.slide_height)
    add_text(s, 1.2, 2.35, 10.93, 1.45, ["AI Agents for the Optimization of", "Thin-Shell Composite Booms"],
             size=42, bold=True, align=PP_ALIGN.CENTER, anchor=MSO_ANCHOR.MIDDLE, space_after=0)
    add_text(s, 2.4, 3.95, 8.53, 2.45,
             ["Federico Benazzo and Tara Venkatadri",
              "Lab Report 3 Demonstration of Agent System",
              [("Disclaimer: These slides were generated by Claude Opus 5.5 (Anthropic) based on an outline "
                "provided by the authors.", {"size": 16, "color": GREY_TXT})]],
             size=24, align=PP_ALIGN.CENTER, space_after=10)

    # 2 ------------------------------------------------------------------ system diagram
    s = new_slide("All Modules Built and Tested, Including the Agents",
                  "Suggested presenter: Tara.\n"
                  "Full system diagram of 11/4. Every box has been built and tested: the three agents (librarian, "
                  "optimization orchestrator, results comparison agent), the deterministic tools (Claude Code skills) "
                  "and the Abaqus loop. Updated from the 11/4 diagram: Claude now runs on the lab server that has "
                  "Abaqus (the repository lives there), so the two human steps that moved the script to an Abaqus "
                  "machine and the ODB extract back are gone, and the ODB no longer has to be extracted to plain "
                  "arrays: the comparison agent reads it directly.\n"
                  "The next slides demonstrate each part with the prompt it received and the output it produced.")
    add_pic(s, diag["full"], 0.3, 0.95, w=7.3, border=False, name="system_diagram")
    add_text(s, 7.75, 0.85, 5.3, 0.45, [[("Demonstrated on the next slides", {"bold": True})]], size=20,
             space_after=0)
    items = [("Catalogs", "librarian agent", "3-5"),
             ("OpenSeesPy write/run pipeline", "tools", "6-7"),
             ("Abaqus verification loop", "comparison agent", "8-9"),
             ("End-to-end baseline", "orchestrator agent", "10-13"),
             ("Failure case", "omega boom", "14", )]
    y = 1.45
    for name, who, sl in items:
        add_box(s, 7.75, y, 5.3, 0.82,
                [[("✓  ", {"font": SYM, "bold": True, "color": GREEN_TXT}), (name, {"bold": True})],
                 [(f"{who}, slide{'s' if '-' in sl else ''} {sl}", {"color": GREY_TXT})]],
                fill=WHITE, line=BORDER, align=PP_ALIGN.LEFT, size=18, space_after=0, inset=0.15)
        y += 0.98

    # 3-5 -------------------------------------------------------------- catalogs
    def catalog_slide(title, crop, desc, out_label, cols, rows, notes, extra=None, ref=None, row_h=0.45,
                      ref_y=6.93):
        s = new_slide(title, notes)
        _, _, h = add_pic(s, crop, 0.3, 0.85, w=4.5, name="diagram_section")
        what_it_does(s, 0.3, 0.85 + h + 0.2, 4.5, 3.0, desc)
        X, W = 5.15, 7.88
        label(s, X, 0.78, 5.5, "Input / Output Example", size=20)
        status_pill(s, X + W - 1.75, 0.78)
        label(s, X, 1.3, W, "Input: Federico's prompt to the librarian agent")
        add_box(s, X, 1.72, W, 1.2,
                [[("[Placeholder: screenshot of Federico's prompt that created this catalog]",
                   {"color": GREY_TXT, "italic": True})]],
                fill=WHITE, line=BORDER, dash=True, size=18)
        label(s, X, 3.12, W, out_label)
        add_table(s, X, 3.55, cols, rows, size=18, row_h=row_h, first_col_bold=True)
        if extra:
            extra(s)
        if ref:
            refs(s, ref, y=ref_y)
        return s

    catalog_slide(
        "Catalogs: Material Properties", diag["mat"],
        "The librarian is separate from the orchestrator because of a permissions split: it is the only "
        "agent with web access. It searches qualification reports, papers and datasheets for unidirectional "
        "lamina properties. Each of the 38 rows (L001-L038) has stiffness, strength, ply thickness, density "
        "and a source.",
        "Output: sample rows of the material catalog",
        [0.75, 2.35, 1.9, 1.9, 0.98],
        [["ID", "Fiber/matrix", "E_{1}/E_{2}/G_{12} (GPa)", "X_{t}/Y_{t}/S_{12} (MPa)", "ρ (g/cm³)"],
         ["L001", "IM7/8552 epoxy [1]", "158.5/8.95/4.67", "2501/64.0/91.1", "1.58"],
         ["L013", "AS4/3501-6 epoxy [2]", "126/11/6.6", "1950/48/79", "1.58*"],
         ["L024", "Carbon/epoxy [3]", "80.1/6.67/2.93", "1063/66.0/126.8", "1.60"],
         ["L030", "T1100GC/PAEK [4]", "173/9.0/4.03", "3613/90/69.0", "1.59"]],
        "Suggested presenter: Federico (built the catalogs).\n"
        "PLACEHOLDER: paste the screenshot of the prompt that created the material catalog.\n"
        "Sample rows are copied from .claude/memory.material_property_catalog/UD_lamina_catalog_readable.txt. "
        "Every ply is 0.035 mm thick (project decision, 11/5). * = estimate (density by rule of mixtures). "
        "Not shown: nu12, nu23, G23, Xc, Yc.",
        ref=["[1] NCAMP (2011). Hexcel 8552 IM7 unidirectional prepreg qualification material property data report, "
             "CAM-RP-2009-015 Rev. A.",
             "[2] Soden, P. D., et al. (1998). Lamina properties, lay-up configurations and loading conditions for a "
             "range of fibre-reinforced composite laminates. CST, 58(7).",
             "[3] Liu, T.-W., et al. (2023). Folding behavior of the thin-walled lenticular deployable composite boom. "
             "Mech. Adv. Mater. Struct., 30(11).",
             "[4] Toray Advanced Composites. Toray Cetex TC1225 (T1100GC/LM-PAEK) product data sheet.   * = estimate."],
        ref_y=6.6)

    catalog_slide(
        "Catalogs: Layups", diag["lay"],
        "The librarian lists every symmetric layup of 3-5 plies with angles 0, ±30, ±45, ±60 and "
        "90 deg and at least one 0 ply: 199 layups (Y001-Y199). Each row gives the thickness t and whether the "
        "layup is cross-ply or balanced, so the orchestrator picks from this list instead of inventing layups.",
        "Output: sample rows of the layup catalog",
        [0.8, 0.9, 2.6, 1.1, 1.24, 1.24],
        [["ID", "Plies", "Layup", "t (mm)", "Cross-ply", "Balanced"],
         ["Y001", "3", "[0/0/0]", "0.105", "yes", "yes"],
         ["Y005", "3", "[0/90/0]", "0.105", "yes", "yes"],
         ["Y016", "4", "[0/0/0/0]", "0.140", "yes", "yes"],
         ["Y050", "5", "[0/45/60/45/0]", "0.175", "no", "no"],
         ["Y123", "5", "[45/−45/0/−45/45]", "0.175", "no", "yes"]],
        "Suggested presenter: Federico.\n"
        "PLACEHOLDER: paste the screenshot of the prompt that created the layup catalog.\n"
        "Sample rows from .claude/memory.layup_catalog/layup_catalog.txt (199 rows: 15 with 3 plies, 15 with 4, "
        "169 with 5). Symmetric, so B = 0 for every row. Cross-ply = only 0 and 90 plies (no extension-shear or "
        "bend-twist coupling); balanced = every +theta ply has a -theta partner (no extension-shear coupling).",
        row_h=0.42)

    def geo_drawings(s):
        # side by side with a fixed gap, scaled so the four fit in the 4.5 in left column
        fns = ["sec_T013.png", "sec_R011.png", "sec_M008.png", "sec_C006.png"]
        ars = [Image.open(io.BytesIO(media[fn])).size for fn in fns]
        gap = 0.2
        h = min(0.9, (4.5 - 3 * gap) / sum(w / hh for w, hh in ars))
        x = 0.3
        for fn in fns:
            _, pw, _ = add_pic(s, media[fn], x, 5.35 + (0.9 - h) / 2, h=h, border=False, name=fn)
            x += pw + gap

    s = catalog_slide(
        "Catalogs: Cross-Section Geometries", diag["geo"],
        "The librarian collected 100 coilable-boom cross-sections: 25 each of tape springs, TRAC, omega and "
        "corrugated booms. Each row gives the arc radii and angles and is checked to flatten.",
        "Output: sample rows of the cross-section catalog",
        [0.8, 1.75, 2.45, 1.48, 1.4],
        [["ID", "Type", "Arcs R (mm) / θ (deg)", "Size (mm)", "Origin"],
         ["T013", "Tape spring", "16.6 / 131.8", "30 × 10", "Literature"],
         ["R011", "TRAC [5]", "13.6 / 90 (2 flanges)", "27 × 22", "Literature"],
         ["M008", "Omega (CTM)", "12, 26.5, 12 / −90, 180, −90", "86 × 77", "Literature"],
         ["C006", "Corrugated [6]", "11 arcs per shell", "148 × 128", "Derived"]],
        "Suggested presenter: Federico.\n"
        "PLACEHOLDER: paste the screenshot of the prompt that created the cross-section catalog.\n"
        "Sample rows from .claude/memory.boom_geometry_catalog/boom_geometry_catalog.txt. Size = width x height of "
        "the mid-surface section incl. webs. Every row is checked to flatten (equal flange arc lengths, tangent "
        "arcs, no self-intersection). Drawings (bottom left) are made from rows T013, R011, M008 and C006; "
        "black = bonded web.",
        extra=geo_drawings,
        ref=["[5] Benazzo, F., & Pellegrino, S. (2025). Design and manufacturing of ultra-thin thermoplastic "
             "composites for coilable longerons. AIAA SciTech 2025 Forum.",
             "[6] Fernandez, J. M., & Volle, C. E. (2021). Corrugated rollable tubular booms. AIAA SciTech 2021 "
             "Forum."],
        row_h=0.45)
    # the geometry description is short so the drawings fit under it (left column, y = 5.25)

    # 6 ------------------------------------------------------------------ OpenSeesPy pipeline: prompt + numbers
    s = new_slide("OpenSeesPy Write/Run Pipeline",
                  "Suggested presenter: Tara.\n"
                  "Prompt: one tape spring, L001 (IM7/8552), [0/0/0], R = 20 mm, 180 deg, 1 m cantilever, 1 N tip "
                  "load; use laminate-properties, shell-bc-load / shell-mesh, shell-assemble-run, shell-visualize and "
                  "objective-constraints (+ Hashin failure check).\n"
                  "The assembled standalone script is ~20,700 lines (mostly node and element definitions), so only "
                  "its outputs are shown.\n"
                  "Beam theory: PL^3/3EI with EI = 3.96e7 N mm^2 gives 8.414 mm; FE (2.5 mm mesh) is 1.3% softer; "
                  "halving the element size changes the tip deflection by 0.9%. Tip rotation within 0.3% of PL^2/2EI.")
    _, _, h = add_pic(s, diag["bl"], 0.3, 0.85, w=4.2, name="diagram_section")
    what_it_does(s, 0.3, 0.85 + h + 0.12, 4.6, 3.0,
                 "Writes the material/layup, mesh and load/BC code, joins it into one OpenSeesPy script and runs "
                 "it. Computes the mass and the Hashin failure index for the specified load cases, plus flattening "
                 "for coiling (the deployable-boom application), for the orchestrator. Draws the results."
                 )
    X, W = 5.15, 7.88
    label(s, X, 0.78, 5.5, "Input / Output Example", size=20)
    status_pill(s, X + W - 1.75, 0.78)
    label(s, X, 1.25, W, "Input: prompt for one tape spring under a 1 N tip load")
    add_pic(s, shots["img03"], X, 1.67, w=5.9, name="prompt_opensees")
    add_text(s, X, 3.82, W, 0.45,
             "Generated script (~20,700 lines) is too long for a slide: outputs only",
             size=18, italic=True, color=GREY_TXT, space_after=0)
    label(s, X, 4.35, W, "Output: tip response, mesh convergence, beam theory")
    add_table(s, X, 4.8, [2.53, 1.75, 1.75, 1.85],
              [["", "5 mm mesh", "2.5 mm mesh", "Beam theory"],
               ["Tip deflection (mm)", "−8.596", "−8.523", "−8.414"],
               ["Tip rotation (rad)", "0.01277", "0.01266", "0.01262"]],
              size=18, row_h=0.42, first_col_bold=True)
    add_text(s, X, 6.15, 6.45, 0.6, "Within 1.3% of beam theory; mesh-converged to 0.9%",
             size=18, bold=True, space_after=0)

    # 7 ------------------------------------------------------------------ OpenSeesPy pipeline: plots + obj/con
    s = new_slide("OpenSeesPy Pipeline: Plots, Objective, Constraints",
                  "Suggested presenter: Tara.\n"
                  "Left: axial stress sigma_xx on the top ply from bending. Right: transverse deflection u_z; the "
                  "drawing is exaggerated 11.7x but the numbers on the colorbar are the true values (max 8.52 mm, as "
                  "in the table on the previous slide).\n"
                  "Objective/constraint check: mass 10.42 g with the catalog density 1580 kg/m^3 (hand check 1000 x "
                  "62.83 x 0.105 mm^3 x 1.58 g/cm^3 gives the same). Largest Hashin index under the 1 N load 4.2e-4: "
                  "fiber tension in the bottom ply at the clamp, sigma1 ~ 50 MPa vs Xt = 2501 MPa. Flattening the "
                  "R = 20 mm arc for coiling gives F = 0.136 (matrix tension), which governs; F < 1 so the design "
                  "passes the no-failure check.")
    add_text(s, 0.3, 0.75, 6.2, 0.4, [[("Axial stress σ_{xx} on the top ply from bending", {"bold": True})]],
             size=18, align=PP_ALIGN.CENTER, space_after=0)
    add_pic(s, shots["img06"], 0.75, 1.17, h=3.55, border=False, name="sigma_xx_top")
    add_text(s, 6.75, 0.75, 6.3, 0.4, [[("Transverse deflection u_{z} (drawing exaggerated 11.7×)",
                                         {"bold": True})]], size=18, align=PP_ALIGN.CENTER, space_after=0)
    add_pic(s, shots["img07"], 7.55, 1.17, h=3.55, border=False, name="uz")
    label(s, 0.3, 4.85, 6.0, "Output: objective/constraint check")
    status_pill(s, 10.45, 4.82)
    tiles = [("10.42 g", "Mass (objective); hand check agrees"),
             ("4.2×10⁻⁴", "Max Hashin index in bending, 1 N tip load (fiber tension)"),
             ("0.136", "Hashin index from flattening for coiling (governs; all F < 1)")]
    x = 0.3
    for big, small in tiles:
        add_box(s, x, 5.35, 3.8, 1.35, [[(big, {"size": 28, "bold": True})], [(small, {})]],
                fill=PEACH, line=ORANGE, size=18, space_after=0)
        x += 4.1

    # 8 ------------------------------------------------------------------ Abaqus loop: prompt
    s = new_slide("Abaqus Verification Loop",
                  "Suggested presenter: Tara.\n"
                  "Because the GitHub repository now lives on the lab server, Claude runs Abaqus itself: the human "
                  "steps that moved files between machines and the ODB extraction step are gone from the diagram.\n"
                  "Care on the shared server: every Abaqus run goes through .claude/orchestrator/tools/run_abaqus.py, "
                  "which caps the CPUs (default 1, at most 8; the prompt allowed 16 cores in total) and refuses to "
                  "write outside the project repository folder (PROTOCOL.md section 6a).\n"
                  "Why the results comparison agent is separate: the information available to the agents is split. "
                  "The orchestrator writes and sees the input files of both models (the OpenSeesPy script and, through "
                  "the translator tool, the Abaqus script). The OpenSeesAbaqusResultsComparator agent was not allowed to "
                  "read either input file; it only saw the two result files, so it cannot be biased toward confirming "
                  "the models it is checking (an agent should not verify its own work).")
    _, _, h = add_pic(s, diag["br"], 0.3, 0.85, w=4.5, name="diagram_section")
    what_it_does(s, 0.3, 0.85 + h + 0.15, 4.5, 2.4,
                 "Translates the OpenSeesPy script to Abaqus, which Claude now runs on the lab server. An "
                 "independent agent that sees only the two outputs checks that they agree and discusses any "
                 "discrepancies.")
    X, W = 5.15, 7.88
    label(s, X, 0.78, 5.5, "Input / Output Example", size=20)
    status_pill(s, X + W - 1.75, 0.78)
    label(s, X, 1.25, W, "Input: prompt (same tape spring as the previous slides)")
    add_pic(s, shots["img09"], X, 1.67, w=6.9, name="prompt_abaqus")
    add_box(s, X, 3.98, W, 1.05,
            [[("Careful on a shared lab server: ", {"bold": True}),
              ("at most 16 CPU cores in total (Abaqus at most 8, through a wrapper that enforces the limit), and "
               "nothing written outside the project repository folder", {})]],
            fill=PEACH, line=ORANGE, size=18, align=PP_ALIGN.LEFT)
    add_box(s, X, 5.13, W, 1.15,
            [[("Why a separate comparison agent? Information split: ", {"bold": True}),
              ("the orchestrator sees the OpenSeesPy and Abaqus input files; the comparison agent sees only the "
               "two outputs, to avoid confirmation bias", {})]],
            fill=PEACH, line=ORANGE, size=18, align=PP_ALIGN.LEFT)
    label(s, X, 6.38, W, "Output: OpenSeesPy and Abaqus agree within 0.7% (next slide)")

    # 9 ------------------------------------------------------------------ Abaqus loop: results
    s = new_slide("Abaqus Verification Loop: Results",
                  "Suggested presenter: Tara.\n"
                  "Comparison written by the OpenSeesAbaqusResultsComparator agent from the OpenSeesPy .npz and the "
                  "Abaqus ODB extract only. Pictures: deformation x20, grey = undeformed, black = clamped nodes; top: "
                  "u_z, bottom: sigma_xx on the top ply.\n"
                  "Differences under 1% are acceptable: OpenSeesPy (ASDShellQ4 with LayeredShell sections) and "
                  "Abaqus (S4R with a composite layup) use different shell elements, integrate the layers "
                  "differently and apply the loads/BCs differently (rigid links vs. coupling).")
    add_table(s, 0.3, 0.85, [2.5, 1.3, 1.3, 1.0],
              [["Quantity", "OpenSees", "Abaqus", "Diff."],
               ["Tip u_{z} (mm)", "−8.523", "−8.583", "0.70%"],
               ["Tip rotation (rad)", "0.01266", "0.01275", "0.70%"],
               ["σ_{1}, top ply (MPa)", "46.14", "46.33", "0.4%"],
               ["τ_{12}, top ply (MPa)", "0.355", "0.354", "0.1%"],
               ["σ_{xx} range, top ply (MPa)", "−29.6 to 46.1", "−29.8 to 46.3", "< 1%"]],
              size=18, row_h=0.45, first_col_bold=True)
    add_box(s, 0.3, 4.15, 6.1, 1.65,
            [[("Agree within 0.7%", {"size": 24, "bold": True})],
             [("Acceptable: the two codes model shell elements, layered composites and loads/BCs differently", {})]],
            fill=PEACH, line=ORANGE, size=18)
    status_pill(s, 0.3, 6.05)
    add_text(s, 2.15, 6.02, 4.3, 0.75, "Comparator agent saw only the two result files", size=18,
             color=GREY_TXT, italic=True, space_after=0)
    add_pic(s, shots["img12"], 6.65, 0.82, w=6.4, name="compare_uz")
    add_pic(s, shots["img11"], 6.65, 3.78, w=6.4, name="compare_sxx")

    # 10 ----------------------------------------------------------------- baseline: sandbox
    s = new_slide("End-to-End Baseline: Sandboxed Catalogs",
                  "Suggested presenter: Tara.\n"
                  "Goal: demonstrate that the full orchestrator system works on a subset of materials, layups and "
                  "geometries, and that it finds the solution a human knows to be optimal.\n"
                  "Sandbox: the orchestrator tools read the catalogs from fixed paths and the protocol forbids "
                  "editing them, so the run used a copy of the orchestrator, skills and verifier in Code for "
                  "Project/11-11-26 (Tara)/toy_orch/.claude/ with the three toy catalogs as its memory folders. The "
                  "real .claude/ and catalogs were not touched.\n"
                  "Why each option: [0/0/0] should be optimal since only axial stresses are induced and off-axis "
                  "plies are not needed; [0]10 is far too thick (mass, coiling stresses); [90/90/90] has too little "
                  "stiffness and strength along the boom. R = 2 mm is so tightly curved that coiling should fail the "
                  "material; R = 200 mm adds a lot of mass. L001 x1000 density cannot win on mass; L001 strengths "
                  "x0.001 should fail.")
    add_box(s, 0.3, 0.8, 12.75, 0.62,
            [[("Goal: ", {"bold": True}),
              ("show that the full orchestrator finds the design a human knows to be optimal", {})]],
            fill=PEACH, line=ORANGE, size=20, align=PP_ALIGN.LEFT)
    label(s, 0.3, 1.6, 5.0, "Input: prompt to create the toy catalogs")
    add_pic(s, shots["img13"], 0.3, 2.02, h=4.65, name="prompt_toy_catalogs")
    X, W = 5.45, 7.6
    label(s, X, 1.6, 5.6, "Output: 3 × 3 × 3 = 27 possible designs")
    status_pill(s, X + W - 1.75, 1.6)
    add_table(s, X, 2.1, [1.6, 2.15, 1.85, 2.0],
              [["Role", "Material", "Layup", "Geometry"],
               ["Should be optimal", "L001 (slide 3)", "[0/0/0]", "R = 20 mm, 180°"],
               ["Heavier", "L001, 1000× density", "[0]_{10}, 3.3× thicker", "R = 200 mm"],
               ["Should fail", "L001, strengths × 0.001", "[90/90/90]", "R = 2 mm"]],
              size=18, row_h=[0.45, 0.68, 0.68, 0.68], first_col_bold=True,
              fills={(1, None): GREEN_BG, (3, None): RED_BG})
    add_text(s, X, 4.72, W, 2.05,
             [[("L001: ", {"bold": True}), ("IM7/8552 row of the material catalog (slide 3)", {})],
              [("Heavier: ", {"bold": True}), ("works against the objective of the lightest boom", {})],
              [("Should fail: ", {"bold": True}),
               ("should trigger material failure ([90/90/90] should also miss the deflection limit)", {})],
              [("Sandbox copy of the orchestrator; ", {}), ("real catalogs untouched", {"bold": True})]],
             size=18, bullets=True, space_after=4)

    # 11 ----------------------------------------------------------------- baseline: tools only
    s = new_slide("End-to-End Baseline: Tools Only, No Agents",
                  "Suggested presenter: Tara.\n"
                  "First the deterministic OpenSeesPy tools were run, without the orchestrator agent, on the design "
                  "a human expects to be optimal: this is the baseline the orchestrator should reproduce.\n"
                  "Axial: tip extension 0.00957 mm (PL/EA 0.00951). Tip load: 8.52 mm on the 2.5 mm mesh (8.50 mm "
                  "on 1.25 mm; PL^3/3EI = 8.41 mm). Coiling on the 40 mm hub: flattening (1/R) plus hub curvature "
                  "(1/40), worst of four signs, F = 0.183, matrix tension in the outer ply. Mass 10.42 g, same as "
                  "the hand check rho b h L.")
    add_box(s, 0.3, 0.8, 4.6, 5.9,
            [[("Optimization setup", {"bold": True, "size": 24})],
             [("Objective: ", {"bold": True}), ("minimum mass", {})],
             [("Constraints:", {"bold": True})],
             "Tape spring, 1 m long",
             "Cantilever: clamped root, free tip",
             "10 N axial extension: no failure",
             "1 N opposite-sense tip load: deflection ≤ 2 cm, no failure",
             "Coils on a 4 cm radius hub: no failure",
             [("Baseline: ", {"bold": True}),
              ("tools only, on the known optimum (L001, [0/0/0], R = 20 mm)", {})]],
            fill=WHITE, line=BORDER, size=20, align=PP_ALIGN.LEFT, anchor=MSO_ANCHOR.TOP, space_after=8,
            inset=0.15)
    # bullets for the constraint lines only
    tf = s.shapes[-1].text_frame
    for i in range(3, 8):
        _bullet(tf.paragraphs[i])
    X, W = 5.2, 7.85
    label(s, X, 0.78, W, "Input: prompt to run the tools on the known optimum")
    add_pic(s, shots["img17"], X, 1.2, h=2.8, name="prompt_baseline_tools")
    add_box(s, 10.2, 1.2, 2.85, 1.55, [[("10.42 g", {"size": 28, "bold": True})], [("Boom mass", {})]],
            fill=PEACH, line=ORANGE, size=18, space_after=0)
    status_pill(s, 10.2, 3.0, w=2.85)
    label(s, X, 4.08, W, "Output: all three load cases pass")
    add_table(s, X, 4.5, [2.1, 2.5, 1.4, 1.85],
              [["Load case", "Result", "Hashin F", "Strength ratio"],
               ["10 N axial", "Extension 0.0096 mm", "4.0×10⁻⁷", "1576"],
               ["1 N tip load", "Deflection 8.52 mm", "4.2×10⁻⁴", "49"],
               ["Coiling, 4 cm hub", "—", "0.183", "2.34"]],
              size=18, row_h=0.42, first_col_bold=True)
    add_text(s, X, 6.2, 6.4, 0.62,
             [[("Strength ratio R = 1/√F: ", {"bold": True}),
               ("factor by which the load can grow before Hashin failure (F = 1)", {})]],
             size=18, space_after=0)

    # 12 ----------------------------------------------------------------- baseline: orchestrator
    s = new_slide("End-to-End Baseline: Orchestrator Run",
                  "Suggested presenter: Tara.\n"
                  "The orchestrator ran exactly as normal (study.py state machine, the same skills and checks) on "
                  "the toy catalogs, with Abaqus verification. Its optimum is the human-chosen baseline. All major "
                  "quantities agree with the tools-only baseline within slight differences from the mesh size "
                  "(baseline 2.5 mm, orchestrator 5 mm). Abaqus (5 mm mesh): tip deflection +2.6%, peak ply stress "
                  "+2.1% (study report); the 42.6 MPa is the top ply, the 47.7 / 50.0 MPa are the peak over all plies.\n"
                  "Buckling (asked to stop once past 1 N): perfect-boom phase-B path reached 1037 N mm > 1000 N mm "
                  "root moment with no limit point; Abaqus buckling on the perfect geometry: linear eigenvalue "
                  "4336 N mm, Riks limit point 1395 N mm, both above 1000 N mm. Mesh convergence 5 -> 3 mm: tip "
                  "stiffness 0.72%.")
    label(s, 0.3, 0.78, 4.2, "Input: prompt to the orchestrator")
    add_pic(s, shots["img19"], 0.3, 1.2, h=3.85, name="prompt_orchestrator")
    add_box(s, 0.3, 5.25, 3.95, 1.45,
            [[("Optimum = human-chosen baseline: ", {"bold": True}), ("L001, [0/0/0], R = 20 mm", {})]],
            fill=GREEN_BG, line=GREEN_LN, size=18, align=PP_ALIGN.LEFT)
    X, W = 4.55, 8.5
    label(s, X, 0.78, 6.4, "Output: optimal design vs. baseline vs. Abaqus")
    status_pill(s, X + W - 1.75, 0.78)
    add_table(s, X, 1.25, [3.25, 1.75, 1.75, 1.75],
              [["Quantity", "Baseline, 2.5 mm mesh", "Orchestrator, 5 mm mesh", "Abaqus, 5 mm mesh"],
               ["Mass (g)", "10.42", "10.40", "–"],
               ["Tip deflection, 1 N (mm)", "8.52", "8.60", "8.82"],
               ["Tip rotation (rad)", "0.0127", "0.0128", "0.0131"],
               ["Peak σ_{1} at root (MPa)", "50.0", "47.7", "42.6 (top ply)"],
               ["Hashin F, 1 N tip load", "4.2×10⁻⁴", "3.7×10⁻⁴", "–"],
               ["Hashin F, 10 N axial", "4.0×10⁻⁷", "3.9×10⁻⁷", "–"],
               ["Hashin F, coiling on hub", "0.183", "0.183", "–"]],
              size=18, row_h=[0.7] + [0.44] * 7, first_col_bold=True)
    add_text(s, X, 5.3, W - 1.3, 1.4,
             ["Matches the baseline; differences come from the mesh size",
              "Abaqus agrees within ~3%; no buckling under the 1 N load"],
             size=18, bullets=True, space_after=6)

    # 13 ----------------------------------------------------------------- baseline: pruning
    s = new_slide("Orchestrator Ruled Out 19 of 27 Designs Before FE",
                  "Suggested presenter: Tara.\n"
                  "Before the first iteration, the orchestrator's design screen checked all 27 combinations with "
                  "exact or near-exact formulas: coiling with exact CLT + Hashin 2D (the flattened, hub-bent flange "
                  "has a known uniform curvature state, so no FE is needed) and stiffness with thin-walled beam "
                  "theory (k = 3 E_x I / L^3, rejected below 0.85 x 0.05 N/mm). 17 fail coiling, 12 fail stiffness "
                  "(some both): every L003 row (strengths x0.001), every T002 row (R = 2 mm) and [0]10 on R = 20 mm "
                  "fail coiling; [90/90/90] on R = 20 mm and every R = 2 mm row fail stiffness. Mass was not used to "
                  "reject anything.\n"
                  "Only the 8 survivors were run through the FE loop (8 iterations instead of 27). Iteration 1 was "
                  "already the optimum; the other 7 feasible designs are all heavier (R = 200 mm or 1000x density).\n"
                  "Next step: go beyond the baseline to problems a human could not solve by hand: far more "
                  "materials, layups and geometries, all of them realistic (unlike the altered ones here).")
    # 27-tile grid: rows = material, columns = layup x geometry
    gx, gy, tw, th, gap = 1.35, 1.62, 0.66, 0.72, 0.06
    layups = ["[0/0/0]", "[0]_{10}", "[90/90/90]"]
    geos = ["20", "2", "200"]
    for li, ly in enumerate(layups):
        x0 = gx + li * (3 * (tw + gap) + 0.12)
        add_text(s, x0, 0.8, 3 * (tw + gap), 0.4, [[(ly, {"bold": True})]], size=18, align=PP_ALIGN.CENTER,
                 space_after=0)
        for gi, g in enumerate(geos):
            add_text(s, x0 + gi * (tw + gap) - 0.05, 1.17, tw + 0.1, 0.4, g, size=18, align=PP_ALIGN.CENTER,
                     space_after=0)
    add_text(s, 0.3, 1.17, 1.0, 0.4, [[("R (mm)", {"italic": True})]], size=18, space_after=0)
    # status per (material, layup, geometry) from the study report (ts_toy_minmass_REPORT.pdf, table 4.1)
    fe = {("L001", 0, 0): "it1", ("L001", 0, 2): "it2", ("L001", 1, 2): "it5", ("L001", 2, 2): "it4",
          ("L002", 0, 0): "it3", ("L002", 0, 2): "it6", ("L002", 1, 2): "it8", ("L002", 2, 2): "it7"}
    stiff_fail = {(0, 1), (1, 1), (2, 0), (2, 1)}  # (layup, geometry) failing beam stiffness
    coil_fail_l12 = {(0, 1), (1, 0), (1, 1), (2, 1)}
    mats = [("L001", "Real"), ("L002", "×1000 ρ"), ("L003", "Weak")]
    for mi, (m, mlab) in enumerate(mats):
        y0 = gy + mi * (th + gap)
        add_text(s, 0.3, y0, 1.05, th, [[(m, {"bold": True})], [(mlab, {"color": GREY_TXT})]],
                 size=18, anchor=MSO_ANCHOR.MIDDLE, space_after=0)
        for li in range(3):
            x0 = gx + li * (3 * (tw + gap) + 0.12)
            for gi in range(3):
                key = (m, li, gi)
                if key in fe:
                    best = fe[key] == "it1"
                    txt, fill, ln = fe[key], GREEN_BG if best else PEACH, GREEN_LN if best else ORANGE
                else:
                    reasons = []
                    if m == "L003" or (li, gi) in coil_fail_l12:
                        reasons.append("C")
                    if (li, gi) in stiff_fail:
                        reasons.append("S")
                    txt, fill, ln = ",".join(reasons), TILE_GREY, BORDER
                add_box(s, x0 + gi * (tw + gap), y0, tw, th, [[(txt, {"bold": fe.get(key) == "it1"})]],
                        fill=fill, line=ln, size=18, adj=0.12, inset=0.02)
    # legend
    ly0 = gy + 3 * (th + gap) + 0.2
    leg = [(GREEN_BG, GREEN_LN, "it1", [[("Optimum, found at iteration 1", {})]], 0.45),
           (PEACH, ORANGE, "it#", [[("Feasible but heavier (FE iteration #)", {})]], 0.45),
           (TILE_GREY, BORDER, "C", [[("Fails coiling: ", {"bold": True}),
                                      ("flattening + 4 cm hub gives Hashin F ≥ 1 (too thick, R too tight, "
                                       "or weak material)", {})]], 0.66),
           (TILE_GREY, BORDER, "S", [[("Fails stiffness: ", {"bold": True}),
                                      ("beam theory gives > 2 cm deflection ([90/90/90]; R = 2 mm since "
                                       "I scales as R³)", {})]], 0.66)]
    yy = ly0
    for f, l, t, d, hh in leg:
        add_box(s, 0.3, yy + (hh - 0.45) / 2, 0.75, 0.45, [[(t, {})]], fill=f, line=l, size=18, adj=0.12,
                inset=0.02)
        add_text(s, 1.15, yy - 0.04, 6.6, hh + 0.08, d, size=18, anchor=MSO_ANCHOR.MIDDLE, space_after=0)
        yy += hh + 0.1
    # right column
    X, W = 8.1, 4.95
    add_text(s, X, 0.8, W, 2.6,
             [[("Pre-checks without FE: ", {"bold": True}), ("exact CLT coiling index and beam-theory stiffness", {})],
              [("19 of 27 rejected, ", {"bold": True}), ("so only 8 FE iterations were needed", {})],
              [("Optimum found first; ", {"bold": True}), ("the other 7 feasible designs were heavier", {})]],
             size=18, bullets=True, space_after=8)
    add_box(s, X, 3.55, W, 1.1, [[("The full orchestrator architecture works as intended", {"bold": True})]],
            fill=GREEN_BG, line=GREEN_LN, size=20)
    add_box(s, X, 4.8, W, 1.9,
            [[("Next step: ", {"bold": True}),
              ("many realistic materials, layups and geometries; the orchestrator pre-screens for viable designs "
               "and runs the needed grid search much faster than a human", {})]],
            fill=PEACH, line=ORANGE, size=18, align=PP_ALIGN.LEFT)

    # 14 ----------------------------------------------------------------- failure case
    s = new_slide("Failure Case: Omega Boom of Palmeri and Laurenzi [1]",
                  "Suggested presenter: Tara (11/10 attempt; conversation in Claude Conversations/Tara 11-10-26 "
                  "Conversation 1).\n"
                  "This was first considered as the baseline: reproduce the omega (collapsible tubular mast) "
                  "geometry optimization of Palmeri and Laurenzi (2024) for maximum buckling load / moments. It "
                  "turned out to be outside the scope of the optimization orchestrator: the material and layup were "
                  "given by the user instead of taken from the catalogs, the geometry (r1, alpha) was optimized "
                  "continuously instead of picked from discrete catalog rows, and the buckling simulations differed "
                  "from the ones the existing skills set up. Claude worked for hours but could not even get a mesh "
                  "convergence study to work on the paper's optimal design, because of OpenSeesPy's limited buckling "
                  "capabilities for this closed section. It was abandoned in favor of the simpler tape-spring "
                  "baseline of the previous slides.")
    label(s, 0.3, 0.78, 4.2, "Input: prompt")
    add_pic(s, shots["img21"], 0.3, 1.2, h=5.55, name="prompt_palmeri")
    X, W = 4.55, 8.5
    label(s, X, 0.78, 5.0, "Output", size=20)
    status_pill(s, X + W - 1.75, 0.78, ok=False)
    add_table(s, X, 1.3, [2.0, 6.5],
              [["Expected", "Reproduce the published optimal omega-boom geometry for maximum buckling load and "
                            "moments"],
               ["Returned", "After hours, no working mesh convergence study even on the paper's optimal design"],
               ["Likely cause", "Outside the orchestrator's scope: user-given material and layup instead of "
                                "catalogs, continuous variation of the geometry instead of discrete catalog "
                                "rows, and buckling analyses that OpenSeesPy and the existing skills do not "
                                "support for this closed section"],
               ["Outcome", "Abandoned for the simpler tape-spring baseline (slides 10-13)"]],
              size=18, row_h=0.6, first_col_bold=True, align=PP_ALIGN.LEFT, header=False,
              fills={(0, None): WHITE, (1, None): WHITE, (2, None): WHITE, (3, None): WHITE})
    refs(s, ["[1] Palmeri, F., & Laurenzi, S. (2024). Neural network-based surrogate modeling for buckling "
             "performance optimization of lightweight-composite collapsible tubular masts. Biomimetics, 9(8), 494."])

    prs.save(OUT)
    print("wrote", OUT, len(prs.slides), "slides")


if __name__ == "__main__":
    main()
