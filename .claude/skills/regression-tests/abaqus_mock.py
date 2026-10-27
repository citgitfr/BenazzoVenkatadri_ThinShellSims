"""
Stand-in for the Abaqus/CAE Python API, enough to execute the model-building
part of a script written by abaqus-export/case_to_abaqus.py on this VM
(no Abaqus here). Every call is recorded; the run stops at mdb.Job (nothing
is solved, the ODB part is not exercised). Used by run_regression.py T20 to
check that supports, loads, couplings, seeds and the layup match OpenSees.

mesh nodes: the OpenSees grid of the same case (same structured mesh), with
labels 1..n, in global coordinates (= Abaqus assembly coordinates after the
instance rotation).
"""
import sys
import types


class StopAtJob(Exception):
    pass


class Rec:
    """Records attribute calls; returns new Rec objects."""

    def __init__(self, log, name='obj'):
        self._log, self._name = log, name

    def __getattr__(self, item):
        if item.startswith('__'):
            raise AttributeError(item)
        return Rec(self._log, f'{self._name}.{item}')

    def __call__(self, *args, **kw):
        self._log.append((self._name, args, kw))
        return Rec(self._log, self._name + '()')

    def __getitem__(self, k):
        return Rec(self._log, f'{self._name}[{k!r}]')

    def __iter__(self):
        return iter(())


class Face:
    def __init__(self, normal):
        self.normal = normal

    def getNormal(self, point=None):
        return self.normal


class Faces(list):
    def __init__(self, log, normal_of):
        super().__init__()
        self._log, self._normal_of = log, normal_of

    def findAt(self, pts):
        self._log.append(('part.faces.findAt', pts, {}))
        return [Face(self._normal_of(pts[0]))]


class Edges:
    def __init__(self, log):
        self._log = log

    def findAt(self, pts):
        self._log.append(('part.edges.findAt', pts, {}))
        return ('EDGE', pts[0])


class Node:
    def __init__(self, label, xyz):
        self.label, self.coordinates = label, tuple(xyz)


class Nodes(list):
    def sequenceFromLabels(self, labels):
        return ('NODES', tuple(labels))


def install(nodes_xyz, normal_of):
    """Put fake abaqus modules in sys.modules. nodes_xyz: global coordinates
    of the mesh nodes; normal_of(part_point): normal the fake face reports."""
    log = []
    consts = types.ModuleType('abaqusConstants')
    consts.__getattr__ = lambda name: name                       # every constant is its own name
    sys.modules['abaqusConstants'] = consts

    class Part(Rec):
        def __init__(self):
            super().__init__(log, 'part')
            self.faces = Faces(log, normal_of)
            self.edges = Edges(log)
            self.datums = {}

    class Asm(Rec):
        def __init__(self):
            super().__init__(log, 'asm')
            self.referencePoints = {}
            self._n = 0

        def Instance(self, **kw):
            log.append(('asm.Instance', (), kw))
            inst = Rec(log, 'inst')
            inst.__dict__['nodes'] = Nodes(Node(k + 1, p) for k, p in enumerate(nodes_xyz))
            inst.__dict__['faces'] = ('ALLFACES',)
            return inst

        def ReferencePoint(self, point):
            self._n += 1
            self.referencePoints[self._n] = ('RP', tuple(point))
            log.append(('asm.ReferencePoint', (tuple(point),), {}))
            return types.SimpleNamespace(id=self._n)

        def Set(self, name, nodes=None, referencePoints=None):
            s = ('SET', name, nodes[1] if nodes else referencePoints)
            log.append(('asm.Set', (), dict(name=name, nodes=nodes, referencePoints=referencePoints)))
            return s

    class Model(Rec):
        def __init__(self, name):
            super().__init__(log, 'model')
            self.rootAssembly = Asm()
            self.fieldOutputRequests = {'F-Output-1': Rec(log, 'fieldOutput')}

        def Part(self, **kw):
            log.append(('model.Part', (), kw))
            return Part()

    class Mdb:
        models = {}

        def Model(self, name):
            return Model(name)

        def Job(self, **kw):
            raise StopAtJob()

    abaqus = types.ModuleType('abaqus')
    abaqus.mdb = Mdb()
    sys.modules['abaqus'] = abaqus
    for name in ('mesh', 'regionToolset', 'section', 'odbAccess'):
        mod = types.ModuleType(name)
        mod.__getattr__ = (lambda n, _name=name: Rec(log, f'{_name}.{n}'))
        sys.modules[name] = mod
    return log
