# -*- coding: mbcs -*-
#
# Abaqus/CAE Release 2020 replay file
# Internal Version: 2019_09_13-10.49.31 163176
# Run by tvenkata on Tue Nov 10 17:41:32 2026
#

# from driverUtils import executeOnCaeGraphicsStartup
# executeOnCaeGraphicsStartup()
#: Executing "onCaeGraphicsStartup()" in the site directory ...
from abaqus import *
from abaqusConstants import *
session.Viewport(name='Viewport: 1', origin=(1.32227, 1.32187), width=194.637, 
    height=131.13)
session.viewports['Viewport: 1'].makeCurrent()
from driverUtils import executeOnCaeStartup
executeOnCaeStartup()
execfile('abaqus_ctm_axial_r25p62_a90_buckling.py', __main__.__dict__)
#: The model "ShellModel" has been created.
#: The model "LBA" has been created.
#: The model "RIKS" has been created.
#: Model: F:/Tara/BenazzoVenkatadri_ThinShellSims/Code for Project/11-10-26 (Tara)/abaqus_axial_check/r2p5/ctm_axial_r25p62_a90_LBA.odb
#: Number of Assemblies:         1
#: Number of Assembly instances: 0
#: Number of Part instances:     1
#: Number of Meshes:             2
#: Number of Element Sets:       1
#: Number of Node Sets:          7
#: Number of Steps:              1
#: Model: F:/Tara/BenazzoVenkatadri_ThinShellSims/Code for Project/11-10-26 (Tara)/abaqus_axial_check/r2p5/ctm_axial_r25p62_a90_LBA.odb
#: Number of Assemblies:         1
#: Number of Assembly instances: 0
#: Number of Part instances:     1
#: Number of Meshes:             2
#: Number of Element Sets:       1
#: Number of Node Sets:          7
#: Number of Steps:              1
#: The model "NLB50" has been created.
#: Model: F:/Tara/BenazzoVenkatadri_ThinShellSims/Code for Project/11-10-26 (Tara)/abaqus_axial_check/r2p5/ctm_axial_r25p62_a90_NLB50.odb
#: Number of Assemblies:         1
#: Number of Assembly instances: 0
#: Number of Part instances:     1
#: Number of Meshes:             2
#: Number of Element Sets:       1
#: Number of Node Sets:          7
#: Number of Steps:              2
#: The model "NLB80" has been created.
#: Model: F:/Tara/BenazzoVenkatadri_ThinShellSims/Code for Project/11-10-26 (Tara)/abaqus_axial_check/r2p5/ctm_axial_r25p62_a90_NLB80.odb
#: Number of Assemblies:         1
#: Number of Assembly instances: 0
#: Number of Part instances:     1
#: Number of Meshes:             2
#: Number of Element Sets:       1
#: Number of Node Sets:          7
#: Number of Steps:              2
#: The model "NLB95" has been created.
#: Model: F:/Tara/BenazzoVenkatadri_ThinShellSims/Code for Project/11-10-26 (Tara)/abaqus_axial_check/r2p5/ctm_axial_r25p62_a90_NLB95.odb
#: Number of Assemblies:         1
#: Number of Assembly instances: 0
#: Number of Part instances:     1
#: Number of Meshes:             2
#: Number of Element Sets:       1
#: Number of Node Sets:          7
#: Number of Steps:              2
