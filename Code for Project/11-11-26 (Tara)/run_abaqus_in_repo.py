"""
Runs .claude/orchestrator/tools/run_abaqus.py unchanged, except that its "only
folder it may write into" (ME295, by default the repo's parent F:\\Tara) is
narrowed to the repo itself, F:\\Tara\\BenazzoVenkatadri_ThinShellSims. The run
folder, Abaqus scratch (TEMP/TMP) and copied results then all stay inside the
repo (11/11/26, Tara: nothing on this server outside that folder may be
modified). The 8-CPU cap of run_abaqus.py is kept.

  python run_abaqus_in_repo.py <dir>/abaqus_<name>.py [--cpus N] [-- <size> <S4R|S4>]
"""
import sys
from pathlib import Path

REPO = Path(__file__).resolve().parents[2]
sys.path.insert(0, str(REPO / '.claude' / 'orchestrator' / 'tools'))
import run_abaqus  # noqa: E402

run_abaqus.ME295 = REPO
print(f'run_abaqus_in_repo: writes restricted to {REPO}')
run_abaqus.main()
