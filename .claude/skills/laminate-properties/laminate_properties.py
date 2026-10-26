"""
Constitutive properties of a UD-ply laminate for OpenSeesPy thin shells.

Merges the v1.0 PlyPropertyGenerator, LayupFromPlyGenerator,
TheoreticalABDGenerator and ABDFromOpenSeesPyLayup code
("Code for Project/10-23-26 (Tara)": ply_properties.py, layup.py,
theoretical_abd.py, abd_from_opensees.py) into one module, and reads the ply
constants and strengths from the UD lamina catalog
(.claude/memory.material_property_catalog/UD_lamina_catalog_SI.txt, Pa and m).

Units: everything returned is N, mm, MPa, tonne (density in t/mm^3). Catalog
values are converted Pa -> MPa (x 1e-6) and m -> mm (x 1e3).

Ply (transversely isotropic, 2-3 plane isotropic): inputs E1, E2, nu12, G12
and optionally nu23. E3 = E2, G13 = G12, nu13 = nu12, G23 = E2 / (2 (1 + nu23)).
If nu23 is not given, nu23 = nu12 is assumed (a note is printed).

OpenSees chain per material (principal axes x = 1 fibre, y = 2, z = 3):
  nDMaterial('ElasticOrthotropic', t3d, E1, E2, E3, nu12, nu23, nu31, G12, G23, G13, rho)
  nDMaterial('PlaneStress', tps, t3d)                     # sigma_33 = 0 -> reduced Q
  nDMaterial('PlateFromPlaneStress', tplate, tps, G_out)  # + transverse shear, G_out = G13
OpenSees uses v_ij = -eps_j / eps_i under stress in i, so vzx = nu31 = nu12 E2 / E1
(the small one), NOT nu13 (checked on a stdBrick, see the regression tests).

Laminate (plies bottom (-z) to top (+z); angle from the facet x axis to the
fibre, CCW about the facet normal): OpenSees 3.8 cannot rotate a material,
and an ASDShellQ4 has ONE '-local' orientation for all its layers. So each
distinct ply angle gets its own LayeredShell spanning the full laminate in
ply order (its material at its plies' z, a zero-stiffness void elsewhere) and
its own ASDShellQ4 on the same four nodes ("coincident elements"). Plies with
the same angle and material share one element (exact with '-noeas'; halves
the cost of [0/90/90/0]-type layups). '-noeas' is required: EAS modes are
condensed per element and do not add across coincident elements. Each ply is
split into n_sub layers because LayeredShell integrates each layer at its
mid-plane: D error ~ 1 / (total layers)^2, A and B exact.

Usage:
  python laminate_properties.py --list-catalog
  python laminate_properties.py --catalog L024 --layup "[0/90]s" [--thickness 0.08] --check
  python laminate_properties.py --E1 135000 --E2 10000 --nu12 0.3 --G12 5000 --angles 0 45 -45 90 --thickness 0.125 --check
  python laminate_properties.py ... --save-json laminate.json [--emit calls.py] [--n-sub 4] [--no-merge]
"""
import argparse
import json
import math
import re
from pathlib import Path

import numpy as np

CATALOG = Path(__file__).resolve().parents[2] / 'memory.material_property_catalog' / 'UD_lamina_catalog_SI.txt'
STRAINS = ['eps_xx', 'eps_yy', 'gam_xy', 'k_xx', 'k_yy', 'k_xy']
STRENGTHS = ('Xt', 'Xc', 'Yt', 'Yc', 'S')


# --- catalog -------------------------------------------------------------------

def _cell(c):
    """(float or None, is_estimate) of a catalog cell: NA, 1.2e9, 0.45*."""
    if c == 'NA':
        return None, False
    return float(c.rstrip('*')), c.endswith('*')


def read_catalog(path=CATALOG):
    """{ID: row dict} of the SI catalog. Columns are separated by 2+ spaces."""
    rows, header = {}, None
    for line in Path(path).read_text(encoding='utf-8').splitlines():
        if not line.strip() or line.startswith('#'):
            continue
        cells = [c.strip() for c in re.split(r'\t| {2,}', line.strip())]
        if header is None:
            header = cells
            continue
        rows[cells[0]] = dict(zip(header, cells))
    return rows


