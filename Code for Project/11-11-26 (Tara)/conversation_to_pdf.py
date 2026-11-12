"""Turn a Claude Code session transcript (.jsonl) into an HTML page and print it to PDF
with headless Chrome (same route as the earlier Claude Conversations PDFs).

Run with the system Python (needs `markdown`, installed in ./_pylibs):
    python conversation_to_pdf.py <transcript.jsonl> "<output.pdf>" "<title>"
Shows user messages and assistant text in full, tool calls and their results shortened;
thinking blocks and system reminders are left out."""
import html
import json
import re
import subprocess
import sys
from datetime import datetime, timedelta, timezone
from pathlib import Path

HERE = Path(__file__).parent
sys.path.insert(0, str(HERE / '_pylibs'))
import markdown  # noqa: E402

PST = timezone(timedelta(hours=-8))
CHROME = r'C:\Program Files\Google\Chrome\Application\chrome.exe'  # headless Edge wrote nothing here


def md(text):
    return markdown.markdown(text, extensions=['tables', 'fenced_code', 'sane_lists'])


def short(text, lines=14, chars=1600):
    text = text.rstrip()
    ls = text.splitlines()
    cut = len(ls) > lines or len(text) > chars
    text = '\n'.join(ls[:lines])[:chars]
    return text + ('\n[... shortened ...]' if cut else '')


def strip_tags(s):
    s = re.sub(r'<system-reminder>.*?</system-reminder>', '', s, flags=re.S)
    s = re.sub(r'<(local-command-\w+|command-message|command-args)>.*?</\1>', '', s, flags=re.S)
    m = re.search(r'<command-name>(.*?)</command-name>', s, flags=re.S)
    s = re.sub(r'<command-name>.*?</command-name>', '', s, flags=re.S)
    return (f'{m.group(1).strip()} ' if m else '') + s.strip()


def tool_call(b):
    name, inp = b['name'], b.get('input', {})
    if name in ('Bash', 'PowerShell'):
        head = inp.get('description', '')
        body = short(inp.get('command', ''), 18, 2000)
    elif name == 'Write':
        head = inp.get('file_path', '')
        body = short(inp.get('content', ''), 12, 1200)
    elif name == 'Edit':
        head = inp.get('file_path', '')
        body = short('- ' + inp.get('old_string', '') + '\n+ ' + inp.get('new_string', ''), 10, 1000)
    elif name == 'Read':
        head, body = inp.get('file_path', ''), ''
    elif name == 'mcp__ccd_turn__update_plan':
        items = inp.get('items')
        head = 'task list'
        body = '\n'.join(f"[{i['status']}] {i['content']}" for i in items) if items else json.dumps(inp)
    elif name == 'mcp__ccd_turn__wrap_up':
        head, body = 'wrap-up', inp.get('recap', '')
    else:
        head, body = '', short(json.dumps(inp, ensure_ascii=False, indent=1), 10, 1000)
    label = name.replace('mcp__ccd_turn__', '').replace('mcp__', '')
    out = f'<div class="tool"><span class="tn">{html.escape(label)}</span> {html.escape(head)}'
    if body:
        out += f'<pre>{html.escape(body)}</pre>'
    return out + '</div>'


def tool_result(b):
    c = b.get('content', '')
    if isinstance(c, list):
        c = '\n'.join(x.get('text', '[image]') if x.get('type') == 'text' else '[image]' for x in c)
    c = strip_tags(str(c))
    if not c:
        return ''
    cls = 'res err' if b.get('is_error') else 'res'
    return f'<div class="{cls}"><pre>{html.escape(short(c, 10, 1200))}</pre></div>'


