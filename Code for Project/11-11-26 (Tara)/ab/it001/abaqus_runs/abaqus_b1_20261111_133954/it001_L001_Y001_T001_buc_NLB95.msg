1

   Abaqus 2026                                  Date 11-Nov-2026   Time 13:42:33
   For use by CAL TECH under license from Dassault Systemes or its subsidiary.

                                                                                 
                                                                                 
 STEP    1     INCREMENT     1     STEP TIME    0.00    


                        S T E P       1     S T A T I C   A N A L Y S I S


                                                                                          

     AUTOMATIC TIME CONTROL WITH -
          A SUGGESTED INITIAL TIME INCREMENT OF                0.100    
          AND A TOTAL TIME PERIOD OF                            1.00    
          THE MINIMUM TIME INCREMENT ALLOWED IS                1.000E-06
          THE MAXIMUM TIME INCREMENT ALLOWED IS                0.100    

     LINEAR EQUATION SOLVER TYPE         DIRECT SPARSE

 CONVERGENCE TOLERANCE PARAMETERS FOR FORCE    
     CRITERION FOR RESIDUAL FORCE     FOR A NONLINEAR PROBLEM          5.000E-03
     CRITERION FOR DISP.    CORRECTION IN A NONLINEAR PROBLEM          1.000E-02
     INITIAL VALUE OF TIME AVERAGE FORCE                               1.000E-02
     AVERAGE FORCE     IS TIME AVERAGE FORCE    
     ALTERNATE CRIT. FOR RESIDUAL FORCE     FOR A NONLINEAR PROBLEM    2.000E-02
     CRITERION FOR ZERO FORCE     RELATIVE TO TIME AVRG. FORCE         1.000E-05
     CRITERION FOR RESIDUAL FORCE     WHEN THERE IS ZERO FLUX          1.000E-05
     CRITERION FOR DISP.    CORRECTION WHEN THERE IS ZERO FLUX         1.000E-03
     CRITERION FOR RESIDUAL FORCE     FOR A LINEAR INCREMENT           1.000E-08
     FIELD CONVERSION RATIO                                             1.00    
     CRITERION FOR ZERO FORCE     REL. TO TIME AVRG. MAX. FORCE        1.000E-05
     CRITERION FOR ZERO DISP.    RELATIVE TO CHARACTERISTIC LENGTH     1.000E-08

 CONVERGENCE TOLERANCE PARAMETERS FOR MOMENT   
     CRITERION FOR RESIDUAL MOMENT    FOR A NONLINEAR PROBLEM          5.000E-03
     CRITERION FOR ROTATION CORRECTION IN A NONLINEAR PROBLEM          1.000E-02
     INITIAL VALUE OF TIME AVERAGE MOMENT                              1.000E-02
     AVERAGE MOMENT    IS TIME AVERAGE MOMENT   
     ALTERNATE CRIT. FOR RESIDUAL MOMENT    FOR A NONLINEAR PROBLEM    2.000E-02
     CRITERION FOR ZERO MOMENT    RELATIVE TO TIME AVRG. MOMENT        1.000E-05
     CRITERION FOR RESIDUAL MOMENT    WHEN THERE IS ZERO FLUX          1.000E-05
     CRITERION FOR ROTATION CORRECTION WHEN THERE IS ZERO FLUX         1.000E-03
     CRITERION FOR RESIDUAL MOMENT    FOR A LINEAR INCREMENT           1.000E-08
     FIELD CONVERSION RATIO                                             1.00    
     CRITERION FOR ZERO MOMENT    REL. TO TIME AVRG. MAX. MOMENT       1.000E-05

     VOLUMETRIC STRAIN COMPATIBILITY TOLERANCE FOR HYBRID SOLIDS       1.000E-05
     AXIAL STRAIN COMPATIBILITY TOLERANCE FOR HYBRID BEAMS             1.000E-05
     TRANS. SHEAR STRAIN COMPATIBILITY TOLERANCE FOR HYBRID BEAMS      1.000E-05
     SOFT CONTACT CONSTRAINT COMPATIBILITY TOLERANCE FOR P>P0          5.000E-03
     SOFT CONTACT CONSTRAINT COMPATIBILITY TOLERANCE FOR P=0.0         0.100    
     CONTACT FORCE ERROR TOLERANCE FOR CONVERT SDI=YES                 1.00    
     DISPLACEMENT COMPATIBILITY TOLERANCE FOR DCOUP ELEMENTS           1.000E-05
     ROTATION COMPATIBILITY TOLERANCE FOR DCOUP ELEMENTS               1.000E-05

 EQUILIBRIUM WILL BE CHECKED FOR SEVERE DISCONTINUITY ITERATIONS

 TIME INCREMENTATION CONTROL PARAMETERS:
     FIRST EQUILIBRIUM ITERATION FOR CONSECUTIVE DIVERGENCE CHECK              4
     EQUILIBRIUM ITERATION AT WHICH LOG. CONVERGENCE RATE CHECK BEGINS         8
     EQUILIBRIUM ITERATION AFTER WHICH ALTERNATE RESIDUAL IS USED              9
     MAXIMUM EQUILIBRIUM ITERATIONS ALLOWED                                   16
     EQUILIBRIUM ITERATION COUNT FOR CUT-BACK IN NEXT INCREMENT               10
     MAXIMUM EQUILIB. ITERS IN TWO INCREMENTS FOR TIME INCREMENT INCREASE      4
     MAXIMUM ITERATIONS FOR SEVERE DISCONTINUITIES                            50
     MAXIMUM ATTEMPTS ALLOWED IN AN INCREMENT                                  5
     MAXIMUM DISCON. ITERS IN TWO INCREMENTS FOR TIME INCREMENT INCREASE      50
     MAXIMUM CONTACT AUGMENTATIONS FOR *SURFACE BEHAVIOR,AUGMENTED LAGRANGE   50
     CUT-BACK FACTOR AFTER DIVERGENCE                                 0.2500    
     CUT-BACK FACTOR FOR TOO SLOW CONVERGENCE                         0.5000    
     CUT-BACK FACTOR AFTER TOO MANY EQUILIBRIUM ITERATIONS            0.7500    
     CUT-BACK FACTOR AFTER TOO MANY SEVERE DISCONTINUITY ITERATIONS   0.2500    
     CUT-BACK FACTOR AFTER PROBLEMS IN ELEMENT ASSEMBLY               0.2500    
     INCREASE FACTOR AFTER TWO INCREMENTS THAT CONVERGE QUICKLY        1.500    
     MAX. TIME INCREMENT INCREASE FACTOR ALLOWED                       1.500    
     MAX. TIME INCREMENT INCREASE FACTOR ALLOWED (DYNAMICS)            1.250    
     MAX. TIME INCREMENT INCREASE FACTOR ALLOWED (DIFFUSION)           2.000    
     MINIMUM TIME INCREMENT RATIO FOR EXTRAPOLATION TO OCCUR          0.1000    
     MAX. RATIO OF TIME INCREMENT TO STABILITY LIMIT                   1.000    
     FRACTION OF STABILITY LIMIT FOR NEW TIME INCREMENT               0.9500    
     TIME INCREMENT INCREASE FACTOR BEFORE A TIME POINT                1.000    
     GLOBAL STABILIZATION CONTROL IS NOT USED

          PRINT OF INCREMENT NUMBER, TIME, ETC., EVERY    1  INCREMENTS

     THE MAXIMUM NUMBER OF INCREMENTS IN THIS STEP IS                   1000

          LARGE DISPLACEMENT THEORY WILL BE USED

     LINEAR EXTRAPOLATION WILL BE USED

     CHARACTERISTIC ELEMENT LENGTH      4.91    

     DETAILS REGARDING ACTUAL SOLUTION WAVEFRONT REQUESTED

     DETAILED OUTPUT OF DIAGNOSTICS TO DATABASE REQUESTED

     PRINT OF INCREMENT NUMBER, TIME, ETC., TO THE MESSAGE FILE EVERY     1  INCREMENTS

     ELEMENT OPERATIONS WILL BE CARRIED OUT IN PARALLEL USING   8 THREADS ON 1 DOMAIN

     PARALLEL CONTACT TRACKING ENABLED


     COLLECTING MODEL CONSTRAINT INFORMATION FOR OVERCONSTRAINT CHECKS

     COLLECTING STEP CONSTRAINT INFORMATION FOR OVERCONSTRAINT CHECKS


  INCREMENT     1 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  0.100    
 
     INITIAL ELEMENT LOAD BALANCE
            DOMAIN    1     THREAD    NUMBER OF ELEMENTS
                              1            320
                              2            280
                              3            320
                              4            360
                              5            320
                              6            360
                              7            320
                              8            320
      SPARSE STORAGE WAS USED FOR NODAL DATA ON WORKER THREADS
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  55ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      0.792       TIME AVG. FORCE       0.792    
 LARGEST SCALED RESIDUAL FORCE      -60.9       AT NODE          2   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE      -60.9    
 LARGEST INCREMENT OF DISP.         -5.40       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        -5.40       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     1.679E-02   TIME AVG. MOMENT      1.679E-02
 LARGEST SCALED RESIDUAL MOMENT     -5.82       AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     -5.82    
 LARGEST INCREMENT OF ROTATION      1.081E-02   AT NODE         17   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.081E-02   AT NODE         17   DOF  5
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  47ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                      0.779       TIME AVG. FORCE       0.779    
 LARGEST SCALED RESIDUAL FORCE     -4.435E-02   AT NODE       2114   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -4.435E-02
 LARGEST INCREMENT OF DISP.         -5.43       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -0.101       AT NODE       1904   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     1.352E-02   TIME AVG. MOMENT      1.352E-02
 LARGEST SCALED RESIDUAL MOMENT     2.102E-02   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     2.102E-02
 LARGEST INCREMENT OF ROTATION      1.086E-02   AT NODE         36   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     6.544E-03   AT NODE       1718   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  50ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                      0.782       TIME AVG. FORCE       0.782    
 LARGEST SCALED RESIDUAL FORCE     -0.156       AT NODE        995   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -0.156    
 LARGEST INCREMENT OF DISP.         -5.45       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        0.123       AT NODE        995   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     1.361E-02   TIME AVG. MOMENT      1.361E-02
 LARGEST SCALED RESIDUAL MOMENT    -1.497E-02   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT    -1.497E-02
 LARGEST INCREMENT OF ROTATION      1.093E-02   AT NODE         36   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -8.338E-03   AT NODE        995   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  50ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     4


 AVERAGE FORCE                      0.779       TIME AVG. FORCE       0.779    
 LARGEST SCALED RESIDUAL FORCE     -2.717E-02   AT NODE       1919   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -2.717E-02
 LARGEST INCREMENT OF DISP.         -5.47       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -5.760E-02   AT NODE       1820   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     1.365E-02   TIME AVG. MOMENT      1.365E-02
 LARGEST SCALED RESIDUAL MOMENT    -6.051E-04   AT NODE       2113   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT    -6.051E-04
 LARGEST INCREMENT OF ROTATION      1.330E-02   AT NODE       1467   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     3.432E-03   AT NODE       1946   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  49ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     5


 AVERAGE FORCE                      0.781       TIME AVG. FORCE       0.781    
 LARGEST SCALED RESIDUAL FORCE     -7.058E-02   AT NODE       1274   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -7.058E-02
 LARGEST INCREMENT OF DISP.         -5.48       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        7.691E-02   AT NODE       1247   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     1.371E-02   TIME AVG. MOMENT      1.371E-02
 LARGEST SCALED RESIDUAL MOMENT    -8.757E-04   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT    -8.757E-04
 LARGEST INCREMENT OF ROTATION      1.682E-02   AT NODE       1356   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     5.650E-03   AT NODE       1274   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  47ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     6


 AVERAGE FORCE                      0.780       TIME AVG. FORCE       0.780    
 LARGEST SCALED RESIDUAL FORCE     -4.651E-03   AT NODE       1834   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -4.651E-03
 LARGEST INCREMENT OF DISP.         -5.48       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.966E-02   AT NODE       1765   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     1.372E-02   TIME AVG. MOMENT      1.372E-02
 LARGEST SCALED RESIDUAL MOMENT    -6.502E-05   AT NODE       1472   DOF  4
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT    -6.502E-05
 LARGEST INCREMENT OF ROTATION      1.769E-02   AT NODE       1412   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.455E-03   AT NODE       1848   DOF  4
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF ROTATION CORRECTION    1.563E-04
          MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  46ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     7


 AVERAGE FORCE                      0.780       TIME AVG. FORCE       0.780    
 LARGEST SCALED RESIDUAL FORCE     -5.175E-03   AT NODE       1456   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -5.175E-03
 LARGEST INCREMENT OF DISP.         -5.48       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.977E-02   AT NODE       1429   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     1.374E-02   TIME AVG. MOMENT      1.374E-02
 LARGEST SCALED RESIDUAL MOMENT    -4.412E-05   AT NODE       1749   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT    -4.412E-05
 LARGEST INCREMENT OF ROTATION      1.883E-02   AT NODE       1412   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -1.545E-03   AT NODE       1443   DOF  4
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  49ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     8


 AVERAGE FORCE                      0.780       TIME AVG. FORCE       0.780    
 LARGEST SCALED RESIDUAL FORCE     -2.940E-05   AT NODE       1708   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -2.940E-05
 LARGEST INCREMENT OF DISP.         -5.48       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -1.426E-03   AT NODE       1680   DOF  2
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     1.374E-02   TIME AVG. MOMENT      1.374E-02
 LARGEST SCALED RESIDUAL MOMENT    -5.521E-07   AT NODE       1528   DOF  4
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT    -5.521E-07
 LARGEST INCREMENT OF ROTATION      1.891E-02   AT NODE       1412   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -1.173E-04   AT NODE       1709   DOF  4
   INSTANCE: SHELL-1                                                                         
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED

 ITERATION SUMMARY FOR THE INCREMENT:   8 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  8 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  0.100    ,  FRACTION OF STEP COMPLETED  0.100    
 STEP TIME COMPLETED       0.100    ,  TOTAL TIME COMPLETED        0.100    


  INCREMENT     2 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  0.100    
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  51ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       1.80       TIME AVG. FORCE        1.29    
 LARGEST SCALED RESIDUAL FORCE      -2.91       AT NODE       1317   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      -2.91    
 LARGEST INCREMENT OF DISP.         -5.78       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        0.622       AT NODE       1345   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     8.190E-02   TIME AVG. MOMENT      4.782E-02
 LARGEST SCALED RESIDUAL MOMENT     -7.59       AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     -7.59    
 LARGEST INCREMENT OF ROTATION      5.422E-02   AT NODE       1370   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -3.543E-02   AT NODE       1317   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  50ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       1.61       TIME AVG. FORCE        1.20    
 LARGEST SCALED RESIDUAL FORCE     -4.762E-02   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE     -4.762E-02
 LARGEST INCREMENT OF DISP.         -5.95       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -0.168       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.209       TIME AVG. MOMENT      0.112    
 LARGEST SCALED RESIDUAL MOMENT     0.144       AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     0.144    
 LARGEST INCREMENT OF ROTATION     -5.409E-02   AT NODE       1361   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -2.160E-03   AT NODE       1191   DOF  5
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  49ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       1.62       TIME AVG. FORCE        1.20    
 LARGEST SCALED RESIDUAL FORCE     -0.413       AT NODE       1233   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -0.413    
 LARGEST INCREMENT OF DISP.         -5.91       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -0.179       AT NODE       1275   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.236       TIME AVG. MOMENT      0.125    
 LARGEST SCALED RESIDUAL MOMENT    -1.129E-02   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT    -1.129E-02
 LARGEST INCREMENT OF ROTATION     -4.432E-02   AT NODE       1404   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.372E-02   AT NODE       1233   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  47ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     4


 AVERAGE FORCE                       1.61       TIME AVG. FORCE        1.19    
 LARGEST SCALED RESIDUAL FORCE      3.654E-05   AT NODE       1190   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      3.654E-05
 LARGEST INCREMENT OF DISP.         -5.91       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -1.405E-03   AT NODE       1330   DOF  3
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     0.236       TIME AVG. MOMENT      0.125    
 LARGEST SCALED RESIDUAL MOMENT    -4.127E-05   AT NODE       1304   DOF  4
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT    -4.127E-05
 LARGEST INCREMENT OF ROTATION     -4.439E-02   AT NODE       1404   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     8.617E-05   AT NODE       1398   DOF  4
   INSTANCE: SHELL-1                                                                         
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED

 ITERATION SUMMARY FOR THE INCREMENT:   4 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  4 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  0.100    ,  FRACTION OF STEP COMPLETED  0.200    
 STEP TIME COMPLETED       0.200    ,  TOTAL TIME COMPLETED        0.200    


  INCREMENT     3 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  0.100    
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  47ms


 ***WARNING: THE SYSTEM MATRIX HAS 1 NEGATIVE EIGENVALUES.

     NEGATIVE EIGENVALUES MEAN THAT THE SYSTEM MATRIX IS NOT 
     POSITIVE DEFINITE:
     FOR EXAMPLE, A BIFURCATION (BUCKLING) LOAD MAY HAVE BEEN EXCEEDED.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       545.       TIME AVG. FORCE        182.    
 LARGEST SCALED RESIDUAL FORCE      5.760E+03   AT NODE       1121   DOF  2
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      5.760E+03
 LARGEST INCREMENT OF DISP.         -67.2       AT NODE       1149   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        -68.0       AT NODE       1149   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     1.067E+03   TIME AVG. MOMENT       356.    
 LARGEST SCALED RESIDUAL MOMENT    -5.791E+04   AT NODE       1192   DOF  4
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT    -5.791E+04
 LARGEST INCREMENT OF ROTATION       4.70       AT NODE       1732   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION      5.85       AT NODE       1107   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  53ms


 ***WARNING: THE SYSTEM MATRIX HAS 3230 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                      1.180E+07   TIME AVG. FORCE       3.934E+06
 LARGEST SCALED RESIDUAL FORCE     -1.105E+10   AT NODE       2184   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -1.105E+10
 LARGEST INCREMENT OF DISP.          500.       AT NODE       2035   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.         504.       AT NODE       2035   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     2.377E+05   TIME AVG. MOMENT      7.923E+04
 LARGEST SCALED RESIDUAL MOMENT     2.899E+07   AT NODE       2183   DOF  4
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     2.899E+07
 LARGEST INCREMENT OF ROTATION      -6.13       AT NODE       2558   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     6.064E+03   AT NODE       2163   DOF  6
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  50ms


 ***WARNING: THE SYSTEM MATRIX HAS 7147 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                      8.597E+09   TIME AVG. FORCE       2.866E+09
 LARGEST SCALED RESIDUAL FORCE     -2.387E+13   AT NODE        897   DOF  2
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -2.387E+13
 LARGEST INCREMENT OF DISP.         2.651E+03   AT NODE       2730   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        2.671E+03   AT NODE       2730   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     1.691E+06   TIME AVG. MOMENT      5.637E+05
 LARGEST SCALED RESIDUAL MOMENT     2.642E+08   AT NODE       2729   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     2.642E+08
 LARGEST INCREMENT OF ROTATION       5.82       AT NODE        258   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION      672.       AT NODE        827   DOF  5
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  46ms


 ***WARNING: THE SYSTEM MATRIX HAS 7559 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     4


 AVERAGE FORCE                      2.061E+09   TIME AVG. FORCE       6.870E+08
 LARGEST SCALED RESIDUAL FORCE     -3.475E+12   AT NODE       1545   DOF  2
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -3.475E+12
 LARGEST INCREMENT OF DISP.        -2.141E+03   AT NODE        897   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -1.524E+03   AT NODE       1582   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     1.395E+06   TIME AVG. MOMENT      4.650E+05
 LARGEST SCALED RESIDUAL MOMENT    -1.894E+08   AT NODE        910   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT    -1.894E+08
 LARGEST INCREMENT OF ROTATION       5.79       AT NODE          2   DOF  5
   INSTANCE: {assembly node}                                                                 
 LARGEST CORRECTION TO ROTATION     -598.       AT NODE       1989   DOF  6
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  45ms


 ***WARNING: THE SYSTEM MATRIX HAS 7607 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     5


 AVERAGE FORCE                      3.368E+08   TIME AVG. FORCE       1.123E+08
 LARGEST SCALED RESIDUAL FORCE     -4.578E+11   AT NODE       1545   DOF  2
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -4.578E+11
 LARGEST INCREMENT OF DISP.        -1.709E+03   AT NODE        897   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -1.354E+03   AT NODE       1301   DOF  1
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     7.238E+05   TIME AVG. MOMENT      2.413E+05
 LARGEST SCALED RESIDUAL MOMENT     7.528E+07   AT NODE       1287   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     7.528E+07
 LARGEST INCREMENT OF ROTATION       5.83       AT NODE          2   DOF  5
   INSTANCE: {assembly node}                                                                 
 LARGEST CORRECTION TO ROTATION      407.       AT NODE       1246   DOF  6
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  46ms


 ***WARNING: THE SYSTEM MATRIX HAS 7493 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     6


 AVERAGE FORCE                      1.369E+10   TIME AVG. FORCE       4.565E+09
 LARGEST SCALED RESIDUAL FORCE     -3.745E+13   AT NODE       2165   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -3.745E+13
 LARGEST INCREMENT OF DISP.         3.266E+03   AT NODE       2165   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        3.214E+03   AT NODE       2165   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     2.071E+06   TIME AVG. MOMENT      6.903E+05
 LARGEST SCALED RESIDUAL MOMENT     4.351E+08   AT NODE       2039   DOF  5
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     4.351E+08
 LARGEST INCREMENT OF ROTATION       5.77       AT NODE          2   DOF  5
   INSTANCE: {assembly node}                                                                 
 LARGEST CORRECTION TO ROTATION    -1.585E+03   AT NODE       2721   DOF  6
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.


 ***NOTE: THE SOLUTION APPEARS TO BE DIVERGING. CONVERGENCE IS JUDGED UNLIKELY.


  INCREMENT     3 STARTS. ATTEMPT NUMBER  2, TIME INCREMENT  2.500E-02
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  51ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       1.83       TIME AVG. FORCE        1.40    
 LARGEST SCALED RESIDUAL FORCE     -8.380E-02   AT NODE         27   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -8.380E-02
 LARGEST INCREMENT OF DISP.         -1.60       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -0.122       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.383       TIME AVG. MOMENT      0.211    
 LARGEST SCALED RESIDUAL MOMENT    -0.417       AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT    -0.417    
 LARGEST INCREMENT OF ROTATION      1.635E-02   AT NODE       1411   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     5.251E-03   AT NODE       1411   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  45ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       1.83       TIME AVG. FORCE        1.41    
 LARGEST SCALED RESIDUAL FORCE     -7.249E-04   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE     -7.249E-04
 LARGEST INCREMENT OF DISP.         -1.61       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -1.070E-02   AT NODE         27   DOF  3
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     0.409       TIME AVG. MOMENT      0.220    
 LARGEST SCALED RESIDUAL MOMENT     8.307E-05   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     8.307E-05
 LARGEST INCREMENT OF ROTATION      1.637E-02   AT NODE       1411   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -2.542E-04   AT NODE         28   DOF  4
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF ROTATION CORRECTION    5.062E-08
          MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 ITERATION SUMMARY FOR THE INCREMENT:   2 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  2 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  2.500E-02,  FRACTION OF STEP COMPLETED  0.225    
 STEP TIME COMPLETED       0.225    ,  TOTAL TIME COMPLETED        0.225    


  INCREMENT     4 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  3.750E-02
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  42ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       2.17       TIME AVG. FORCE        1.60    
 LARGEST SCALED RESIDUAL FORCE     -7.458E-02   AT NODE         27   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -7.458E-02
 LARGEST INCREMENT OF DISP.         -2.56       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -0.149       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.348       TIME AVG. MOMENT      0.252    
 LARGEST SCALED RESIDUAL MOMENT    -0.123       AT NODE         21   DOF  5
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT    -0.123    
 LARGEST INCREMENT OF ROTATION     -2.943E-02   AT NODE       1404   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     5.010E-03   AT NODE       1410   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  45ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       2.17       TIME AVG. FORCE        1.60    
 LARGEST SCALED RESIDUAL FORCE     -6.921E-04   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE     -6.921E-04
 LARGEST INCREMENT OF DISP.         -2.58       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -1.519E-02   AT NODE         27   DOF  3
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     0.337       TIME AVG. MOMENT      0.249    
 LARGEST SCALED RESIDUAL MOMENT     1.555E-03   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     1.555E-03
 LARGEST INCREMENT OF ROTATION     -2.958E-02   AT NODE       1404   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -2.201E-04   AT NODE         28   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  47ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       2.17       TIME AVG. FORCE        1.60    
 LARGEST SCALED RESIDUAL FORCE     -4.073E-05   AT NODE       1316   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -4.073E-05
 LARGEST INCREMENT OF DISP.         -2.58       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -2.602E-03   AT NODE       1372   DOF  2
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     0.336       TIME AVG. MOMENT      0.249    
 LARGEST SCALED RESIDUAL MOMENT    -2.253E-06   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT    -2.253E-06
 LARGEST INCREMENT OF ROTATION      2.975E-02   AT NODE       1411   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.667E-04   AT NODE       1397   DOF  4
   INSTANCE: SHELL-1                                                                         
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED

 ITERATION SUMMARY FOR THE INCREMENT:   3 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  3 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  3.750E-02,  FRACTION OF STEP COMPLETED  0.263    
 STEP TIME COMPLETED       0.263    ,  TOTAL TIME COMPLETED        0.263    


  INCREMENT     5 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  5.625E-02
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  45ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       2.82       TIME AVG. FORCE        1.84    
 LARGEST SCALED RESIDUAL FORCE      -1.12       AT NODE       1359   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      -1.12    
 LARGEST INCREMENT OF DISP.         -4.47       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -0.597       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.128       TIME AVG. MOMENT      0.225    
 LARGEST SCALED RESIDUAL MOMENT     -1.46       AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     -1.46    
 LARGEST INCREMENT OF ROTATION     -7.048E-02   AT NODE       1404   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -2.586E-02   AT NODE       1390   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  47ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       2.77       TIME AVG. FORCE        1.83    
 LARGEST SCALED RESIDUAL FORCE     -3.807E-02   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE     -3.807E-02
 LARGEST INCREMENT OF DISP.         -4.63       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -0.165       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.292       TIME AVG. MOMENT      0.257    
 LARGEST SCALED RESIDUAL MOMENT     8.922E-02   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     8.922E-02
 LARGEST INCREMENT OF ROTATION     -7.051E-02   AT NODE       1404   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -1.439E-03   AT NODE       1274   DOF  5
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  47ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       2.77       TIME AVG. FORCE        1.83    
 LARGEST SCALED RESIDUAL FORCE      1.885E-02   AT NODE       1397   DOF  2
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      1.885E-02
 LARGEST INCREMENT OF DISP.         -4.70       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -6.820E-02   AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.291       TIME AVG. MOMENT      0.257    
 LARGEST SCALED RESIDUAL MOMENT     1.102E-03   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     1.102E-03
 LARGEST INCREMENT OF ROTATION     -7.320E-02   AT NODE       1404   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -4.118E-03   AT NODE       1405   DOF  4
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF ROTATION CORRECTION   -5.086E-05
          MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  47ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     4


 AVERAGE FORCE                       2.77       TIME AVG. FORCE        1.83    
 LARGEST SCALED RESIDUAL FORCE     -9.968E-07   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE     -9.968E-07
 LARGEST INCREMENT OF DISP.         -4.70       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -7.071E-04   AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     0.291       TIME AVG. MOMENT      0.257    
 LARGEST SCALED RESIDUAL MOMENT     9.073E-07   AT NODE       1409   DOF  4
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     9.073E-07
 LARGEST INCREMENT OF ROTATION     -7.322E-02   AT NODE       1404   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -2.285E-05   AT NODE       1447   DOF  4
   INSTANCE: SHELL-1                                                                         
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED

 ITERATION SUMMARY FOR THE INCREMENT:   4 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  4 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  5.625E-02,  FRACTION OF STEP COMPLETED  0.319    
 STEP TIME COMPLETED       0.319    ,  TOTAL TIME COMPLETED        0.319    


  INCREMENT     6 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  8.438E-02
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  51ms


 ***WARNING: THE SYSTEM MATRIX HAS 5 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       33.0       TIME AVG. FORCE        7.03    
 LARGEST SCALED RESIDUAL FORCE       591.       AT NODE       1120   DOF  2
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE       591.    
 LARGEST INCREMENT OF DISP.         -6.38       AT NODE       1100   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.         4.99       AT NODE        574   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                      12.6       TIME AVG. MOMENT       2.32    
 LARGEST SCALED RESIDUAL MOMENT      449.       AT NODE       1116   DOF  4
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT      449.    
 LARGEST INCREMENT OF ROTATION      0.971       AT NODE       1120   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     0.891       AT NODE       1106   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  48ms


 ***WARNING: THE SYSTEM MATRIX HAS 623 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       76.8       TIME AVG. FORCE        14.3    
 LARGEST SCALED RESIDUAL FORCE     -1.106E+04   AT NODE        923   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -1.106E+04
 LARGEST INCREMENT OF DISP.         -23.0       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        -19.5       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                      65.4       TIME AVG. MOMENT       11.1    
 LARGEST SCALED RESIDUAL MOMENT    -4.491E+03   AT NODE        937   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT    -4.491E+03
 LARGEST INCREMENT OF ROTATION      -3.76       AT NODE       1048   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     -10.7       AT NODE       1152   DOF  5
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  49ms


 ***WARNING: THE SYSTEM MATRIX HAS 1184 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                      5.164E+05   TIME AVG. FORCE       8.607E+04
 LARGEST SCALED RESIDUAL FORCE      1.896E+08   AT NODE       2213   DOF  2
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      1.896E+08
 LARGEST INCREMENT OF DISP.         -868.       AT NODE       2255   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        -867.       AT NODE       2255   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     7.241E+04   TIME AVG. MOMENT      1.207E+04
 LARGEST SCALED RESIDUAL MOMENT     6.965E+07   AT NODE       2267   DOF  4
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     6.965E+07
 LARGEST INCREMENT OF ROTATION       6.19       AT NODE       2522   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION      339.       AT NODE       1331   DOF  6
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  49ms


 ***WARNING: THE SYSTEM MATRIX HAS 5808 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     4


 AVERAGE FORCE                      5.245E+10   TIME AVG. FORCE       8.741E+09
 LARGEST SCALED RESIDUAL FORCE      8.965E+13   AT NODE       1497   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      8.965E+13
 LARGEST INCREMENT OF DISP.         2.225E+03   AT NODE       1498   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        2.230E+03   AT NODE       1498   DOF  1
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     4.897E+06   TIME AVG. MOMENT      8.162E+05
 LARGEST SCALED RESIDUAL MOMENT     3.961E+10   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     3.961E+10
 LARGEST INCREMENT OF ROTATION       5.95       AT NODE       1465   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     6.665E+03   AT NODE         15   DOF  5
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.


 ***NOTE: THE SOLUTION APPEARS TO BE DIVERGING. CONVERGENCE IS JUDGED UNLIKELY.


  INCREMENT     6 STARTS. ATTEMPT NUMBER  2, TIME INCREMENT  2.109E-02
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  47ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       3.14       TIME AVG. FORCE        2.05    
 LARGEST SCALED RESIDUAL FORCE      -1.10       AT NODE          2   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE      -1.10    
 LARGEST INCREMENT OF DISP.         -2.50       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -0.740       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.178       TIME AVG. MOMENT      0.244    
 LARGEST SCALED RESIDUAL MOMENT    -0.320       AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT    -0.320    
 LARGEST INCREMENT OF ROTATION      5.695E-02   AT NODE       1411   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     2.950E-02   AT NODE       1411   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  51ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       3.08       TIME AVG. FORCE        2.04    
 LARGEST SCALED RESIDUAL FORCE     -2.225E-02   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE     -2.225E-02
 LARGEST INCREMENT OF DISP.         -2.62       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -0.121       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.251       TIME AVG. MOMENT      0.256    
 LARGEST SCALED RESIDUAL MOMENT     3.433E-02   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     3.433E-02
 LARGEST INCREMENT OF ROTATION      5.709E-02   AT NODE       1411   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     9.378E-04   AT NODE       1166   DOF  6
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  50ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       3.17       TIME AVG. FORCE        2.06    
 LARGEST SCALED RESIDUAL FORCE     -0.785       AT NODE       1409   DOF  2
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -0.785    
 LARGEST INCREMENT OF DISP.         -3.20       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -0.581       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.198       TIME AVG. MOMENT      0.247    
 LARGEST SCALED RESIDUAL MOMENT     9.234E-02   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     9.234E-02
 LARGEST INCREMENT OF ROTATION      8.227E-02   AT NODE       1410   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     2.638E-02   AT NODE       1410   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  48ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     4


 AVERAGE FORCE                       3.13       TIME AVG. FORCE        2.05    
 LARGEST SCALED RESIDUAL FORCE     -1.252E-03   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE     -1.252E-03
 LARGEST INCREMENT OF DISP.         -3.23       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -2.411E-02   AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     0.235       TIME AVG. MOMENT      0.253    
 LARGEST SCALED RESIDUAL MOMENT     2.488E-04   AT NODE       1410   DOF  4
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     2.488E-04
 LARGEST INCREMENT OF ROTATION      8.242E-02   AT NODE       1410   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -2.192E-04   AT NODE       1406   DOF  4
   INSTANCE: SHELL-1                                                                         
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED

 ITERATION SUMMARY FOR THE INCREMENT:   4 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  4 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  2.109E-02,  FRACTION OF STEP COMPLETED  0.340    
 STEP TIME COMPLETED       0.340    ,  TOTAL TIME COMPLETED        0.340    


  INCREMENT     7 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  3.164E-02
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  48ms


 ***WARNING: THE SYSTEM MATRIX HAS 46 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       621.       TIME AVG. FORCE        90.5    
 LARGEST SCALED RESIDUAL FORCE     -4.231E+04   AT NODE       1883   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -4.231E+04
 LARGEST INCREMENT OF DISP.          76.1       AT NODE       1044   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.         76.9       AT NODE       1044   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                      683.       TIME AVG. MOMENT       97.7    
 LARGEST SCALED RESIDUAL MOMENT     1.202E+05   AT NODE       1686   DOF  4
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     1.202E+05
 LARGEST INCREMENT OF ROTATION       6.22       AT NODE       1619   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     -10.3       AT NODE       1703   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  47ms


 ***WARNING: THE SYSTEM MATRIX HAS 2503 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                      2.905E+09   TIME AVG. FORCE       4.151E+08
 LARGEST SCALED RESIDUAL FORCE     -2.915E+12   AT NODE       2360   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -2.915E+12
 LARGEST INCREMENT OF DISP.         4.149E+03   AT NODE       2359   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        4.148E+03   AT NODE       2359   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     2.408E+06   TIME AVG. MOMENT      3.440E+05
 LARGEST SCALED RESIDUAL MOMENT     1.132E+09   AT NODE       2373   DOF  5
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     1.132E+09
 LARGEST INCREMENT OF ROTATION       5.85       AT NODE        247   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.544E+04   AT NODE       2238   DOF  5
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  48ms


 ***WARNING: THE SYSTEM MATRIX HAS 6641 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                      1.518E+14   TIME AVG. FORCE       2.169E+13
 LARGEST SCALED RESIDUAL FORCE     -1.290E+17   AT NODE       1739   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -1.290E+17
 LARGEST INCREMENT OF DISP.         1.123E+04   AT NODE       1767   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.118E+04   AT NODE       1767   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     6.243E+07   TIME AVG. MOMENT      8.918E+06
 LARGEST SCALED RESIDUAL MOMENT    -2.028E+10   AT NODE       1748   DOF  5
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT    -2.028E+10
 LARGEST INCREMENT OF ROTATION       5.56       AT NODE        150   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -4.377E+03   AT NODE       1698   DOF  6
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  49ms


 ***WARNING: THE SYSTEM MATRIX HAS 7619 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     4


 AVERAGE FORCE                      2.001E+13   TIME AVG. FORCE       2.859E+12
 LARGEST SCALED RESIDUAL FORCE     -1.699E+16   AT NODE       1739   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -1.699E+16
 LARGEST INCREMENT OF DISP.         7.680E+03   AT NODE       1767   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -4.119E+03   AT NODE       1739   DOF  1
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     2.992E+07   TIME AVG. MOMENT      4.274E+06
 LARGEST SCALED RESIDUAL MOMENT     3.092E+11   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     3.092E+11
 LARGEST INCREMENT OF ROTATION       5.91       AT NODE        913   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     2.254E+03   AT NODE        659   DOF  6
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  49ms


 ***WARNING: THE SYSTEM MATRIX HAS 7699 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     5


 AVERAGE FORCE                      2.645E+12   TIME AVG. FORCE       3.778E+11
 LARGEST SCALED RESIDUAL FORCE     -2.238E+15   AT NODE       1739   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -2.238E+15
 LARGEST INCREMENT OF DISP.        -5.359E+03   AT NODE       1722   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        3.022E+03   AT NODE       2489   DOF  1
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     1.563E+07   TIME AVG. MOMENT      2.233E+06
 LARGEST SCALED RESIDUAL MOMENT     3.767E+10   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     3.767E+10
 LARGEST INCREMENT OF ROTATION       5.42       AT NODE       1316   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -1.224E+03   AT NODE       1037   DOF  5
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  49ms


 ***WARNING: THE SYSTEM MATRIX HAS 7667 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     6


 AVERAGE FORCE                      3.503E+11   TIME AVG. FORCE       5.004E+10
 LARGEST SCALED RESIDUAL FORCE     -2.947E+14   AT NODE       1739   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -2.947E+14
 LARGEST INCREMENT OF DISP.         4.183E+03   AT NODE       1767   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -2.319E+03   AT NODE       1739   DOF  1
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     7.142E+06   TIME AVG. MOMENT      1.020E+06
 LARGEST SCALED RESIDUAL MOMENT     5.895E+09   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     5.895E+09
 LARGEST INCREMENT OF ROTATION      -5.86       AT NODE        754   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -1.253E+03   AT NODE       1860   DOF  6
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  47ms


 ***WARNING: THE SYSTEM MATRIX HAS 7598 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     7


 AVERAGE FORCE                      4.812E+10   TIME AVG. FORCE       6.875E+09
 LARGEST SCALED RESIDUAL FORCE     -3.880E+13   AT NODE       1739   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -3.880E+13
 LARGEST INCREMENT OF DISP.         3.178E+03   AT NODE       1767   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        3.111E+03   AT NODE        562   DOF  1
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     4.182E+06   TIME AVG. MOMENT      5.974E+05
 LARGEST SCALED RESIDUAL MOMENT    -1.134E+09   AT NODE       1776   DOF  5
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT    -1.134E+09
 LARGEST INCREMENT OF ROTATION      -5.35       AT NODE       2212   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -1.138E+03   AT NODE       2074   DOF  5
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  46ms


 ***WARNING: THE SYSTEM MATRIX HAS 7625 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     8


 AVERAGE FORCE                      7.211E+11   TIME AVG. FORCE       1.030E+11
 LARGEST SCALED RESIDUAL FORCE     -2.801E+15   AT NODE        283   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -2.801E+15
 LARGEST INCREMENT OF DISP.        -7.044E+03   AT NODE        252   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -7.669E+03   AT NODE        251   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     1.024E+07   TIME AVG. MOMENT      1.463E+06
 LARGEST SCALED RESIDUAL MOMENT     3.789E+10   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     3.789E+10
 LARGEST INCREMENT OF ROTATION       5.18       AT NODE        815   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     4.357E+03   AT NODE       1348   DOF  5
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.


 ***NOTE: THE SOLUTION APPEARS TO BE DIVERGING. CONVERGENCE IS JUDGED UNLIKELY.


  INCREMENT     7 STARTS. ATTEMPT NUMBER  2, TIME INCREMENT  7.910E-03
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  46ms


 ***WARNING: THE SYSTEM MATRIX HAS 3 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       7.34       TIME AVG. FORCE        2.80    
 LARGEST SCALED RESIDUAL FORCE      -39.8       AT NODE          2   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE      -39.8    
 LARGEST INCREMENT OF DISP.          3.09       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.         4.30       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.314       TIME AVG. MOMENT      0.262    
 LARGEST SCALED RESIDUAL MOMENT     -10.9       AT NODE       1405   DOF  4
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     -10.9    
 LARGEST INCREMENT OF ROTATION     -0.164       AT NODE       1410   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -0.195       AT NODE       1410   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  49ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       2.91       TIME AVG. FORCE        2.17    
 LARGEST SCALED RESIDUAL FORCE       1.30       AT NODE       1409   DOF  2
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE       1.30    
 LARGEST INCREMENT OF DISP.          2.88       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        0.303       AT NODE       1421   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.368       TIME AVG. MOMENT      0.270    
 LARGEST SCALED RESIDUAL MOMENT     0.330       AT NODE       1396   DOF  4
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     0.330    
 LARGEST INCREMENT OF ROTATION      0.163       AT NODE       1405   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     4.425E-03   AT NODE       1062   DOF  5
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  48ms


 ***WARNING: THE SYSTEM MATRIX HAS 19 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       2.93       TIME AVG. FORCE        2.17    
 LARGEST SCALED RESIDUAL FORCE     -0.768       AT NODE       1685   DOF  2
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -0.768    
 LARGEST INCREMENT OF DISP.          2.63       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -0.251       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.430       TIME AVG. MOMENT      0.279    
 LARGEST SCALED RESIDUAL MOMENT    -0.450       AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT    -0.450    
 LARGEST INCREMENT OF ROTATION      0.167       AT NODE       1573   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     2.395E-02   AT NODE       1713   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  52ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     4


 AVERAGE FORCE                       2.93       TIME AVG. FORCE        2.17    
 LARGEST SCALED RESIDUAL FORCE      0.663       AT NODE       1574   DOF  2
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      0.663    
 LARGEST INCREMENT OF DISP.          2.47       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -0.159       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.545       TIME AVG. MOMENT      0.295    
 LARGEST SCALED RESIDUAL MOMENT     1.277E-02   AT NODE       1130   DOF  5
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     1.277E-02
 LARGEST INCREMENT OF ROTATION      0.145       AT NODE       1405   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -2.421E-02   AT NODE       1587   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  46ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     5


 AVERAGE FORCE                       2.97       TIME AVG. FORCE        2.18    
 LARGEST SCALED RESIDUAL FORCE     -0.627       AT NODE       1163   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -0.627    
 LARGEST INCREMENT OF DISP.          2.18       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -0.293       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.497       TIME AVG. MOMENT      0.288    
 LARGEST SCALED RESIDUAL MOMENT    -6.430E-02   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT    -6.430E-02
 LARGEST INCREMENT OF ROTATION     -0.138       AT NODE       1410   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -1.824E-02   AT NODE       1163   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  48ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     6


 AVERAGE FORCE                       2.97       TIME AVG. FORCE        2.18    
 LARGEST SCALED RESIDUAL FORCE      0.359       AT NODE       1298   DOF  2
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      0.359    
 LARGEST INCREMENT OF DISP.          2.01       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -0.170       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.436       TIME AVG. MOMENT      0.279    
 LARGEST SCALED RESIDUAL MOMENT     1.262E-02   AT NODE       1144   DOF  5
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     1.262E-02
 LARGEST INCREMENT OF ROTATION      0.120       AT NODE       1405   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.740E-02   AT NODE       1494   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  48ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     7


 AVERAGE FORCE                       3.04       TIME AVG. FORCE        2.19    
 LARGEST SCALED RESIDUAL FORCE      -1.24       AT NODE       1289   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      -1.24    
 LARGEST INCREMENT OF DISP.          1.67       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -0.344       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.372       TIME AVG. MOMENT      0.270    
 LARGEST SCALED RESIDUAL MOMENT     3.973E-02   AT NODE       1164   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     3.973E-02
 LARGEST INCREMENT OF ROTATION     -0.112       AT NODE       1410   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -2.379E-02   AT NODE       1611   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.


 ***NOTE: THE SOLUTION APPEARS TO BE DIVERGING. CONVERGENCE IS JUDGED UNLIKELY.


  INCREMENT     7 STARTS. ATTEMPT NUMBER  3, TIME INCREMENT  1.978E-03
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  48ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       8.52       TIME AVG. FORCE        2.97    
 LARGEST SCALED RESIDUAL FORCE      -50.7       AT NODE          2   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE      -50.7    
 LARGEST INCREMENT OF DISP.         -4.91       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        -4.91       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.491       TIME AVG. MOMENT      0.287    
 LARGEST SCALED RESIDUAL MOMENT      15.2       AT NODE       1405   DOF  4
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT      15.2    
 LARGEST INCREMENT OF ROTATION     -0.207       AT NODE       1405   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -0.207       AT NODE       1405   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  48ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       3.53       TIME AVG. FORCE        2.26    
 LARGEST SCALED RESIDUAL FORCE      -1.79       AT NODE       1406   DOF  2
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      -1.79    
 LARGEST INCREMENT OF DISP.         -5.30       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        0.417       AT NODE       1436   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.186       TIME AVG. MOMENT      0.244    
 LARGEST SCALED RESIDUAL MOMENT     0.445       AT NODE       1405   DOF  4
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     0.445    
 LARGEST INCREMENT OF ROTATION     -0.205       AT NODE       1405   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     2.854E-03   AT NODE       1053   DOF  5
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  48ms


 ***WARNING: THE SYSTEM MATRIX HAS 104 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       4.99       TIME AVG. FORCE        2.47    
 LARGEST SCALED RESIDUAL FORCE      -415.       AT NODE       1953   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      -415.    
 LARGEST INCREMENT OF DISP.         -7.36       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        -2.07       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.216       TIME AVG. MOMENT      0.248    
 LARGEST SCALED RESIDUAL MOMENT      8.62       AT NODE       1938   DOF  4
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT      8.62    
 LARGEST INCREMENT OF ROTATION     -0.429       AT NODE       1401   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -0.306       AT NODE       1412   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  49ms


 ***WARNING: THE SYSTEM MATRIX HAS 21 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     4


 AVERAGE FORCE                       18.7       TIME AVG. FORCE        4.42    
 LARGEST SCALED RESIDUAL FORCE      4.122E+03   AT NODE       1324   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      4.122E+03
 LARGEST INCREMENT OF DISP.         -7.86       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        -5.41       AT NODE       1100   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                      1.84       TIME AVG. MOMENT      0.481    
 LARGEST SCALED RESIDUAL MOMENT      599.       AT NODE       1115   DOF  4
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT      599.    
 LARGEST INCREMENT OF ROTATION      0.790       AT NODE       1227   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -0.887       AT NODE       1115   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.


 ***NOTE: THE SOLUTION APPEARS TO BE DIVERGING. CONVERGENCE IS JUDGED UNLIKELY.


  INCREMENT     7 STARTS. ATTEMPT NUMBER  4, TIME INCREMENT  4.944E-04
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  48ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       4.65       TIME AVG. FORCE        2.42    
 LARGEST SCALED RESIDUAL FORCE       13.8       AT NODE       1406   DOF  2
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE       13.8    
 LARGEST INCREMENT OF DISP.         -2.56       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        -2.56       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.165       TIME AVG. MOMENT      0.241    
 LARGEST SCALED RESIDUAL MOMENT      2.25       AT NODE       1405   DOF  4
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT      2.25    
 LARGEST INCREMENT OF ROTATION     -0.110       AT NODE       1405   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -0.110       AT NODE       1405   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  50ms


 ***WARNING: THE SYSTEM MATRIX HAS 16 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       3.36       TIME AVG. FORCE        2.24    
 LARGEST SCALED RESIDUAL FORCE     -0.192       AT NODE          2   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE     -0.192    
 LARGEST INCREMENT OF DISP.         -2.81       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -0.254       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.212       TIME AVG. MOMENT      0.247    
 LARGEST SCALED RESIDUAL MOMENT     5.137E-02   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     5.137E-02
 LARGEST INCREMENT OF ROTATION     -0.110       AT NODE       1405   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     9.008E-04   AT NODE        988   DOF  5
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  47ms


 ***WARNING: THE SYSTEM MATRIX HAS 46 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       4.58       TIME AVG. FORCE        2.41    
 LARGEST SCALED RESIDUAL FORCE       370.       AT NODE        988   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE       370.    
 LARGEST INCREMENT OF DISP.         -2.80       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        -1.36       AT NODE       1127   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.270       TIME AVG. MOMENT      0.256    
 LARGEST SCALED RESIDUAL MOMENT     -13.5       AT NODE       1126   DOF  4
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     -13.5    
 LARGEST INCREMENT OF ROTATION      0.221       AT NODE       1414   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     0.250       AT NODE       1126   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  49ms


 ***WARNING: THE SYSTEM MATRIX HAS 14 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     4


 AVERAGE FORCE                       4.07       TIME AVG. FORCE        2.34    
 LARGEST SCALED RESIDUAL FORCE       979.       AT NODE        847   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE       979.    
 LARGEST INCREMENT OF DISP.         -4.79       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        -1.99       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.234       TIME AVG. MOMENT      0.251    
 LARGEST SCALED RESIDUAL MOMENT     -17.6       AT NODE        847   DOF  5
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     -17.6    
 LARGEST INCREMENT OF ROTATION      0.323       AT NODE        862   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     0.294       AT NODE        862   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.


 ***NOTE: THE SOLUTION APPEARS TO BE DIVERGING. CONVERGENCE IS JUDGED UNLIKELY.


  INCREMENT     7 STARTS. ATTEMPT NUMBER  5, TIME INCREMENT  1.236E-04
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  47ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       4.06       TIME AVG. FORCE        2.34    
 LARGEST SCALED RESIDUAL FORCE       8.38       AT NODE       1406   DOF  2
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE       8.38    
 LARGEST INCREMENT OF DISP.         -1.97       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        -1.97       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.130       TIME AVG. MOMENT      0.236    
 LARGEST SCALED RESIDUAL MOMENT      1.06       AT NODE       1405   DOF  4
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT      1.06    
 LARGEST INCREMENT OF ROTATION     -8.554E-02   AT NODE       1405   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -8.554E-02   AT NODE       1405   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  49ms


 ***WARNING: THE SYSTEM MATRIX HAS 14 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       3.31       TIME AVG. FORCE        2.23    
 LARGEST SCALED RESIDUAL FORCE     -9.354E-02   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE     -9.354E-02
 LARGEST INCREMENT OF DISP.         -2.16       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -0.188       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.218       TIME AVG. MOMENT      0.248    
 LARGEST SCALED RESIDUAL MOMENT     2.161E-02   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     2.161E-02
 LARGEST INCREMENT OF ROTATION     -8.560E-02   AT NODE       1405   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     5.998E-04   AT NODE       1001   DOF  5
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  45ms


 ***WARNING: THE SYSTEM MATRIX HAS 27 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       5.81       TIME AVG. FORCE        2.59    
 LARGEST SCALED RESIDUAL FORCE       354.       AT NODE       1057   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE       354.    
 LARGEST INCREMENT OF DISP.         -2.99       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        -2.05       AT NODE       1366   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.354       TIME AVG. MOMENT      0.268    
 LARGEST SCALED RESIDUAL MOMENT      27.8       AT NODE       1451   DOF  4
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT      27.8    
 LARGEST INCREMENT OF ROTATION      0.262       AT NODE       1647   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -0.321       AT NODE       1325   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  49ms


 ***WARNING: THE SYSTEM MATRIX HAS 4 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     4


 AVERAGE FORCE                       5.59       TIME AVG. FORCE        2.55    
 LARGEST SCALED RESIDUAL FORCE     -1.976E+03   AT NODE       1155   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -1.976E+03
 LARGEST INCREMENT OF DISP.         -5.58       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        -2.59       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.465       TIME AVG. MOMENT      0.284    
 LARGEST SCALED RESIDUAL MOMENT     -56.7       AT NODE       1168   DOF  4
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     -56.7    
 LARGEST INCREMENT OF ROTATION     -0.454       AT NODE       1182   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     0.354       AT NODE       1169   DOF  5
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.


 ***NOTE: THE SOLUTION APPEARS TO BE DIVERGING. CONVERGENCE IS JUDGED UNLIKELY.


 ***ERROR: TOO MANY ATTEMPTS MADE FOR THIS INCREMENT

 ***ERROR: THE ANALYSIS HAS BEEN TERMINATED DUE TO PREVIOUS ERRORS. ALL OUTPUT 
           REQUESTS HAVE BEEN WRITTEN FOR THE LAST CONVERGED INCREMENT.



     ANALYSIS SUMMARY:
     TOTAL OF          7  INCREMENTS
                       7  CUTBACKS IN AUTOMATIC INCREMENTATION
                      62  ITERATIONS INCLUDING CONTACT ITERATIONS IF PRESENT
                      62  PASSES THROUGH THE EQUATION SOLVER OF WHICH 
                      62  INVOLVE MATRIX DECOMPOSITION, INCLUDING
                       0  DECOMPOSITION(S) OF THE MASS MATRIX
                       1  REORDERING OF EQUATIONS TO MINIMIZE WAVEFRONT
                       0  ADDITIONAL RESIDUAL EVALUATIONS FOR LINE SEARCHES
                       0  ADDITIONAL OPERATOR EVALUATIONS FOR LINE SEARCHES
                       1  WARNING MESSAGES DURING USER INPUT PROCESSING
                      29  WARNING MESSAGES DURING ANALYSIS
                       0  ANALYSIS WARNINGS ARE NUMERICAL PROBLEM MESSAGES
                      29  ANALYSIS WARNINGS ARE NEGATIVE EIGENVALUE MESSAGES
                       2  ERROR MESSAGES



     JOB TIME SUMMARY
       USER TIME (SEC)      =       3.E+01
       SYSTEM TIME (SEC)    =       2.E+00
       TOTAL CPU TIME (SEC) =       3.E+01
       WALLCLOCK TIME (SEC) =           13
       MEMORY PEAK (GB)     =            0
