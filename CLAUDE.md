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
  the `shells` conda env; units N, mm, MPa. Catalogs in `.claude/memory.*`
  are maintained by the CompositeLaminaLibrarian agent.
- Running Log entries: date, person, entry (see `Running Log/`).
