"""
Flat aluminum plate (1000 mm long x 100 mm wide x 0.1 mm thick), clamped at
x = 0 like a cantilever, meshed with 1 mm x 1 mm ShellMITC4 elements.

Units: N, mm, MPa, tonne (so density is in t/mm^3)

Usage:
  python flat_plate_al.py          # build the model and open the PyVista viewer
  python flat_plate_al.py --opsvis # same, with the (slow) opsvis/matplotlib viewer
  python flat_plate_al.py --no-gui # build the model and print a summary only
"""
import sys
import time
import openseespy.opensees as ops

# --- Geometry ---
L = 1000.0      # plate length [mm]
b = 100.0       # plate width [mm]
t = 0.1         # plate thickness [mm]
h = 1.0         # element size [mm]
nx, ny = round(L / h), round(b / h)

# --- Material (aluminum 6061-T6) ---
E = 69_000.0    # Young's modulus [MPa]
nu = 0.33
rho = 2.70e-9   # density [t/mm^3]


ELEMENTS = {
    'ShellMITC4': ['ShellMITC4'],                            # linear geometry
    'ASDShellQ4': ['ASDShellQ4'],                            # linear geometry
    'ASDShellQ4-corot': ['ASDShellQ4', '-corotational'],     # large rotations
    'ShellNLDKGQ': ['ShellNLDKGQ'],                          # updated Lagrangian
}


def node_tag(i, j):
    return j * (nx + 1) + i + 1


def build(element='ShellMITC4', size=None):
    """Build the clamped plate. element: key of ELEMENTS; size: element size
    [mm], default h. Changing size updates the module-level h, nx, ny."""
    global h, nx, ny
    if size is not None:
        h = size
        nx, ny = round(L / h), round(b / h)
    ele_args = ELEMENTS[element]

    ops.wipe()
    ops.model('basic', '-ndm', 3, '-ndf', 6)

    for j in range(ny + 1):
        for i in range(nx + 1):
            ops.node(node_tag(i, j), i * h, j * h, 0.0)

    # Clamped edge at x = 0: all 6 DOFs fixed
    for j in range(ny + 1):
        ops.fix(node_tag(0, j), 1, 1, 1, 1, 1, 1)

    ops.section('ElasticMembranePlateSection', 1, E, nu, t, rho)

    ele = 1
    for j in range(ny):
        for i in range(nx):
            ops.element(ele_args[0], ele,
                        node_tag(i, j), node_tag(i + 1, j),
                        node_tag(i + 1, j + 1), node_tag(i, j + 1), 1, *ele_args[1:])
            ele += 1


if __name__ == '__main__':
    t0 = time.perf_counter()
    build()
    nodes, eles = ops.getNodeTags(), ops.getEleTags()
    fixed = ops.getFixedNodes()
    xs = [ops.nodeCoord(n, 1) for n in nodes]
    ys = [ops.nodeCoord(n, 2) for n in nodes]
    print(f'Built in {time.perf_counter() - t0:.1f} s')
    print(f'Plate: {max(xs) - min(xs):.0f} x {max(ys) - min(ys):.0f} x {t} mm, aluminum E = {E:.0f} MPa')
    print(f'Mesh: {nx} x {ny} = {len(eles)} ShellMITC4 elements, {len(nodes)} nodes, '
          f'{6 * (len(nodes) - len(fixed))} free DOFs')
    print(f'Clamped nodes: {len(fixed)} (all at x = '
          f'{sorted({ops.nodeCoord(n, 1) for n in fixed})} mm)')

    if '--no-gui' in sys.argv:
        pass
    elif '--opsvis' not in sys.argv:
        import shell_viewer
        shell_viewer.show_model(title=f'Al cantilever plate {L:.0f} x {b:.0f} x {t} mm '
                                      f'(1 x 1 mm ShellMITC4)')
    else:
        import matplotlib
        matplotlib.use('TkAgg')
        import matplotlib.pyplot as plt
        import opsvis as opsv

        t0 = time.perf_counter()
        opsv.plot_model(node_labels=0, element_labels=0, node_supports=True)
        ax = plt.gca()
        ax.set_box_aspect((L, b, 0.25 * b))
        plt.title(f'Al cantilever plate {L:.0f} x {b:.0f} x {t} mm, '
                  f'{len(eles)} ShellMITC4 (1 x 1 mm)')
        print(f'Plot drawn in {time.perf_counter() - t0:.1f} s')
        plt.show()
