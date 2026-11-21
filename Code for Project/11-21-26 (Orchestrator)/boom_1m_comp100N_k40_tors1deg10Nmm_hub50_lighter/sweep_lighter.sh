#!/bin/bash
# Orchestrator helper: run 10 designs lighter than the finalized best (105.5 g) at the user's request
# (2026-11-21), via study.py only; exploratory rows come from explore_lighter/screen/screen.csv.
cd "C:/Users/fbenazzo/Desktop/ME295/BenazzoVenkatadri_ThinShellSims" || exit 1
PY="C:/Users/fbenazzo/Desktop/ME295/envs/shells312/Scripts/python.exe"
S="$PY .claude/orchestrator/tools/study.py"
ST="Code for Project/11-21-26 (Orchestrator)/boom_1m_comp100N_k40_tors1deg10Nmm_hub50_lighter"
XS="$ST/explore_lighter/screen/screen.csv"
OV="User request 2026-11-21: run 10 designs lighter than the finalized best (105.5 g, L017/Y016/C008) and check that they fail as the screen predicts"
while read M Y G WHY; do
  echo "=== choose $M/$Y/$G"
  $S choose --study "$ST" --material $M --geometry $G --layup $Y --override "$OV" --exploratory-screen "$XS" \
     --reason "Lighter-than-best check (material $M, geometry $G, layup $Y): $WHY" 2>&1 | tail -1
  i=$($S status "$ST" --brief 2>&1 | grep -o -E "iter [0-9]+" | head -1 | awk '{print $2}')
  $S run $i --study "$ST" --step all 2>&1 | grep -E "GOVERNING|tip twist|skipped|buckling|FAIL|Error|REFUSED" | cut -c1-260
  out=$($S record $i --study "$ST" 2>&1); echo "$out" | grep -E "recorded|sanity|NEXT|STOP" | cut -c1-420
  for pass in 1 2 3; do
    nx=$(echo "$out" | grep "NEXT" | tail -1)
    if echo "$nx" | grep -q "converge"; then j=$(echo "$nx" | grep -o -E "converge [0-9]+" | awk '{print $2}'); out=$($S converge $j --study "$ST" 2>&1); echo "$out" | tail -3 | cut -c1-300
    elif echo "$nx" | grep -q "study.py verify "; then j=$(echo "$nx" | grep -o -E "verify [0-9]+" | awk '{print $2}'); out=$($S verify $j --study "$ST" 2>&1); echo "$out" | grep -E "ready|NEXT" | cut -c1-300
    else break; fi
  done
done <<'LIST'
L028 Y002 C011 3-ply corrugated C011, 81.1 g, k_est 40.36 N/mm but rejected on the St Venant twist estimate (428 deg); tests both the stiffness and the twist estimate (warping restraint).
L011 Y016 C005 4-ply [0/0/0/0] C005 at the best design's mass class, k_est 39.56 N/mm (just under 40 after calibration): the closest lighter design to passing.
L028 Y001 C005 3-ply C005, 81.1 g, k_est 38.94 N/mm: same family as it001 of the parent study (39.26 FE), slightly less stiff layup.
L023 Y016 C008 4-ply C008 in a lower-modulus material, 104.8 g, k_est 37.93 N/mm.
L038 Y016 C008 4-ply C008, 101.5 g, k_est 34.90 N/mm.
L011 Y001 C008 3-ply C008, 79.1 g, k_est 33.06 N/mm (rejected on stiffness).
L028 Y016 M006 Stiffest omega section under 105.5 g (88.0 g, k_est 24.6 N/mm, rejected on stiffness).
L028 Y031 R014 Stiffest TRAC under 105.5 g (71.8 g, k_est 25.9 N/mm, rejected on stiffness).
L028 Y031 T016 Stiffest tape spring under 105.5 g (28.2 g, k_est 1.6 N/mm, rejected on stiffness).
L038 Y009 R015 Lightest coilable design in the catalog (TRAC, 4.9 g), rejected on stiffness, buckling and twist estimates.
LIST
echo SWEEP_DONE
