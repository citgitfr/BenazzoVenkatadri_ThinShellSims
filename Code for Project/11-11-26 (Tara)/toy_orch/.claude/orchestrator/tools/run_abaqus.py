"""
Runs an Abaqus/CAE script written by the opensees-to-abaqus / abaqus-export (or
shell-buckling buckling_to_abaqus) skills on THIS machine, under the shared-server
rules of the ME295 project (PROTOCOL.md section 6), and brings the results back
next to the OpenSeesPy script. Standard library only.

  python run_abaqus.py <dir>/abaqus_<name>.py [--cpus N] [--timeout MIN] [-- <size> <S4R|S4>]

Run it in the background: the license queue alone can take minutes.

Rules it enforces (the server is shared; see PROTOCOL.md):
  * everything it writes stays inside the ME295 folder: the script, the run folder
    and Abaqus' scratch (TEMP/TMP) must all resolve inside ME295, else it refuses;
    no Abaqus environment file, install or user setting is created or changed;
  * at most 8 CPUs (--cpus 1..8, default 1: a linear verification job solves in seconds, and every
    extra CPU takes shared license tokens - 50 tokens at 1 CPU, 111 at 8, with a ~9 min license
    queue observed on 2026-11-06; use more only for long nonlinear / buckling jobs). The count reaches the job through the
    ME295_ABAQUS_CPUS environment variable, which the generated scripts clamp to 1..8
    as well (numCpus = numDomains); the CPU count Abaqus actually used is read back
    from the .msg file and reported;
  * one job at a time per call; no other Abaqus command is issued.

What it does:
  1. copies the script alone into a new, empty run folder
     <script dir>/abaqus_runs/<script stem>_<YYYYmmdd_HHMMSS>/; Abaqus scratch (TEMP/TMP) goes to the
     short path <ME295>/abaqus_scratch/<time>_<pid>/ (study paths exceed the 260-character Windows
     limit for scratch files) and is removed after the run;
  2. runs `abaqus cae noGUI=<script> [-- args]` there (cwd = run folder);
  3. checks every job's .sta for "COMPLETED SUCCESSFULLY";
  4. for every completed job runs
     `abaqus python .claude/verification/odb_extract.py <job>.odb <job>_odb.npz` there (the copy
     embedded in the script is unreliable inside CAE 2026 and is skipped when ME295_ABAQUS_RUNNER is set;
     an embedded output, if any, is kept as *_odb_embedded.npz);
  5. copies <job>_odb.npz and <job>_results.txt (and buckling CSVs) next to the
     script, prints <job>_results.txt and the comparator command, exits 0 on success.
"""
import argparse
import datetime as dt
import os
import re
import shutil
import subprocess
import sys
from pathlib import Path

HERE = Path(__file__).resolve().parent
REPO = HERE.parents[2]                      # BenazzoVenkatadri_ThinShellSims
ME295 = REPO.parent                         # the only folder this tool may write into
EXTRACT = REPO / '.claude' / 'verification' / 'odb_extract.py'
MAX_CPUS = 8


def die(msg, code=2):
    print('run_abaqus: ' + msg)
    sys.exit(code)


def inside_me295(p):
    try:
        Path(p).resolve().relative_to(ME295.resolve())
        return True
    except ValueError:
        return False


def find_abaqus():
    exe = shutil.which('abaqus')
    if not exe:
        die('the "abaqus" command is not on PATH on this machine: hand the instructions block to the user instead')
    return exe


def run(cmd, cwd, env, log, timeout_s):
    with open(log, 'a', encoding='utf-8', errors='replace') as f:
        f.write('$ ' + ' '.join(cmd) + f'\n(cwd {cwd})\n')
        f.flush()
        try:
            p = subprocess.run(cmd, cwd=str(cwd), env=env, stdout=f, stderr=subprocess.STDOUT,
                               timeout=timeout_s, text=True)
            return p.returncode
        except subprocess.TimeoutExpired:
            f.write(f'\nTIMEOUT after {timeout_s} s\n')
            return 'timeout'


def threads_used(msg):
    """'1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK' -> 8 (largest product in the .msg)."""
    best = None
    try:
        txt = msg.read_text(encoding='utf-8', errors='replace')
    except OSError:
        return None
    for h, r, t in re.findall(r'(\d+)\s+HOSTS?\s+x\s+(\d+)\s+MPI\s+RANKS?\s+PER\s+HOST\s+x\s+(\d+)\s+THREADS?', txt):
        n = int(h) * int(r) * int(t)
        best = n if best is None else max(best, n)
    return best


