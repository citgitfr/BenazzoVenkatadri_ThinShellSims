# -*- coding: mbcs -*-
#
# Abaqus/CAE Release 2026 replay file
# Internal Version: 2025_09_23-07.43.03 RELr428 206049
# Run by tvenkata on Tue Nov 17 17:46:13 2026
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
execfile('abaqus_it001_L028_Y001_M006.py', __main__.__dict__)
#: The model "ShellModel" has been created.
#: The model database has been saved to "F:\Tara\BenazzoVenkatadri_ThinShellSims\Code for Project\11-17-26 (Tara)\boom_1m_lat50N_k25_tors1deg_hub100\iterations\it001\abaqus_runs\abaqus_it001_L028_Y001_M006_20261117_174600\it001_L028_Y001_M006_S4R_2p7mm.cae".
#: Model: F:/Tara/BenazzoVenkatadri_ThinShellSims/Code for Project/11-17-26 (Tara)/boom_1m_lat50N_k25_tors1deg_hub100/iterations/it001/abaqus_runs/abaqus_it001_L028_Y001_M006_20261117_174600/it001_L028_Y001_M006_S4R_2p7mm.odb
#: Number of Assemblies:         1
#: Number of Assembly instances: 0
#: Number of Part instances:     1
#: Number of Meshes:             2
#: Number of Element Sets:       3
#: Number of Node Sets:          9
#: Number of Steps:              1
print('RT script done')
#: RT script done
