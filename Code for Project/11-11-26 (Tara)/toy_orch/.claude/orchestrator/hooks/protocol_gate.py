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
Shared Abaqus server (PROTOCOL.md section 6a), enforced even with no study active: denies edits of
Abaqus environment/install files (abaqus_v6.env, custom_v6.env, C:/SIMULIA/...) and Abaqus commands
asking for more than 8 CPUs; while a study is active, also denies file edits outside the ME295 folder
and any direct `abaqus cae/job/python` call that does not go through tools/run_abaqus.py.
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
        'finalize lists. Catalogs and verification tools are read-only; skill edits need the user. '
        'Abaqus runs here, ONLY via tools/run_abaqus.py, max 8 CPUs (default 1), and NOTHING outside the ME295 '
        'folder may be written or changed (shared server).')

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

# Shared Abaqus server (PROTOCOL.md section 6a). ALWAYS enforced, study or not:
#   no edits of Abaqus env/install files, no Abaqus job with more than 8 CPUs.
# While a study is active, also: no file writes outside the ME295 folder, and Abaqus only via run_abaqus.py.
ME295 = ROOT.parent
MAX_CPUS = 8
ABAQUS_FILES = r'(abaqus_v6\.env|custom_v6\.env|/SIMULIA/|^[A-Za-z]:/SIMULIA\b)'
CPU_ARG = r'(?:--cpus[\s=]+|\bcpus\s*=\s*|numCpus\s*=\s*)(\d+)'


def outside_me295(p):
    if not p:
        return False
    q = Path(p)
    if not q.is_absolute():
        q = ROOT / q
    try:
        q.resolve().relative_to(ME295.resolve())
        return False
    except ValueError:
        return True


def abaqus_guard(tool, ti, active):
    """(decision, reason) for the shared-server Abaqus rules, or None."""
    if tool in ('Edit', 'Write', 'NotebookEdit', 'MultiEdit'):
        p = norm(ti.get('file_path') or ti.get('notebook_path') or '')
        if re.search(ABAQUS_FILES, p, re.I):
            return 'deny', f'PROTOCOL.md 6a: {p} is an Abaqus environment/install file (shared server): never edit it.'
        if active and outside_me295(p):
            return 'deny', f'PROTOCOL.md 6a: {p} is outside the ME295 folder ({ME295}): nothing outside it may change.'
    if tool in ('Bash', 'PowerShell'):
        cmd = ti.get('command', '')
        if re.search(r'\babaqus', cmd, re.I):
            for n in re.findall(CPU_ARG, cmd, re.I):
                if int(n) > MAX_CPUS:
                    return 'deny', f'PROTOCOL.md 6a: {n} CPUs requested; at most {MAX_CPUS} per Abaqus job (shared server).'
            if re.search(r'(>|Set-Content|Out-File|Add-Content|\bcp\b|\bmv\b|Copy-Item|Move-Item)[^\n]*' + ABAQUS_FILES,
                         norm(cmd), re.I):
                return 'deny', 'PROTOCOL.md 6a: never write Abaqus environment or install files (shared server).'
            if active and re.search(r'(^|[\s;&|"\'(])abaqus(\.bat)?\s+(cae|job\s*=|python|interactive|j=)', cmd, re.I) \
                    and 'run_abaqus.py' not in cmd \
                    and not re.search(r'abaqus(\.bat)?\s+python\s+\S*odb_extract\.py', cmd, re.I):
                return 'deny', ('PROTOCOL.md 6a: run Abaqus only through .claude/orchestrator/tools/run_abaqus.py '
                                '(keeps every file inside ME295, caps CPUs at 8).')
    return None


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
    try:
        data = json.load(sys.stdin)
    except Exception:                                                 # noqa: BLE001
        return
    event = data.get('hook_event_name', '')
    active = ACTIVE.exists()
    if event == 'PreToolUse':
        g = abaqus_guard(data.get('tool_name', ''), data.get('tool_input') or {}, active)
        if g:
            return out(event, g[0], g[1], state_line() if active else '')
    if not active:
        return
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
