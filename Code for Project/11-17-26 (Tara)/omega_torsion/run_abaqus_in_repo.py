"""Runs .claude/orchestrator/tools/run_abaqus.py unchanged, but with its write boundary
(ME295) narrowed to the repository folder, so the run folder AND the Abaqus scratch
(normally <ME295>/abaqus_scratch) stay inside BenazzoVenkatadri_ThinShellSims.
Same arguments as run_abaqus.py (the 8-CPU cap and all other checks still apply)."""
import sys
from pathlib import Path

REPO = Path(__file__).resolve().parents[3]
sys.path.insert(0, str(REPO / '.claude' / 'orchestrator' / 'tools'))
import run_abaqus as r  # noqa: E402

r.ME295 = r.REPO          # scratch -> <repo>/abaqus_scratch/<stamp>_<pid>, removed after the run
assert r.REPO == REPO, (r.REPO, REPO)
r.main()
