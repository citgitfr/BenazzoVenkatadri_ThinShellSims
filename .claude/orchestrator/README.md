# ThinShellOrchestrator (v3.0): coilable-boom optimization

Give it a prompt with the boom requirements, and it runs the optimization
loop of the system diagram on its own. The only steps that need you are
answering its questions and running the Abaqus verifications it hands over.

## Start a study

In Claude Code (desktop app or CLI), opened in this repository:

```
/design-boom 1 m long tape-spring boom, tip stiffness at least 0.02 N/mm downwards,
             must carry 300 N mm in opposite-sense bending without buckling, coils on a 40 mm hub
```

or, from a terminal, the whole session as the orchestrator:

```bash
claude --agent ThinShellOrchestrator
```

A plain prompt with boom requirements works too (CLAUDE.md routes it). The
orchestrator asks for anything it needs that the prompt does not give, such as
the length, the direction, or the bending sense. Studies are saved in
`Code for Project/MM-DD-YY (Orchestrator)/<study>/`.

Requirements: the `shells` conda env (openseespy 3.8, numpy, scipy, pyvista,
matplotlib) and a plain `python` (3.x, standard library only) on PATH for the
hook.

## Files

| file | role |
|---|---|
| `../agents/ThinShellOrchestrator.md` | the agent: role, expertise, how it uses the rest |
| `../skills/design-boom/SKILL.md` | `/design-boom` entry point (the session becomes the orchestrator) |
| `PROTOCOL.md` | **permissions and ordered instructions**, read before every action |
| `DOMAIN_KNOWLEDGE.md` | thin-shell / buckling / coiling / open-vs-closed boom expertise used to judge results |
| `requirements_template.json` | what the orchestrator fills from the prompt |
| `tools/design_screen.py` | ranks all catalog material x layup x geometry combinations with exact CLT coiling indices and beam/buckling estimates |
| `tools/study.py` | state machine + runner + ledger: enforces the step order, writes case files, runs the skills, sanity checks vs beam theory, calibrates the estimates, schedules convergence and verification, decides when to stop, finalizes |
| `hooks/protocol_gate.py` | Claude Code hook (registered in `../settings.json`): while a study is active, injects the protocol summary and state into every prompt/tool call, blocks forbidden actions, asks before edits of skills/agents and before `git push` |
| `ACTIVE_STUDY` | (local, untracked) path of the active study; the hook does nothing without it |

## A study folder

```
requirements.json  requirements.clean.json  constraints.json  state.json  ledger.csv  REPORT.md
screen/screen.csv  screen/screen_summary.json  screen/last_candidates.json
iterations/it001/  design.json case.json lam.json <name>_opensees.py <name>_code/ results/<name>.npz|png
                   objcon.json logs/*.log  [buckling.json buckling/]  [convergence/]  [abaqus_<name>.py + instructions]
final/             copies of the best design's files (what gets committed, with requirements/constraints/ledger/REPORT)
```

## Loop (PROTOCOL.md section 3)

prompt → `requirements.json` → `study.py init` (screen) → `candidates` →
choose **material → geometry → layup** → `run`: laminate (ABD check), model
(assembled OpenSeesPy script), visualize, failure (Hashin + flattening),
[buckling], objcon → `record` (sanity vs beam theory, ledger, calibration) →
`converge` / `verify` when due → repeat until diminishing returns or **100
iterations** → `finalize` → report and commit.

## Changing the rules

Edit `PROTOCOL.md` (the rules), `study.py` (the enforced order, tolerances
`K_TOL`, `CONV_TOL`, the stop window and the verification schedule) and
`protocol_gate.py` (the blocked actions) together, so that they stay
consistent.
