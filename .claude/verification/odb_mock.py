"""
Stand-in for Abaqus' odbAccess, used to test odb_extract.py and
compare_results.py on a machine without Abaqus (test_verification.py).

make_odb(results.npz, ...) builds an ODB-like object from an OpenSees results
file the way Abaqus would store the same model: node coordinates and vectors
in the part axes (X, Y, Z) = (y, z, x), other node and element labels in
another order, the rigid-end master as an assembly reference point, element
fields at the centroid with 3 section points per ply (S in ply axes; numbered
3k-2, 3k-1, 3k from the bottom and described as Abaqus 2026 does, 'SNEG,
(fraction = -1.0), Layer = 1', 'fraction = -0.833333, Layer = 1', ... with the
fraction of the whole thickness; sp='default': only Abaqus' default points,
bottom of layer 1 and top of the last layer), section strains/curvatures/
forces in the facet axes with Abaqus 2026's component order and labels (SK
data [kyy, kxx, kxy] labelled SK1, SK2, SK3: SK1 = curvature about local
axis 1; SM data [M22, M11, M12] labelled SM2, SM1, SM3), and for
displacement control a Riks-like step with LPF history. Web facets (TRAC /
omega / corrugated) carry the doubled laminate, found with
failure_check.facet_groups. Ply stresses come from the failure-check skill
and section forces from laminate-properties (independent of
compare_results.py). Perturbations (scale a field, flip a sign) test that
the comparison reports them.
"""
import json
import sys
import types
from pathlib import Path

import numpy as np

_HERE = Path(__file__).resolve()
_SKILLS = next((q / '.claude' / 'skills' for q in _HERE.parents if (q / '.claude' / 'skills').is_dir()),
               _HERE.parents[1] / 'skills')
for _d in ('laminate-properties', 'failure-check'):
    sys.path.insert(0, str(_SKILLS / _d))

PART = (1, 2, 0)          # part (X, Y, Z) = global (y, z, x)


class NS(types.SimpleNamespace):
    pass


class Field:
    def __init__(self, values, components, description=''):
        self.values, self.componentLabels, self.description = values, tuple(components), description

    def getSubset(self, position=None, region=None):
        return self


