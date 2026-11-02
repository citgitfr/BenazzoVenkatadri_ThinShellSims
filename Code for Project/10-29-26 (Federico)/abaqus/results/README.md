# Abaqus results of the buckling scripts

Upload these files here from the folder where Abaqus ran.

One results file per script:

- `tape_col_L1200_S4R_2p5mm_results.txt`
- `tape_col_L300_S4R_1p25mm_results.txt`
- `tape_opp_L200_S4R_2mm_results.txt`
- `tape_eq_L200_S4R_2mm_results.txt`

Three deformed-shape files per script (from 11/02 on), where `<case>` is
`tape_col_L1200`, `tape_col_L300`, `tape_opp_L200` or `tape_eq_L200`:

- `<case>_shape_LBA_mode1.csv`: the first linear-buckling mode;
- `<case>_shape_RIKS_peak.csv`: the Riks state at the peak load;
- `<case>_shape_RIKS_last.csv`: the Riks state at the last increment.

They are drawn against OpenSees by `../../plot_abaqus_shapes.py`.

If a job fails or a value looks wrong, also upload its `.sta` and `.msg`
files. The jobs are `<case>_LBA`, `<case>_NLB50` (and the other preload
fractions) and `<case>_RIKS`.

Do not upload `.odb`, `.fil`, `.cae` or `.prt` files (large, not needed).
