# -*- coding: mbcs -*-
#
# Abaqus/CAE Release 2026 replay file
# Internal Version: 2025_09_23-07.43.03 RELr428 206049
# Run by tvenkata on Wed Nov 11 17:52:30 2026
#

# from driverUtils import executeOnCaeGraphicsStartup
# executeOnCaeGraphicsStartup()
#: Executing "onCaeGraphicsStartup()" in the site directory ...
from abaqus import *
from abaqusConstants import *
session.Viewport(name='Viewport: 1', origin=(1.3724, 1.37037), width=202.017, 
    height=135.941)
session.viewports['Viewport: 1'].makeCurrent()
from driverUtils import executeOnCaeStartup
executeOnCaeStartup()
execfile('abaqus_ts_L001_000_linear_h2p5.py', __main__.__dict__)
#: The model "ShellModel" has been created.
#: The model database has been saved to "F:\Tara\BenazzoVenkatadri_ThinShellSims\Code for Project\11-11-26 (Tara)\tape_spring_L001_000_tip_load\abaqus_runs\abaqus_ts_L001_000_linear_h2p5_20261111_175218\ts_L001_000_linear_h2p5_S4R_2p5mm.cae".
#: Model: F:/Tara/BenazzoVenkatadri_ThinShellSims/Code for Project/11-11-26 (Tara)/tape_spring_L001_000_tip_load/abaqus_runs/abaqus_ts_L001_000_linear_h2p5_20261111_175218/ts_L001_000_linear_h2p5_S4R_2p5mm.odb
#: Number of Assemblies:         1
#: Number of Assembly instances: 0
#: Number of Part instances:     1
#: Number of Meshes:             2
#: Number of Element Sets:       1
#: Number of Node Sets:          5
#: Number of Steps:              1
print('RT script done')
#: RT script done
