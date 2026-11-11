# ME295 thin-shell project (Federico Benazzo, Tara Venkatadri)

- Coilable-boom design prompts (requirements on bending stiffness, buckling,
  coiling radius, length) are handled by the **ThinShellOrchestrator**: invoke
  the `design-boom` skill with the prompt, which makes this session the
  orchestrator. Rules: `.claude/orchestrator/PROTOCOL.md`; overview:
  `.claude/orchestrator/README.md`.
- While `.claude/orchestrator/ACTIVE_STUDY` exists, a study is in progress: a
  hook adds its state to every action and blocks the actions PROTOCOL.md
  forbids. Continue it (`study.py status`) or close it (`study.py close`)
  before unrelated work that edits `.claude/`.
- Simulations use the skills in `.claude/skills/` (read each SKILL.md) with
  the `shells` env (on the shared Abaqus server:
  `C:\Users\fbenazzo\Desktop\ME295\envs\shells312\Scripts\python.exe`); units N, mm, MPa.
- Shared Abaqus server: run Abaqus only via `.claude/orchestrator/tools/run_abaqus.py`
  (at most 8 CPUs, default 1), and never write or change anything outside the
  `C:\Users\fbenazzo\Desktop\ME295` folder (PROTOCOL.md section 6a). Catalogs in `.claude/memory.*`
  are maintained by the CompositeLaminaLibrarian agent.
- Running Log entries: date, person, entry (see `Running Log/`).
