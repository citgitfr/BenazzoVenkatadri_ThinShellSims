# -*- coding: mbcs -*-
#
# Abaqus/CAE Release 2020 replay file
# Internal Version: 2019_09_13-10.49.31 163176
# Run by tvenkata on Tue Nov 10 17:28:02 2026
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
execfile('abaqus_ctm_axial_r25p62_a90_buckling.py', __main__.__dict__)
#: The model "ShellModel" has been created.
#: The model "LBA" has been created.
#: The model "RIKS" has been created.
#: Model: F:/Tara/BenazzoVenkatadri_ThinShellSims/Code for Project/11-10-26 (Tara)/abaqus_axial_check/s5/ctm_axial_r25p62_a90_LBA.odb
#: Number of Assemblies:         1
#: Number of Assembly instances: 0
#: Number of Part instances:     1
#: Number of Meshes:             2
#: Number of Element Sets:       1
#: Number of Node Sets:          7
#: Number of Steps:              1
#: Model: F:/Tara/BenazzoVenkatadri_ThinShellSims/Code for Project/11-10-26 (Tara)/abaqus_axial_check/s5/ctm_axial_r25p62_a90_LBA.odb
#: Number of Assemblies:         1
#: Number of Assembly instances: 0
#: Number of Part instances:     1
#: Number of Meshes:             2
#: Number of Element Sets:       1
#: Number of Node Sets:          7
#: Number of Steps:              1
#: Model: F:/Tara/BenazzoVenkatadri_ThinShellSims/Code for Project/11-10-26 (Tara)/abaqus_axial_check/s5/ctm_axial_r25p62_a90_RIKS.odb
#: Number of Assemblies:         1
#: Number of Assembly instances: 0
#: Number of Part instances:     1
#: Number of Meshes:             2
#: Number of Element Sets:       1
#: Number of Node Sets:          7
#: Number of Steps:              1
#* KeyError: Assembly ASSEMBLY
#* File "abaqus_ctm_axial_r25p62_a90_buckling.py", line 11175, in <module>
#*     lpf = [v for _, v in st.historyRegions['Assembly 
#* ASSEMBLY'].historyOutputs['LPF'].data]