def catalog_material(cid, path=CATALOG, rho=0.0):
    """Ply constants and strengths of catalog row `cid`, in N-mm-MPa.
    Returns (material dict, notes). Material dict: ply_properties() keys plus
    Xt, Xc, Yt, Yc, S [MPa] (None if NA), t_ply [mm] and name."""
    rows = read_catalog(path)
    if cid not in rows:
        raise KeyError(f'{cid} not in {path}')
    r = rows[cid]
    f = {'E1': ('E1_Pa', 1e-6), 'E2': ('E2_Pa', 1e-6), 'G12': ('G12_Pa', 1e-6), 'nu12': ('nu12', 1.0),
         'nu23': ('nu23', 1.0), 'G23_catalog': ('G23_Pa', 1e-6), 'Xc': ('Xc_Pa', 1e-6), 'Xt': ('Xt_Pa', 1e-6),
         'Yc': ('Yc_Pa', 1e-6), 'Yt': ('Yt_Pa', 1e-6), 'S': ('S12_Pa', 1e-6), 't_ply': ('t_ply_m', 1e3)}
    v, notes = {}, []
    for k, (col, fac) in f.items():
        x, est = _cell(r[col])
        v[k] = None if x is None else x * fac
        if est:
            notes.append(f'{k} is an estimate (* in the catalog)')
    missing = [k for k in ('E1', 'E2', 'G12', 'nu12') if v[k] is None]
    if missing:
        raise ValueError(f'{cid}: {", ".join(missing)} not in the catalog (NA); cannot build the ply')
    p = ply_properties(v['E1'], v['E2'], v['nu12'], v['G12'], v['nu23'], rho)
    p.update({k: v[k] for k in STRENGTHS}, t_ply=v['t_ply'],
             name=f'{cid} {r["Fiber"]} / {r["Polymer_system"]}')
    if v['G23_catalog'] is not None and abs(v['G23_catalog'] - p['G23']) > 1e-2 * p['G23']:   # catalog rounds to 3 digits
        notes.append(f'catalog G23 = {v["G23_catalog"]:.6g} MPa differs from E2/(2(1+nu23)) = {p["G23"]:.6g} MPa; '
                     'the relation is used (G23 does not enter the plane-stress shell stiffness)')
    if any(p[k] is None for k in STRENGTHS):
        notes.append('strengths incomplete (' + ', '.join(k for k in STRENGTHS if p[k] is None)
                     + ' NA): no failure check possible')
    return p, notes


# --- one ply ---------------------------------------------------------------------

def ply_properties(E1, E2, nu12, G12, nu23=None, rho=0.0):
    """Full set of transversely isotropic ply constants [MPa]. 'nu23_assumed'
    is True when nu23 was not given and set to nu12."""
    nu23_assumed = nu23 is None
    if nu23_assumed:
        nu23 = nu12
    p = dict(E1=E1, E2=E2, E3=E2, nu12=nu12, nu13=nu12, nu23=nu23,
             G12=G12, G13=G12, G23=E2 / (2 * (1 + nu23)), rho=rho, nu23_assumed=nu23_assumed)
    p['nu21'] = nu12 * E2 / E1
    p['nu31'] = p['nu13'] * p['E3'] / E1
    p['nu32'] = nu23 * p['E3'] / E2
    return p


def check_properties(p):
    """Admissibility: positive moduli and positive-definite compliance."""
    problems = [f'{k} = {p[k]} must be > 0' for k in ('E1', 'E2', 'E3', 'G12', 'G13', 'G23') if p[k] <= 0]
    for ij, ji in (('nu12', 'nu21'), ('nu13', 'nu31'), ('nu23', 'nu32')):
        if p[ij] * p[ji] >= 1:
            problems.append(f'{ij} * {ji} = {p[ij] * p[ji]:.4g} must be < 1')
    det = (1 - p['nu12'] * p['nu21'] - p['nu23'] * p['nu32'] - p['nu13'] * p['nu31']
           - 2 * p['nu21'] * p['nu32'] * p['nu13'])
    if det <= 0:
        problems.append(f'1 - nu12 nu21 - nu23 nu32 - nu13 nu31 - 2 nu21 nu32 nu13 = {det:.4g} must be > 0')
    return problems


def reduced_stiffness(p):
    """3x3 plane-stress Q [11, 22, 12] in the ply axes (engineering shear)."""
    d = 1 - p['nu12'] * p['nu21']
    return np.array([[p['E1'] / d, p['nu12'] * p['E2'] / d, 0],
                     [p['nu12'] * p['E2'] / d, p['E2'] / d, 0],
                     [0, 0, p['G12']]])