def main(src, out_pdf, title):
    recs = [json.loads(l) for l in open(src, encoding='utf-8') if l.strip()]
    parts, first_ts, last_ts = [], None, None
    for d in recs:
        if d.get('type') not in ('user', 'assistant') or d.get('isMeta'):
            continue
        ts = d.get('timestamp')
        t = datetime.fromisoformat(ts.replace('Z', '+00:00')).astimezone(PST) if ts else None
        first_ts = first_ts or t
        last_ts = t or last_ts
        stamp = t.strftime('%H:%M') if t else ''
        c = d['message']['content']
        if d['type'] == 'user':
            if isinstance(c, str):
                s = strip_tags(c)
                if not s:
                    continue
                if s.startswith('<task-notification>'):
                    m = re.search(r'<summary>(.*?)</summary>', s, flags=re.S)
                    note = m.group(1).strip() if m else 'Background task finished'
                    parts.append(f'<div class="tool">[{stamp}] <i>{html.escape(note)}</i></div>')
                elif s.startswith('This session is being continued from a previous conversation'):
                    parts.append(f'<div class="compact"><b>[{stamp}] Context compacted.</b> '
                                 f'The session continued from this automatic summary:{md(s)}</div>')
                else:
                    parts.append(f'<div class="user"><div class="who">User &middot; {stamp}</div>{md(s)}</div>')
            else:
                for b in c:
                    if b.get('type') == 'tool_result':
                        parts.append(tool_result(b))
                    elif b.get('type') == 'text' and strip_tags(b['text']):
                        parts.append(f'<div class="user"><div class="who">User &middot; {stamp}</div>'
                                     f'{md(strip_tags(b["text"]))}</div>')
        else:
            for b in c:
                if b.get('type') == 'text' and b['text'].strip():
                    parts.append(f'<div class="asst"><div class="who">Claude &middot; {stamp}</div>{md(b["text"])}</div>')
                elif b.get('type') == 'tool_use':
                    parts.append(tool_call(b))
    date = first_ts.strftime('%m-%d-%Y') if first_ts else ''
    span = f'{first_ts:%H:%M} - {last_ts:%H:%M} PST' if first_ts else ''
    if first_ts and last_ts and last_ts.date() != first_ts.date():   # session ran past midnight
        span = f'{first_ts:%H:%M} - {last_ts:%m-%d-%Y %H:%M} PST'
    css = """
    body{font-family:Segoe UI,Arial,sans-serif;font-size:10.5pt;line-height:1.38;margin:0;color:#222}
    h1{font-size:16pt;margin:0 0 2px 0} .meta{color:#666;font-size:9pt;margin-bottom:14px}
    .who{font-weight:600;font-size:8.5pt;color:#555;margin-bottom:2px}
    .user{background:#eaf2fb;border-left:4px solid #3b7dd8;padding:6px 10px;margin:14px 0 8px}
    .asst{padding:2px 10px;margin:8px 0;border-left:4px solid #d9822b}
    .compact{background:#f4f4f4;border:1px dashed #999;padding:6px 10px;margin:14px 0;font-size:8.5pt}
    .tool{font-size:8pt;color:#444;margin:3px 0 0 14px} .tn{font-weight:600;color:#7a4d00}
    .res pre{color:#555;background:#fafafa;margin:0 0 4px 14px}
    .err pre{color:#a00}
    pre{font-family:Consolas,monospace;font-size:7.5pt;white-space:pre-wrap;word-break:break-word;
        background:#f6f6f6;padding:4px 6px;margin:2px 0;border-radius:3px}
    table{border-collapse:collapse;font-size:9pt;margin:6px 0} td,th{border:1px solid #bbb;padding:2px 6px}
    th{background:#eee} code{font-family:Consolas,monospace;font-size:9pt;background:#f2f2f2}
    p{margin:4px 0} ul,ol{margin:4px 0 4px 0;padding-left:22px}
    @page{size:Letter;margin:15mm 14mm}
    """
    page = (f'<!DOCTYPE html><html><head><meta charset="utf-8"><title>{html.escape(title)}</title>'
            f'<style>{css}</style></head><body><h1>{html.escape(title)}</h1>'
            f'<div class="meta">Claude Code session, {date}, {span}. User messages and Claude replies in full; '
            f'tool calls and outputs shortened; Claude\'s internal reasoning omitted.</div>'
            + '\n'.join(parts) + '</body></html>')
    out_pdf = Path(out_pdf).resolve()
    work = HERE / '_conv_pdf'
    work.mkdir(exist_ok=True)
    h = work / 'conversation.html'
    h.write_text(page, encoding='utf-8')
    tmp = work / 'conversation.pdf'
    tmp.unlink(missing_ok=True)
    subprocess.run([CHROME, '--headless=new', '--disable-gpu', f'--user-data-dir={work / "chrome_profile"}',
                    '--no-pdf-header-footer', f'--print-to-pdf={tmp}', h.as_uri()],
                   check=True, timeout=300)
    tmp.replace(out_pdf)
    print('wrote', out_pdf, out_pdf.stat().st_size, 'bytes')


if __name__ == '__main__':
    main(*sys.argv[1:4])
