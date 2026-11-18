# -*- coding: mbcs -*-
#
# Abaqus/CAE Release 2026 replay file
# Internal Version: 2025_09_23-07.43.03 RELr428 206049
# Run by tvenkata on Tue Nov 17 13:44:03 2026
#

# from driverUtils import executeOnCaeGraphicsStartup
# executeOnCaeGraphicsStartup()
#: Executing "onCaeGraphicsStartup()" in the site directory ...
from abaqus import *
from abaqusConstants import *
session.Viewport(name='Viewport: 1', origin=(1.55729, 1.55556), width=229.233, 
    height=154.311)
session.viewports['Viewport: 1'].makeCurrent()
from driverUtils import executeOnCaeStartup
executeOnCaeStartup()
execfile('abaqus_M008_Al_torsion_2p5mm.py', __main__.__dict__)
#: The model "ShellModel" has been created.
#: The model database has been saved to "F:\Tara\BenazzoVenkatadri_ThinShellSims\Code for Project\11-17-26 (Tara)\omega_torsion\abaqus_runs\abaqus_M008_Al_torsion_2p5mm_20261117_134348\M008_Al_torsion_2p5mm_S4R_2p5mm.cae".
#: Model: F:/Tara/BenazzoVenkatadri_ThinShellSims/Code for Project/11-17-26 (Tara)/omega_torsion/abaqus_runs/abaqus_M008_Al_torsion_2p5mm_20261117_134348/M008_Al_torsion_2p5mm_S4R_2p5mm.odb
#: Number of Assemblies:         1
#: Number of Assembly instances: 0
#: Number of Part instances:     1
#: Number of Meshes:             2
#: Number of Element Sets:       3
#: Number of Node Sets:          7
#: Number of Steps:              1
print('RT script done')
#: RT script done