def stiffness_3d(p):
    """6x6 stiffness in the ply axes, OpenSees order [11, 22, 33, 12, 23, 13]."""
    S = np.zeros((6, 6))
    S[0, 0], S[1, 1], S[2, 2] = 1 / p['E1'], 1 / p['E2'], 1 / p['E3']
    S[0, 1] = S[1, 0] = -p['nu12'] / p['E1']
    S[0, 2] = S[2, 0] = -p['nu13'] / p['E1']
    S[1, 2] = S[2, 1] = -p['nu23'] / p['E2']
    S[3, 3], S[4, 4], S[5, 5] = 1 / p['G12'], 1 / p['G23'], 1 / p['G13']
    return np.linalg.inv(S)


def strain_rotation(theta_deg):
    """T_eps: [eps_1, eps_2, gam_12] = T_eps @ [eps_x, eps_y, gam_xy] for
    axes 1-2 at theta CCW from x-y (engineering shear). Curvatures
    [k_x, k_y, k_xy] transform the same way."""
    c, s = math.cos(math.radians(theta_deg)), math.sin(math.radians(theta_deg))
    return np.array([[c * c, s * s, c * s],
                     [s * s, c * c, -c * s],
                     [-2 * c * s, 2 * c * s, c * c - s * s]])


def stress_rotation(theta_deg):
    """T_sig: [s_1, s_2, t_12] = T_sig @ [s_x, s_y, t_xy]."""
    c, s = math.cos(math.radians(theta_deg)), math.sin(math.radians(theta_deg))
    return np.array([[c * c, s * s, 2 * c * s],
                     [s * s, c * c, -2 * c * s],
                     [-c * s, c * s, c * c - s * s]])


def q_bar(p, theta_deg):
    """Q_bar [xx, yy, xy] of a ply at theta: sigma_xy = T_sig^-1 Q T_eps eps_xy."""
    return np.linalg.solve(stress_rotation(theta_deg), reduced_stiffness(p) @ strain_rotation(theta_deg))


def q_bar_invariants(p, theta_deg):
    """Independent Q_bar from the Tsai-Pagano invariants (as theoretical_abd.py)."""
    Q11, Q22, Q12, Q66 = (reduced_stiffness(p)[i, j] for i, j in ((0, 0), (1, 1), (0, 1), (2, 2)))
    U1 = (3 * Q11 + 3 * Q22 + 2 * Q12 + 4 * Q66) / 8
    U2 = (Q11 - Q22) / 2
    U3 = (Q11 + Q22 - 2 * Q12 - 4 * Q66) / 8
    U4 = (Q11 + Q22 + 6 * Q12 - 4 * Q66) / 8
    U5 = (Q11 + Q22 - 2 * Q12 + 4 * Q66) / 8
    t = math.radians(theta_deg)
    c2, s2, c4, s4 = math.cos(2 * t), math.sin(2 * t), math.cos(4 * t), math.sin(4 * t)
    return np.array([[U1 + U2 * c2 + U3 * c4, U4 - U3 * c4, U2 / 2 * s2 + U3 * s4],
                     [U4 - U3 * c4, U1 - U2 * c2 + U3 * c4, U2 / 2 * s2 - U3 * s4],
                     [U2 / 2 * s2 + U3 * s4, U2 / 2 * s2 - U3 * s4, U5 - U3 * c4]])


def opensees_args(p):
    """ElasticOrthotropic arguments after the tag: Ex Ey Ez vxy vyz vzx Gxy Gyz Gzx rho."""
    return (p['E1'], p['E2'], p['E3'], p['nu12'], p['nu23'], p['nu31'],
            p['G12'], p['G23'], p['G13'], p['rho'])


def define_ply_plate_material(p, tag3d, tag_ps, tag_plate, G_out=None):
    """ElasticOrthotropic -> PlaneStress -> PlateFromPlaneStress in the
    current model. Returns the plate material tag (for LayeredShell)."""
    import openseespy.opensees as ops
    ops.nDMaterial('ElasticOrthotropic', tag3d, *opensees_args(p))
    ops.nDMaterial('PlaneStress', tag_ps, tag3d)
    ops.nDMaterial('PlateFromPlaneStress', tag_plate, tag_ps, p['G13'] if G_out is None else G_out)
    return tag_plate


def local_axis(theta_deg):
    """Fibre direction (cos, sin, 0) for a facet in the global xy plane."""
    t = math.radians(theta_deg)
    return tuple(round(v, 15) + 0.0 for v in (math.cos(t), math.sin(t), 0.0))


# --- layup notation ----------------------------------------------------------------

