"""
Copies the results of an Abaqus ODB into a plain .npz that compare_results.py
reads on a machine without Abaqus. Only Abaqus' own Python can open an ODB, so
run this where Abaqus is installed (Python 2.7 or 3, numpy ships with Abaqus):

  abaqus python odb_extract.py <job>.odb [<job>_odb.npz] [--step NAME] [--instance NAME]

Written (final frame of the step unless stated):
  node_labels, node_xyz        instance nodes (ODB coordinates, as stored)
  elem_labels, elem_conn       instance shell elements (4 node labels; 3-node: last repeated)
  asm_labels, asm_xyz, asm_sets  assembly-level nodes (reference points), set names
  U, UR                        (frames, instance nodes, 3) every frame of the step
  asm_U, asm_UR                (frames, assembly nodes, 3)
  frame_value                  frame values (step time, or arc length for Riks)
  LPF                          Riks load proportionality factor per frame (if in the ODB)
  F_<name>                     element field at the centroid, (elements, section points, components)
                               for S, E, SE, SK, SF, SM, when present (final frame)
  meta                         JSON: ODB path, step, instance, Abaqus version, component labels,
                               section point numbers and descriptions, frame descriptions
No model data other than what the ODB holds is used.
"""
from __future__ import print_function

import json
import sys

import numpy as np
from abaqusConstants import CENTROID, INTEGRATION_POINT
from odbAccess import openOdb

FIELDS = ('S', 'E', 'SE', 'SK', 'SF', 'SM')


def parse(argv):
    pos, opt, k = [], {}, 0
    while k < len(argv):
        if argv[k].startswith('--'):
            opt[argv[k][2:]] = argv[k + 1]
            k += 2
        else:
            pos.append(argv[k])
            k += 1
    if not pos:
        raise SystemExit(__doc__)
    out = pos[1] if len(pos) > 1 else pos[0][:-4] + '_odb.npz'
    return pos[0], out, opt


def node_vectors(fo, index, asm_index, n, n_asm):
    """(instance nodes, 3) and (assembly nodes, 3) of a nodal vector field."""
    a, b = np.zeros((n, 3)), np.zeros((n_asm, 3))
    for v in fo.values:
        d = list(v.data)[:3] + [0.0] * (3 - len(v.data))
        if v.instance is None:
            if v.nodeLabel in asm_index:
                b[asm_index[v.nodeLabel]] = d
        elif v.nodeLabel in index and v.instance.name == INSTANCE[0]:
            a[index[v.nodeLabel]] = d
    return a, b


def element_field(fo, eindex):
    """Centroid values (elements, section points, components), NaN where absent;
    section point numbers and descriptions."""
    try:
        vals = fo.getSubset(position=CENTROID).values
        if len(vals) == 0:
            raise ValueError('no centroid values')
    except Exception:
        vals = fo.getSubset(position=INTEGRATION_POINT).values      # averaged per element below
    acc, sps, desc = {}, set(), {}
    for v in vals:
        if v.instance is None or v.instance.name != INSTANCE[0] or v.elementLabel not in eindex:
            continue
        sp = v.sectionPoint.number if v.sectionPoint is not None else 0
        if v.sectionPoint is not None:
            desc[sp] = v.sectionPoint.description
        sps.add(sp)
        key = (eindex[v.elementLabel], sp)
        s, c = acc.get(key, (0.0, 0))
        acc[key] = (s + np.array(v.data, float), c + 1)
    sps = sorted(sps)
    spi = dict((s, k) for k, s in enumerate(sps))
    ncomp = len(fo.componentLabels) or 1
    arr = np.full((len(eindex), len(sps), ncomp), np.nan)
    for (e, sp), (s, c) in acc.items():
        arr[e, spi[sp]] = np.atleast_1d(s)[:ncomp] / c
    return arr, sps, dict((str(k), desc[k]) for k in desc)


INSTANCE = [None]


