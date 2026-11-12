"""
Federico's librarian prompts (given as plain text) drawn as chat-style prompt bubbles that match the
screenshots in "Demo Slides Outline.docx": light grey rounded box, Segoe UI, bullets with hanging indent.
Used by build_demo_deck.py for slides 3-5. Text is verbatim; only the layout (bullets, list columns) is set here.

  python prompt_bubbles.py      writes bubble_material.png, bubble_layup.png, bubble_geometry.png for a look
"""
import io
import os

from PIL import Image, ImageDraw, ImageFont

FONTS = "C:/Windows/Fonts/"
BG = (240, 240, 240)
FG = (26, 26, 26)

# items: ("p", text) paragraph | ("b", text) bullet | ("n", "1.", text) numbered | ("gap",) blank line
#        ("cols", [lines], ncol) short lines laid out in columns (filled column by column)
MATERIAL = [
    ("p", "I need a librarian agent to help me create a catalog of material properties for fiber reinforced "
          "composite laminas. We will focus on material properties of the UD lamina for now, not of the "
          "individual fibers or matrix. The catalog should have the following structure:"),
    ("cols", ["Column 1: lamina ID number",
              "Column 2: name of fiber like T700 or AS-4",
              "Column 3: name of polymer system like PEEK, DGEBA epoxy, ...",
              "Column 4: E1 (GPa)",
              "Column 5: E2 (GPa)",
              "Column 6: G12 (GPa)",
              "Column 7: nu12",
              "Column 8: nu23",
              "Column 9: G23 (GPa)",
              "Column 10: longitudinal strength under uniaxial compression (MPa)",
              "Column 11: longitudinal strength under uniaxial tension (MPa)",
              "Column 12: transverse strength under uniaxial compression (MPa)",
              "Column 13: transverse strength under uniaxial tension (MPa)",
              "Column 14: strength under shear (MPa)",
              "Column 15: ply thickness (mm)",
              "Column 16: density (kg/m^3)",
              "Column 17: the source link for the values provided"], 1),
    ("p", "The stiffnesses and poisson ratios should be sufficient to then be used by the tool "
          "laminate-properties in D:\\Users\\fbenazzo\\projects\\BenazzoVenkatadri_ThinShellSims.claude\\skills. "
          "Instead, the strengths should be sufficient to satisfy the in-plane Tsai-Hill failure strength "
          "criterion."),
    ("p", "Rules:"),
    ("n", "1.", "The values in the catalog should be taken from referenced literature online, i.e. not wikipedia "
                "or unknown websites, but mostly properties actually measured by research groups or companies "
                "that used these materials"),
    ("n", "2.", "If nu23 or G23 are missing, you can use sensible estimates for them, but do report that their "
                "estimates with a * next to their value"),
    ("p", "Find between 25 and 50 lamina properties and save the catalog as two .txt files (one with the units "
          "I asked for me to review and more easily read, and one with SI standard units, so Pa, m, N)"),
]

LAYUP = [
    ("p", "I want you to create another catalog which will be accessed by the main agent orchestrator to pick a "
          "layup for the next simulation. The catalog holds a list of layups to be used in the simulations. "
          "This should be layups that are:"),
    ("b", "From 1 to 5 plies"),
    ("b", "Symmetric"),
    ("b", "Ply angles 0, 30, 45, 60, 90, -30, -45, -60 degrees"),
]

GEOMETRY = [
    ("p", "I want you to create a catalog of the possible combinations of geometrical parameters for coilable "
          "booms. Let me explain, there is 4 types of booms to be considered: tape springs, omega or lenticular "
          "booms, TRAC booms, and corrugated booms (which are basically omega booms but the flange is allowed "
          "to have more than 3 arcs). I want you to look up in the literature the radii and angles and "
          "web-lengths used in different research projects and report these back in a txt catalog where you ID "
          "the type of coilable boom among the 4 above, the number of arcs, the radius of each arc, the "
          "subtended angle of each arc, and the length of the web. Make sure the following:"),
    ("n", "1)", "I want about 10-20 different geometries for each type"),
    ("n", "2)", "For each geometry, check that it can flatten (that is the arc-lengths of the flange between "
                "the webs are equal)"),
    ("n", "3)", "Feel free to offer some asymmetric geometries, that still satisfy point 2"),
    ("n", "4)", "Show me a few of these geometries by plotting them"),
]


def _wrap(text, f, width):
    lines, cur = [], ""
    for w in text.split(" "):
        t = w if not cur else cur + " " + w
        if cur and f.getlength(t) > width:
            lines.append(cur)
            cur = w
        else:
            cur = t
    lines.append(cur)
    return lines


def bubble(items, width_in, font_pt, dpi=300, margin_in=0.08):
    """PNG bytes of the bubble on a white margin (like the screenshots), width_in wide in total,
    text at font_pt when placed at that width."""
    px = dpi / 72.0
    f = ImageFont.truetype(FONTS + "segoeui.ttf", int(round(font_pt * px)))
    m = int(round(margin_in * dpi))
    W = int(round(width_in * dpi)) - 2 * m
    pad_x, pad_y = 1.25 * font_pt * px, 0.9 * font_pt * px
    lh = 1.42 * font_pt * px              # line pitch, as in the screenshots
    ind = 1.15 * font_pt * px             # hanging indent of bullets / numbers
    inner = W - 2 * pad_x
    ops = []                              # (x, y, text)
    y = pad_y
    for it in items:
        kind = it[0]
        if kind == "gap":
            y += lh
        elif kind == "p":
            if ops and y > pad_y:
                y += lh                   # blank line before a paragraph, as typed
            for ln in _wrap(it[1], f, inner):
                ops.append((pad_x, y, ln))
                y += lh
        elif kind in ("b", "n"):
            mark, text = ("•", it[1]) if kind == "b" else (it[1], it[2])
            ops.append((pad_x + (0.15 * font_pt * px if kind == "b" else 0), y, mark))
            for ln in _wrap(text, f, inner - ind):
                ops.append((pad_x + ind, y, ln))
                y += lh
        elif kind == "cols":
            lines, n = it[1], it[2]
            per = -(-len(lines) // n)
            colw = inner / n
            y0 = y
            for c in range(n):
                yy = y0
                for ln in lines[c * per:(c + 1) * per]:
                    for k, part in enumerate(_wrap(ln, f, colw - 0.8 * font_pt * px)):
                        ops.append((pad_x + c * colw + (ind if k else 0), yy, part))
                        yy += lh
                y = max(y, yy)
    H = int(round(y + pad_y))
    im = Image.new("RGBA", (W, H), (255, 255, 255, 0))
    d = ImageDraw.Draw(im)
    d.rounded_rectangle([0, 0, W - 1, H - 1], radius=int(0.9 * font_pt * px), fill=BG)
    asc = f.getmetrics()[0]
    for x, yy, t in ops:
        d.text((x, yy + (lh - f.size * 1.33) / 2 + 0.1 * asc), t, font=f, fill=FG)
    buf = io.BytesIO()
    out = Image.new("RGB", (W + 2 * m, H + 2 * m), (255, 255, 255))
    out.paste(im, (m, m), im)
    out.save(buf, "PNG")
    return buf.getvalue()


if __name__ == "__main__":
    here = os.path.dirname(os.path.abspath(__file__))
    for name, items in (("material", MATERIAL), ("layup", LAYUP), ("geometry", GEOMETRY)):
        b = bubble(items, 7.88, 9)
        Image.open(io.BytesIO(b)).save(os.path.join(here, f"bubble_{name}.png"))
        print(name, Image.open(io.BytesIO(b)).size[1] / 300, "in tall")