def expand_layup(text):
    """'[0/±45/90]s' -> [0, 45, -45, 90, 90, -45, 45, 0]. Supports ± or +-
    (+theta then -theta), -+ / ∓, item repeats 0_2, group repeats [..]2 or
    [..]_2, symmetry s (also 2s), and plain lists '0 45 -45 90'."""
    t = text.replace(' ', '')
    m = re.fullmatch(r'\[(.*)\]_?(\d*)(s?)', t, flags=re.I)
    if not m:
        return [float(a) for a in re.split(r'[,/\s]+', text.strip()) if a]
    body, rep, sym = m.groups()
    out = []
    for item in body.split('/'):
        im = re.fullmatch(r'(±|\+-|∓|-\+)?([+-]?\d+(?:\.\d*)?)(?:_(\d+))?', item)
        if not im:
            raise ValueError(f'cannot read ply {item!r} in {text!r}')
        pm, ang, n = im.groups()
        a = float(ang)
        unit = {None: [a], '±': [a, -a], '+-': [a, -a], '∓': [-a, a], '-+': [-a, a]}[pm]
        out += unit * int(n or 1)
    out *= int(rep or 1)
    if sym:
        out += out[::-1]
    return out


# --- laminate --------------------------------------------------------------------------

class Laminate:
    """Plies bottom (-z) to top (+z): dicts theta [deg], t [mm], mat (index
    into materials), z0, z1 (from the mid-surface). kind 'laminate' (UD plies)
    or 'isotropic' (one ElasticMembranePlateSection, E nu t)."""

    def __init__(self, materials, plies, n_sub=None, merge=True, G_out=None, kind='laminate', name=''):
        self.materials, self.kind, self.name = list(materials), kind, name
        self.merge, self.G_out = merge, G_out
        h, z = sum(p['t'] for p in plies), None
        z = -h / 2
        self.plies = []
        for p in plies:
            self.plies.append(dict(theta=float(p['theta']), t=float(p['t']), mat=int(p.get('mat', 0)), z0=z, z1=z + p['t']))
            z += p['t']
        self.h = h
        self.n_sub = n_sub if n_sub is not None else max(2, math.ceil(15 / len(self.plies)))

    # constructors
    @classmethod
    def from_layup(cls, angles, thickness, material, **kw):
        """angles bottom to top (list or notation string), thickness one value
        or one per ply, material a ply dict (or list of dicts, one per ply)."""
        if isinstance(angles, str):
            angles = expand_layup(angles)
        thickness = list(np.atleast_1d(thickness))
        if len(thickness) == 1:
            thickness *= len(angles)
        if len(thickness) != len(angles):
            raise ValueError(f'{len(angles)} angles but {len(thickness)} thicknesses')
        mats = material if isinstance(material, (list, tuple)) else [material]
        idx = [0] * len(angles) if len(mats) == 1 else list(range(len(angles)))
        return cls(mats, [dict(theta=a, t=t, mat=i) for a, t, i in zip(angles, thickness, idx)], **kw)

    @classmethod
    def isotropic(cls, E, nu, t, rho=0.0, strength=None, name=''):
        """Homogeneous isotropic shell (ElasticMembranePlateSection). strength:
        optional yield stress; Tsai-Hill with X = Y = sy, S = sy / sqrt(3) is
        then von Mises."""
        p = ply_properties(E, E, nu, E / (2 * (1 + nu)), nu, rho)
        if strength:
            p.update(Xt=strength, Xc=strength, Yt=strength, Yc=strength, S=strength / math.sqrt(3))
        p['name'] = name or f'isotropic E = {E:g} MPa, nu = {nu:g}'
        return cls([p], [dict(theta=0.0, t=t, mat=0)], kind='isotropic', name=name)

    # derived data
    @property
    def angles(self):
        return [q['theta'] for q in self.plies]

    def groups(self):
        """Elements per facet: [{'theta', 'mat', 'plies': [indices]}], first
        appearance bottom to top. With merge, same angle + material share one."""
        if self.kind == 'isotropic':
            return [dict(theta=0.0, mat=0, plies=[0])]
        out = {}
        for k, q in enumerate(self.plies):
            key = (q['theta'], q['mat']) if self.merge else k
            out.setdefault(key, dict(theta=q['theta'], mat=q['mat'], plies=[]))['plies'].append(k)
        return list(out.values())

    def ply_Q(self, k):
        return reduced_stiffness(self.materials[self.plies[k]['mat']])

    def abd(self):
        """6x6 ABD from classical lamination theory [N/mm, N, N mm]."""
        A, B, D = np.zeros((3, 3)), np.zeros((3, 3)), np.zeros((3, 3))
        for q in self.plies:
            Q = q_bar(self.materials[q['mat']], q['theta'])
            A += Q * (q['z1'] - q['z0'])
            B += Q * (q['z1']**2 - q['z0']**2) / 2
            D += Q * (q['z1']**3 - q['z0']**3) / 3
        return np.block([[A, B], [B, D]])

    def abd_invariants(self):
        """Same ABD with Q_bar from the Tsai-Pagano invariants (independent)."""
        K = np.zeros((6, 6))
        for q in self.plies:
            Q = q_bar_invariants(self.materials[q['mat']], q['theta'])
            dz = [(q['z1']**n - q['z0']**n) / n for n in (1, 2, 3)]
            K += np.block([[Q * dz[0], Q * dz[1]], [Q * dz[1], Q * dz[2]]])
        return K

    def areal_mass(self):
        return sum(self.materials[q['mat']]['rho'] * q['t'] for q in self.plies)

    # OpenSees
    def define(self, mat_tag=1, sec_tag=1):
        """Create the materials and sections in the current model (ndf = 6).
        Returns [(sec_tag, theta)] in groups() order: one element per entry on
        every facet. Tags: nDMaterial mat_tag (void), then 3 per material;
        sections sec_tag ... sec_tag + n_groups - 1."""
        import openseespy.opensees as ops
        if self.kind == 'isotropic':
            p = self.materials[0]
            ops.section('ElasticMembranePlateSection', sec_tag, p['E1'], p['nu12'], self.h, p['rho'])
            return [(sec_tag, 0.0)]
        void = mat_tag
        ops.nDMaterial('ElasticIsotropic', void, 0.0, 0.0)
        plate = [define_ply_plate_material(p, mat_tag + 1 + 3 * m, mat_tag + 2 + 3 * m, mat_tag + 3 + 3 * m, self.G_out)
                 for m, p in enumerate(self.materials)]
        out = []
        for g, grp in enumerate(self.groups()):
            layers = []
            for j, q in enumerate(self.plies):
                layers += [plate[q['mat']] if j in grp['plies'] else void, q['t'] / self.n_sub] * self.n_sub
            ops.section('LayeredShell', sec_tag + g, len(layers) // 2, *layers)
            out.append((sec_tag + g, grp['theta']))
        return out

    def measure_abd(self):
        """ABD of one 1 x 1 mm facet as OpenSees sees it: the six generalized
        strains imposed as Kirchhoff plate fields, ABD_ij = d_i . r_j (work;
        no OpenSees sign conventions involved). Linear geometry."""
        import openseespy.opensees as ops
        nodes = [(0.0, 0.0), (1.0, 0.0), (1.0, 1.0), (0.0, 1.0)]
        e0 = 1e-6

        def field(ex, ey, g, kx, ky, kxy):
            rows = []
            for x, y in nodes:
                w = -(kx * x * x + ky * y * y + kxy * x * y) / 2
                dwdx, dwdy = -(kx * x + kxy * y / 2), -(ky * y + kxy * x / 2)
                rows.append([ex * x + g / 2 * y, ey * y + g / 2 * x, w, dwdy, -dwdx, 0.0])
            return np.array(rows)

        d = [field(*e) for e in np.eye(6) * e0]
        r = []
        for di in d:
            ops.wipe()
            ops.model('basic', '-ndm', 3, '-ndf', 6)
            for i, (x, y) in enumerate(nodes, 1):
                ops.node(i, x, y, 0.0)
            for k, (sec, th) in enumerate(self.define()):
                opts = [] if self.kind == 'isotropic' else ['-noeas', '-local', *local_axis(th)]
                ops.element('ASDShellQ4', k + 1, 1, 2, 3, 4, sec, *opts)
            ops.timeSeries('Constant', 1)
            ops.pattern('Plain', 1, 1)
            for i in range(4):
                for dof in range(6):
                    ops.sp(i + 1, dof + 1, di[i, dof])
            ops.system('UmfPack')            # FullGeneral exits silently with all DOFs prescribed
            ops.numberer('Plain')
            ops.constraints('Transformation')
            ops.integrator('LoadControl', 1.0)
            ops.algorithm('Linear')
            ops.analysis('Static')
            if ops.analyze(1) != 0:
                raise RuntimeError('ABD measurement: analysis failed')
            ops.reactions()
            r.append(np.array([ops.nodeReaction(i + 1) for i in range(4)]))
        ops.wipe()
        return np.array([[(d[i] * r[j]).sum() for j in range(6)] for i in range(6)]) / e0**2

    def write_opensees_calls(self, path, options=()):
        """The exact ops.nDMaterial / section / element calls for one facet
        (nodes 1-4 in the xy plane), one per line, as a Python file."""
        import openseespy.opensees as ops
        calls, real = [], {n: getattr(ops, n) for n in ('nDMaterial', 'section', 'element')}

        def rec(name):
            def call(*args):
                calls.append(f'ops.{name}({", ".join(repr(a) for a in args)})')
                return real[name](*args)
            return call

        ops.wipe()
        ops.model('basic', '-ndm', 3, '-ndf', 6)
        for i in range(4):
            ops.node(i + 1, float(i in (1, 2)), float(i in (2, 3)), 0.0)
        for n in real:
            setattr(ops, n, rec(n))
        try:
            for k, (sec, th) in enumerate(self.define()):
                opts = [*options] if self.kind == 'isotropic' else [*options, '-noeas', '-local', *local_axis(th)]
                ops.element('ASDShellQ4', k + 1, 1, 2, 3, 4, sec, *opts)
        finally:
            for n, fn in real.items():
                setattr(ops, n, fn)
            ops.wipe()
        head = [f'# OpenSeesPy calls for {self.describe()} (one facet, nodes 1-4), written by laminate_properties.py',
                'import openseespy.opensees as ops', '']
        Path(path).write_text('\n'.join(head + calls) + '\n')

    # I/O
    def describe(self):
        if self.kind == 'isotropic':
            return f'isotropic shell t = {self.h:g} mm'
        return f'[{"/".join(f"{a:g}" for a in self.angles)}] h = {self.h:.6g} mm'

    def has_strengths(self):
        return all(self.materials[q['mat']].get(k) is not None for q in self.plies for k in STRENGTHS)

    def to_dict(self):
        return dict(kind=self.kind, name=self.name, n_sub=self.n_sub, merge=self.merge, G_out=self.G_out,
                    materials=self.materials, plies=[{k: q[k] for k in ('theta', 't', 'mat')} for q in self.plies])

    @classmethod
    def from_dict(cls, d):
        return cls(d['materials'], d['plies'], n_sub=d.get('n_sub'), merge=d.get('merge', True),
                   G_out=d.get('G_out'), kind=d.get('kind', 'laminate'), name=d.get('name', ''))

    def save(self, path):
        Path(path).write_text(json.dumps(self.to_dict(), indent=1))

    @classmethod
    def load(cls, path):
        return cls.from_dict(json.loads(Path(path).read_text()))


def laminate_from_spec(spec):
    """Laminate from a dict as used in case files:
      {'catalog': 'L024', 'layup': '[0/90]s', 'thickness': None (catalog t_ply), 'n_sub': ..., 'merge': true}
      {'ply': {'E1':..., 'E2':..., 'nu12':..., 'G12':..., 'nu23':..., 'Xt':...}, 'layup': [...], 'thickness': ...}
      {'isotropic': {'E':..., 'nu':..., 't':..., 'rho':..., 'strength':...}}
      {'json': 'laminate.json'}"""
    if 'json' in spec:
        return Laminate.load(spec['json'])
    if 'isotropic' in spec:
        return Laminate.isotropic(**spec['isotropic'])
    if 'catalog' in spec:
        mat, _ = catalog_material(spec['catalog'], rho=spec.get('rho', 0.0))
    else:
        q = dict(spec['ply'])
        mat = ply_properties(q['E1'], q['E2'], q['nu12'], q['G12'], q.get('nu23'), q.get('rho', 0.0))
        mat.update({k: q.get(k) for k in STRENGTHS}, name=q.get('name', 'user ply'))
    t = spec.get('thickness') or mat.get('t_ply')
    if t is None:
        raise ValueError('ply thickness not given and not in the catalog')
    return Laminate.from_layup(spec['layup'], t, mat, n_sub=spec.get('n_sub'), merge=spec.get('merge', True),
                               G_out=spec.get('G_out'), name=spec.get('name', ''))


# --- report ------------------------------------------------------------------------

def fmt(M, rows, cols):
    M = np.where(np.abs(M) < 1e-12 * max(np.abs(M).max(), 1e-300), 0.0, M)
    head = ' ' * 8 + ''.join(f'{c:>13}' for c in cols)
    return '\n'.join([head] + [f'{r:<8}' + ''.join(f' {v:>12.6g}' for v in row) for r, row in zip(rows, M)])


def print_abd(K, title):
    print(title)
    print('A [N/mm]  (N = A eps + B k)')
    print(fmt(K[:3, :3], ['Nxx', 'Nyy', 'Nxy'], STRAINS[:3]))
    print('B [N]')
    print(fmt(K[:3, 3:], ['Nxx', 'Nyy', 'Nxy'], STRAINS[3:]))
    print('D [N mm]  (M = B eps + D k)')
    print(fmt(K[3:, 3:], ['Mxx', 'Myy', 'Mxy'], STRAINS[3:]))


def block_errors(K, ref):
    """Max relative error in A, B, D (B relative to sqrt(|A| |D|) if B = 0)."""
    out = {}
    for name, (i, j) in dict(A=(0, 0), B=(0, 3), D=(3, 3)).items():
        blk, rblk = K[i:i + 3, j:j + 3], ref[i:i + 3, j:j + 3]
        scale = np.abs(rblk).max()
        if scale < 1e-9 * np.abs(ref).max():
            scale = np.sqrt(np.abs(ref[:3, :3]).max() * np.abs(ref[3:, 3:]).max())
        out[name] = np.abs(blk - rblk).max() / scale
    return out


def material_report(p):
    rows = [('E1', 'MPa', 'input'), ('E2', 'MPa', 'input'), ('E3', 'MPa', '= E2'), ('G12', 'MPa', 'input'),
            ('G13', 'MPa', '= G12'), ('G23', 'MPa', '= E2 / (2 (1 + nu23))'), ('nu12', '', 'input'),
            ('nu13', '', '= nu12'), ('nu23', '', '= nu12 (ASSUMED)' if p['nu23_assumed'] else 'input'),
            ('nu21', '', '= nu12 E2 / E1'), ('nu31', '', '= nu13 E3 / E1 (OpenSees vzx)'),
            ('nu32', '', '= nu23 E3 / E2'), ('rho', 't/mm^3', 'input')]
    rows += [(k, 'MPa', 'strength') for k in STRENGTHS if p.get(k) is not None]
    out = [f'{k:<5} {p[k]:>12.6g} {u:<7} {s}' for k, u, s in rows]
    if p.get('t_ply'):
        out.append(f't_ply {p["t_ply"]:>12.6g} mm      catalog ply thickness')
    return '\n'.join(out)


def main():
    ap = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument('--list-catalog', action='store_true', help='list catalog IDs and what they can be used for')
    ap.add_argument('--catalog', metavar='ID', help='catalog row, e.g. L024')
    for k, h in (('E1', 'MPa'), ('E2', 'MPa'), ('nu12', '-'), ('G12', 'MPa'), ('nu23', '- (default nu12)'),
                 ('Xt', 'MPa'), ('Xc', 'MPa'), ('Yt', 'MPa'), ('Yc', 'MPa'), ('S', 'MPa')):
        ap.add_argument(f'--{k}', type=float, help=h)
    ap.add_argument('--rho', type=float, default=0.0, help='density [t/mm^3]')
    ap.add_argument('--layup', help='notation, e.g. "[0/±45/90]s", "[0_2/90_2]s" (bottom to top)')
    ap.add_argument('--angles', type=float, nargs='+', help='ply angles bottom to top [deg]')
    ap.add_argument('--thickness', type=float, nargs='+', help='ply thickness [mm], one or one per ply '
                                                                '(default: catalog t_ply)')
    ap.add_argument('--n-sub', type=int, help='layers per ply (default max(2, ceil(15 / n_plies)))')
    ap.add_argument('--no-merge', action='store_true', help='one element per ply, even for equal angles')
    ap.add_argument('--G-out', type=float, help='transverse shear modulus of PlateFromPlaneStress [MPa] (default G13)')
    ap.add_argument('--check', action='store_true', help='measure the OpenSees ABD and compare with CLT')
    ap.add_argument('--save-json', metavar='FILE', help='write the laminate definition (input for the other skills)')
    ap.add_argument('--save-abd', metavar='FILE', help='write the CLT (and, with --check, OpenSees) ABD as CSV')
    ap.add_argument('--emit', metavar='FILE', help='write the OpenSeesPy calls of one facet to FILE')
    a = ap.parse_args()

    if a.list_catalog:
        for cid, r in read_catalog().items():
            stiff = all(r[c] != 'NA' for c in ('E1_Pa', 'E2_Pa', 'G12_Pa', 'nu12'))
            strg = all(r[c] != 'NA' for c in ('Xt_Pa', 'Xc_Pa', 'Yt_Pa', 'Yc_Pa', 'S12_Pa'))
            print(f'{cid}  {r["Fiber"]:<30} {r["Polymer_system"]:<45} stiffness {"yes" if stiff else "NO "}  '
                  f'strengths {"yes" if strg else "NO "}  t_ply {r["t_ply_m"]}')
        return

    notes = []
    if a.catalog:
        mat, notes = catalog_material(a.catalog, rho=a.rho)
    else:
        if None in (a.E1, a.E2, a.nu12, a.G12):
            ap.error('give --catalog ID or all of --E1 --E2 --nu12 --G12')
        mat = ply_properties(a.E1, a.E2, a.nu12, a.G12, a.nu23, a.rho)
        mat.update({k: getattr(a, k) for k in STRENGTHS}, name='user ply')
    if a.layup is None and a.angles is None:
        ap.error('give --layup or --angles')
    t = a.thickness or ([mat['t_ply']] if mat.get('t_ply') else None)
    if t is None:
        ap.error('--thickness is required (no catalog ply thickness)')
    lam = Laminate.from_layup(a.layup if a.layup else a.angles, t, mat, n_sub=a.n_sub,
                              merge=not a.no_merge, G_out=a.G_out)

    print(f'Ply material: {mat["name"]}  (N, mm, MPa)')
    print(material_report(mat))
    if mat['nu23_assumed']:
        print(f'\nNOTE: nu23 was not given, so nu23 = nu12 = {mat["nu23"]:.6g} was assumed (G23 = {mat["G23"]:.6g} MPa).')
    for n in notes:
        print(f'NOTE: {n}')
    for w in check_properties(mat):
        print(f'WARNING: {w}')

    print(f'\nLayup bottom (-z) to top (+z): {lam.describe()}, {lam.n_sub} layers per ply '
          f'({lam.n_sub * len(lam.plies)} through h)')
    print(f'{"ply":>3} {"theta":>7} {"t":>8} {"z0":>9} {"z1":>9}  element')
    groups = lam.groups()
    owner = {k: g for g, grp in enumerate(groups) for k in grp['plies']}
    for k, q in enumerate(lam.plies):
        print(f'{k + 1:>3} {q["theta"]:>7g} {q["t"]:>8.4g} {q["z0"]:>9.4g} {q["z1"]:>9.4g}  {owner[k] + 1}')
    print(f'{len(groups)} coincident ASDShellQ4 per facet (one per distinct angle'
          f'{"" if lam.merge else ", merging off: one per ply"}), each "-noeas" and "-local" at its angle')

    Q = reduced_stiffness(mat)
    print(f'\nQ11 = {Q[0, 0]:.6g}, Q22 = {Q[1, 1]:.6g}, Q12 = {Q[0, 1]:.6g}, Q66 = {Q[2, 2]:.6g} MPa')
    if len(lam.plies) == 1:
        print(f'Q_bar at {lam.plies[0]["theta"]:g} deg [MPa]:')
        print(fmt(q_bar(mat, lam.plies[0]['theta']), ['xx', 'yy', 'xy'], ['xx', 'yy', 'xy']))
    K = lam.abd()
    print_abd(K, '\nABD from classical lamination theory:')
    err_inv = np.abs(lam.abd_invariants() - K).max() / np.abs(K).max()
    print(f'(CLT with Q_bar from rotation vs Tsai-Pagano invariants: max rel. difference {err_inv:.1e})')

    if a.check:
        Kfe = lam.measure_abd()
        print_abd(Kfe, '\nABD measured from OpenSeesPy (one facet, imposed strains, work):')
        print('\nOpenSeesPy vs CLT, max relative difference: '
              + ', '.join(f'{k} {v:.1e}' for k, v in block_errors(Kfe, K).items())
              + f'   (expect A, B ~1e-15; D ~1/(layers)^2 = {1 / (lam.n_sub * len(lam.plies))**2:.1e}, OpenSees lower)')
    if a.save_abd:
        np.savetxt(a.save_abd, np.vstack([K, Kfe]) if a.check else K, delimiter=',',
                   header=','.join(STRAINS), comments='# CLT ABD' + (' then OpenSees ABD' if a.check else '') + ': ')
    if a.save_json:
        lam.save(a.save_json)
        print(f'\nLaminate definition saved to {a.save_json}')
    if a.emit:
        lam.write_opensees_calls(a.emit)
        print(f'OpenSeesPy calls for one facet written to {a.emit}')


if __name__ == '__main__':
    main()