def main():
    path, out, opt = parse(sys.argv[1:])
    odb = openOdb(path, readOnly=True)
    steps = list(odb.steps.keys())
    step = odb.steps[opt.get('step', steps[-1])]
    names = [k for k in odb.rootAssembly.instances.keys() if k != 'ASSEMBLY']
    INSTANCE[0] = opt.get('instance', names[0])
    if len(names) > 1 and 'instance' not in opt:
        print('several instances %s; using %s (--instance to choose)' % (names, INSTANCE[0]))
    inst = odb.rootAssembly.instances[INSTANCE[0]]
    labels = [nd.label for nd in inst.nodes]
    xyz = np.array([nd.coordinates for nd in inst.nodes], float)
    index = dict((l, k) for k, l in enumerate(labels))
    shells = [e for e in inst.elements if len(e.connectivity) in (3, 4)]
    elabels = [e.label for e in shells]
    conn = np.array([list(e.connectivity) + [e.connectivity[-1]] * (4 - len(e.connectivity)) for e in shells])
    eindex = dict((l, k) for k, l in enumerate(elabels))

    asm_labels, asm_xyz, asm_sets = [], [], []
    for sname in odb.rootAssembly.nodeSets.keys():
        try:
            groups = odb.rootAssembly.nodeSets[sname].nodes
            for grp in groups:
                for nd in grp:
                    if getattr(nd, 'instanceName', None) in (None, '', 'ASSEMBLY') and nd.label not in asm_labels:
                        asm_labels.append(nd.label)
                        asm_xyz.append(list(nd.coordinates))
                        asm_sets.append(sname)
        except Exception:
            pass
    asm_index = dict((l, k) for k, l in enumerate(asm_labels))

    frames = step.frames
    U, UR, aU, aUR, fval, fdesc = [], [], [], [], [], []
    for fr in frames:
        fval.append(fr.frameValue)
        fdesc.append(fr.description)
        for name, A, B in (('U', U, aU), ('UR', UR, aUR)):
            if name in fr.fieldOutputs.keys():
                a, b = node_vectors(fr.fieldOutputs[name], index, asm_index, len(labels), len(asm_labels))
            else:
                a, b = np.full((len(labels), 3), np.nan), np.full((len(asm_labels), 3), np.nan)
            A.append(a)
            B.append(b)
    data = dict(node_labels=np.array(labels), node_xyz=xyz, elem_labels=np.array(elabels), elem_conn=conn,
                asm_labels=np.array(asm_labels, int), asm_xyz=np.array(asm_xyz, float).reshape(-1, 3),
                asm_sets=np.array(asm_sets), U=np.array(U), UR=np.array(UR),
                asm_U=np.array(aU).reshape(len(frames), -1, 3), asm_UR=np.array(aUR).reshape(len(frames), -1, 3),
                frame_value=np.array(fval, float))
    meta = dict(odb=path, step=step.name, steps=steps, instance=INSTANCE[0], frame_descriptions=fdesc,
                version=str(getattr(odb.jobData, 'version', '')), fields={})
    try:
        lpf = step.historyRegions['Assembly ASSEMBLY'].historyOutputs['LPF'].data
        data['LPF'] = np.array(lpf, float)                 # (frames, 2): arc length, LPF
    except Exception:
        pass
    last = frames[-1]
    for name in FIELDS:
        if name in last.fieldOutputs.keys():
            fo = last.fieldOutputs[name]
            arr, sps, desc = element_field(fo, eindex)
            data['F_' + name] = arr
            meta['fields'][name] = dict(components=list(fo.componentLabels), section_points=sps,
                                        section_point_descriptions=desc, description=fo.description)
    data['meta'] = np.array(json.dumps(meta))
    odb.close()
    np.savez_compressed(out, **data)
    print('wrote %s: %d nodes, %d shell elements, %d assembly node(s), %d frame(s), fields %s'
          % (out, len(labels), len(elabels), len(asm_labels), len(frames), sorted(meta['fields'])))


if __name__ == '__main__':
    main()
