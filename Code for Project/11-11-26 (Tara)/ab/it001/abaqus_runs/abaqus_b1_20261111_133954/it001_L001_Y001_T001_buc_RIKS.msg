1

   Abaqus 2026                                  Date 11-Nov-2026   Time 13:43:13
   For use by CAL TECH under license from Dassault Systemes or its subsidiary.

                                                                                 
                                                                                 
 STEP    1     INCREMENT     1     STEP TIME    0.00    


                        S T E P       1     S T A T I C   A N A L Y S I S


                                                                                          

     AUTOMATIC LOAD CONTROL WITH -
          A SUGGESTED INITIAL INCREMENT IN ARC LENGTH           5.000E-02
          AND A TOTAL ARC LENGTH SCALE FACTOR OF                 1.00    
          THE MINIMUM ARC LENGTH INCREMENT ALLOWED IS           1.000E-08
          THE MAXIMUM ARC LENGTH INCREMENT ALLOWED IS           0.100    

     LINEAR EQUATION SOLVER TYPE         DIRECT SPARSE

     MODIFIED RIKS METHOD IS USED - AMPLITUDE REFERENCES ARE IGNORED

     THE STEP ENDS WHEN LOAD PROPORTIONALITY FACTOR EXCEEDS    2.00    

     THE STEP ENDS WHEN DISPLACEMENT AT NODE          2 INSTANCE                                                                                  DOF  5 EXCEEDS   0.101    

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

     THE MAXIMUM NUMBER OF INCREMENTS IN THIS STEP IS                    300

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


  INCREMENT     1 STARTS. ATTEMPT NUMBER  1
 
     INITIAL ELEMENT LOAD BALANCE
            DOMAIN    1     THREAD    NUMBER OF ELEMENTS
                              1            320
                              2            320
                              3            320
                              4            320
                              5            320
                              6            320
                              7            320
                              8            360
      SPARSE STORAGE WAS USED FOR NODAL DATA ON WORKER THREADS
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  21ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      9.681E-02   TIME AVG. FORCE       9.681E-02
 LARGEST SCALED RESIDUAL FORCE     -0.970       AT NODE          2   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE     -0.970    
 LARGEST INCREMENT OF DISP.        -0.680       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -0.680       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     1.731E-03   TIME AVG. MOMENT      1.731E-03
 LARGEST SCALED RESIDUAL MOMENT    -6.681E-02   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT    -6.681E-02
 LARGEST INCREMENT OF ROTATION      1.361E-03   AT NODE         26   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.361E-03   AT NODE         26   DOF  5
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  15ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                      9.682E-02   TIME AVG. FORCE       9.682E-02
 LARGEST SCALED RESIDUAL FORCE      4.329E-03   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE      4.329E-03
 LARGEST INCREMENT OF DISP.        -0.679       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -6.985E-03   AT NODE       1456   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     1.689E-03   TIME AVG. MOMENT      1.689E-03
 LARGEST SCALED RESIDUAL MOMENT     1.784E-02   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     1.784E-02
 LARGEST INCREMENT OF ROTATION      1.361E-03   AT NODE         17   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     3.965E-04   AT NODE       1455   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  16ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                      9.680E-02   TIME AVG. FORCE       9.680E-02
 LARGEST SCALED RESIDUAL FORCE     -4.356E-06   AT NODE       1050   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -4.356E-06
 LARGEST INCREMENT OF DISP.        -0.679       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        6.336E-04   AT NODE       1093   DOF  2
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     1.687E-03   TIME AVG. MOMENT      1.687E-03
 LARGEST SCALED RESIDUAL MOMENT    -6.833E-06   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT    -6.833E-06
 LARGEST INCREMENT OF ROTATION      1.359E-03   AT NODE          2   DOF  5
   INSTANCE: {assembly node}                                                                 
 LARGEST CORRECTION TO ROTATION    -4.409E-05   AT NODE       1037   DOF  4
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF ROTATION CORRECTION    1.689E-08
          MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 ITERATION SUMMARY FOR THE INCREMENT:   3 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  3 ARE EQUILIBRIUM ITERATIONS.


                                INCREMENT     1 SUMMARY


     CURRENT LOAD PROPORTIONALITY FACTOR         4.9929E-02
     TOTAL ARC LENGTH   5.000E-02, INCREMENT OF ARC LENGTH   5.000E-02


  INCREMENT     2 STARTS. ATTEMPT NUMBER  1
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  15ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      0.194       TIME AVG. FORCE       0.146    
 LARGEST SCALED RESIDUAL FORCE     -0.946       AT NODE          2   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE     -0.946    
 LARGEST INCREMENT OF DISP.        -0.679       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -0.679       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     6.302E-02   TIME AVG. MOMENT      3.235E-02
 LARGEST SCALED RESIDUAL MOMENT    -5.549E-02   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT    -5.549E-02
 LARGEST INCREMENT OF ROTATION      1.357E-03   AT NODE          2   DOF  5
   INSTANCE: {assembly node}                                                                 
 LARGEST CORRECTION TO ROTATION     1.357E-03   AT NODE          2   DOF  5
   INSTANCE: {assembly node}                                                                 
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  15ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                      0.196       TIME AVG. FORCE       0.146    
 LARGEST SCALED RESIDUAL FORCE      4.224E-03   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE      4.224E-03
 LARGEST INCREMENT OF DISP.        -0.678       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -5.263E-03   AT NODE       1442   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.668       TIME AVG. MOMENT      0.335    
 LARGEST SCALED RESIDUAL MOMENT     1.751E-02   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     1.751E-02
 LARGEST INCREMENT OF ROTATION      1.356E-03   AT NODE         26   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     2.931E-04   AT NODE       1454   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  17ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                      0.201       TIME AVG. FORCE       0.149    
 LARGEST SCALED RESIDUAL FORCE     -6.450E-06   AT NODE       1233   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -6.450E-06
 LARGEST INCREMENT OF DISP.        -0.678       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -7.822E-04   AT NODE       1260   DOF  2
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     0.916       TIME AVG. MOMENT      0.459    
 LARGEST SCALED RESIDUAL MOMENT    -6.897E-06   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT    -6.897E-06
 LARGEST INCREMENT OF ROTATION      1.356E-03   AT NODE          2   DOF  5
   INSTANCE: {assembly node}                                                                 
 LARGEST CORRECTION TO ROTATION     5.356E-05   AT NODE       1246   DOF  4
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF ROTATION CORRECTION   -2.110E-08
          MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION
          ARC LENGTH INCREMENT MAY NOW INCREASE TO    7.500E-02

 ITERATION SUMMARY FOR THE INCREMENT:   3 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  3 ARE EQUILIBRIUM ITERATIONS.


                                INCREMENT     2 SUMMARY


     CURRENT LOAD PROPORTIONALITY FACTOR         9.9658E-02
     TOTAL ARC LENGTH   0.100    , INCREMENT OF ARC LENGTH   5.000E-02


  INCREMENT     3 STARTS. ATTEMPT NUMBER  1
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  15ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      0.339       TIME AVG. FORCE       0.212    
 LARGEST SCALED RESIDUAL FORCE      -2.12       AT NODE          2   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE      -2.12    
 LARGEST INCREMENT OF DISP.         -1.02       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        -1.02       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     2.583E-02   TIME AVG. MOMENT      0.314    
 LARGEST SCALED RESIDUAL MOMENT    -0.101       AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT    -0.101    
 LARGEST INCREMENT OF ROTATION     -2.234E-03   AT NODE       1402   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -2.234E-03   AT NODE       1402   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  15ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                      0.342       TIME AVG. FORCE       0.213    
 LARGEST SCALED RESIDUAL FORCE      9.470E-03   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE      9.470E-03
 LARGEST INCREMENT OF DISP.         -1.02       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -6.760E-03   AT NODE       1498   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.988       TIME AVG. MOMENT      0.635    
 LARGEST SCALED RESIDUAL MOMENT     3.243E-02   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     3.243E-02
 LARGEST INCREMENT OF ROTATION     -2.578E-03   AT NODE       1417   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     3.951E-04   AT NODE       1467   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  15ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                      0.342       TIME AVG. FORCE       0.213    
 LARGEST SCALED RESIDUAL FORCE     -1.788E-04   AT NODE       1345   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -1.788E-04
 LARGEST INCREMENT OF DISP.         -1.01       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        4.165E-03   AT NODE       1345   DOF  2
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                      1.32       TIME AVG. MOMENT      0.745    
 LARGEST SCALED RESIDUAL MOMENT    -5.087E-05   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT    -5.087E-05
 LARGEST INCREMENT OF ROTATION     -2.834E-03   AT NODE       1402   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     2.816E-04   AT NODE       1358   DOF  4
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF ROTATION CORRECTION   -4.417E-07
          MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION
          ARC LENGTH INCREMENT MAY NOW INCREASE TO    0.100    

 ITERATION SUMMARY FOR THE INCREMENT:   3 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  3 ARE EQUILIBRIUM ITERATIONS.


                                INCREMENT     3 SUMMARY


     CURRENT LOAD PROPORTIONALITY FACTOR         0.1738    
     TOTAL ARC LENGTH   0.175    , INCREMENT OF ARC LENGTH   7.500E-02


  INCREMENT     4 STARTS. ATTEMPT NUMBER  1
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  15ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      0.533       TIME AVG. FORCE       0.293    
 LARGEST SCALED RESIDUAL FORCE      -3.75       AT NODE          2   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE      -3.75    
 LARGEST INCREMENT OF DISP.         -1.35       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        -1.35       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     2.521E-02   TIME AVG. MOMENT      0.565    
 LARGEST SCALED RESIDUAL MOMENT    -0.115       AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT    -0.115    
 LARGEST INCREMENT OF ROTATION     -4.502E-03   AT NODE       1402   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -4.502E-03   AT NODE       1402   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  15ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                      0.535       TIME AVG. FORCE       0.294    
 LARGEST SCALED RESIDUAL FORCE      1.677E-02   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE      1.677E-02
 LARGEST INCREMENT OF DISP.         -1.35       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        5.282E-03   AT NODE       1737   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.192       TIME AVG. MOMENT      0.607    
 LARGEST SCALED RESIDUAL MOMENT     4.553E-02   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     4.553E-02
 LARGEST INCREMENT OF ROTATION      4.765E-03   AT NODE       1412   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     3.879E-04   AT NODE       1508   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  14ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                      0.533       TIME AVG. FORCE       0.293    
 LARGEST SCALED RESIDUAL FORCE     -1.014E-03   AT NODE       1373   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -1.014E-03
 LARGEST INCREMENT OF DISP.         -1.35       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.033E-02   AT NODE       1373   DOF  2
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     0.188       TIME AVG. MOMENT      0.606    
 LARGEST SCALED RESIDUAL MOMENT    -2.145E-04   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT    -2.145E-04
 LARGEST INCREMENT OF ROTATION     -5.359E-03   AT NODE       1403   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -6.674E-04   AT NODE       1373   DOF  4
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF ROTATION CORRECTION    3.145E-06
          MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 ITERATION SUMMARY FOR THE INCREMENT:   3 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  3 ARE EQUILIBRIUM ITERATIONS.


                                INCREMENT     4 SUMMARY


     CURRENT LOAD PROPORTIONALITY FACTOR         0.2714    
     TOTAL ARC LENGTH   0.275    , INCREMENT OF ARC LENGTH   0.100    


  INCREMENT     5 STARTS. ATTEMPT NUMBER  1
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  15ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      0.726       TIME AVG. FORCE       0.380    
 LARGEST SCALED RESIDUAL FORCE      -3.72       AT NODE          2   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE      -3.72    
 LARGEST INCREMENT OF DISP.         -1.35       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        -1.35       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     3.403E-02   TIME AVG. MOMENT      0.491    
 LARGEST SCALED RESIDUAL MOMENT    -3.804E-02   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT    -3.804E-02
 LARGEST INCREMENT OF ROTATION      5.954E-03   AT NODE       1412   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     5.954E-03   AT NODE       1412   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  18ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                      0.725       TIME AVG. FORCE       0.379    
 LARGEST SCALED RESIDUAL FORCE      1.674E-02   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE      1.674E-02
 LARGEST INCREMENT OF DISP.         -1.35       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        3.676E-03   AT NODE       1639   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.205       TIME AVG. MOMENT      0.526    
 LARGEST SCALED RESIDUAL MOMENT     4.592E-02   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     4.592E-02
 LARGEST INCREMENT OF ROTATION     -6.143E-03   AT NODE       1403   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -2.975E-04   AT NODE       1587   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  15ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                      0.724       TIME AVG. FORCE       0.379    
 LARGEST SCALED RESIDUAL FORCE     -1.226E-03   AT NODE       1400   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -1.226E-03
 LARGEST INCREMENT OF DISP.         -1.35       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -1.150E-02   AT NODE       1400   DOF  2
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     0.206       TIME AVG. MOMENT      0.526    
 LARGEST SCALED RESIDUAL MOMENT    -2.442E-04   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT    -2.442E-04
 LARGEST INCREMENT OF ROTATION     -6.804E-03   AT NODE       1403   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     7.332E-04   AT NODE       1400   DOF  4
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF ROTATION CORRECTION    4.706E-06
          MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 ITERATION SUMMARY FOR THE INCREMENT:   3 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  3 ARE EQUILIBRIUM ITERATIONS.


                                INCREMENT     5 SUMMARY


     CURRENT LOAD PROPORTIONALITY FACTOR         0.3675    
     TOTAL ARC LENGTH   0.375    , INCREMENT OF ARC LENGTH   0.100    


  INCREMENT     6 STARTS. ATTEMPT NUMBER  1
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  19ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      0.918       TIME AVG. FORCE       0.469    
 LARGEST SCALED RESIDUAL FORCE      -3.70       AT NODE          2   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE      -3.70    
 LARGEST INCREMENT OF DISP.         -1.34       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        -1.34       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     4.301E-02   TIME AVG. MOMENT      0.445    
 LARGEST SCALED RESIDUAL MOMENT    -4.465E-02   AT NODE       1035   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT    -4.465E-02
 LARGEST INCREMENT OF ROTATION      7.175E-03   AT NODE       1412   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     7.175E-03   AT NODE       1412   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  16ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                      0.914       TIME AVG. FORCE       0.468    
 LARGEST SCALED RESIDUAL FORCE      1.673E-02   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE      1.673E-02
 LARGEST INCREMENT OF DISP.         -1.34       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -2.688E-03   AT NODE       1666   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.208       TIME AVG. MOMENT      0.473    
 LARGEST SCALED RESIDUAL MOMENT     4.644E-02   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     4.644E-02
 LARGEST INCREMENT OF ROTATION     -7.317E-03   AT NODE       1403   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -2.418E-04   AT NODE       1699   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  15ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                      0.914       TIME AVG. FORCE       0.468    
 LARGEST SCALED RESIDUAL FORCE     -1.231E-03   AT NODE       1400   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -1.231E-03
 LARGEST INCREMENT OF DISP.         -1.34       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.169E-02   AT NODE       1387   DOF  2
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     0.200       TIME AVG. MOMENT      0.472    
 LARGEST SCALED RESIDUAL MOMENT    -2.605E-04   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT    -2.605E-04
 LARGEST INCREMENT OF ROTATION     -7.988E-03   AT NODE       1403   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -7.341E-04   AT NODE       1387   DOF  4
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF ROTATION CORRECTION   -4.283E-06
          MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 ITERATION SUMMARY FOR THE INCREMENT:   3 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  3 ARE EQUILIBRIUM ITERATIONS.


                                INCREMENT     6 SUMMARY


     CURRENT LOAD PROPORTIONALITY FACTOR         0.4618    
     TOTAL ARC LENGTH   0.475    , INCREMENT OF ARC LENGTH   0.100    


  INCREMENT     7 STARTS. ATTEMPT NUMBER  1
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  16ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       1.11       TIME AVG. FORCE       0.560    
 LARGEST SCALED RESIDUAL FORCE      -3.69       AT NODE          2   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE      -3.69    
 LARGEST INCREMENT OF DISP.         -1.34       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        -1.34       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     5.269E-02   TIME AVG. MOMENT      0.412    
 LARGEST SCALED RESIDUAL MOMENT     9.246E-02   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     9.246E-02
 LARGEST INCREMENT OF ROTATION      8.274E-03   AT NODE       1411   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     8.274E-03   AT NODE       1411   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  17ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       1.10       TIME AVG. FORCE       0.559    
 LARGEST SCALED RESIDUAL FORCE      1.676E-02   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE      1.676E-02
 LARGEST INCREMENT OF DISP.         -1.34       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        2.517E-03   AT NODE       1422   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.205       TIME AVG. MOMENT      0.433    
 LARGEST SCALED RESIDUAL MOMENT     4.707E-02   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     4.707E-02
 LARGEST INCREMENT OF ROTATION      8.441E-03   AT NODE       1411   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -2.064E-04   AT NODE       1783   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  14ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       1.10       TIME AVG. FORCE       0.559    
 LARGEST SCALED RESIDUAL FORCE     -1.175E-03   AT NODE       1414   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -1.175E-03
 LARGEST INCREMENT OF DISP.         -1.34       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.159E-02   AT NODE       1401   DOF  2
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     0.201       TIME AVG. MOMENT      0.433    
 LARGEST SCALED RESIDUAL MOMENT    -2.709E-04   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT    -2.709E-04
 LARGEST INCREMENT OF ROTATION      9.042E-03   AT NODE       1411   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     7.167E-04   AT NODE       1414   DOF  4
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF ROTATION CORRECTION   -4.125E-06
          MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 ITERATION SUMMARY FOR THE INCREMENT:   3 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  3 ARE EQUILIBRIUM ITERATIONS.


                                INCREMENT     7 SUMMARY


     CURRENT LOAD PROPORTIONALITY FACTOR         0.5542    
     TOTAL ARC LENGTH   0.575    , INCREMENT OF ARC LENGTH   0.100    


  INCREMENT     8 STARTS. ATTEMPT NUMBER  1
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  14ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       1.30       TIME AVG. FORCE       0.651    
 LARGEST SCALED RESIDUAL FORCE      -3.67       AT NODE          2   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE      -3.67    
 LARGEST INCREMENT OF DISP.         -1.34       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        -1.34       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     6.187E-02   TIME AVG. MOMENT      0.386    
 LARGEST SCALED RESIDUAL MOMENT     0.146       AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     0.146    
 LARGEST INCREMENT OF ROTATION      9.372E-03   AT NODE       1411   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     9.372E-03   AT NODE       1411   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  17ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       1.29       TIME AVG. FORCE       0.650    
 LARGEST SCALED RESIDUAL FORCE      1.681E-02   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE      1.681E-02
 LARGEST INCREMENT OF DISP.         -1.34       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        2.558E-03   AT NODE       1449   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.204       TIME AVG. MOMENT      0.404    
 LARGEST SCALED RESIDUAL MOMENT     4.777E-02   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     4.777E-02
 LARGEST INCREMENT OF ROTATION      9.516E-03   AT NODE       1411   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.830E-04   AT NODE       1830   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  15ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       1.29       TIME AVG. FORCE       0.650    
 LARGEST SCALED RESIDUAL FORCE     -1.131E-03   AT NODE       1414   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -1.131E-03
 LARGEST INCREMENT OF DISP.         -1.34       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.155E-02   AT NODE       1401   DOF  2
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     0.199       TIME AVG. MOMENT      0.404    
 LARGEST SCALED RESIDUAL MOMENT    -2.816E-04   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT    -2.816E-04
 LARGEST INCREMENT OF ROTATION      1.013E-02   AT NODE       1411   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -7.023E-04   AT NODE       1401   DOF  4
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF ROTATION CORRECTION    4.139E-06
          MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 ITERATION SUMMARY FOR THE INCREMENT:   3 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  3 ARE EQUILIBRIUM ITERATIONS.


                                INCREMENT     8 SUMMARY


     CURRENT LOAD PROPORTIONALITY FACTOR         0.6443    
     TOTAL ARC LENGTH   0.675    , INCREMENT OF ARC LENGTH   0.100    


  INCREMENT     9 STARTS. ATTEMPT NUMBER  1
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  15ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       1.49       TIME AVG. FORCE       0.743    
 LARGEST SCALED RESIDUAL FORCE      -3.66       AT NODE          2   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE      -3.66    
 LARGEST INCREMENT OF DISP.         -1.34       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        -1.34       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     7.036E-02   TIME AVG. MOMENT      0.367    
 LARGEST SCALED RESIDUAL MOMENT     0.194       AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     0.194    
 LARGEST INCREMENT OF ROTATION     -1.043E-02   AT NODE       1404   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -1.043E-02   AT NODE       1404   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  15ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       1.47       TIME AVG. FORCE       0.742    
 LARGEST SCALED RESIDUAL FORCE      1.688E-02   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE      1.688E-02
 LARGEST INCREMENT OF DISP.         -1.34       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        2.675E-03   AT NODE       1449   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.201       TIME AVG. MOMENT      0.381    
 LARGEST SCALED RESIDUAL MOMENT     4.855E-02   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     4.855E-02
 LARGEST INCREMENT OF ROTATION     -1.056E-02   AT NODE       1404   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -1.672E-04   AT NODE       1853   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  15ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       1.47       TIME AVG. FORCE       0.741    
 LARGEST SCALED RESIDUAL FORCE     -1.145E-03   AT NODE       1414   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -1.145E-03
 LARGEST INCREMENT OF DISP.         -1.34       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.179E-02   AT NODE       1401   DOF  2
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     0.199       TIME AVG. MOMENT      0.381    
 LARGEST SCALED RESIDUAL MOMENT    -2.978E-04   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT    -2.978E-04
 LARGEST INCREMENT OF ROTATION     -1.120E-02   AT NODE       1404   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -7.062E-04   AT NODE       1401   DOF  4
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF ROTATION CORRECTION    4.332E-06
          MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 ITERATION SUMMARY FOR THE INCREMENT:   3 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  3 ARE EQUILIBRIUM ITERATIONS.


                                INCREMENT     9 SUMMARY


     CURRENT LOAD PROPORTIONALITY FACTOR         0.7319    
     TOTAL ARC LENGTH   0.775    , INCREMENT OF ARC LENGTH   0.100    


  INCREMENT    10 STARTS. ATTEMPT NUMBER  1
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  15ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       1.67       TIME AVG. FORCE       0.834    
 LARGEST SCALED RESIDUAL FORCE      -3.65       AT NODE          2   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE      -3.65    
 LARGEST INCREMENT OF DISP.         -1.34       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        -1.34       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     7.806E-02   TIME AVG. MOMENT      0.351    
 LARGEST SCALED RESIDUAL MOMENT     0.237       AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     0.237    
 LARGEST INCREMENT OF ROTATION     -1.149E-02   AT NODE       1404   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -1.149E-02   AT NODE       1404   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  14ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       1.66       TIME AVG. FORCE       0.833    
 LARGEST SCALED RESIDUAL FORCE      1.698E-02   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE      1.698E-02
 LARGEST INCREMENT OF DISP.         -1.34       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        2.866E-03   AT NODE       1464   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.208       TIME AVG. MOMENT      0.364    
 LARGEST SCALED RESIDUAL MOMENT     4.940E-02   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     4.940E-02
 LARGEST INCREMENT OF ROTATION      1.161E-02   AT NODE       1411   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.568E-04   AT NODE       1858   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  15ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       1.66       TIME AVG. FORCE       0.833    
 LARGEST SCALED RESIDUAL FORCE     -1.266E-03   AT NODE       1414   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -1.266E-03
 LARGEST INCREMENT OF DISP.         -1.34       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.252E-02   AT NODE       1401   DOF  2
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     0.207       TIME AVG. MOMENT      0.363    
 LARGEST SCALED RESIDUAL MOMENT    -3.268E-04   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT    -3.268E-04
 LARGEST INCREMENT OF ROTATION      1.231E-02   AT NODE       1411   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -7.426E-04   AT NODE       1401   DOF  4
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF ROTATION CORRECTION    4.913E-06
          MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 ITERATION SUMMARY FOR THE INCREMENT:   3 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  3 ARE EQUILIBRIUM ITERATIONS.


                                INCREMENT    10 SUMMARY


     CURRENT LOAD PROPORTIONALITY FACTOR         0.8168    
     TOTAL ARC LENGTH   0.875    , INCREMENT OF ARC LENGTH   0.100    


  INCREMENT    11 STARTS. ATTEMPT NUMBER  1
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  18ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       1.85       TIME AVG. FORCE       0.926    
 LARGEST SCALED RESIDUAL FORCE      -3.64       AT NODE          2   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE      -3.64    
 LARGEST INCREMENT OF DISP.         -1.33       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        -1.33       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     8.596E-02   TIME AVG. MOMENT      0.338    
 LARGEST SCALED RESIDUAL MOMENT     0.275       AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     0.275    
 LARGEST INCREMENT OF ROTATION     -1.257E-02   AT NODE       1404   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -1.257E-02   AT NODE       1404   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  16ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       1.84       TIME AVG. FORCE       0.924    
 LARGEST SCALED RESIDUAL FORCE      1.709E-02   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE      1.709E-02
 LARGEST INCREMENT OF DISP.         -1.34       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        3.136E-03   AT NODE       1463   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.217       TIME AVG. MOMENT      0.350    
 LARGEST SCALED RESIDUAL MOMENT     5.031E-02   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     5.031E-02
 LARGEST INCREMENT OF ROTATION     -1.269E-02   AT NODE       1404   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -1.509E-04   AT NODE       1839   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  15ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       1.84       TIME AVG. FORCE       0.924    
 LARGEST SCALED RESIDUAL FORCE     -1.582E-03   AT NODE       1414   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -1.582E-03
 LARGEST INCREMENT OF DISP.         -1.33       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -1.400E-02   AT NODE       1414   DOF  2
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF DISP.    CORRECTION    1.297E-03
          FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                     0.216       TIME AVG. MOMENT      0.350    
 LARGEST SCALED RESIDUAL MOMENT    -3.800E-04   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT    -3.800E-04
 LARGEST INCREMENT OF ROTATION      1.348E-02   AT NODE       1411   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     8.308E-04   AT NODE       1414   DOF  4
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF ROTATION CORRECTION   -6.275E-06
          MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 ITERATION SUMMARY FOR THE INCREMENT:   3 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  3 ARE EQUILIBRIUM ITERATIONS.


                                INCREMENT    11 SUMMARY


     CURRENT LOAD PROPORTIONALITY FACTOR         0.8987    
     TOTAL ARC LENGTH   0.975    , INCREMENT OF ARC LENGTH   0.100    


  INCREMENT    12 STARTS. ATTEMPT NUMBER  1
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  16ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       2.03       TIME AVG. FORCE        1.02    
 LARGEST SCALED RESIDUAL FORCE      -3.64       AT NODE          2   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE      -3.64    
 LARGEST INCREMENT OF DISP.         -1.33       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        -1.33       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     9.375E-02   TIME AVG. MOMENT      0.329    
 LARGEST SCALED RESIDUAL MOMENT     0.309       AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     0.309    
 LARGEST INCREMENT OF ROTATION     -1.369E-02   AT NODE       1404   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -1.369E-02   AT NODE       1404   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  14ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       2.02       TIME AVG. FORCE        1.02    
 LARGEST SCALED RESIDUAL FORCE      1.722E-02   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE      1.722E-02
 LARGEST INCREMENT OF DISP.         -1.33       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        3.503E-03   AT NODE       1464   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.225       TIME AVG. MOMENT      0.340    
 LARGEST SCALED RESIDUAL MOMENT     5.128E-02   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     5.128E-02
 LARGEST INCREMENT OF ROTATION     -1.382E-02   AT NODE       1404   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.499E-04   AT NODE       1788   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  15ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       2.02       TIME AVG. FORCE        1.02    
 LARGEST SCALED RESIDUAL FORCE     -2.321E-03   AT NODE       1414   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -2.321E-03
 LARGEST INCREMENT OF DISP.         -1.33       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -1.678E-02   AT NODE       1414   DOF  2
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF DISP.    CORRECTION    2.261E-03
          FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                     0.225       TIME AVG. MOMENT      0.340    
 LARGEST SCALED RESIDUAL MOMENT    -4.821E-04   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT    -4.821E-04
 LARGEST INCREMENT OF ROTATION      1.477E-02   AT NODE       1411   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.008E-03   AT NODE       1414   DOF  4
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF ROTATION CORRECTION   -9.480E-06
          MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 ITERATION SUMMARY FOR THE INCREMENT:   3 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  3 ARE EQUILIBRIUM ITERATIONS.


                                INCREMENT    12 SUMMARY


     CURRENT LOAD PROPORTIONALITY FACTOR         0.9772    
     TOTAL ARC LENGTH    1.07    , INCREMENT OF ARC LENGTH   0.100    


  INCREMENT    13 STARTS. ATTEMPT NUMBER  1
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  14ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       2.21       TIME AVG. FORCE        1.11    
 LARGEST SCALED RESIDUAL FORCE      -3.63       AT NODE          2   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE      -3.63    
 LARGEST INCREMENT OF DISP.         -1.33       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        -1.33       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.100       TIME AVG. MOMENT      0.321    
 LARGEST SCALED RESIDUAL MOMENT     0.338       AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     0.338    
 LARGEST INCREMENT OF ROTATION     -1.484E-02   AT NODE       1404   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -1.484E-02   AT NODE       1404   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  17ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       2.20       TIME AVG. FORCE        1.11    
 LARGEST SCALED RESIDUAL FORCE      1.737E-02   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE      1.737E-02
 LARGEST INCREMENT OF DISP.         -1.33       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        4.007E-03   AT NODE       1463   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.236       TIME AVG. MOMENT      0.332    
 LARGEST SCALED RESIDUAL MOMENT     5.233E-02   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     5.233E-02
 LARGEST INCREMENT OF ROTATION     -1.498E-02   AT NODE       1404   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.569E-04   AT NODE       1676   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  15ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       2.20       TIME AVG. FORCE        1.11    
 LARGEST SCALED RESIDUAL FORCE     -4.231E-03   AT NODE       1401   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -4.231E-03
 LARGEST INCREMENT OF DISP.         -1.33       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -2.209E-02   AT NODE       1414   DOF  2
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF DISP.    CORRECTION    5.382E-03
          FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                     0.235       TIME AVG. MOMENT      0.332    
 LARGEST SCALED RESIDUAL MOMENT    -7.064E-04   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT    -7.064E-04
 LARGEST INCREMENT OF ROTATION     -1.623E-02   AT NODE       1404   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -1.367E-03   AT NODE       1401   DOF  4
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF ROTATION CORRECTION    1.846E-05
          MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 ITERATION SUMMARY FOR THE INCREMENT:   3 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  3 ARE EQUILIBRIUM ITERATIONS.


                                INCREMENT    13 SUMMARY


     CURRENT LOAD PROPORTIONALITY FACTOR          1.052    
     TOTAL ARC LENGTH    1.18    , INCREMENT OF ARC LENGTH   0.100    


  INCREMENT    14 STARTS. ATTEMPT NUMBER  1
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  17ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       2.39       TIME AVG. FORCE        1.20    
 LARGEST SCALED RESIDUAL FORCE      -3.64       AT NODE          2   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE      -3.64    
 LARGEST INCREMENT OF DISP.         -1.33       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        -1.33       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.106       TIME AVG. MOMENT      0.315    
 LARGEST SCALED RESIDUAL MOMENT     0.362       AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     0.362    
 LARGEST INCREMENT OF ROTATION     -1.591E-02   AT NODE       1404   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -1.591E-02   AT NODE       1404   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  16ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       2.37       TIME AVG. FORCE        1.20    
 LARGEST SCALED RESIDUAL FORCE      1.756E-02   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE      1.756E-02
 LARGEST INCREMENT OF DISP.         -1.33       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        4.739E-03   AT NODE       1450   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.243       TIME AVG. MOMENT      0.325    
 LARGEST SCALED RESIDUAL MOMENT     5.347E-02   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     5.347E-02
 LARGEST INCREMENT OF ROTATION     -1.608E-02   AT NODE       1404   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.825E-04   AT NODE       1480   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  14ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       2.37       TIME AVG. FORCE        1.20    
 LARGEST SCALED RESIDUAL FORCE     -1.059E-02   AT NODE       1414   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -1.059E-02
 LARGEST INCREMENT OF DISP.         -1.33       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -3.358E-02   AT NODE       1414   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.242       TIME AVG. MOMENT      0.325    
 LARGEST SCALED RESIDUAL MOMENT    -1.335E-03   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT    -1.335E-03
 LARGEST INCREMENT OF ROTATION      1.796E-02   AT NODE       1411   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     2.176E-03   AT NODE       1414   DOF  4
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF ROTATION CORRECTION   -5.432E-05
          MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  15ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     4


 AVERAGE FORCE                       2.37       TIME AVG. FORCE        1.20    
 LARGEST SCALED RESIDUAL FORCE     -1.034E-05   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE     -1.034E-05
 LARGEST INCREMENT OF DISP.         -1.33       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        4.064E-05   AT NODE       1394   DOF  3
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     0.242       TIME AVG. MOMENT      0.325    
 LARGEST SCALED RESIDUAL MOMENT    -5.970E-05   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT    -5.970E-05
 LARGEST INCREMENT OF ROTATION     -1.797E-02   AT NODE       1404   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     2.958E-06   AT NODE       1410   DOF  4
   INSTANCE: SHELL-1                                                                         
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED

 ITERATION SUMMARY FOR THE INCREMENT:   4 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  4 ARE EQUILIBRIUM ITERATIONS.


                                INCREMENT    14 SUMMARY


     CURRENT LOAD PROPORTIONALITY FACTOR          1.122    
     TOTAL ARC LENGTH    1.28    , INCREMENT OF ARC LENGTH   0.100    


  INCREMENT    15 STARTS. ATTEMPT NUMBER  1
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  17ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       2.57       TIME AVG. FORCE        1.29    
 LARGEST SCALED RESIDUAL FORCE      -3.60       AT NODE          2   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE      -3.60    
 LARGEST INCREMENT OF DISP.         -1.33       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        -1.33       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.108       TIME AVG. MOMENT      0.311    
 LARGEST SCALED RESIDUAL MOMENT     0.402       AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     0.402    
 LARGEST INCREMENT OF ROTATION      1.887E-02   AT NODE       1411   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.887E-02   AT NODE       1411   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  15ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       2.54       TIME AVG. FORCE        1.29    
 LARGEST SCALED RESIDUAL FORCE      1.758E-02   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE      1.758E-02
 LARGEST INCREMENT OF DISP.         -1.33       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        5.020E-03   AT NODE       1463   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.233       TIME AVG. MOMENT      0.319    
 LARGEST SCALED RESIDUAL MOMENT     5.437E-02   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     5.437E-02
 LARGEST INCREMENT OF ROTATION      1.895E-02   AT NODE       1411   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -1.239E-04   AT NODE       1700   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  16ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       2.54       TIME AVG. FORCE        1.29    
 LARGEST SCALED RESIDUAL FORCE     -1.348E-03   AT NODE       1414   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -1.348E-03
 LARGEST INCREMENT OF DISP.         -1.33       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.555E-02   AT NODE       1401   DOF  2
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF DISP.    CORRECTION   -1.193E-03
          FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                     0.232       TIME AVG. MOMENT      0.319    
 LARGEST SCALED RESIDUAL MOMENT    -4.690E-04   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT    -4.690E-04
 LARGEST INCREMENT OF ROTATION      2.002E-02   AT NODE       1411   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -1.071E-03   AT NODE       1404   DOF  4
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF ROTATION CORRECTION    9.236E-06
          MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 ITERATION SUMMARY FOR THE INCREMENT:   3 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  3 ARE EQUILIBRIUM ITERATIONS.


                                INCREMENT    15 SUMMARY


     CURRENT LOAD PROPORTIONALITY FACTOR          1.186    
     TOTAL ARC LENGTH    1.38    , INCREMENT OF ARC LENGTH   0.100    


  INCREMENT    16 STARTS. ATTEMPT NUMBER  1
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  15ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       2.74       TIME AVG. FORCE        1.38    
 LARGEST SCALED RESIDUAL FORCE      -3.60       AT NODE          2   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE      -3.60    
 LARGEST INCREMENT OF DISP.         -1.33       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        -1.33       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.112       TIME AVG. MOMENT      0.306    
 LARGEST SCALED RESIDUAL MOMENT     0.419       AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     0.419    
 LARGEST INCREMENT OF ROTATION     -2.034E-02   AT NODE       1404   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -2.034E-02   AT NODE       1404   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  17ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        1.38    
 LARGEST SCALED RESIDUAL FORCE      1.779E-02   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE      1.779E-02
 LARGEST INCREMENT OF DISP.         -1.33       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        6.368E-03   AT NODE       1449   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.232       TIME AVG. MOMENT      0.314    
 LARGEST SCALED RESIDUAL MOMENT     5.562E-02   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     5.562E-02
 LARGEST INCREMENT OF ROTATION      2.048E-02   AT NODE       1411   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -1.685E-04   AT NODE       1448   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  17ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        1.38    
 LARGEST SCALED RESIDUAL FORCE     -8.559E-03   AT NODE       1401   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -8.559E-03
 LARGEST INCREMENT OF DISP.         -1.33       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -3.455E-02   AT NODE       1414   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.231       TIME AVG. MOMENT      0.313    
 LARGEST SCALED RESIDUAL MOMENT    -1.401E-03   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT    -1.401E-03
 LARGEST INCREMENT OF ROTATION     -2.275E-02   AT NODE       1404   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -2.270E-03   AT NODE       1404   DOF  4
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF ROTATION CORRECTION    5.719E-05
          MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  14ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     4


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        1.38    
 LARGEST SCALED RESIDUAL FORCE     -3.331E-05   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE     -3.331E-05
 LARGEST INCREMENT OF DISP.         -1.33       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        4.925E-05   AT NODE       1422   DOF  3
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     0.231       TIME AVG. MOMENT      0.313    
 LARGEST SCALED RESIDUAL MOMENT    -1.929E-04   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT    -1.929E-04
 LARGEST INCREMENT OF ROTATION      2.275E-02   AT NODE       1411   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -3.385E-06   AT NODE       1406   DOF  4
   INSTANCE: SHELL-1                                                                         
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED

 ITERATION SUMMARY FOR THE INCREMENT:   4 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  4 ARE EQUILIBRIUM ITERATIONS.


                                INCREMENT    16 SUMMARY


     CURRENT LOAD PROPORTIONALITY FACTOR          1.244    
     TOTAL ARC LENGTH    1.48    , INCREMENT OF ARC LENGTH   0.100    


  INCREMENT    17 STARTS. ATTEMPT NUMBER  1
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  15ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       2.92       TIME AVG. FORCE        1.47    
 LARGEST SCALED RESIDUAL FORCE      -3.56       AT NODE          2   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE      -3.56    
 LARGEST INCREMENT OF DISP.         -1.32       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        -1.32       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.111       TIME AVG. MOMENT      0.302    
 LARGEST SCALED RESIDUAL MOMENT     0.442       AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     0.442    
 LARGEST INCREMENT OF ROTATION     -2.426E-02   AT NODE       1404   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -2.426E-02   AT NODE       1404   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  16ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       2.87       TIME AVG. FORCE        1.46    
 LARGEST SCALED RESIDUAL FORCE      1.778E-02   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE      1.778E-02
 LARGEST INCREMENT OF DISP.         -1.32       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        7.731E-03   AT NODE       1449   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.218       TIME AVG. MOMENT      0.308    
 LARGEST SCALED RESIDUAL MOMENT     5.652E-02   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     5.652E-02
 LARGEST INCREMENT OF ROTATION     -2.435E-02   AT NODE       1404   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.438E-04   AT NODE       1437   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  15ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       2.87       TIME AVG. FORCE        1.46    
 LARGEST SCALED RESIDUAL FORCE     -5.214E-03   AT NODE       1409   DOF  2
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -5.214E-03
 LARGEST INCREMENT OF DISP.         -1.32       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -2.838E-02   AT NODE       1414   DOF  2
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF DISP.    CORRECTION    8.321E-03
          FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                     0.216       TIME AVG. MOMENT      0.308    
 LARGEST SCALED RESIDUAL MOMENT    -8.518E-04   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT    -8.518E-04
 LARGEST INCREMENT OF ROTATION     -2.643E-02   AT NODE       1404   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     2.172E-03   AT NODE       1410   DOF  4
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF ROTATION CORRECTION   -3.273E-05
          MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 ITERATION SUMMARY FOR THE INCREMENT:   3 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  3 ARE EQUILIBRIUM ITERATIONS.


                                INCREMENT    17 SUMMARY


     CURRENT LOAD PROPORTIONALITY FACTOR          1.293    
     TOTAL ARC LENGTH    1.58    , INCREMENT OF ARC LENGTH   0.100    


  INCREMENT    18 STARTS. ATTEMPT NUMBER  1
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  16ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       3.07       TIME AVG. FORCE        1.55    
 LARGEST SCALED RESIDUAL FORCE      -3.61       AT NODE          2   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE      -3.61    
 LARGEST INCREMENT OF DISP.         -1.33       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        -1.33       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.116       TIME AVG. MOMENT      0.297    
 LARGEST SCALED RESIDUAL MOMENT     0.440       AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     0.440    
 LARGEST INCREMENT OF ROTATION     -2.453E-02   AT NODE       1404   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -2.453E-02   AT NODE       1404   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  15ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       3.02       TIME AVG. FORCE        1.55    
 LARGEST SCALED RESIDUAL FORCE      1.824E-02   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE      1.824E-02
 LARGEST INCREMENT OF DISP.         -1.33       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.065E-02   AT NODE       1436   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.216       TIME AVG. MOMENT      0.303    
 LARGEST SCALED RESIDUAL MOMENT     5.830E-02   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     5.830E-02
 LARGEST INCREMENT OF ROTATION     -2.481E-02   AT NODE       1405   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     3.153E-04   AT NODE       1424   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  16ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       3.02       TIME AVG. FORCE        1.55    
 LARGEST SCALED RESIDUAL FORCE     -8.958E-02   AT NODE       1414   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -8.958E-02
 LARGEST INCREMENT OF DISP.         -1.33       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -0.110       AT NODE       1414   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.213       TIME AVG. MOMENT      0.302    
 LARGEST SCALED RESIDUAL MOMENT    -2.756E-03   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT    -2.756E-03
 LARGEST INCREMENT OF ROTATION      3.254E-02   AT NODE       1411   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     7.732E-03   AT NODE       1411   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  15ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     4


 AVERAGE FORCE                       3.02       TIME AVG. FORCE        1.55    
 LARGEST SCALED RESIDUAL FORCE     -1.628E-03   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE     -1.628E-03
 LARGEST INCREMENT OF DISP.         -1.33       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        9.686E-04   AT NODE       1407   DOF  3
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     0.214       TIME AVG. MOMENT      0.302    
 LARGEST SCALED RESIDUAL MOMENT    -9.939E-03   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT    -9.939E-03
 LARGEST INCREMENT OF ROTATION      3.257E-02   AT NODE       1411   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -6.229E-05   AT NODE       1406   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  15ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     5


 AVERAGE FORCE                       3.02       TIME AVG. FORCE        1.55    
 LARGEST SCALED RESIDUAL FORCE     -7.773E-06   AT NODE       1409   DOF  2
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -7.773E-06
 LARGEST INCREMENT OF DISP.         -1.33       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        9.056E-04   AT NODE       1401   DOF  2
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     0.213       TIME AVG. MOMENT      0.302    
 LARGEST SCALED RESIDUAL MOMENT    -1.053E-06   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT    -1.053E-06
 LARGEST INCREMENT OF ROTATION      3.264E-02   AT NODE       1411   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -8.367E-05   AT NODE       1405   DOF  4
   INSTANCE: SHELL-1                                                                         
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED

 ITERATION SUMMARY FOR THE INCREMENT:   5 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  5 ARE EQUILIBRIUM ITERATIONS.


                                INCREMENT    18 SUMMARY


     CURRENT LOAD PROPORTIONALITY FACTOR          1.330    
     TOTAL ARC LENGTH    1.68    , INCREMENT OF ARC LENGTH   0.100    


  INCREMENT    19 STARTS. ATTEMPT NUMBER  1
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  14ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       3.28       TIME AVG. FORCE        1.64    
 LARGEST SCALED RESIDUAL FORCE      -3.42       AT NODE          2   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE      -3.42    
 LARGEST INCREMENT OF DISP.         -1.29       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        -1.29       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.109       TIME AVG. MOMENT      0.292    
 LARGEST SCALED RESIDUAL MOMENT     0.437       AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     0.437    
 LARGEST INCREMENT OF ROTATION      3.649E-02   AT NODE       1410   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     3.649E-02   AT NODE       1410   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  15ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       3.15       TIME AVG. FORCE        1.63    
 LARGEST SCALED RESIDUAL FORCE      1.739E-02   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE      1.739E-02
 LARGEST INCREMENT OF DISP.         -1.30       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.638E-02   AT NODE       1436   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.211       TIME AVG. MOMENT      0.298    
 LARGEST SCALED RESIDUAL MOMENT     5.774E-02   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     5.774E-02
 LARGEST INCREMENT OF ROTATION      3.663E-02   AT NODE       1410   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     2.207E-04   AT NODE       1423   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  18ms


 ***WARNING: THE SYSTEM MATRIX HAS 1 NEGATIVE EIGENVALUES.

     NEGATIVE EIGENVALUES MEAN THAT THE SYSTEM MATRIX IS NOT 
     POSITIVE DEFINITE:
     FOR EXAMPLE, A BIFURCATION (BUCKLING) LOAD MAY HAVE BEEN EXCEEDED.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       3.14       TIME AVG. FORCE        1.63    
 LARGEST SCALED RESIDUAL FORCE      0.186       AT NODE          2   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE      0.186    
 LARGEST INCREMENT OF DISP.         -1.30       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        0.102       AT NODE       1408   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.207       TIME AVG. MOMENT      0.297    
 LARGEST SCALED RESIDUAL MOMENT     0.324       AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     0.324    
 LARGEST INCREMENT OF ROTATION     -4.628E-02   AT NODE       1405   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -9.651E-03   AT NODE       1405   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  14ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     4


 AVERAGE FORCE                       3.14       TIME AVG. FORCE        1.63    
 LARGEST SCALED RESIDUAL FORCE     -0.190       AT NODE          2   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE     -0.190    
 LARGEST INCREMENT OF DISP.         -1.30       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.252E-03   AT NODE       1408   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.208       TIME AVG. MOMENT      0.297    
 LARGEST SCALED RESIDUAL MOMENT    -0.341       AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT    -0.341    
 LARGEST INCREMENT OF ROTATION      4.634E-02   AT NODE       1410   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -4.372E-04   AT NODE         28   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.


 ***NOTE: THE SOLUTION APPEARS TO BE DIVERGING. CONVERGENCE IS JUDGED UNLIKELY.


  INCREMENT    19 STARTS. ATTEMPT NUMBER  2
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  16ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       3.05       TIME AVG. FORCE        1.63    
 LARGEST SCALED RESIDUAL FORCE     -0.214       AT NODE          2   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE     -0.214    
 LARGEST INCREMENT OF DISP.        -0.322       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -0.322       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.218       TIME AVG. MOMENT      0.298    
 LARGEST SCALED RESIDUAL MOMENT     2.718E-02   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     2.718E-02
 LARGEST INCREMENT OF ROTATION      9.111E-03   AT NODE       1410   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     9.111E-03   AT NODE       1410   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  15ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       3.05       TIME AVG. FORCE        1.63    
 LARGEST SCALED RESIDUAL FORCE      1.084E-03   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE      1.084E-03
 LARGEST INCREMENT OF DISP.        -0.322       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        2.026E-03   AT NODE       1408   DOF  3
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     0.217       TIME AVG. MOMENT      0.298    
 LARGEST SCALED RESIDUAL MOMENT     5.546E-03   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     5.546E-03
 LARGEST INCREMENT OF ROTATION      9.218E-03   AT NODE       1410   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.074E-04   AT NODE       1410   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  14ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       3.05       TIME AVG. FORCE        1.63    
 LARGEST SCALED RESIDUAL FORCE      1.014E-04   AT NODE       1406   DOF  2
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      1.014E-04
 LARGEST INCREMENT OF DISP.        -0.322       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -3.641E-03   AT NODE       1414   DOF  2
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF DISP.    CORRECTION   -3.404E-04
          FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                     0.217       TIME AVG. MOMENT      0.298    
 LARGEST SCALED RESIDUAL MOMENT    -4.290E-06   AT NODE         22   DOF  5
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT    -4.290E-06
 LARGEST INCREMENT OF ROTATION      9.519E-03   AT NODE       1410   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     3.007E-04   AT NODE       1410   DOF  4
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF ROTATION CORRECTION   -2.326E-07
          MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 ITERATION SUMMARY FOR THE INCREMENT:   3 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  3 ARE EQUILIBRIUM ITERATIONS.


                                INCREMENT    19 SUMMARY


     CURRENT LOAD PROPORTIONALITY FACTOR          1.337    
     TOTAL ARC LENGTH    1.70    , INCREMENT OF ARC LENGTH   2.500E-02


  INCREMENT    20 STARTS. ATTEMPT NUMBER  1
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  16ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       3.08       TIME AVG. FORCE        1.70    
 LARGEST SCALED RESIDUAL FORCE     -0.211       AT NODE          2   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE     -0.211    
 LARGEST INCREMENT OF DISP.        -0.320       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -0.320       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.221       TIME AVG. MOMENT      0.294    
 LARGEST SCALED RESIDUAL MOMENT     2.653E-02   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     2.653E-02
 LARGEST INCREMENT OF ROTATION      9.871E-03   AT NODE       1410   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     9.871E-03   AT NODE       1410   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  15ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       3.08       TIME AVG. FORCE        1.70    
 LARGEST SCALED RESIDUAL FORCE      1.071E-03   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE      1.071E-03
 LARGEST INCREMENT OF DISP.        -0.320       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        2.391E-03   AT NODE       1408   DOF  3
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     0.220       TIME AVG. MOMENT      0.294    
 LARGEST SCALED RESIDUAL MOMENT     5.484E-03   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     5.484E-03
 LARGEST INCREMENT OF ROTATION      9.998E-03   AT NODE       1410   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.262E-04   AT NODE       1410   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  15ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       3.08       TIME AVG. FORCE        1.70    
 LARGEST SCALED RESIDUAL FORCE      2.134E-04   AT NODE       1406   DOF  2
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      2.134E-04
 LARGEST INCREMENT OF DISP.        -0.320       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -5.058E-03   AT NODE       1414   DOF  2
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF DISP.    CORRECTION   -1.008E-03
          FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                     0.220       TIME AVG. MOMENT      0.294    
 LARGEST SCALED RESIDUAL MOMENT     6.352E-05   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     6.352E-05
 LARGEST INCREMENT OF ROTATION      1.043E-02   AT NODE       1410   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -4.352E-04   AT NODE       1405   DOF  4
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF ROTATION CORRECTION   -5.041E-06
          MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION
          ARC LENGTH INCREMENT MAY NOW INCREASE TO    3.750E-02

 ITERATION SUMMARY FOR THE INCREMENT:   3 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  3 ARE EQUILIBRIUM ITERATIONS.


                                INCREMENT    20 SUMMARY


     CURRENT LOAD PROPORTIONALITY FACTOR          1.341    
     TOTAL ARC LENGTH    1.73    , INCREMENT OF ARC LENGTH   2.500E-02


  INCREMENT    21 STARTS. ATTEMPT NUMBER  1
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  17ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       3.14       TIME AVG. FORCE        1.77    
 LARGEST SCALED RESIDUAL FORCE     -0.467       AT NODE          2   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE     -0.467    
 LARGEST INCREMENT OF DISP.        -0.475       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -0.475       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.219       TIME AVG. MOMENT      0.290    
 LARGEST SCALED RESIDUAL MOMENT     5.753E-02   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     5.753E-02
 LARGEST INCREMENT OF ROTATION      1.627E-02   AT NODE       1410   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.627E-02   AT NODE       1410   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  15ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       3.13       TIME AVG. FORCE        1.77    
 LARGEST SCALED RESIDUAL FORCE      2.369E-03   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE      2.369E-03
 LARGEST INCREMENT OF DISP.        -0.477       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        4.711E-03   AT NODE       1421   DOF  3
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     0.221       TIME AVG. MOMENT      0.291    
 LARGEST SCALED RESIDUAL MOMENT     1.146E-02   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     1.146E-02
 LARGEST INCREMENT OF ROTATION      1.644E-02   AT NODE       1410   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -1.969E-04   AT NODE       1406   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  15ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       3.13       TIME AVG. FORCE        1.77    
 LARGEST SCALED RESIDUAL FORCE      1.082E-02   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE      1.082E-02
 LARGEST INCREMENT OF DISP.        -0.476       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.844E-02   AT NODE       1408   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.219       TIME AVG. MOMENT      0.291    
 LARGEST SCALED RESIDUAL MOMENT     7.217E-02   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     7.217E-02
 LARGEST INCREMENT OF ROTATION     -1.818E-02   AT NODE       1405   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -1.745E-03   AT NODE       1405   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  15ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     4


 AVERAGE FORCE                       3.13       TIME AVG. FORCE        1.77    
 LARGEST SCALED RESIDUAL FORCE     -1.087E-02   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE     -1.087E-02
 LARGEST INCREMENT OF DISP.        -0.476       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.660E-04   AT NODE       1394   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.220       TIME AVG. MOMENT      0.291    
 LARGEST SCALED RESIDUAL MOMENT    -7.253E-02   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT    -7.253E-02
 LARGEST INCREMENT OF ROTATION     -1.820E-02   AT NODE       1405   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     2.511E-05   AT NODE         15   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.


 ***NOTE: THE SOLUTION APPEARS TO BE DIVERGING. CONVERGENCE IS JUDGED UNLIKELY.


  INCREMENT    21 STARTS. ATTEMPT NUMBER  2
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  15ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       3.10       TIME AVG. FORCE        1.77    
 LARGEST SCALED RESIDUAL FORCE     -6.608E-02   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE     -6.608E-02
 LARGEST INCREMENT OF DISP.        -0.178       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -0.178       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.223       TIME AVG. MOMENT      0.291    
 LARGEST SCALED RESIDUAL MOMENT     8.145E-03   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     8.145E-03
 LARGEST INCREMENT OF ROTATION      6.096E-03   AT NODE       1410   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     6.096E-03   AT NODE       1410   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  16ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       3.10       TIME AVG. FORCE        1.77    
 LARGEST SCALED RESIDUAL FORCE      3.199E-04   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE      3.199E-04
 LARGEST INCREMENT OF DISP.        -0.178       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.537E-03   AT NODE       1407   DOF  3
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     0.223       TIME AVG. MOMENT      0.291    
 LARGEST SCALED RESIDUAL MOMENT     1.725E-03   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     1.725E-03
 LARGEST INCREMENT OF ROTATION      6.200E-03   AT NODE       1410   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -1.041E-04   AT NODE       1405   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  17ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       3.10       TIME AVG. FORCE        1.77    
 LARGEST SCALED RESIDUAL FORCE      2.457E-05   AT NODE       1406   DOF  2
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      2.457E-05
 LARGEST INCREMENT OF DISP.        -0.178       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -1.798E-03   AT NODE       1414   DOF  2
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF DISP.    CORRECTION   -1.381E-04
          FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                     0.223       TIME AVG. MOMENT      0.291    
 LARGEST SCALED RESIDUAL MOMENT     1.969E-05   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     1.969E-05
 LARGEST INCREMENT OF ROTATION     -6.348E-03   AT NODE       1405   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -1.480E-04   AT NODE       1405   DOF  4
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF ROTATION CORRECTION   -1.689E-06
          MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION
          ARC LENGTH INCREMENT MAY NOW INCREASE TO    1.406E-02

 ITERATION SUMMARY FOR THE INCREMENT:   3 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  3 ARE EQUILIBRIUM ITERATIONS.


                                INCREMENT    21 SUMMARY


     CURRENT LOAD PROPORTIONALITY FACTOR          1.343    
     TOTAL ARC LENGTH    1.73    , INCREMENT OF ARC LENGTH   9.375E-03


  INCREMENT    22 STARTS. ATTEMPT NUMBER  1
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  16ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       3.13       TIME AVG. FORCE        1.83    
 LARGEST SCALED RESIDUAL FORCE     -0.145       AT NODE          2   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE     -0.145    
 LARGEST INCREMENT OF DISP.        -0.265       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -0.265       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.225       TIME AVG. MOMENT      0.288    
 LARGEST SCALED RESIDUAL MOMENT     1.745E-02   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     1.745E-02
 LARGEST INCREMENT OF ROTATION      9.802E-03   AT NODE       1410   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     9.802E-03   AT NODE       1410   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  16ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       3.12       TIME AVG. FORCE        1.83    
 LARGEST SCALED RESIDUAL FORCE      7.378E-04   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE      7.378E-04
 LARGEST INCREMENT OF DISP.        -0.265       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        2.479E-03   AT NODE       1407   DOF  3
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     0.224       TIME AVG. MOMENT      0.288    
 LARGEST SCALED RESIDUAL MOMENT     3.856E-03   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     3.856E-03
 LARGEST INCREMENT OF ROTATION      9.938E-03   AT NODE       1410   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.426E-04   AT NODE       1409   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  15ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       3.13       TIME AVG. FORCE        1.83    
 LARGEST SCALED RESIDUAL FORCE      5.947E-04   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE      5.947E-04
 LARGEST INCREMENT OF DISP.        -0.265       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        5.180E-03   AT NODE       1408   DOF  3
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     0.224       TIME AVG. MOMENT      0.288    
 LARGEST SCALED RESIDUAL MOMENT     3.525E-03   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     3.525E-03
 LARGEST INCREMENT OF ROTATION      1.042E-02   AT NODE       1410   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -4.839E-04   AT NODE       1405   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  17ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     4


 AVERAGE FORCE                       3.13       TIME AVG. FORCE        1.83    
 LARGEST SCALED RESIDUAL FORCE     -5.983E-04   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE     -5.983E-04
 LARGEST INCREMENT OF DISP.        -0.265       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.575E-05   AT NODE       1393   DOF  3
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     0.224       TIME AVG. MOMENT      0.288    
 LARGEST SCALED RESIDUAL MOMENT    -3.559E-03   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT    -3.559E-03
 LARGEST INCREMENT OF ROTATION      1.042E-02   AT NODE       1410   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -1.364E-06   AT NODE         28   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  17ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     5


 AVERAGE FORCE                       3.13       TIME AVG. FORCE        1.83    
 LARGEST SCALED RESIDUAL FORCE     -2.173E-08   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE     -2.173E-08
 LARGEST INCREMENT OF DISP.        -0.265       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        2.004E-06   AT NODE         40   DOF  2
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     0.224       TIME AVG. MOMENT      0.288    
 LARGEST SCALED RESIDUAL MOMENT    -3.436E-07   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT    -3.436E-07
 LARGEST INCREMENT OF ROTATION      1.042E-02   AT NODE       1410   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -1.389E-06   AT NODE         15   DOF  4
   INSTANCE: SHELL-1                                                                         
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED

 ITERATION SUMMARY FOR THE INCREMENT:   5 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  5 ARE EQUILIBRIUM ITERATIONS.


                                INCREMENT    22 SUMMARY


     CURRENT LOAD PROPORTIONALITY FACTOR          1.345    
     TOTAL ARC LENGTH    1.75    , INCREMENT OF ARC LENGTH   1.406E-02


  INCREMENT    23 STARTS. ATTEMPT NUMBER  1
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  15ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       3.15       TIME AVG. FORCE        1.89    
 LARGEST SCALED RESIDUAL FORCE     -0.141       AT NODE          2   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE     -0.141    
 LARGEST INCREMENT OF DISP.        -0.261       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -0.261       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.225       TIME AVG. MOMENT      0.285    
 LARGEST SCALED RESIDUAL MOMENT     1.607E-02   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     1.607E-02
 LARGEST INCREMENT OF ROTATION      1.097E-02   AT NODE       1410   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.097E-02   AT NODE       1410   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  17ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       3.15       TIME AVG. FORCE        1.89    
 LARGEST SCALED RESIDUAL FORCE      7.211E-04   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE      7.211E-04
 LARGEST INCREMENT OF DISP.        -0.261       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        2.977E-03   AT NODE       1407   DOF  3
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF DISP.    CORRECTION   -1.434E-03
          FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                     0.225       TIME AVG. MOMENT      0.285    
 LARGEST SCALED RESIDUAL MOMENT     3.775E-03   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     3.775E-03
 LARGEST INCREMENT OF ROTATION     -1.112E-02   AT NODE       1405   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.769E-04   AT NODE       1409   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  15ms


 ***WARNING: THE SYSTEM MATRIX HAS 1 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       3.15       TIME AVG. FORCE        1.89    
 LARGEST SCALED RESIDUAL FORCE     -6.215E-04   AT NODE       1409   DOF  2
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -6.215E-04
 LARGEST INCREMENT OF DISP.        -0.261       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        7.995E-03   AT NODE       1407   DOF  3
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     0.224       TIME AVG. MOMENT      0.285    
 LARGEST SCALED RESIDUAL MOMENT     7.655E-04   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     7.655E-04
 LARGEST INCREMENT OF ROTATION     -1.186E-02   AT NODE       1405   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     7.400E-04   AT NODE       1410   DOF  4
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  16ms


 ***WARNING: THE SYSTEM MATRIX HAS 1 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     4


 AVERAGE FORCE                       3.15       TIME AVG. FORCE        1.89    
 LARGEST SCALED RESIDUAL FORCE     -1.465E-04   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE     -1.465E-04
 LARGEST INCREMENT OF DISP.        -0.261       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        4.261E-05   AT NODE       1408   DOF  3
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     0.224       TIME AVG. MOMENT      0.285    
 LARGEST SCALED RESIDUAL MOMENT    -8.222E-04   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT    -8.222E-04
 LARGEST INCREMENT OF ROTATION      1.187E-02   AT NODE       1410   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     3.595E-06   AT NODE       1409   DOF  4
   INSTANCE: SHELL-1                                                                         
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED

 ITERATION SUMMARY FOR THE INCREMENT:   4 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  4 ARE EQUILIBRIUM ITERATIONS.


                                INCREMENT    23 SUMMARY


     CURRENT LOAD PROPORTIONALITY FACTOR          1.344    
     TOTAL ARC LENGTH    1.76    , INCREMENT OF ARC LENGTH   1.406E-02


  INCREMENT    24 STARTS. ATTEMPT NUMBER  1
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  14ms


 ***WARNING: THE SYSTEM MATRIX HAS 1 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       3.17       TIME AVG. FORCE        1.94    
 LARGEST SCALED RESIDUAL FORCE      0.178       AT NODE       1406   DOF  2
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      0.178    
 LARGEST INCREMENT OF DISP.        -0.254       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -0.254       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.225       TIME AVG. MOMENT      0.282    
 LARGEST SCALED RESIDUAL MOMENT     1.306E-02   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     1.306E-02
 LARGEST INCREMENT OF ROTATION     -1.264E-02   AT NODE       1405   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -1.264E-02   AT NODE       1405   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  16ms


 ***WARNING: THE SYSTEM MATRIX HAS 2 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       3.17       TIME AVG. FORCE        1.94    
 LARGEST SCALED RESIDUAL FORCE      6.869E-04   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE      6.869E-04
 LARGEST INCREMENT OF DISP.        -0.254       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        3.819E-03   AT NODE       1408   DOF  3
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF DISP.    CORRECTION   -1.627E-03
          FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                     0.224       TIME AVG. MOMENT      0.282    
 LARGEST SCALED RESIDUAL MOMENT     3.606E-03   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     3.606E-03
 LARGEST INCREMENT OF ROTATION      1.283E-02   AT NODE       1410   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     2.396E-04   AT NODE       1409   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  16ms


 ***WARNING: THE SYSTEM MATRIX HAS 3 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       3.17       TIME AVG. FORCE        1.94    
 LARGEST SCALED RESIDUAL FORCE     -2.032E-03   AT NODE       1409   DOF  2
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -2.032E-03
 LARGEST INCREMENT OF DISP.        -0.254       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.471E-02   AT NODE       1407   DOF  3
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     0.224       TIME AVG. MOMENT      0.282    
 LARGEST SCALED RESIDUAL MOMENT     1.235E-04   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     1.235E-04
 LARGEST INCREMENT OF ROTATION     -1.417E-02   AT NODE       1405   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -1.341E-03   AT NODE       1405   DOF  4
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF ROTATION CORRECTION   -4.591E-05
          MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  16ms


 ***WARNING: THE SYSTEM MATRIX HAS 5 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     4


 AVERAGE FORCE                       3.17       TIME AVG. FORCE        1.94    
 LARGEST SCALED RESIDUAL FORCE     -4.420E-05   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE     -4.420E-05
 LARGEST INCREMENT OF DISP.        -0.254       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.803E-04   AT NODE       1407   DOF  3
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     0.224       TIME AVG. MOMENT      0.282    
 LARGEST SCALED RESIDUAL MOMENT    -2.502E-04   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT    -2.502E-04
 LARGEST INCREMENT OF ROTATION     -1.418E-02   AT NODE       1405   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.645E-05   AT NODE       1409   DOF  4
   INSTANCE: SHELL-1                                                                         
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED
          ARC LENGTH INCREMENT MAY NOW INCREASE TO    2.109E-02

 ITERATION SUMMARY FOR THE INCREMENT:   4 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  4 ARE EQUILIBRIUM ITERATIONS.


                                INCREMENT    24 SUMMARY


     CURRENT LOAD PROPORTIONALITY FACTOR          1.341    
     TOTAL ARC LENGTH    1.78    , INCREMENT OF ARC LENGTH   1.406E-02


  INCREMENT    25 STARTS. ATTEMPT NUMBER  1
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  16ms


 ***WARNING: THE SYSTEM MATRIX HAS 5 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       3.21       TIME AVG. FORCE        1.99    
 LARGEST SCALED RESIDUAL FORCE      0.602       AT NODE       1406   DOF  2
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      0.602    
 LARGEST INCREMENT OF DISP.        -0.362       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -0.362       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.217       TIME AVG. MOMENT      0.280    
 LARGEST SCALED RESIDUAL MOMENT     2.515E-02   AT NODE       1068   DOF  5
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     2.515E-02
 LARGEST INCREMENT OF ROTATION     -2.317E-02   AT NODE       1405   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -2.317E-02   AT NODE       1405   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  15ms


 ***WARNING: THE SYSTEM MATRIX HAS 10 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       3.19       TIME AVG. FORCE        1.99    
 LARGEST SCALED RESIDUAL FORCE      1.394E-03   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE      1.394E-03
 LARGEST INCREMENT OF DISP.        -0.364       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        9.132E-03   AT NODE       1408   DOF  3
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     0.216       TIME AVG. MOMENT      0.280    
 LARGEST SCALED RESIDUAL MOMENT     7.069E-03   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     7.069E-03
 LARGEST INCREMENT OF ROTATION     -2.346E-02   AT NODE       1405   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     4.788E-04   AT NODE       1409   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  16ms


 ***WARNING: THE SYSTEM MATRIX HAS 11 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       3.18       TIME AVG. FORCE        1.99    
 LARGEST SCALED RESIDUAL FORCE      0.226       AT NODE       1407   DOF  2
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      0.226    
 LARGEST INCREMENT OF DISP.        -0.369       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        0.143       AT NODE       1408   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.211       TIME AVG. MOMENT      0.280    
 LARGEST SCALED RESIDUAL MOMENT    -3.899E-03   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT    -3.899E-03
 LARGEST INCREMENT OF ROTATION     -3.577E-02   AT NODE       1405   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -1.348E-02   AT NODE       1406   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  15ms


 ***WARNING: THE SYSTEM MATRIX HAS 14 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     4


 AVERAGE FORCE                       3.18       TIME AVG. FORCE        1.99    
 LARGEST SCALED RESIDUAL FORCE     -3.018E-03   AT NODE       1394   DOF  2
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -3.018E-03
 LARGEST INCREMENT OF DISP.        -0.369       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.012E-02   AT NODE       1393   DOF  3
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     0.211       TIME AVG. MOMENT      0.280    
 LARGEST SCALED RESIDUAL MOMENT    -8.879E-04   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT    -8.879E-04
 LARGEST INCREMENT OF ROTATION     -3.620E-02   AT NODE       1405   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -1.374E-03   AT NODE       1392   DOF  4
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF ROTATION CORRECTION   -3.130E-04
          MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  15ms


 ***WARNING: THE SYSTEM MATRIX HAS 15 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     5


 AVERAGE FORCE                       3.21       TIME AVG. FORCE        1.99    
 LARGEST SCALED RESIDUAL FORCE       2.62       AT NODE       1421   DOF  2
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE       2.62    
 LARGEST INCREMENT OF DISP.        -0.374       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -0.337       AT NODE       1394   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.230       TIME AVG. MOMENT      0.280    
 LARGEST SCALED RESIDUAL MOMENT    -7.255E-02   AT NODE       1420   DOF  4
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT    -7.255E-02
 LARGEST INCREMENT OF ROTATION      2.300E-02   AT NODE       1411   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -4.169E-02   AT NODE       1395   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.


 ***NOTE: THE SOLUTION APPEARS TO BE DIVERGING. CONVERGENCE IS JUDGED UNLIKELY.


  INCREMENT    25 STARTS. ATTEMPT NUMBER  2
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  15ms


 ***WARNING: THE SYSTEM MATRIX HAS 5 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       3.18       TIME AVG. FORCE        1.99    
 LARGEST SCALED RESIDUAL FORCE      8.460E-02   AT NODE       1406   DOF  2
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      8.460E-02
 LARGEST INCREMENT OF DISP.        -0.136       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -0.136       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.224       TIME AVG. MOMENT      0.280    
 LARGEST SCALED RESIDUAL MOMENT     3.554E-03   AT NODE       1075   DOF  5
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     3.554E-03
 LARGEST INCREMENT OF ROTATION     -8.674E-03   AT NODE       1405   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -8.674E-03   AT NODE       1405   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  17ms


 ***WARNING: THE SYSTEM MATRIX HAS 6 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       3.18       TIME AVG. FORCE        1.99    
 LARGEST SCALED RESIDUAL FORCE      1.984E-04   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE      1.984E-04
 LARGEST INCREMENT OF DISP.        -0.136       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        3.000E-03   AT NODE       1407   DOF  3
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF DISP.    CORRECTION    6.908E-04
          FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                     0.224       TIME AVG. MOMENT      0.280    
 LARGEST SCALED RESIDUAL MOMENT     1.086E-03   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     1.086E-03
 LARGEST INCREMENT OF ROTATION     -8.862E-03   AT NODE       1405   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -2.455E-04   AT NODE       1406   DOF  4
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF ROTATION CORRECTION   -7.500E-05
          MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION
          ARC LENGTH INCREMENT MAY NOW INCREASE TO    7.910E-03

 ITERATION SUMMARY FOR THE INCREMENT:   2 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  2 ARE EQUILIBRIUM ITERATIONS.


                                INCREMENT    25 SUMMARY


     CURRENT LOAD PROPORTIONALITY FACTOR          1.337    
     TOTAL ARC LENGTH    1.78    , INCREMENT OF ARC LENGTH   5.273E-03


  INCREMENT    26 STARTS. ATTEMPT NUMBER  1
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  17ms


 ***WARNING: THE SYSTEM MATRIX HAS 7 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       3.19       TIME AVG. FORCE        2.04    
 LARGEST SCALED RESIDUAL FORCE      0.256       AT NODE       1406   DOF  2
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      0.256    
 LARGEST INCREMENT OF DISP.        -0.193       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -0.193       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.219       TIME AVG. MOMENT      0.278    
 LARGEST SCALED RESIDUAL MOMENT     9.088E-03   AT NODE       1082   DOF  5
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     9.088E-03
 LARGEST INCREMENT OF ROTATION     -1.513E-02   AT NODE       1405   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -1.513E-02   AT NODE       1405   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  15ms


 ***WARNING: THE SYSTEM MATRIX HAS 10 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       3.19       TIME AVG. FORCE        2.04    
 LARGEST SCALED RESIDUAL FORCE      4.962E-04   AT NODE       1407   DOF  2
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      4.962E-04
 LARGEST INCREMENT OF DISP.        -0.193       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        7.034E-03   AT NODE       1408   DOF  3
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     0.217       TIME AVG. MOMENT      0.278    
 LARGEST SCALED RESIDUAL MOMENT     2.139E-03   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     2.139E-03
 LARGEST INCREMENT OF ROTATION     -1.548E-02   AT NODE       1405   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     5.948E-04   AT NODE       1409   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  18ms


 ***WARNING: THE SYSTEM MATRIX HAS 11 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       3.18       TIME AVG. FORCE        2.04    
 LARGEST SCALED RESIDUAL FORCE      7.459E-02   AT NODE       1407   DOF  2
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      7.459E-02
 LARGEST INCREMENT OF DISP.         0.218       AT NODE       1422   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        7.960E-02   AT NODE       1407   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.215       TIME AVG. MOMENT      0.278    
 LARGEST SCALED RESIDUAL MOMENT    -1.197E-03   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT    -1.197E-03
 LARGEST INCREMENT OF ROTATION      2.212E-02   AT NODE       1410   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -7.668E-03   AT NODE       1406   DOF  4
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  16ms


 ***WARNING: THE SYSTEM MATRIX HAS 12 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     4


 AVERAGE FORCE                       3.18       TIME AVG. FORCE        2.04    
 LARGEST SCALED RESIDUAL FORCE      3.508E-03   AT NODE       1477   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      3.508E-03
 LARGEST INCREMENT OF DISP.         0.226       AT NODE       1408   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        9.075E-03   AT NODE       1408   DOF  3
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     0.215       TIME AVG. MOMENT      0.278    
 LARGEST SCALED RESIDUAL MOMENT    -2.384E-04   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT    -2.384E-04
 LARGEST INCREMENT OF ROTATION      2.303E-02   AT NODE       1409   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.343E-03   AT NODE       1409   DOF  4
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  15ms


 ***WARNING: THE SYSTEM MATRIX HAS 13 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     5


 AVERAGE FORCE                       3.18       TIME AVG. FORCE        2.04    
 LARGEST SCALED RESIDUAL FORCE      0.208       AT NODE       1197   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      0.208    
 LARGEST INCREMENT OF DISP.         0.216       AT NODE       1477   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -4.658E-02   AT NODE       1408   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.221       TIME AVG. MOMENT      0.278    
 LARGEST SCALED RESIDUAL MOMENT    -1.749E-03   AT NODE       1420   DOF  5
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT    -1.749E-03
 LARGEST INCREMENT OF ROTATION     -2.329E-02   AT NODE       1405   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     7.467E-03   AT NODE       1407   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.


 ***NOTE: THE SOLUTION APPEARS TO BE DIVERGING. CONVERGENCE IS JUDGED UNLIKELY.


  INCREMENT    26 STARTS. ATTEMPT NUMBER  2
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  19ms


 ***WARNING: THE SYSTEM MATRIX HAS 7 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       3.18       TIME AVG. FORCE        2.04    
 LARGEST SCALED RESIDUAL FORCE      3.601E-02   AT NODE       1406   DOF  2
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      3.601E-02
 LARGEST INCREMENT OF DISP.        -7.245E-02   AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -7.245E-02   AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.222       TIME AVG. MOMENT      0.278    
 LARGEST SCALED RESIDUAL MOMENT     1.645E-03   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     1.645E-03
 LARGEST INCREMENT OF ROTATION      5.667E-03   AT NODE       1410   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     5.667E-03   AT NODE       1410   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  17ms


 ***WARNING: THE SYSTEM MATRIX HAS 8 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       3.18       TIME AVG. FORCE        2.04    
 LARGEST SCALED RESIDUAL FORCE      2.729E-04   AT NODE       1407   DOF  2
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      2.729E-04
 LARGEST INCREMENT OF DISP.        -7.054E-02   AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        5.150E-03   AT NODE       1407   DOF  3
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     0.222       TIME AVG. MOMENT      0.278    
 LARGEST SCALED RESIDUAL MOMENT     3.296E-04   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     3.296E-04
 LARGEST INCREMENT OF ROTATION     -6.051E-03   AT NODE       1405   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -4.645E-04   AT NODE       1406   DOF  4
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  17ms


 ***WARNING: THE SYSTEM MATRIX HAS 9 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       3.18       TIME AVG. FORCE        2.04    
 LARGEST SCALED RESIDUAL FORCE     -6.081E-04   AT NODE       1408   DOF  2
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -6.081E-04
 LARGEST INCREMENT OF DISP.        -6.914E-02   AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        8.272E-03   AT NODE       1407   DOF  3
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     0.221       TIME AVG. MOMENT      0.278    
 LARGEST SCALED RESIDUAL MOMENT    -3.625E-05   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT    -3.625E-05
 LARGEST INCREMENT OF ROTATION     -6.749E-03   AT NODE       1405   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -7.098E-04   AT NODE       1406   DOF  4
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  15ms


 ***WARNING: THE SYSTEM MATRIX HAS 9 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     4


 AVERAGE FORCE                       3.18       TIME AVG. FORCE        2.04    
 LARGEST SCALED RESIDUAL FORCE     -2.742E-06   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE     -2.742E-06
 LARGEST INCREMENT OF DISP.        -6.909E-02   AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.270E-04   AT NODE       1408   DOF  3
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     0.221       TIME AVG. MOMENT      0.278    
 LARGEST SCALED RESIDUAL MOMENT    -1.561E-05   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT    -1.561E-05
 LARGEST INCREMENT OF ROTATION     -6.758E-03   AT NODE       1405   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.241E-05   AT NODE       1409   DOF  4
   INSTANCE: SHELL-1                                                                         
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED
          ARC LENGTH INCREMENT MAY NOW INCREASE TO    2.966E-03

 ITERATION SUMMARY FOR THE INCREMENT:   4 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  4 ARE EQUILIBRIUM ITERATIONS.


                                INCREMENT    26 SUMMARY


     CURRENT LOAD PROPORTIONALITY FACTOR          1.333    
     TOTAL ARC LENGTH    1.78    , INCREMENT OF ARC LENGTH   1.978E-03


  INCREMENT    27 STARTS. ATTEMPT NUMBER  1
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  15ms


 ***WARNING: THE SYSTEM MATRIX HAS 9 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       3.18       TIME AVG. FORCE        2.08    
 LARGEST SCALED RESIDUAL FORCE     -0.105       AT NODE       1409   DOF  2
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -0.105    
 LARGEST INCREMENT OF DISP.        -0.102       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -0.102       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.219       TIME AVG. MOMENT      0.276    
 LARGEST SCALED RESIDUAL MOMENT     3.289E-03   AT NODE       1172   DOF  5
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     3.289E-03
 LARGEST INCREMENT OF ROTATION     -9.767E-03   AT NODE       1405   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -9.767E-03   AT NODE       1405   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  15ms


 ***WARNING: THE SYSTEM MATRIX HAS 10 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       3.18       TIME AVG. FORCE        2.08    
 LARGEST SCALED RESIDUAL FORCE      4.902E-04   AT NODE       1407   DOF  2
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      4.902E-04
 LARGEST INCREMENT OF DISP.        -0.101       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        5.198E-03   AT NODE       1407   DOF  3
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     0.219       TIME AVG. MOMENT      0.276    
 LARGEST SCALED RESIDUAL MOMENT     6.147E-04   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     6.147E-04
 LARGEST INCREMENT OF ROTATION      1.002E-02   AT NODE       1410   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -5.666E-04   AT NODE       1406   DOF  4
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  15ms


 ***WARNING: THE SYSTEM MATRIX HAS 13 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       3.18       TIME AVG. FORCE        2.08    
 LARGEST SCALED RESIDUAL FORCE      1.186E-02   AT NODE       1351   DOF  2
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      1.186E-02
 LARGEST INCREMENT OF DISP.         0.124       AT NODE       1449   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        2.827E-02   AT NODE       1351   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.218       TIME AVG. MOMENT      0.276    
 LARGEST SCALED RESIDUAL MOMENT    -2.599E-04   AT NODE       1507   DOF  5
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT    -2.599E-04
 LARGEST INCREMENT OF ROTATION      1.253E-02   AT NODE       1410   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     2.847E-03   AT NODE       1465   DOF  4
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  15ms


 ***WARNING: THE SYSTEM MATRIX HAS 13 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     4


 AVERAGE FORCE                       3.18       TIME AVG. FORCE        2.08    
 LARGEST SCALED RESIDUAL FORCE      5.119E-03   AT NODE       1645   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      5.119E-03
 LARGEST INCREMENT OF DISP.         0.125       AT NODE       1422   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        3.137E-03   AT NODE       1394   DOF  3
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     0.218       TIME AVG. MOMENT      0.276    
 LARGEST SCALED RESIDUAL MOMENT    -2.619E-05   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT    -2.619E-05
 LARGEST INCREMENT OF ROTATION     -1.265E-02   AT NODE       1406   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -6.331E-04   AT NODE       1421   DOF  4
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF ROTATION CORRECTION   -6.382E-05
          MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  15ms


 ***WARNING: THE SYSTEM MATRIX HAS 13 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     5


 AVERAGE FORCE                       3.18       TIME AVG. FORCE        2.08    
 LARGEST SCALED RESIDUAL FORCE      1.066E-04   AT NODE       1674   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      1.066E-04
 LARGEST INCREMENT OF DISP.         0.127       AT NODE       1422   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.681E-03   AT NODE       1366   DOF  3
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF DISP.    CORRECTION    3.500E-05
          FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                     0.218       TIME AVG. MOMENT      0.276    
 LARGEST SCALED RESIDUAL MOMENT    -1.306E-06   AT NODE       1476   DOF  5
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT    -1.306E-06
 LARGEST INCREMENT OF ROTATION     -1.280E-02   AT NODE       1406   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.755E-04   AT NODE       1367   DOF  4
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF ROTATION CORRECTION    8.752E-06
          MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 ITERATION SUMMARY FOR THE INCREMENT:   5 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  5 ARE EQUILIBRIUM ITERATIONS.


                                INCREMENT    27 SUMMARY


     CURRENT LOAD PROPORTIONALITY FACTOR          1.326    
     TOTAL ARC LENGTH    1.79    , INCREMENT OF ARC LENGTH   2.966E-03


  INCREMENT    28 STARTS. ATTEMPT NUMBER  1
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  15ms


 ***WARNING: THE SYSTEM MATRIX HAS 13 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       3.18       TIME AVG. FORCE        2.12    
 LARGEST SCALED RESIDUAL FORCE     -0.408       AT NODE       1408   DOF  2
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -0.408    
 LARGEST INCREMENT OF DISP.         0.165       AT NODE       1407   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        0.165       AT NODE       1407   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.216       TIME AVG. MOMENT      0.273    
 LARGEST SCALED RESIDUAL MOMENT     6.058E-03   AT NODE       1251   DOF  5
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     6.058E-03
 LARGEST INCREMENT OF ROTATION      1.755E-02   AT NODE       1409   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.755E-02   AT NODE       1409   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  15ms


 ***WARNING: THE SYSTEM MATRIX HAS 16 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       3.18       TIME AVG. FORCE        2.12    
 LARGEST SCALED RESIDUAL FORCE       2.89       AT NODE       1141   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE       2.89    
 LARGEST INCREMENT OF DISP.         0.204       AT NODE       1506   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        6.591E-02   AT NODE       1506   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.226       TIME AVG. MOMENT      0.274    
 LARGEST SCALED RESIDUAL MOMENT    -7.643E-03   AT NODE       1589   DOF  5
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT    -7.643E-03
 LARGEST INCREMENT OF ROTATION      2.400E-02   AT NODE       1507   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -1.542E-02   AT NODE       1505   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  16ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       3.19       TIME AVG. FORCE        2.12    
 LARGEST SCALED RESIDUAL FORCE       4.03       AT NODE       1673   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE       4.03    
 LARGEST INCREMENT OF DISP.        -6.637E-02   AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -0.195       AT NODE       1506   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.230       TIME AVG. MOMENT      0.274    
 LARGEST SCALED RESIDUAL MOMENT    -3.298E-02   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT    -3.298E-02
 LARGEST INCREMENT OF ROTATION      1.636E-02   AT NODE       1673   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -2.207E-02   AT NODE       1646   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  15ms


 ***WARNING: THE SYSTEM MATRIX HAS 12 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     4


 AVERAGE FORCE                       3.17       TIME AVG. FORCE        2.12    
 LARGEST SCALED RESIDUAL FORCE      -72.2       AT NODE       1365   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      -72.2    
 LARGEST INCREMENT OF DISP.         0.351       AT NODE       1422   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        0.339       AT NODE       1422   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.235       TIME AVG. MOMENT      0.274    
 LARGEST SCALED RESIDUAL MOMENT     0.296       AT NODE       1310   DOF  5
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     0.296    
 LARGEST INCREMENT OF ROTATION     -8.129E-02   AT NODE       1421   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -8.032E-02   AT NODE       1421   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.


 ***NOTE: THE SOLUTION APPEARS TO BE DIVERGING. CONVERGENCE IS JUDGED UNLIKELY.


  INCREMENT    28 STARTS. ATTEMPT NUMBER  2
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  16ms


 ***WARNING: THE SYSTEM MATRIX HAS 13 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       3.18       TIME AVG. FORCE        2.12    
 LARGEST SCALED RESIDUAL FORCE      2.514E-02   AT NODE       1407   DOF  2
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      2.514E-02
 LARGEST INCREMENT OF DISP.         4.107E-02   AT NODE       1407   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        4.107E-02   AT NODE       1407   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.219       TIME AVG. MOMENT      0.274    
 LARGEST SCALED RESIDUAL MOMENT     3.774E-04   AT NODE       1242   DOF  5
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     3.774E-04
 LARGEST INCREMENT OF ROTATION      4.360E-03   AT NODE       1409   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     4.360E-03   AT NODE       1409   DOF  4
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF ROTATION CORRECTION   -8.184E-07
          MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  15ms


 ***WARNING: THE SYSTEM MATRIX HAS 13 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       3.16       TIME AVG. FORCE        2.12    
 LARGEST SCALED RESIDUAL FORCE       61.5       AT NODE       1198   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE       61.5    
 LARGEST INCREMENT OF DISP.         0.660       AT NODE       1407   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        0.619       AT NODE       1407   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.233       TIME AVG. MOMENT      0.274    
 LARGEST SCALED RESIDUAL MOMENT    -0.970       AT NODE       1409   DOF  4
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT    -0.970    
 LARGEST INCREMENT OF ROTATION      0.121       AT NODE       1408   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     0.119       AT NODE       1408   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  15ms


 ***WARNING: THE SYSTEM MATRIX HAS 10 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       3.78       TIME AVG. FORCE        2.14    
 LARGEST SCALED RESIDUAL FORCE       923.       AT NODE       1449   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE       923.    
 LARGEST INCREMENT OF DISP.          1.56       AT NODE       1421   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.         1.02       AT NODE       1421   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.255       TIME AVG. MOMENT      0.275    
 LARGEST SCALED RESIDUAL MOMENT      10.6       AT NODE       1449   DOF  5
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT      10.6    
 LARGEST INCREMENT OF ROTATION     -0.297       AT NODE       1406   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -0.236       AT NODE       1435   DOF  5
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  16ms


 ***WARNING: THE SYSTEM MATRIX HAS 4 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     4


 AVERAGE FORCE                       3.08       TIME AVG. FORCE        2.11    
 LARGEST SCALED RESIDUAL FORCE       157.       AT NODE       1631   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE       157.    
 LARGEST INCREMENT OF DISP.          2.29       AT NODE       1421   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.         1.00       AT NODE       1476   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.199       TIME AVG. MOMENT      0.273    
 LARGEST SCALED RESIDUAL MOMENT     -4.48       AT NODE       1450   DOF  5
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     -4.48    
 LARGEST INCREMENT OF ROTATION     -0.251       AT NODE       1420   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     0.165       AT NODE       1644   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  17ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     5


 AVERAGE FORCE                       2.77       TIME AVG. FORCE        2.10    
 LARGEST SCALED RESIDUAL FORCE      -118.       AT NODE       1225   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      -118.    
 LARGEST INCREMENT OF DISP.          2.41       AT NODE       1407   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        0.446       AT NODE       1227   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.380       TIME AVG. MOMENT      0.279    
 LARGEST SCALED RESIDUAL MOMENT      119.       AT NODE       1450   DOF  5
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT      119.    
 LARGEST INCREMENT OF ROTATION      0.382       AT NODE       1437   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -0.350       AT NODE       1436   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  15ms


 ***WARNING: THE SYSTEM MATRIX HAS 17 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     6


 AVERAGE FORCE                       78.7       TIME AVG. FORCE        4.81    
 LARGEST SCALED RESIDUAL FORCE      1.589E+04   AT NODE       1517   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      1.589E+04
 LARGEST INCREMENT OF DISP.          28.3       AT NODE       1494   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.         26.9       AT NODE       1494   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                      39.8       TIME AVG. MOMENT       1.69    
 LARGEST SCALED RESIDUAL MOMENT     1.305E+04   AT NODE       1490   DOF  4
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     1.305E+04
 LARGEST INCREMENT OF ROTATION       5.71       AT NODE       1481   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION      8.16       AT NODE       1495   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.


 ***NOTE: THE SOLUTION APPEARS TO BE DIVERGING. CONVERGENCE IS JUDGED UNLIKELY.


  INCREMENT    28 STARTS. ATTEMPT NUMBER  3
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  15ms


 ***WARNING: THE SYSTEM MATRIX HAS 13 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       3.18       TIME AVG. FORCE        2.12    
 LARGEST SCALED RESIDUAL FORCE      1.257E-04   AT NODE       1449   DOF  2
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      1.257E-04
 LARGEST INCREMENT OF DISP.         2.563E-03   AT NODE       1408   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        2.563E-03   AT NODE       1408   DOF  3
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     0.220       TIME AVG. MOMENT      0.274    
 LARGEST SCALED RESIDUAL MOMENT    -2.626E-06   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT    -2.626E-06
 LARGEST INCREMENT OF ROTATION      2.719E-04   AT NODE       1409   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     2.719E-04   AT NODE       1409   DOF  4
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF ROTATION CORRECTION    5.626E-09
          MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  20ms


 ***WARNING: THE SYSTEM MATRIX HAS 13 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       3.18       TIME AVG. FORCE        2.12    
 LARGEST SCALED RESIDUAL FORCE      1.297E-07   AT NODE       1409   DOF  2
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      1.297E-07
 LARGEST INCREMENT OF DISP.         2.626E-03   AT NODE       1407   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        6.369E-05   AT NODE       1407   DOF  3
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF DISP.    CORRECTION    7.747E-08
          FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                     0.220       TIME AVG. MOMENT      0.274    
 LARGEST SCALED RESIDUAL MOMENT     6.353E-08   AT NODE       1449   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     6.353E-08
 LARGEST INCREMENT OF ROTATION      2.809E-04   AT NODE       1409   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     8.911E-06   AT NODE       1409   DOF  4
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF ROTATION CORRECTION   -2.156E-07
          MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 ITERATION SUMMARY FOR THE INCREMENT:   2 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  2 ARE EQUILIBRIUM ITERATIONS.


                                INCREMENT    28 SUMMARY


     CURRENT LOAD PROPORTIONALITY FACTOR          1.325    
     TOTAL ARC LENGTH    1.79    , INCREMENT OF ARC LENGTH   1.854E-04


  INCREMENT    29 STARTS. ATTEMPT NUMBER  1
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  15ms


 ***WARNING: THE SYSTEM MATRIX HAS 13 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       3.18       TIME AVG. FORCE        2.15    
 LARGEST SCALED RESIDUAL FORCE     -1.027E-04   AT NODE       1408   DOF  2
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -1.027E-04
 LARGEST INCREMENT OF DISP.         2.621E-03   AT NODE       1408   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        2.621E-03   AT NODE       1408   DOF  3
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     0.222       TIME AVG. MOMENT      0.272    
 LARGEST SCALED RESIDUAL MOMENT    -2.506E-06   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT    -2.506E-06
 LARGEST INCREMENT OF ROTATION      2.798E-04   AT NODE       1409   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     2.798E-04   AT NODE       1409   DOF  4
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF ROTATION CORRECTION    4.304E-09
          MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  16ms


 ***WARNING: THE SYSTEM MATRIX HAS 13 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       3.18       TIME AVG. FORCE        2.15    
 LARGEST SCALED RESIDUAL FORCE      2.878E-08   AT NODE       1409   DOF  2
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      2.878E-08
 LARGEST INCREMENT OF DISP.         2.652E-03   AT NODE       1407   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        3.063E-05   AT NODE       1407   DOF  3
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF DISP.    CORRECTION   -8.624E-07
          FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                     0.222       TIME AVG. MOMENT      0.272    
 LARGEST SCALED RESIDUAL MOMENT     5.170E-08   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     5.170E-08
 LARGEST INCREMENT OF ROTATION      2.841E-04   AT NODE       1409   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     4.242E-06   AT NODE       1409   DOF  4
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF ROTATION CORRECTION   -8.751E-08
          MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION
          ARC LENGTH INCREMENT MAY NOW INCREASE TO    2.781E-04

 ITERATION SUMMARY FOR THE INCREMENT:   2 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  2 ARE EQUILIBRIUM ITERATIONS.


                                INCREMENT    29 SUMMARY


     CURRENT LOAD PROPORTIONALITY FACTOR          1.325    
     TOTAL ARC LENGTH    1.79    , INCREMENT OF ARC LENGTH   1.854E-04


  INCREMENT    30 STARTS. ATTEMPT NUMBER  1
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  16ms


 ***WARNING: THE SYSTEM MATRIX HAS 13 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       3.18       TIME AVG. FORCE        2.19    
 LARGEST SCALED RESIDUAL FORCE     -2.491E-04   AT NODE       1408   DOF  2
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -2.491E-04
 LARGEST INCREMENT OF DISP.         4.027E-03   AT NODE       1408   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        4.027E-03   AT NODE       1408   DOF  3
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     0.224       TIME AVG. MOMENT      0.270    
 LARGEST SCALED RESIDUAL MOMENT    -4.235E-06   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT    -4.235E-06
 LARGEST INCREMENT OF ROTATION      4.330E-04   AT NODE       1409   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     4.330E-04   AT NODE       1409   DOF  4
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF ROTATION CORRECTION    7.447E-09
          MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  19ms


 ***WARNING: THE SYSTEM MATRIX HAS 13 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       3.18       TIME AVG. FORCE        2.19    
 LARGEST SCALED RESIDUAL FORCE      2.176E-07   AT NODE       1478   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      2.176E-07
 LARGEST INCREMENT OF DISP.         4.109E-03   AT NODE       1407   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        8.200E-05   AT NODE       1407   DOF  3
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF DISP.    CORRECTION    1.071E-05
          FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                     0.224       TIME AVG. MOMENT      0.270    
 LARGEST SCALED RESIDUAL MOMENT     1.091E-07   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     1.091E-07
 LARGEST INCREMENT OF ROTATION     -4.446E-04   AT NODE       1406   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -1.162E-05   AT NODE       1406   DOF  4
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF ROTATION CORRECTION    2.996E-07
          MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION
          ARC LENGTH INCREMENT MAY NOW INCREASE TO    4.171E-04

 ITERATION SUMMARY FOR THE INCREMENT:   2 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  2 ARE EQUILIBRIUM ITERATIONS.


                                INCREMENT    30 SUMMARY


     CURRENT LOAD PROPORTIONALITY FACTOR          1.325    
     TOTAL ARC LENGTH    1.79    , INCREMENT OF ARC LENGTH   2.781E-04


  INCREMENT    31 STARTS. ATTEMPT NUMBER  1
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  15ms


 ***WARNING: THE SYSTEM MATRIX HAS 13 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       3.18       TIME AVG. FORCE        2.22    
 LARGEST SCALED RESIDUAL FORCE      6.403E-04   AT NODE       1407   DOF  2
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      6.403E-04
 LARGEST INCREMENT OF DISP.         6.302E-03   AT NODE       1408   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        6.302E-03   AT NODE       1408   DOF  3
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     0.225       TIME AVG. MOMENT      0.269    
 LARGEST SCALED RESIDUAL MOMENT     9.921E-06   AT NODE       1353   DOF  5
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     9.921E-06
 LARGEST INCREMENT OF ROTATION     -6.868E-04   AT NODE       1406   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -6.868E-04   AT NODE       1406   DOF  4
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF ROTATION CORRECTION    1.803E-08
          MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  15ms


 ***WARNING: THE SYSTEM MATRIX HAS 13 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       3.18       TIME AVG. FORCE        2.22    
 LARGEST SCALED RESIDUAL FORCE      3.059E-06   AT NODE       1478   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      3.059E-06
 LARGEST INCREMENT OF DISP.         6.564E-03   AT NODE       1408   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        2.614E-04   AT NODE       1408   DOF  3
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     0.225       TIME AVG. MOMENT      0.269    
 LARGEST SCALED RESIDUAL MOMENT     4.260E-07   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     4.260E-07
 LARGEST INCREMENT OF ROTATION     -7.251E-04   AT NODE       1406   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -3.832E-05   AT NODE       1406   DOF  4
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF ROTATION CORRECTION   -1.645E-06
          MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  16ms


 ***WARNING: THE SYSTEM MATRIX HAS 13 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       3.18       TIME AVG. FORCE        2.22    
 LARGEST SCALED RESIDUAL FORCE      8.955E-09   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE      8.955E-09
 LARGEST INCREMENT OF DISP.         6.568E-03   AT NODE       1407   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        4.623E-06   AT NODE       1407   DOF  3
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     0.225       TIME AVG. MOMENT      0.269    
 LARGEST SCALED RESIDUAL MOMENT    -5.925E-08   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT    -5.925E-08
 LARGEST INCREMENT OF ROTATION      7.257E-04   AT NODE       1409   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     6.201E-07   AT NODE       1409   DOF  4
   INSTANCE: SHELL-1                                                                         
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED
          ARC LENGTH INCREMENT MAY NOW INCREASE TO    6.257E-04

 ITERATION SUMMARY FOR THE INCREMENT:   3 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  3 ARE EQUILIBRIUM ITERATIONS.


                                INCREMENT    31 SUMMARY


     CURRENT LOAD PROPORTIONALITY FACTOR          1.325    
     TOTAL ARC LENGTH    1.79    , INCREMENT OF ARC LENGTH   4.171E-04


  INCREMENT    32 STARTS. ATTEMPT NUMBER  1
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  17ms


 ***WARNING: THE SYSTEM MATRIX HAS 13 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       3.18       TIME AVG. FORCE        2.25    
 LARGEST SCALED RESIDUAL FORCE      1.913E-03   AT NODE       1407   DOF  2
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      1.913E-03
 LARGEST INCREMENT OF DISP.         1.034E-02   AT NODE       1408   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.034E-02   AT NODE       1408   DOF  3
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     0.227       TIME AVG. MOMENT      0.267    
 LARGEST SCALED RESIDUAL MOMENT     3.107E-05   AT NODE       1350   DOF  5
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     3.107E-05
 LARGEST INCREMENT OF ROTATION     -1.161E-03   AT NODE       1406   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -1.161E-03   AT NODE       1406   DOF  4
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF ROTATION CORRECTION    6.100E-08
          MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  16ms


 ***WARNING: THE SYSTEM MATRIX HAS 13 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       3.18       TIME AVG. FORCE        2.25    
 LARGEST SCALED RESIDUAL FORCE      1.389E-04   AT NODE       1478   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      1.389E-04
 LARGEST INCREMENT OF DISP.         1.178E-02   AT NODE       1408   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.435E-03   AT NODE       1408   DOF  3
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     0.227       TIME AVG. MOMENT      0.267    
 LARGEST SCALED RESIDUAL MOMENT    -1.608E-06   AT NODE       1464   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT    -1.608E-06
 LARGEST INCREMENT OF ROTATION     -1.381E-03   AT NODE       1406   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -2.192E-04   AT NODE       1406   DOF  4
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF ROTATION CORRECTION    1.135E-05
          MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  14ms


 ***WARNING: THE SYSTEM MATRIX HAS 13 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       3.18       TIME AVG. FORCE        2.25    
 LARGEST SCALED RESIDUAL FORCE      1.636E-06   AT NODE       1477   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      1.636E-06
 LARGEST INCREMENT OF DISP.         1.196E-02   AT NODE       1408   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.781E-04   AT NODE       1407   DOF  3
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF DISP.    CORRECTION    2.098E-06
          FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                     0.227       TIME AVG. MOMENT      0.267    
 LARGEST SCALED RESIDUAL MOMENT    -1.757E-07   AT NODE       1464   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT    -1.757E-07
 LARGEST INCREMENT OF ROTATION      1.406E-03   AT NODE       1409   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     2.537E-05   AT NODE       1409   DOF  4
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF ROTATION CORRECTION    2.771E-06
          MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION
          ARC LENGTH INCREMENT MAY NOW INCREASE TO    9.386E-04

 ITERATION SUMMARY FOR THE INCREMENT:   3 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  3 ARE EQUILIBRIUM ITERATIONS.


                                INCREMENT    32 SUMMARY


     CURRENT LOAD PROPORTIONALITY FACTOR          1.324    
     TOTAL ARC LENGTH    1.79    , INCREMENT OF ARC LENGTH   6.257E-04


  INCREMENT    33 STARTS. ATTEMPT NUMBER  1
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  17ms


 ***WARNING: THE SYSTEM MATRIX HAS 13 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       3.18       TIME AVG. FORCE        2.28    
 LARGEST SCALED RESIDUAL FORCE      1.291E-02   AT NODE       1407   DOF  2
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      1.291E-02
 LARGEST INCREMENT OF DISP.         2.231E-02   AT NODE       1408   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        2.231E-02   AT NODE       1408   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.228       TIME AVG. MOMENT      0.266    
 LARGEST SCALED RESIDUAL MOMENT     2.113E-04   AT NODE       1353   DOF  5
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     2.113E-04
 LARGEST INCREMENT OF ROTATION      2.795E-03   AT NODE       1409   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     2.795E-03   AT NODE       1409   DOF  4
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF ROTATION CORRECTION   -5.883E-07
          MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  16ms


 ***WARNING: THE SYSTEM MATRIX HAS 14 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       3.18       TIME AVG. FORCE        2.28    
 LARGEST SCALED RESIDUAL FORCE      2.455E-02   AT NODE       1197   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      2.455E-02
 LARGEST INCREMENT OF DISP.         1.306E-02   AT NODE       1478   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -1.504E-02   AT NODE       1407   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.228       TIME AVG. MOMENT      0.266    
 LARGEST SCALED RESIDUAL MOMENT     2.655E-02   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     2.655E-02
 LARGEST INCREMENT OF ROTATION     -1.519E-03   AT NODE       1476   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -2.360E-03   AT NODE       1408   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  15ms


 ***WARNING: THE SYSTEM MATRIX HAS 13 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       3.18       TIME AVG. FORCE        2.28    
 LARGEST SCALED RESIDUAL FORCE      1.978E-02   AT NODE       1477   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      1.978E-02
 LARGEST INCREMENT OF DISP.         2.890E-02   AT NODE       1407   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        2.162E-02   AT NODE       1407   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.228       TIME AVG. MOMENT      0.266    
 LARGEST SCALED RESIDUAL MOMENT    -2.662E-02   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT    -2.662E-02
 LARGEST INCREMENT OF ROTATION     -3.492E-03   AT NODE       1406   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     3.006E-03   AT NODE       1409   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  15ms


 ***WARNING: THE SYSTEM MATRIX HAS 15 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     4


 AVERAGE FORCE                       3.18       TIME AVG. FORCE        2.28    
 LARGEST SCALED RESIDUAL FORCE      2.784E-02   AT NODE       1478   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      2.784E-02
 LARGEST INCREMENT OF DISP.         2.083E-02   AT NODE       1478   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -1.623E-02   AT NODE       1407   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.227       TIME AVG. MOMENT      0.266    
 LARGEST SCALED RESIDUAL MOMENT    -2.092E-04   AT NODE       1423   DOF  5
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT    -2.092E-04
 LARGEST INCREMENT OF ROTATION     -2.363E-03   AT NODE       1476   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -2.628E-03   AT NODE       1408   DOF  4
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF ROTATION CORRECTION    2.072E-05
          MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION


 ***NOTE: THE SOLUTION APPEARS TO BE DIVERGING. CONVERGENCE IS JUDGED UNLIKELY.


  INCREMENT    33 STARTS. ATTEMPT NUMBER  2
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  16ms


 ***WARNING: THE SYSTEM MATRIX HAS 13 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       3.18       TIME AVG. FORCE        2.28    
 LARGEST SCALED RESIDUAL FORCE      1.797E-03   AT NODE       1407   DOF  2
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      1.797E-03
 LARGEST INCREMENT OF DISP.         8.330E-03   AT NODE       1408   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        8.330E-03   AT NODE       1408   DOF  3
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     0.228       TIME AVG. MOMENT      0.266    
 LARGEST SCALED RESIDUAL MOMENT     2.962E-05   AT NODE       1353   DOF  5
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     2.962E-05
 LARGEST INCREMENT OF ROTATION      1.042E-03   AT NODE       1409   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.042E-03   AT NODE       1409   DOF  4
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF ROTATION CORRECTION   -8.171E-08
          MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  15ms


 ***WARNING: THE SYSTEM MATRIX HAS 13 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       3.18       TIME AVG. FORCE        2.28    
 LARGEST SCALED RESIDUAL FORCE      3.282E-03   AT NODE       1478   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      3.282E-03
 LARGEST INCREMENT OF DISP.         1.420E-02   AT NODE       1407   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        5.870E-03   AT NODE       1407   DOF  3
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     0.229       TIME AVG. MOMENT      0.266    
 LARGEST SCALED RESIDUAL MOMENT    -2.453E-05   AT NODE       1420   DOF  5
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT    -2.453E-05
 LARGEST INCREMENT OF ROTATION     -1.960E-03   AT NODE       1406   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -9.176E-04   AT NODE       1406   DOF  4
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  16ms


 ***WARNING: THE SYSTEM MATRIX HAS 13 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       3.18       TIME AVG. FORCE        2.28    
 LARGEST SCALED RESIDUAL FORCE     -8.622E-05   AT NODE       1408   DOF  2
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -8.622E-05
 LARGEST INCREMENT OF DISP.         1.247E-02   AT NODE       1407   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -1.728E-03   AT NODE       1408   DOF  3
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF DISP.    CORRECTION    8.291E-05
          FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                     0.229       TIME AVG. MOMENT      0.266    
 LARGEST SCALED RESIDUAL MOMENT     1.947E-06   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     1.947E-06
 LARGEST INCREMENT OF ROTATION     -1.735E-03   AT NODE       1406   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -2.247E-04   AT NODE       1409   DOF  4
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  16ms


 ***WARNING: THE SYSTEM MATRIX HAS 13 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     4


 AVERAGE FORCE                       3.18       TIME AVG. FORCE        2.28    
 LARGEST SCALED RESIDUAL FORCE      1.875E-07   AT NODE       1407   DOF  2
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      1.875E-07
 LARGEST INCREMENT OF DISP.         1.240E-02   AT NODE       1407   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -6.923E-05   AT NODE       1407   DOF  3
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     0.229       TIME AVG. MOMENT      0.266    
 LARGEST SCALED RESIDUAL MOMENT    -4.516E-07   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT    -4.516E-07
 LARGEST INCREMENT OF ROTATION     -1.726E-03   AT NODE       1406   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     8.783E-06   AT NODE       1406   DOF  4
   INSTANCE: SHELL-1                                                                         
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED
          ARC LENGTH INCREMENT MAY NOW INCREASE TO    3.520E-04

 ITERATION SUMMARY FOR THE INCREMENT:   4 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  4 ARE EQUILIBRIUM ITERATIONS.


                                INCREMENT    33 SUMMARY


     CURRENT LOAD PROPORTIONALITY FACTOR          1.323    
     TOTAL ARC LENGTH    1.79    , INCREMENT OF ARC LENGTH   2.346E-04


  INCREMENT    34 STARTS. ATTEMPT NUMBER  1
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  15ms


 ***WARNING: THE SYSTEM MATRIX HAS 13 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       3.18       TIME AVG. FORCE        2.30    
 LARGEST SCALED RESIDUAL FORCE      4.834E-03   AT NODE       1198   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      4.834E-03
 LARGEST INCREMENT OF DISP.         6.577E-03   AT NODE       1408   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        6.577E-03   AT NODE       1408   DOF  3
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     0.232       TIME AVG. MOMENT      0.265    
 LARGEST SCALED RESIDUAL MOMENT    -3.002E-05   AT NODE       1420   DOF  5
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT    -3.002E-05
 LARGEST INCREMENT OF ROTATION     -1.054E-03   AT NODE       1407   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -1.054E-03   AT NODE       1407   DOF  4
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF ROTATION CORRECTION   -3.730E-08
          MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  16ms


 ***WARNING: THE SYSTEM MATRIX HAS 13 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       3.18       TIME AVG. FORCE        2.30    
 LARGEST SCALED RESIDUAL FORCE     -1.601E-04   AT NODE       1338   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -1.601E-04
 LARGEST INCREMENT OF DISP.         5.932E-03   AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -1.879E-03   AT NODE       1407   DOF  3
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     0.232       TIME AVG. MOMENT      0.265    
 LARGEST SCALED RESIDUAL MOMENT     3.049E-06   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     3.049E-06
 LARGEST INCREMENT OF ROTATION     -8.216E-04   AT NODE       1407   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -2.701E-04   AT NODE       1409   DOF  4
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  15ms


 ***WARNING: THE SYSTEM MATRIX HAS 13 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       3.18       TIME AVG. FORCE        2.30    
 LARGEST SCALED RESIDUAL FORCE     -3.345E-07   AT NODE       1408   DOF  2
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -3.345E-07
 LARGEST INCREMENT OF DISP.         5.926E-03   AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -8.252E-05   AT NODE       1407   DOF  3
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF DISP.    CORRECTION   -1.724E-07
          FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                     0.232       TIME AVG. MOMENT      0.265    
 LARGEST SCALED RESIDUAL MOMENT    -6.419E-07   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT    -6.419E-07
 LARGEST INCREMENT OF ROTATION     -8.119E-04   AT NODE       1407   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.154E-05   AT NODE       1406   DOF  4
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF ROTATION CORRECTION   -2.429E-06
          MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION
          ARC LENGTH INCREMENT MAY NOW INCREASE TO    5.279E-04

 ITERATION SUMMARY FOR THE INCREMENT:   3 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  3 ARE EQUILIBRIUM ITERATIONS.


                                INCREMENT    34 SUMMARY


     CURRENT LOAD PROPORTIONALITY FACTOR          1.323    
     TOTAL ARC LENGTH    1.79    , INCREMENT OF ARC LENGTH   3.520E-04


  INCREMENT    35 STARTS. ATTEMPT NUMBER  1
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  15ms


 ***WARNING: THE SYSTEM MATRIX HAS 13 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       3.18       TIME AVG. FORCE        2.33    
 LARGEST SCALED RESIDUAL FORCE      5.922E-03   AT NODE       1197   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      5.922E-03
 LARGEST INCREMENT OF DISP.         8.775E-03   AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        8.775E-03   AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     0.236       TIME AVG. MOMENT      0.264    
 LARGEST SCALED RESIDUAL MOMENT     2.586E-05   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     2.586E-05
 LARGEST INCREMENT OF ROTATION     -9.671E-04   AT NODE       1407   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -9.671E-04   AT NODE       1407   DOF  4
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF ROTATION CORRECTION    8.678E-08
          MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  18ms


 ***WARNING: THE SYSTEM MATRIX HAS 13 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       3.18       TIME AVG. FORCE        2.33    
 LARGEST SCALED RESIDUAL FORCE      8.731E-05   AT NODE       1478   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      8.731E-05
 LARGEST INCREMENT OF DISP.         8.736E-03   AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -1.077E-03   AT NODE       1408   DOF  3
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     0.236       TIME AVG. MOMENT      0.264    
 LARGEST SCALED RESIDUAL MOMENT     4.993E-06   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     4.993E-06
 LARGEST INCREMENT OF ROTATION      8.114E-04   AT NODE       1408   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.669E-04   AT NODE       1406   DOF  4
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  15ms


 ***WARNING: THE SYSTEM MATRIX HAS 13 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       3.18       TIME AVG. FORCE        2.33    
 LARGEST SCALED RESIDUAL FORCE     -5.020E-08   AT NODE       1408   DOF  2
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -5.020E-08
 LARGEST INCREMENT OF DISP.         8.736E-03   AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -1.898E-05   AT NODE       1407   DOF  3
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     0.236       TIME AVG. MOMENT      0.264    
 LARGEST SCALED RESIDUAL MOMENT    -1.342E-07   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT    -1.342E-07
 LARGEST INCREMENT OF ROTATION      8.083E-04   AT NODE       1408   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -3.266E-06   AT NODE       1409   DOF  4
   INSTANCE: SHELL-1                                                                         
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED
          ARC LENGTH INCREMENT MAY NOW INCREASE TO    7.919E-04

 ITERATION SUMMARY FOR THE INCREMENT:   3 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  3 ARE EQUILIBRIUM ITERATIONS.


                                INCREMENT    35 SUMMARY


     CURRENT LOAD PROPORTIONALITY FACTOR          1.323    
     TOTAL ARC LENGTH    1.79    , INCREMENT OF ARC LENGTH   5.279E-04


  INCREMENT    36 STARTS. ATTEMPT NUMBER  1
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  15ms


 ***WARNING: THE SYSTEM MATRIX HAS 13 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       3.18       TIME AVG. FORCE        2.35    
 LARGEST SCALED RESIDUAL FORCE      8.332E-03   AT NODE       1197   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      8.332E-03
 LARGEST INCREMENT OF DISP.         1.305E-02   AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.305E-02   AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     0.240       TIME AVG. MOMENT      0.264    
 LARGEST SCALED RESIDUAL MOMENT     5.463E-05   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     5.463E-05
 LARGEST INCREMENT OF ROTATION      1.039E-03   AT NODE       1408   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.039E-03   AT NODE       1408   DOF  4
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF ROTATION CORRECTION   -2.010E-07
          MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  15ms


 ***WARNING: THE SYSTEM MATRIX HAS 13 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       3.18       TIME AVG. FORCE        2.35    
 LARGEST SCALED RESIDUAL FORCE      9.346E-05   AT NODE       1198   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      9.346E-05
 LARGEST INCREMENT OF DISP.         1.302E-02   AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -7.527E-04   AT NODE       1408   DOF  3
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     0.239       TIME AVG. MOMENT      0.264    
 LARGEST SCALED RESIDUAL MOMENT     1.065E-05   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     1.065E-05
 LARGEST INCREMENT OF ROTATION      9.106E-04   AT NODE       1408   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.285E-04   AT NODE       1407   DOF  4
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  15ms


 ***WARNING: THE SYSTEM MATRIX HAS 13 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       3.18       TIME AVG. FORCE        2.35    
 LARGEST SCALED RESIDUAL FORCE      4.473E-08   AT NODE       1646   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      4.473E-08
 LARGEST INCREMENT OF DISP.         1.303E-02   AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -8.258E-06   AT NODE       1408   DOF  3
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     0.239       TIME AVG. MOMENT      0.264    
 LARGEST SCALED RESIDUAL MOMENT    -1.731E-07   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT    -1.731E-07
 LARGEST INCREMENT OF ROTATION      9.085E-04   AT NODE       1408   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     2.066E-06   AT NODE       1407   DOF  4
   INSTANCE: SHELL-1                                                                         
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED
          ARC LENGTH INCREMENT MAY NOW INCREASE TO    1.188E-03

 ITERATION SUMMARY FOR THE INCREMENT:   3 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  3 ARE EQUILIBRIUM ITERATIONS.


                                INCREMENT    36 SUMMARY


     CURRENT LOAD PROPORTIONALITY FACTOR          1.323    
     TOTAL ARC LENGTH    1.79    , INCREMENT OF ARC LENGTH   7.919E-04


  INCREMENT    37 STARTS. ATTEMPT NUMBER  1
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  15ms


 ***WARNING: THE SYSTEM MATRIX HAS 13 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       3.18       TIME AVG. FORCE        2.38    
 LARGEST SCALED RESIDUAL FORCE      1.179E-02   AT NODE       1198   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      1.179E-02
 LARGEST INCREMENT OF DISP.         1.951E-02   AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.951E-02   AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     0.243       TIME AVG. MOMENT      0.263    
 LARGEST SCALED RESIDUAL MOMENT     1.161E-04   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     1.161E-04
 LARGEST INCREMENT OF ROTATION      1.218E-03   AT NODE       1408   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.218E-03   AT NODE       1408   DOF  4
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF ROTATION CORRECTION   -4.000E-07
          MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  15ms


 ***WARNING: THE SYSTEM MATRIX HAS 13 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       3.18       TIME AVG. FORCE        2.38    
 LARGEST SCALED RESIDUAL FORCE      1.521E-04   AT NODE       1198   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      1.521E-04
 LARGEST INCREMENT OF DISP.         1.951E-02   AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -4.818E-04   AT NODE       1170   DOF  3
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     0.243       TIME AVG. MOMENT      0.263    
 LARGEST SCALED RESIDUAL MOMENT     2.351E-05   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     2.351E-05
 LARGEST INCREMENT OF ROTATION     -1.106E-03   AT NODE       1407   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -1.371E-04   AT NODE       1156   DOF  5
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  16ms


 ***WARNING: THE SYSTEM MATRIX HAS 13 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       3.18       TIME AVG. FORCE        2.38    
 LARGEST SCALED RESIDUAL FORCE      7.242E-08   AT NODE       1646   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      7.242E-08
 LARGEST INCREMENT OF DISP.         1.951E-02   AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.396E-05   AT NODE       1295   DOF  3
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     0.243       TIME AVG. MOMENT      0.263    
 LARGEST SCALED RESIDUAL MOMENT    -8.707E-08   AT NODE       1309   DOF  5
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT    -8.707E-08
 LARGEST INCREMENT OF ROTATION     -1.104E-03   AT NODE       1407   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.990E-06   AT NODE       1296   DOF  4
   INSTANCE: SHELL-1                                                                         
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED
          ARC LENGTH INCREMENT MAY NOW INCREASE TO    1.782E-03

 ITERATION SUMMARY FOR THE INCREMENT:   3 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  3 ARE EQUILIBRIUM ITERATIONS.


                                INCREMENT    37 SUMMARY


     CURRENT LOAD PROPORTIONALITY FACTOR          1.322    
     TOTAL ARC LENGTH    1.79    , INCREMENT OF ARC LENGTH   1.188E-03


  INCREMENT    38 STARTS. ATTEMPT NUMBER  1
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  15ms


 ***WARNING: THE SYSTEM MATRIX HAS 13 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       3.17       TIME AVG. FORCE        2.40    
 LARGEST SCALED RESIDUAL FORCE      1.629E-02   AT NODE       1197   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      1.629E-02
 LARGEST INCREMENT OF DISP.         2.926E-02   AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        2.926E-02   AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.247       TIME AVG. MOMENT      0.263    
 LARGEST SCALED RESIDUAL MOMENT     2.520E-04   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     2.520E-04
 LARGEST INCREMENT OF ROTATION      1.526E-03   AT NODE       1408   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.526E-03   AT NODE       1408   DOF  4
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF ROTATION CORRECTION   -7.654E-07
          MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  16ms


 ***WARNING: THE SYSTEM MATRIX HAS 13 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       3.17       TIME AVG. FORCE        2.40    
 LARGEST SCALED RESIDUAL FORCE      2.098E-04   AT NODE       1198   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      2.098E-04
 LARGEST INCREMENT OF DISP.         2.927E-02   AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        6.816E-04   AT NODE       1337   DOF  3
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     0.247       TIME AVG. MOMENT      0.263    
 LARGEST SCALED RESIDUAL MOMENT     5.289E-05   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     5.289E-05
 LARGEST INCREMENT OF ROTATION     -1.410E-03   AT NODE       1407   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.647E-04   AT NODE       1338   DOF  4
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  14ms


 ***WARNING: THE SYSTEM MATRIX HAS 13 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       3.17       TIME AVG. FORCE        2.40    
 LARGEST SCALED RESIDUAL FORCE      1.135E-07   AT NODE       1645   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      1.135E-07
 LARGEST INCREMENT OF DISP.         2.927E-02   AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        2.337E-05   AT NODE       1477   DOF  3
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     0.247       TIME AVG. MOMENT      0.263    
 LARGEST SCALED RESIDUAL MOMENT    -1.109E-07   AT NODE       1309   DOF  5
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT    -1.109E-07
 LARGEST INCREMENT OF ROTATION     -1.410E-03   AT NODE       1407   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -2.658E-06   AT NODE       1476   DOF  4
   INSTANCE: SHELL-1                                                                         
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED
          ARC LENGTH INCREMENT MAY NOW INCREASE TO    2.673E-03

 ITERATION SUMMARY FOR THE INCREMENT:   3 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  3 ARE EQUILIBRIUM ITERATIONS.


                                INCREMENT    38 SUMMARY


     CURRENT LOAD PROPORTIONALITY FACTOR          1.322    
     TOTAL ARC LENGTH    1.79    , INCREMENT OF ARC LENGTH   1.782E-03


  INCREMENT    39 STARTS. ATTEMPT NUMBER  1
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  19ms


 ***WARNING: THE SYSTEM MATRIX HAS 13 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       3.17       TIME AVG. FORCE        2.42    
 LARGEST SCALED RESIDUAL FORCE      2.365E-02   AT NODE       1478   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      2.365E-02
 LARGEST INCREMENT OF DISP.         4.391E-02   AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        4.391E-02   AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.248       TIME AVG. MOMENT      0.262    
 LARGEST SCALED RESIDUAL MOMENT     5.526E-04   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     5.526E-04
 LARGEST INCREMENT OF ROTATION      1.968E-03   AT NODE       1408   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.968E-03   AT NODE       1408   DOF  4
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF ROTATION CORRECTION   -1.442E-06
          MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  14ms


 ***WARNING: THE SYSTEM MATRIX HAS 13 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       3.17       TIME AVG. FORCE        2.42    
 LARGEST SCALED RESIDUAL FORCE      2.387E-04   AT NODE       1198   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      2.387E-04
 LARGEST INCREMENT OF DISP.         4.390E-02   AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        7.989E-04   AT NODE       1338   DOF  3
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     0.248       TIME AVG. MOMENT      0.262    
 LARGEST SCALED RESIDUAL MOMENT     1.195E-04   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     1.195E-04
 LARGEST INCREMENT OF ROTATION     -1.810E-03   AT NODE       1407   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -2.167E-04   AT NODE       1337   DOF  4
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  15ms


 ***WARNING: THE SYSTEM MATRIX HAS 13 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       3.17       TIME AVG. FORCE        2.42    
 LARGEST SCALED RESIDUAL FORCE      1.605E-07   AT NODE       1646   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      1.605E-07
 LARGEST INCREMENT OF DISP.         4.391E-02   AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        3.985E-05   AT NODE       1477   DOF  3
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     0.248       TIME AVG. MOMENT      0.262    
 LARGEST SCALED RESIDUAL MOMENT     2.426E-07   AT NODE       1477   DOF  5
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     2.426E-07
 LARGEST INCREMENT OF ROTATION      1.811E-03   AT NODE       1408   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     4.836E-06   AT NODE       1479   DOF  4
   INSTANCE: SHELL-1                                                                         
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED
          ARC LENGTH INCREMENT MAY NOW INCREASE TO    4.009E-03

 ITERATION SUMMARY FOR THE INCREMENT:   3 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  3 ARE EQUILIBRIUM ITERATIONS.


                                INCREMENT    39 SUMMARY


     CURRENT LOAD PROPORTIONALITY FACTOR          1.321    
     TOTAL ARC LENGTH    1.80    , INCREMENT OF ARC LENGTH   2.673E-03


  INCREMENT    40 STARTS. ATTEMPT NUMBER  1
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  17ms


 ***WARNING: THE SYSTEM MATRIX HAS 13 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       3.16       TIME AVG. FORCE        2.44    
 LARGEST SCALED RESIDUAL FORCE      3.884E-02   AT NODE       1477   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      3.884E-02
 LARGEST INCREMENT OF DISP.         6.585E-02   AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        6.585E-02   AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.251       TIME AVG. MOMENT      0.262    
 LARGEST SCALED RESIDUAL MOMENT     1.219E-03   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     1.219E-03
 LARGEST INCREMENT OF ROTATION     -2.531E-03   AT NODE       1397   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -2.531E-03   AT NODE       1397   DOF  4
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF ROTATION CORRECTION    2.726E-06
          MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  15ms


 ***WARNING: THE SYSTEM MATRIX HAS 13 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       3.16       TIME AVG. FORCE        2.44    
 LARGEST SCALED RESIDUAL FORCE      2.961E-04   AT NODE       1197   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      2.961E-04
 LARGEST INCREMENT OF DISP.         6.583E-02   AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -1.007E-03   AT NODE       1407   DOF  3
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     0.251       TIME AVG. MOMENT      0.262    
 LARGEST SCALED RESIDUAL MOMENT     2.704E-04   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     2.704E-04
 LARGEST INCREMENT OF ROTATION     -2.520E-03   AT NODE       1397   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -2.384E-04   AT NODE       1337   DOF  4
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  15ms


 ***WARNING: THE SYSTEM MATRIX HAS 13 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       3.16       TIME AVG. FORCE        2.44    
 LARGEST SCALED RESIDUAL FORCE      2.386E-07   AT NODE       1645   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      2.386E-07
 LARGEST INCREMENT OF DISP.         6.584E-02   AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        5.489E-05   AT NODE       1464   DOF  3
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     0.251       TIME AVG. MOMENT      0.262    
 LARGEST SCALED RESIDUAL MOMENT     4.660E-07   AT NODE       1478   DOF  5
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     4.660E-07
 LARGEST INCREMENT OF ROTATION      2.519E-03   AT NODE       1418   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -6.545E-06   AT NODE       1462   DOF  4
   INSTANCE: SHELL-1                                                                         
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED
          ARC LENGTH INCREMENT MAY NOW INCREASE TO    6.014E-03

 ITERATION SUMMARY FOR THE INCREMENT:   3 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  3 ARE EQUILIBRIUM ITERATIONS.


                                INCREMENT    40 SUMMARY


     CURRENT LOAD PROPORTIONALITY FACTOR          1.320    
     TOTAL ARC LENGTH    1.80    , INCREMENT OF ARC LENGTH   4.009E-03


  INCREMENT    41 STARTS. ATTEMPT NUMBER  1
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  15ms


 ***WARNING: THE SYSTEM MATRIX HAS 13 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       3.15       TIME AVG. FORCE        2.45    
 LARGEST SCALED RESIDUAL FORCE      6.011E-02   AT NODE       1477   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      6.011E-02
 LARGEST INCREMENT OF DISP.         9.875E-02   AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        9.875E-02   AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.256       TIME AVG. MOMENT      0.262    
 LARGEST SCALED RESIDUAL MOMENT     2.705E-03   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     2.705E-03
 LARGEST INCREMENT OF ROTATION      3.750E-03   AT NODE       1418   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     3.750E-03   AT NODE       1418   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  16ms


 ***WARNING: THE SYSTEM MATRIX HAS 13 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       3.15       TIME AVG. FORCE        2.45    
 LARGEST SCALED RESIDUAL FORCE      5.373E-04   AT NODE       1478   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      5.373E-04
 LARGEST INCREMENT OF DISP.         9.875E-02   AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -1.379E-03   AT NODE       1407   DOF  3
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     0.255       TIME AVG. MOMENT      0.262    
 LARGEST SCALED RESIDUAL MOMENT     6.140E-04   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     6.140E-04
 LARGEST INCREMENT OF ROTATION     -3.692E-03   AT NODE       1425   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -3.070E-04   AT NODE       1408   DOF  4
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  20ms


 ***WARNING: THE SYSTEM MATRIX HAS 13 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       3.15       TIME AVG. FORCE        2.45    
 LARGEST SCALED RESIDUAL FORCE      4.849E-07   AT NODE       1645   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      4.849E-07
 LARGEST INCREMENT OF DISP.         9.877E-02   AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.166E-04   AT NODE       1401   DOF  2
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     0.255       TIME AVG. MOMENT      0.262    
 LARGEST SCALED RESIDUAL MOMENT     9.903E-07   AT NODE       1464   DOF  5
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     9.903E-07
 LARGEST INCREMENT OF ROTATION     -3.685E-03   AT NODE       1425   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     9.426E-06   AT NODE       1410   DOF  4
   INSTANCE: SHELL-1                                                                         
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED
          ARC LENGTH INCREMENT MAY NOW INCREASE TO    9.020E-03

 ITERATION SUMMARY FOR THE INCREMENT:   3 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  3 ARE EQUILIBRIUM ITERATIONS.


                                INCREMENT    41 SUMMARY


     CURRENT LOAD PROPORTIONALITY FACTOR          1.319    
     TOTAL ARC LENGTH    1.81    , INCREMENT OF ARC LENGTH   6.014E-03


  INCREMENT    42 STARTS. ATTEMPT NUMBER  1
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  15ms


 ***WARNING: THE SYSTEM MATRIX HAS 13 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       3.14       TIME AVG. FORCE        2.47    
 LARGEST SCALED RESIDUAL FORCE      8.995E-02   AT NODE       1477   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      8.995E-02
 LARGEST INCREMENT OF DISP.         0.148       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        0.148       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.262       TIME AVG. MOMENT      0.262    
 LARGEST SCALED RESIDUAL MOMENT     6.058E-03   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     6.058E-03
 LARGEST INCREMENT OF ROTATION     -5.422E-03   AT NODE       1425   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -5.422E-03   AT NODE       1425   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  15ms


 ***WARNING: THE SYSTEM MATRIX HAS 13 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       3.14       TIME AVG. FORCE        2.47    
 LARGEST SCALED RESIDUAL FORCE     -9.147E-04   AT NODE       1618   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -9.147E-04
 LARGEST INCREMENT OF DISP.         0.148       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -1.369E-03   AT NODE       1408   DOF  3
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     0.262       TIME AVG. MOMENT      0.262    
 LARGEST SCALED RESIDUAL MOMENT     1.404E-03   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     1.404E-03
 LARGEST INCREMENT OF ROTATION     -5.297E-03   AT NODE       1425   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     3.659E-04   AT NODE       1407   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  17ms


 ***WARNING: THE SYSTEM MATRIX HAS 13 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       3.14       TIME AVG. FORCE        2.47    
 LARGEST SCALED RESIDUAL FORCE     -4.081E-06   AT NODE       1414   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -4.081E-06
 LARGEST INCREMENT OF DISP.         0.148       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -5.636E-04   AT NODE       1414   DOF  2
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     0.262       TIME AVG. MOMENT      0.262    
 LARGEST SCALED RESIDUAL MOMENT    -2.019E-06   AT NODE       1351   DOF  5
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT    -2.019E-06
 LARGEST INCREMENT OF ROTATION      5.257E-03   AT NODE       1418   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -4.426E-05   AT NODE       1401   DOF  4
   INSTANCE: SHELL-1                                                                         
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED
          ARC LENGTH INCREMENT MAY NOW INCREASE TO    1.353E-02

 ITERATION SUMMARY FOR THE INCREMENT:   3 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  3 ARE EQUILIBRIUM ITERATIONS.


                                INCREMENT    42 SUMMARY


     CURRENT LOAD PROPORTIONALITY FACTOR          1.316    
     TOTAL ARC LENGTH    1.82    , INCREMENT OF ARC LENGTH   9.020E-03


  INCREMENT    43 STARTS. ATTEMPT NUMBER  1
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  16ms


 ***WARNING: THE SYSTEM MATRIX HAS 13 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       3.11       TIME AVG. FORCE        2.48    
 LARGEST SCALED RESIDUAL FORCE      0.136       AT NODE       1477   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      0.136    
 LARGEST INCREMENT OF DISP.         0.223       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        0.223       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.268       TIME AVG. MOMENT      0.262    
 LARGEST SCALED RESIDUAL MOMENT     1.370E-02   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     1.370E-02
 LARGEST INCREMENT OF ROTATION     -7.650E-03   AT NODE       1425   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -7.650E-03   AT NODE       1425   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  21ms


 ***WARNING: THE SYSTEM MATRIX HAS 13 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       3.11       TIME AVG. FORCE        2.48    
 LARGEST SCALED RESIDUAL FORCE      1.383E-03   AT NODE       1632   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      1.383E-03
 LARGEST INCREMENT OF DISP.         0.223       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        2.008E-03   AT NODE       1506   DOF  3
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     0.269       TIME AVG. MOMENT      0.262    
 LARGEST SCALED RESIDUAL MOMENT     3.245E-03   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     3.245E-03
 LARGEST INCREMENT OF ROTATION     -7.460E-03   AT NODE       1425   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -4.011E-04   AT NODE       1408   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  15ms


 ***WARNING: THE SYSTEM MATRIX HAS 13 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       3.11       TIME AVG. FORCE        2.48    
 LARGEST SCALED RESIDUAL FORCE     -3.992E-05   AT NODE       1414   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -3.992E-05
 LARGEST INCREMENT OF DISP.         0.223       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -1.816E-03   AT NODE       1414   DOF  2
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     0.269       TIME AVG. MOMENT      0.262    
 LARGEST SCALED RESIDUAL MOMENT    -3.881E-06   AT NODE       1659   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT    -3.881E-06
 LARGEST INCREMENT OF ROTATION      7.325E-03   AT NODE       1418   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.395E-04   AT NODE       1468   DOF  4
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF ROTATION CORRECTION   -1.668E-07
          MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION
          ARC LENGTH INCREMENT MAY NOW INCREASE TO    2.030E-02

 ITERATION SUMMARY FOR THE INCREMENT:   3 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  3 ARE EQUILIBRIUM ITERATIONS.


                                INCREMENT    43 SUMMARY


     CURRENT LOAD PROPORTIONALITY FACTOR          1.311    
     TOTAL ARC LENGTH    1.83    , INCREMENT OF ARC LENGTH   1.353E-02


  INCREMENT    44 STARTS. ATTEMPT NUMBER  1
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  18ms


 ***WARNING: THE SYSTEM MATRIX HAS 13 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       3.08       TIME AVG. FORCE        2.50    
 LARGEST SCALED RESIDUAL FORCE     -0.233       AT NODE          2   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE     -0.233    
 LARGEST INCREMENT OF DISP.         0.336       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        0.336       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.275       TIME AVG. MOMENT      0.262    
 LARGEST SCALED RESIDUAL MOMENT     3.122E-02   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     3.122E-02
 LARGEST INCREMENT OF ROTATION     -1.055E-02   AT NODE       1425   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -1.055E-02   AT NODE       1425   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  16ms


 ***WARNING: THE SYSTEM MATRIX HAS 13 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       3.08       TIME AVG. FORCE        2.50    
 LARGEST SCALED RESIDUAL FORCE     -2.665E-03   AT NODE       1155   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -2.665E-03
 LARGEST INCREMENT OF DISP.         0.336       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        3.072E-03   AT NODE       1506   DOF  3
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     0.276       TIME AVG. MOMENT      0.262    
 LARGEST SCALED RESIDUAL MOMENT     7.601E-03   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     7.601E-03
 LARGEST INCREMENT OF ROTATION      1.032E-02   AT NODE       1418   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -4.968E-04   AT NODE       1184   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  15ms


 ***WARNING: THE SYSTEM MATRIX HAS 13 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       3.08       TIME AVG. FORCE        2.50    
 LARGEST SCALED RESIDUAL FORCE     -2.053E-04   AT NODE       1414   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -2.053E-04
 LARGEST INCREMENT OF DISP.         0.336       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        4.273E-03   AT NODE       1401   DOF  2
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF DISP.    CORRECTION    3.291E-04
          FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                     0.276       TIME AVG. MOMENT      0.262    
 LARGEST SCALED RESIDUAL MOMENT    -1.696E-05   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT    -1.696E-05
 LARGEST INCREMENT OF ROTATION     -9.995E-03   AT NODE       1425   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -3.339E-04   AT NODE       1459   DOF  4
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF ROTATION CORRECTION    7.451E-07
          MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION
          ARC LENGTH INCREMENT MAY NOW INCREASE TO    3.044E-02

 ITERATION SUMMARY FOR THE INCREMENT:   3 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  3 ARE EQUILIBRIUM ITERATIONS.


                                INCREMENT    44 SUMMARY


     CURRENT LOAD PROPORTIONALITY FACTOR          1.303    
     TOTAL ARC LENGTH    1.85    , INCREMENT OF ARC LENGTH   2.030E-02


  INCREMENT    45 STARTS. ATTEMPT NUMBER  1
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  16ms


 ***WARNING: THE SYSTEM MATRIX HAS 13 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       3.02       TIME AVG. FORCE        2.51    
 LARGEST SCALED RESIDUAL FORCE     -0.530       AT NODE          2   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE     -0.530    
 LARGEST INCREMENT OF DISP.         0.507       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        0.507       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.285       TIME AVG. MOMENT      0.263    
 LARGEST SCALED RESIDUAL MOMENT     7.114E-02   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     7.114E-02
 LARGEST INCREMENT OF ROTATION      1.423E-02   AT NODE       1418   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.423E-02   AT NODE       1418   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  18ms


 ***WARNING: THE SYSTEM MATRIX HAS 13 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       3.02       TIME AVG. FORCE        2.51    
 LARGEST SCALED RESIDUAL FORCE     -9.277E-03   AT NODE       1156   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -9.277E-03
 LARGEST INCREMENT OF DISP.         0.507       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        5.889E-03   AT NODE       1660   DOF  3
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     0.286       TIME AVG. MOMENT      0.263    
 LARGEST SCALED RESIDUAL MOMENT     1.810E-02   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     1.810E-02
 LARGEST INCREMENT OF ROTATION      1.399E-02   AT NODE       1390   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -1.067E-03   AT NODE       1169   DOF  5
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  16ms


 ***WARNING: THE SYSTEM MATRIX HAS 13 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       3.02       TIME AVG. FORCE        2.51    
 LARGEST SCALED RESIDUAL FORCE     -6.631E-04   AT NODE       1401   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -6.631E-04
 LARGEST INCREMENT OF DISP.         0.507       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -8.073E-03   AT NODE       1414   DOF  2
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF DISP.    CORRECTION   -5.770E-04
          FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                     0.285       TIME AVG. MOMENT      0.263    
 LARGEST SCALED RESIDUAL MOMENT    -6.817E-05   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT    -6.817E-05
 LARGEST INCREMENT OF ROTATION      1.335E-02   AT NODE       1418   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     6.408E-04   AT NODE       1397   DOF  4
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF ROTATION CORRECTION   -2.413E-06
          MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION
          ARC LENGTH INCREMENT MAY NOW INCREASE TO    4.567E-02

 ITERATION SUMMARY FOR THE INCREMENT:   3 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  3 ARE EQUILIBRIUM ITERATIONS.


                                INCREMENT    45 SUMMARY


     CURRENT LOAD PROPORTIONALITY FACTOR          1.288    
     TOTAL ARC LENGTH    1.88    , INCREMENT OF ARC LENGTH   3.044E-02


  INCREMENT    46 STARTS. ATTEMPT NUMBER  1
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  15ms


 ***WARNING: THE SYSTEM MATRIX HAS 13 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       2.94       TIME AVG. FORCE        2.52    
 LARGEST SCALED RESIDUAL FORCE      -1.21       AT NODE          2   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE      -1.21    
 LARGEST INCREMENT OF DISP.         0.767       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        0.767       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.265       TIME AVG. MOMENT      0.263    
 LARGEST SCALED RESIDUAL MOMENT     0.161       AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     0.161    
 LARGEST INCREMENT OF ROTATION      1.865E-02   AT NODE       1459   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.865E-02   AT NODE       1459   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  16ms


 ***WARNING: THE SYSTEM MATRIX HAS 13 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       2.93       TIME AVG. FORCE        2.52    
 LARGEST SCALED RESIDUAL FORCE      0.251       AT NODE       1660   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      0.251    
 LARGEST INCREMENT OF DISP.         0.764       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        2.509E-02   AT NODE       1660   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.297       TIME AVG. MOMENT      0.264    
 LARGEST SCALED RESIDUAL MOMENT     4.405E-02   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     4.405E-02
 LARGEST INCREMENT OF ROTATION      1.856E-02   AT NODE       1347   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     6.297E-03   AT NODE       1645   DOF  5
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  16ms


 ***WARNING: THE SYSTEM MATRIX HAS 13 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       2.93       TIME AVG. FORCE        2.52    
 LARGEST SCALED RESIDUAL FORCE     -0.477       AT NODE       1155   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -0.477    
 LARGEST INCREMENT OF DISP.         0.765       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        2.621E-02   AT NODE       1183   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.298       TIME AVG. MOMENT      0.264    
 LARGEST SCALED RESIDUAL MOMENT    -5.333E-03   AT NODE       1184   DOF  5
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT    -5.333E-03
 LARGEST INCREMENT OF ROTATION     -1.770E-02   AT NODE       1356   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     8.415E-03   AT NODE       1170   DOF  5
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  14ms


 ***WARNING: THE SYSTEM MATRIX HAS 13 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     4


 AVERAGE FORCE                       2.92       TIME AVG. FORCE        2.52    
 LARGEST SCALED RESIDUAL FORCE      -2.62       AT NODE       1632   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      -2.62    
 LARGEST INCREMENT OF DISP.         0.765       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        6.151E-02   AT NODE       1660   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.291       TIME AVG. MOMENT      0.263    
 LARGEST SCALED RESIDUAL MOMENT    -2.065E-02   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT    -2.065E-02
 LARGEST INCREMENT OF ROTATION     -2.447E-02   AT NODE       1659   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     2.003E-02   AT NODE       1645   DOF  5
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.


 ***NOTE: THE SOLUTION APPEARS TO BE DIVERGING. CONVERGENCE IS JUDGED UNLIKELY.


  INCREMENT    46 STARTS. ATTEMPT NUMBER  2
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  16ms


 ***WARNING: THE SYSTEM MATRIX HAS 13 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       2.98       TIME AVG. FORCE        2.52    
 LARGEST SCALED RESIDUAL FORCE     -0.171       AT NODE          2   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE     -0.171    
 LARGEST INCREMENT OF DISP.         0.287       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        0.287       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.290       TIME AVG. MOMENT      0.263    
 LARGEST SCALED RESIDUAL MOMENT     2.278E-02   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     2.278E-02
 LARGEST INCREMENT OF ROTATION      7.000E-03   AT NODE       1459   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     7.000E-03   AT NODE       1459   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  15ms


 ***WARNING: THE SYSTEM MATRIX HAS 13 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       2.99       TIME AVG. FORCE        2.52    
 LARGEST SCALED RESIDUAL FORCE      1.223E-03   AT NODE       1660   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      1.223E-03
 LARGEST INCREMENT OF DISP.         0.287       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        2.085E-03   AT NODE       1660   DOF  3
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     0.289       TIME AVG. MOMENT      0.263    
 LARGEST SCALED RESIDUAL MOMENT     5.451E-03   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     5.451E-03
 LARGEST INCREMENT OF ROTATION      6.969E-03   AT NODE       1459   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     3.640E-04   AT NODE       1645   DOF  5
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  16ms


 ***WARNING: THE SYSTEM MATRIX HAS 13 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       2.99       TIME AVG. FORCE        2.52    
 LARGEST SCALED RESIDUAL FORCE     -1.118E-05   AT NODE       1631   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -1.118E-05
 LARGEST INCREMENT OF DISP.         0.287       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        6.867E-04   AT NODE       1401   DOF  2
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     0.289       TIME AVG. MOMENT      0.263    
 LARGEST SCALED RESIDUAL MOMENT    -5.101E-06   AT NODE       1659   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT    -5.101E-06
 LARGEST INCREMENT OF ROTATION      6.913E-03   AT NODE       1459   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -6.072E-05   AT NODE       1432   DOF  4
   INSTANCE: SHELL-1                                                                         
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED
          ARC LENGTH INCREMENT MAY NOW INCREASE TO    1.712E-02

 ITERATION SUMMARY FOR THE INCREMENT:   3 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  3 ARE EQUILIBRIUM ITERATIONS.


                                INCREMENT    46 SUMMARY


     CURRENT LOAD PROPORTIONALITY FACTOR          1.279    
     TOTAL ARC LENGTH    1.89    , INCREMENT OF ARC LENGTH   1.142E-02


  INCREMENT    47 STARTS. ATTEMPT NUMBER  1
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  16ms


 ***WARNING: THE SYSTEM MATRIX HAS 13 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       2.94       TIME AVG. FORCE        2.53    
 LARGEST SCALED RESIDUAL FORCE     -0.383       AT NODE          2   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE     -0.383    
 LARGEST INCREMENT OF DISP.         0.432       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        0.432       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.297       TIME AVG. MOMENT      0.264    
 LARGEST SCALED RESIDUAL MOMENT     5.100E-02   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     5.100E-02
 LARGEST INCREMENT OF ROTATION     -1.008E-02   AT NODE       1468   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -1.008E-02   AT NODE       1468   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  15ms


 ***WARNING: THE SYSTEM MATRIX HAS 13 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       2.93       TIME AVG. FORCE        2.53    
 LARGEST SCALED RESIDUAL FORCE      1.277E-02   AT NODE       1660   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      1.277E-02
 LARGEST INCREMENT OF DISP.         0.431       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        5.491E-03   AT NODE       1660   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.297       TIME AVG. MOMENT      0.264    
 LARGEST SCALED RESIDUAL MOMENT     1.275E-02   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     1.275E-02
 LARGEST INCREMENT OF ROTATION     -9.992E-03   AT NODE       1468   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.099E-03   AT NODE       1646   DOF  5
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  17ms


 ***WARNING: THE SYSTEM MATRIX HAS 13 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       2.93       TIME AVG. FORCE        2.53    
 LARGEST SCALED RESIDUAL FORCE     -6.140E-04   AT NODE       1632   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -6.140E-04
 LARGEST INCREMENT OF DISP.         0.432       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -4.249E-03   AT NODE       1414   DOF  2
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     0.297       TIME AVG. MOMENT      0.264    
 LARGEST SCALED RESIDUAL MOMENT     4.491E-05   AT NODE       1632   DOF  5
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     4.491E-05
 LARGEST INCREMENT OF ROTATION     -9.665E-03   AT NODE       1468   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     3.287E-04   AT NODE       1356   DOF  4
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF ROTATION CORRECTION    1.158E-06
          MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION
          ARC LENGTH INCREMENT MAY NOW INCREASE TO    2.569E-02

 ITERATION SUMMARY FOR THE INCREMENT:   3 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  3 ARE EQUILIBRIUM ITERATIONS.


                                INCREMENT    47 SUMMARY


     CURRENT LOAD PROPORTIONALITY FACTOR          1.263    
     TOTAL ARC LENGTH    1.91    , INCREMENT OF ARC LENGTH   1.712E-02


  INCREMENT    48 STARTS. ATTEMPT NUMBER  1
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  17ms


 ***WARNING: THE SYSTEM MATRIX HAS 13 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       2.86       TIME AVG. FORCE        2.54    
 LARGEST SCALED RESIDUAL FORCE     -0.866       AT NODE          2   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE     -0.866    
 LARGEST INCREMENT OF DISP.         0.650       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        0.650       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.296       TIME AVG. MOMENT      0.265    
 LARGEST SCALED RESIDUAL MOMENT     0.114       AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     0.114    
 LARGEST INCREMENT OF ROTATION      1.387E-02   AT NODE       1459   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.387E-02   AT NODE       1459   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  15ms


 ***WARNING: THE SYSTEM MATRIX HAS 15 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       2.85       TIME AVG. FORCE        2.54    
 LARGEST SCALED RESIDUAL FORCE       2.74       AT NODE       1660   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE       2.74    
 LARGEST INCREMENT OF DISP.         0.648       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        5.161E-02   AT NODE       1659   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.299       TIME AVG. MOMENT      0.265    
 LARGEST SCALED RESIDUAL MOMENT     3.055E-02   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     3.055E-02
 LARGEST INCREMENT OF ROTATION      2.232E-02   AT NODE       1660   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.518E-02   AT NODE       1645   DOF  5
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  15ms


 ***WARNING: THE SYSTEM MATRIX HAS 16 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       2.85       TIME AVG. FORCE        2.54    
 LARGEST SCALED RESIDUAL FORCE      0.206       AT NODE       1673   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      0.206    
 LARGEST INCREMENT OF DISP.         0.649       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -1.334E-02   AT NODE       1645   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.299       TIME AVG. MOMENT      0.265    
 LARGEST SCALED RESIDUAL MOMENT    -3.707E-03   AT NODE       1631   DOF  5
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT    -3.707E-03
 LARGEST INCREMENT OF ROTATION     -2.027E-02   AT NODE       1170   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     4.685E-03   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  15ms


 ***WARNING: THE SYSTEM MATRIX HAS 15 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     4


 AVERAGE FORCE                       2.84       TIME AVG. FORCE        2.54    
 LARGEST SCALED RESIDUAL FORCE      -22.7       AT NODE       1645   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      -22.7    
 LARGEST INCREMENT OF DISP.         0.649       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -0.120       AT NODE       1673   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.292       TIME AVG. MOMENT      0.265    
 LARGEST SCALED RESIDUAL MOMENT     0.109       AT NODE       1645   DOF  5
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     0.109    
 LARGEST INCREMENT OF ROTATION     -2.514E-02   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -3.299E-02   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.


 ***NOTE: THE SOLUTION APPEARS TO BE DIVERGING. CONVERGENCE IS JUDGED UNLIKELY.


  INCREMENT    48 STARTS. ATTEMPT NUMBER  2
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  15ms


 ***WARNING: THE SYSTEM MATRIX HAS 13 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       2.90       TIME AVG. FORCE        2.54    
 LARGEST SCALED RESIDUAL FORCE     -0.123       AT NODE          2   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE     -0.123    
 LARGEST INCREMENT OF DISP.         0.244       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        0.244       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.301       TIME AVG. MOMENT      0.265    
 LARGEST SCALED RESIDUAL MOMENT     1.614E-02   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     1.614E-02
 LARGEST INCREMENT OF ROTATION      5.205E-03   AT NODE       1459   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     5.205E-03   AT NODE       1459   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  15ms


 ***WARNING: THE SYSTEM MATRIX HAS 13 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       2.90       TIME AVG. FORCE        2.54    
 LARGEST SCALED RESIDUAL FORCE      1.939E-03   AT NODE       1659   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      1.939E-03
 LARGEST INCREMENT OF DISP.         0.244       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.825E-03   AT NODE       1674   DOF  3
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     0.301       TIME AVG. MOMENT      0.265    
 LARGEST SCALED RESIDUAL MOMENT     3.853E-03   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     3.853E-03
 LARGEST INCREMENT OF ROTATION      5.157E-03   AT NODE       1459   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     3.390E-04   AT NODE       1645   DOF  5
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  15ms


 ***WARNING: THE SYSTEM MATRIX HAS 13 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       2.90       TIME AVG. FORCE        2.54    
 LARGEST SCALED RESIDUAL FORCE     -1.849E-05   AT NODE       1631   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -1.849E-05
 LARGEST INCREMENT OF DISP.         0.244       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -6.338E-04   AT NODE       1442   DOF  2
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     0.301       TIME AVG. MOMENT      0.265    
 LARGEST SCALED RESIDUAL MOMENT     7.808E-06   AT NODE       1674   DOF  5
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     7.808E-06
 LARGEST INCREMENT OF ROTATION      5.110E-03   AT NODE       1459   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -5.786E-05   AT NODE       1645   DOF  5
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF ROTATION CORRECTION   -1.172E-07
          MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION
          ARC LENGTH INCREMENT MAY NOW INCREASE TO    9.633E-03

 ITERATION SUMMARY FOR THE INCREMENT:   3 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  3 ARE EQUILIBRIUM ITERATIONS.


                                INCREMENT    48 SUMMARY


     CURRENT LOAD PROPORTIONALITY FACTOR          1.253    
     TOTAL ARC LENGTH    1.91    , INCREMENT OF ARC LENGTH   6.422E-03


  INCREMENT    49 STARTS. ATTEMPT NUMBER  1
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  16ms


 ***WARNING: THE SYSTEM MATRIX HAS 13 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       2.86       TIME AVG. FORCE        2.54    
 LARGEST SCALED RESIDUAL FORCE      0.280       AT NODE       1183   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      0.280    
 LARGEST INCREMENT OF DISP.         0.366       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        0.366       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.300       TIME AVG. MOMENT      0.266    
 LARGEST SCALED RESIDUAL MOMENT     3.588E-02   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     3.588E-02
 LARGEST INCREMENT OF ROTATION      7.494E-03   AT NODE       1459   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     7.494E-03   AT NODE       1459   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  17ms


 ***WARNING: THE SYSTEM MATRIX HAS 15 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       2.86       TIME AVG. FORCE        2.54    
 LARGEST SCALED RESIDUAL FORCE      2.390E-02   AT NODE       1660   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      2.390E-02
 LARGEST INCREMENT OF DISP.         0.366       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        5.258E-03   AT NODE       1673   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.300       TIME AVG. MOMENT      0.266    
 LARGEST SCALED RESIDUAL MOMENT     8.934E-03   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     8.934E-03
 LARGEST INCREMENT OF ROTATION      7.568E-03   AT NODE       1660   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.106E-03   AT NODE       1645   DOF  5
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  15ms


 ***WARNING: THE SYSTEM MATRIX HAS 15 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       2.86       TIME AVG. FORCE        2.54    
 LARGEST SCALED RESIDUAL FORCE     -8.091E-03   AT NODE       1155   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -8.091E-03
 LARGEST INCREMENT OF DISP.         0.366       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        2.829E-03   AT NODE       1183   DOF  3
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     0.300       TIME AVG. MOMENT      0.266    
 LARGEST SCALED RESIDUAL MOMENT    -1.490E-04   AT NODE       1184   DOF  5
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT    -1.490E-04
 LARGEST INCREMENT OF ROTATION      7.525E-03   AT NODE       1660   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     8.276E-04   AT NODE       1170   DOF  5
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF ROTATION CORRECTION   -1.381E-05
          MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION
          ARC LENGTH INCREMENT MAY NOW INCREASE TO    1.445E-02

 ITERATION SUMMARY FOR THE INCREMENT:   3 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  3 ARE EQUILIBRIUM ITERATIONS.


                                INCREMENT    49 SUMMARY


     CURRENT LOAD PROPORTIONALITY FACTOR          1.238    
     TOTAL ARC LENGTH    1.92    , INCREMENT OF ARC LENGTH   9.633E-03


  INCREMENT    50 STARTS. ATTEMPT NUMBER  1
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  16ms


 ***WARNING: THE SYSTEM MATRIX HAS 16 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       2.79       TIME AVG. FORCE        2.55    
 LARGEST SCALED RESIDUAL FORCE      -1.04       AT NODE       1155   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      -1.04    
 LARGEST INCREMENT OF DISP.         0.550       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        0.550       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.302       TIME AVG. MOMENT      0.266    
 LARGEST SCALED RESIDUAL MOMENT     7.962E-02   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     7.962E-02
 LARGEST INCREMENT OF ROTATION     -1.255E-02   AT NODE       1155   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -1.255E-02   AT NODE       1155   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  15ms


 ***WARNING: THE SYSTEM MATRIX HAS 16 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       2.79       TIME AVG. FORCE        2.55    
 LARGEST SCALED RESIDUAL FORCE      0.106       AT NODE       1660   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      0.106    
 LARGEST INCREMENT OF DISP.         0.549       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.013E-02   AT NODE       1352   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.302       TIME AVG. MOMENT      0.266    
 LARGEST SCALED RESIDUAL MOMENT     2.115E-02   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     2.115E-02
 LARGEST INCREMENT OF ROTATION      1.065E-02   AT NODE       1333   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -2.947E-03   AT NODE       1646   DOF  5
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  16ms


 ***WARNING: THE SYSTEM MATRIX HAS 17 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       2.79       TIME AVG. FORCE        2.55    
 LARGEST SCALED RESIDUAL FORCE     -0.883       AT NODE       1155   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -0.883    
 LARGEST INCREMENT OF DISP.         0.549       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        2.520E-02   AT NODE       1142   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.303       TIME AVG. MOMENT      0.266    
 LARGEST SCALED RESIDUAL MOMENT     3.874E-03   AT NODE       1155   DOF  5
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     3.874E-03
 LARGEST INCREMENT OF ROTATION     -1.566E-02   AT NODE       1141   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -6.632E-03   AT NODE       1170   DOF  5
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  21ms


 ***WARNING: THE SYSTEM MATRIX HAS 17 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     4


 AVERAGE FORCE                       2.79       TIME AVG. FORCE        2.55    
 LARGEST SCALED RESIDUAL FORCE     -1.358E-02   AT NODE       1142   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -1.358E-02
 LARGEST INCREMENT OF DISP.         0.549       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -3.018E-03   AT NODE       1170   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.302       TIME AVG. MOMENT      0.266    
 LARGEST SCALED RESIDUAL MOMENT    -6.763E-04   AT NODE       1157   DOF  5
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT    -6.763E-04
 LARGEST INCREMENT OF ROTATION     -1.614E-02   AT NODE       1141   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -1.154E-03   AT NODE       1156   DOF  5
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  20ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     5


 AVERAGE FORCE                       2.79       TIME AVG. FORCE        2.55    
 LARGEST SCALED RESIDUAL FORCE      0.832       AT NODE       1170   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      0.832    
 LARGEST INCREMENT OF DISP.         0.549       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -2.573E-02   AT NODE       1141   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.303       TIME AVG. MOMENT      0.266    
 LARGEST SCALED RESIDUAL MOMENT    -4.577E-03   AT NODE       1464   DOF  5
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT    -4.577E-03
 LARGEST INCREMENT OF ROTATION      1.259E-02   AT NODE       1660   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     6.600E-03   AT NODE       1156   DOF  5
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  14ms


 ***WARNING: THE SYSTEM MATRIX HAS 16 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     6


 AVERAGE FORCE                       2.79       TIME AVG. FORCE        2.55    
 LARGEST SCALED RESIDUAL FORCE      1.041E-02   AT NODE       1155   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      1.041E-02
 LARGEST INCREMENT OF DISP.         0.549       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -2.152E-03   AT NODE       1170   DOF  3
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     0.302       TIME AVG. MOMENT      0.266    
 LARGEST SCALED RESIDUAL MOMENT     5.530E-04   AT NODE       1142   DOF  5
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     5.530E-04
 LARGEST INCREMENT OF ROTATION      1.223E-02   AT NODE       1660   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -8.406E-04   AT NODE       1394   DOF  5
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  14ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     7


 AVERAGE FORCE                       2.79       TIME AVG. FORCE        2.55    
 LARGEST SCALED RESIDUAL FORCE     -5.419E-02   AT NODE       1646   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -5.419E-02
 LARGEST INCREMENT OF DISP.         0.549       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        6.362E-03   AT NODE       1351   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.303       TIME AVG. MOMENT      0.266    
 LARGEST SCALED RESIDUAL MOMENT     5.818E-04   AT NODE       1352   DOF  5
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     5.818E-04
 LARGEST INCREMENT OF ROTATION     -1.192E-02   AT NODE       1155   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.606E-03   AT NODE       1673   DOF  4
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  15ms


 ***WARNING: THE SYSTEM MATRIX HAS 17 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     8


 AVERAGE FORCE                       2.79       TIME AVG. FORCE        2.55    
 LARGEST SCALED RESIDUAL FORCE      7.005E-04   AT NODE       1659   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      7.005E-04
 LARGEST INCREMENT OF DISP.         0.549       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -7.218E-04   AT NODE       1463   DOF  3
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     0.303       TIME AVG. MOMENT      0.266    
 LARGEST SCALED RESIDUAL MOMENT    -5.912E-05   AT NODE       1688   DOF  5
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT    -5.912E-05
 LARGEST INCREMENT OF ROTATION     -1.201E-02   AT NODE       1155   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -2.185E-04   AT NODE       1645   DOF  5
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF ROTATION CORRECTION    2.337E-05
          MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 ITERATION SUMMARY FOR THE INCREMENT:   8 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  8 ARE EQUILIBRIUM ITERATIONS.


                                INCREMENT    50 SUMMARY


     CURRENT LOAD PROPORTIONALITY FACTOR          1.214    
     TOTAL ARC LENGTH    1.94    , INCREMENT OF ARC LENGTH   1.445E-02


  INCREMENT    51 STARTS. ATTEMPT NUMBER  1
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  15ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       2.72       TIME AVG. FORCE        2.55    
 LARGEST SCALED RESIDUAL FORCE      -2.00       AT NODE       1156   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      -2.00    
 LARGEST INCREMENT OF DISP.         0.551       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        0.551       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.310       TIME AVG. MOMENT      0.267    
 LARGEST SCALED RESIDUAL MOMENT     7.808E-02   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     7.808E-02
 LARGEST INCREMENT OF ROTATION     -1.294E-02   AT NODE       1141   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -1.294E-02   AT NODE       1141   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  15ms


 ***WARNING: THE SYSTEM MATRIX HAS 15 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       2.72       TIME AVG. FORCE        2.55    
 LARGEST SCALED RESIDUAL FORCE      3.411E-02   AT NODE       1184   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      3.411E-02
 LARGEST INCREMENT OF DISP.         0.550       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        8.434E-03   AT NODE       1575   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.310       TIME AVG. MOMENT      0.267    
 LARGEST SCALED RESIDUAL MOMENT     2.119E-02   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     2.119E-02
 LARGEST INCREMENT OF ROTATION     -1.283E-02   AT NODE       1141   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -2.030E-03   AT NODE       1646   DOF  5
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  16ms


 ***WARNING: THE SYSTEM MATRIX HAS 17 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       2.72       TIME AVG. FORCE        2.55    
 LARGEST SCALED RESIDUAL FORCE       1.88       AT NODE       1170   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE       1.88    
 LARGEST INCREMENT OF DISP.         0.550       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        4.220E-02   AT NODE       1142   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.309       TIME AVG. MOMENT      0.267    
 LARGEST SCALED RESIDUAL MOMENT     6.775E-03   AT NODE       1141   DOF  5
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     6.775E-03
 LARGEST INCREMENT OF ROTATION     -2.258E-02   AT NODE       1141   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -1.108E-02   AT NODE       1155   DOF  5
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  17ms


 ***WARNING: THE SYSTEM MATRIX HAS 15 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     4


 AVERAGE FORCE                       2.72       TIME AVG. FORCE        2.55    
 LARGEST SCALED RESIDUAL FORCE      9.570E-02   AT NODE       1156   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      9.570E-02
 LARGEST INCREMENT OF DISP.         0.550       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        7.237E-03   AT NODE       1281   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.311       TIME AVG. MOMENT      0.267    
 LARGEST SCALED RESIDUAL MOMENT     2.283E-03   AT NODE       1141   DOF  5
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     2.283E-03
 LARGEST INCREMENT OF ROTATION     -2.327E-02   AT NODE       1141   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     2.104E-03   AT NODE       1267   DOF  5
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  16ms


 ***WARNING: THE SYSTEM MATRIX HAS 17 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     5


 AVERAGE FORCE                       2.72       TIME AVG. FORCE        2.55    
 LARGEST SCALED RESIDUAL FORCE      0.140       AT NODE       1267   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      0.140    
 LARGEST INCREMENT OF DISP.         0.550       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.058E-02   AT NODE       1239   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.309       TIME AVG. MOMENT      0.267    
 LARGEST SCALED RESIDUAL MOMENT     1.241E-03   AT NODE       1240   DOF  5
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     1.241E-03
 LARGEST INCREMENT OF ROTATION     -2.265E-02   AT NODE       1141   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -3.061E-03   AT NODE       1254   DOF  5
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  16ms


 ***WARNING: THE SYSTEM MATRIX HAS 17 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     6


 AVERAGE FORCE                       2.72       TIME AVG. FORCE        2.55    
 LARGEST SCALED RESIDUAL FORCE      4.090E-02   AT NODE       1169   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      4.090E-02
 LARGEST INCREMENT OF DISP.         0.550       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        7.650E-03   AT NODE       1142   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.310       TIME AVG. MOMENT      0.267    
 LARGEST SCALED RESIDUAL MOMENT     9.898E-04   AT NODE       1141   DOF  5
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     9.898E-04
 LARGEST INCREMENT OF ROTATION     -2.443E-02   AT NODE       1141   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -2.412E-03   AT NODE       1155   DOF  5
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  16ms


 ***WARNING: THE SYSTEM MATRIX HAS 17 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     7


 AVERAGE FORCE                       2.72       TIME AVG. FORCE        2.55    
 LARGEST SCALED RESIDUAL FORCE     -5.910E-02   AT NODE       1141   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -5.910E-02
 LARGEST INCREMENT OF DISP.         0.550       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        9.433E-03   AT NODE       1141   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.308       TIME AVG. MOMENT      0.267    
 LARGEST SCALED RESIDUAL MOMENT     1.417E-03   AT NODE       1142   DOF  5
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     1.417E-03
 LARGEST INCREMENT OF ROTATION     -2.654E-02   AT NODE       1141   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -2.900E-03   AT NODE       1156   DOF  5
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  16ms


 ***WARNING: THE SYSTEM MATRIX HAS 17 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     8


 AVERAGE FORCE                       2.72       TIME AVG. FORCE        2.55    
 LARGEST SCALED RESIDUAL FORCE     -1.536E-02   AT NODE       1646   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -1.536E-02
 LARGEST INCREMENT OF DISP.         0.550       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -3.489E-03   AT NODE       1464   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.307       TIME AVG. MOMENT      0.267    
 LARGEST SCALED RESIDUAL MOMENT     5.156E-04   AT NODE       1141   DOF  5
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     5.156E-04
 LARGEST INCREMENT OF ROTATION     -2.701E-02   AT NODE       1141   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -8.909E-04   AT NODE       1450   DOF  5
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  15ms


 ***WARNING: THE SYSTEM MATRIX HAS 17 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     9


 AVERAGE FORCE                       2.72       TIME AVG. FORCE        2.55    
 LARGEST SCALED RESIDUAL FORCE     -0.529       AT NODE       1142   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -0.529    
 LARGEST INCREMENT OF DISP.         0.550       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        2.570E-02   AT NODE       1142   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.308       TIME AVG. MOMENT      0.267    
 LARGEST SCALED RESIDUAL MOMENT     5.894E-03   AT NODE       1141   DOF  5
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     5.894E-03
 LARGEST INCREMENT OF ROTATION     -3.393E-02   AT NODE       1155   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -7.819E-03   AT NODE       1156   DOF  5
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.


 ***NOTE: THE SOLUTION APPEARS TO BE DIVERGING. CONVERGENCE IS JUDGED UNLIKELY.


  INCREMENT    51 STARTS. ATTEMPT NUMBER  2
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  17ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       2.77       TIME AVG. FORCE        2.55    
 LARGEST SCALED RESIDUAL FORCE     -0.126       AT NODE       1156   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -0.126    
 LARGEST INCREMENT OF DISP.         0.138       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        0.138       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.306       TIME AVG. MOMENT      0.267    
 LARGEST SCALED RESIDUAL MOMENT     4.914E-03   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     4.914E-03
 LARGEST INCREMENT OF ROTATION     -3.240E-03   AT NODE       1141   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -3.240E-03   AT NODE       1141   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  16ms


 ***WARNING: THE SYSTEM MATRIX HAS 17 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       2.77       TIME AVG. FORCE        2.55    
 LARGEST SCALED RESIDUAL FORCE      2.222E-03   AT NODE       1170   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      2.222E-03
 LARGEST INCREMENT OF DISP.         0.138       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.672E-03   AT NODE       1142   DOF  3
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF DISP.    CORRECTION   -8.764E-04
          FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                     0.306       TIME AVG. MOMENT      0.267    
 LARGEST SCALED RESIDUAL MOMENT     1.173E-03   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     1.173E-03
 LARGEST INCREMENT OF ROTATION     -3.579E-03   AT NODE       1141   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -4.036E-04   AT NODE       1155   DOF  5
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  17ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       2.77       TIME AVG. FORCE        2.55    
 LARGEST SCALED RESIDUAL FORCE      2.232E-03   AT NODE       1169   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      2.232E-03
 LARGEST INCREMENT OF DISP.         0.138       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -1.246E-03   AT NODE       1141   DOF  3
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     0.305       TIME AVG. MOMENT      0.267    
 LARGEST SCALED RESIDUAL MOMENT    -5.099E-05   AT NODE       1170   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT    -5.099E-05
 LARGEST INCREMENT OF ROTATION     -3.561E-03   AT NODE       1673   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -3.265E-04   AT NODE       1142   DOF  4
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF ROTATION CORRECTION    1.420E-05
          MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 ITERATION SUMMARY FOR THE INCREMENT:   3 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  3 ARE EQUILIBRIUM ITERATIONS.


                                INCREMENT    51 SUMMARY


     CURRENT LOAD PROPORTIONALITY FACTOR          1.208    
     TOTAL ARC LENGTH    1.94    , INCREMENT OF ARC LENGTH   3.612E-03


  INCREMENT    52 STARTS. ATTEMPT NUMBER  1
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  15ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       2.75       TIME AVG. FORCE        2.56    
 LARGEST SCALED RESIDUAL FORCE     -0.162       AT NODE       1155   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -0.162    
 LARGEST INCREMENT OF DISP.         0.138       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        0.138       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.308       TIME AVG. MOMENT      0.268    
 LARGEST SCALED RESIDUAL MOMENT     4.885E-03   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     4.885E-03
 LARGEST INCREMENT OF ROTATION     -3.604E-03   AT NODE       1141   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -3.604E-03   AT NODE       1141   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  15ms


 ***WARNING: THE SYSTEM MATRIX HAS 17 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       2.75       TIME AVG. FORCE        2.56    
 LARGEST SCALED RESIDUAL FORCE     -2.721E-03   AT NODE       1646   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -2.721E-03
 LARGEST INCREMENT OF DISP.         0.138       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.903E-03   AT NODE       1673   DOF  3
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     0.308       TIME AVG. MOMENT      0.268    
 LARGEST SCALED RESIDUAL MOMENT     1.173E-03   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     1.173E-03
 LARGEST INCREMENT OF ROTATION      3.943E-03   AT NODE       1674   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     4.893E-04   AT NODE       1660   DOF  5
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  14ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       2.75       TIME AVG. FORCE        2.56    
 LARGEST SCALED RESIDUAL FORCE     -4.432E-04   AT NODE       1645   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -4.432E-04
 LARGEST INCREMENT OF DISP.         0.138       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -5.263E-04   AT NODE       1674   DOF  3
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     0.308       TIME AVG. MOMENT      0.268    
 LARGEST SCALED RESIDUAL MOMENT    -2.530E-05   AT NODE       1659   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT    -2.530E-05
 LARGEST INCREMENT OF ROTATION      3.795E-03   AT NODE       1674   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.472E-04   AT NODE       1673   DOF  4
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF ROTATION CORRECTION   -3.177E-06
          MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION
          ARC LENGTH INCREMENT MAY NOW INCREASE TO    5.418E-03

 ITERATION SUMMARY FOR THE INCREMENT:   3 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  3 ARE EQUILIBRIUM ITERATIONS.


                                INCREMENT    52 SUMMARY


     CURRENT LOAD PROPORTIONALITY FACTOR          1.201    
     TOTAL ARC LENGTH    1.95    , INCREMENT OF ARC LENGTH   3.612E-03


  INCREMENT    53 STARTS. ATTEMPT NUMBER  1
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  15ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       2.72       TIME AVG. FORCE        2.56    
 LARGEST SCALED RESIDUAL FORCE     -0.441       AT NODE       1155   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -0.441    
 LARGEST INCREMENT OF DISP.         0.207       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        0.207       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.311       TIME AVG. MOMENT      0.269    
 LARGEST SCALED RESIDUAL MOMENT     1.089E-02   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     1.089E-02
 LARGEST INCREMENT OF ROTATION      6.024E-03   AT NODE       1674   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     6.024E-03   AT NODE       1674   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  15ms


 ***WARNING: THE SYSTEM MATRIX HAS 16 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       2.73       TIME AVG. FORCE        2.56    
 LARGEST SCALED RESIDUAL FORCE      1.803E-02   AT NODE       1659   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      1.803E-02
 LARGEST INCREMENT OF DISP.         0.207       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        3.080E-03   AT NODE       1632   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.311       TIME AVG. MOMENT      0.269    
 LARGEST SCALED RESIDUAL MOMENT     2.694E-03   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     2.694E-03
 LARGEST INCREMENT OF ROTATION     -5.213E-03   AT NODE       1141   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -9.267E-04   AT NODE       1645   DOF  5
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  15ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       2.73       TIME AVG. FORCE        2.56    
 LARGEST SCALED RESIDUAL FORCE     -7.305E-02   AT NODE       1645   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -7.305E-02
 LARGEST INCREMENT OF DISP.         0.207       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        7.806E-03   AT NODE       1673   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.310       TIME AVG. MOMENT      0.269    
 LARGEST SCALED RESIDUAL MOMENT     3.876E-04   AT NODE       1659   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     3.876E-04
 LARGEST INCREMENT OF ROTATION      7.059E-03   AT NODE       1674   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     2.149E-03   AT NODE       1660   DOF  5
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  15ms


 ***WARNING: THE SYSTEM MATRIX HAS 17 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     4


 AVERAGE FORCE                       2.73       TIME AVG. FORCE        2.56    
 LARGEST SCALED RESIDUAL FORCE      1.097E-03   AT NODE       1169   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      1.097E-03
 LARGEST INCREMENT OF DISP.         0.207       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -9.223E-04   AT NODE       1142   DOF  3
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     0.311       TIME AVG. MOMENT      0.269    
 LARGEST SCALED RESIDUAL MOMENT    -7.409E-05   AT NODE       1632   DOF  5
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT    -7.409E-05
 LARGEST INCREMENT OF ROTATION     -7.226E-03   AT NODE       1673   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     2.394E-04   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF ROTATION CORRECTION   -4.576E-05
          MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION
          ARC LENGTH INCREMENT MAY NOW INCREASE TO    8.127E-03

 ITERATION SUMMARY FOR THE INCREMENT:   4 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  4 ARE EQUILIBRIUM ITERATIONS.


                                INCREMENT    53 SUMMARY


     CURRENT LOAD PROPORTIONALITY FACTOR          1.191    
     TOTAL ARC LENGTH    1.95    , INCREMENT OF ARC LENGTH   5.418E-03


  INCREMENT    54 STARTS. ATTEMPT NUMBER  1
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  16ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       2.68       TIME AVG. FORCE        2.56    
 LARGEST SCALED RESIDUAL FORCE       1.66       AT NODE       1169   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE       1.66    
 LARGEST INCREMENT OF DISP.         0.310       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        0.310       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.312       TIME AVG. MOMENT      0.270    
 LARGEST SCALED RESIDUAL MOMENT     2.426E-02   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     2.426E-02
 LARGEST INCREMENT OF ROTATION     -1.225E-02   AT NODE       1673   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -1.225E-02   AT NODE       1673   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  14ms


 ***WARNING: THE SYSTEM MATRIX HAS 14 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       2.68       TIME AVG. FORCE        2.56    
 LARGEST SCALED RESIDUAL FORCE       1.61       AT NODE       1267   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE       1.61    
 LARGEST INCREMENT OF DISP.         0.310       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -3.263E-02   AT NODE       1239   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.316       TIME AVG. MOMENT      0.270    
 LARGEST SCALED RESIDUAL MOMENT     6.258E-03   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     6.258E-03
 LARGEST INCREMENT OF ROTATION     -1.304E-02   AT NODE       1673   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     9.654E-03   AT NODE       1254   DOF  5
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  16ms


 ***WARNING: THE SYSTEM MATRIX HAS 14 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       2.68       TIME AVG. FORCE        2.56    
 LARGEST SCALED RESIDUAL FORCE      -1.93       AT NODE       1547   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      -1.93    
 LARGEST INCREMENT OF DISP.         0.311       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -3.555E-02   AT NODE       1576   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.315       TIME AVG. MOMENT      0.270    
 LARGEST SCALED RESIDUAL MOMENT     4.637E-03   AT NODE       1548   DOF  5
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     4.637E-03
 LARGEST INCREMENT OF ROTATION      1.264E-02   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     9.387E-03   AT NODE       1575   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  16ms


 ***WARNING: THE SYSTEM MATRIX HAS 15 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     4


 AVERAGE FORCE                       3.85       TIME AVG. FORCE        2.58    
 LARGEST SCALED RESIDUAL FORCE     -1.527E+03   AT NODE       1254   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -1.527E+03
 LARGEST INCREMENT OF DISP.          1.06       AT NODE       1142   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        0.946       AT NODE       1254   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.360       TIME AVG. MOMENT      0.270    
 LARGEST SCALED RESIDUAL MOMENT      24.9       AT NODE       1253   DOF  5
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT      24.9    
 LARGEST INCREMENT OF ROTATION     -0.309       AT NODE       1268   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -0.317       AT NODE       1268   DOF  5
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.


 ***NOTE: THE SOLUTION APPEARS TO BE DIVERGING. CONVERGENCE IS JUDGED UNLIKELY.


  INCREMENT    54 STARTS. ATTEMPT NUMBER  2
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  16ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        2.56    
 LARGEST SCALED RESIDUAL FORCE     -0.240       AT NODE       1645   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -0.240    
 LARGEST INCREMENT OF DISP.         0.116       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        0.116       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.312       TIME AVG. MOMENT      0.270    
 LARGEST SCALED RESIDUAL MOMENT     3.456E-03   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     3.456E-03
 LARGEST INCREMENT OF ROTATION     -4.645E-03   AT NODE       1673   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -4.645E-03   AT NODE       1673   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  16ms


 ***WARNING: THE SYSTEM MATRIX HAS 16 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        2.56    
 LARGEST SCALED RESIDUAL FORCE      3.470E-02   AT NODE       1169   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      3.470E-02
 LARGEST INCREMENT OF DISP.         0.116       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -5.131E-03   AT NODE       1141   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.312       TIME AVG. MOMENT      0.270    
 LARGEST SCALED RESIDUAL MOMENT     8.350E-04   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     8.350E-04
 LARGEST INCREMENT OF ROTATION     -3.524E-03   AT NODE       1673   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.495E-03   AT NODE       1156   DOF  5
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  17ms


 ***WARNING: THE SYSTEM MATRIX HAS 17 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        2.56    
 LARGEST SCALED RESIDUAL FORCE     -0.171       AT NODE       1646   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -0.171    
 LARGEST INCREMENT OF DISP.         0.117       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.329E-02   AT NODE       1673   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.312       TIME AVG. MOMENT      0.270    
 LARGEST SCALED RESIDUAL MOMENT    -8.341E-04   AT NODE       1674   DOF  5
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT    -8.341E-04
 LARGEST INCREMENT OF ROTATION     -6.703E-03   AT NODE       1673   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     3.896E-03   AT NODE       1660   DOF  5
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  15ms


 ***WARNING: THE SYSTEM MATRIX HAS 17 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     4


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        2.56    
 LARGEST SCALED RESIDUAL FORCE      1.829E-03   AT NODE       1170   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      1.829E-03
 LARGEST INCREMENT OF DISP.         0.117       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -1.313E-03   AT NODE       1142   DOF  3
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF DISP.    CORRECTION   -6.919E-05
          FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                     0.312       TIME AVG. MOMENT      0.270    
 LARGEST SCALED RESIDUAL MOMENT    -1.377E-04   AT NODE       1631   DOF  5
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT    -1.377E-04
 LARGEST INCREMENT OF ROTATION      6.874E-03   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     3.699E-04   AT NODE       1155   DOF  5
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF ROTATION CORRECTION    6.106E-05
          MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION
          ARC LENGTH INCREMENT MAY NOW INCREASE TO    3.048E-03

 ITERATION SUMMARY FOR THE INCREMENT:   4 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  4 ARE EQUILIBRIUM ITERATIONS.


                                INCREMENT    54 SUMMARY


     CURRENT LOAD PROPORTIONALITY FACTOR          1.185    
     TOTAL ARC LENGTH    1.95    , INCREMENT OF ARC LENGTH   2.032E-03


  INCREMENT    55 STARTS. ATTEMPT NUMBER  1
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  15ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       2.68       TIME AVG. FORCE        2.56    
 LARGEST SCALED RESIDUAL FORCE      -2.19       AT NODE       1646   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      -2.19    
 LARGEST INCREMENT OF DISP.         0.175       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        0.175       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.312       TIME AVG. MOMENT      0.270    
 LARGEST SCALED RESIDUAL MOMENT    -1.234E-02   AT NODE       1674   DOF  5
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT    -1.234E-02
 LARGEST INCREMENT OF ROTATION      1.579E-02   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.579E-02   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  16ms


 ***WARNING: THE SYSTEM MATRIX HAS 14 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       2.69       TIME AVG. FORCE        2.56    
 LARGEST SCALED RESIDUAL FORCE      7.852E-02   AT NODE       1169   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      7.852E-02
 LARGEST INCREMENT OF DISP.         0.175       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -1.282E-02   AT NODE       1659   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.313       TIME AVG. MOMENT      0.270    
 LARGEST SCALED RESIDUAL MOMENT    -2.135E-03   AT NODE       1674   DOF  5
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT    -2.135E-03
 LARGEST INCREMENT OF ROTATION      1.595E-02   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     3.370E-03   AT NODE       1673   DOF  5
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  15ms


 ***WARNING: THE SYSTEM MATRIX HAS 16 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       2.68       TIME AVG. FORCE        2.56    
 LARGEST SCALED RESIDUAL FORCE       1.56       AT NODE       1170   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE       1.56    
 LARGEST INCREMENT OF DISP.         0.175       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -4.089E-02   AT NODE       1141   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.311       TIME AVG. MOMENT      0.270    
 LARGEST SCALED RESIDUAL MOMENT    -9.889E-03   AT NODE       1169   DOF  5
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT    -9.889E-03
 LARGEST INCREMENT OF ROTATION      1.152E-02   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.188E-02   AT NODE       1155   DOF  5
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  18ms


 ***WARNING: THE SYSTEM MATRIX HAS 15 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     4


 AVERAGE FORCE                       2.67       TIME AVG. FORCE        2.56    
 LARGEST SCALED RESIDUAL FORCE       9.99       AT NODE       1674   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE       9.99    
 LARGEST INCREMENT OF DISP.         0.176       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        0.107       AT NODE       1351   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.310       TIME AVG. MOMENT      0.270    
 LARGEST SCALED RESIDUAL MOMENT     6.858E-02   AT NODE       1352   DOF  5
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     6.858E-02
 LARGEST INCREMENT OF ROTATION      4.251E-02   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     3.100E-02   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.


 ***NOTE: THE SOLUTION APPEARS TO BE DIVERGING. CONVERGENCE IS JUDGED UNLIKELY.


  INCREMENT    55 STARTS. ATTEMPT NUMBER  2
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  15ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       2.70       TIME AVG. FORCE        2.56    
 LARGEST SCALED RESIDUAL FORCE     -0.408       AT NODE       1645   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -0.408    
 LARGEST INCREMENT OF DISP.         6.558E-02   AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        6.558E-02   AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.313       TIME AVG. MOMENT      0.270    
 LARGEST SCALED RESIDUAL MOMENT    -2.376E-03   AT NODE       1674   DOF  5
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT    -2.376E-03
 LARGEST INCREMENT OF ROTATION      6.827E-03   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     6.827E-03   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  14ms


 ***WARNING: THE SYSTEM MATRIX HAS 17 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       2.70       TIME AVG. FORCE        2.56    
 LARGEST SCALED RESIDUAL FORCE      0.133       AT NODE       1170   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      0.133    
 LARGEST INCREMENT OF DISP.         6.549E-02   AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.226E-02   AT NODE       1142   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.310       TIME AVG. MOMENT      0.270    
 LARGEST SCALED RESIDUAL MOMENT    -7.594E-04   AT NODE       1169   DOF  5
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT    -7.594E-04
 LARGEST INCREMENT OF ROTATION      7.657E-03   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -3.485E-03   AT NODE       1155   DOF  5
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  14ms


 ***WARNING: THE SYSTEM MATRIX HAS 17 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       2.70       TIME AVG. FORCE        2.56    
 LARGEST SCALED RESIDUAL FORCE       1.01       AT NODE       1674   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE       1.01    
 LARGEST INCREMENT OF DISP.         6.540E-02   AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -3.556E-02   AT NODE       1674   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.313       TIME AVG. MOMENT      0.270    
 LARGEST SCALED RESIDUAL MOMENT     8.255E-03   AT NODE       1646   DOF  5
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     8.255E-03
 LARGEST INCREMENT OF ROTATION     -3.671E-03   AT NODE       1562   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -1.130E-02   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  15ms


 ***WARNING: THE SYSTEM MATRIX HAS 16 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     4


 AVERAGE FORCE                       2.70       TIME AVG. FORCE        2.56    
 LARGEST SCALED RESIDUAL FORCE      0.704       AT NODE       1170   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      0.704    
 LARGEST INCREMENT OF DISP.         6.463E-02   AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        2.765E-02   AT NODE       1142   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.312       TIME AVG. MOMENT      0.270    
 LARGEST SCALED RESIDUAL MOMENT    -4.304E-03   AT NODE       1170   DOF  5
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT    -4.304E-03
 LARGEST INCREMENT OF ROTATION     -1.039E-02   AT NODE       1155   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -8.287E-03   AT NODE       1155   DOF  5
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  17ms


 ***WARNING: THE SYSTEM MATRIX HAS 16 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     5


 AVERAGE FORCE                       2.70       TIME AVG. FORCE        2.56    
 LARGEST SCALED RESIDUAL FORCE     -0.252       AT NODE       1645   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -0.252    
 LARGEST INCREMENT OF DISP.         6.479E-02   AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.533E-02   AT NODE       1240   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.312       TIME AVG. MOMENT      0.270    
 LARGEST SCALED RESIDUAL MOMENT     1.438E-03   AT NODE       1645   DOF  5
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     1.438E-03
 LARGEST INCREMENT OF ROTATION     -1.041E-02   AT NODE       1253   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -4.529E-03   AT NODE       1253   DOF  5
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  15ms


 ***WARNING: THE SYSTEM MATRIX HAS 16 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     6


 AVERAGE FORCE                       2.70       TIME AVG. FORCE        2.56    
 LARGEST SCALED RESIDUAL FORCE      0.166       AT NODE       1169   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      0.166    
 LARGEST INCREMENT OF DISP.         6.521E-02   AT NODE       1141   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.460E-02   AT NODE       1141   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.311       TIME AVG. MOMENT      0.270    
 LARGEST SCALED RESIDUAL MOMENT     1.215E-03   AT NODE       1142   DOF  5
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     1.215E-03
 LARGEST INCREMENT OF ROTATION     -1.378E-02   AT NODE       1155   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -4.760E-03   AT NODE       1156   DOF  5
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  15ms


 ***WARNING: THE SYSTEM MATRIX HAS 17 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     7


 AVERAGE FORCE                       2.72       TIME AVG. FORCE        2.56    
 LARGEST SCALED RESIDUAL FORCE      -114.       AT NODE       1547   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      -114.    
 LARGEST INCREMENT OF DISP.         0.397       AT NODE       1674   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        0.389       AT NODE       1674   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.309       TIME AVG. MOMENT      0.270    
 LARGEST SCALED RESIDUAL MOMENT    -0.976       AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT    -0.976    
 LARGEST INCREMENT OF ROTATION      0.117       AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     0.117       AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.


 ***NOTE: THE SOLUTION APPEARS TO BE DIVERGING. CONVERGENCE IS JUDGED UNLIKELY.


  INCREMENT    55 STARTS. ATTEMPT NUMBER  3
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  15ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        2.56    
 LARGEST SCALED RESIDUAL FORCE     -3.421E-03   AT NODE       1646   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -3.421E-03
 LARGEST INCREMENT OF DISP.         6.149E-03   AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        6.149E-03   AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     0.313       TIME AVG. MOMENT      0.270    
 LARGEST SCALED RESIDUAL MOMENT    -1.504E-04   AT NODE       1660   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT    -1.504E-04
 LARGEST INCREMENT OF ROTATION      6.898E-04   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     6.898E-04   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF ROTATION CORRECTION    3.215E-07
          MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  18ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        2.56    
 LARGEST SCALED RESIDUAL FORCE     -0.169       AT NODE       1548   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -0.169    
 LARGEST INCREMENT OF DISP.         1.407E-02   AT NODE       1141   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -1.479E-02   AT NODE       1673   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.311       TIME AVG. MOMENT      0.270    
 LARGEST SCALED RESIDUAL MOMENT     1.297E-03   AT NODE       1645   DOF  5
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     1.297E-03
 LARGEST INCREMENT OF ROTATION     -3.782E-03   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -4.472E-03   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  16ms


 ***WARNING: THE SYSTEM MATRIX HAS 16 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        2.56    
 LARGEST SCALED RESIDUAL FORCE      5.567E-03   AT NODE       1659   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      5.567E-03
 LARGEST INCREMENT OF DISP.        -1.363E-02   AT NODE       1673   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -1.799E-03   AT NODE       1673   DOF  3
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     0.311       TIME AVG. MOMENT      0.270    
 LARGEST SCALED RESIDUAL MOMENT     9.892E-05   AT NODE       1142   DOF  5
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     9.892E-05
 LARGEST INCREMENT OF ROTATION     -4.250E-03   AT NODE       1660   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -4.755E-04   AT NODE       1674   DOF  4
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  16ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     4


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        2.56    
 LARGEST SCALED RESIDUAL FORCE     -6.785E-02   AT NODE       1646   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -6.785E-02
 LARGEST INCREMENT OF DISP.         9.114E-03   AT NODE       1142   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        8.470E-03   AT NODE       1673   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.311       TIME AVG. MOMENT      0.270    
 LARGEST SCALED RESIDUAL MOMENT    -4.398E-04   AT NODE       1660   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT    -4.398E-04
 LARGEST INCREMENT OF ROTATION     -2.088E-03   AT NODE       1156   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     2.477E-03   AT NODE       1660   DOF  5
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  15ms


 ***WARNING: THE SYSTEM MATRIX HAS 17 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     5


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        2.56    
 LARGEST SCALED RESIDUAL FORCE      4.159E-04   AT NODE       1673   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      4.159E-04
 LARGEST INCREMENT OF DISP.         9.016E-03   AT NODE       1142   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        5.320E-04   AT NODE       1674   DOF  3
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF DISP.    CORRECTION    3.974E-05
          FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                     0.311       TIME AVG. MOMENT      0.270    
 LARGEST SCALED RESIDUAL MOMENT     2.788E-05   AT NODE       1659   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     2.788E-05
 LARGEST INCREMENT OF ROTATION     -2.065E-03   AT NODE       1155   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.829E-04   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  16ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     6


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        2.56    
 LARGEST SCALED RESIDUAL FORCE      1.229E-04   AT NODE       1169   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      1.229E-04
 LARGEST INCREMENT OF DISP.         8.639E-03   AT NODE       1141   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -3.774E-04   AT NODE       1142   DOF  3
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     0.311       TIME AVG. MOMENT      0.270    
 LARGEST SCALED RESIDUAL MOMENT     1.818E-05   AT NODE       1155   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     1.818E-05
 LARGEST INCREMENT OF ROTATION     -1.955E-03   AT NODE       1156   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.093E-04   AT NODE       1155   DOF  5
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  15ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     7


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        2.56    
 LARGEST SCALED RESIDUAL FORCE     -1.399E-05   AT NODE       1547   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -1.399E-05
 LARGEST INCREMENT OF DISP.         8.521E-03   AT NODE       1142   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.343E-04   AT NODE       1674   DOF  3
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF DISP.    CORRECTION   -1.528E-05
          FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                     0.311       TIME AVG. MOMENT      0.270    
 LARGEST SCALED RESIDUAL MOMENT     6.763E-06   AT NODE       1659   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     6.763E-06
 LARGEST INCREMENT OF ROTATION     -1.922E-03   AT NODE       1155   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     4.012E-05   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF ROTATION CORRECTION    1.492E-05
          MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 ITERATION SUMMARY FOR THE INCREMENT:   7 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  7 ARE EQUILIBRIUM ITERATIONS.


                                INCREMENT    55 SUMMARY


     CURRENT LOAD PROPORTIONALITY FACTOR          1.185    
     TOTAL ARC LENGTH    1.95    , INCREMENT OF ARC LENGTH   1.905E-04


  INCREMENT    56 STARTS. ATTEMPT NUMBER  1
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  15ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        2.57    
 LARGEST SCALED RESIDUAL FORCE     -1.766E-03   AT NODE       1645   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -1.766E-03
 LARGEST INCREMENT OF DISP.         6.139E-03   AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        6.139E-03   AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     0.312       TIME AVG. MOMENT      0.271    
 LARGEST SCALED RESIDUAL MOMENT     7.924E-05   AT NODE       1659   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     7.924E-05
 LARGEST INCREMENT OF ROTATION      4.014E-04   AT NODE       1660   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     4.014E-04   AT NODE       1660   DOF  5
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF ROTATION CORRECTION   -1.040E-07
          MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  16ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        2.57    
 LARGEST SCALED RESIDUAL FORCE     -9.069E-05   AT NODE       1548   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -9.069E-05
 LARGEST INCREMENT OF DISP.         6.144E-03   AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        3.414E-04   AT NODE       1673   DOF  3
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     0.312       TIME AVG. MOMENT      0.271    
 LARGEST SCALED RESIDUAL MOMENT    -1.731E-05   AT NODE       1660   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT    -1.731E-05
 LARGEST INCREMENT OF ROTATION      5.039E-04   AT NODE       1660   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.025E-04   AT NODE       1660   DOF  5
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  17ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        2.57    
 LARGEST SCALED RESIDUAL FORCE     -1.912E-05   AT NODE       1645   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -1.912E-05
 LARGEST INCREMENT OF DISP.         6.145E-03   AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.624E-04   AT NODE       1673   DOF  3
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF DISP.    CORRECTION    3.425E-05
          FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                     0.312       TIME AVG. MOMENT      0.271    
 LARGEST SCALED RESIDUAL MOMENT     8.170E-06   AT NODE       1659   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     8.170E-06
 LARGEST INCREMENT OF ROTATION      5.525E-04   AT NODE       1660   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     4.861E-05   AT NODE       1660   DOF  5
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  17ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     4


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        2.57    
 LARGEST SCALED RESIDUAL FORCE     -2.168E-05   AT NODE       1548   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -2.168E-05
 LARGEST INCREMENT OF DISP.         6.147E-03   AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.662E-04   AT NODE       1674   DOF  3
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     0.312       TIME AVG. MOMENT      0.271    
 LARGEST SCALED RESIDUAL MOMENT    -8.400E-06   AT NODE       1660   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT    -8.400E-06
 LARGEST INCREMENT OF ROTATION      6.022E-04   AT NODE       1660   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     4.976E-05   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  18ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     5


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        2.57    
 LARGEST SCALED RESIDUAL FORCE      3.395E-06   AT NODE       1170   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      3.395E-06
 LARGEST INCREMENT OF DISP.         6.148E-03   AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        6.425E-05   AT NODE       1673   DOF  3
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF DISP.    CORRECTION   -1.141E-05
          FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                     0.312       TIME AVG. MOMENT      0.271    
 LARGEST SCALED RESIDUAL MOMENT    -3.256E-06   AT NODE       1660   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT    -3.256E-06
 LARGEST INCREMENT OF ROTATION      6.215E-04   AT NODE       1660   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.926E-05   AT NODE       1660   DOF  5
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  17ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     6


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        2.57    
 LARGEST SCALED RESIDUAL FORCE      5.971E-06   AT NODE       1170   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      5.971E-06
 LARGEST INCREMENT OF DISP.         6.149E-03   AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        8.522E-05   AT NODE       1674   DOF  3
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     0.312       TIME AVG. MOMENT      0.271    
 LARGEST SCALED RESIDUAL MOMENT     4.306E-06   AT NODE       1659   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     4.306E-06
 LARGEST INCREMENT OF ROTATION      6.470E-04   AT NODE       1660   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     2.552E-05   AT NODE       1660   DOF  5
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  15ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     7


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        2.57    
 LARGEST SCALED RESIDUAL FORCE      8.553E-07   AT NODE       1169   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      8.553E-07
 LARGEST INCREMENT OF DISP.         6.149E-03   AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        2.912E-05   AT NODE       1674   DOF  3
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     0.312       TIME AVG. MOMENT      0.271    
 LARGEST SCALED RESIDUAL MOMENT     1.477E-06   AT NODE       1659   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     1.477E-06
 LARGEST INCREMENT OF ROTATION      6.557E-04   AT NODE       1660   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     8.728E-06   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF ROTATION CORRECTION   -3.958E-06
          MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 ITERATION SUMMARY FOR THE INCREMENT:   7 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  7 ARE EQUILIBRIUM ITERATIONS.


                                INCREMENT    56 SUMMARY


     CURRENT LOAD PROPORTIONALITY FACTOR          1.184    
     TOTAL ARC LENGTH    1.95    , INCREMENT OF ARC LENGTH   1.905E-04


  INCREMENT    57 STARTS. ATTEMPT NUMBER  1
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  18ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        2.57    
 LARGEST SCALED RESIDUAL FORCE     -2.319E-03   AT NODE       1646   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -2.319E-03
 LARGEST INCREMENT OF DISP.         6.143E-03   AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        6.143E-03   AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     0.312       TIME AVG. MOMENT      0.272    
 LARGEST SCALED RESIDUAL MOMENT     9.037E-05   AT NODE       1659   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     9.037E-05
 LARGEST INCREMENT OF ROTATION      4.996E-04   AT NODE       1660   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     4.996E-04   AT NODE       1660   DOF  5
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF ROTATION CORRECTION   -1.376E-07
          MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  16ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        2.57    
 LARGEST SCALED RESIDUAL FORCE     -1.417E-05   AT NODE       1548   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -1.417E-05
 LARGEST INCREMENT OF DISP.         6.144E-03   AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.426E-04   AT NODE       1673   DOF  3
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF DISP.    CORRECTION    4.829E-05
          FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                     0.312       TIME AVG. MOMENT      0.272    
 LARGEST SCALED RESIDUAL MOMENT     7.383E-06   AT NODE       1659   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     7.383E-06
 LARGEST INCREMENT OF ROTATION      5.433E-04   AT NODE       1660   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     4.367E-05   AT NODE       1660   DOF  5
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF ROTATION CORRECTION    3.568E-06
          MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 ITERATION SUMMARY FOR THE INCREMENT:   2 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  2 ARE EQUILIBRIUM ITERATIONS.


                                INCREMENT    57 SUMMARY


     CURRENT LOAD PROPORTIONALITY FACTOR          1.184    
     TOTAL ARC LENGTH    1.95    , INCREMENT OF ARC LENGTH   1.905E-04


  INCREMENT    58 STARTS. ATTEMPT NUMBER  1
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  15ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        2.57    
 LARGEST SCALED RESIDUAL FORCE     -2.895E-03   AT NODE       1646   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -2.895E-03
 LARGEST INCREMENT OF DISP.         6.145E-03   AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        6.145E-03   AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     0.312       TIME AVG. MOMENT      0.272    
 LARGEST SCALED RESIDUAL MOMENT    -1.079E-04   AT NODE       1660   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT    -1.079E-04
 LARGEST INCREMENT OF ROTATION      5.688E-04   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     5.688E-04   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF ROTATION CORRECTION    1.876E-07
          MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  15ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        2.57    
 LARGEST SCALED RESIDUAL FORCE     -5.142E-04   AT NODE       1547   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -5.142E-04
 LARGEST INCREMENT OF DISP.         6.153E-03   AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        8.266E-04   AT NODE       1673   DOF  3
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     0.313       TIME AVG. MOMENT      0.272    
 LARGEST SCALED RESIDUAL MOMENT    -4.243E-05   AT NODE       1660   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT    -4.243E-05
 LARGEST INCREMENT OF ROTATION      8.192E-04   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     2.504E-04   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  15ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        2.57    
 LARGEST SCALED RESIDUAL FORCE     -9.640E-05   AT NODE       1547   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -9.640E-05
 LARGEST INCREMENT OF DISP.         6.154E-03   AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        3.589E-04   AT NODE       1674   DOF  3
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     0.313       TIME AVG. MOMENT      0.272    
 LARGEST SCALED RESIDUAL MOMENT     1.838E-05   AT NODE       1659   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     1.838E-05
 LARGEST INCREMENT OF ROTATION      9.279E-04   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.087E-04   AT NODE       1660   DOF  5
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  14ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     4


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        2.57    
 LARGEST SCALED RESIDUAL FORCE     -2.111E-04   AT NODE       1548   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -2.111E-04
 LARGEST INCREMENT OF DISP.         6.157E-03   AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        5.222E-04   AT NODE       1673   DOF  3
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     0.313       TIME AVG. MOMENT      0.272    
 LARGEST SCALED RESIDUAL MOMENT    -2.678E-05   AT NODE       1660   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT    -2.678E-05
 LARGEST INCREMENT OF ROTATION      1.086E-03   AT NODE       1660   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.580E-04   AT NODE       1660   DOF  5
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  14ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     5


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        2.57    
 LARGEST SCALED RESIDUAL FORCE     -3.473E-05   AT NODE       1548   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -3.473E-05
 LARGEST INCREMENT OF DISP.         6.159E-03   AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        2.148E-04   AT NODE       1673   DOF  3
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     0.313       TIME AVG. MOMENT      0.272    
 LARGEST SCALED RESIDUAL MOMENT    -1.105E-05   AT NODE       1660   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT    -1.105E-05
 LARGEST INCREMENT OF ROTATION      1.151E-03   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     6.514E-05   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  15ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     6


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        2.57    
 LARGEST SCALED RESIDUAL FORCE     -1.047E-04   AT NODE       1547   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -1.047E-04
 LARGEST INCREMENT OF DISP.         6.162E-03   AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        3.695E-04   AT NODE       1674   DOF  3
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     0.313       TIME AVG. MOMENT      0.272    
 LARGEST SCALED RESIDUAL MOMENT    -1.897E-05   AT NODE       1660   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT    -1.897E-05
 LARGEST INCREMENT OF ROTATION      1.263E-03   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.119E-04   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  15ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     7


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        2.57    
 LARGEST SCALED RESIDUAL FORCE     -1.307E-05   AT NODE       1547   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -1.307E-05
 LARGEST INCREMENT OF DISP.         6.163E-03   AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.333E-04   AT NODE       1674   DOF  3
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF DISP.    CORRECTION    5.013E-05
          FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                     0.313       TIME AVG. MOMENT      0.272    
 LARGEST SCALED RESIDUAL MOMENT     6.868E-06   AT NODE       1659   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     6.868E-06
 LARGEST INCREMENT OF ROTATION      1.303E-03   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     4.045E-05   AT NODE       1660   DOF  5
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  15ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     8


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        2.57    
 LARGEST SCALED RESIDUAL FORCE     -5.468E-05   AT NODE       1548   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -5.468E-05
 LARGEST INCREMENT OF DISP.         6.164E-03   AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        2.685E-04   AT NODE       1673   DOF  3
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     0.313       TIME AVG. MOMENT      0.272    
 LARGEST SCALED RESIDUAL MOMENT    -1.379E-05   AT NODE       1660   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT    -1.379E-05
 LARGEST INCREMENT OF ROTATION      1.385E-03   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     8.138E-05   AT NODE       1660   DOF  5
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  16ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     9


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        2.57    
 LARGEST SCALED RESIDUAL FORCE      4.731E-06   AT NODE       1170   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      4.731E-06
 LARGEST INCREMENT OF DISP.         6.165E-03   AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        7.989E-05   AT NODE       1674   DOF  3
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF DISP.    CORRECTION   -2.893E-05
          FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                     0.313       TIME AVG. MOMENT      0.272    
 LARGEST SCALED RESIDUAL MOMENT    -4.125E-06   AT NODE       1660   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT    -4.125E-06
 LARGEST INCREMENT OF ROTATION      1.409E-03   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     2.427E-05   AT NODE       1660   DOF  5
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  16ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION    10


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        2.57    
 LARGEST SCALED RESIDUAL FORCE     -2.950E-05   AT NODE       1547   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -2.950E-05
 LARGEST INCREMENT OF DISP.         6.166E-03   AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.983E-04   AT NODE       1674   DOF  3
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     0.313       TIME AVG. MOMENT      0.272    
 LARGEST SCALED RESIDUAL MOMENT     1.019E-05   AT NODE       1659   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     1.019E-05
 LARGEST INCREMENT OF ROTATION      1.469E-03   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     6.015E-05   AT NODE       1660   DOF  5
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT


 ***NOTE: THE RATE OF CONVERGENCE IS VERY SLOW. CONVERGENCE IS JUDGED UNLIKELY.


  INCREMENT    58 STARTS. ATTEMPT NUMBER  2
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  16ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        2.57    
 LARGEST SCALED RESIDUAL FORCE     -7.321E-04   AT NODE       1645   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -7.321E-04
 LARGEST INCREMENT OF DISP.         3.072E-03   AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        3.072E-03   AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     0.312       TIME AVG. MOMENT      0.272    
 LARGEST SCALED RESIDUAL MOMENT     5.767E-05   AT NODE       1659   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     5.767E-05
 LARGEST INCREMENT OF ROTATION      2.853E-04   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     2.853E-04   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF ROTATION CORRECTION   -1.006E-07
          MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  18ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        2.57    
 LARGEST SCALED RESIDUAL FORCE     -1.342E-04   AT NODE       1547   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -1.342E-04
 LARGEST INCREMENT OF DISP.         3.076E-03   AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        4.227E-04   AT NODE       1674   DOF  3
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     0.312       TIME AVG. MOMENT      0.272    
 LARGEST SCALED RESIDUAL MOMENT    -2.157E-05   AT NODE       1660   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT    -2.157E-05
 LARGEST INCREMENT OF ROTATION      4.128E-04   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.276E-04   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  15ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        2.57    
 LARGEST SCALED RESIDUAL FORCE     -6.834E-05   AT NODE       1548   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -6.834E-05
 LARGEST INCREMENT OF DISP.         3.079E-03   AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        3.004E-04   AT NODE       1673   DOF  3
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     0.312       TIME AVG. MOMENT      0.272    
 LARGEST SCALED RESIDUAL MOMENT    -1.532E-05   AT NODE       1660   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT    -1.532E-05
 LARGEST INCREMENT OF ROTATION      5.034E-04   AT NODE       1660   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     9.061E-05   AT NODE       1660   DOF  5
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  16ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     4


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        2.57    
 LARGEST SCALED RESIDUAL FORCE     -4.492E-05   AT NODE       1547   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -4.492E-05
 LARGEST INCREMENT OF DISP.         3.081E-03   AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        2.416E-04   AT NODE       1674   DOF  3
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     0.313       TIME AVG. MOMENT      0.272    
 LARGEST SCALED RESIDUAL MOMENT     1.234E-05   AT NODE       1659   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     1.234E-05
 LARGEST INCREMENT OF ROTATION      5.763E-04   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     7.291E-05   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  16ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     5


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        2.57    
 LARGEST SCALED RESIDUAL FORCE     -2.360E-05   AT NODE       1547   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -2.360E-05
 LARGEST INCREMENT OF DISP.         3.083E-03   AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.761E-04   AT NODE       1674   DOF  3
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     0.313       TIME AVG. MOMENT      0.272    
 LARGEST SCALED RESIDUAL MOMENT     9.002E-06   AT NODE       1659   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     9.002E-06
 LARGEST INCREMENT OF ROTATION      6.295E-04   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     5.316E-05   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  18ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     6


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        2.57    
 LARGEST SCALED RESIDUAL FORCE     -1.719E-05   AT NODE       1548   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -1.719E-05
 LARGEST INCREMENT OF DISP.         3.084E-03   AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.507E-04   AT NODE       1674   DOF  3
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     0.313       TIME AVG. MOMENT      0.272    
 LARGEST SCALED RESIDUAL MOMENT     7.705E-06   AT NODE       1659   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     7.705E-06
 LARGEST INCREMENT OF ROTATION      6.750E-04   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     4.551E-05   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  15ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     7


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        2.57    
 LARGEST SCALED RESIDUAL FORCE      8.818E-06   AT NODE       1169   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      8.818E-06
 LARGEST INCREMENT OF DISP.         3.085E-03   AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.087E-04   AT NODE       1673   DOF  3
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     0.313       TIME AVG. MOMENT      0.272    
 LARGEST SCALED RESIDUAL MOMENT    -5.558E-06   AT NODE       1660   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT    -5.558E-06
 LARGEST INCREMENT OF ROTATION      7.078E-04   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     3.282E-05   AT NODE       1660   DOF  5
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  16ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     8


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        2.57    
 LARGEST SCALED RESIDUAL FORCE      6.829E-06   AT NODE       1170   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      6.829E-06
 LARGEST INCREMENT OF DISP.         3.086E-03   AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        9.499E-05   AT NODE       1674   DOF  3
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     0.313       TIME AVG. MOMENT      0.272    
 LARGEST SCALED RESIDUAL MOMENT     4.858E-06   AT NODE       1659   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     4.858E-06
 LARGEST INCREMENT OF ROTATION      7.365E-04   AT NODE       1660   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     2.870E-05   AT NODE       1660   DOF  5
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  16ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     9


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        2.57    
 LARGEST SCALED RESIDUAL FORCE      3.575E-06   AT NODE       1170   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      3.575E-06
 LARGEST INCREMENT OF DISP.         3.087E-03   AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        6.729E-05   AT NODE       1673   DOF  3
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     0.313       TIME AVG. MOMENT      0.272    
 LARGEST SCALED RESIDUAL MOMENT    -3.443E-06   AT NODE       1660   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT    -3.443E-06
 LARGEST INCREMENT OF ROTATION      7.569E-04   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     2.033E-05   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  15ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION    10


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        2.57    
 LARGEST SCALED RESIDUAL FORCE      2.907E-06   AT NODE       1170   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      2.907E-06
 LARGEST INCREMENT OF DISP.         3.087E-03   AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        6.014E-05   AT NODE       1673   DOF  3
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     0.313       TIME AVG. MOMENT      0.272    
 LARGEST SCALED RESIDUAL MOMENT    -3.076E-06   AT NODE       1660   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT    -3.076E-06
 LARGEST INCREMENT OF ROTATION      7.750E-04   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.817E-05   AT NODE       1660   DOF  5
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  15ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION    11


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        2.57    
 LARGEST SCALED RESIDUAL FORCE      1.494E-06   AT NODE       1170   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      1.494E-06
 LARGEST INCREMENT OF DISP.         3.088E-03   AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        4.165E-05   AT NODE       1674   DOF  3
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF DISP.    CORRECTION    2.140E-05
          FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                     0.313       TIME AVG. MOMENT      0.272    
 LARGEST SCALED RESIDUAL MOMENT     2.132E-06   AT NODE       1659   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     2.132E-06
 LARGEST INCREMENT OF ROTATION      7.876E-04   AT NODE       1660   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.259E-05   AT NODE       1660   DOF  5
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  14ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION    12


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        2.57    
 LARGEST SCALED RESIDUAL FORCE      1.281E-06   AT NODE       1169   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      1.281E-06
 LARGEST INCREMENT OF DISP.         3.088E-03   AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        3.821E-05   AT NODE       1673   DOF  3
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     0.313       TIME AVG. MOMENT      0.272    
 LARGEST SCALED RESIDUAL MOMENT    -1.954E-06   AT NODE       1660   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT    -1.954E-06
 LARGEST INCREMENT OF ROTATION      7.992E-04   AT NODE       1660   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.155E-05   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  15ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION    13


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        2.57    
 LARGEST SCALED RESIDUAL FORCE      6.460E-07   AT NODE       1169   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      6.460E-07
 LARGEST INCREMENT OF DISP.         3.088E-03   AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        2.572E-05   AT NODE       1673   DOF  3
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED BASED ON ALTERNATIVE
          RESIDUAL CRITERION

 AVERAGE MOMENT                     0.313       TIME AVG. MOMENT      0.272    
 LARGEST SCALED RESIDUAL MOMENT    -1.317E-06   AT NODE       1660   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT    -1.317E-06
 LARGEST INCREMENT OF ROTATION      8.069E-04   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     7.775E-06   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED BASED ON ALTERNATIVE
          RESIDUAL CRITERION

          BECAUSE TOO MANY EQUILIBRIUM ITERATIONS HAVE BEEN USED
          THE NEXT ARC LENGTH INCREMENT WILL BE REDUCED TO    7.143E-05

 ITERATION SUMMARY FOR THE INCREMENT:  13 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND 13 ARE EQUILIBRIUM ITERATIONS.


                                INCREMENT    58 SUMMARY


     CURRENT LOAD PROPORTIONALITY FACTOR          1.184    
     TOTAL ARC LENGTH    1.95    , INCREMENT OF ARC LENGTH   9.524E-05


  INCREMENT    59 STARTS. ATTEMPT NUMBER  1
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  15ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        2.57    
 LARGEST SCALED RESIDUAL FORCE     -5.860E-04   AT NODE       1645   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -5.860E-04
 LARGEST INCREMENT OF DISP.         2.306E-03   AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        2.306E-03   AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     0.313       TIME AVG. MOMENT      0.273    
 LARGEST SCALED RESIDUAL MOMENT    -4.858E-05   AT NODE       1660   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT    -4.858E-05
 LARGEST INCREMENT OF ROTATION      2.711E-04   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     2.711E-04   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF ROTATION CORRECTION    1.027E-07
          MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  16ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        2.57    
 LARGEST SCALED RESIDUAL FORCE      2.674E-07   AT NODE       1674   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      2.674E-07
 LARGEST INCREMENT OF DISP.         2.306E-03   AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.207E-05   AT NODE       1673   DOF  3
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     0.313       TIME AVG. MOMENT      0.273    
 LARGEST SCALED RESIDUAL MOMENT     1.464E-06   AT NODE       1673   DOF  4
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     1.464E-06
 LARGEST INCREMENT OF ROTATION      2.750E-04   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -6.327E-06   AT NODE       1660   DOF  6
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF ROTATION CORRECTION    1.906E-07
          MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 ITERATION SUMMARY FOR THE INCREMENT:   2 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  2 ARE EQUILIBRIUM ITERATIONS.


                                INCREMENT    59 SUMMARY


     CURRENT LOAD PROPORTIONALITY FACTOR          1.184    
     TOTAL ARC LENGTH    1.95    , INCREMENT OF ARC LENGTH   7.143E-05


  INCREMENT    60 STARTS. ATTEMPT NUMBER  1
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  15ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        2.58    
 LARGEST SCALED RESIDUAL FORCE     -6.729E-04   AT NODE       1646   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -6.729E-04
 LARGEST INCREMENT OF DISP.         2.306E-03   AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        2.306E-03   AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     0.314       TIME AVG. MOMENT      0.274    
 LARGEST SCALED RESIDUAL MOMENT    -5.122E-05   AT NODE       1660   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT    -5.122E-05
 LARGEST INCREMENT OF ROTATION      2.903E-04   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     2.903E-04   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF ROTATION CORRECTION    1.200E-07
          MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  15ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        2.58    
 LARGEST SCALED RESIDUAL FORCE     -1.461E-04   AT NODE       1547   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -1.461E-04
 LARGEST INCREMENT OF DISP.         2.309E-03   AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        4.417E-04   AT NODE       1674   DOF  3
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     0.314       TIME AVG. MOMENT      0.274    
 LARGEST SCALED RESIDUAL MOMENT     2.278E-05   AT NODE       1659   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     2.278E-05
 LARGEST INCREMENT OF ROTATION      4.245E-04   AT NODE       1660   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.342E-04   AT NODE       1660   DOF  5
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  16ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        2.58    
 LARGEST SCALED RESIDUAL FORCE     -1.019E-04   AT NODE       1548   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -1.019E-04
 LARGEST INCREMENT OF DISP.         2.311E-03   AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        3.690E-04   AT NODE       1673   DOF  3
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     0.314       TIME AVG. MOMENT      0.274    
 LARGEST SCALED RESIDUAL MOMENT    -1.900E-05   AT NODE       1660   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT    -1.900E-05
 LARGEST INCREMENT OF ROTATION      5.366E-04   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.121E-04   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  15ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     4


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        2.58    
 LARGEST SCALED RESIDUAL FORCE     -7.089E-05   AT NODE       1548   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -7.089E-05
 LARGEST INCREMENT OF DISP.         2.328E-03   AT NODE       1674   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        3.067E-04   AT NODE       1674   DOF  3
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     0.314       TIME AVG. MOMENT      0.274    
 LARGEST SCALED RESIDUAL MOMENT     1.582E-05   AT NODE       1659   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     1.582E-05
 LARGEST INCREMENT OF ROTATION      6.298E-04   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     9.322E-05   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  15ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     5


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        2.58    
 LARGEST SCALED RESIDUAL FORCE     -5.033E-05   AT NODE       1548   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -5.033E-05
 LARGEST INCREMENT OF DISP.         2.588E-03   AT NODE       1674   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        2.593E-04   AT NODE       1674   DOF  3
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     0.314       TIME AVG. MOMENT      0.274    
 LARGEST SCALED RESIDUAL MOMENT     1.337E-05   AT NODE       1659   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     1.337E-05
 LARGEST INCREMENT OF ROTATION      7.087E-04   AT NODE       1660   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     7.883E-05   AT NODE       1660   DOF  5
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  16ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     6


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        2.58    
 LARGEST SCALED RESIDUAL FORCE     -3.701E-05   AT NODE       1548   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -3.701E-05
 LARGEST INCREMENT OF DISP.         2.811E-03   AT NODE       1674   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        2.230E-04   AT NODE       1673   DOF  3
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     0.314       TIME AVG. MOMENT      0.274    
 LARGEST SCALED RESIDUAL MOMENT    -1.151E-05   AT NODE       1660   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT    -1.151E-05
 LARGEST INCREMENT OF ROTATION      7.765E-04   AT NODE       1660   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     6.782E-05   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  15ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     7


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        2.58    
 LARGEST SCALED RESIDUAL FORCE     -2.642E-05   AT NODE       1548   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -2.642E-05
 LARGEST INCREMENT OF DISP.         3.000E-03   AT NODE       1674   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.891E-04   AT NODE       1674   DOF  3
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     0.314       TIME AVG. MOMENT      0.274    
 LARGEST SCALED RESIDUAL MOMENT     9.762E-06   AT NODE       1659   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     9.762E-06
 LARGEST INCREMENT OF ROTATION      8.340E-04   AT NODE       1660   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     5.753E-05   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  15ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     8


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        2.58    
 LARGEST SCALED RESIDUAL FORCE     -1.965E-05   AT NODE       1547   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -1.965E-05
 LARGEST INCREMENT OF DISP.         3.163E-03   AT NODE       1674   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.636E-04   AT NODE       1673   DOF  3
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     0.315       TIME AVG. MOMENT      0.274    
 LARGEST SCALED RESIDUAL MOMENT    -8.450E-06   AT NODE       1660   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT    -8.450E-06
 LARGEST INCREMENT OF ROTATION      8.838E-04   AT NODE       1660   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     4.980E-05   AT NODE       1660   DOF  5
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  15ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     9


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        2.58    
 LARGEST SCALED RESIDUAL FORCE     -1.402E-05   AT NODE       1547   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -1.402E-05
 LARGEST INCREMENT OF DISP.         3.302E-03   AT NODE       1674   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.389E-04   AT NODE       1674   DOF  3
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     0.315       TIME AVG. MOMENT      0.274    
 LARGEST SCALED RESIDUAL MOMENT     7.174E-06   AT NODE       1659   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     7.174E-06
 LARGEST INCREMENT OF ROTATION      9.261E-04   AT NODE       1660   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     4.228E-05   AT NODE       1660   DOF  5
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  14ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION    10


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        2.58    
 LARGEST SCALED RESIDUAL FORCE     -1.050E-05   AT NODE       1547   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -1.050E-05
 LARGEST INCREMENT OF DISP.         3.423E-03   AT NODE       1674   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.207E-04   AT NODE       1673   DOF  3
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     0.315       TIME AVG. MOMENT      0.274    
 LARGEST SCALED RESIDUAL MOMENT    -6.238E-06   AT NODE       1660   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT    -6.238E-06
 LARGEST INCREMENT OF ROTATION      9.629E-04   AT NODE       1660   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     3.677E-05   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  14ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION    11


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        2.58    
 LARGEST SCALED RESIDUAL FORCE     -7.469E-06   AT NODE       1548   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -7.469E-06
 LARGEST INCREMENT OF DISP.         3.525E-03   AT NODE       1674   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.024E-04   AT NODE       1673   DOF  3
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     0.315       TIME AVG. MOMENT      0.274    
 LARGEST SCALED RESIDUAL MOMENT    -5.292E-06   AT NODE       1660   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT    -5.292E-06
 LARGEST INCREMENT OF ROTATION      9.941E-04   AT NODE       1660   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     3.119E-05   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  15ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION    12


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        2.58    
 LARGEST SCALED RESIDUAL FORCE      5.651E-06   AT NODE       1169   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      5.651E-06
 LARGEST INCREMENT OF DISP.         3.615E-03   AT NODE       1674   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        8.941E-05   AT NODE       1673   DOF  3
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     0.315       TIME AVG. MOMENT      0.274    
 LARGEST SCALED RESIDUAL MOMENT    -4.621E-06   AT NODE       1660   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT    -4.621E-06
 LARGEST INCREMENT OF ROTATION      1.021E-03   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     2.724E-05   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  14ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION    13


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        2.58    
 LARGEST SCALED RESIDUAL FORCE      4.129E-06   AT NODE       1170   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      4.129E-06
 LARGEST INCREMENT OF DISP.         3.690E-03   AT NODE       1674   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        7.570E-05   AT NODE       1674   DOF  3
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     0.315       TIME AVG. MOMENT      0.274    
 LARGEST SCALED RESIDUAL MOMENT     3.913E-06   AT NODE       1659   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     3.913E-06
 LARGEST INCREMENT OF ROTATION      1.044E-03   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     2.306E-05   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  16ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION    14


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        2.58    
 LARGEST SCALED RESIDUAL FORCE      3.233E-06   AT NODE       1170   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      3.233E-06
 LARGEST INCREMENT OF DISP.         3.757E-03   AT NODE       1674   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        6.638E-05   AT NODE       1673   DOF  3
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     0.315       TIME AVG. MOMENT      0.274    
 LARGEST SCALED RESIDUAL MOMENT     3.432E-06   AT NODE       1659   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     3.432E-06
 LARGEST INCREMENT OF ROTATION      1.065E-03   AT NODE       1660   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     2.023E-05   AT NODE       1660   DOF  5
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  16ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION    15


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        2.58    
 LARGEST SCALED RESIDUAL FORCE      2.366E-06   AT NODE       1169   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      2.366E-06
 LARGEST INCREMENT OF DISP.         3.813E-03   AT NODE       1674   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        5.603E-05   AT NODE       1673   DOF  3
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     0.315       TIME AVG. MOMENT      0.274    
 LARGEST SCALED RESIDUAL MOMENT    -2.897E-06   AT NODE       1660   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT    -2.897E-06
 LARGEST INCREMENT OF ROTATION      1.082E-03   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.707E-05   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  17ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION    16


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        2.58    
 LARGEST SCALED RESIDUAL FORCE      1.880E-06   AT NODE       1170   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      1.880E-06
 LARGEST INCREMENT OF DISP.         3.862E-03   AT NODE       1674   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        4.938E-05   AT NODE       1673   DOF  3
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     0.315       TIME AVG. MOMENT      0.274    
 LARGEST SCALED RESIDUAL MOMENT    -2.553E-06   AT NODE       1660   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT    -2.553E-06
 LARGEST INCREMENT OF ROTATION      1.097E-03   AT NODE       1660   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.505E-05   AT NODE       1660   DOF  5
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 

 ***NOTE: THE SOLUTION FAILS TO CONVERGE IN THE MAXIMUM NUMBER OF EQUILIBRIUM 
          ITERATIONS ALLOWED.


  INCREMENT    60 STARTS. ATTEMPT NUMBER  2
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  17ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        2.58    
 LARGEST SCALED RESIDUAL FORCE     -4.050E-05   AT NODE       1646   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -4.050E-05
 LARGEST INCREMENT OF DISP.         5.766E-04   AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        5.766E-04   AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     0.314       TIME AVG. MOMENT      0.274    
 LARGEST SCALED RESIDUAL MOMENT    -1.336E-05   AT NODE       1660   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT    -1.336E-05
 LARGEST INCREMENT OF ROTATION      7.278E-05   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     7.278E-05   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF ROTATION CORRECTION    3.139E-08
          MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  16ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        2.58    
 LARGEST SCALED RESIDUAL FORCE     -1.041E-04   AT NODE       1548   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -1.041E-04
 LARGEST INCREMENT OF DISP.         6.748E-04   AT NODE       1674   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        3.714E-04   AT NODE       1674   DOF  3
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     0.314       TIME AVG. MOMENT      0.274    
 LARGEST SCALED RESIDUAL MOMENT     1.905E-05   AT NODE       1659   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     1.905E-05
 LARGEST INCREMENT OF ROTATION      1.853E-04   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.125E-04   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  16ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        2.58    
 LARGEST SCALED RESIDUAL FORCE     -4.302E-06   AT NODE       1548   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -4.302E-06
 LARGEST INCREMENT OF DISP.         7.536E-04   AT NODE       1674   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        7.883E-05   AT NODE       1673   DOF  3
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     0.314       TIME AVG. MOMENT      0.274    
 LARGEST SCALED RESIDUAL MOMENT     4.074E-06   AT NODE       1659   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     4.074E-06
 LARGEST INCREMENT OF ROTATION      2.092E-04   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     2.395E-05   AT NODE       1660   DOF  5
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  15ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     4


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        2.58    
 LARGEST SCALED RESIDUAL FORCE     -5.347E-05   AT NODE       1547   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -5.347E-05
 LARGEST INCREMENT OF DISP.         1.019E-03   AT NODE       1674   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        2.655E-04   AT NODE       1673   DOF  3
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     0.314       TIME AVG. MOMENT      0.274    
 LARGEST SCALED RESIDUAL MOMENT    -1.363E-05   AT NODE       1660   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT    -1.363E-05
 LARGEST INCREMENT OF ROTATION      2.897E-04   AT NODE       1660   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     8.047E-05   AT NODE       1660   DOF  5
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  16ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     5


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        2.58    
 LARGEST SCALED RESIDUAL FORCE      9.989E-07   AT NODE       1170   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      9.989E-07
 LARGEST INCREMENT OF DISP.         1.053E-03   AT NODE       1674   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        3.416E-05   AT NODE       1674   DOF  3
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF DISP.    CORRECTION   -7.932E-06
          FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                     0.314       TIME AVG. MOMENT      0.274    
 LARGEST SCALED RESIDUAL MOMENT     1.779E-06   AT NODE       1659   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     1.779E-06
 LARGEST INCREMENT OF ROTATION      3.001E-04   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.040E-05   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  16ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     6


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        2.58    
 LARGEST SCALED RESIDUAL FORCE     -2.971E-05   AT NODE       1547   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -2.971E-05
 LARGEST INCREMENT OF DISP.         1.252E-03   AT NODE       1674   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.989E-04   AT NODE       1673   DOF  3
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     0.314       TIME AVG. MOMENT      0.274    
 LARGEST SCALED RESIDUAL MOMENT    -1.021E-05   AT NODE       1660   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT    -1.021E-05
 LARGEST INCREMENT OF ROTATION      3.604E-04   AT NODE       1660   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     6.032E-05   AT NODE       1660   DOF  5
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  18ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     7


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        2.58    
 LARGEST SCALED RESIDUAL FORCE      1.127E-07   AT NODE       1674   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      1.127E-07
 LARGEST INCREMENT OF DISP.         1.260E-03   AT NODE       1674   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        7.933E-06   AT NODE       1674   DOF  3
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     0.314       TIME AVG. MOMENT      0.274    
 LARGEST SCALED RESIDUAL MOMENT     4.269E-07   AT NODE       1659   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     4.269E-07
 LARGEST INCREMENT OF ROTATION      3.629E-04   AT NODE       1660   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     2.434E-06   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED

 ITERATION SUMMARY FOR THE INCREMENT:   7 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  7 ARE EQUILIBRIUM ITERATIONS.


                                INCREMENT    60 SUMMARY


     CURRENT LOAD PROPORTIONALITY FACTOR          1.184    
     TOTAL ARC LENGTH    1.95    , INCREMENT OF ARC LENGTH   1.786E-05


  INCREMENT    61 STARTS. ATTEMPT NUMBER  1
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  18ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        2.58    
 LARGEST SCALED RESIDUAL FORCE     -4.497E-05   AT NODE       1645   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -4.497E-05
 LARGEST INCREMENT OF DISP.         5.767E-04   AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        5.767E-04   AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     0.315       TIME AVG. MOMENT      0.275    
 LARGEST SCALED RESIDUAL MOMENT     1.443E-05   AT NODE       1659   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     1.443E-05
 LARGEST INCREMENT OF ROTATION      8.091E-05   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     8.091E-05   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF ROTATION CORRECTION   -3.349E-08
          MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  20ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        2.58    
 LARGEST SCALED RESIDUAL FORCE     -1.468E-05   AT NODE       1548   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -1.468E-05
 LARGEST INCREMENT OF DISP.         5.776E-04   AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.412E-04   AT NODE       1674   DOF  3
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     0.315       TIME AVG. MOMENT      0.275    
 LARGEST SCALED RESIDUAL MOMENT    -7.279E-06   AT NODE       1660   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT    -7.279E-06
 LARGEST INCREMENT OF ROTATION      1.238E-04   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     4.288E-05   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  16ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        2.58    
 LARGEST SCALED RESIDUAL FORCE     -1.000E-05   AT NODE       1547   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -1.000E-05
 LARGEST INCREMENT OF DISP.         5.888E-04   AT NODE       1674   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.180E-04   AT NODE       1673   DOF  3
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     0.315       TIME AVG. MOMENT      0.275    
 LARGEST SCALED RESIDUAL MOMENT     6.070E-06   AT NODE       1659   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     6.070E-06
 LARGEST INCREMENT OF ROTATION      1.596E-04   AT NODE       1660   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     3.583E-05   AT NODE       1660   DOF  5
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  14ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     4


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        2.58    
 LARGEST SCALED RESIDUAL FORCE     -7.155E-06   AT NODE       1547   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -7.155E-06
 LARGEST INCREMENT OF DISP.         6.885E-04   AT NODE       1673   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        9.970E-05   AT NODE       1673   DOF  3
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     0.315       TIME AVG. MOMENT      0.275    
 LARGEST SCALED RESIDUAL MOMENT    -5.135E-06   AT NODE       1660   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT    -5.135E-06
 LARGEST INCREMENT OF ROTATION      1.899E-04   AT NODE       1660   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     3.029E-05   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  15ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     5


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        2.58    
 LARGEST SCALED RESIDUAL FORCE      4.751E-06   AT NODE       1169   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      4.751E-06
 LARGEST INCREMENT OF DISP.         7.692E-04   AT NODE       1673   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        8.066E-05   AT NODE       1673   DOF  3
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     0.315       TIME AVG. MOMENT      0.275    
 LARGEST SCALED RESIDUAL MOMENT    -4.156E-06   AT NODE       1660   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT    -4.156E-06
 LARGEST INCREMENT OF ROTATION      2.144E-04   AT NODE       1660   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     2.451E-05   AT NODE       1660   DOF  5
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  17ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     6


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        2.58    
 LARGEST SCALED RESIDUAL FORCE      3.707E-06   AT NODE       1170   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      3.707E-06
 LARGEST INCREMENT OF DISP.         8.397E-04   AT NODE       1673   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        7.050E-05   AT NODE       1673   DOF  3
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     0.315       TIME AVG. MOMENT      0.275    
 LARGEST SCALED RESIDUAL MOMENT    -3.632E-06   AT NODE       1660   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT    -3.632E-06
 LARGEST INCREMENT OF ROTATION      2.358E-04   AT NODE       1660   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     2.142E-05   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  16ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     7


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        2.58    
 LARGEST SCALED RESIDUAL FORCE      2.465E-06   AT NODE       1170   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      2.465E-06
 LARGEST INCREMENT OF DISP.         8.962E-04   AT NODE       1674   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        5.653E-05   AT NODE       1674   DOF  3
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     0.315       TIME AVG. MOMENT      0.275    
 LARGEST SCALED RESIDUAL MOMENT     2.913E-06   AT NODE       1659   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     2.913E-06
 LARGEST INCREMENT OF ROTATION      2.530E-04   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.718E-05   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  17ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     8


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        2.58    
 LARGEST SCALED RESIDUAL FORCE      1.968E-06   AT NODE       1169   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      1.968E-06
 LARGEST INCREMENT OF DISP.         9.462E-04   AT NODE       1674   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        4.998E-05   AT NODE       1674   DOF  3
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     0.315       TIME AVG. MOMENT      0.275    
 LARGEST SCALED RESIDUAL MOMENT     2.575E-06   AT NODE       1659   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     2.575E-06
 LARGEST INCREMENT OF ROTATION      2.682E-04   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.519E-05   AT NODE       1660   DOF  5
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  17ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     9


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        2.58    
 LARGEST SCALED RESIDUAL FORCE      1.300E-06   AT NODE       1170   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      1.300E-06
 LARGEST INCREMENT OF DISP.         9.858E-04   AT NODE       1674   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        3.966E-05   AT NODE       1673   DOF  3
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     0.315       TIME AVG. MOMENT      0.275    
 LARGEST SCALED RESIDUAL MOMENT    -2.044E-06   AT NODE       1660   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT    -2.044E-06
 LARGEST INCREMENT OF ROTATION      2.803E-04   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.206E-05   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  16ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION    10


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        2.58    
 LARGEST SCALED RESIDUAL FORCE      1.069E-06   AT NODE       1169   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      1.069E-06
 LARGEST INCREMENT OF DISP.         1.021E-03   AT NODE       1673   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        3.550E-05   AT NODE       1673   DOF  3
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     0.315       TIME AVG. MOMENT      0.275    
 LARGEST SCALED RESIDUAL MOMENT     1.830E-06   AT NODE       1659   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     1.830E-06
 LARGEST INCREMENT OF ROTATION      2.910E-04   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.079E-05   AT NODE       1660   DOF  5
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  23ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION    11


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        2.58    
 LARGEST SCALED RESIDUAL FORCE      7.026E-07   AT NODE       1170   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      7.026E-07
 LARGEST INCREMENT OF DISP.         1.049E-03   AT NODE       1673   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        2.781E-05   AT NODE       1673   DOF  3
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     0.315       TIME AVG. MOMENT      0.275    
 LARGEST SCALED RESIDUAL MOMENT     1.434E-06   AT NODE       1659   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     1.434E-06
 LARGEST INCREMENT OF ROTATION      2.995E-04   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     8.453E-06   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  19ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION    12


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        2.58    
 LARGEST SCALED RESIDUAL FORCE      5.972E-07   AT NODE       1170   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      5.972E-07
 LARGEST INCREMENT OF DISP.         1.074E-03   AT NODE       1674   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        2.528E-05   AT NODE       1674   DOF  3
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     0.315       TIME AVG. MOMENT      0.275    
 LARGEST SCALED RESIDUAL MOMENT     1.303E-06   AT NODE       1659   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     1.303E-06
 LARGEST INCREMENT OF ROTATION      3.072E-04   AT NODE       1660   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     7.684E-06   AT NODE       1660   DOF  5
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  16ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION    13


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        2.58    
 LARGEST SCALED RESIDUAL FORCE      3.860E-07   AT NODE       1169   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      3.860E-07
 LARGEST INCREMENT OF DISP.         1.094E-03   AT NODE       1674   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.947E-05   AT NODE       1674   DOF  3
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     0.315       TIME AVG. MOMENT      0.275    
 LARGEST SCALED RESIDUAL MOMENT     1.004E-06   AT NODE       1659   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     1.004E-06
 LARGEST INCREMENT OF ROTATION      3.131E-04   AT NODE       1660   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     5.919E-06   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  15ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION    14


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        2.58    
 LARGEST SCALED RESIDUAL FORCE      3.427E-07   AT NODE       1169   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      3.427E-07
 LARGEST INCREMENT OF DISP.         1.112E-03   AT NODE       1674   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.804E-05   AT NODE       1673   DOF  3
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     0.315       TIME AVG. MOMENT      0.275    
 LARGEST SCALED RESIDUAL MOMENT    -9.295E-07   AT NODE       1660   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT    -9.295E-07
 LARGEST INCREMENT OF ROTATION      3.186E-04   AT NODE       1660   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     5.483E-06   AT NODE       1660   DOF  5
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  15ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION    15


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        2.58    
 LARGEST SCALED RESIDUAL FORCE      2.221E-07   AT NODE       1170   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      2.221E-07
 LARGEST INCREMENT OF DISP.         1.126E-03   AT NODE       1673   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.361E-05   AT NODE       1673   DOF  3
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF DISP.    CORRECTION    8.817E-06
          FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                     0.315       TIME AVG. MOMENT      0.275    
 LARGEST SCALED RESIDUAL MOMENT    -7.016E-07   AT NODE       1660   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT    -7.016E-07
 LARGEST INCREMENT OF ROTATION      3.227E-04   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     4.137E-06   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF ROTATION CORRECTION    3.122E-06
          MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

          BECAUSE TOO MANY EQUILIBRIUM ITERATIONS HAVE BEEN USED
          THE NEXT ARC LENGTH INCREMENT WILL BE REDUCED TO    1.339E-05

 ITERATION SUMMARY FOR THE INCREMENT:  15 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND 15 ARE EQUILIBRIUM ITERATIONS.


                                INCREMENT    61 SUMMARY


     CURRENT LOAD PROPORTIONALITY FACTOR          1.184    
     TOTAL ARC LENGTH    1.95    , INCREMENT OF ARC LENGTH   1.786E-05


  INCREMENT    62 STARTS. ATTEMPT NUMBER  1
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  15ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        2.58    
 LARGEST SCALED RESIDUAL FORCE     -2.898E-05   AT NODE       1645   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -2.898E-05
 LARGEST INCREMENT OF DISP.         4.326E-04   AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        4.326E-04   AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     0.315       TIME AVG. MOMENT      0.275    
 LARGEST SCALED RESIDUAL MOMENT    -1.207E-05   AT NODE       1660   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT    -1.207E-05
 LARGEST INCREMENT OF ROTATION      6.585E-05   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     6.585E-05   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF ROTATION CORRECTION    3.097E-08
          MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  14ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        2.58    
 LARGEST SCALED RESIDUAL FORCE     -1.549E-08   AT NODE       1156   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -1.549E-08
 LARGEST INCREMENT OF DISP.         4.326E-04   AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -1.054E-06   AT NODE       1142   DOF  3
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     0.315       TIME AVG. MOMENT      0.275    
 LARGEST SCALED RESIDUAL MOMENT    -3.529E-07   AT NODE       1674   DOF  4
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT    -3.529E-07
 LARGEST INCREMENT OF ROTATION      6.608E-05   AT NODE       1660   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.626E-06   AT NODE       1659   DOF  6
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF ROTATION CORRECTION    4.752E-08
          MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 ITERATION SUMMARY FOR THE INCREMENT:   2 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  2 ARE EQUILIBRIUM ITERATIONS.


                                INCREMENT    62 SUMMARY


     CURRENT LOAD PROPORTIONALITY FACTOR          1.184    
     TOTAL ARC LENGTH    1.95    , INCREMENT OF ARC LENGTH   1.339E-05


  INCREMENT    63 STARTS. ATTEMPT NUMBER  1
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  15ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        2.58    
 LARGEST SCALED RESIDUAL FORCE     -3.146E-05   AT NODE       1646   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -3.146E-05
 LARGEST INCREMENT OF DISP.         4.326E-04   AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        4.326E-04   AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     0.316       TIME AVG. MOMENT      0.276    
 LARGEST SCALED RESIDUAL MOMENT     1.159E-05   AT NODE       1659   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     1.159E-05
 LARGEST INCREMENT OF ROTATION      6.680E-05   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     6.680E-05   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF ROTATION CORRECTION   -3.302E-08
          MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  15ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        2.58    
 LARGEST SCALED RESIDUAL FORCE     -8.740E-06   AT NODE       1547   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -8.740E-06
 LARGEST INCREMENT OF DISP.         4.331E-04   AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.108E-04   AT NODE       1673   DOF  3
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     0.316       TIME AVG. MOMENT      0.276    
 LARGEST SCALED RESIDUAL MOMENT     5.726E-06   AT NODE       1659   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     5.726E-06
 LARGEST INCREMENT OF ROTATION      1.005E-04   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     3.373E-05   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  14ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        2.58    
 LARGEST SCALED RESIDUAL FORCE     -7.572E-06   AT NODE       1548   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -7.572E-06
 LARGEST INCREMENT OF DISP.         4.813E-04   AT NODE       1674   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.035E-04   AT NODE       1674   DOF  3
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     0.316       TIME AVG. MOMENT      0.276    
 LARGEST SCALED RESIDUAL MOMENT     5.340E-06   AT NODE       1659   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     5.340E-06
 LARGEST INCREMENT OF ROTATION      1.320E-04   AT NODE       1660   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     3.150E-05   AT NODE       1660   DOF  5
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  14ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     4


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        2.58    
 LARGEST SCALED RESIDUAL FORCE      4.448E-06   AT NODE       1170   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      4.448E-06
 LARGEST INCREMENT OF DISP.         5.598E-04   AT NODE       1673   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        7.856E-05   AT NODE       1673   DOF  3
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     0.316       TIME AVG. MOMENT      0.276    
 LARGEST SCALED RESIDUAL MOMENT    -4.058E-06   AT NODE       1660   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT    -4.058E-06
 LARGEST INCREMENT OF ROTATION      1.560E-04   AT NODE       1660   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     2.392E-05   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  14ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     5


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        2.58    
 LARGEST SCALED RESIDUAL FORCE      4.040E-06   AT NODE       1169   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      4.040E-06
 LARGEST INCREMENT OF DISP.         6.345E-04   AT NODE       1673   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        7.471E-05   AT NODE       1673   DOF  3
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     0.316       TIME AVG. MOMENT      0.276    
 LARGEST SCALED RESIDUAL MOMENT     3.858E-06   AT NODE       1659   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     3.858E-06
 LARGEST INCREMENT OF ROTATION      1.787E-04   AT NODE       1660   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     2.274E-05   AT NODE       1660   DOF  5
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  15ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     6


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        2.58    
 LARGEST SCALED RESIDUAL FORCE      2.426E-06   AT NODE       1169   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      2.426E-06
 LARGEST INCREMENT OF DISP.         6.911E-04   AT NODE       1674   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        5.660E-05   AT NODE       1674   DOF  3
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     0.316       TIME AVG. MOMENT      0.276    
 LARGEST SCALED RESIDUAL MOMENT    -2.924E-06   AT NODE       1660   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT    -2.924E-06
 LARGEST INCREMENT OF ROTATION      1.959E-04   AT NODE       1660   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.723E-05   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  17ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     7


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        2.58    
 LARGEST SCALED RESIDUAL FORCE      2.318E-06   AT NODE       1170   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      2.318E-06
 LARGEST INCREMENT OF DISP.         7.464E-04   AT NODE       1673   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        5.525E-05   AT NODE       1673   DOF  3
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     0.316       TIME AVG. MOMENT      0.276    
 LARGEST SCALED RESIDUAL MOMENT    -2.853E-06   AT NODE       1660   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT    -2.853E-06
 LARGEST INCREMENT OF ROTATION      2.128E-04   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.682E-05   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  15ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     8


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        2.58    
 LARGEST SCALED RESIDUAL FORCE      1.338E-06   AT NODE       1170   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      1.338E-06
 LARGEST INCREMENT OF DISP.         7.871E-04   AT NODE       1674   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        4.071E-05   AT NODE       1674   DOF  3
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     0.316       TIME AVG. MOMENT      0.276    
 LARGEST SCALED RESIDUAL MOMENT     2.104E-06   AT NODE       1659   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     2.104E-06
 LARGEST INCREMENT OF ROTATION      2.252E-04   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.240E-05   AT NODE       1660   DOF  5
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  15ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     9


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        2.58    
 LARGEST SCALED RESIDUAL FORCE      1.355E-06   AT NODE       1169   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      1.355E-06
 LARGEST INCREMENT OF DISP.         8.282E-04   AT NODE       1674   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        4.105E-05   AT NODE       1673   DOF  3
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     0.316       TIME AVG. MOMENT      0.276    
 LARGEST SCALED RESIDUAL MOMENT    -2.120E-06   AT NODE       1660   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT    -2.120E-06
 LARGEST INCREMENT OF ROTATION      2.377E-04   AT NODE       1660   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.250E-05   AT NODE       1660   DOF  5
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT


 ***NOTE: THE RATE OF CONVERGENCE IS VERY SLOW. CONVERGENCE IS JUDGED UNLIKELY.


  INCREMENT    63 STARTS. ATTEMPT NUMBER  2
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  16ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        2.58    
 LARGEST SCALED RESIDUAL FORCE     -7.332E-06   AT NODE       1646   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -7.332E-06
 LARGEST INCREMENT OF DISP.         2.163E-04   AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        2.163E-04   AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     0.316       TIME AVG. MOMENT      0.276    
 LARGEST SCALED RESIDUAL MOMENT    -5.825E-06   AT NODE       1660   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT    -5.825E-06
 LARGEST INCREMENT OF ROTATION      3.342E-05   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     3.342E-05   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF ROTATION CORRECTION    1.660E-08
          MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  18ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        2.58    
 LARGEST SCALED RESIDUAL FORCE     -9.431E-06   AT NODE       1548   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -9.431E-06
 LARGEST INCREMENT OF DISP.         2.484E-04   AT NODE       1674   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.149E-04   AT NODE       1674   DOF  3
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     0.316       TIME AVG. MOMENT      0.276    
 LARGEST SCALED RESIDUAL MOMENT     5.921E-06   AT NODE       1659   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     5.921E-06
 LARGEST INCREMENT OF ROTATION      6.835E-05   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     3.494E-05   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  15ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        2.58    
 LARGEST SCALED RESIDUAL FORCE      1.528E-06   AT NODE       1169   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      1.528E-06
 LARGEST INCREMENT OF DISP.         2.947E-04   AT NODE       1674   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        4.628E-05   AT NODE       1674   DOF  3
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     0.316       TIME AVG. MOMENT      0.276    
 LARGEST SCALED RESIDUAL MOMENT     2.393E-06   AT NODE       1659   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     2.393E-06
 LARGEST INCREMENT OF ROTATION      8.244E-05   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.409E-05   AT NODE       1660   DOF  5
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  15ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     4


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        2.58    
 LARGEST SCALED RESIDUAL FORCE      5.341E-06   AT NODE       1170   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      5.341E-06
 LARGEST INCREMENT OF DISP.         3.811E-04   AT NODE       1673   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        8.649E-05   AT NODE       1673   DOF  3
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     0.316       TIME AVG. MOMENT      0.276    
 LARGEST SCALED RESIDUAL MOMENT     4.459E-06   AT NODE       1659   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     4.459E-06
 LARGEST INCREMENT OF ROTATION      1.088E-04   AT NODE       1660   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     2.631E-05   AT NODE       1660   DOF  5
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  17ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     5


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        2.58    
 LARGEST SCALED RESIDUAL FORCE      7.028E-07   AT NODE       1170   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      7.028E-07
 LARGEST INCREMENT OF DISP.         4.092E-04   AT NODE       1673   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        2.808E-05   AT NODE       1673   DOF  3
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     0.316       TIME AVG. MOMENT      0.276    
 LARGEST SCALED RESIDUAL MOMENT    -1.455E-06   AT NODE       1660   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT    -1.455E-06
 LARGEST INCREMENT OF ROTATION      1.173E-04   AT NODE       1660   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     8.553E-06   AT NODE       1660   DOF  5
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  15ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     6


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        2.58    
 LARGEST SCALED RESIDUAL FORCE      3.321E-06   AT NODE       1169   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      3.321E-06
 LARGEST INCREMENT OF DISP.         4.763E-04   AT NODE       1674   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        6.702E-05   AT NODE       1674   DOF  3
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     0.316       TIME AVG. MOMENT      0.276    
 LARGEST SCALED RESIDUAL MOMENT     3.455E-06   AT NODE       1659   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     3.455E-06
 LARGEST INCREMENT OF ROTATION      1.377E-04   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     2.040E-05   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  15ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     7


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        2.58    
 LARGEST SCALED RESIDUAL FORCE      2.834E-07   AT NODE       1169   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      2.834E-07
 LARGEST INCREMENT OF DISP.         4.924E-04   AT NODE       1674   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.613E-05   AT NODE       1673   DOF  3
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     0.316       TIME AVG. MOMENT      0.276    
 LARGEST SCALED RESIDUAL MOMENT    -8.378E-07   AT NODE       1660   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT    -8.378E-07
 LARGEST INCREMENT OF ROTATION      1.426E-04   AT NODE       1660   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     4.916E-06   AT NODE       1660   DOF  5
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  18ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     8


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        2.58    
 LARGEST SCALED RESIDUAL FORCE      2.125E-06   AT NODE       1170   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      2.125E-06
 LARGEST INCREMENT OF DISP.         5.450E-04   AT NODE       1673   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        5.258E-05   AT NODE       1673   DOF  3
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     0.316       TIME AVG. MOMENT      0.276    
 LARGEST SCALED RESIDUAL MOMENT    -2.710E-06   AT NODE       1660   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT    -2.710E-06
 LARGEST INCREMENT OF ROTATION      1.586E-04   AT NODE       1660   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.600E-05   AT NODE       1660   DOF  5
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  16ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     9


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        2.58    
 LARGEST SCALED RESIDUAL FORCE      1.115E-07   AT NODE       1673   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      1.115E-07
 LARGEST INCREMENT OF DISP.         5.529E-04   AT NODE       1673   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        7.905E-06   AT NODE       1674   DOF  3
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF DISP.    CORRECTION    3.110E-06
          FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                     0.316       TIME AVG. MOMENT      0.276    
 LARGEST SCALED RESIDUAL MOMENT    -4.125E-07   AT NODE       1660   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT    -4.125E-07
 LARGEST INCREMENT OF ROTATION      1.610E-04   AT NODE       1660   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     2.411E-06   AT NODE       1660   DOF  5
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF ROTATION CORRECTION    1.187E-06
          MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 ITERATION SUMMARY FOR THE INCREMENT:   9 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  9 ARE EQUILIBRIUM ITERATIONS.


                                INCREMENT    63 SUMMARY


     CURRENT LOAD PROPORTIONALITY FACTOR          1.184    
     TOTAL ARC LENGTH    1.95    , INCREMENT OF ARC LENGTH   6.697E-06


  INCREMENT    64 STARTS. ATTEMPT NUMBER  1
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  15ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        2.58    
 LARGEST SCALED RESIDUAL FORCE     -7.219E-06   AT NODE       1646   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -7.219E-06
 LARGEST INCREMENT OF DISP.         2.163E-04   AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        2.163E-04   AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     0.316       TIME AVG. MOMENT      0.276    
 LARGEST SCALED RESIDUAL MOMENT    -6.429E-06   AT NODE       1660   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT    -6.429E-06
 LARGEST INCREMENT OF ROTATION      3.489E-05   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     3.489E-05   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF ROTATION CORRECTION    1.677E-08
          MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  17ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        2.58    
 LARGEST SCALED RESIDUAL FORCE      1.034E-06   AT NODE       1169   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      1.034E-06
 LARGEST INCREMENT OF DISP.         2.165E-04   AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        3.477E-05   AT NODE       1674   DOF  3
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     0.316       TIME AVG. MOMENT      0.276    
 LARGEST SCALED RESIDUAL MOMENT    -1.804E-06   AT NODE       1660   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT    -1.804E-06
 LARGEST INCREMENT OF ROTATION      4.549E-05   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.060E-05   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  15ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        2.58    
 LARGEST SCALED RESIDUAL FORCE      2.802E-06   AT NODE       1169   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      2.802E-06
 LARGEST INCREMENT OF DISP.         2.370E-04   AT NODE       1673   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        6.395E-05   AT NODE       1673   DOF  3
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     0.316       TIME AVG. MOMENT      0.276    
 LARGEST SCALED RESIDUAL MOMENT     3.298E-06   AT NODE       1659   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     3.298E-06
 LARGEST INCREMENT OF ROTATION      6.496E-05   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.947E-05   AT NODE       1660   DOF  5
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  16ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     4


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        2.58    
 LARGEST SCALED RESIDUAL FORCE      4.782E-07   AT NODE       1169   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      4.782E-07
 LARGEST INCREMENT OF DISP.         2.593E-04   AT NODE       1673   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        2.232E-05   AT NODE       1673   DOF  3
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     0.316       TIME AVG. MOMENT      0.276    
 LARGEST SCALED RESIDUAL MOMENT    -1.157E-06   AT NODE       1660   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT    -1.157E-06
 LARGEST INCREMENT OF ROTATION      7.176E-05   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     6.802E-06   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  17ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     5


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        2.58    
 LARGEST SCALED RESIDUAL FORCE      1.860E-06   AT NODE       1169   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      1.860E-06
 LARGEST INCREMENT OF DISP.         3.084E-04   AT NODE       1674   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        4.908E-05   AT NODE       1674   DOF  3
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     0.316       TIME AVG. MOMENT      0.276    
 LARGEST SCALED RESIDUAL MOMENT    -2.532E-06   AT NODE       1660   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT    -2.532E-06
 LARGEST INCREMENT OF ROTATION      8.671E-05   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.495E-05   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  16ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     6


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        2.58    
 LARGEST SCALED RESIDUAL FORCE      2.194E-07   AT NODE       1674   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      2.194E-07
 LARGEST INCREMENT OF DISP.         3.218E-04   AT NODE       1674   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.339E-05   AT NODE       1674   DOF  3
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     0.316       TIME AVG. MOMENT      0.276    
 LARGEST SCALED RESIDUAL MOMENT     6.953E-07   AT NODE       1659   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     6.953E-07
 LARGEST INCREMENT OF ROTATION      9.079E-05   AT NODE       1660   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     4.082E-06   AT NODE       1660   DOF  5
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  15ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     7


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        2.58    
 LARGEST SCALED RESIDUAL FORCE      1.223E-06   AT NODE       1170   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      1.223E-06
 LARGEST INCREMENT OF DISP.         3.605E-04   AT NODE       1674   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        3.873E-05   AT NODE       1673   DOF  3
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     0.316       TIME AVG. MOMENT      0.276    
 LARGEST SCALED RESIDUAL MOMENT     1.998E-06   AT NODE       1659   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     1.998E-06
 LARGEST INCREMENT OF ROTATION      1.026E-04   AT NODE       1660   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.179E-05   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  15ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     8


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        2.58    
 LARGEST SCALED RESIDUAL FORCE      9.826E-08   AT NODE       1674   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      9.826E-08
 LARGEST INCREMENT OF DISP.         3.676E-04   AT NODE       1674   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        7.114E-06   AT NODE       1673   DOF  3
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF DISP.    CORRECTION    3.186E-06
          FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                     0.316       TIME AVG. MOMENT      0.276    
 LARGEST SCALED RESIDUAL MOMENT    -3.707E-07   AT NODE       1660   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT    -3.707E-07
 LARGEST INCREMENT OF ROTATION      1.048E-04   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     2.170E-06   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  19ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     9


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        2.58    
 LARGEST SCALED RESIDUAL FORCE      8.254E-07   AT NODE       1170   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      8.254E-07
 LARGEST INCREMENT OF DISP.         3.986E-04   AT NODE       1673   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        3.094E-05   AT NODE       1673   DOF  3
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     0.316       TIME AVG. MOMENT      0.276    
 LARGEST SCALED RESIDUAL MOMENT    -1.596E-06   AT NODE       1660   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT    -1.596E-06
 LARGEST INCREMENT OF ROTATION      1.142E-04   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     9.423E-06   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT


 ***NOTE: THE RATE OF CONVERGENCE IS VERY SLOW. CONVERGENCE IS JUDGED UNLIKELY.


  INCREMENT    64 STARTS. ATTEMPT NUMBER  2
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  15ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        2.58    
 LARGEST SCALED RESIDUAL FORCE      1.770E-06   AT NODE       1673   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      1.770E-06
 LARGEST INCREMENT OF DISP.         1.082E-04   AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.082E-04   AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     0.316       TIME AVG. MOMENT      0.276    
 LARGEST SCALED RESIDUAL MOMENT    -3.417E-06   AT NODE       1660   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT    -3.417E-06
 LARGEST INCREMENT OF ROTATION      1.743E-05   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.743E-05   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF ROTATION CORRECTION    8.903E-09
          MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  14ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        2.58    
 LARGEST SCALED RESIDUAL FORCE      1.209E-06   AT NODE       1170   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      1.209E-06
 LARGEST INCREMENT OF DISP.         1.083E-04   AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        3.820E-05   AT NODE       1674   DOF  3
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     0.316       TIME AVG. MOMENT      0.276    
 LARGEST SCALED RESIDUAL MOMENT     1.975E-06   AT NODE       1659   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     1.975E-06
 LARGEST INCREMENT OF ROTATION      2.906E-05   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.163E-05   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  15ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        2.58    
 LARGEST SCALED RESIDUAL FORCE      8.624E-07   AT NODE       1169   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      8.624E-07
 LARGEST INCREMENT OF DISP.         1.402E-04   AT NODE       1674   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        3.298E-05   AT NODE       1673   DOF  3
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     0.316       TIME AVG. MOMENT      0.276    
 LARGEST SCALED RESIDUAL MOMENT    -1.703E-06   AT NODE       1660   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT    -1.703E-06
 LARGEST INCREMENT OF ROTATION      3.910E-05   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.004E-05   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  15ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     4


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        2.58    
 LARGEST SCALED RESIDUAL FORCE      6.931E-07   AT NODE       1169   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      6.931E-07
 LARGEST INCREMENT OF DISP.         1.682E-04   AT NODE       1674   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        2.791E-05   AT NODE       1673   DOF  3
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     0.316       TIME AVG. MOMENT      0.276    
 LARGEST SCALED RESIDUAL MOMENT     1.442E-06   AT NODE       1659   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     1.442E-06
 LARGEST INCREMENT OF ROTATION      4.760E-05   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     8.500E-06   AT NODE       1660   DOF  5
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  17ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     5


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        2.58    
 LARGEST SCALED RESIDUAL FORCE      5.221E-07   AT NODE       1170   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      5.221E-07
 LARGEST INCREMENT OF DISP.         1.918E-04   AT NODE       1673   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        2.361E-05   AT NODE       1673   DOF  3
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     0.316       TIME AVG. MOMENT      0.276    
 LARGEST SCALED RESIDUAL MOMENT    -1.219E-06   AT NODE       1660   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT    -1.219E-06
 LARGEST INCREMENT OF ROTATION      5.479E-05   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     7.189E-06   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  16ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     6


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        2.58    
 LARGEST SCALED RESIDUAL FORCE      4.114E-07   AT NODE       1170   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      4.114E-07
 LARGEST INCREMENT OF DISP.         2.121E-04   AT NODE       1674   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        2.037E-05   AT NODE       1674   DOF  3
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     0.316       TIME AVG. MOMENT      0.276    
 LARGEST SCALED RESIDUAL MOMENT     1.052E-06   AT NODE       1659   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     1.052E-06
 LARGEST INCREMENT OF ROTATION      6.099E-05   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     6.204E-06   AT NODE       1660   DOF  5
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  15ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     7


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        2.58    
 LARGEST SCALED RESIDUAL FORCE      3.101E-07   AT NODE       1169   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      3.101E-07
 LARGEST INCREMENT OF DISP.         2.293E-04   AT NODE       1673   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.718E-05   AT NODE       1673   DOF  3
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     0.316       TIME AVG. MOMENT      0.276    
 LARGEST SCALED RESIDUAL MOMENT    -8.873E-07   AT NODE       1660   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT    -8.873E-07
 LARGEST INCREMENT OF ROTATION      6.622E-05   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     5.231E-06   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  16ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     8


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        2.58    
 LARGEST SCALED RESIDUAL FORCE      2.508E-07   AT NODE       1673   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      2.508E-07
 LARGEST INCREMENT OF DISP.         2.442E-04   AT NODE       1674   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.487E-05   AT NODE       1674   DOF  3
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     0.316       TIME AVG. MOMENT      0.276    
 LARGEST SCALED RESIDUAL MOMENT     7.684E-07   AT NODE       1659   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     7.684E-07
 LARGEST INCREMENT OF ROTATION      7.075E-05   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     4.530E-06   AT NODE       1660   DOF  5
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  18ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     9


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        2.58    
 LARGEST SCALED RESIDUAL FORCE      1.989E-07   AT NODE       1673   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      1.989E-07
 LARGEST INCREMENT OF DISP.         2.567E-04   AT NODE       1673   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.250E-05   AT NODE       1673   DOF  3
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     0.316       TIME AVG. MOMENT      0.276    
 LARGEST SCALED RESIDUAL MOMENT    -6.460E-07   AT NODE       1660   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT    -6.460E-07
 LARGEST INCREMENT OF ROTATION      7.456E-05   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     3.808E-06   AT NODE       1660   DOF  5
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  15ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION    10


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        2.58    
 LARGEST SCALED RESIDUAL FORCE      1.665E-07   AT NODE       1674   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      1.665E-07
 LARGEST INCREMENT OF DISP.         2.676E-04   AT NODE       1674   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.087E-05   AT NODE       1674   DOF  3
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     0.316       TIME AVG. MOMENT      0.276    
 LARGEST SCALED RESIDUAL MOMENT     5.614E-07   AT NODE       1659   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     5.614E-07
 LARGEST INCREMENT OF ROTATION      7.787E-05   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     3.309E-06   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  16ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION    11


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        2.58    
 LARGEST SCALED RESIDUAL FORCE      1.314E-07   AT NODE       1673   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      1.314E-07
 LARGEST INCREMENT OF DISP.         2.767E-04   AT NODE       1674   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        9.104E-06   AT NODE       1674   DOF  3
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     0.316       TIME AVG. MOMENT      0.276    
 LARGEST SCALED RESIDUAL MOMENT     4.704E-07   AT NODE       1659   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     4.704E-07
 LARGEST INCREMENT OF ROTATION      8.064E-05   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     2.773E-06   AT NODE       1660   DOF  5
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  16ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION    12


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        2.58    
 LARGEST SCALED RESIDUAL FORCE      1.106E-07   AT NODE       1673   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      1.106E-07
 LARGEST INCREMENT OF DISP.         2.846E-04   AT NODE       1673   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        7.943E-06   AT NODE       1673   DOF  3
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     0.316       TIME AVG. MOMENT      0.276    
 LARGEST SCALED RESIDUAL MOMENT    -4.104E-07   AT NODE       1660   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT    -4.104E-07
 LARGEST INCREMENT OF ROTATION      8.306E-05   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     2.419E-06   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  15ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION    13


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        2.58    
 LARGEST SCALED RESIDUAL FORCE      8.900E-08   AT NODE       1673   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      8.900E-08
 LARGEST INCREMENT OF DISP.         2.912E-04   AT NODE       1673   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        6.624E-06   AT NODE       1673   DOF  3
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     0.316       TIME AVG. MOMENT      0.276    
 LARGEST SCALED RESIDUAL MOMENT     3.422E-07   AT NODE       1659   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     3.422E-07
 LARGEST INCREMENT OF ROTATION      8.508E-05   AT NODE       1660   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     2.017E-06   AT NODE       1660   DOF  5
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  15ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION    14


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        2.58    
 LARGEST SCALED RESIDUAL FORCE      7.532E-08   AT NODE       1674   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      7.532E-08
 LARGEST INCREMENT OF DISP.         2.970E-04   AT NODE       1673   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        5.810E-06   AT NODE       1673   DOF  3
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     0.316       TIME AVG. MOMENT      0.276    
 LARGEST SCALED RESIDUAL MOMENT     3.002E-07   AT NODE       1659   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     3.002E-07
 LARGEST INCREMENT OF ROTATION      8.685E-05   AT NODE       1660   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.770E-06   AT NODE       1660   DOF  5
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  17ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION    15


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        2.58    
 LARGEST SCALED RESIDUAL FORCE      6.146E-08   AT NODE       1673   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      6.146E-08
 LARGEST INCREMENT OF DISP.         3.019E-04   AT NODE       1674   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        4.818E-06   AT NODE       1674   DOF  3
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     0.316       TIME AVG. MOMENT      0.276    
 LARGEST SCALED RESIDUAL MOMENT     2.489E-07   AT NODE       1659   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     2.489E-07
 LARGEST INCREMENT OF ROTATION      8.832E-05   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.467E-06   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  18ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION    16


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        2.58    
 LARGEST SCALED RESIDUAL FORCE      5.222E-08   AT NODE       1674   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      5.222E-08
 LARGEST INCREMENT OF DISP.         3.061E-04   AT NODE       1673   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        4.253E-06   AT NODE       1673   DOF  3
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     0.316       TIME AVG. MOMENT      0.276    
 LARGEST SCALED RESIDUAL MOMENT    -2.197E-07   AT NODE       1660   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT    -2.197E-07
 LARGEST INCREMENT OF ROTATION      8.961E-05   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.295E-06   AT NODE       1660   DOF  5
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 

 ***NOTE: THE SOLUTION FAILS TO CONVERGE IN THE MAXIMUM NUMBER OF EQUILIBRIUM 
          ITERATIONS ALLOWED.


  INCREMENT    64 STARTS. ATTEMPT NUMBER  3
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  16ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        2.58    
 LARGEST SCALED RESIDUAL FORCE      2.066E-07   AT NODE       1674   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      2.066E-07
 LARGEST INCREMENT OF DISP.         1.352E-05   AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.352E-05   AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     0.316       TIME AVG. MOMENT      0.276    
 LARGEST SCALED RESIDUAL MOMENT    -7.877E-07   AT NODE       1660   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT    -7.877E-07
 LARGEST INCREMENT OF ROTATION      2.176E-06   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     2.176E-06   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF ROTATION CORRECTION    2.072E-09
          MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  16ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        2.58    
 LARGEST SCALED RESIDUAL FORCE      1.378E-06   AT NODE       1170   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      1.378E-06
 LARGEST INCREMENT OF DISP.         4.992E-05   AT NODE       1674   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        4.130E-05   AT NODE       1674   DOF  3
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     0.316       TIME AVG. MOMENT      0.276    
 LARGEST SCALED RESIDUAL MOMENT    -2.129E-06   AT NODE       1660   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT    -2.129E-06
 LARGEST INCREMENT OF ROTATION      1.475E-05   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.257E-05   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  16ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        2.58    
 LARGEST SCALED RESIDUAL FORCE      7.935E-08   AT NODE       1673   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      7.935E-08
 LARGEST INCREMENT OF DISP.         5.604E-05   AT NODE       1673   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        6.120E-06   AT NODE       1673   DOF  3
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     0.316       TIME AVG. MOMENT      0.276    
 LARGEST SCALED RESIDUAL MOMENT    -3.194E-07   AT NODE       1660   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT    -3.194E-07
 LARGEST INCREMENT OF ROTATION      1.661E-05   AT NODE       1660   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.867E-06   AT NODE       1660   DOF  5
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  15ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     4


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        2.58    
 LARGEST SCALED RESIDUAL FORCE      9.199E-07   AT NODE       1169   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      9.199E-07
 LARGEST INCREMENT OF DISP.         8.889E-05   AT NODE       1674   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        3.285E-05   AT NODE       1674   DOF  3
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     0.316       TIME AVG. MOMENT      0.276    
 LARGEST SCALED RESIDUAL MOMENT     1.693E-06   AT NODE       1659   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     1.693E-06
 LARGEST INCREMENT OF ROTATION      2.661E-05   AT NODE       1660   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     9.997E-06   AT NODE       1660   DOF  5
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  16ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     5


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        2.58    
 LARGEST SCALED RESIDUAL FORCE     -2.148E-08   AT NODE       1660   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -2.148E-08
 LARGEST INCREMENT OF DISP.         9.056E-05   AT NODE       1673   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.674E-06   AT NODE       1673   DOF  3
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     0.316       TIME AVG. MOMENT      0.276    
 LARGEST SCALED RESIDUAL MOMENT    -8.959E-08   AT NODE       1660   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT    -8.959E-08
 LARGEST INCREMENT OF ROTATION      2.712E-05   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     5.127E-07   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF ROTATION CORRECTION    1.438E-07
          MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 ITERATION SUMMARY FOR THE INCREMENT:   5 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  5 ARE EQUILIBRIUM ITERATIONS.


                                INCREMENT    64 SUMMARY


     CURRENT LOAD PROPORTIONALITY FACTOR          1.184    
     TOTAL ARC LENGTH    1.95    , INCREMENT OF ARC LENGTH   8.371E-07


  INCREMENT    65 STARTS. ATTEMPT NUMBER  1
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  15ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        2.59    
 LARGEST SCALED RESIDUAL FORCE      1.125E-07   AT NODE       1673   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      1.125E-07
 LARGEST INCREMENT OF DISP.         1.352E-05   AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.352E-05   AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     0.316       TIME AVG. MOMENT      0.277    
 LARGEST SCALED RESIDUAL MOMENT    -4.672E-07   AT NODE       1660   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT    -4.672E-07
 LARGEST INCREMENT OF ROTATION      2.191E-06   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     2.191E-06   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF ROTATION CORRECTION    9.770E-10
          MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  15ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        2.59    
 LARGEST SCALED RESIDUAL FORCE      6.150E-07   AT NODE       1169   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      6.150E-07
 LARGEST INCREMENT OF DISP.         3.465E-05   AT NODE       1674   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        2.597E-05   AT NODE       1674   DOF  3
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     0.316       TIME AVG. MOMENT      0.277    
 LARGEST SCALED RESIDUAL MOMENT     1.339E-06   AT NODE       1659   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     1.339E-06
 LARGEST INCREMENT OF ROTATION      1.010E-05   AT NODE       1660   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     7.906E-06   AT NODE       1660   DOF  5
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  15ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        2.59    
 LARGEST SCALED RESIDUAL FORCE     -3.056E-08   AT NODE       1660   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -3.056E-08
 LARGEST INCREMENT OF DISP.         3.726E-05   AT NODE       1674   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        2.617E-06   AT NODE       1674   DOF  3
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     0.316       TIME AVG. MOMENT      0.277    
 LARGEST SCALED RESIDUAL MOMENT    -1.374E-07   AT NODE       1660   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT    -1.374E-07
 LARGEST INCREMENT OF ROTATION      1.090E-05   AT NODE       1660   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     7.991E-07   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  15ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     4


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        2.59    
 LARGEST SCALED RESIDUAL FORCE      4.241E-07   AT NODE       1170   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      4.241E-07
 LARGEST INCREMENT OF DISP.         5.807E-05   AT NODE       1674   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        2.081E-05   AT NODE       1673   DOF  3
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     0.316       TIME AVG. MOMENT      0.277    
 LARGEST SCALED RESIDUAL MOMENT     1.073E-06   AT NODE       1659   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     1.073E-06
 LARGEST INCREMENT OF ROTATION      1.723E-05   AT NODE       1660   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     6.335E-06   AT NODE       1660   DOF  5
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  15ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     5


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        2.59    
 LARGEST SCALED RESIDUAL FORCE     -6.617E-09   AT NODE        464   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -6.617E-09
 LARGEST INCREMENT OF DISP.         5.809E-05   AT NODE       1674   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.813E-08   AT NODE       1674   DOF  3
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     0.316       TIME AVG. MOMENT      0.277    
 LARGEST SCALED RESIDUAL MOMENT    -5.086E-08   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT    -5.086E-08
 LARGEST INCREMENT OF ROTATION      1.724E-05   AT NODE       1660   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.454E-07   AT NODE       1659   DOF  6
   INSTANCE: SHELL-1                                                                         
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED

 ITERATION SUMMARY FOR THE INCREMENT:   5 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  5 ARE EQUILIBRIUM ITERATIONS.


                                INCREMENT    65 SUMMARY


     CURRENT LOAD PROPORTIONALITY FACTOR          1.184    
     TOTAL ARC LENGTH    1.95    , INCREMENT OF ARC LENGTH   8.371E-07


  INCREMENT    66 STARTS. ATTEMPT NUMBER  1
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  15ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        2.59    
 LARGEST SCALED RESIDUAL FORCE      9.546E-08   AT NODE       1674   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      9.546E-08
 LARGEST INCREMENT OF DISP.         1.352E-05   AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.352E-05   AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     0.317       TIME AVG. MOMENT      0.278    
 LARGEST SCALED RESIDUAL MOMENT     3.821E-07   AT NODE       1659   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     3.821E-07
 LARGEST INCREMENT OF ROTATION      2.200E-06   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     2.200E-06   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF ROTATION CORRECTION   -9.097E-10
          MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  16ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        2.59    
 LARGEST SCALED RESIDUAL FORCE      2.897E-07   AT NODE       1170   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      2.897E-07
 LARGEST INCREMENT OF DISP.         2.510E-05   AT NODE       1673   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.640E-05   AT NODE       1673   DOF  3
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     0.317       TIME AVG. MOMENT      0.278    
 LARGEST SCALED RESIDUAL MOMENT    -8.459E-07   AT NODE       1660   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT    -8.459E-07
 LARGEST INCREMENT OF ROTATION      7.192E-06   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     4.993E-06   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  15ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        2.59    
 LARGEST SCALED RESIDUAL FORCE     -2.780E-08   AT NODE       1659   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -2.780E-08
 LARGEST INCREMENT OF DISP.         2.734E-05   AT NODE       1674   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        2.240E-06   AT NODE       1674   DOF  3
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     0.317       TIME AVG. MOMENT      0.278    
 LARGEST SCALED RESIDUAL MOMENT     1.170E-07   AT NODE       1659   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     1.170E-07
 LARGEST INCREMENT OF ROTATION      7.876E-06   AT NODE       1660   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     6.835E-07   AT NODE       1660   DOF  5
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  15ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     4


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        2.59    
 LARGEST SCALED RESIDUAL FORCE      2.134E-07   AT NODE       1674   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      2.134E-07
 LARGEST INCREMENT OF DISP.         4.044E-05   AT NODE       1673   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.310E-05   AT NODE       1673   DOF  3
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     0.317       TIME AVG. MOMENT      0.278    
 LARGEST SCALED RESIDUAL MOMENT    -6.753E-07   AT NODE       1660   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT    -6.753E-07
 LARGEST INCREMENT OF ROTATION      1.186E-05   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     3.988E-06   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  15ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     5


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        2.59    
 LARGEST SCALED RESIDUAL FORCE      6.263E-09   AT NODE        388   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      6.263E-09
 LARGEST INCREMENT OF DISP.         4.091E-05   AT NODE       1673   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        4.720E-07   AT NODE       1674   DOF  3
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     0.317       TIME AVG. MOMENT      0.278    
 LARGEST SCALED RESIDUAL MOMENT    -1.142E-07   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT    -1.142E-07
 LARGEST INCREMENT OF ROTATION      1.201E-05   AT NODE       1660   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.449E-07   AT NODE       1660   DOF  5
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  14ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     6


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        2.59    
 LARGEST SCALED RESIDUAL FORCE      1.602E-07   AT NODE       1674   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      1.602E-07
 LARGEST INCREMENT OF DISP.         5.150E-05   AT NODE       1674   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.058E-05   AT NODE       1674   DOF  3
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     0.317       TIME AVG. MOMENT      0.278    
 LARGEST SCALED RESIDUAL MOMENT     5.455E-07   AT NODE       1659   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     5.455E-07
 LARGEST INCREMENT OF ROTATION      1.523E-05   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     3.222E-06   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  15ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     7


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        2.59    
 LARGEST SCALED RESIDUAL FORCE     -8.726E-09   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE     -8.726E-09
 LARGEST INCREMENT OF DISP.         5.083E-05   AT NODE       1673   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -6.618E-07   AT NODE       1674   DOF  3
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     0.317       TIME AVG. MOMENT      0.278    
 LARGEST SCALED RESIDUAL MOMENT     4.222E-08   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     4.222E-08
 LARGEST INCREMENT OF ROTATION      1.503E-05   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -2.005E-07   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF ROTATION CORRECTION    7.414E-08
          MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 ITERATION SUMMARY FOR THE INCREMENT:   7 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  7 ARE EQUILIBRIUM ITERATIONS.


                                INCREMENT    66 SUMMARY


     CURRENT LOAD PROPORTIONALITY FACTOR          1.184    
     TOTAL ARC LENGTH    1.95    , INCREMENT OF ARC LENGTH   8.371E-07


  INCREMENT    67 STARTS. ATTEMPT NUMBER  1
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  15ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        2.59    
 LARGEST SCALED RESIDUAL FORCE      9.149E-08   AT NODE       1674   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      9.149E-08
 LARGEST INCREMENT OF DISP.         1.352E-05   AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.352E-05   AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     0.317       TIME AVG. MOMENT      0.278    
 LARGEST SCALED RESIDUAL MOMENT    -3.474E-07   AT NODE       1660   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT    -3.474E-07
 LARGEST INCREMENT OF ROTATION      2.208E-06   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     2.208E-06   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF ROTATION CORRECTION    8.555E-10
          MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  17ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        2.59    
 LARGEST SCALED RESIDUAL FORCE      1.140E-07   AT NODE       1673   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      1.140E-07
 LARGEST INCREMENT OF DISP.         1.690E-05   AT NODE       1674   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        8.176E-06   AT NODE       1674   DOF  3
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     0.317       TIME AVG. MOMENT      0.278    
 LARGEST SCALED RESIDUAL MOMENT     4.220E-07   AT NODE       1659   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     4.220E-07
 LARGEST INCREMENT OF ROTATION      4.697E-06   AT NODE       1660   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     2.489E-06   AT NODE       1660   DOF  5
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  15ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        2.59    
 LARGEST SCALED RESIDUAL FORCE     -3.282E-08   AT NODE       1660   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -3.282E-08
 LARGEST INCREMENT OF DISP.         1.943E-05   AT NODE       1673   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        2.522E-06   AT NODE       1673   DOF  3
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     0.317       TIME AVG. MOMENT      0.278    
 LARGEST SCALED RESIDUAL MOMENT    -1.307E-07   AT NODE       1660   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT    -1.307E-07
 LARGEST INCREMENT OF ROTATION      5.466E-06   AT NODE       1660   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     7.686E-07   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  16ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     4


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        2.59    
 LARGEST SCALED RESIDUAL FORCE      8.485E-08   AT NODE       1673   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      8.485E-08
 LARGEST INCREMENT OF DISP.         2.583E-05   AT NODE       1674   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        6.406E-06   AT NODE       1674   DOF  3
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     0.317       TIME AVG. MOMENT      0.278    
 LARGEST SCALED RESIDUAL MOMENT     3.304E-07   AT NODE       1659   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     3.304E-07
 LARGEST INCREMENT OF ROTATION      7.416E-06   AT NODE       1660   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.950E-06   AT NODE       1660   DOF  5
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  15ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     5


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        2.59    
 LARGEST SCALED RESIDUAL FORCE     -1.639E-08   AT NODE       1659   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -1.639E-08
 LARGEST INCREMENT OF DISP.         2.719E-05   AT NODE       1674   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.360E-06   AT NODE       1673   DOF  3
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     0.317       TIME AVG. MOMENT      0.278    
 LARGEST SCALED RESIDUAL MOMENT    -7.074E-08   AT NODE       1660   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT    -7.074E-08
 LARGEST INCREMENT OF ROTATION      7.831E-06   AT NODE       1660   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     4.146E-07   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  18ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     6


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        2.59    
 LARGEST SCALED RESIDUAL FORCE      6.529E-08   AT NODE       1673   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      6.529E-08
 LARGEST INCREMENT OF DISP.         3.226E-05   AT NODE       1674   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        5.069E-06   AT NODE       1673   DOF  3
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     0.317       TIME AVG. MOMENT      0.278    
 LARGEST SCALED RESIDUAL MOMENT    -2.614E-07   AT NODE       1660   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT    -2.614E-07
 LARGEST INCREMENT OF ROTATION      9.374E-06   AT NODE       1660   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.543E-06   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  15ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     7


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        2.59    
 LARGEST SCALED RESIDUAL FORCE     -7.423E-09   AT NODE       1155   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -7.423E-09
 LARGEST INCREMENT OF DISP.         3.286E-05   AT NODE       1673   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        6.025E-07   AT NODE       1673   DOF  3
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     0.317       TIME AVG. MOMENT      0.278    
 LARGEST SCALED RESIDUAL MOMENT    -3.157E-08   AT NODE       1660   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT    -3.157E-08
 LARGEST INCREMENT OF ROTATION      9.558E-06   AT NODE       1660   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.839E-07   AT NODE       1660   DOF  5
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF ROTATION CORRECTION    8.205E-08
          MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 ITERATION SUMMARY FOR THE INCREMENT:   7 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  7 ARE EQUILIBRIUM ITERATIONS.


                                INCREMENT    67 SUMMARY


     CURRENT LOAD PROPORTIONALITY FACTOR          1.184    
     TOTAL ARC LENGTH    1.95    , INCREMENT OF ARC LENGTH   8.371E-07


  INCREMENT    68 STARTS. ATTEMPT NUMBER  1
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  16ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        2.59    
 LARGEST SCALED RESIDUAL FORCE      1.042E-07   AT NODE       1673   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      1.042E-07
 LARGEST INCREMENT OF DISP.         1.352E-05   AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.352E-05   AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     0.317       TIME AVG. MOMENT      0.279    
 LARGEST SCALED RESIDUAL MOMENT    -4.128E-07   AT NODE       1660   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT    -4.128E-07
 LARGEST INCREMENT OF ROTATION      2.212E-06   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     2.212E-06   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF ROTATION CORRECTION    1.103E-09
          MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  17ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        2.59    
 LARGEST SCALED RESIDUAL FORCE     -4.521E-08   AT NODE       1660   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -4.521E-08
 LARGEST INCREMENT OF DISP.         1.353E-05   AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        3.577E-06   AT NODE       1673   DOF  3
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     0.317       TIME AVG. MOMENT      0.279    
 LARGEST SCALED RESIDUAL MOMENT    -1.851E-07   AT NODE       1660   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT    -1.851E-07
 LARGEST INCREMENT OF ROTATION      3.302E-06   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.090E-06   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  17ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        2.59    
 LARGEST SCALED RESIDUAL FORCE      4.837E-08   AT NODE       1674   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      4.837E-08
 LARGEST INCREMENT OF DISP.         1.634E-05   AT NODE       1674   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        4.018E-06   AT NODE       1674   DOF  3
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     0.317       TIME AVG. MOMENT      0.279    
 LARGEST SCALED RESIDUAL MOMENT     2.073E-07   AT NODE       1659   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     2.073E-07
 LARGEST INCREMENT OF ROTATION      4.526E-06   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.224E-06   AT NODE       1660   DOF  5
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  17ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     4


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        2.59    
 LARGEST SCALED RESIDUAL FORCE     -3.081E-08   AT NODE       1660   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -3.081E-08
 LARGEST INCREMENT OF DISP.         1.886E-05   AT NODE       1674   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        2.525E-06   AT NODE       1673   DOF  3
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     0.317       TIME AVG. MOMENT      0.279    
 LARGEST SCALED RESIDUAL MOMENT    -1.306E-07   AT NODE       1660   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT    -1.306E-07
 LARGEST INCREMENT OF ROTATION      5.295E-06   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     7.692E-07   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  19ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     5


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        2.59    
 LARGEST SCALED RESIDUAL FORCE     -3.630E-08   AT NODE       1659   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -3.630E-08
 LARGEST INCREMENT OF DISP.         2.182E-05   AT NODE       1674   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        2.961E-06   AT NODE       1673   DOF  3
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     0.317       TIME AVG. MOMENT      0.279    
 LARGEST SCALED RESIDUAL MOMENT    -1.529E-07   AT NODE       1660   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT    -1.529E-07
 LARGEST INCREMENT OF ROTATION      6.196E-06   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     9.016E-07   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  15ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     6


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        2.59    
 LARGEST SCALED RESIDUAL FORCE     -2.226E-08   AT NODE       1660   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -2.226E-08
 LARGEST INCREMENT OF DISP.         2.358E-05   AT NODE       1674   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.759E-06   AT NODE       1674   DOF  3
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     0.317       TIME AVG. MOMENT      0.279    
 LARGEST SCALED RESIDUAL MOMENT     9.098E-08   AT NODE       1659   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     9.098E-08
 LARGEST INCREMENT OF ROTATION      6.732E-06   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     5.359E-07   AT NODE       1660   DOF  5
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  15ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     7


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        2.59    
 LARGEST SCALED RESIDUAL FORCE     -2.741E-08   AT NODE       1660   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -2.741E-08
 LARGEST INCREMENT OF DISP.         2.581E-05   AT NODE       1674   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        2.231E-06   AT NODE       1673   DOF  3
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     0.317       TIME AVG. MOMENT      0.279    
 LARGEST SCALED RESIDUAL MOMENT     1.152E-07   AT NODE       1659   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     1.152E-07
 LARGEST INCREMENT OF ROTATION      7.412E-06   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     6.795E-07   AT NODE       1660   DOF  5
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  16ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     8


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        2.59    
 LARGEST SCALED RESIDUAL FORCE     -1.534E-08   AT NODE       1660   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -1.534E-08
 LARGEST INCREMENT OF DISP.         2.702E-05   AT NODE       1674   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.209E-06   AT NODE       1674   DOF  3
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     0.317       TIME AVG. MOMENT      0.279    
 LARGEST SCALED RESIDUAL MOMENT     6.257E-08   AT NODE       1659   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     6.257E-08
 LARGEST INCREMENT OF ROTATION      7.780E-06   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     3.684E-07   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  15ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     9


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        2.59    
 LARGEST SCALED RESIDUAL FORCE     -2.098E-08   AT NODE       1660   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -2.098E-08
 LARGEST INCREMENT OF DISP.         2.872E-05   AT NODE       1674   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.694E-06   AT NODE       1673   DOF  3
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     0.317       TIME AVG. MOMENT      0.279    
 LARGEST SCALED RESIDUAL MOMENT    -8.744E-08   AT NODE       1660   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT    -8.744E-08
 LARGEST INCREMENT OF ROTATION      8.296E-06   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     5.158E-07   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT


 ***NOTE: THE RATE OF CONVERGENCE IS VERY SLOW. CONVERGENCE IS JUDGED UNLIKELY.


  INCREMENT    68 STARTS. ATTEMPT NUMBER  2
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  15ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        2.59    
 LARGEST SCALED RESIDUAL FORCE      5.052E-08   AT NODE       1673   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      5.052E-08
 LARGEST INCREMENT OF DISP.         6.761E-06   AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        6.761E-06   AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     0.317       TIME AVG. MOMENT      0.279    
 LARGEST SCALED RESIDUAL MOMENT    -2.222E-07   AT NODE       1660   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT    -2.222E-07
 LARGEST INCREMENT OF ROTATION      1.106E-06   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.106E-06   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF ROTATION CORRECTION    5.938E-10
          MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  15ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        2.59    
 LARGEST SCALED RESIDUAL FORCE      4.735E-08   AT NODE       1674   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      4.735E-08
 LARGEST INCREMENT OF DISP.         8.190E-06   AT NODE       1674   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        3.818E-06   AT NODE       1674   DOF  3
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     0.317       TIME AVG. MOMENT      0.279    
 LARGEST SCALED RESIDUAL MOMENT     1.972E-07   AT NODE       1659   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     1.972E-07
 LARGEST INCREMENT OF ROTATION      2.269E-06   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.163E-06   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  16ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        2.59    
 LARGEST SCALED RESIDUAL FORCE     -2.537E-08   AT NODE       1659   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -2.537E-08
 LARGEST INCREMENT OF DISP.         1.024E-05   AT NODE       1674   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        2.050E-06   AT NODE       1673   DOF  3
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     0.317       TIME AVG. MOMENT      0.279    
 LARGEST SCALED RESIDUAL MOMENT     1.060E-07   AT NODE       1659   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     1.060E-07
 LARGEST INCREMENT OF ROTATION      2.893E-06   AT NODE       1660   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     6.245E-07   AT NODE       1660   DOF  5
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  16ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     4


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        2.59    
 LARGEST SCALED RESIDUAL FORCE     -3.559E-08   AT NODE       1659   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -3.559E-08
 LARGEST INCREMENT OF DISP.         1.315E-05   AT NODE       1674   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        2.908E-06   AT NODE       1673   DOF  3
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     0.317       TIME AVG. MOMENT      0.279    
 LARGEST SCALED RESIDUAL MOMENT    -1.501E-07   AT NODE       1660   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT    -1.501E-07
 LARGEST INCREMENT OF ROTATION      3.779E-06   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     8.857E-07   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  15ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     5


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        2.59    
 LARGEST SCALED RESIDUAL FORCE     -1.716E-08   AT NODE       1659   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -1.716E-08
 LARGEST INCREMENT OF DISP.         1.450E-05   AT NODE       1674   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.350E-06   AT NODE       1674   DOF  3
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     0.317       TIME AVG. MOMENT      0.279    
 LARGEST SCALED RESIDUAL MOMENT    -6.986E-08   AT NODE       1660   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT    -6.986E-08
 LARGEST INCREMENT OF ROTATION      4.190E-06   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     4.112E-07   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  18ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     6


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        2.59    
 LARGEST SCALED RESIDUAL FORCE     -2.987E-08   AT NODE       1660   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -2.987E-08
 LARGEST INCREMENT OF DISP.         1.673E-05   AT NODE       1674   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        2.230E-06   AT NODE       1673   DOF  3
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     0.317       TIME AVG. MOMENT      0.279    
 LARGEST SCALED RESIDUAL MOMENT    -1.151E-07   AT NODE       1660   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT    -1.151E-07
 LARGEST INCREMENT OF ROTATION      4.869E-06   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     6.791E-07   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  15ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     7


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        2.59    
 LARGEST SCALED RESIDUAL FORCE     -1.029E-08   AT NODE       1155   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -1.029E-08
 LARGEST INCREMENT OF DISP.         1.760E-05   AT NODE       1673   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        8.764E-07   AT NODE       1673   DOF  3
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     0.317       TIME AVG. MOMENT      0.279    
 LARGEST SCALED RESIDUAL MOMENT     4.540E-08   AT NODE       1659   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     4.540E-08
 LARGEST INCREMENT OF ROTATION      5.136E-06   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     2.670E-07   AT NODE       1660   DOF  5
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  15ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     8


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        2.59    
 LARGEST SCALED RESIDUAL FORCE     -2.262E-08   AT NODE       1660   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -2.262E-08
 LARGEST INCREMENT OF DISP.         1.933E-05   AT NODE       1674   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.725E-06   AT NODE       1674   DOF  3
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     0.317       TIME AVG. MOMENT      0.279    
 LARGEST SCALED RESIDUAL MOMENT     8.901E-08   AT NODE       1659   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     8.901E-08
 LARGEST INCREMENT OF ROTATION      5.662E-06   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     5.253E-07   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  14ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     9


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        2.59    
 LARGEST SCALED RESIDUAL FORCE      1.542E-08   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE      1.542E-08
 LARGEST INCREMENT OF DISP.         1.987E-05   AT NODE       1674   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        5.426E-07   AT NODE       1674   DOF  3
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     0.317       TIME AVG. MOMENT      0.279    
 LARGEST SCALED RESIDUAL MOMENT     2.814E-08   AT NODE       1659   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     2.814E-08
 LARGEST INCREMENT OF ROTATION      5.827E-06   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.654E-07   AT NODE       1660   DOF  5
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  15ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION    10


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        2.59    
 LARGEST SCALED RESIDUAL FORCE     -1.803E-08   AT NODE       1660   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -1.803E-08
 LARGEST INCREMENT OF DISP.         2.122E-05   AT NODE       1673   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.348E-06   AT NODE       1673   DOF  3
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     0.317       TIME AVG. MOMENT      0.279    
 LARGEST SCALED RESIDUAL MOMENT    -6.951E-08   AT NODE       1660   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT    -6.951E-08
 LARGEST INCREMENT OF ROTATION      6.237E-06   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     4.103E-07   AT NODE       1660   DOF  5
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT


 ***NOTE: THE RATE OF CONVERGENCE IS VERY SLOW. CONVERGENCE IS JUDGED UNLIKELY.


  INCREMENT    68 STARTS. ATTEMPT NUMBER  3
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  15ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        2.59    
 LARGEST SCALED RESIDUAL FORCE     -1.822E-08   AT NODE       1660   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -1.822E-08
 LARGEST INCREMENT OF DISP.         1.690E-06   AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.690E-06   AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM RESPONSE WAS LINEAR IN THIS INCREMENT

 AVERAGE MOMENT                     0.317       TIME AVG. MOMENT      0.279    
 LARGEST SCALED RESIDUAL MOMENT    -7.922E-08   AT NODE       1660   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT    -7.922E-08
 LARGEST INCREMENT OF ROTATION      2.765E-07   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     2.765E-07   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF ROTATION CORRECTION    2.139E-10
          MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 ITERATION SUMMARY FOR THE INCREMENT:   1 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  1 ARE EQUILIBRIUM ITERATIONS.


                                INCREMENT    68 SUMMARY


     CURRENT LOAD PROPORTIONALITY FACTOR          1.184    
     TOTAL ARC LENGTH    1.95    , INCREMENT OF ARC LENGTH   2.093E-07


  INCREMENT    69 STARTS. ATTEMPT NUMBER  1
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  17ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        2.59    
 LARGEST SCALED RESIDUAL FORCE     -3.064E-08   AT NODE       1659   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -3.064E-08
 LARGEST INCREMENT OF DISP.         1.690E-06   AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.690E-06   AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     0.318       TIME AVG. MOMENT      0.279    
 LARGEST SCALED RESIDUAL MOMENT    -1.269E-07   AT NODE       1660   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT    -1.269E-07
 LARGEST INCREMENT OF ROTATION      2.765E-07   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     2.765E-07   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF ROTATION CORRECTION    3.820E-10
          MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  15ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        2.59    
 LARGEST SCALED RESIDUAL FORCE      4.812E-08   AT NODE       1674   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      4.812E-08
 LARGEST INCREMENT OF DISP.         5.029E-06   AT NODE       1674   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        3.936E-06   AT NODE       1674   DOF  3
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     0.318       TIME AVG. MOMENT      0.279    
 LARGEST SCALED RESIDUAL MOMENT     2.031E-07   AT NODE       1659   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     2.031E-07
 LARGEST INCREMENT OF ROTATION      1.475E-06   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.199E-06   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  16ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        2.59    
 LARGEST SCALED RESIDUAL FORCE     -1.269E-08   AT NODE       1660   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -1.269E-08
 LARGEST INCREMENT OF DISP.         6.101E-06   AT NODE       1674   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.072E-06   AT NODE       1674   DOF  3
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     0.318       TIME AVG. MOMENT      0.279    
 LARGEST SCALED RESIDUAL MOMENT     5.563E-08   AT NODE       1659   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     5.563E-08
 LARGEST INCREMENT OF ROTATION      1.802E-06   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     3.267E-07   AT NODE       1660   DOF  5
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  17ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     4


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        2.59    
 LARGEST SCALED RESIDUAL FORCE     -3.918E-08   AT NODE       1659   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -3.918E-08
 LARGEST INCREMENT OF DISP.         9.196E-06   AT NODE       1674   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        3.096E-06   AT NODE       1674   DOF  3
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     0.318       TIME AVG. MOMENT      0.279    
 LARGEST SCALED RESIDUAL MOMENT     1.597E-07   AT NODE       1659   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     1.597E-07
 LARGEST INCREMENT OF ROTATION      2.744E-06   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     9.425E-07   AT NODE       1660   DOF  5
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  16ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     5


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        2.59    
 LARGEST SCALED RESIDUAL FORCE     -8.176E-09   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE     -8.176E-09
 LARGEST INCREMENT OF DISP.         9.747E-06   AT NODE       1674   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        5.503E-07   AT NODE       1673   DOF  3
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     0.318       TIME AVG. MOMENT      0.279    
 LARGEST SCALED RESIDUAL MOMENT    -5.237E-08   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT    -5.237E-08
 LARGEST INCREMENT OF ROTATION      2.912E-06   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.678E-07   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  15ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     6


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        2.59    
 LARGEST SCALED RESIDUAL FORCE     -2.989E-08   AT NODE       1659   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -2.989E-08
 LARGEST INCREMENT OF DISP.         1.221E-05   AT NODE       1674   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        2.460E-06   AT NODE       1674   DOF  3
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     0.318       TIME AVG. MOMENT      0.279    
 LARGEST SCALED RESIDUAL MOMENT     1.269E-07   AT NODE       1659   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     1.269E-07
 LARGEST INCREMENT OF ROTATION      3.661E-06   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     7.492E-07   AT NODE       1660   DOF  5
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  17ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     7


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        2.59    
 LARGEST SCALED RESIDUAL FORCE      5.723E-09   AT NODE       1003   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      5.723E-09
 LARGEST INCREMENT OF DISP.         1.241E-05   AT NODE       1674   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        2.039E-07   AT NODE       1673   DOF  3
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     0.318       TIME AVG. MOMENT      0.279    
 LARGEST SCALED RESIDUAL MOMENT     3.489E-08   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     3.489E-08
 LARGEST INCREMENT OF ROTATION      3.724E-06   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     6.231E-08   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  15ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     8


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        2.59    
 LARGEST SCALED RESIDUAL FORCE     -2.570E-08   AT NODE       1660   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -2.570E-08
 LARGEST INCREMENT OF DISP.         1.439E-05   AT NODE       1674   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.978E-06   AT NODE       1673   DOF  3
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     0.318       TIME AVG. MOMENT      0.279    
 LARGEST SCALED RESIDUAL MOMENT    -1.020E-07   AT NODE       1660   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT    -1.020E-07
 LARGEST INCREMENT OF ROTATION      4.326E-06   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     6.024E-07   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  15ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     9


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        2.59    
 LARGEST SCALED RESIDUAL FORCE     -6.578E-09   AT NODE        318   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -6.578E-09
 LARGEST INCREMENT OF DISP.         1.436E-05   AT NODE       1674   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -2.966E-08   AT NODE       1674   DOF  3
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     0.318       TIME AVG. MOMENT      0.279    
 LARGEST SCALED RESIDUAL MOMENT     4.049E-08   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     4.049E-08
 LARGEST INCREMENT OF ROTATION      4.317E-06   AT NODE       1660   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.448E-08   AT NODE       1659   DOF  6
   INSTANCE: SHELL-1                                                                         
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED

 ITERATION SUMMARY FOR THE INCREMENT:   9 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  9 ARE EQUILIBRIUM ITERATIONS.


                                INCREMENT    69 SUMMARY


     CURRENT LOAD PROPORTIONALITY FACTOR          1.184    
     TOTAL ARC LENGTH    1.95    , INCREMENT OF ARC LENGTH   2.093E-07


  INCREMENT    70 STARTS. ATTEMPT NUMBER  1
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  16ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        2.60    
 LARGEST SCALED RESIDUAL FORCE     -2.319E-08   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE     -2.319E-08
 LARGEST INCREMENT OF DISP.         1.690E-06   AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.690E-06   AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM RESPONSE WAS LINEAR IN THIS INCREMENT

 AVERAGE MOMENT                     0.318       TIME AVG. MOMENT      0.280    
 LARGEST SCALED RESIDUAL MOMENT     1.204E-07   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     1.204E-07
 LARGEST INCREMENT OF ROTATION      2.768E-07   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     2.768E-07   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF ROTATION CORRECTION   -2.336E-10
          MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 ITERATION SUMMARY FOR THE INCREMENT:   1 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  1 ARE EQUILIBRIUM ITERATIONS.


                                INCREMENT    70 SUMMARY


     CURRENT LOAD PROPORTIONALITY FACTOR          1.184    
     TOTAL ARC LENGTH    1.95    , INCREMENT OF ARC LENGTH   2.093E-07


  INCREMENT    71 STARTS. ATTEMPT NUMBER  1
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  17ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        2.60    
 LARGEST SCALED RESIDUAL FORCE     -2.345E-08   AT NODE       1659   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -2.345E-08
 LARGEST INCREMENT OF DISP.         1.690E-06   AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.690E-06   AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM RESPONSE WAS LINEAR IN THIS INCREMENT

 AVERAGE MOMENT                     0.318       TIME AVG. MOMENT      0.280    
 LARGEST SCALED RESIDUAL MOMENT     9.408E-08   AT NODE       1659   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     9.408E-08
 LARGEST INCREMENT OF ROTATION      2.768E-07   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     2.768E-07   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF ROTATION CORRECTION   -2.835E-10
          MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION
          ARC LENGTH INCREMENT MAY NOW INCREASE TO    3.139E-07

 ITERATION SUMMARY FOR THE INCREMENT:   1 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  1 ARE EQUILIBRIUM ITERATIONS.


                                INCREMENT    71 SUMMARY


     CURRENT LOAD PROPORTIONALITY FACTOR          1.184    
     TOTAL ARC LENGTH    1.95    , INCREMENT OF ARC LENGTH   2.093E-07


  INCREMENT    72 STARTS. ATTEMPT NUMBER  1
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  15ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        2.60    
 LARGEST SCALED RESIDUAL FORCE     -3.949E-08   AT NODE       1659   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -3.949E-08
 LARGEST INCREMENT OF DISP.         2.535E-06   AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        2.535E-06   AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     0.319       TIME AVG. MOMENT      0.281    
 LARGEST SCALED RESIDUAL MOMENT     1.656E-07   AT NODE       1659   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     1.656E-07
 LARGEST INCREMENT OF ROTATION      4.153E-07   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     4.153E-07   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF ROTATION CORRECTION   -4.995E-10
          MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  18ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        2.60    
 LARGEST SCALED RESIDUAL FORCE     -1.821E-08   AT NODE       1659   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -1.821E-08
 LARGEST INCREMENT OF DISP.         3.039E-06   AT NODE       1673   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.398E-06   AT NODE       1673   DOF  3
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     0.319       TIME AVG. MOMENT      0.281    
 LARGEST SCALED RESIDUAL MOMENT     7.236E-08   AT NODE       1659   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     7.236E-08
 LARGEST INCREMENT OF ROTATION      8.411E-07   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     4.258E-07   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  15ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        2.60    
 LARGEST SCALED RESIDUAL FORCE      2.200E-08   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE      2.200E-08
 LARGEST INCREMENT OF DISP.         4.577E-06   AT NODE       1673   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.539E-06   AT NODE       1673   DOF  3
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     0.319       TIME AVG. MOMENT      0.281    
 LARGEST SCALED RESIDUAL MOMENT     7.940E-08   AT NODE       1659   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     7.940E-08
 LARGEST INCREMENT OF ROTATION      1.310E-06   AT NODE       1660   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     4.686E-07   AT NODE       1660   DOF  5
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  14ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     4


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        2.60    
 LARGEST SCALED RESIDUAL FORCE     -1.926E-08   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE     -1.926E-08
 LARGEST INCREMENT OF DISP.         5.569E-06   AT NODE       1673   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        9.915E-07   AT NODE       1674   DOF  3
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     0.319       TIME AVG. MOMENT      0.281    
 LARGEST SCALED RESIDUAL MOMENT    -5.126E-08   AT NODE       1660   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT    -5.126E-08
 LARGEST INCREMENT OF ROTATION      1.612E-06   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     3.020E-07   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  15ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     5


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        2.60    
 LARGEST SCALED RESIDUAL FORCE     -1.474E-08   AT NODE       1660   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -1.474E-08
 LARGEST INCREMENT OF DISP.         6.696E-06   AT NODE       1674   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.127E-06   AT NODE       1674   DOF  3
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     0.319       TIME AVG. MOMENT      0.281    
 LARGEST SCALED RESIDUAL MOMENT    -5.933E-08   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT    -5.933E-08
 LARGEST INCREMENT OF ROTATION      1.955E-06   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     3.432E-07   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  15ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     6


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        2.60    
 LARGEST SCALED RESIDUAL FORCE     -9.363E-09   AT NODE       1659   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -9.363E-09
 LARGEST INCREMENT OF DISP.         7.393E-06   AT NODE       1673   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        6.971E-07   AT NODE       1673   DOF  3
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     0.319       TIME AVG. MOMENT      0.281    
 LARGEST SCALED RESIDUAL MOMENT     3.674E-08   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     3.674E-08
 LARGEST INCREMENT OF ROTATION      2.167E-06   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     2.123E-07   AT NODE       1660   DOF  5
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  14ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     7


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        2.60    
 LARGEST SCALED RESIDUAL FORCE     -1.007E-08   AT NODE       1659   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -1.007E-08
 LARGEST INCREMENT OF DISP.         8.237E-06   AT NODE       1673   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        8.440E-07   AT NODE       1673   DOF  3
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     0.319       TIME AVG. MOMENT      0.281    
 LARGEST SCALED RESIDUAL MOMENT     4.357E-08   AT NODE       1659   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     4.357E-08
 LARGEST INCREMENT OF ROTATION      2.424E-06   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     2.570E-07   AT NODE       1660   DOF  5
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  15ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     8


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        2.60    
 LARGEST SCALED RESIDUAL FORCE      6.386E-09   AT NODE         33   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      6.386E-09
 LARGEST INCREMENT OF DISP.         8.722E-06   AT NODE       1673   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        4.852E-07   AT NODE       1674   DOF  3
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     0.319       TIME AVG. MOMENT      0.281    
 LARGEST SCALED RESIDUAL MOMENT     2.978E-08   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     2.978E-08
 LARGEST INCREMENT OF ROTATION      2.572E-06   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.478E-07   AT NODE       1660   DOF  5
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  15ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     9


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        2.60    
 LARGEST SCALED RESIDUAL FORCE     -9.672E-09   AT NODE       1660   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -9.672E-09
 LARGEST INCREMENT OF DISP.         9.358E-06   AT NODE       1673   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        6.361E-07   AT NODE       1674   DOF  3
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     0.319       TIME AVG. MOMENT      0.281    
 LARGEST SCALED RESIDUAL MOMENT    -3.284E-08   AT NODE       1660   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT    -3.284E-08
 LARGEST INCREMENT OF ROTATION      2.766E-06   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.937E-07   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT


 ***NOTE: THE RATE OF CONVERGENCE IS VERY SLOW. CONVERGENCE IS JUDGED UNLIKELY.


  INCREMENT    72 STARTS. ATTEMPT NUMBER  2
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  15ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        2.60    
 LARGEST SCALED RESIDUAL FORCE     -3.551E-08   AT NODE       1659   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -3.551E-08
 LARGEST INCREMENT OF DISP.         1.901E-06   AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.901E-06   AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     0.319       TIME AVG. MOMENT      0.281    
 LARGEST SCALED RESIDUAL MOMENT     1.477E-07   AT NODE       1659   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     1.477E-07
 LARGEST INCREMENT OF ROTATION      3.115E-07   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     3.115E-07   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF ROTATION CORRECTION   -4.441E-10
          MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  15ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        2.60    
 LARGEST SCALED RESIDUAL FORCE      1.737E-08   AT NODE       1674   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      1.737E-08
 LARGEST INCREMENT OF DISP.         2.652E-06   AT NODE       1673   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.421E-06   AT NODE       1673   DOF  3
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     0.319       TIME AVG. MOMENT      0.281    
 LARGEST SCALED RESIDUAL MOMENT    -7.353E-08   AT NODE       1660   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT    -7.353E-08
 LARGEST INCREMENT OF ROTATION      7.444E-07   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     4.329E-07   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  18ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        2.60    
 LARGEST SCALED RESIDUAL FORCE     -1.732E-08   AT NODE       1659   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -1.732E-08
 LARGEST INCREMENT OF DISP.         4.006E-06   AT NODE       1673   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.354E-06   AT NODE       1673   DOF  3
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     0.319       TIME AVG. MOMENT      0.281    
 LARGEST SCALED RESIDUAL MOMENT    -6.988E-08   AT NODE       1660   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT    -6.988E-08
 LARGEST INCREMENT OF ROTATION      1.157E-06   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     4.123E-07   AT NODE       1660   DOF  5
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  15ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     4


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        2.60    
 LARGEST SCALED RESIDUAL FORCE     -1.356E-08   AT NODE       1660   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -1.356E-08
 LARGEST INCREMENT OF DISP.         5.033E-06   AT NODE       1673   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.027E-06   AT NODE       1674   DOF  3
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     0.319       TIME AVG. MOMENT      0.281    
 LARGEST SCALED RESIDUAL MOMENT    -5.309E-08   AT NODE       1660   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT    -5.309E-08
 LARGEST INCREMENT OF ROTATION      1.470E-06   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     3.129E-07   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  15ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     5


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        2.60    
 LARGEST SCALED RESIDUAL FORCE     -1.241E-08   AT NODE       1659   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -1.241E-08
 LARGEST INCREMENT OF DISP.         6.009E-06   AT NODE       1674   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        9.764E-07   AT NODE       1674   DOF  3
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     0.319       TIME AVG. MOMENT      0.281    
 LARGEST SCALED RESIDUAL MOMENT     5.043E-08   AT NODE       1659   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     5.043E-08
 LARGEST INCREMENT OF ROTATION      1.767E-06   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     2.974E-07   AT NODE       1660   DOF  5
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  15ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     6


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        2.60    
 LARGEST SCALED RESIDUAL FORCE      1.073E-08   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE      1.073E-08
 LARGEST INCREMENT OF DISP.         6.749E-06   AT NODE       1673   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        7.396E-07   AT NODE       1673   DOF  3
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     0.319       TIME AVG. MOMENT      0.281    
 LARGEST SCALED RESIDUAL MOMENT    -3.822E-08   AT NODE       1660   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT    -3.822E-08
 LARGEST INCREMENT OF ROTATION      1.992E-06   AT NODE       1660   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     2.253E-07   AT NODE       1660   DOF  5
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  15ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     7


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        2.60    
 LARGEST SCALED RESIDUAL FORCE     -9.005E-09   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE     -9.005E-09
 LARGEST INCREMENT OF DISP.         7.468E-06   AT NODE       1673   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        7.191E-07   AT NODE       1674   DOF  3
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     0.319       TIME AVG. MOMENT      0.281    
 LARGEST SCALED RESIDUAL MOMENT    -6.973E-08   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT    -6.973E-08
 LARGEST INCREMENT OF ROTATION      2.211E-06   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     2.190E-07   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT


 ***NOTE: THE SOLUTION APPEARS TO BE DIVERGING. CONVERGENCE IS JUDGED UNLIKELY.


  INCREMENT    72 STARTS. ATTEMPT NUMBER  3
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  14ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        2.60    
 LARGEST SCALED RESIDUAL FORCE     -2.395E-08   AT NODE       1659   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -2.395E-08
 LARGEST INCREMENT OF DISP.         3.565E-07   AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        3.565E-07   AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM RESPONSE WAS LINEAR IN THIS INCREMENT

 AVERAGE MOMENT                     0.319       TIME AVG. MOMENT      0.281    
 LARGEST SCALED RESIDUAL MOMENT     1.041E-07   AT NODE       1659   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     1.041E-07
 LARGEST INCREMENT OF ROTATION      5.840E-08   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     5.840E-08   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF ROTATION CORRECTION   -3.144E-10
          MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION
          ARC LENGTH INCREMENT MAY NOW INCREASE TO    5.886E-08

 ITERATION SUMMARY FOR THE INCREMENT:   1 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  1 ARE EQUILIBRIUM ITERATIONS.


                                INCREMENT    72 SUMMARY


     CURRENT LOAD PROPORTIONALITY FACTOR          1.184    
     TOTAL ARC LENGTH    1.95    , INCREMENT OF ARC LENGTH   3.924E-08


  INCREMENT    73 STARTS. ATTEMPT NUMBER  1
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  19ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        2.60    
 LARGEST SCALED RESIDUAL FORCE     -2.939E-08   AT NODE       1659   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -2.939E-08
 LARGEST INCREMENT OF DISP.         5.348E-07   AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        5.348E-07   AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     0.319       TIME AVG. MOMENT      0.282    
 LARGEST SCALED RESIDUAL MOMENT     1.192E-07   AT NODE       1659   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     1.192E-07
 LARGEST INCREMENT OF ROTATION      8.760E-08   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     8.760E-08   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF ROTATION CORRECTION   -3.600E-10
          MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  16ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        2.60    
 LARGEST SCALED RESIDUAL FORCE     -1.864E-08   AT NODE       1660   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -1.864E-08
 LARGEST INCREMENT OF DISP.         1.803E-06   AT NODE       1673   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.456E-06   AT NODE       1673   DOF  3
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     0.319       TIME AVG. MOMENT      0.282    
 LARGEST SCALED RESIDUAL MOMENT    -7.530E-08   AT NODE       1660   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT    -7.530E-08
 LARGEST INCREMENT OF ROTATION      5.312E-07   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     4.436E-07   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  15ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        2.60    
 LARGEST SCALED RESIDUAL FORCE     -1.321E-08   AT NODE       1660   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -1.321E-08
 LARGEST INCREMENT OF DISP.         2.863E-06   AT NODE       1673   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.060E-06   AT NODE       1674   DOF  3
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     0.319       TIME AVG. MOMENT      0.282    
 LARGEST SCALED RESIDUAL MOMENT     5.476E-08   AT NODE       1659   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     5.476E-08
 LARGEST INCREMENT OF ROTATION      8.542E-07   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     3.229E-07   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  17ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     4


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        2.60    
 LARGEST SCALED RESIDUAL FORCE     -1.428E-08   AT NODE       1659   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -1.428E-08
 LARGEST INCREMENT OF DISP.         3.946E-06   AT NODE       1673   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.083E-06   AT NODE       1673   DOF  3
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     0.319       TIME AVG. MOMENT      0.282    
 LARGEST SCALED RESIDUAL MOMENT     1.403E-07   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     1.403E-07
 LARGEST INCREMENT OF ROTATION      1.184E-06   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     3.298E-07   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT


 ***NOTE: THE SOLUTION APPEARS TO BE DIVERGING. CONVERGENCE IS JUDGED UNLIKELY.


  INCREMENT    73 STARTS. ATTEMPT NUMBER  2
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  15ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        2.60    
 LARGEST SCALED RESIDUAL FORCE     -2.693E-08   AT NODE       1659   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -2.693E-08
 LARGEST INCREMENT OF DISP.         2.005E-07   AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        2.005E-07   AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     0.319       TIME AVG. MOMENT      0.282    
 LARGEST SCALED RESIDUAL MOMENT     1.098E-07   AT NODE       1659   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     1.098E-07
 LARGEST INCREMENT OF ROTATION      3.285E-08   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     3.285E-08   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  15ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        2.60    
 LARGEST SCALED RESIDUAL FORCE     -1.812E-08   AT NODE       1659   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -1.812E-08
 LARGEST INCREMENT OF DISP.         1.594E-06   AT NODE       1674   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.464E-06   AT NODE       1674   DOF  3
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     0.319       TIME AVG. MOMENT      0.282    
 LARGEST SCALED RESIDUAL MOMENT     7.567E-08   AT NODE       1659   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     7.567E-08
 LARGEST INCREMENT OF ROTATION      4.788E-07   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     4.459E-07   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  17ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        2.60    
 LARGEST SCALED RESIDUAL FORCE     -1.305E-08   AT NODE       1660   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -1.305E-08
 LARGEST INCREMENT OF DISP.         2.560E-06   AT NODE       1673   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        9.669E-07   AT NODE       1673   DOF  3
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     0.319       TIME AVG. MOMENT      0.282    
 LARGEST SCALED RESIDUAL MOMENT    -9.389E-08   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT    -9.389E-08
 LARGEST INCREMENT OF ROTATION      7.732E-07   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     2.944E-07   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  15ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     4


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        2.60    
 LARGEST SCALED RESIDUAL FORCE     -1.400E-08   AT NODE       1660   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -1.400E-08
 LARGEST INCREMENT OF DISP.         3.659E-06   AT NODE       1673   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.098E-06   AT NODE       1674   DOF  3
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     0.319       TIME AVG. MOMENT      0.282    
 LARGEST SCALED RESIDUAL MOMENT     6.501E-08   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     6.501E-08
 LARGEST INCREMENT OF ROTATION      1.108E-06   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     3.344E-07   AT NODE       1660   DOF  5
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  15ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     5


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        2.60    
 LARGEST SCALED RESIDUAL FORCE     -8.439E-09   AT NODE       1659   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -8.439E-09
 LARGEST INCREMENT OF DISP.         4.320E-06   AT NODE       1673   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        6.614E-07   AT NODE       1673   DOF  3
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     0.319       TIME AVG. MOMENT      0.282    
 LARGEST SCALED RESIDUAL MOMENT    -3.420E-08   AT NODE       1660   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT    -3.420E-08
 LARGEST INCREMENT OF ROTATION      1.309E-06   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     2.015E-07   AT NODE       1660   DOF  5
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  16ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     6


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        2.60    
 LARGEST SCALED RESIDUAL FORCE     -1.166E-08   AT NODE       1660   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -1.166E-08
 LARGEST INCREMENT OF DISP.         5.149E-06   AT NODE       1674   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        8.286E-07   AT NODE       1674   DOF  3
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     0.319       TIME AVG. MOMENT      0.282    
 LARGEST SCALED RESIDUAL MOMENT    -4.278E-08   AT NODE       1660   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT    -4.278E-08
 LARGEST INCREMENT OF ROTATION      1.561E-06   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     2.523E-07   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  18ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     7


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        2.60    
 LARGEST SCALED RESIDUAL FORCE      1.131E-08   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE      1.131E-08
 LARGEST INCREMENT OF DISP.         5.603E-06   AT NODE       1674   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        4.547E-07   AT NODE       1674   DOF  3
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     0.319       TIME AVG. MOMENT      0.282    
 LARGEST SCALED RESIDUAL MOMENT     2.352E-08   AT NODE       1659   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     2.352E-08
 LARGEST INCREMENT OF ROTATION      1.700E-06   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.385E-07   AT NODE       1660   DOF  5
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  15ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     8


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        2.60    
 LARGEST SCALED RESIDUAL FORCE     -6.914E-09   AT NODE       1659   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -6.914E-09
 LARGEST INCREMENT OF DISP.         6.231E-06   AT NODE       1674   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        6.276E-07   AT NODE       1673   DOF  3
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     0.319       TIME AVG. MOMENT      0.282    
 LARGEST SCALED RESIDUAL MOMENT    -3.239E-08   AT NODE       1660   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT    -3.239E-08
 LARGEST INCREMENT OF ROTATION      1.891E-06   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.911E-07   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  16ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     9


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        2.60    
 LARGEST SCALED RESIDUAL FORCE     -1.286E-08   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE     -1.286E-08
 LARGEST INCREMENT OF DISP.         6.539E-06   AT NODE       1673   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        3.084E-07   AT NODE       1673   DOF  3
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     0.319       TIME AVG. MOMENT      0.282    
 LARGEST SCALED RESIDUAL MOMENT     1.596E-08   AT NODE       1659   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     1.596E-08
 LARGEST INCREMENT OF ROTATION      1.985E-06   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     9.396E-08   AT NODE       1660   DOF  5
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  21ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION    10


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        2.60    
 LARGEST SCALED RESIDUAL FORCE      1.989E-08   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE      1.989E-08
 LARGEST INCREMENT OF DISP.         7.018E-06   AT NODE       1674   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        4.788E-07   AT NODE       1674   DOF  3
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     0.319       TIME AVG. MOMENT      0.282    
 LARGEST SCALED RESIDUAL MOMENT    -6.412E-08   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT    -6.412E-08
 LARGEST INCREMENT OF ROTATION      2.131E-06   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.458E-07   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT


 ***NOTE: THE SOLUTION APPEARS TO BE DIVERGING. CONVERGENCE IS JUDGED UNLIKELY.


  INCREMENT    73 STARTS. ATTEMPT NUMBER  3
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  15ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        2.60    
 LARGEST SCALED RESIDUAL FORCE     -2.611E-08   AT NODE       1659   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -2.611E-08
 LARGEST INCREMENT OF DISP.         5.111E-08   AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        5.111E-08   AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     0.319       TIME AVG. MOMENT      0.282    
 LARGEST SCALED RESIDUAL MOMENT     1.056E-07   AT NODE       1659   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     1.056E-07
 LARGEST INCREMENT OF ROTATION      8.372E-09   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     8.372E-09   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  16ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        2.60    
 LARGEST SCALED RESIDUAL FORCE     -1.909E-08   AT NODE       1660   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -1.909E-08
 LARGEST INCREMENT OF DISP.         1.495E-06   AT NODE       1674   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.462E-06   AT NODE       1674   DOF  3
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     0.319       TIME AVG. MOMENT      0.282    
 LARGEST SCALED RESIDUAL MOMENT    -7.538E-08   AT NODE       1660   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT    -7.538E-08
 LARGEST INCREMENT OF ROTATION      4.525E-07   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     4.442E-07   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  16ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        2.60    
 LARGEST SCALED RESIDUAL FORCE     -1.426E-08   AT NODE       1659   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -1.426E-08
 LARGEST INCREMENT OF DISP.         2.452E-06   AT NODE       1673   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        9.566E-07   AT NODE       1673   DOF  3
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     0.319       TIME AVG. MOMENT      0.282    
 LARGEST SCALED RESIDUAL MOMENT     4.941E-08   AT NODE       1659   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     4.941E-08
 LARGEST INCREMENT OF ROTATION      7.438E-07   AT NODE       1660   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     2.913E-07   AT NODE       1660   DOF  5
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  14ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     4


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        2.60    
 LARGEST SCALED RESIDUAL FORCE     -1.166E-08   AT NODE       1155   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -1.166E-08
 LARGEST INCREMENT OF DISP.         3.542E-06   AT NODE       1674   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.090E-06   AT NODE       1674   DOF  3
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     0.319       TIME AVG. MOMENT      0.282    
 LARGEST SCALED RESIDUAL MOMENT    -5.628E-08   AT NODE       1660   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT    -5.628E-08
 LARGEST INCREMENT OF ROTATION      1.076E-06   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     3.320E-07   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  15ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     5


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        2.60    
 LARGEST SCALED RESIDUAL FORCE     -1.028E-08   AT NODE       1660   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -1.028E-08
 LARGEST INCREMENT OF DISP.         4.196E-06   AT NODE       1673   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        6.540E-07   AT NODE       1673   DOF  3
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     0.319       TIME AVG. MOMENT      0.282    
 LARGEST SCALED RESIDUAL MOMENT     3.382E-08   AT NODE       1659   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     3.382E-08
 LARGEST INCREMENT OF ROTATION      1.275E-06   AT NODE       1660   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.992E-07   AT NODE       1660   DOF  5
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  17ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     6


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        2.60    
 LARGEST SCALED RESIDUAL FORCE     -9.408E-09   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE     -9.408E-09
 LARGEST INCREMENT OF DISP.         5.016E-06   AT NODE       1673   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        8.202E-07   AT NODE       1674   DOF  3
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     0.319       TIME AVG. MOMENT      0.282    
 LARGEST SCALED RESIDUAL MOMENT    -4.235E-08   AT NODE       1660   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT    -4.235E-08
 LARGEST INCREMENT OF ROTATION      1.525E-06   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     2.498E-07   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  15ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     7


 AVERAGE FORCE                       2.71       TIME AVG. FORCE        2.60    
 LARGEST SCALED RESIDUAL FORCE      2.176E-08   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE      2.176E-08
 LARGEST INCREMENT OF DISP.         5.465E-06   AT NODE       1674   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        4.492E-07   AT NODE       1674   DOF  3
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     0.319       TIME AVG. MOMENT      0.282    
 LARGEST SCALED RESIDUAL MOMENT     9.334E-08   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     9.334E-08
 LARGEST INCREMENT OF ROTATION      1.662E-06   AT NODE       1659   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.368E-07   AT NODE       1660   DOF  5
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT


 ***NOTE: THE SOLUTION APPEARS TO BE DIVERGING. CONVERGENCE IS JUDGED UNLIKELY.


 ***ERROR: TIME INCREMENT REQUIRED IS LESS THAN THE MINIMUM SPECIFIED

 ***ERROR: THE ANALYSIS HAS BEEN TERMINATED DUE TO PREVIOUS ERRORS. ALL OUTPUT 
           REQUESTS HAVE BEEN WRITTEN FOR THE LAST CONVERGED INCREMENT.



     ANALYSIS SUMMARY:
     TOTAL OF         73  INCREMENTS
                      25  CUTBACKS IN AUTOMATIC INCREMENTATION
                     458  ITERATIONS INCLUDING CONTACT ITERATIONS IF PRESENT
                     458  PASSES THROUGH THE EQUATION SOLVER OF WHICH 
                     458  INVOLVE MATRIX DECOMPOSITION, INCLUDING
                       0  DECOMPOSITION(S) OF THE MASS MATRIX
                       1  REORDERING OF EQUATIONS TO MINIMIZE WAVEFRONT
                       0  ADDITIONAL RESIDUAL EVALUATIONS FOR LINE SEARCHES
                       0  ADDITIONAL OPERATOR EVALUATIONS FOR LINE SEARCHES
                       0  WARNING MESSAGES DURING USER INPUT PROCESSING
                     377  WARNING MESSAGES DURING ANALYSIS
                       0  ANALYSIS WARNINGS ARE NUMERICAL PROBLEM MESSAGES
                     377  ANALYSIS WARNINGS ARE NEGATIVE EIGENVALUE MESSAGES
                       2  ERROR MESSAGES



     JOB TIME SUMMARY
       USER TIME (SEC)      =       1.E+02
       SYSTEM TIME (SEC)    =       3.E+01
       TOTAL CPU TIME (SEC) =       2.E+02
       WALLCLOCK TIME (SEC) =           40
       MEMORY PEAK (GB)     =            0