def main():
    argv = sys.argv[1:]
    extra = []
    if '--' in argv:
        k = argv.index('--')
        argv, extra = argv[:k], argv[k + 1:]
    ap = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument('script', help='abaqus_<name>.py written by the skills')
    ap.add_argument('--cpus', type=int, default=1, help=f'CPUs for the job, 1..{MAX_CPUS} (default 1)')
    ap.add_argument('--timeout', type=float, default=180, help='minutes before the run is stopped (default 180)')
    a = ap.parse_args(argv)

    if not 1 <= a.cpus <= MAX_CPUS:
        die(f'--cpus {a.cpus} refused: the shared-server rule allows 1..{MAX_CPUS} CPUs')
    script = Path(a.script).resolve()
    if not script.is_file():
        die(f'{script} does not exist')
    if not script.name.startswith('abaqus_') or script.suffix != '.py':
        die(f'{script.name}: only abaqus_<name>.py scripts written by the skills are run')
    if not inside_me295(script):
        die(f'{script} is outside {ME295}: refused (nothing outside the ME295 folder may be touched)')
    if any(s in ' '.join(extra) for s in ('cpus', 'scratch', 'memory', '=')):
        die(f'arguments after -- are only "<size> <S4R|S4>", got {extra}')

    stamp = dt.datetime.now().strftime('%Y%m%d_%H%M%S')
    rdir = script.parent / 'abaqus_runs' / f'{script.stem}_{stamp}'
    # Scratch: short path inside ME295. A scratch folder inside the study's run folder exceeds the
    # Windows 260-character path limit ("Unable to create a temporary directory", 2026-11-06).
    scratch = ME295 / 'abaqus_scratch' / f'{stamp}_{os.getpid()}'
    if not (inside_me295(rdir) and inside_me295(scratch)):
        die(f'run folder {rdir} would be outside {ME295}: refused')
    rdir.mkdir(parents=True, exist_ok=False)
    scratch.mkdir(parents=True, exist_ok=False)
    shutil.copy2(script, rdir / script.name)

    env = dict(os.environ)
    env.update(TEMP=str(scratch), TMP=str(scratch), ME295_ABAQUS_CPUS=str(a.cpus),
               ME295_ABAQUS_RUNNER='1')     # the script skips its in-CAE ODB extraction (step 4 does it)
    abq = find_abaqus()
    log = rdir / 'run_abaqus.log'
    timeout_s = int(a.timeout * 60)
    print(f'run folder: {rdir}\nAbaqus: {abq}\nCPUs: {a.cpus} (cap {MAX_CPUS}); scratch: {scratch}')
    sys.stdout.flush()

    t0 = dt.datetime.now()
    code = run([abq, 'cae', f'noGUI={script.name}', *(['--', *extra] if extra else [])], rdir, env, log, timeout_s)
    minutes = (dt.datetime.now() - t0).total_seconds() / 60
    print(f'abaqus cae finished: exit {code}, {minutes:.1f} min (log {log})')
    if code != 'timeout' and scratch.parent.name == 'abaqus_scratch' and inside_me295(scratch):
        shutil.rmtree(scratch, ignore_errors=True)       # this run's own scratch only

    jobs = sorted(p.stem for p in rdir.glob('*.sta'))
    if not jobs:
        print(log.read_text(encoding='utf-8', errors='replace')[-3000:])
        die('no Abaqus job ran (no .sta file): read the log above and <job>_results.txt / abaqus.rpy in the run folder',
            1)
    ok = True
    for job in jobs:
        sta = (rdir / f'{job}.sta').read_text(encoding='utf-8', errors='replace')
        done = 'COMPLETED SUCCESSFULLY' in sta
        n = threads_used(rdir / f'{job}.msg')
        print(f'job {job}: {"COMPLETED" if done else "NOT COMPLETED"}; CPUs used {n if n else "?"}')
        if n and n > MAX_CPUS:
            print(f'WARNING: {job} used {n} CPUs > {MAX_CPUS}: report this to the user')
        ok &= done
        npz = rdir / f'{job}_odb.npz'
        if done and (rdir / f'{job}.odb').exists():
            # Always re-extract with the standalone `abaqus python`: inside CAE (Abaqus 2026) the embedded
            # extractor either fails ("'NoneType' has no len()") or segfaults CAE after writing (2026-11-06).
            if npz.exists():
                npz.replace(rdir / f'{job}_odb_embedded.npz')
            print(f'extracting {job}.odb with abaqus python odb_extract.py')
            run([abq, 'python', str(EXTRACT), f'{job}.odb', f'{job}_odb.npz'], rdir, env, log, timeout_s)
            print(f'  -> {"written" if npz.exists() else "MISSING (see " + str(log) + ")"}')

    copied = []
    for pat in ('*_odb.npz', '*_results.txt', '*.csv'):
        for f in rdir.glob(pat):
            if f.name.endswith('_odb_embedded.npz'):
                continue
            dst = script.parent / f.name
            if inside_me295(dst):
                shutil.copy2(f, dst)
                copied.append(dst)
    for res in sorted(rdir.glob('*_results.txt')):
        print(f'\n----- {res.name} -----')
        print(res.read_text(encoding='utf-8', errors='replace').strip())
    print('\ncopied next to the script:' + ''.join(f'\n  {c}' for c in copied))
    npzs = [c for c in copied if c.name.endswith('_odb.npz')]
    if not ok or not npzs:
        die('the Abaqus run did not complete or left no _odb.npz: read the run folder files, report to the user', 1)
    print('NEXT: run the OpenSeesAbaqusResultsComparator agent with ONLY the OpenSees results .npz '
          f'(results/<name>.npz) and {npzs[0]}; then study.py verify-result.')


if __name__ == '__main__':
    main()
