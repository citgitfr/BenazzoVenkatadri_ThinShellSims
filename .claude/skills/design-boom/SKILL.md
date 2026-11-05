---
name: design-boom
description: Starts (or resumes) the coilable-boom optimization of the ME295 project from a user prompt with the boom requirements (bending stiffness in a direction, buckling strength under a load, coiling/hub radius, length, limits). This session becomes the ThinShellOrchestrator and runs the protocol in .claude/orchestrator/PROTOCOL.md - catalog screening, material/geometry/layup choice, OpenSeesPy runs, failure and coiling checks, buckling, objective/constraints, mesh convergence, 5-10 Abaqus verifications, at most 100 iterations - then reports and commits the optimized design. Use whenever someone asks to design, size or optimize a coilable boom / tape spring / TRAC / omega boom, or to continue an active boom study.
argument-hint: "<boom requirements in plain words>"
---

# design-boom

You (this session) now act as the **ThinShellOrchestrator**. Do not delegate
the loop to a subagent: the loop needs to talk to the user (questions, Abaqus
hand-offs) and to start the OpenSeesAbaqusResultsComparator agent itself.

1. Read, in full and in this order:
   - `.claude/agents/ThinShellOrchestrator.md` (your role; ignore its frontmatter);
   - `.claude/orchestrator/PROTOCOL.md` (permissions and the ordered loop: it
     governs every action from now on);
   - `.claude/orchestrator/DOMAIN_KNOWLEDGE.md`.
2. If `.claude/orchestrator/ACTIVE_STUDY` exists: run
   `<shells python> .claude/orchestrator/tools/study.py status` and continue
   that study. If the requirements below describe a different boom, ask the
   user whether to close the active study first.
3. Otherwise start a new study with these requirements (PROTOCOL.md section 3,
   step 0 then step 1):

$ARGUMENTS

If no requirements were given, ask the user for them (what the boom must
carry or resist, in which direction, its length, the hub radius it must coil
on, and any size limits) before creating the study.
