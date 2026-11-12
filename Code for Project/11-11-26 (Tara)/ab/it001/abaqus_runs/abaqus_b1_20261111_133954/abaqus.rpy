# -*- coding: mbcs -*-
#
# Abaqus/CAE Release 2026 replay file
# Internal Version: 2025_09_23-07.43.03 RELr428 206049
# Run by tvenkata on Wed Nov 11 13:39:57 2026
#

# from driverUtils import executeOnCaeGraphicsStartup
# executeOnCaeGraphicsStartup()
#: Executing "onCaeGraphicsStartup()" in the site directory ...
from abaqus import *
from abaqusConstants import *
session.Viewport(name='Viewport: 1', origin=(1.04861, 1.04444), width=154.356, 
    height=103.609)
session.viewports['Viewport: 1'].makeCurrent()
from driverUtils import executeOnCaeStartup
executeOnCaeStartup()
execfile('abaqus_b1.py', __main__.__dict__)
#: The model "ShellModel" has been created.
#: The model "LBA" has been created.
#: The model "RIKS" has been created.
#: Model: F:/Tara/BenazzoVenkatadri_ThinShellSims/Code for Project/11-11-26 (Tara)/ab/it001/abaqus_runs/abaqus_b1_20261111_133954/it001_L001_Y001_T001_buc_LBA.odb
#: Number of Assemblies:         1
#: Number of Assembly instances: 0
#: Number of Part instances:     1
#: Number of Meshes:             2
#: Number of Element Sets:       1
#: Number of Node Sets:          7
#: Number of Steps:              1
#: Model: F:/Tara/BenazzoVenkatadri_ThinShellSims/Code for Project/11-11-26 (Tara)/ab/it001/abaqus_runs/abaqus_b1_20261111_133954/it001_L001_Y001_T001_buc_LBA.odb
#: Number of Assemblies:         1
#: Number of Assembly instances: 0
#: Number of Part instances:     1
#: Number of Meshes:             2
#: Number of Element Sets:       1
#: Number of Node Sets:          7
#: Number of Steps:              1
#: The model "NLB50" has been created.
#: Model: F:/Tara/BenazzoVenkatadri_ThinShellSims/Code for Project/11-11-26 (Tara)/ab/it001/abaqus_runs/abaqus_b1_20261111_133954/it001_L001_Y001_T001_buc_NLB50.odb
#: Number of Assemblies:         1
#: Number of Assembly instances: 0
#: Number of Part instances:     1
#: Number of Meshes:             2
#: Number of Element Sets:       1
#: Number of Node Sets:          7
#: Number of Steps:              2
#: The model "NLB80" has been created.
#: Model: F:/Tara/BenazzoVenkatadri_ThinShellSims/Code for Project/11-11-26 (Tara)/ab/it001/abaqus_runs/abaqus_b1_20261111_133954/it001_L001_Y001_T001_buc_NLB80.odb
#: Number of Assemblies:         1
#: Number of Assembly instances: 0
#: Number of Part instances:     1
#: Number of Meshes:             2
#: Number of Element Sets:       1
#: Number of Node Sets:          7
#: Number of Steps:              2
#: The model "NLB95" has been created.
#: Model: F:/Tara/BenazzoVenkatadri_ThinShellSims/Code for Project/11-11-26 (Tara)/ab/it001/abaqus_runs/abaqus_b1_20261111_133954/it001_L001_Y001_T001_buc_NLB95.odb
#: Number of Assemblies:         1
#: Number of Assembly instances: 0
#: Number of Part instances:     1
#: Number of Meshes:             2
#: Number of Element Sets:       1
#: Number of Node Sets:          7
#: Number of Steps:              2
#: Model: F:/Tara/BenazzoVenkatadri_ThinShellSims/Code for Project/11-11-26 (Tara)/ab/it001/abaqus_runs/abaqus_b1_20261111_133954/it001_L001_Y001_T001_buc_RIKS.odb
#: Number of Assemblies:         1
#: Number of Assembly instances: 0
#: Number of Part instances:     1
#: Number of Meshes:             2
#: Number of Element Sets:       1
#: Number of Node Sets:          7
#: Number of Steps:              1
print('RT script done')
#: RT script done
