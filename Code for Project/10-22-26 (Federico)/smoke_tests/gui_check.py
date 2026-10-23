"""
GUI check: opens interactive matplotlib (TkAgg) windows with opsvis plots of
the smoke-test strip: mesh, static deformed shape, and first mode shape.

Usage:
  python gui_check.py          # windows stay open until you close them
  python gui_check.py --auto   # windows close themselves after a few seconds
Also saves gui_check.png next to this script.
"""
import sys
from pathlib import Path

import matplotlib
matplotlib.use('TkAgg')
import matplotlib.pyplot as plt
import openseespy.opensees as ops
import opsvis as opsv

import smoke_shell as model

AUTO_CLOSE_MS = 5000

model.build('membrane_plate')
model.tip_deflection()

opsv.plot_model(node_labels=0, element_labels=0)
plt.title('ShellMITC4 mesh')

opsv.plot_defo(unDefoFlag=1)
plt.title('Static deformed shape')

ops.eigen(1)
opsv.plot_mode_shape(1)
plt.title('Mode 1')

plt.gcf().savefig(Path(__file__).with_name('gui_check.png'), dpi=120)
print('backend:', matplotlib.get_backend(), '| open figures:', len(plt.get_fignums()))

if '--auto' in sys.argv:
    timer = plt.gcf().canvas.new_timer(interval=AUTO_CLOSE_MS)
    timer.add_callback(plt.close, 'all')
    timer.start()
plt.show()
print('GUI closed cleanly')
