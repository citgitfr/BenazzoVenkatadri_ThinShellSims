"""
Deformed-shape pictures of a solved shell model (results .npz from the
shell-bc-load skill): by default two side-by-side panels of the deformed
shell over the undeformed outline, one coloured by a CURVATURE field and one
by a STRESS (or failure-index) field, as a PNG and/or an interactive window.
Also writes a .vtp with every field (opens in ParaView or with --vtp-only).

Built on "Code for Project/10-26-26 (Federico and Tara)/fe_result_viewer.py"
and "10-22-26 (Federico)/shell_viewer.py" (PyVista; Mesa preload on the
GPU-less VM).

Fields (per facet unless noted; facet frame x = along the extrusion,
y = across the section; CLT signs):
  point:      ux uy uz rx ry rz |u|
  curvature:  k_xx k_yy k_xy (twist, = -2 w,xy), k_1 k_2 (principal), k_absmax
              [1/mm]: CHANGE of curvature from the initial shape
  strain:     eps_xx eps_yy gam_xy (mid-surface)
  stress:     sigma_xx_top sigma_yy_top tau_xy_top, same _bottom, von_Mises_top [MPa]
              (top = +n side of the facet, top of the last ply)
  failure:    hashin_max (Hashin 2D index, max over plies, z and Gauss points),
              hashin_ply<k>, hashin_mode (0 fibre tension, 1 fibre compression,
              2 matrix tension, 3 matrix compression), hashin_R (min strength ratio)
              (only if the laminate has all five strengths)
Diverging fields get a symmetric coolwarm scale (white = 0), one-signed
fields viridis.

Usage:
  python shell_visualize.py results.npz [--curvature k_xx] [--stress sigma_xx_top]
         [--field F (single panel)] [--scale S | --target T] [--view iso|xy|xz|yz]
         [--png out.png] [--no-gui] [--undeformed] [--title TEXT] [--list] [--vtp out.vtp]
Window: drag rotate, shift+drag pan, wheel zoom, r reset, x/y/z axis views, q quit.
"""
import argparse
import ctypes
import math
import os
import sys
from pathlib import Path

_MESA_GL = os.path.join(sys.prefix, 'Library', 'bin', 'opengl32.dll')
if sys.platform == 'win32' and os.path.exists(_MESA_GL) and not os.environ.get('SHELL_VIEWER_HW_GL'):
    ctypes.WinDLL(_MESA_GL)          # VTK needs OpenGL 3.2+; the VM has no GPU

import numpy as np      # noqa: E402
import pyvista as pv    # noqa: E402

_SKILLS = Path(__file__).resolve().parents[1]
for _d in ('laminate-properties', 'shell-bc-load', 'failure-check'):
    sys.path.insert(0, str(_SKILLS / _d))
import laminate_properties as lp   # noqa: E402
import shell_bc_load as bc         # noqa: E402
import failure_check as fc         # noqa: E402

POINT_FIELDS = ('ux', 'uy', 'uz', 'rx', 'ry', 'rz', '|u|')
UNITS = {'k': '1/mm', 'sigma': 'MPa', 'tau': 'MPa', 'von': 'MPa', 'hashin': '-', 'eps': '-', 'gam': '-'}


def fields(res):
    """All cell fields of a results dict (see module docstring)."""
    E = res['strains'].mean(axis=1)          # facet centroid
    kx, ky, kxy = E[:, 3], E[:, 4], E[:, 5]
    m, r = (kx + ky) / 2, np.sqrt(((kx - ky) / 2)**2 + (kxy / 2)**2)
    f = dict(eps_xx=E[:, 0], eps_yy=E[:, 1], gam_xy=E[:, 2], k_xx=kx, k_yy=ky, k_xy=kxy,
             k_1=m + r, k_2=m - r, k_absmax=np.where(np.abs(m + r) >= np.abs(m - r), m + r, m - r))
    if res['laminate'] is None:
        return f
    lam = lp.Laminate.from_dict(res['laminate'])
    f.update(fc.surface_fields(res['strains'], lam))
    if lam.has_strengths():
        F, mode, R = fc.failure_index(res['strains'], lam)[:3]
        Ff = F.reshape(len(F), -1)
        k = Ff.argmax(axis=1)
        f['hashin_max'] = Ff.max(axis=1)
        f['hashin_mode'] = mode.reshape(len(F), -1)[np.arange(len(F)), k].astype(float)
        f['hashin_R'] = R.reshape(len(F), -1).min(axis=1)
        if len(lam.plies) > 1:
            for p in range(len(lam.plies)):
                f[f'hashin_ply{p + 1}'] = F[:, :, p].max(axis=(1, 2))
    return f


def to_polydata(res):
    faces = np.hstack([np.full((len(res['faces']), 1), 4), res['faces']]).ravel()
    mesh = pv.PolyData(np.asarray(res['points'], float), faces)
    u = res['disp']
    for k, name in enumerate(POINT_FIELDS[:6]):
        mesh.point_data[name] = u[:, k]
    mesh.point_data['|u|'] = np.linalg.norm(u[:, :3], axis=1)
    mesh.point_data['fixed'] = res['fixed']
    for name, v in fields(res).items():
        mesh.cell_data[name] = v
    mesh.field_data['title'] = [res['meta'].get('title') or 'OpenSees shell model']
    return mesh


