"""
Fast 3D viewer (PyVista/VTK) for OpenSees shell models.

Reads whatever model is currently in the OpenSees domain: shell elements are
drawn as one GPU surface with mesh edges, fixed nodes are drawn in red.
Handles 100k+ elements interactively, unlike opsvis/matplotlib.

Usage (after building a model):
  import shell_viewer
  shell_viewer.show_model(title='My model')                # interactive window
  shell_viewer.show_model(screenshot='model.png')          # offscreen PNG only

GPU-less machines (e.g. this AWS VM): Windows' built-in OpenGL is 1.1, but VTK
needs 3.2+. If the env has conda-forge `mesalib`, its software opengl32.dll is
preloaded before VTK starts so VTK picks it up. Set SHELL_VIEWER_HW_GL=1 to skip
this on a machine with a real GPU.
"""
import ctypes
import os
import sys

_MESA_GL = os.path.join(sys.prefix, 'Library', 'bin', 'opengl32.dll')
if sys.platform == 'win32' and os.path.exists(_MESA_GL) and not os.environ.get('SHELL_VIEWER_HW_GL'):
    ctypes.WinDLL(_MESA_GL)

import numpy as np
import openseespy.opensees as ops
import pyvista as pv


def model_to_mesh():
    """Convert the OpenSees domain to a PyVista PolyData of shell faces."""
    tags = ops.getNodeTags()
    index = {tag: k for k, tag in enumerate(tags)}
    points = np.array([ops.nodeCoord(tag) for tag in tags], dtype=float)

    faces = []
    for ele in ops.getEleTags():
        conn = ops.eleNodes(ele)
        if len(conn) in (3, 4):                 # tri / quad shells
            faces.append(len(conn))
            faces.extend(index[n] for n in conn)
    return pv.PolyData(points, np.array(faces)), points, index


def show_model(title='OpenSees shell model', screenshot=None):
    mesh, points, index = model_to_mesh()
    fixed = [index[n] for n in ops.getFixedNodes()]

    plotter = pv.Plotter(off_screen=screenshot is not None, window_size=(1600, 900),
                         title=title)
    plotter.add_mesh(mesh, color='lightsteelblue', show_edges=True,
                     edge_color='slategray', line_width=0.5)
    if fixed:
        plotter.add_mesh(pv.PolyData(points[fixed]), color='red', point_size=8,
                         render_points_as_spheres=True)
    plotter.add_text(f'{title}\n{mesh.n_cells} elements, {mesh.n_points} nodes\n'
                     f'red = {len(fixed)} fixed nodes', font_size=10)
    plotter.show_axes()
    plotter.enable_parallel_projection()
    plotter.view_isometric()

    if screenshot:
        plotter.show(screenshot=screenshot)
    else:
        plotter.show()


def show_deformed(cell_fields, field, target_tip=None, scale=None,
                  title='OpenSees shell model', scalar_label=None, screenshot=None):
    """Deformed shape coloured by an element field, over the undeformed outline.

    cell_fields: dict of per-element arrays, in ops.getEleTags() order.
    field:       key of the array to colour by (others are kept on the mesh).
    scale:       displacement magnification; or give target_tip [model units]
                 to choose it so the largest displacement is drawn that size.
    """
    mesh, points, index = model_to_mesh()
    disp = np.array([ops.nodeDisp(tag)[:3] for tag in ops.getNodeTags()])
    if scale is None:
        scale = target_tip / np.abs(disp).max() if target_tip else 1.0
    fixed = [index[n] for n in ops.getFixedNodes()]

    deformed = mesh.copy()
    deformed.points = points + scale * disp
    for name, values in cell_fields.items():
        deformed.cell_data[name] = values
    lim = np.abs(cell_fields[field]).max()

    plotter = pv.Plotter(off_screen=screenshot is not None, window_size=(1600, 900),
                         title=title)
    plotter.add_mesh(mesh.extract_feature_edges(boundary_edges=True, feature_edges=False,
                                                manifold_edges=False),
                     color='gray', line_width=1)
    plotter.add_mesh(deformed, scalars=field, cmap='coolwarm', clim=(-lim, lim),
                     show_edges=True, edge_color='black', edge_opacity=0.15,
                     scalar_bar_args={'title': scalar_label or field, 'fmt': '%.3g',
                                      'vertical': True, 'position_x': 0.82,
                                      'position_y': 0.1})
    if fixed:
        plotter.add_mesh(pv.PolyData(points[fixed]), color='black', point_size=8,
                         render_points_as_spheres=True)
    plotter.add_text(f'{title}\nmax displacement = {np.abs(disp).max():.4g}, '
                     f'drawn x{scale:.3g}\ngray = undeformed, black = fixed nodes',
                     font_size=10)
    plotter.show_axes()
    plotter.enable_parallel_projection()
    plotter.view_isometric()

    if screenshot:
        plotter.show(screenshot=screenshot)
    else:
        plotter.show()