def make_odb(npz, u_scale=1.0, field_scale=None, n_frames=4, n_sp=3, sp='all', sk_order='abaqus',
             web_single=False, layer_scale=None):
    """field_scale: {'SK': [1, 1, 2], 'S': [...], ...} multiplies the components as stored
    (SK: [SK1, SK2, SK3] = [kyy, kxx, kxy]). sp: 'all' section points or Abaqus' 'default'
    ones. sk_order 'clt': SK stored as [kxx, kyy, kxy] (the old, wrong assumption).
    web_single: web facets get the single laminate (not the FE model's doubled one).
    layer_scale: {layer number: [f11, f22, f12]} multiplies S in that layer only."""
    import failure_check as fc
    import laminate_properties as lp
    field_scale = field_scale or {}
    d = np.load(npz, allow_pickle=False)
    meta, lam = json.loads(str(d['meta'])), lp.Laminate.from_dict(json.loads(str(d['laminate'])))
    pts, tags, disp, faces = d['points'], d['node_tags'], d['disp'] * u_scale, d['faces']
    strains = d['strains']
    rigid = {int(t) for t in (meta.get('rigid') or {}).values()}
    shell = [k for k, t in enumerate(tags) if int(t) not in rigid]
    rng = np.random.default_rng(1)
    labels = {k: int(1000 + j) for j, k in enumerate(rng.permutation(shell))}          # other node labels
    inst = NS(name='SHELL-1')
    inst.nodes = [NS(label=labels[k], coordinates=tuple(pts[k][list(PART)])) for k in shell]
    inst.elements = [NS(label=5000 + e, connectivity=tuple(labels[int(n)] for n in f), type='S4R')
                     for e, f in enumerate(faces)]
    asm_nodes = {}
    for e, t in (meta.get('rigid') or {}).items():
        k = list(tags).index(int(t))
        asm_nodes[e] = (k, NS(label=len(asm_nodes) + 1, coordinates=tuple(pts[k][list(PART)]), instanceName=None))
    hist = d['history']
    an = (meta.get('case') or {}).get('analysis', {})
    riks = an.get('type') == 'displacement_control'
    lam_f = np.linspace(0, 1, n_frames + 1)
    if riks:                                    # frames at the OpenSees steps (control disp, load factor)
        lam_f = hist[:, 1] / hist[-1, 1]

    def nodal(f, vec):
        vals = [NS(nodeLabel=labels[k], instance=inst, data=tuple(f * vec[k][list(PART)])) for k in shell]
        vals += [NS(nodeLabel=n.label, instance=None, data=tuple(f * vec[k][list(PART)])) for k, n in asm_nodes.values()]
        return vals

    e_mean = strains.mean(axis=1)
    res = dict(meta=meta, faces=faces, points=pts)
    groups = fc.facet_groups(res, lam)[0]                               # flange / web (doubled) facets
    nm = np.zeros((len(faces), 6))
    sp_vals = [[] for _ in faces]                                       # per element: [(number, desc, data)]
    layer_scale = layer_scale or {}
    for _, glam, idx in groups:
        glam = lam if web_single else glam
        nm[idx] = e_mean[idx, :6] @ glam.abd().T                        # N, M from the CLT ABD
        sig12 = fc.ply_stresses(strains[idx], glam, 'centroid')[0][:, 0]      # (n, ply, 3 z, 3)
        n_ply = len(glam.plies)
        for p in range(n_ply):
            for j in range(n_sp):
                num = p * n_sp + j + 1
                if sp == 'default' and num not in (1, n_ply * n_sp):
                    continue
                zf = j / (n_sp - 1)
                v = sig12[:, p, 0] * (1 - 2 * zf) * (1 - zf) + sig12[:, p, 1] * 4 * zf * (1 - zf) \
                    + sig12[:, p, 2] * zf * (2 * zf - 1)        # quadratic through bottom/mid/top (linear: exact)
                v = v * np.array(layer_scale.get(p + 1, [1.0, 1.0, 1.0]))
                f = -1 + 2 * (p + zf) / n_ply                               # fraction of the whole thickness
                d = (f'SNEG, (fraction = -1.0), Layer = {p + 1}' if num == 1 else
                     f'SPOS, (fraction = 1.0), Layer = {p + 1}' if num == n_ply * n_sp else
                     f'Mid, (fraction = 0.0), Layer = {p + 1}' if abs(f) < 1e-9 else
                     f'fraction = {f:.6f}, Layer = {p + 1}')
                for e, row in zip(idx, v):
                    sp_vals[e].append((num, d, row))

    def elem(name, data, comps):
        s = np.array(field_scale.get(name, [1.0] * len(comps)))
        return Field([NS(elementLabel=5000 + e, instance=inst, sectionPoint=None, data=tuple(data[e] * s))
                      for e in range(len(faces))], comps)

    s_scale = np.array(field_scale.get('S', [1.0] * 3))
    S_field = Field([NS(elementLabel=5000 + e, instance=inst, data=tuple(row * s_scale),
                        sectionPoint=NS(number=num, description=d))
                     for e in range(len(faces)) for num, d, row in sp_vals[e]], ('S11', 'S22', 'S12'))
    frames = []
    for f in lam_f:
        fo = {'U': Field(nodal(f, disp[:, :3]), ('U1', 'U2', 'U3')), 'UR': Field(nodal(f, disp[:, 3:]), ('UR1', 'UR2', 'UR3'))}
        frames.append(NS(frameValue=float(f), description=f'frame {f:.3g}', fieldOutputs=fo))
    last = frames[-1].fieldOutputs
    last['S'] = S_field
    last['SE'] = elem('SE', e_mean[:, 0:3], ('SE1', 'SE2', 'SE3'))
    k_abq = e_mean[:, [4, 3, 5]] if sk_order == 'abaqus' else e_mean[:, 3:6]
    last['SK'] = elem('SK', k_abq, ('SK1', 'SK2', 'SK3'))           # SK1 = about local axis 1 = kyy
    last['SF'] = elem('SF', nm[:, 0:3], ('SF1', 'SF2', 'SF3'))
    last['SM'] = elem('SM', nm[:, [4, 3, 5]], ('SM2', 'SM1', 'SM3'))   # Abaqus 2026 order and labels
    hreg = {}
    if riks:
        hreg['Assembly ASSEMBLY'] = NS(historyOutputs={'LPF': NS(data=tuple((i, l) for i, l in enumerate(hist[:, 0])))})
    step = NS(name='Load', frames=frames, historyRegions=hreg)
    sets = {f'RP-{e.upper()}': NS(nodes=[[n]]) for e, (_, n) in asm_nodes.items()}
    asm = NS(instances={'SHELL-1': inst, 'ASSEMBLY': NS(name='ASSEMBLY')}, nodeSets=sets)
    return NS(steps={'Load': step}, rootAssembly=asm, jobData=NS(version='mock'), close=lambda: None)


def install(odb):
    sys.modules['odbAccess'] = types.SimpleNamespace(openOdb=lambda path, readOnly=True: odb)
    sys.modules['abaqusConstants'] = types.SimpleNamespace(CENTROID='CENTROID', INTEGRATION_POINT='INTEGRATION_POINT')
