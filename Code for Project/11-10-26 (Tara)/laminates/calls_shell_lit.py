# OpenSeesPy calls for [45/0/45] h = 0.08 mm (one facet, nodes 1-4), written by laminate_properties.py
import openseespy.opensees as ops

ops.nDMaterial('ElasticIsotropic', 1, 0.0, 0.0)
ops.nDMaterial('ElasticOrthotropic', 2, 128000.0, 6500.0, 6500.0, 0.35, 0.35, 0.0177734375, 7600.0, 2407.4074074074074, 7600.0, 1.56e-09)
ops.nDMaterial('PlaneStress', 3, 2)
ops.nDMaterial('PlateFromPlaneStress', 4, 3, 7600.0)
ops.nDMaterial('ElasticOrthotropic', 5, 23800.0, 23800.0, 23800.0, 0.17, 0.17, 0.17, 3300.0, 10170.940170940172, 3300.0, 1.91e-09)
ops.nDMaterial('PlaneStress', 6, 5)
ops.nDMaterial('PlateFromPlaneStress', 7, 6, 3300.0)
ops.section('LayeredShell', 1, 30, 7, 0.0025, 7, 0.0025, 7, 0.0025, 7, 0.0025, 7, 0.0025, 7, 0.0025, 7, 0.0025, 7, 0.0025, 7, 0.0025, 7, 0.0025, 1, 0.003, 1, 0.003, 1, 0.003, 1, 0.003, 1, 0.003, 1, 0.003, 1, 0.003, 1, 0.003, 1, 0.003, 1, 0.003, 7, 0.0025, 7, 0.0025, 7, 0.0025, 7, 0.0025, 7, 0.0025, 7, 0.0025, 7, 0.0025, 7, 0.0025, 7, 0.0025, 7, 0.0025)
ops.section('LayeredShell', 2, 30, 1, 0.0025, 1, 0.0025, 1, 0.0025, 1, 0.0025, 1, 0.0025, 1, 0.0025, 1, 0.0025, 1, 0.0025, 1, 0.0025, 1, 0.0025, 4, 0.003, 4, 0.003, 4, 0.003, 4, 0.003, 4, 0.003, 4, 0.003, 4, 0.003, 4, 0.003, 4, 0.003, 4, 0.003, 1, 0.0025, 1, 0.0025, 1, 0.0025, 1, 0.0025, 1, 0.0025, 1, 0.0025, 1, 0.0025, 1, 0.0025, 1, 0.0025, 1, 0.0025)
ops.element('ASDShellQ4', 1, 1, 2, 3, 4, 1, '-noeas', '-local', 0.707106781186548, 0.707106781186548, 0.0)
ops.element('ASDShellQ4', 2, 1, 2, 3, 4, 2, '-noeas', '-local', 1.0, 0.0, 0.0)
