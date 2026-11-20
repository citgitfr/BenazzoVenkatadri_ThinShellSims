# -*- coding: mbcs -*-
#
# Abaqus/CAE Release 2026 replay file
# Internal Version: 2025_09_23-07.43.03 RELr428 206049
# Run by tvenkata on Thu Nov 19 14:48:13 2026
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
execfile('abaqus_it006_L011_Y026_C008_buckling.py', __main__.__dict__)
#: The model "ShellModel" has been created.
#: The model "LBA" has been created.
#: The model "RIKS" has been created.
#: Model: F:/Tara/BenazzoVenkatadri_ThinShellSims/Code for Project/11-17-26 (Tara)/boom_1m_lat50N_k25_tors1deg_hub100/iterations/it006/abaqus_runs/abaqus_it006_L011_Y026_C008_buckling_20261119_144800/it006_L011_Y026_C008_buc_LBA.odb
#: Number of Assemblies:         1
#: Number of Assembly instances: 0
#: Number of Part instances:     1
#: Number of Meshes:             2
#: Number of Element Sets:       1
#: Number of Node Sets:          7
#: Number of Steps:              1
#: Model: F:/Tara/BenazzoVenkatadri_ThinShellSims/Code for Project/11-17-26 (Tara)/boom_1m_lat50N_k25_tors1deg_hub100/iterations/it006/abaqus_runs/abaqus_it006_L011_Y026_C008_buckling_20261119_144800/it006_L011_Y026_C008_buc_LBA.odb
#: Number of Assemblies:         1
#: Number of Assembly instances: 0
#: Number of Part instances:     1
#: Number of Meshes:             2
#: Number of Element Sets:       1
#: Number of Node Sets:          7
#: Number of Steps:              1
#: The model "NLB50" has been created.
#: Model: F:/Tara/BenazzoVenkatadri_ThinShellSims/Code for Project/11-17-26 (Tara)/boom_1m_lat50N_k25_tors1deg_hub100/iterations/it006/abaqus_runs/abaqus_it006_L011_Y026_C008_buckling_20261119_144800/it006_L011_Y026_C008_buc_NLB50.odb
#: Number of Assemblies:         1
#: Number of Assembly instances: 0
#: Number of Part instances:     1
#: Number of Meshes:             2
#: Number of Element Sets:       1
#: Number of Node Sets:          7
#: Number of Steps:              2
#: The model "NLB80" has been created.
#: Model: F:/Tara/BenazzoVenkatadri_ThinShellSims/Code for Project/11-17-26 (Tara)/boom_1m_lat50N_k25_tors1deg_hub100/iterations/it006/abaqus_runs/abaqus_it006_L011_Y026_C008_buckling_20261119_144800/it006_L011_Y026_C008_buc_NLB80.odb
#: Number of Assemblies:         1
#: Number of Assembly instances: 0
#: Number of Part instances:     1
#: Number of Meshes:             2
#: Number of Element Sets:       1
#: Number of Node Sets:          7
#: Number of Steps:              2
#: The model "NLB95" has been created.
#: Model: F:/Tara/BenazzoVenkatadri_ThinShellSims/Code for Project/11-17-26 (Tara)/boom_1m_lat50N_k25_tors1deg_hub100/iterations/it006/abaqus_runs/abaqus_it006_L011_Y026_C008_buckling_20261119_144800/it006_L011_Y026_C008_buc_NLB95.odb
#: Number of Assemblies:         1
#: Number of Assembly instances: 0
#: Number of Part instances:     1
#: Number of Meshes:             2
#: Number of Element Sets:       1
#: Number of Node Sets:          7
#: Number of Steps:              2
#: Model: F:/Tara/BenazzoVenkatadri_ThinShellSims/Code for Project/11-17-26 (Tara)/boom_1m_lat50N_k25_tors1deg_hub100/iterations/it006/abaqus_runs/abaqus_it006_L011_Y026_C008_buckling_20261119_144800/it006_L011_Y026_C008_buc_RIKS.odb
#: Number of Assemblies:         1
#: Number of Assembly instances: 0
#: Number of Part instances:     1
#: Number of Meshes:             2
#: Number of Element Sets:       1
#: Number of Node Sets:          7
#: Number of Steps:              1
print('RT script done')
#: RT script done
