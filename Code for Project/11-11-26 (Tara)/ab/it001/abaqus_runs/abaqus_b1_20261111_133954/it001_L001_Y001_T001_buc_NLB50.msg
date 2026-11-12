1

   Abaqus 2026                                  Date 11-Nov-2026   Time 13:41:05
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
                              1            280
                              2            320
                              3            360
                              4            320
                              5            280
                              6            320
                              7            360
                              8            360
      SPARSE STORAGE WAS USED FOR NODAL DATA ON WORKER THREADS
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  59ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      0.405       TIME AVG. FORCE       0.405    
 LARGEST SCALED RESIDUAL FORCE      -16.9       AT NODE          2   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE      -16.9    
 LARGEST INCREMENT OF DISP.         -2.84       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        -2.84       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     7.964E-03   TIME AVG. MOMENT      7.964E-03
 LARGEST SCALED RESIDUAL MOMENT     -1.20       AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     -1.20    
 LARGEST INCREMENT OF ROTATION      5.689E-03   AT NODE         17   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     5.689E-03   AT NODE         17   DOF  5
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  50ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                      0.408       TIME AVG. FORCE       0.408    
 LARGEST SCALED RESIDUAL FORCE     -1.849E-02   AT NODE       1820   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -1.849E-02
 LARGEST INCREMENT OF DISP.         -2.85       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -5.608E-02   AT NODE       1708   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     7.096E-03   TIME AVG. MOMENT      7.096E-03
 LARGEST SCALED RESIDUAL MOMENT     1.521E-03   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     1.521E-03
 LARGEST INCREMENT OF ROTATION      5.701E-03   AT NODE          2   DOF  5
   INSTANCE: {assembly node}                                                                 
 LARGEST CORRECTION TO ROTATION     3.218E-03   AT NODE       1635   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  50ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                      0.407       TIME AVG. FORCE       0.407    
 LARGEST SCALED RESIDUAL FORCE     -1.554E-02   AT NODE        967   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -1.554E-02
 LARGEST INCREMENT OF DISP.         -2.85       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        3.811E-02   AT NODE       1023   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     7.124E-03   TIME AVG. MOMENT      7.124E-03
 LARGEST SCALED RESIDUAL MOMENT    -5.992E-04   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT    -5.992E-04
 LARGEST INCREMENT OF ROTATION      5.710E-03   AT NODE         36   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -2.635E-03   AT NODE        967   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  52ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     4


 AVERAGE FORCE                      0.407       TIME AVG. FORCE       0.407    
 LARGEST SCALED RESIDUAL FORCE     -3.488E-03   AT NODE       1554   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -3.488E-03
 LARGEST INCREMENT OF DISP.         -2.86       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.858E-02   AT NODE       1513   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     7.141E-03   TIME AVG. MOMENT      7.141E-03
 LARGEST SCALED RESIDUAL MOMENT    -4.294E-05   AT NODE       1917   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT    -4.294E-05
 LARGEST INCREMENT OF ROTATION     -5.743E-03   AT NODE       1431   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.242E-03   AT NODE       1568   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  48ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     5


 AVERAGE FORCE                      0.407       TIME AVG. FORCE       0.407    
 LARGEST SCALED RESIDUAL FORCE     -4.928E-04   AT NODE       1205   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -4.928E-04
 LARGEST INCREMENT OF DISP.         -2.86       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -6.285E-03   AT NODE       1232   DOF  2
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     7.147E-03   TIME AVG. MOMENT      7.147E-03
 LARGEST SCALED RESIDUAL MOMENT    -3.890E-06   AT NODE       1651   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT    -3.890E-06
 LARGEST INCREMENT OF ROTATION      6.120E-03   AT NODE       1413   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -4.739E-04   AT NODE       1205   DOF  4
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF ROTATION CORRECTION   -4.293E-05
          MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 ITERATION SUMMARY FOR THE INCREMENT:   5 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  5 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  0.100    ,  FRACTION OF STEP COMPLETED  0.100    
 STEP TIME COMPLETED       0.100    ,  TOTAL TIME COMPLETED        0.100    


  INCREMENT     2 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  0.100    
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  49ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      0.836       TIME AVG. FORCE       0.621    
 LARGEST SCALED RESIDUAL FORCE     -0.226       AT NODE       1414   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -0.226    
 LARGEST INCREMENT OF DISP.         -2.91       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        0.179       AT NODE       1401   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.230       TIME AVG. MOMENT      0.119    
 LARGEST SCALED RESIDUAL MOMENT    -0.601       AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT    -0.601    
 LARGEST INCREMENT OF ROTATION      1.607E-02   AT NODE       1412   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -9.984E-03   AT NODE       1403   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  49ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                      0.825       TIME AVG. FORCE       0.616    
 LARGEST SCALED RESIDUAL FORCE     -1.873E-03   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE     -1.873E-03
 LARGEST INCREMENT OF DISP.         -2.93       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -1.565E-02   AT NODE         27   DOF  3
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     0.252       TIME AVG. MOMENT      0.129    
 LARGEST SCALED RESIDUAL MOMENT    -2.010E-03   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT    -2.010E-03
 LARGEST INCREMENT OF ROTATION      1.591E-02   AT NODE       1412   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     3.181E-04   AT NODE         15   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  47ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                      0.825       TIME AVG. FORCE       0.616    
 LARGEST SCALED RESIDUAL FORCE     -5.268E-03   AT NODE       1415   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -5.268E-03
 LARGEST INCREMENT OF DISP.         -2.92       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        2.282E-02   AT NODE       1428   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.259       TIME AVG. MOMENT      0.133    
 LARGEST SCALED RESIDUAL MOMENT     6.283E-05   AT NODE       1878   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     6.283E-05
 LARGEST INCREMENT OF ROTATION      1.458E-02   AT NODE       1412   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -1.526E-03   AT NODE       1428   DOF  4
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF ROTATION CORRECTION    4.771E-05
          MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  50ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     4


 AVERAGE FORCE                      0.825       TIME AVG. FORCE       0.616    
 LARGEST SCALED RESIDUAL FORCE     -6.854E-09   AT NODE       1527   DOF  2
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -6.854E-09
 LARGEST INCREMENT OF DISP.         -2.92       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        3.671E-05   AT NODE       1442   DOF  2
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     0.259       TIME AVG. MOMENT      0.133    
 LARGEST SCALED RESIDUAL MOMENT     1.071E-07   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     1.071E-07
 LARGEST INCREMENT OF ROTATION     -1.458E-02   AT NODE       1403   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.925E-06   AT NODE       1793   DOF  4
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

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       1.25       TIME AVG. FORCE       0.828    
 LARGEST SCALED RESIDUAL FORCE     -0.131       AT NODE         16   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -0.131    
 LARGEST INCREMENT OF DISP.         -3.03       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -0.123       AT NODE       1414   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.250       TIME AVG. MOMENT      0.172    
 LARGEST SCALED RESIDUAL MOMENT    -0.677       AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT    -0.677    
 LARGEST INCREMENT OF ROTATION      2.154E-02   AT NODE       1412   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     7.272E-03   AT NODE       1411   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  49ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       1.25       TIME AVG. FORCE       0.828    
 LARGEST SCALED RESIDUAL FORCE     -1.824E-03   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE     -1.824E-03
 LARGEST INCREMENT OF DISP.         -3.05       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -1.859E-02   AT NODE         16   DOF  3
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     0.262       TIME AVG. MOMENT      0.176    
 LARGEST SCALED RESIDUAL MOMENT     8.131E-04   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     8.131E-04
 LARGEST INCREMENT OF ROTATION      2.138E-02   AT NODE       1412   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     3.875E-04   AT NODE         15   DOF  4
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF ROTATION CORRECTION    7.801E-07
          MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 ITERATION SUMMARY FOR THE INCREMENT:   2 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  2 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  0.100    ,  FRACTION OF STEP COMPLETED  0.300    
 STEP TIME COMPLETED       0.300    ,  TOTAL TIME COMPLETED        0.300    


  INCREMENT     4 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  0.100    
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  52ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       1.70       TIME AVG. FORCE        1.05    
 LARGEST SCALED RESIDUAL FORCE     -0.143       AT NODE         27   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -0.143    
 LARGEST INCREMENT OF DISP.         -3.21       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -0.164       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.212       TIME AVG. MOMENT      0.185    
 LARGEST SCALED RESIDUAL MOMENT    -0.802       AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT    -0.802    
 LARGEST INCREMENT OF ROTATION     -2.817E-02   AT NODE       1404   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -6.808E-03   AT NODE       1404   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  48ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       1.70       TIME AVG. FORCE        1.05    
 LARGEST SCALED RESIDUAL FORCE     -2.207E-03   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE     -2.207E-03
 LARGEST INCREMENT OF DISP.         -3.24       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -2.361E-02   AT NODE         16   DOF  3
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     0.231       TIME AVG. MOMENT      0.190    
 LARGEST SCALED RESIDUAL MOMENT     2.863E-03   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     2.863E-03
 LARGEST INCREMENT OF ROTATION     -2.817E-02   AT NODE       1404   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     4.347E-04   AT NODE         15   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  47ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       1.70       TIME AVG. FORCE        1.05    
 LARGEST SCALED RESIDUAL FORCE     -6.693E-05   AT NODE       1442   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -6.693E-05
 LARGEST INCREMENT OF DISP.         -3.24       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -1.589E-03   AT NODE       1457   DOF  2
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     0.232       TIME AVG. MOMENT      0.190    
 LARGEST SCALED RESIDUAL MOMENT    -5.301E-07   AT NODE         27   DOF  4
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT    -5.301E-07
 LARGEST INCREMENT OF ROTATION     -2.814E-02   AT NODE       1404   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.793E-04   AT NODE       1415   DOF  4
   INSTANCE: SHELL-1                                                                         
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED

 ITERATION SUMMARY FOR THE INCREMENT:   3 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  3 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  0.100    ,  FRACTION OF STEP COMPLETED  0.400    
 STEP TIME COMPLETED       0.400    ,  TOTAL TIME COMPLETED        0.400    


  INCREMENT     5 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  0.100    
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  51ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       2.18       TIME AVG. FORCE        1.27    
 LARGEST SCALED RESIDUAL FORCE     -0.211       AT NODE       1387   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -0.211    
 LARGEST INCREMENT OF DISP.         -3.51       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -0.276       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.176       TIME AVG. MOMENT      0.187    
 LARGEST SCALED RESIDUAL MOMENT     -1.04       AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     -1.04    
 LARGEST INCREMENT OF ROTATION     -3.969E-02   AT NODE       1404   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.155E-02   AT NODE       1411   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  46ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       2.18       TIME AVG. FORCE        1.27    
 LARGEST SCALED RESIDUAL FORCE     -4.637E-03   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE     -4.637E-03
 LARGEST INCREMENT OF DISP.         -3.56       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -5.133E-02   AT NODE         16   DOF  3
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF DISP.    CORRECTION   -1.127E-03
          FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                     0.240       TIME AVG. MOMENT      0.200    
 LARGEST SCALED RESIDUAL MOMENT     1.597E-02   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     1.597E-02
 LARGEST INCREMENT OF ROTATION      3.972E-02   AT NODE       1411   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     4.685E-04   AT NODE         15   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  49ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       2.18       TIME AVG. FORCE        1.27    
 LARGEST SCALED RESIDUAL FORCE     -4.332E-04   AT NODE       1345   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -4.332E-04
 LARGEST INCREMENT OF DISP.         -3.57       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -3.435E-03   AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     0.240       TIME AVG. MOMENT      0.200    
 LARGEST SCALED RESIDUAL MOMENT    -5.336E-06   AT NODE       1318   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT    -5.336E-06
 LARGEST INCREMENT OF ROTATION     -3.989E-02   AT NODE       1404   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     4.780E-04   AT NODE       1345   DOF  4
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF ROTATION CORRECTION   -1.597E-07
          MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 ITERATION SUMMARY FOR THE INCREMENT:   3 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  3 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  0.100    ,  FRACTION OF STEP COMPLETED  0.500    
 STEP TIME COMPLETED       0.500    ,  TOTAL TIME COMPLETED        0.500    


  INCREMENT     6 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  0.100    
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  39ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       2.78       TIME AVG. FORCE        1.52    
 LARGEST SCALED RESIDUAL FORCE      -1.02       AT NODE       1359   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      -1.02    
 LARGEST INCREMENT OF DISP.         -4.15       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -0.578       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.115       TIME AVG. MOMENT      0.186    
 LARGEST SCALED RESIDUAL MOMENT     -1.59       AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     -1.59    
 LARGEST INCREMENT OF ROTATION     -6.476E-02   AT NODE       1404   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -2.487E-02   AT NODE       1390   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  49ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       2.73       TIME AVG. FORCE        1.52    
 LARGEST SCALED RESIDUAL FORCE     -3.211E-02   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE     -3.211E-02
 LARGEST INCREMENT OF DISP.         -4.30       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -0.153       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.230       TIME AVG. MOMENT      0.205    
 LARGEST SCALED RESIDUAL MOMENT     8.177E-02   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     8.177E-02
 LARGEST INCREMENT OF ROTATION     -6.478E-02   AT NODE       1404   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -1.373E-03   AT NODE       1274   DOF  5
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  48ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       2.74       TIME AVG. FORCE        1.52    
 LARGEST SCALED RESIDUAL FORCE     -1.216E-02   AT NODE       1390   DOF  2
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -1.216E-02
 LARGEST INCREMENT OF DISP.         -4.35       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -5.229E-02   AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.221       TIME AVG. MOMENT      0.204    
 LARGEST SCALED RESIDUAL MOMENT     6.162E-04   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     6.162E-04
 LARGEST INCREMENT OF ROTATION      6.677E-02   AT NODE       1411   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     3.299E-03   AT NODE       1396   DOF  4
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF ROTATION CORRECTION    2.486E-05
          MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  50ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     4


 AVERAGE FORCE                       2.74       TIME AVG. FORCE        1.52    
 LARGEST SCALED RESIDUAL FORCE     -4.063E-07   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE     -4.063E-07
 LARGEST INCREMENT OF DISP.         -4.35       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -4.518E-04   AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     0.221       TIME AVG. MOMENT      0.204    
 LARGEST SCALED RESIDUAL MOMENT     4.513E-07   AT NODE       1380   DOF  4
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     4.513E-07
 LARGEST INCREMENT OF ROTATION      6.678E-02   AT NODE       1411   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -1.513E-05   AT NODE       1461   DOF  4
   INSTANCE: SHELL-1                                                                         
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED

 ITERATION SUMMARY FOR THE INCREMENT:   4 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  4 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  0.100    ,  FRACTION OF STEP COMPLETED  0.600    
 STEP TIME COMPLETED       0.600    ,  TOTAL TIME COMPLETED        0.600    


  INCREMENT     7 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  0.100    
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  49ms


 ***WARNING: THE SYSTEM MATRIX HAS 1 NEGATIVE EIGENVALUES.

     NEGATIVE EIGENVALUES MEAN THAT THE SYSTEM MATRIX IS NOT 
     POSITIVE DEFINITE:
     FOR EXAMPLE, A BIFURCATION (BUCKLING) LOAD MAY HAVE BEEN EXCEEDED.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       310.       TIME AVG. FORCE        45.5    
 LARGEST SCALED RESIDUAL FORCE     -3.680E+03   AT NODE       1261   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -3.680E+03
 LARGEST INCREMENT OF DISP.         -28.9       AT NODE       1219   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        -29.9       AT NODE       1219   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                      352.       TIME AVG. MOMENT       50.5    
 LARGEST SCALED RESIDUAL MOMENT    -1.486E+04   AT NODE       1402   DOF  4
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT    -1.486E+04
 LARGEST INCREMENT OF ROTATION       4.69       AT NODE       1678   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION      2.35       AT NODE       1191   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  47ms


 ***WARNING: THE SYSTEM MATRIX HAS 2644 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                      1.071E+07   TIME AVG. FORCE       1.530E+06
 LARGEST SCALED RESIDUAL FORCE     -1.324E+10   AT NODE       1573   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -1.324E+10
 LARGEST INCREMENT OF DISP.         -647.       AT NODE       1671   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        -643.       AT NODE       1671   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     7.613E+04   TIME AVG. MOMENT      1.088E+04
 LARGEST SCALED RESIDUAL MOMENT     4.943E+07   AT NODE       1587   DOF  4
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     4.943E+07
 LARGEST INCREMENT OF ROTATION       6.00       AT NODE       2191   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -1.304E+03   AT NODE        820   DOF  6
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  51ms


 ***WARNING: THE SYSTEM MATRIX HAS 6071 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                      1.467E+10   TIME AVG. FORCE       2.096E+09
 LARGEST SCALED RESIDUAL FORCE      6.760E+13   AT NODE       1659   DOF  2
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      6.760E+13
 LARGEST INCREMENT OF DISP.         1.843E+03   AT NODE         94   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.851E+03   AT NODE         94   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     3.018E+06   TIME AVG. MOMENT      4.311E+05
 LARGEST SCALED RESIDUAL MOMENT    -6.047E+08   AT NODE       1645   DOF  4
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT    -6.047E+08
 LARGEST INCREMENT OF ROTATION      -5.23       AT NODE       2091   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -2.675E+03   AT NODE       2780   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  48ms


 ***WARNING: THE SYSTEM MATRIX HAS 7709 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     4


 AVERAGE FORCE                      2.517E+09   TIME AVG. FORCE       3.596E+08
 LARGEST SCALED RESIDUAL FORCE      8.903E+12   AT NODE       1659   DOF  2
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      8.903E+12
 LARGEST INCREMENT OF DISP.        -1.774E+03   AT NODE        190   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -1.669E+03   AT NODE        190   DOF  1
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     1.639E+06   TIME AVG. MOMENT      2.342E+05
 LARGEST SCALED RESIDUAL MOMENT     1.722E+08   AT NODE       2485   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     1.722E+08
 LARGEST INCREMENT OF ROTATION      -5.91       AT NODE       1339   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION      369.       AT NODE       2506   DOF  6
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  48ms


 ***WARNING: THE SYSTEM MATRIX HAS 7676 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     5


 AVERAGE FORCE                      4.451E+09   TIME AVG. FORCE       6.358E+08
 LARGEST SCALED RESIDUAL FORCE      1.789E+13   AT NODE       2702   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      1.789E+13
 LARGEST INCREMENT OF DISP.        -4.072E+03   AT NODE       2702   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -4.022E+03   AT NODE       2702   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     1.092E+06   TIME AVG. MOMENT      1.560E+05
 LARGEST SCALED RESIDUAL MOMENT    -3.480E+08   AT NODE       2702   DOF  4
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT    -3.480E+08
 LARGEST INCREMENT OF ROTATION       5.61       AT NODE       1173   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     -225.       AT NODE       2142   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  51ms


 ***WARNING: THE SYSTEM MATRIX HAS 7585 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     6


 AVERAGE FORCE                      8.197E+08   TIME AVG. FORCE       1.171E+08
 LARGEST SCALED RESIDUAL FORCE      2.358E+12   AT NODE       2702   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      2.358E+12
 LARGEST INCREMENT OF DISP.        -2.732E+03   AT NODE       2702   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.340E+03   AT NODE       2702   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     9.313E+05   TIME AVG. MOMENT      1.330E+05
 LARGEST SCALED RESIDUAL MOMENT     2.497E+08   AT NODE       2716   DOF  5
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     2.497E+08
 LARGEST INCREMENT OF ROTATION      -5.30       AT NODE        798   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     -449.       AT NODE       2072   DOF  5
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  48ms


 ***WARNING: THE SYSTEM MATRIX HAS 7501 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     7


 AVERAGE FORCE                      1.024E+19   TIME AVG. FORCE       1.462E+18
 LARGEST SCALED RESIDUAL FORCE      2.056E+22   AT NODE       1996   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      2.056E+22
 LARGEST INCREMENT OF DISP.        -2.045E+05   AT NODE       1997   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -2.045E+05   AT NODE       1997   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     5.292E+09   TIME AVG. MOMENT      7.560E+08
 LARGEST SCALED RESIDUAL MOMENT     1.420E+14   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     1.420E+14
 LARGEST INCREMENT OF ROTATION       5.61       AT NODE        412   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     7.682E+04   AT NODE       2506   DOF  6
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.


 ***NOTE: THE SOLUTION APPEARS TO BE DIVERGING. CONVERGENCE IS JUDGED UNLIKELY.


  INCREMENT     7 STARTS. ATTEMPT NUMBER  2, TIME INCREMENT  2.500E-02
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  47ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       2.91       TIME AVG. FORCE        1.72    
 LARGEST SCALED RESIDUAL FORCE     -0.166       AT NODE       1401   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -0.166    
 LARGEST INCREMENT OF DISP.         -1.41       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -0.319       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.222       TIME AVG. MOMENT      0.206    
 LARGEST SCALED RESIDUAL MOMENT    -7.580E-02   AT NODE         22   DOF  5
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT    -7.580E-02
 LARGEST INCREMENT OF ROTATION      2.862E-02   AT NODE       1411   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -1.193E-02   AT NODE       1405   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  45ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       2.91       TIME AVG. FORCE        1.72    
 LARGEST SCALED RESIDUAL FORCE     -1.301E-03   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE     -1.301E-03
 LARGEST INCREMENT OF DISP.         -1.44       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -2.950E-02   AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF DISP.    CORRECTION   -2.314E-04
          FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                     0.232       TIME AVG. MOMENT      0.208    
 LARGEST SCALED RESIDUAL MOMENT     3.723E-03   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     3.723E-03
 LARGEST INCREMENT OF ROTATION     -2.878E-02   AT NODE       1404   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     2.885E-04   AT NODE       1423   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  55ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       2.91       TIME AVG. FORCE        1.72    
 LARGEST SCALED RESIDUAL FORCE     -5.430E-03   AT NODE       1359   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -5.430E-03
 LARGEST INCREMENT OF DISP.         -1.48       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -4.284E-02   AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     0.230       TIME AVG. MOMENT      0.207    
 LARGEST SCALED RESIDUAL MOMENT     3.930E-04   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     3.930E-04
 LARGEST INCREMENT OF ROTATION      3.092E-02   AT NODE       1411   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -2.189E-03   AT NODE       1405   DOF  4
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF ROTATION CORRECTION   -2.311E-04
          MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  53ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     4


 AVERAGE FORCE                       2.91       TIME AVG. FORCE        1.72    
 LARGEST SCALED RESIDUAL FORCE     -7.470E-07   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE     -7.470E-07
 LARGEST INCREMENT OF DISP.         -1.48       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -5.869E-04   AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     0.230       TIME AVG. MOMENT      0.207    
 LARGEST SCALED RESIDUAL MOMENT    -2.670E-07   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT    -2.670E-07
 LARGEST INCREMENT OF ROTATION      3.094E-02   AT NODE       1411   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     2.614E-05   AT NODE       1410   DOF  4
   INSTANCE: SHELL-1                                                                         
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED

 ITERATION SUMMARY FOR THE INCREMENT:   4 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  4 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  2.500E-02,  FRACTION OF STEP COMPLETED  0.625    
 STEP TIME COMPLETED       0.625    ,  TOTAL TIME COMPLETED        0.625    


  INCREMENT     8 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  3.750E-02
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  51ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       3.88       TIME AVG. FORCE        1.99    
 LARGEST SCALED RESIDUAL FORCE      -6.06       AT NODE          2   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE      -6.06    
 LARGEST INCREMENT OF DISP.         -3.89       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        -1.67       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.110       TIME AVG. MOMENT      0.195    
 LARGEST SCALED RESIDUAL MOMENT     0.444       AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     0.444    
 LARGEST INCREMENT OF ROTATION     -0.117       AT NODE       1405   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -7.116E-02   AT NODE       1405   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  51ms


 ***WARNING: THE SYSTEM MATRIX HAS 10 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       3.34       TIME AVG. FORCE        1.92    
 LARGEST SCALED RESIDUAL FORCE     -0.207       AT NODE          2   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE     -0.207    
 LARGEST INCREMENT OF DISP.         -4.21       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -0.317       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.208       TIME AVG. MOMENT      0.207    
 LARGEST SCALED RESIDUAL MOMENT     0.103       AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     0.103    
 LARGEST INCREMENT OF ROTATION     -0.117       AT NODE       1405   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -2.264E-03   AT NODE       1159   DOF  6
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  50ms


 ***WARNING: THE SYSTEM MATRIX HAS 15 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       3.39       TIME AVG. FORCE        1.93    
 LARGEST SCALED RESIDUAL FORCE      -2.04       AT NODE       1429   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      -2.04    
 LARGEST INCREMENT OF DISP.         -3.31       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        0.896       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.125       TIME AVG. MOMENT      0.197    
 LARGEST SCALED RESIDUAL MOMENT     0.281       AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     0.281    
 LARGEST INCREMENT OF ROTATION      8.336E-02   AT NODE       1424   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     3.631E-02   AT NODE       1404   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  48ms


 ***WARNING: THE SYSTEM MATRIX HAS 2 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     4


 AVERAGE FORCE                       3.27       TIME AVG. FORCE        1.91    
 LARGEST SCALED RESIDUAL FORCE     -8.246E-03   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE     -8.246E-03
 LARGEST INCREMENT OF DISP.         -3.37       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -5.976E-02   AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF DISP.    CORRECTION   -2.382E-03
          FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                     0.220       TIME AVG. MOMENT      0.209    
 LARGEST SCALED RESIDUAL MOMENT    -2.292E-03   AT NODE       1390   DOF  4
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT    -2.292E-03
 LARGEST INCREMENT OF ROTATION      8.412E-02   AT NODE       1424   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -7.574E-04   AT NODE       1405   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  50ms


 ***WARNING: THE SYSTEM MATRIX HAS 5 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     5


 AVERAGE FORCE                       3.79       TIME AVG. FORCE        1.98    
 LARGEST SCALED RESIDUAL FORCE      -9.64       AT NODE          2   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE      -9.64    
 LARGEST INCREMENT OF DISP.         -1.23       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.         2.14       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.129       TIME AVG. MOMENT      0.198    
 LARGEST SCALED RESIDUAL MOMENT      1.59       AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT      1.59    
 LARGEST INCREMENT OF ROTATION      8.829E-03   AT NODE        780   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -8.692E-02   AT NODE       1424   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.


 ***NOTE: THE SOLUTION APPEARS TO BE DIVERGING. CONVERGENCE IS JUDGED UNLIKELY.


  INCREMENT     8 STARTS. ATTEMPT NUMBER  2, TIME INCREMENT  9.375E-03
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  49ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       2.99       TIME AVG. FORCE        1.88    
 LARGEST SCALED RESIDUAL FORCE      3.405E-02   AT NODE       1406   DOF  2
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      3.405E-02
 LARGEST INCREMENT OF DISP.        -0.695       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -0.140       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.242       TIME AVG. MOMENT      0.212    
 LARGEST SCALED RESIDUAL MOMENT     4.027E-02   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     4.027E-02
 LARGEST INCREMENT OF ROTATION      1.698E-02   AT NODE       1411   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -5.512E-03   AT NODE       1405   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  50ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       2.99       TIME AVG. FORCE        1.88    
 LARGEST SCALED RESIDUAL FORCE     -1.477E-04   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE     -1.477E-04
 LARGEST INCREMENT OF DISP.        -0.704       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -9.186E-03   AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF DISP.    CORRECTION    3.986E-05
          FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                     0.242       TIME AVG. MOMENT      0.212    
 LARGEST SCALED RESIDUAL MOMENT     2.638E-04   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     2.638E-04
 LARGEST INCREMENT OF ROTATION      1.719E-02   AT NODE       1411   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     2.552E-04   AT NODE       1410   DOF  4
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF ROTATION CORRECTION    1.672E-06
          MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 ITERATION SUMMARY FOR THE INCREMENT:   2 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  2 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  9.375E-03,  FRACTION OF STEP COMPLETED  0.634    
 STEP TIME COMPLETED       0.634    ,  TOTAL TIME COMPLETED        0.634    


  INCREMENT     9 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  1.406E-02
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  47ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       3.20       TIME AVG. FORCE        2.02    
 LARGEST SCALED RESIDUAL FORCE     -0.751       AT NODE          2   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE     -0.751    
 LARGEST INCREMENT OF DISP.         -1.66       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -0.601       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.207       TIME AVG. MOMENT      0.211    
 LARGEST SCALED RESIDUAL MOMENT     0.137       AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     0.137    
 LARGEST INCREMENT OF ROTATION     -5.101E-02   AT NODE       1405   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -2.525E-02   AT NODE       1405   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  52ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       3.17       TIME AVG. FORCE        2.02    
 LARGEST SCALED RESIDUAL FORCE     -5.979E-03   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE     -5.979E-03
 LARGEST INCREMENT OF DISP.         -1.71       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -5.645E-02   AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF DISP.    CORRECTION   -4.497E-04
          FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                     0.232       TIME AVG. MOMENT      0.214    
 LARGEST SCALED RESIDUAL MOMENT     3.608E-03   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     3.608E-03
 LARGEST INCREMENT OF ROTATION     -5.132E-02   AT NODE       1405   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     4.500E-04   AT NODE       1409   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  49ms


 ***WARNING: THE SYSTEM MATRIX HAS 1 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       3.64       TIME AVG. FORCE        2.07    
 LARGEST SCALED RESIDUAL FORCE      -7.06       AT NODE          2   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE      -7.06    
 LARGEST INCREMENT OF DISP.        -0.291       AT NODE       1421   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.         1.83       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.124       TIME AVG. MOMENT      0.202    
 LARGEST SCALED RESIDUAL MOMENT      1.14       AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT      1.14    
 LARGEST INCREMENT OF ROTATION     -2.619E-02   AT NODE       1410   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     7.751E-02   AT NODE       1405   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  51ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     4


 AVERAGE FORCE                       3.01       TIME AVG. FORCE        2.00    
 LARGEST SCALED RESIDUAL FORCE     -4.543E-02   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE     -4.543E-02
 LARGEST INCREMENT OF DISP.        -0.283       AT NODE       1401   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -0.134       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.313       TIME AVG. MOMENT      0.223    
 LARGEST SCALED RESIDUAL MOMENT     1.352E-02   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     1.352E-02
 LARGEST INCREMENT OF ROTATION      2.591E-02   AT NODE       1405   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     4.336E-04   AT NODE       1015   DOF  5
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  49ms


 ***WARNING: THE SYSTEM MATRIX HAS 1 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     5


 AVERAGE FORCE                       14.4       TIME AVG. FORCE        3.27    
 LARGEST SCALED RESIDUAL FORCE      -113.       AT NODE       1414   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      -113.    
 LARGEST INCREMENT OF DISP.          5.48       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.         5.49       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                      1.19       TIME AVG. MOMENT      0.320    
 LARGEST SCALED RESIDUAL MOMENT      40.6       AT NODE       1411   DOF  4
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT      40.6    
 LARGEST INCREMENT OF ROTATION     -0.301       AT NODE       1411   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -0.279       AT NODE       1411   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.


 ***NOTE: THE SOLUTION APPEARS TO BE DIVERGING. CONVERGENCE IS JUDGED UNLIKELY.


  INCREMENT     9 STARTS. ATTEMPT NUMBER  2, TIME INCREMENT  3.516E-03
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  46ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       3.03       TIME AVG. FORCE        2.00    
 LARGEST SCALED RESIDUAL FORCE     -1.151E-02   AT NODE       1409   DOF  2
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -1.151E-02
 LARGEST INCREMENT OF DISP.        -0.339       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -7.535E-02   AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.253       TIME AVG. MOMENT      0.216    
 LARGEST SCALED RESIDUAL MOMENT     1.347E-02   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     1.347E-02
 LARGEST INCREMENT OF ROTATION      9.645E-03   AT NODE       1410   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     3.205E-03   AT NODE       1410   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  49ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       3.03       TIME AVG. FORCE        2.00    
 LARGEST SCALED RESIDUAL FORCE     -4.006E-05   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE     -4.006E-05
 LARGEST INCREMENT OF DISP.        -0.344       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -4.541E-03   AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF DISP.    CORRECTION   -1.580E-05
          FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                     0.253       TIME AVG. MOMENT      0.216    
 LARGEST SCALED RESIDUAL MOMENT     3.378E-05   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     3.378E-05
 LARGEST INCREMENT OF ROTATION      9.818E-03   AT NODE       1410   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.733E-04   AT NODE       1410   DOF  4
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF ROTATION CORRECTION    4.345E-07
          MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 ITERATION SUMMARY FOR THE INCREMENT:   2 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  2 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  3.516E-03,  FRACTION OF STEP COMPLETED  0.638    
 STEP TIME COMPLETED       0.638    ,  TOTAL TIME COMPLETED        0.638    


  INCREMENT    10 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  5.273E-03
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  49ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       3.10       TIME AVG. FORCE        2.11    
 LARGEST SCALED RESIDUAL FORCE     -4.965E-02   AT NODE       1409   DOF  2
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -4.965E-02
 LARGEST INCREMENT OF DISP.        -0.675       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -0.160       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.250       TIME AVG. MOMENT      0.220    
 LARGEST SCALED RESIDUAL MOMENT     2.662E-02   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     2.662E-02
 LARGEST INCREMENT OF ROTATION     -2.135E-02   AT NODE       1405   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -6.628E-03   AT NODE       1405   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  47ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       3.10       TIME AVG. FORCE        2.11    
 LARGEST SCALED RESIDUAL FORCE     -2.688E-04   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE     -2.688E-04
 LARGEST INCREMENT OF DISP.        -0.687       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -1.175E-02   AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF DISP.    CORRECTION   -6.360E-05
          FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                     0.250       TIME AVG. MOMENT      0.220    
 LARGEST SCALED RESIDUAL MOMENT     1.735E-04   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     1.735E-04
 LARGEST INCREMENT OF ROTATION     -2.172E-02   AT NODE       1405   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     3.693E-04   AT NODE       1410   DOF  4
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF ROTATION CORRECTION    2.407E-06
          MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 ITERATION SUMMARY FOR THE INCREMENT:   2 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  2 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  5.273E-03,  FRACTION OF STEP COMPLETED  0.643    
 STEP TIME COMPLETED       0.643    ,  TOTAL TIME COMPLETED        0.643    


  INCREMENT    11 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  7.910E-03
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  47ms


 ***WARNING: THE SYSTEM MATRIX HAS 1 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       7.92       TIME AVG. FORCE        2.64    
 LARGEST SCALED RESIDUAL FORCE      -47.0       AT NODE          2   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE      -47.0    
 LARGEST INCREMENT OF DISP.          3.68       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.         4.71       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.424       TIME AVG. MOMENT      0.238    
 LARGEST SCALED RESIDUAL MOMENT     -14.1       AT NODE       1405   DOF  4
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     -14.1    
 LARGEST INCREMENT OF ROTATION      0.174       AT NODE       1405   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     0.207       AT NODE       1405   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  47ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       2.83       TIME AVG. FORCE        2.18    
 LARGEST SCALED RESIDUAL FORCE      -1.60       AT NODE       1406   DOF  2
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      -1.60    
 LARGEST INCREMENT OF DISP.          3.42       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        0.324       AT NODE       1435   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.344       TIME AVG. MOMENT      0.231    
 LARGEST SCALED RESIDUAL MOMENT    -0.465       AT NODE       1405   DOF  4
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT    -0.465    
 LARGEST INCREMENT OF ROTATION      0.172       AT NODE       1405   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     2.377E-03   AT NODE        969   DOF  5
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  46ms


 ***WARNING: THE SYSTEM MATRIX HAS 22 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       2.91       TIME AVG. FORCE        2.19    
 LARGEST SCALED RESIDUAL FORCE      -2.96       AT NODE        966   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      -2.96    
 LARGEST INCREMENT OF DISP.          2.93       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -0.485       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.279       TIME AVG. MOMENT      0.225    
 LARGEST SCALED RESIDUAL MOMENT    -0.632       AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT    -0.632    
 LARGEST INCREMENT OF ROTATION      0.198       AT NODE       1391   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -4.746E-02   AT NODE       1406   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  48ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     4


 AVERAGE FORCE                       2.85       TIME AVG. FORCE        2.18    
 LARGEST SCALED RESIDUAL FORCE     -0.791       AT NODE       1404   DOF  2
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -0.791    
 LARGEST INCREMENT OF DISP.          2.87       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        8.562E-02   AT NODE       1603   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.456       TIME AVG. MOMENT      0.241    
 LARGEST SCALED RESIDUAL MOMENT     2.506E-02   AT NODE        963   DOF  4
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     2.506E-02
 LARGEST INCREMENT OF ROTATION      0.173       AT NODE       1405   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -2.549E-02   AT NODE       1363   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  48ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     5


 AVERAGE FORCE                       2.93       TIME AVG. FORCE        2.19    
 LARGEST SCALED RESIDUAL FORCE      -2.12       AT NODE       1205   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      -2.12    
 LARGEST INCREMENT OF DISP.          2.47       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -0.398       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.412       TIME AVG. MOMENT      0.237    
 LARGEST SCALED RESIDUAL MOMENT    -6.912E-02   AT NODE       1189   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT    -6.912E-02
 LARGEST INCREMENT OF ROTATION      0.151       AT NODE       1405   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     4.010E-02   AT NODE        935   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  46ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     6


 AVERAGE FORCE                       2.88       TIME AVG. FORCE        2.18    
 LARGEST SCALED RESIDUAL FORCE     -0.204       AT NODE       1404   DOF  2
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -0.204    
 LARGEST INCREMENT OF DISP.          2.39       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -7.559E-02   AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.573       TIME AVG. MOMENT      0.252    
 LARGEST SCALED RESIDUAL MOMENT     9.837E-03   AT NODE       1410   DOF  4
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     9.837E-03
 LARGEST INCREMENT OF ROTATION      0.138       AT NODE       1405   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -1.263E-02   AT NODE       1391   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  47ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     7


 AVERAGE FORCE                       3.22       TIME AVG. FORCE        2.21    
 LARGEST SCALED RESIDUAL FORCE      -4.31       AT NODE       1246   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      -4.31    
 LARGEST INCREMENT OF DISP.          1.67       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -0.726       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.128       TIME AVG. MOMENT      0.211    
 LARGEST SCALED RESIDUAL MOMENT    -0.163       AT NODE       1259   DOF  4
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT    -0.163    
 LARGEST INCREMENT OF ROTATION      0.106       AT NODE       1405   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     4.442E-02   AT NODE       1232   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.


 ***NOTE: THE SOLUTION APPEARS TO BE DIVERGING. CONVERGENCE IS JUDGED UNLIKELY.


  INCREMENT    11 STARTS. ATTEMPT NUMBER  2, TIME INCREMENT  1.978E-03
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  49ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       3.19       TIME AVG. FORCE        2.21    
 LARGEST SCALED RESIDUAL FORCE     -0.565       AT NODE       1409   DOF  2
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -0.565    
 LARGEST INCREMENT OF DISP.        -0.772       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -0.514       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.238       TIME AVG. MOMENT      0.221    
 LARGEST SCALED RESIDUAL MOMENT     8.542E-02   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     8.542E-02
 LARGEST INCREMENT OF ROTATION     -3.045E-02   AT NODE       1405   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -2.230E-02   AT NODE       1405   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  52ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       3.17       TIME AVG. FORCE        2.21    
 LARGEST SCALED RESIDUAL FORCE     -1.493E-03   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE     -1.493E-03
 LARGEST INCREMENT OF DISP.        -0.799       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -2.690E-02   AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF DISP.    CORRECTION   -7.828E-05
          FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                     0.243       TIME AVG. MOMENT      0.222    
 LARGEST SCALED RESIDUAL MOMENT     4.052E-04   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     4.052E-04
 LARGEST INCREMENT OF ROTATION     -3.071E-02   AT NODE       1405   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -3.587E-04   AT NODE       1406   DOF  4
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF ROTATION CORRECTION   -2.250E-06
          MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 ITERATION SUMMARY FOR THE INCREMENT:   2 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  2 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  1.978E-03,  FRACTION OF STEP COMPLETED  0.645    
 STEP TIME COMPLETED       0.645    ,  TOTAL TIME COMPLETED        0.645    


  INCREMENT    12 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  2.966E-03
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  51ms


 ***WARNING: THE SYSTEM MATRIX HAS 15 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       3.48       TIME AVG. FORCE        2.32    
 LARGEST SCALED RESIDUAL FORCE      -4.18       AT NODE       1381   DOF  2
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      -4.18    
 LARGEST INCREMENT OF DISP.         0.195       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.         1.39       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.126       TIME AVG. MOMENT      0.214    
 LARGEST SCALED RESIDUAL MOMENT     0.824       AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     0.824    
 LARGEST INCREMENT OF ROTATION     -1.567E-02   AT NODE       1409   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -6.121E-02   AT NODE       1410   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  47ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       3.16       TIME AVG. FORCE        2.29    
 LARGEST SCALED RESIDUAL FORCE     -1.527E-02   AT NODE       1406   DOF  2
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -1.527E-02
 LARGEST INCREMENT OF DISP.         0.153       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -4.122E-02   AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.257       TIME AVG. MOMENT      0.225    
 LARGEST SCALED RESIDUAL MOMENT     5.897E-03   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     5.897E-03
 LARGEST INCREMENT OF ROTATION     -1.516E-02   AT NODE       1409   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     8.360E-04   AT NODE       1053   DOF  5
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  46ms


 ***WARNING: THE SYSTEM MATRIX HAS 1 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       3.14       TIME AVG. FORCE        2.29    
 LARGEST SCALED RESIDUAL FORCE     -0.599       AT NODE          2   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE     -0.599    
 LARGEST INCREMENT OF DISP.         0.685       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        0.532       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.264       TIME AVG. MOMENT      0.225    
 LARGEST SCALED RESIDUAL MOMENT     8.513E-02   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     8.513E-02
 LARGEST INCREMENT OF ROTATION      3.378E-02   AT NODE       1405   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     2.150E-02   AT NODE       1404   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  44ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     4


 AVERAGE FORCE                       3.12       TIME AVG. FORCE        2.28    
 LARGEST SCALED RESIDUAL FORCE     -1.272E-03   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE     -1.272E-03
 LARGEST INCREMENT OF DISP.         0.661       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -2.433E-02   AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF DISP.    CORRECTION   -2.026E-03
          FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                     0.277       TIME AVG. MOMENT      0.226    
 LARGEST SCALED RESIDUAL MOMENT    -4.729E-04   AT NODE       1404   DOF  4
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT    -4.729E-04
 LARGEST INCREMENT OF ROTATION      3.330E-02   AT NODE       1405   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     4.855E-04   AT NODE       1410   DOF  4
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF ROTATION CORRECTION   -3.894E-05
          MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 ITERATION SUMMARY FOR THE INCREMENT:   4 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  4 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  2.966E-03,  FRACTION OF STEP COMPLETED  0.648    
 STEP TIME COMPLETED       0.648    ,  TOTAL TIME COMPLETED        0.648    


  INCREMENT    13 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  4.449E-03
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  48ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       3.51       TIME AVG. FORCE        2.38    
 LARGEST SCALED RESIDUAL FORCE       3.73       AT NODE       1406   DOF  2
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE       3.73    
 LARGEST INCREMENT OF DISP.        -0.266       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        -1.26       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.133       TIME AVG. MOMENT      0.219    
 LARGEST SCALED RESIDUAL MOMENT     0.515       AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     0.515    
 LARGEST INCREMENT OF ROTATION      8.138E-03   AT NODE       1411   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -5.757E-02   AT NODE       1405   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  48ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       3.16       TIME AVG. FORCE        2.35    
 LARGEST SCALED RESIDUAL FORCE     -1.691E-02   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE     -1.691E-02
 LARGEST INCREMENT OF DISP.        -0.361       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -9.503E-02   AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.278       TIME AVG. MOMENT      0.230    
 LARGEST SCALED RESIDUAL MOMENT     8.141E-03   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     8.141E-03
 LARGEST INCREMENT OF ROTATION      8.293E-03   AT NODE       1411   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     9.474E-04   AT NODE       1124   DOF  6
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  51ms


 ***WARNING: THE SYSTEM MATRIX HAS 1 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       3.52       TIME AVG. FORCE        2.38    
 LARGEST SCALED RESIDUAL FORCE      -5.06       AT NODE          2   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE      -5.06    
 LARGEST INCREMENT OF DISP.          1.18       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.         1.54       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.123       TIME AVG. MOMENT      0.219    
 LARGEST SCALED RESIDUAL MOMENT     0.793       AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     0.793    
 LARGEST INCREMENT OF ROTATION      5.834E-02   AT NODE       1405   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     6.611E-02   AT NODE       1405   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  47ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     4


 AVERAGE FORCE                       3.03       TIME AVG. FORCE        2.34    
 LARGEST SCALED RESIDUAL FORCE     -2.689E-02   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE     -2.689E-02
 LARGEST INCREMENT OF DISP.          1.08       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -0.105       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.367       TIME AVG. MOMENT      0.237    
 LARGEST SCALED RESIDUAL MOMENT     7.247E-03   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     7.247E-03
 LARGEST INCREMENT OF ROTATION     -5.803E-02   AT NODE       1410   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     3.443E-04   AT NODE       1423   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  52ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     5


 AVERAGE FORCE                       8.05       TIME AVG. FORCE        2.73    
 LARGEST SCALED RESIDUAL FORCE      -43.4       AT NODE       1401   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      -43.4    
 LARGEST INCREMENT OF DISP.         -2.58       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        -3.66       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.424       TIME AVG. MOMENT      0.242    
 LARGEST SCALED RESIDUAL MOMENT      11.1       AT NODE       1404   DOF  4
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT      11.1    
 LARGEST INCREMENT OF ROTATION     -0.125       AT NODE       1404   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -0.181       AT NODE       1404   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.


 ***NOTE: THE SOLUTION APPEARS TO BE DIVERGING. CONVERGENCE IS JUDGED UNLIKELY.


  INCREMENT    13 STARTS. ATTEMPT NUMBER  2, TIME INCREMENT  1.112E-03
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  46ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       3.39       TIME AVG. FORCE        2.37    
 LARGEST SCALED RESIDUAL FORCE       2.35       AT NODE       1406   DOF  2
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE       2.35    
 LARGEST INCREMENT OF DISP.        -0.780       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        -1.03       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.134       TIME AVG. MOMENT      0.219    
 LARGEST SCALED RESIDUAL MOMENT     0.299       AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     0.299    
 LARGEST INCREMENT OF ROTATION     -3.303E-02   AT NODE       1405   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -4.552E-02   AT NODE       1405   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  48ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       3.19       TIME AVG. FORCE        2.35    
 LARGEST SCALED RESIDUAL FORCE     -8.963E-03   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE     -8.963E-03
 LARGEST INCREMENT OF DISP.        -0.844       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -6.397E-02   AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF DISP.    CORRECTION    8.956E-04
          FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                     0.257       TIME AVG. MOMENT      0.229    
 LARGEST SCALED RESIDUAL MOMENT     2.237E-03   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     2.237E-03
 LARGEST INCREMENT OF ROTATION     -3.317E-02   AT NODE       1405   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -2.289E-04   AT NODE       1434   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  46ms


 ***WARNING: THE SYSTEM MATRIX HAS 1 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       3.20       TIME AVG. FORCE        2.36    
 LARGEST SCALED RESIDUAL FORCE      -1.23       AT NODE          2   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE      -1.23    
 LARGEST INCREMENT OF DISP.        -8.221E-02   AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        0.762       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.181       TIME AVG. MOMENT      0.223    
 LARGEST SCALED RESIDUAL MOMENT     0.187       AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     0.187    
 LARGEST INCREMENT OF ROTATION     -3.117E-03   AT NODE       1403   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     3.095E-02   AT NODE       1405   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  46ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     4


 AVERAGE FORCE                       3.13       TIME AVG. FORCE        2.35    
 LARGEST SCALED RESIDUAL FORCE     -3.136E-03   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE     -3.136E-03
 LARGEST INCREMENT OF DISP.        -0.120       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -3.784E-02   AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     0.284       TIME AVG. MOMENT      0.231    
 LARGEST SCALED RESIDUAL MOMENT     7.840E-04   AT NODE       1410   DOF  4
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     7.840E-04
 LARGEST INCREMENT OF ROTATION     -3.374E-03   AT NODE       1404   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -3.539E-04   AT NODE       1406   DOF  4
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  44ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     5


 AVERAGE FORCE                       3.91       TIME AVG. FORCE        2.41    
 LARGEST SCALED RESIDUAL FORCE       6.70       AT NODE       1406   DOF  2
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE       6.70    
 LARGEST INCREMENT OF DISP.         -1.87       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        -1.75       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.126       TIME AVG. MOMENT      0.219    
 LARGEST SCALED RESIDUAL MOMENT     0.804       AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     0.804    
 LARGEST INCREMENT OF ROTATION     -7.914E-02   AT NODE       1405   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -7.661E-02   AT NODE       1405   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.


 ***NOTE: THE SOLUTION APPEARS TO BE DIVERGING. CONVERGENCE IS JUDGED UNLIKELY.


  INCREMENT    13 STARTS. ATTEMPT NUMBER  3, TIME INCREMENT  2.781E-04
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  49ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       3.43       TIME AVG. FORCE        2.37    
 LARGEST SCALED RESIDUAL FORCE       2.54       AT NODE       1406   DOF  2
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE       2.54    
 LARGEST INCREMENT OF DISP.         -1.09       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        -1.09       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.121       TIME AVG. MOMENT      0.218    
 LARGEST SCALED RESIDUAL MOMENT     0.327       AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     0.327    
 LARGEST INCREMENT OF ROTATION      4.728E-02   AT NODE       1410   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     4.728E-02   AT NODE       1410   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  47ms


 ***WARNING: THE SYSTEM MATRIX HAS 4 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       3.22       TIME AVG. FORCE        2.36    
 LARGEST SCALED RESIDUAL FORCE     -1.252E-02   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE     -1.252E-02
 LARGEST INCREMENT OF DISP.         -1.16       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -7.399E-02   AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.250       TIME AVG. MOMENT      0.228    
 LARGEST SCALED RESIDUAL MOMENT     2.415E-03   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     2.415E-03
 LARGEST INCREMENT OF ROTATION     -4.745E-02   AT NODE       1405   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     2.974E-04   AT NODE       1423   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  47ms


 ***WARNING: THE SYSTEM MATRIX HAS 7 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       3.20       TIME AVG. FORCE        2.36    
 LARGEST SCALED RESIDUAL FORCE     -0.896       AT NODE          2   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE     -0.896    
 LARGEST INCREMENT OF DISP.        -0.513       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        0.650       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.220       TIME AVG. MOMENT      0.226    
 LARGEST SCALED RESIDUAL MOMENT     0.136       AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     0.136    
 LARGEST INCREMENT OF ROTATION      2.203E-02   AT NODE       1410   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     2.542E-02   AT NODE       1405   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  46ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     4


 AVERAGE FORCE                       3.17       TIME AVG. FORCE        2.35    
 LARGEST SCALED RESIDUAL FORCE     -2.039E-03   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE     -2.039E-03
 LARGEST INCREMENT OF DISP.        -0.544       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -3.066E-02   AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF DISP.    CORRECTION   -4.993E-03
          FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                     0.265       TIME AVG. MOMENT      0.229    
 LARGEST SCALED RESIDUAL MOMENT    -6.016E-04   AT NODE       1405   DOF  4
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT    -6.016E-04
 LARGEST INCREMENT OF ROTATION     -2.239E-02   AT NODE       1405   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -3.923E-04   AT NODE       1406   DOF  4
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF ROTATION CORRECTION    9.771E-05
          MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 ITERATION SUMMARY FOR THE INCREMENT:   4 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  4 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  2.781E-04,  FRACTION OF STEP COMPLETED  0.648    
 STEP TIME COMPLETED       0.648    ,  TOTAL TIME COMPLETED        0.648    


  INCREMENT    14 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  4.171E-04
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  48ms


 ***WARNING: THE SYSTEM MATRIX HAS 7 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       3.39       TIME AVG. FORCE        2.43    
 LARGEST SCALED RESIDUAL FORCE      -3.33       AT NODE          2   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE      -3.33    
 LARGEST INCREMENT OF DISP.         0.441       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.         1.26       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.142       TIME AVG. MOMENT      0.223    
 LARGEST SCALED RESIDUAL MOMENT     0.610       AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     0.610    
 LARGEST INCREMENT OF ROTATION      1.877E-02   AT NODE       1405   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     5.235E-02   AT NODE       1405   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  46ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       3.13       TIME AVG. FORCE        2.41    
 LARGEST SCALED RESIDUAL FORCE     -7.226E-03   AT NODE       1406   DOF  2
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -7.226E-03
 LARGEST INCREMENT OF DISP.         0.392       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -4.888E-02   AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF DISP.    CORRECTION   -1.505E-04
          FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                     0.291       TIME AVG. MOMENT      0.234    
 LARGEST SCALED RESIDUAL MOMENT     3.898E-03   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     3.898E-03
 LARGEST INCREMENT OF ROTATION      1.863E-02   AT NODE       1405   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     4.581E-04   AT NODE       1062   DOF  5
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  47ms


 ***WARNING: THE SYSTEM MATRIX HAS 1 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       7.76       TIME AVG. FORCE        2.74    
 LARGEST SCALED RESIDUAL FORCE      -42.4       AT NODE          2   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE      -42.4    
 LARGEST INCREMENT OF DISP.          4.87       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.         4.48       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.470       TIME AVG. MOMENT      0.247    
 LARGEST SCALED RESIDUAL MOMENT      12.4       AT NODE       1411   DOF  4
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT      12.4    
 LARGEST INCREMENT OF ROTATION     -0.211       AT NODE       1410   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -0.192       AT NODE       1410   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  47ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     4


 AVERAGE FORCE                       2.77       TIME AVG. FORCE        2.38    
 LARGEST SCALED RESIDUAL FORCE       1.12       AT NODE       1409   DOF  2
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE       1.12    
 LARGEST INCREMENT OF DISP.          4.60       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        0.274       AT NODE       1450   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.377       TIME AVG. MOMENT      0.240    
 LARGEST SCALED RESIDUAL MOMENT     0.361       AT NODE       1411   DOF  4
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     0.361    
 LARGEST INCREMENT OF ROTATION     -0.209       AT NODE       1410   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -1.699E-03   AT NODE       1405   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  46ms


 ***WARNING: THE SYSTEM MATRIX HAS 22 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     5


 AVERAGE FORCE                       2.87       TIME AVG. FORCE        2.39    
 LARGEST SCALED RESIDUAL FORCE      -7.12       AT NODE       1414   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      -7.12    
 LARGEST INCREMENT OF DISP.          4.14       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -0.460       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.374       TIME AVG. MOMENT      0.240    
 LARGEST SCALED RESIDUAL MOMENT    -0.481       AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT    -0.481    
 LARGEST INCREMENT OF ROTATION      0.218       AT NODE       1237   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     7.354E-02   AT NODE       1414   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  46ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     6


 AVERAGE FORCE                       2.80       TIME AVG. FORCE        2.39    
 LARGEST SCALED RESIDUAL FORCE      0.718       AT NODE       1578   DOF  2
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      0.718    
 LARGEST INCREMENT OF DISP.          4.04       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        0.106       AT NODE       1403   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.629       TIME AVG. MOMENT      0.258    
 LARGEST SCALED RESIDUAL MOMENT     2.782E-02   AT NODE        963   DOF  4
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     2.782E-02
 LARGEST INCREMENT OF ROTATION     -0.200       AT NODE       1204   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -2.474E-02   AT NODE       1223   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  47ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     7


 AVERAGE FORCE                       2.93       TIME AVG. FORCE        2.39    
 LARGEST SCALED RESIDUAL FORCE      -7.55       AT NODE       1204   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      -7.55    
 LARGEST INCREMENT OF DISP.          3.59       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -0.506       AT NODE       1204   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.395       TIME AVG. MOMENT      0.241    
 LARGEST SCALED RESIDUAL MOMENT    -0.210       AT NODE       1203   DOF  4
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT    -0.210    
 LARGEST INCREMENT OF ROTATION     -0.182       AT NODE       1354   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     7.379E-02   AT NODE       1204   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.


 ***NOTE: THE SOLUTION APPEARS TO BE DIVERGING. CONVERGENCE IS JUDGED UNLIKELY.


  INCREMENT    14 STARTS. ATTEMPT NUMBER  2, TIME INCREMENT  1.043E-04
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  47ms


 ***WARNING: THE SYSTEM MATRIX HAS 1 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       3.35       TIME AVG. FORCE        2.42    
 LARGEST SCALED RESIDUAL FORCE      -3.49       AT NODE          2   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE      -3.49    
 LARGEST INCREMENT OF DISP.          1.08       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.         1.29       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.127       TIME AVG. MOMENT      0.222    
 LARGEST SCALED RESIDUAL MOMENT     0.561       AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     0.561    
 LARGEST INCREMENT OF ROTATION     -4.546E-02   AT NODE       1410   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -5.385E-02   AT NODE       1410   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  48ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       3.08       TIME AVG. FORCE        2.40    
 LARGEST SCALED RESIDUAL FORCE     -1.398E-02   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE     -1.398E-02
 LARGEST INCREMENT OF DISP.          1.01       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -7.709E-02   AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.334       TIME AVG. MOMENT      0.237    
 LARGEST SCALED RESIDUAL MOMENT     4.007E-03   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     4.007E-03
 LARGEST INCREMENT OF ROTATION     -4.525E-02   AT NODE       1410   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     3.227E-04   AT NODE       1423   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  48ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       3.69       TIME AVG. FORCE        2.45    
 LARGEST SCALED RESIDUAL FORCE      -4.98       AT NODE       1409   DOF  2
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      -4.98    
 LARGEST INCREMENT OF DISP.        -0.426       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        -1.43       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.119       TIME AVG. MOMENT      0.222    
 LARGEST SCALED RESIDUAL MOMENT     0.530       AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     0.530    
 LARGEST INCREMENT OF ROTATION     -2.212E-02   AT NODE       1404   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     6.632E-02   AT NODE       1410   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  49ms


 ***WARNING: THE SYSTEM MATRIX HAS 2 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     4


 AVERAGE FORCE                       3.21       TIME AVG. FORCE        2.41    
 LARGEST SCALED RESIDUAL FORCE     -3.013E-02   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE     -3.013E-02
 LARGEST INCREMENT OF DISP.        -0.537       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -0.111       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.255       TIME AVG. MOMENT      0.231    
 LARGEST SCALED RESIDUAL MOMENT     6.448E-03   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     6.448E-03
 LARGEST INCREMENT OF ROTATION      2.217E-02   AT NODE       1411   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     3.401E-04   AT NODE        974   DOF  5
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  45ms


 ***WARNING: THE SYSTEM MATRIX HAS 5 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     5


 AVERAGE FORCE                       3.19       TIME AVG. FORCE        2.41    
 LARGEST SCALED RESIDUAL FORCE     -0.459       AT NODE       1414   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -0.459    
 LARGEST INCREMENT OF DISP.        -0.174       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        0.363       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.266       TIME AVG. MOMENT      0.232    
 LARGEST SCALED RESIDUAL MOMENT     4.052E-02   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     4.052E-02
 LARGEST INCREMENT OF ROTATION     -8.659E-03   AT NODE       1405   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -1.553E-02   AT NODE       1411   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  47ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     6


 AVERAGE FORCE                       3.19       TIME AVG. FORCE        2.41    
 LARGEST SCALED RESIDUAL FORCE     -1.561E-03   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE     -1.561E-03
 LARGEST INCREMENT OF DISP.        -0.201       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -2.704E-02   AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF DISP.    CORRECTION   -1.402E-03
          FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                     0.265       TIME AVG. MOMENT      0.232    
 LARGEST SCALED RESIDUAL MOMENT     4.954E-04   AT NODE       1411   DOF  4
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     4.954E-04
 LARGEST INCREMENT OF ROTATION     -9.657E-03   AT NODE       1405   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     9.972E-04   AT NODE       1410   DOF  4
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF ROTATION CORRECTION    7.661E-05
          MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 ITERATION SUMMARY FOR THE INCREMENT:   6 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  6 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  1.043E-04,  FRACTION OF STEP COMPLETED  0.648    
 STEP TIME COMPLETED       0.648    ,  TOTAL TIME COMPLETED        0.648    


  INCREMENT    15 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  1.043E-04
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  51ms


 ***WARNING: THE SYSTEM MATRIX HAS 5 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       3.25       TIME AVG. FORCE        2.47    
 LARGEST SCALED RESIDUAL FORCE       2.50       AT NODE       1406   DOF  2
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE       2.50    
 LARGEST INCREMENT OF DISP.         0.856       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.         1.06       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.147       TIME AVG. MOMENT      0.226    
 LARGEST SCALED RESIDUAL MOMENT     0.366       AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     0.366    
 LARGEST INCREMENT OF ROTATION     -3.770E-02   AT NODE       1410   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -4.736E-02   AT NODE       1410   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  51ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       3.11       TIME AVG. FORCE        2.46    
 LARGEST SCALED RESIDUAL FORCE     -7.897E-03   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE     -7.897E-03
 LARGEST INCREMENT OF DISP.         0.797       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -5.923E-02   AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF DISP.    CORRECTION    2.182E-03
          FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                     0.317       TIME AVG. MOMENT      0.238    
 LARGEST SCALED RESIDUAL MOMENT     2.032E-03   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     2.032E-03
 LARGEST INCREMENT OF ROTATION      3.744E-02   AT NODE       1405   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -4.438E-04   AT NODE       1406   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  50ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       3.69       TIME AVG. FORCE        2.50    
 LARGEST SCALED RESIDUAL FORCE       5.05       AT NODE       1406   DOF  2
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE       5.05    
 LARGEST INCREMENT OF DISP.        -0.669       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        -1.47       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.120       TIME AVG. MOMENT      0.224    
 LARGEST SCALED RESIDUAL MOMENT     0.571       AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     0.571    
 LARGEST INCREMENT OF ROTATION      3.044E-02   AT NODE       1411   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -6.652E-02   AT NODE       1405   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  46ms


 ***WARNING: THE SYSTEM MATRIX HAS 6 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     4


 AVERAGE FORCE                       3.25       TIME AVG. FORCE        2.47    
 LARGEST SCALED RESIDUAL FORCE     -3.544E-02   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE     -3.544E-02
 LARGEST INCREMENT OF DISP.        -0.789       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -0.121       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.252       TIME AVG. MOMENT      0.233    
 LARGEST SCALED RESIDUAL MOMENT     7.464E-03   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     7.464E-03
 LARGEST INCREMENT OF ROTATION      3.059E-02   AT NODE       1411   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     3.635E-04   AT NODE       1002   DOF  5
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  46ms


 ***WARNING: THE SYSTEM MATRIX HAS 11 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     5


 AVERAGE FORCE                       3.23       TIME AVG. FORCE        2.47    
 LARGEST SCALED RESIDUAL FORCE     -0.640       AT NODE          2   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE     -0.640    
 LARGEST INCREMENT OF DISP.        -0.247       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        0.542       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.252       TIME AVG. MOMENT      0.233    
 LARGEST SCALED RESIDUAL MOMENT     9.520E-02   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     9.520E-02
 LARGEST INCREMENT OF ROTATION     -1.046E-02   AT NODE       1405   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -2.099E-02   AT NODE       1411   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  56ms


 ***WARNING: THE SYSTEM MATRIX HAS 4 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     6


 AVERAGE FORCE                       3.21       TIME AVG. FORCE        2.47    
 LARGEST SCALED RESIDUAL FORCE     -2.240E-03   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE     -2.240E-03
 LARGEST INCREMENT OF DISP.        -0.279       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -3.219E-02   AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF DISP.    CORRECTION   -2.035E-03
          FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                     0.263       TIME AVG. MOMENT      0.234    
 LARGEST SCALED RESIDUAL MOMENT    -7.319E-04   AT NODE       1404   DOF  4
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT    -7.319E-04
 LARGEST INCREMENT OF ROTATION      1.124E-02   AT NODE       1410   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     7.777E-04   AT NODE       1410   DOF  4
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF ROTATION CORRECTION   -7.625E-05
          MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 ITERATION SUMMARY FOR THE INCREMENT:   6 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  6 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  1.043E-04,  FRACTION OF STEP COMPLETED  0.649    
 STEP TIME COMPLETED       0.649    ,  TOTAL TIME COMPLETED        0.649    


  INCREMENT    16 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  1.043E-04
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  53ms


 ***WARNING: THE SYSTEM MATRIX HAS 9 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       3.25       TIME AVG. FORCE        2.51    
 LARGEST SCALED RESIDUAL FORCE      -1.89       AT NODE          2   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE      -1.89    
 LARGEST INCREMENT OF DISP.         0.668       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        0.947       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.170       TIME AVG. MOMENT      0.230    
 LARGEST SCALED RESIDUAL MOMENT     0.303       AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     0.303    
 LARGEST INCREMENT OF ROTATION     -2.928E-02   AT NODE       1410   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -4.052E-02   AT NODE       1410   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  51ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       3.16       TIME AVG. FORCE        2.51    
 LARGEST SCALED RESIDUAL FORCE     -4.930E-03   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE     -4.930E-03
 LARGEST INCREMENT OF DISP.         0.621       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -4.688E-02   AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF DISP.    CORRECTION   -6.949E-04
          FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                     0.292       TIME AVG. MOMENT      0.238    
 LARGEST SCALED RESIDUAL MOMENT     1.593E-03   AT NODE       1410   DOF  4
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     1.593E-03
 LARGEST INCREMENT OF ROTATION     -2.899E-02   AT NODE       1410   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     5.451E-04   AT NODE       1409   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  46ms


 ***WARNING: THE SYSTEM MATRIX HAS 1 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       6.20       TIME AVG. FORCE        2.70    
 LARGEST SCALED RESIDUAL FORCE      -32.1       AT NODE          2   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE      -32.1    
 LARGEST INCREMENT OF DISP.          4.52       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.         3.90       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.330       TIME AVG. MOMENT      0.240    
 LARGEST SCALED RESIDUAL MOMENT      7.45       AT NODE       1410   DOF  4
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT      7.45    
 LARGEST INCREMENT OF ROTATION     -0.193       AT NODE       1410   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -0.164       AT NODE       1410   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  50ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     4


 AVERAGE FORCE                       2.83       TIME AVG. FORCE        2.49    
 LARGEST SCALED RESIDUAL FORCE     -0.606       AT NODE       1406   DOF  2
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -0.606    
 LARGEST INCREMENT OF DISP.          4.26       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -0.259       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.431       TIME AVG. MOMENT      0.246    
 LARGEST SCALED RESIDUAL MOMENT     0.160       AT NODE       1410   DOF  4
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     0.160    
 LARGEST INCREMENT OF ROTATION     -0.192       AT NODE       1410   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.323E-03   AT NODE        988   DOF  5
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  49ms


 ***WARNING: THE SYSTEM MATRIX HAS 12 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     5


 AVERAGE FORCE                       7.50       TIME AVG. FORCE        2.78    
 LARGEST SCALED RESIDUAL FORCE      -194.       AT NODE       1414   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      -194.    
 LARGEST INCREMENT OF DISP.          4.76       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.         1.88       AT NODE       1414   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.604       TIME AVG. MOMENT      0.257    
 LARGEST SCALED RESIDUAL MOMENT     -37.5       AT NODE        951   DOF  4
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     -37.5    
 LARGEST INCREMENT OF ROTATION     -0.455       AT NODE       1414   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     0.346       AT NODE        952   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.


 ***NOTE: THE SOLUTION APPEARS TO BE DIVERGING. CONVERGENCE IS JUDGED UNLIKELY.


  INCREMENT    16 STARTS. ATTEMPT NUMBER  2, TIME INCREMENT  2.607E-05
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  47ms


 ***WARNING: THE SYSTEM MATRIX HAS 7 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       3.22       TIME AVG. FORCE        2.51    
 LARGEST SCALED RESIDUAL FORCE      -1.61       AT NODE          2   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE      -1.61    
 LARGEST INCREMENT OF DISP.         0.807       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        0.877       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.179       TIME AVG. MOMENT      0.231    
 LARGEST SCALED RESIDUAL MOMENT     0.249       AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     0.249    
 LARGEST INCREMENT OF ROTATION     -3.487E-02   AT NODE       1410   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -3.768E-02   AT NODE       1410   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  50ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       3.14       TIME AVG. FORCE        2.51    
 LARGEST SCALED RESIDUAL FORCE     -4.570E-03   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE     -4.570E-03
 LARGEST INCREMENT OF DISP.         0.761       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -4.553E-02   AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF DISP.    CORRECTION   -3.859E-03
          FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                     0.302       TIME AVG. MOMENT      0.238    
 LARGEST SCALED RESIDUAL MOMENT     1.313E-03   AT NODE       1410   DOF  4
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     1.313E-03
 LARGEST INCREMENT OF ROTATION     -3.458E-02   AT NODE       1410   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     5.138E-04   AT NODE       1409   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  50ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       10.0       TIME AVG. FORCE        2.94    
 LARGEST SCALED RESIDUAL FORCE      -61.0       AT NODE          2   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE      -61.0    
 LARGEST INCREMENT OF DISP.         -4.62       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        -5.39       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.645       TIME AVG. MOMENT      0.260    
 LARGEST SCALED RESIDUAL MOMENT     -21.6       AT NODE       1410   DOF  4
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     -21.6    
 LARGEST INCREMENT OF ROTATION      0.198       AT NODE       1410   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     0.233       AT NODE       1410   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  47ms


 ***WARNING: THE SYSTEM MATRIX HAS 16 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     4


 AVERAGE FORCE                       3.57       TIME AVG. FORCE        2.53    
 LARGEST SCALED RESIDUAL FORCE       2.81       AT NODE       1409   DOF  2
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE       2.81    
 LARGEST INCREMENT OF DISP.         -5.01       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        0.514       AT NODE       1435   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.194       TIME AVG. MOMENT      0.232    
 LARGEST SCALED RESIDUAL MOMENT    -0.810       AT NODE       1410   DOF  4
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT    -0.810    
 LARGEST INCREMENT OF ROTATION      0.196       AT NODE       1410   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     3.772E-03   AT NODE       1067   DOF  5
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  47ms


 ***WARNING: THE SYSTEM MATRIX HAS 123 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     5


 AVERAGE FORCE                       3.75       TIME AVG. FORCE        2.55    
 LARGEST SCALED RESIDUAL FORCE      -11.6       AT NODE          2   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE      -11.6    
 LARGEST INCREMENT OF DISP.         -7.58       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        -2.57       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.158       TIME AVG. MOMENT      0.229    
 LARGEST SCALED RESIDUAL MOMENT     0.587       AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     0.587    
 LARGEST INCREMENT OF ROTATION     -0.206       AT NODE       1405   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -5.354E-02   AT NODE       1611   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  51ms


 ***WARNING: THE SYSTEM MATRIX HAS 88 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     6


 AVERAGE FORCE                       4.33       TIME AVG. FORCE        2.58    
 LARGEST SCALED RESIDUAL FORCE      -50.0       AT NODE       1185   DOF  2
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      -50.0    
 LARGEST INCREMENT OF DISP.         -11.6       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        -4.06       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.199       TIME AVG. MOMENT      0.232    
 LARGEST SCALED RESIDUAL MOMENT     -8.41       AT NODE       1214   DOF  4
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     -8.41    
 LARGEST INCREMENT OF ROTATION      0.392       AT NODE       1200   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     0.199       AT NODE       1214   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.


 ***NOTE: THE SOLUTION APPEARS TO BE DIVERGING. CONVERGENCE IS JUDGED UNLIKELY.


  INCREMENT    16 STARTS. ATTEMPT NUMBER  3, TIME INCREMENT  6.518E-06
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  47ms


 ***WARNING: THE SYSTEM MATRIX HAS 5 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       3.22       TIME AVG. FORCE        2.51    
 LARGEST SCALED RESIDUAL FORCE      -1.56       AT NODE          2   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE      -1.56    
 LARGEST INCREMENT OF DISP.         0.862       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        0.862       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.181       TIME AVG. MOMENT      0.231    
 LARGEST SCALED RESIDUAL MOMENT     0.238       AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     0.238    
 LARGEST INCREMENT OF ROTATION     -3.717E-02   AT NODE       1410   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -3.717E-02   AT NODE       1410   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  50ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       3.14       TIME AVG. FORCE        2.51    
 LARGEST SCALED RESIDUAL FORCE     -4.594E-03   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE     -4.594E-03
 LARGEST INCREMENT OF DISP.         0.816       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -4.571E-02   AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     0.308       TIME AVG. MOMENT      0.239    
 LARGEST SCALED RESIDUAL MOMENT     1.267E-03   AT NODE       1410   DOF  4
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     1.267E-03
 LARGEST INCREMENT OF ROTATION     -3.689E-02   AT NODE       1410   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     5.081E-04   AT NODE       1409   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  50ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       5.17       TIME AVG. FORCE        2.63    
 LARGEST SCALED RESIDUAL FORCE       18.4       AT NODE       1406   DOF  2
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE       18.4    
 LARGEST INCREMENT OF DISP.         -2.09       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        -2.91       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.206       TIME AVG. MOMENT      0.232    
 LARGEST SCALED RESIDUAL MOMENT      3.47       AT NODE       1405   DOF  4
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT      3.47    
 LARGEST INCREMENT OF ROTATION     -9.009E-02   AT NODE       1405   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -0.127       AT NODE       1405   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  49ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     4


 AVERAGE FORCE                       3.40       TIME AVG. FORCE        2.52    
 LARGEST SCALED RESIDUAL FORCE     -0.265       AT NODE          2   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE     -0.265    
 LARGEST INCREMENT OF DISP.         -2.38       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -0.286       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.228       TIME AVG. MOMENT      0.234    
 LARGEST SCALED RESIDUAL MOMENT     7.690E-02   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     7.690E-02
 LARGEST INCREMENT OF ROTATION     -8.979E-02   AT NODE       1405   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.117E-03   AT NODE        988   DOF  5
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  48ms


 ***WARNING: THE SYSTEM MATRIX HAS 55 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     5


 AVERAGE FORCE                       3.42       TIME AVG. FORCE        2.52    
 LARGEST SCALED RESIDUAL FORCE       1.24       AT NODE       1771   DOF  2
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE       1.24    
 LARGEST INCREMENT OF DISP.         -2.30       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -0.248       AT NODE       1772   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.253       TIME AVG. MOMENT      0.235    
 LARGEST SCALED RESIDUAL MOMENT    -3.487E-02   AT NODE       1784   DOF  5
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT    -3.487E-02
 LARGEST INCREMENT OF ROTATION     -8.093E-02   AT NODE       1401   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     2.800E-02   AT NODE       1770   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  48ms


 ***WARNING: THE SYSTEM MATRIX HAS 32 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     6


 AVERAGE FORCE                       3.38       TIME AVG. FORCE        2.52    
 LARGEST SCALED RESIDUAL FORCE      -36.9       AT NODE       1701   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      -36.9    
 LARGEST INCREMENT OF DISP.         -2.38       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        0.348       AT NODE       1547   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.257       TIME AVG. MOMENT      0.235    
 LARGEST SCALED RESIDUAL MOMENT    -0.368       AT NODE       1701   DOF  5
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT    -0.368    
 LARGEST INCREMENT OF ROTATION      0.111       AT NODE       1227   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -6.598E-02   AT NODE       1114   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.


 ***NOTE: THE SOLUTION APPEARS TO BE DIVERGING. CONVERGENCE IS JUDGED UNLIKELY.


  INCREMENT    16 STARTS. ATTEMPT NUMBER  4, TIME INCREMENT  1.629E-06
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  47ms


 ***WARNING: THE SYSTEM MATRIX HAS 5 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       3.22       TIME AVG. FORCE        2.51    
 LARGEST SCALED RESIDUAL FORCE      -1.56       AT NODE          2   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE      -1.56    
 LARGEST INCREMENT OF DISP.         0.862       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        0.862       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.181       TIME AVG. MOMENT      0.231    
 LARGEST SCALED RESIDUAL MOMENT     0.238       AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     0.238    
 LARGEST INCREMENT OF ROTATION     -3.715E-02   AT NODE       1410   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -3.715E-02   AT NODE       1410   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  47ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       3.14       TIME AVG. FORCE        2.51    
 LARGEST SCALED RESIDUAL FORCE     -4.585E-03   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE     -4.585E-03
 LARGEST INCREMENT OF DISP.         0.816       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -4.567E-02   AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     0.308       TIME AVG. MOMENT      0.239    
 LARGEST SCALED RESIDUAL MOMENT     1.265E-03   AT NODE       1410   DOF  4
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     1.265E-03
 LARGEST INCREMENT OF ROTATION     -3.686E-02   AT NODE       1410   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -5.080E-04   AT NODE       1406   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  50ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       5.18       TIME AVG. FORCE        2.64    
 LARGEST SCALED RESIDUAL FORCE       18.5       AT NODE       1406   DOF  2
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE       18.5    
 LARGEST INCREMENT OF DISP.         -2.10       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        -2.91       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.206       TIME AVG. MOMENT      0.232    
 LARGEST SCALED RESIDUAL MOMENT      3.48       AT NODE       1405   DOF  4
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT      3.48    
 LARGEST INCREMENT OF ROTATION     -9.030E-02   AT NODE       1405   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -0.127       AT NODE       1405   DOF  4
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

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     4


 AVERAGE FORCE                       3.40       TIME AVG. FORCE        2.52    
 LARGEST SCALED RESIDUAL FORCE     -0.266       AT NODE          2   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE     -0.266    
 LARGEST INCREMENT OF DISP.         -2.39       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -0.287       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.228       TIME AVG. MOMENT      0.234    
 LARGEST SCALED RESIDUAL MOMENT     7.726E-02   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     7.726E-02
 LARGEST INCREMENT OF ROTATION     -9.000E-02   AT NODE       1405   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.120E-03   AT NODE        990   DOF  5
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  50ms


 ***WARNING: THE SYSTEM MATRIX HAS 55 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     5


 AVERAGE FORCE                       3.42       TIME AVG. FORCE        2.52    
 LARGEST SCALED RESIDUAL FORCE       1.01       AT NODE       1411   DOF  2
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE       1.01    
 LARGEST INCREMENT OF DISP.         -2.31       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -0.239       AT NODE       1408   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.251       TIME AVG. MOMENT      0.235    
 LARGEST SCALED RESIDUAL MOMENT     3.174E-02   AT NODE       1410   DOF  4
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     3.174E-02
 LARGEST INCREMENT OF ROTATION      7.999E-02   AT NODE       1414   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -2.689E-02   AT NODE       1382   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  49ms


 ***WARNING: THE SYSTEM MATRIX HAS 33 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     6


 AVERAGE FORCE                       3.42       TIME AVG. FORCE        2.53    
 LARGEST SCALED RESIDUAL FORCE      0.361       AT NODE       1044   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      0.361    
 LARGEST INCREMENT OF DISP.         -2.52       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -0.216       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.250       TIME AVG. MOMENT      0.235    
 LARGEST SCALED RESIDUAL MOMENT     1.098E-02   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     1.098E-02
 LARGEST INCREMENT OF ROTATION      8.077E-02   AT NODE       1412   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -8.401E-03   AT NODE       1404   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  46ms


 ***WARNING: THE SYSTEM MATRIX HAS 40 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     7


 AVERAGE FORCE                       113.       TIME AVG. FORCE        9.39    
 LARGEST SCALED RESIDUAL FORCE     -4.768E+03   AT NODE        946   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -4.768E+03
 LARGEST INCREMENT OF DISP.          29.5       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.         32.0       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                      32.9       TIME AVG. MOMENT       2.28    
 LARGEST SCALED RESIDUAL MOMENT    -3.927E+03   AT NODE       1378   DOF  4
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT    -3.927E+03
 LARGEST INCREMENT OF ROTATION       1.31       AT NODE       1378   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION      1.37       AT NODE       1378   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.


 ***NOTE: THE SOLUTION APPEARS TO BE DIVERGING. CONVERGENCE IS JUDGED UNLIKELY.


  INCREMENT    16 STARTS. ATTEMPT NUMBER  5, TIME INCREMENT  1.000E-06
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  48ms


 ***WARNING: THE SYSTEM MATRIX HAS 5 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       3.22       TIME AVG. FORCE        2.51    
 LARGEST SCALED RESIDUAL FORCE      -1.56       AT NODE          2   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE      -1.56    
 LARGEST INCREMENT OF DISP.         0.862       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        0.862       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.181       TIME AVG. MOMENT      0.231    
 LARGEST SCALED RESIDUAL MOMENT     0.238       AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     0.238    
 LARGEST INCREMENT OF ROTATION     -3.715E-02   AT NODE       1410   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -3.715E-02   AT NODE       1410   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  47ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       3.14       TIME AVG. FORCE        2.51    
 LARGEST SCALED RESIDUAL FORCE     -4.584E-03   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE     -4.584E-03
 LARGEST INCREMENT OF DISP.         0.816       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -4.567E-02   AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     0.308       TIME AVG. MOMENT      0.239    
 LARGEST SCALED RESIDUAL MOMENT    -1.265E-03   AT NODE       1405   DOF  4
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT    -1.265E-03
 LARGEST INCREMENT OF ROTATION     -3.686E-02   AT NODE       1410   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     5.080E-04   AT NODE       1409   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  48ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       5.18       TIME AVG. FORCE        2.64    
 LARGEST SCALED RESIDUAL FORCE       18.5       AT NODE       1406   DOF  2
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE       18.5    
 LARGEST INCREMENT OF DISP.         -2.10       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        -2.92       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.206       TIME AVG. MOMENT      0.232    
 LARGEST SCALED RESIDUAL MOMENT      3.49       AT NODE       1405   DOF  4
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT      3.49    
 LARGEST INCREMENT OF ROTATION     -9.033E-02   AT NODE       1405   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -0.127       AT NODE       1405   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  52ms


 ***WARNING: THE SYSTEM MATRIX HAS 18 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     4


 AVERAGE FORCE                       3.40       TIME AVG. FORCE        2.52    
 LARGEST SCALED RESIDUAL FORCE     -0.266       AT NODE          2   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE     -0.266    
 LARGEST INCREMENT OF DISP.         -2.39       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -0.287       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.228       TIME AVG. MOMENT      0.234    
 LARGEST SCALED RESIDUAL MOMENT     7.731E-02   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     7.731E-02
 LARGEST INCREMENT OF ROTATION     -9.003E-02   AT NODE       1405   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.120E-03   AT NODE        990   DOF  5
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  51ms


 ***WARNING: THE SYSTEM MATRIX HAS 55 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     5


 AVERAGE FORCE                       3.42       TIME AVG. FORCE        2.52    
 LARGEST SCALED RESIDUAL FORCE       1.01       AT NODE       1411   DOF  2
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE       1.01    
 LARGEST INCREMENT OF DISP.         -2.31       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -0.239       AT NODE       1408   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.251       TIME AVG. MOMENT      0.235    
 LARGEST SCALED RESIDUAL MOMENT     3.171E-02   AT NODE       1410   DOF  4
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     3.171E-02
 LARGEST INCREMENT OF ROTATION      7.989E-02   AT NODE       1414   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -2.688E-02   AT NODE       1382   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  51ms


 ***WARNING: THE SYSTEM MATRIX HAS 33 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     6


 AVERAGE FORCE                       3.42       TIME AVG. FORCE        2.53    
 LARGEST SCALED RESIDUAL FORCE      0.344       AT NODE       1043   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      0.344    
 LARGEST INCREMENT OF DISP.         -2.53       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -0.216       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.250       TIME AVG. MOMENT      0.235    
 LARGEST SCALED RESIDUAL MOMENT     1.110E-02   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     1.110E-02
 LARGEST INCREMENT OF ROTATION      8.083E-02   AT NODE       1412   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -8.492E-03   AT NODE       1404   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  46ms


 ***WARNING: THE SYSTEM MATRIX HAS 40 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     7


 AVERAGE FORCE                       134.       TIME AVG. FORCE        10.7    
 LARGEST SCALED RESIDUAL FORCE     -5.864E+03   AT NODE        946   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -5.864E+03
 LARGEST INCREMENT OF DISP.          32.9       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.         35.4       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                      44.6       TIME AVG. MOMENT       3.01    
 LARGEST SCALED RESIDUAL MOMENT     5.443E+03   AT NODE       1381   DOF  4
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     5.443E+03
 LARGEST INCREMENT OF ROTATION      -1.47       AT NODE       1381   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     -1.53       AT NODE       1381   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.


 ***NOTE: THE SOLUTION APPEARS TO BE DIVERGING. CONVERGENCE IS JUDGED UNLIKELY.


 ***ERROR: TIME INCREMENT REQUIRED IS LESS THAN THE MINIMUM SPECIFIED


 ***ERROR: TOO MANY ATTEMPTS MADE FOR THIS INCREMENT

 ***ERROR: THE ANALYSIS HAS BEEN TERMINATED DUE TO PREVIOUS ERRORS. ALL OUTPUT 
           REQUESTS HAVE BEEN WRITTEN FOR THE LAST CONVERGED INCREMENT.



     ANALYSIS SUMMARY:
     TOTAL OF         16  INCREMENTS
                      12  CUTBACKS IN AUTOMATIC INCREMENTATION
                     125  ITERATIONS INCLUDING CONTACT ITERATIONS IF PRESENT
                     125  PASSES THROUGH THE EQUATION SOLVER OF WHICH 
                     125  INVOLVE MATRIX DECOMPOSITION, INCLUDING
                       0  DECOMPOSITION(S) OF THE MASS MATRIX
                       1  REORDERING OF EQUATIONS TO MINIMIZE WAVEFRONT
                       0  ADDITIONAL RESIDUAL EVALUATIONS FOR LINE SEARCHES
                       0  ADDITIONAL OPERATOR EVALUATIONS FOR LINE SEARCHES
                       1  WARNING MESSAGES DURING USER INPUT PROCESSING
                      52  WARNING MESSAGES DURING ANALYSIS
                       0  ANALYSIS WARNINGS ARE NUMERICAL PROBLEM MESSAGES
                      52  ANALYSIS WARNINGS ARE NEGATIVE EIGENVALUE MESSAGES
                       3  ERROR MESSAGES



     JOB TIME SUMMARY
       USER TIME (SEC)      =       5.E+01
       SYSTEM TIME (SEC)    =       4.E+00
       TOTAL CPU TIME (SEC) =       5.E+01
       WALLCLOCK TIME (SEC) =           19
       MEMORY PEAK (GB)     =            0
