"""
Joins the OpenSeesPy code pieces written by the laminate-properties,
shell-mesh and shell-bc-load skills into ONE continuous, standalone
OpenSeesPy script (it imports only openseespy and numpy), and runs it.

The pieces (each skill's --emit-code output):
  laminate  laminate_properties.py ... --emit-code lam_code.py      materials, sections; SECTIONS, LAMINATE
  mesh      shell_mesh.py --case case.json --emit-code mesh_code.py nodes, elements (from SECTIONS); FACETS, FRAMES, MESH
  bc        shell_bc_load.py case.json --emit-code bc_code.py      supports, loads, solution, results .npz
The joined script = header (imports, new 3D / 6-DOF model) + laminate +
mesh + bc. The pieces are checked first: each is the right kind (marker
line), every name a piece needs is provided by an earlier one, and the
mesh and bc pieces were written for the same geometry.

Usage:
  python assemble_run.py --laminate-code L.py --mesh-code M.py --bc-code B.py [--script FILE] [--out DIR] [--no-run]
  python assemble_run.py case.json [--laminate lam.json] [--script FILE] [--out DIR] [--no-run] [--verify]
    the second form first has the three skills write their pieces
    (<case dir>/<name>_code/{laminate,mesh,bc}_code.py) from the case file
    --laminate   laminate JSON from laminate_properties.py --save-json (replaces the case's laminate)
    --script     the joined script (default: <case dir>/<name>_opensees.py, or next to the bc piece)
    --out        results folder of the run (default: <script dir>/results)
    --no-run     only write the script
    --verify     also run the case through shell_bc_load.run_case and compare the results
Units: N, mm, MPa.
"""
import argparse
import ast
import datetime
import json
import subprocess
import sys
import time
from pathlib import Path

import numpy as np
import openseespy.opensees as ops

_SKILLS = Path(__file__).resolve().parents[1]
for _d in ('laminate-properties', 'shell-mesh', 'shell-bc-load'):
    sys.path.insert(0, str(_SKILLS / _d))
import laminate_properties as lp   # noqa: E402
import shell_bc_load as bc         # noqa: E402
import shell_mesh as sm            # noqa: E402

ORDER = ('laminate', 'mesh', 'supports, loads and solution')
PROVIDES = {'laminate': {'SECTIONS', 'LAMINATE'}, 'mesh': {'FACETS', 'FRAMES', 'MESH'}}
NEEDS = {'mesh': {'SECTIONS'}, 'supports, loads and solution': {'FACETS', 'FRAMES', 'MESH', 'LAMINATE'}}

HEADER = '''r"""
OpenSeesPy model "@NAME@": one continuous script joined by the
shell-assemble-run skill (@DATE@) from the code pieces of
  laminate-properties : @LAMINATE@
  shell-mesh          : @MESH@
  shell-bc-load       : @BC@
Each piece starts with a "# === OpenSeesPy piece" line. Regenerate the pieces
and the script rather than hand-editing the model data.
Run: python @SCRIPT@ [results.npz]   (conda env shells, openseespy 3.8)
Units: N, mm, MPa.
"""
import json
import math
import sys
import time
from pathlib import Path

import numpy as np
import openseespy.opensees as ops

ops.wipe()
ops.model('basic', '-ndm', 3, '-ndf', 6)
'''


# --- pieces --------------------------------------------------------------------------------

def read_piece(path, kind):
    """Text of a piece, checked to be of `kind` (its marker line)."""
    text = Path(path).read_text(encoding='utf-8')
    first = text.splitlines()[0] if text else ''
    mark = lp.PIECE_MARK.split('{}')[0] + kind + ' ('
    if not first.startswith(mark):
        raise SystemExit(f'{path}: not a {kind!r} piece (first line {first!r}); write it with that skill\'s --emit-code')
    return text


def _defined(text):
    """Names assigned at the top level of a piece (also `A, B = ...`)."""
    names = set()
    for node in ast.parse(text).body:
        if isinstance(node, ast.Assign):
            for t in node.targets:
                names |= {t.id} if isinstance(t, ast.Name) else {e.id for e in getattr(t, 'elts', []) if isinstance(e, ast.Name)}
    return names


def _assigned(text, name):
    """Literal value of a top-level `NAME = ...` line of a piece (None if absent)."""
    for node in ast.parse(text).body:
        if isinstance(node, ast.Assign) and any(isinstance(t, ast.Name) and t.id == name for t in node.targets):
            try:
                return ast.literal_eval(node.value)
            except ValueError:
                return None
    return None


def check_pieces(texts):
    """Every name a piece needs is assigned by an earlier piece; the mesh and
    bc pieces were written for the same geometry."""
    have = set()
    for kind in ORDER:
        missing = NEEDS.get(kind, set()) - have
        if missing:
            raise SystemExit(f'{kind} piece needs {sorted(missing)}, not provided by the earlier pieces')
        defined = _defined(texts[kind])
        if not PROVIDES.get(kind, set()) <= defined:
            raise SystemExit(f'{kind} piece does not define {sorted(PROVIDES[kind] - defined)}')
        have |= defined
    mesh, geo = _assigned(texts['mesh'], 'MESH'), _assigned(texts[ORDER[2]], 'GEOMETRY')
    if mesh['geometry'] != geo:
        raise SystemExit(f'the mesh piece is for geometry {mesh["geometry"]} but the supports/loads piece for {geo}')


def _summary(text):
    """Second line of a piece (its one-line description)."""
    return text.splitlines()[1].lstrip('# ')


