# -*- coding: mbcs -*-
#
# Abaqus/CAE Release 2026 replay file
# Internal Version: 2025_09_23-07.43.03 RELr428 206049
# Run by tvenkata on Wed Nov 18 12:59:52 2026
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
execfile('abaqus_it004_L028_Y095_M006.py', __main__.__dict__)
#: The model "ShellModel" has been created.
#: The model database has been saved to "F:\Tara\BenazzoVenkatadri_ThinShellSims\Code for Project\11-17-26 (Tara)\boom_1m_lat50N_k25_tors1deg_hub100\iterations\it004\abaqus_runs\abaqus_it004_L028_Y095_M006_20261118_125948\it004_L028_Y095_M006_S4R_2p7mm.cae".
#: Model: F:/Tara/BenazzoVenkatadri_ThinShellSims/Code for Project/11-17-26 (Tara)/boom_1m_lat50N_k25_tors1deg_hub100/iterations/it004/abaqus_runs/abaqus_it004_L028_Y095_M006_20261118_125948/it004_L028_Y095_M006_S4R_2p7mm.odb
#: Number of Assemblies:         1
#: Number of Assembly instances: 0
#: Number of Part instances:     1
#: Number of Meshes:             2
#: Number of Element Sets:       3
#: Number of Node Sets:          9
#: Number of Steps:              1
print('RT script done')
#: RT script done