def label(name):
    unit = next((u for p, u in UNITS.items() if name.startswith(p)), 'mm' if name in POINT_FIELDS[:3] + ('|u|',)
                else 'rad' if name in POINT_FIELDS[3:6] else '')
    return f'{name} [{unit}]' if unit else name


def show(mesh, panels, scale=None, target=None, png=None, gui=True, view='iso', title=None, undeformed=False):
    """panels: list of field names, one panel each, side by side."""
    title = title or str(mesh.field_data['title'][0])
    disp = np.column_stack([mesh.point_data[c] for c in ('ux', 'uy', 'uz')])
    umax = np.abs(disp).max()
    if undeformed:
        scale = 0.0
    elif scale is None:
        scale = (target or 0.1 * max(np.ptp(mesh.points, axis=0))) / umax if umax > 0 else 1.0
    deformed = mesh.copy()
    deformed.points = mesh.points + scale * disp
    fixed = mesh.points[mesh.point_data['fixed'] == 1] + scale * disp[mesh.point_data['fixed'] == 1]
    outline = dict(boundary_edges=True, feature_edges=False, manifold_edges=False)
    for f in panels:
        if f not in mesh.point_data and f not in mesh.cell_data:
            raise KeyError(f'field {f!r} not in {list_fields(mesh)}')

    def render(off_screen):
        pl = pv.Plotter(off_screen=off_screen, shape=(1, len(panels)), window_size=(900 * len(panels), 800),
                        title=title)
        for c, f in enumerate(panels):
            pl.subplot(0, c)
            v = mesh.point_data[f] if f in mesh.point_data else mesh.cell_data[f]
            lo, hi = float(np.min(v)), float(np.max(v))
            if (lo < 0 < hi) or lo == hi:
                lim = max(abs(lo), abs(hi)) or 1.0
                cmap, clim = 'coolwarm', (-lim, lim)
            else:
                cmap, clim = 'viridis', (lo, hi)
            if f.startswith('hashin_') and f not in ('hashin_mode', 'hashin_R'):   # 0 .. max; failure at 1
                cmap, clim = 'turbo', (0.0, hi if hi > 0 else 1.0)
            pl.add_mesh(mesh.extract_feature_edges(**outline), color='gray', line_width=1)
            pl.add_mesh(deformed, scalars=f, cmap=cmap, clim=clim, show_edges=deformed.n_cells <= 20000,
                        edge_color='black', edge_opacity=0.15, copy_mesh=True,
                        scalar_bar_args={'title': label(f), 'fmt': '%.3g', 'vertical': True,
                                         'position_x': 0.85, 'position_y': 0.1})
            pl.add_mesh(deformed.extract_feature_edges(**outline), color='black', line_width=2)
            if len(fixed):
                pl.add_mesh(pv.PolyData(fixed), color='black', point_size=8, render_points_as_spheres=True)
            pl.add_text(f'{title}\n{label(f)}: {lo:.4g} to {hi:.4g}'
                        + (' (failure at 1)' if f.startswith('hashin_') and f not in ('hashin_mode', 'hashin_R') else '')
                        + f'\nmax displacement {umax:.4g} mm, drawn x{scale:.3g}'
                        '\ngray = undeformed, black dots = fixed', font_size=9)
            pl.show_axes()
            pl.enable_parallel_projection()
            {'iso': pl.view_isometric, 'xy': pl.view_xy, 'xz': pl.view_xz, 'yz': pl.view_yz}[view]()
        if len(panels) > 1:
            pl.link_views()
        return pl

    if png:
        Path(png).parent.mkdir(parents=True, exist_ok=True)
        render(True).show(screenshot=png)
        print(f'saved {png}')
    if gui:
        render(False).show()


def list_fields(mesh):
    return [n for n in mesh.point_data if n != 'fixed'] + list(mesh.cell_data)


def main():
    ap = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument('results')
    ap.add_argument('--curvature', default='k_xx')
    ap.add_argument('--stress', default=None, help='default: hashin_max if strengths are known, else sigma_xx_top')
    ap.add_argument('--field', help='single panel with this field instead')
    ap.add_argument('--scale', type=float)
    ap.add_argument('--target', type=float, help='drawn size of the largest displacement [mm]')
    ap.add_argument('--view', default='iso', choices=('iso', 'xy', 'xz', 'yz'))
    ap.add_argument('--png')
    ap.add_argument('--no-gui', action='store_true')
    ap.add_argument('--undeformed', action='store_true')
    ap.add_argument('--title')
    ap.add_argument('--list', action='store_true')
    ap.add_argument('--vtp', help='write the mesh with all fields (default: next to the results)')
    a = ap.parse_args()

    res = bc.load_results(a.results)
    mesh = to_polydata(res)
    vtp = a.vtp or str(Path(a.results).with_suffix('.vtp'))
    mesh.save(vtp)
    print(f'saved {vtp}: {mesh.n_cells} facets, {mesh.n_points} nodes')
    if a.list:
        print(list_fields(mesh))
        return
    stress = a.stress or ('hashin_max' if 'hashin_max' in mesh.cell_data else 'sigma_xx_top')
    panels = [a.field] if a.field else [a.curvature, stress]
    for f in panels:
        v = mesh.point_data[f] if f in mesh.point_data else mesh.cell_data[f]
        print(f'{label(f)}: min {np.min(v):.5g}, max {np.max(v):.5g}')
    show(mesh, panels, a.scale, a.target, a.png, not a.no_gui, a.view, a.title, a.undeformed)


if __name__ == '__main__':
    main()
