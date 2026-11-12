#!/bin/bash
# Runs the last three toy candidates (L002 on T003) through the study loop, one after the other (11-11-26, Tara).
cd "$(dirname "$0")/../toy_orch"
export OMP_NUM_THREADS=8 OPENBLAS_NUM_THREADS=8 MKL_NUM_THREADS=8
PY=C:/Users/tvenkata/miniforge3/envs/shells/python.exe; S="$PY .claude/orchestrator/tools/study.py"
i=7
for lay in Y003 Y002; do
  $S candidates > /dev/null; $S choose --material L002 --geometry T003 --layup $lay --reason "Best remaining untried TOP design by mass. Material L002: L001 with 1000x density, so the mechanics equal L001/$lay/T003 already run and the mass is 1000x. Geometry T003: passes the hub. Layup $lay: the next untried layup on L002/T003." || exit 1
  for st in laminate model visualize failure buckling objcon; do $S run $i --step $st || exit 1; done
  (cd ..; OMP_NUM_THREADS=4 $PY toy_orch_tools/axial_check.py "toy_orch/Code for Project/11-11-26 (Tara)/ts_toy_minmass/iterations/it00$i" | grep -E "F_axial|passes")
  $S record $i || exit 1
  i=$((i+1))
done
$S status
