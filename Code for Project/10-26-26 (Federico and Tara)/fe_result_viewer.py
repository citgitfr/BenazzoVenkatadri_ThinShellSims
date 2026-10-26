"""
Result viewer for OpenSeesPy shell models (PyVista/VTK), built on
10-22-26 (Federico)/shell_viewer.py. Two steps, so the interactive window
never has to re-solve the model:

1. In the model script, after the solve, save the domain to a .vtp file:
     import fe_result_viewer as frv
     frv.save_results('results/case.vtp', cell_fields=stresses)
   Nodes, shell faces, displacements (ux uy uz) and rotations (rx ry rz) and
   fixed nodes are read from the OpenSees domain. cell_fields are per-element
   arrays in ops.getEleTags() order (e.g. top-surface stresses). Coincident
   elements on the same nodes (per-ply laminates: 8 per facet) are merged into
   one face, keeping the first element's values.
2. View it, as a PNG and/or an interactive window (rotate, zoom, pan):
     python fe_result_viewer.py results/case.vtp --field sigma_xx --png out.png
     python fe_result_viewer.py results/case.vtp --field sigma_xx   # GUI
   or frv.show('results/case.vtp', field='sigma_xx', screenshot='out.png').

Fields: any saved cell field, or the point fields ux uy uz rx ry rz and
|u| (displacement magnitude, the default). Diverging fields (values of both
signs) get a symmetric coolwarm scale, one-signed fields viridis.

Usage:
  python fe_result_viewer.py FILE.vtp [--field F] [--scale S | --target T]
         [--png OUT.png] [--no-gui] [--undeformed] [--view iso|xy|xz|yz]
         [--title TEXT] [--label TEXT] [--list]
"""
import argparse
import os
import sys

sys.path.insert(0, os.path.join(os.path.dirname(os.path.abspath(__file__)), '..', '10-22-26 (Federico)'))
import shell_viewer  # noqa: E402,F401  (preloads Mesa OpenGL on GPU-less machines before VTK)

import numpy as np  # noqa: E402
import pyvista as pv  # noqa: E402

POINT_FIELDS = ('ux', 'uy', 'uz', 'rx', 'ry', 'rz', '|u|')


def save_results(path, cell_fields=None, title=None):
    """Save the current OpenSees domain (after a solve) to a .vtp file."""
    import openseespy.opensees as ops
    tags = ops.getNodeTags()
    index = {tag: k for k, tag in enumerate(tags)}
    points = np.array([ops.nodeCoord(tag) for tag in tags], dtype=float)
    u = np.array([(ops.nodeDisp(tag) + [0.0] * 6)[:6] for tag in tags], dtype=float)

    faces, keep, seen = [], [], set()
    for k, ele in enumerate(ops.getEleTags()):
        conn = ops.eleNodes(ele)
        key = frozenset(conn)
        if len(conn) in (3, 4) and key not in seen:     # tri / quad shells, first of coincident set
            seen.add(key)
            keep.append(k)
            faces.append(len(conn))
            faces.extend(index[n] for n in conn)

    mesh = pv.PolyData(points, np.array(faces))
    for k, name in enumerate(POINT_FIELDS[:6]):
        mesh.point_data[name] = u[:, k]
    mesh.point_data['|u|'] = np.linalg.norm(u[:, :3], axis=1)
    fixed = np.zeros(len(tags), dtype=np.int8)
    fixed[[index[n] for n in ops.getFixedNodes()]] = 1
    mesh.point_data['fixed'] = fixed
    for name, values in (cell_fields or {}).items():
        mesh.cell_data[name] = np.asarray(values, dtype=float)[keep]
    if title:
        mesh.field_data['title'] = [title]

    os.makedirs(os.path.dirname(os.path.abspath(path)), exist_ok=True)
    mesh.save(path)
    print(f'saved {path}: {mesh.n_cells} faces ({len(ops.getEleTags())} elements), '
          f'{mesh.n_points} nodes, fields {list_fields(mesh)}')
    return mesh


def list_fields(mesh):
    return [n for n in mesh.point_data if n != 'fixed'] + list(mesh.cell_data)


