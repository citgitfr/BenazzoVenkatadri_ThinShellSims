"""
Protocol gate of the ThinShellOrchestrator (Claude Code hook; stdlib only).

Registered in .claude/settings.json for PreToolUse and UserPromptSubmit. It does
nothing unless a study is active (.claude/orchestrator/ACTIVE_STUDY exists,
written by study.py init, removed by finalize/close). While a study is active:
  - UserPromptSubmit: adds the protocol summary and the study state to the prompt.
  - PreToolUse: adds a one-line state reminder to every tool call, and
      denies   edits of the catalogs (.claude/memory.*) and verifier tools (.claude/verification),
               git add -A / git add . / adding iteration folders, .npz or screen tables,
               force pushes, reset --hard, rebase, clean, package installs;
      asks     before edits of skills, orchestrator, agents or settings files, and before git push.
See PROTOCOL.md section 2. Exit 0 always (a crash of this script must not block work).
"""
import json
import os
import re
import sys
from pathlib import Path

ROOT = Path(os.environ.get('CLAUDE_PROJECT_DIR') or Path(__file__).resolve().parents[3])
ORCH = ROOT / '.claude' / 'orchestrator'
ACTIVE = ORCH / 'ACTIVE_STUDY'

CARD = ('BOOM STUDY ACTIVE - follow .claude/orchestrator/PROTOCOL.md (re-read it now if not read this session). '
        'Loop: prompt->requirements.json->init->candidates->choose material, geometry, layup (from TOP/EXPLORE)->'
        'run laminate, model, visualize (READ the PNG), failure, [buckling], objcon->record->converge/verify when '
        'due->repeat until STOP or 100 iterations->finalize. Numbers come from tool outputs only. Verification '
        '5-10 per prompt, never blocking; comparator agent gets ONLY the two result files. Commit only the paths '
        'finalize lists. Catalogs and verification tools are read-only; skill edits need the user.')

DENY_EDIT = (r'\.claude/memory\.[^/]+/', r'\.claude/verification/')
ASK_EDIT = (r'\.claude/skills/', r'\.claude/orchestrator/', r'\.claude/agents/', r'\.claude/settings[^/]*\.json$',
            r'(^|/)CLAUDE\.md$')
DENY_CMD = ((r'\bgit\s+add\s+(-A\b|--all\b|\.(\s|$)|\*)', 'git add -A / . / *: add the exact paths finalize lists'),
            (r'\bgit\s+add\b[^\n;&|]*(iterations/|\.npz\b|screen/|/logs/)',
             'iteration folders, .npz, screen tables and logs are never committed'),
            (r'\bgit\s+push\b[^\n;&|]*(\s-f\b|--force)', 'force push'),
            (r'\bgit\s+reset\s+--hard\b', 'git reset --hard'),
            (r'\bgit\s+(rebase|clean)\b', 'git rebase / clean'),
            (r'\b(pip|conda|mamba)\s+install\b', 'package installs'))
ASK_CMD = ((r'\bgit\s+push\b', 'git push: only after the user OKs the commit'),)


def state_line():
    try:
        study = ROOT / ACTIVE.read_text(encoding='utf-8').strip()
        st = json.loads((study / 'state.json').read_text(encoding='utf-8'))
        best = st.get('best')
        v = st.get('verification', {})
        return (f'[study {st.get("study")}: iteration {st.get("iteration")}/{st.get("max_iterations")}, phase '
                f'{st.get("phase")}, best {best["design"] if best else "none"}, verifications '
                f'{len(v.get("records", []))} (min {v.get("min")}, max {v.get("max")}); due: convergence '
                f'{st.get("convergence_due")}, verification {st.get("verification_due")}; stop '
                f'{(st.get("stop") or {}).get("recommended", False)}. Do what study.py printed as NEXT.]')
    except Exception as e:                                            # noqa: BLE001
        return f'[study state unreadable: {e}; run study.py status]'


def out(event, decision=None, reason='', context=''):
    h = {'hookEventName': event}
    if decision:
        h['permissionDecision'] = decision
        h['permissionDecisionReason'] = reason
    if context:
        h['additionalContext'] = context
    print(json.dumps({'hookSpecificOutput': h}))


def norm(p):
    return str(p).replace('\\', '/')


def main():
    if not ACTIVE.exists():
        return
    try:
        data = json.load(sys.stdin)
    except Exception:                                                 # noqa: BLE001
        return
    event = data.get('hook_event_name', '')
    if event == 'UserPromptSubmit':
        out(event, context=CARD + ' ' + state_line())
        return
    if event != 'PreToolUse':
        return
    tool, ti = data.get('tool_name', ''), data.get('tool_input') or {}
    ctx = state_line()
    if tool in ('Edit', 'Write', 'NotebookEdit', 'MultiEdit'):
        p = norm(ti.get('file_path') or ti.get('notebook_path') or '')
        for pat in DENY_EDIT:
            if re.search(pat, p):
                return out(event, 'deny', f'PROTOCOL.md section 2: {p} is read-only for the orchestrator '
                                          '(catalogs: CompositeLaminaLibrarian; verification tools: the verifier).',
                           ctx)
        for pat in ASK_EDIT:
            if re.search(pat, p):
                return out(event, 'ask', f'PROTOCOL.md section 2: editing {p} needs the user\'s OK '
                                         '(skill changes also need regression-tests to pass).', ctx)
    if tool in ('Bash', 'PowerShell'):
        cmd = ti.get('command', '')
        for pat, why in DENY_CMD:
            if re.search(pat, cmd):
                return out(event, 'deny', f'PROTOCOL.md section 2 forbids: {why}.', ctx)
        for pat, why in ASK_CMD:
            if re.search(pat, cmd):
                return out(event, 'ask', f'PROTOCOL.md section 6: {why}.', ctx)
    out(event, context=ctx)


if __name__ == '__main__':
    try:
        main()
    except Exception:                                                 # noqa: BLE001
        pass