def join(pieces, script):
    """Join {'laminate': path, 'mesh': path, 'bc': path} into `script`.
    Returns the case name."""
    texts = {kind: read_piece(pieces[key], kind) for kind, key in zip(ORDER, ('laminate', 'mesh', 'bc'))}
    check_pieces(texts)
    bc_text = texts[ORDER[2]]
    name = _assigned(bc_text, 'NAME')
    head = (HEADER.replace('@NAME@', name).replace('@DATE@', f'{datetime.date.today():%Y-%m-%d}')
            .replace('@LAMINATE@', _summary(texts['laminate'])).replace('@MESH@', _summary(texts['mesh']))
            .replace('@BC@', _summary(bc_text)).replace('@SCRIPT@', Path(script).name))
    body = '\n\n'.join(texts[k].rstrip() + '\n' for k in ORDER)
    Path(script).parent.mkdir(parents=True, exist_ok=True)
    Path(script).write_text(head + '\n\n' + body, encoding='utf-8')
    return name


def write_pieces(case, folder):
    """Each skill writes its piece of the case into `folder`."""
    folder = Path(folder)
    folder.mkdir(parents=True, exist_ok=True)
    paths = {k: folder / f'{k}_code.py' for k in ('laminate', 'mesh', 'bc')}
    lam = lp.laminate_from_spec(case['laminate'])
    lam.write_code(paths['laminate'])
    el = case.get('element', {})
    sm.write_code(sm.build_from_spec(case['geometry']), paths['mesh'], el.get('type', 'ASDShellQ4'),
                  el.get('corotational', False), el.get('eas'), geometry=case['geometry'], laminate=lam)
    bc.write_code(case, paths['bc'])
    return paths


def resolve_case(case, case_path=None, laminate=None):
    """Copy of the case with the laminate JSON path made absolute (relative
    paths are relative to the case file) or replaced by `laminate`."""
    case = json.loads(json.dumps(case))
    if laminate:
        case['laminate'] = {'json': str(Path(laminate).resolve())}
    spec = case['laminate']
    if 'json' in spec and case_path and not Path(spec['json']).is_absolute():
        spec['json'] = str((Path(case_path).parent / spec['json']).resolve())
    return case


# --- running and checking ---------------------------------------------------------------

def run_script(path, npz):
    """Run the joined script in a fresh Python process (same interpreter)."""
    t0 = time.perf_counter()
    r = subprocess.run([sys.executable, str(path), str(npz)], cwd=str(Path(path).parent))
    if r.returncode != 0:
        raise SystemExit(f'{Path(path).name} failed (exit code {r.returncode})')
    print(f'{Path(path).name} ran in {time.perf_counter() - t0:.1f} s')


def compare(npz, case):
    """Run the case through shell_bc_load.run_case and compare with the
    script's results. Returns {field: max abs difference / max abs value}."""
    import contextlib
    import io
    with contextlib.redirect_stdout(io.StringIO()):
        _, ref = bc.run_case(case, verbose=False)
    got = bc.load_results(npz)
    out = {}
    for k in ('points', 'disp', 'strains', 'history', 'faces', 'frames', 'fixed'):
        a, b = np.asarray(got[k], float), np.asarray(ref[k], float)
        if a.shape != b.shape:
            out[k] = float('inf')
            continue
        scale = np.abs(b).max() if b.size and np.abs(b).max() > 0 else 1.0
        out[k] = float(np.abs(a - b).max() / scale) if b.size else 0.0
    return out


def main():
    ap = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument('case', nargs='?', help='shell-bc-load case JSON file (the skills write the pieces from it)')
    ap.add_argument('--laminate-code', help='laminate piece (laminate_properties.py --emit-code)')
    ap.add_argument('--mesh-code', help='mesh piece (shell_mesh.py --emit-code)')
    ap.add_argument('--bc-code', help='supports/loads/solution piece (shell_bc_load.py --emit-code)')
    ap.add_argument('--laminate', help='laminate JSON from laminate_properties.py --save-json (with a case file)')
    ap.add_argument('--script', help='joined script')
    ap.add_argument('--out', help='results folder (default <script dir>/results)')
    ap.add_argument('--no-run', action='store_true', help='only write the script')
    ap.add_argument('--verify', action='store_true', help='compare with shell_bc_load.run_case (needs the case file)')
    a = ap.parse_args()
    given = [a.laminate_code, a.mesh_code, a.bc_code]
    case = None
    if a.case:
        case_path = Path(a.case).resolve()
        case = resolve_case(json.loads(case_path.read_text()), case_path, a.laminate)
        case['name'] = case.get('name', case_path.stem)
        pieces = write_pieces(case, case_path.parent / f'{case["name"]}_code')
        ops.wipe()
        for k, p in pieces.items():
            print(f'{k:>8} piece: {p}')
        script = Path(a.script) if a.script else case_path.parent / f'{case["name"]}_opensees.py'
    elif all(given):
        pieces = dict(zip(('laminate', 'mesh', 'bc'), given))
        script = Path(a.script) if a.script else Path(a.bc_code).resolve().parent / 'model_opensees.py'
    else:
        ap.error('give a case file, or all of --laminate-code --mesh-code --bc-code')
    name = join(pieces, script)
    print(f'joined script: {script} ({len(script.read_text(encoding="utf-8").splitlines())} lines)')
    if a.no_run:
        return
    npz = (Path(a.out) if a.out else script.parent / 'results') / f'{name}.npz'
    run_script(script, npz)
    if a.verify:
        if case is None:
            ap.error('--verify needs the case file')
        diff = compare(npz, case)
        ok = all(v <= 1e-9 for v in diff.values())
        print('verify vs shell_bc_load.run_case (max |difference| / max |value|): '
              + ', '.join(f'{k} {v:.1e}' for k, v in diff.items()) + f' -> {"PASS" if ok else "CHECK"}')
        ops.wipe()
        if not ok:
            raise SystemExit(1)


if __name__ == '__main__':
    main()