def show(source, field='|u|', scale=None, target=None, screenshot=None, gui=True,
         undeformed=True, view='iso', title=None, label=None):
    """Deformed shape coloured by `field`, over the undeformed outline.

    source: .vtp path from save_results, or the PolyData it returned.
    scale:  displacement magnification; or target [model units] = drawn size
            of the largest displacement (default 10% of the model size).
    screenshot: PNG path. With gui=False the PNG is rendered offscreen; with
            gui=True a window opens too (PNG first, then the window).
    """
    mesh = pv.read(source) if isinstance(source, (str, os.PathLike)) else source
    if field not in mesh.point_data and field not in mesh.cell_data:
        raise KeyError(f'field {field!r} not in {list_fields(mesh)}')
    if title is None:
        title = str(mesh.field_data['title'][0]) if 'title' in mesh.field_data else 'OpenSees shell model'

    disp = np.column_stack([mesh.point_data[c] for c in ('ux', 'uy', 'uz')])
    umax = np.abs(disp).max()
    if scale is None:
        size = max(np.ptp(mesh.points, axis=0))
        scale = (target or 0.1 * size) / umax if umax > 0 else 1.0
    deformed = mesh.copy()
    deformed.points = mesh.points + scale * disp

    values = mesh.point_data[field] if field in mesh.point_data else mesh.cell_data[field]
    lo, hi = float(np.min(values)), float(np.max(values))
    if lo < 0 < hi or (lo == hi):
        lim = max(abs(lo), abs(hi)) or 1.0
        cmap, clim = 'coolwarm', (-lim, lim)
    else:
        cmap, clim = 'viridis', (lo, hi)
    fixed = mesh.points[mesh.point_data['fixed'] == 1] if 'fixed' in mesh.point_data else []

    def render(off_screen):
        plotter = pv.Plotter(off_screen=off_screen, window_size=(1600, 900), title=title)
        if undeformed:
            plotter.add_mesh(mesh.extract_feature_edges(boundary_edges=True, feature_edges=False,
                                                        manifold_edges=False),
                             color='gray', line_width=1)
        plotter.add_mesh(deformed, scalars=field, cmap=cmap, clim=clim,
                         show_edges=deformed.n_cells <= 20000, edge_color='black', edge_opacity=0.15,
                         scalar_bar_args={'title': label or field, 'fmt': '%.3g', 'vertical': True,
                                          'position_x': 0.82, 'position_y': 0.1})
        # deformed outline, so edge-on views (e.g. --view xz) still show the shape
        plotter.add_mesh(deformed.extract_feature_edges(boundary_edges=True, feature_edges=False,
                                                        manifold_edges=False),
                         color='black', line_width=2)
        if len(fixed):
            plotter.add_mesh(pv.PolyData(fixed + scale * disp[mesh.point_data['fixed'] == 1]),
                             color='black', point_size=8, render_points_as_spheres=True)
        plotter.add_text(f'{title}\nmax displacement = {umax:.4g}, drawn x{scale:.3g}\n'
                         f'{field}: {lo:.4g} to {hi:.4g}\ngray = undeformed, black = fixed nodes',
                         font_size=10)
        if not off_screen:
            plotter.add_text('drag: rotate | shift+drag: pan | wheel: zoom | r: reset | '
                             'x/y/z: view along axis | s: screenshot | q: quit',
                             position='lower_right', font_size=8)
        plotter.show_axes()
        plotter.enable_parallel_projection()
        {'iso': plotter.view_isometric, 'xy': plotter.view_xy,
         'xz': plotter.view_xz, 'yz': plotter.view_yz}[view]()
        return plotter

    if screenshot:
        os.makedirs(os.path.dirname(os.path.abspath(screenshot)), exist_ok=True)
        render(True).show(screenshot=screenshot)
        print(f'saved {screenshot}')
    if gui:
        render(False).show()


def main():
    ap = argparse.ArgumentParser(description=__doc__.split('\n\n')[0])
    ap.add_argument('file')
    ap.add_argument('--field', default='|u|')
    ap.add_argument('--scale', type=float)
    ap.add_argument('--target', type=float)
    ap.add_argument('--png')
    ap.add_argument('--no-gui', action='store_true')
    ap.add_argument('--undeformed', action='store_true', help='draw the undeformed shape (scale 0)')
    ap.add_argument('--view', default='iso', choices=('iso', 'xy', 'xz', 'yz'))
    ap.add_argument('--title')
    ap.add_argument('--label')
    ap.add_argument('--list', action='store_true', help='list the saved fields and exit')
    a = ap.parse_args()
    if a.list:
        print(list_fields(pv.read(a.file)))
        return
    show(a.file, field=a.field, scale=0.0 if a.undeformed else a.scale, target=a.target,
         screenshot=a.png, gui=not a.no_gui, view=a.view, title=a.title, label=a.label)


if __name__ == '__main__':
    main()
