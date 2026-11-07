# Setting up Git and cloning this repository on a new machine

How to get `BenazzoVenkatadri_ThinShellSims` onto a new computer or server so you can run the
Claude Code agent pipeline and push changes back to GitHub.

Tested on Windows Server 2022 with Windows PowerShell 5.1, using a normal user account (no admin
rights) on 2026-11-06. There are shorter notes for Linux and macOS at the end.

- Repository: https://github.com/citgitfr/BenazzoVenkatadri_ThinShellSims
- Default branch: `main`
- Size: about 150 MB to download (about 170 MB unpacked, about 300 files)

---

## 1. Check whether Git is already installed

```powershell
git --version
```

If this prints a version number, skip to [step 3](#3-clone-the-repository).

To see whether you have a package manager or admin rights:

```powershell
Get-Command winget,choco,scoop -ErrorAction SilentlyContinue
([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)
```

- **If you have `winget`:** run `winget install --id Git.Git -e --source winget`, then go to step 2c.
- **If you have no package manager and no admin rights:** follow step 2. This is the route we used.

---

## 2. Install Git for Windows (user-level, no admin needed)

### 2a. Download the official installer

Download it from the official Git for Windows releases page on GitHub. Use `curl.exe`, not
`Invoke-WebRequest`: in PowerShell 5.1, `Invoke-WebRequest` is extremely slow for large files.

```powershell
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12

# Find the latest 64-bit installer
$r = Invoke-RestMethod "https://api.github.com/repos/git-for-windows/git/releases/latest"
$a = $r.assets | Where-Object { $_.name -match '^Git-[\d\.]+-64-bit\.exe$' }
$a.name; $a.browser_download_url

# Download it to a temporary folder
$dl = "$env:TEMP\gitinstall"; New-Item -ItemType Directory -Force $dl | Out-Null
curl.exe -L --fail -o "$dl\$($a.name)" $a.browser_download_url
```

(We installed `Git-2.56.0.4-64-bit.exe`, release `v2.56.0.windows.4`.)

### 2b. Check the installer's signature, then install

```powershell
$exe = "$dl\$($a.name)"
Get-AuthenticodeSignature $exe | Format-List Status, SignerCertificate
```

`Status` must be `Valid`, and the signer should be the Git for Windows maintainer
(`CN=Johannes Schindelin`). **If it isn't, don't run the installer.**

Install silently for the current user only:

```powershell
Start-Process $exe -Wait -ArgumentList '/VERYSILENT','/NORESTART','/NOCANCEL','/SP-','/SUPPRESSMSGBOXES','/CURRENTUSER','/NORESTARTAPPLICATIONS'
```

Git is installed to `%LOCALAPPDATA%\Programs\Git`, and `...\Git\cmd` is added to your **user** PATH.

### 2c. Check that Git works

**Close and reopen your terminal and any Claude Code sessions** so they pick up the new PATH, then run:

```powershell
git --version
git config --show-origin --get-all credential.helper   # should print "manager"
```

If `git` still isn't found, call it by its full path:
`& "$env:LOCALAPPDATA\Programs\Git\cmd\git.exe" --version`

---

## 3. Clone the repository

`cd` into the folder that should contain the repo. Cloning creates a
`BenazzoVenkatadri_ThinShellSims` subfolder there, so it won't touch existing files in that folder.

```powershell
cd C:\path\to\your\workspace
git clone https://github.com/citgitfr/BenazzoVenkatadri_ThinShellSims.git
cd BenazzoVenkatadri_ThinShellSims
git status -sb        # should show: ## main...origin/main
git log -1 --oneline
```

The repo is public, so you don't need to sign in to clone it.

### Fallback: if you can't install Git

Download a snapshot as a zip file instead. **You can't pull updates into this copy or push changes from it.**

```powershell
curl.exe -L --fail -o repo.zip "https://github.com/citgitfr/BenazzoVenkatadri_ThinShellSims/archive/refs/heads/main.zip"
Expand-Archive repo.zip -DestinationPath .
# Unpacks to .\BenazzoVenkatadri_ThinShellSims-main
```

---

## 4. One-time Git setup (needed before your first commit)

```powershell
git config --global user.name  "Your Name"
git config --global user.email "you@example.com"
```

The first `git push` opens a browser window where you sign in to GitHub; Git Credential Manager
then remembers the sign-in. You can only push if your GitHub account has **write access** to
`citgitfr/BenazzoVenkatadri_ThinShellSims`. Ask the repo owner to add you as a collaborator.

---

## 5. Running the agent pipeline

Claude Code loads `.claude/` (agents, skills, hooks, `settings.json`) and `CLAUDE.md` from the
directory a session **starts in**. Start your Claude Code session with the working directory set to the
repo root (`...\BenazzoVenkatadri_ThinShellSims`), not a parent folder.

---

## 6. Day-to-day workflow

```powershell
git pull                          # get collaborators' latest changes before you start
# ... edit files ...
git status                        # see what changed
git add <files>                   # stage the files you want to commit
git commit -m "Short description of the change"
git push                          # publish to GitHub
```

For bigger changes, use a branch and a pull request:

```powershell
git switch -c my-feature
git push -u origin my-feature     # then open a pull request on GitHub and merge it into main
```

### Things to watch out for

- **The repo is public.** Anything you push is visible to everyone. Don't commit credentials,
  unpublished or restricted data, or anything else sensitive.
- **File size limits:** GitHub rejects files over 100 MB and warns above 50 MB. Abaqus outputs
  (`.odb`, `.cae`, `.dat`, `.msg`, `.npz`, ...) are often that large. Keep them out with
  `.gitignore`, or use Git LFS.
- **Line endings:** Git for Windows checks text files out with CRLF (Windows) line endings and
  commits them with LF (Unix) endings. This is expected, so you can ignore the "LF will be replaced
  by CRLF" warnings.

---

## Linux / macOS

- **Install Git:**
  - Debian/Ubuntu: `sudo apt install git`
  - RHEL/Fedora: `sudo dnf install git`
  - macOS: `xcode-select --install` or `brew install git`
  - If you have no root access: `conda install -c conda-forge git`
- **Clone and configure:** the same as steps 3 and 4.
- **Signing in to GitHub to push:** use the GitHub CLI (`gh auth login`), an SSH key, or a personal
  access token. Git Credential Manager is also available for Linux.
