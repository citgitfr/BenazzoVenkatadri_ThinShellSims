# Sandbox changes (toy_orch/.claude only; the repo's .claude is untouched) - 11-11-26, Tara's toy demo
1. study.py run_buckling: requirements buckling.perfect_B_only -> phase A skipped, imperfection amplitude 0, B only (user request).
   Cutoff via buckling.cutoff_factor = 1.0 (path stops once it passes 1000 N mm = root moment of the 1 N tip load).
2. design_screen.py: buckling.screen_reject = false -> the fold-moment estimate does not reject rows (user decision in chat).
3. The perfect-boom label avoids the "no imperfection" sanity trigger (the zero amplitude is the user's instruction);
   iteration 1 was recorded once with that false flag, then its record was undone (ledger row removed, state reset to
   objcon done) and re-recorded.
4. study.py abaqus_buckling_script: Riks max_disp from B's range when there is no A block (perfect_B_only).
