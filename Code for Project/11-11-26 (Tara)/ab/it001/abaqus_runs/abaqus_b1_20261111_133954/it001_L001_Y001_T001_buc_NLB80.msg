1

   Abaqus 2026                                  Date 11-Nov-2026   Time 13:41:52
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
                              2            320
                              3            320
                              4            320
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
        SOLVER ELAPSED TIME:  54ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      0.659       TIME AVG. FORCE       0.659    
 LARGEST SCALED RESIDUAL FORCE      -43.2       AT NODE          2   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE      -43.2    
 LARGEST INCREMENT OF DISP.         -4.55       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        -4.55       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     1.367E-02   TIME AVG. MOMENT      1.367E-02
 LARGEST SCALED RESIDUAL MOMENT     -3.78       AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     -3.78    
 LARGEST INCREMENT OF ROTATION      9.103E-03   AT NODE         17   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     9.103E-03   AT NODE         17   DOF  5
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  45ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                      0.655       TIME AVG. FORCE       0.655    
 LARGEST SCALED RESIDUAL FORCE     -3.686E-02   AT NODE       2030   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -3.686E-02
 LARGEST INCREMENT OF DISP.         -4.57       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -8.794E-02   AT NODE       1848   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     1.138E-02   TIME AVG. MOMENT      1.138E-02
 LARGEST SCALED RESIDUAL MOMENT     1.106E-02   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     1.106E-02
 LARGEST INCREMENT OF ROTATION      9.138E-03   AT NODE         35   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     5.408E-03   AT NODE       1761   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  46ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                      0.656       TIME AVG. FORCE       0.656    
 LARGEST SCALED RESIDUAL FORCE     -8.863E-02   AT NODE        981   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -8.863E-02
 LARGEST INCREMENT OF DISP.         -4.58       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        9.191E-02   AT NODE        995   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     1.144E-02   TIME AVG. MOMENT      1.144E-02
 LARGEST SCALED RESIDUAL MOMENT    -6.807E-03   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT    -6.807E-03
 LARGEST INCREMENT OF ROTATION      9.180E-03   AT NODE         36   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     6.284E-03   AT NODE        994   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  45ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     4


 AVERAGE FORCE                      0.654       TIME AVG. FORCE       0.654    
 LARGEST SCALED RESIDUAL FORCE     -1.874E-02   AT NODE       1834   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -1.874E-02
 LARGEST INCREMENT OF DISP.         -4.59       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -4.614E-02   AT NODE       1736   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     1.148E-02   TIME AVG. MOMENT      1.148E-02
 LARGEST SCALED RESIDUAL MOMENT     3.437E-04   AT NODE       2046   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     3.437E-04
 LARGEST INCREMENT OF ROTATION      1.076E-02   AT NODE       1453   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     2.858E-03   AT NODE       1848   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  45ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     5


 AVERAGE FORCE                      0.655       TIME AVG. FORCE       0.655    
 LARGEST SCALED RESIDUAL FORCE     -2.599E-02   AT NODE       1219   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -2.599E-02
 LARGEST INCREMENT OF DISP.         -4.60       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        4.614E-02   AT NODE       1233   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     1.151E-02   TIME AVG. MOMENT      1.151E-02
 LARGEST SCALED RESIDUAL MOMENT    -2.364E-04   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT    -2.364E-04
 LARGEST INCREMENT OF ROTATION      1.302E-02   AT NODE       1384   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -3.437E-03   AT NODE       1219   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  46ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     6


 AVERAGE FORCE                      0.655       TIME AVG. FORCE       0.655    
 LARGEST SCALED RESIDUAL FORCE     -1.923E-03   AT NODE       1694   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -1.923E-03
 LARGEST INCREMENT OF DISP.         -4.60       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.251E-02   AT NODE       1639   DOF  2
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     1.152E-02   TIME AVG. MOMENT      1.152E-02
 LARGEST SCALED RESIDUAL MOMENT     2.193E-05   AT NODE       1934   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     2.193E-05
 LARGEST INCREMENT OF ROTATION      1.368E-02   AT NODE       1412   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     9.357E-04   AT NODE       1694   DOF  4
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF ROTATION CORRECTION   -8.678E-05
          MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 ITERATION SUMMARY FOR THE INCREMENT:   6 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  6 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  0.100    ,  FRACTION OF STEP COMPLETED  0.100    
 STEP TIME COMPLETED       0.100    ,  TOTAL TIME COMPLETED        0.100    


  INCREMENT     2 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  0.100    
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  48ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       1.42       TIME AVG. FORCE        1.04    
 LARGEST SCALED RESIDUAL FORCE      -1.22       AT NODE       1358   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      -1.22    
 LARGEST INCREMENT OF DISP.         -4.79       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -0.415       AT NODE       1386   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     8.448E-02   TIME AVG. MOMENT      4.800E-02
 LARGEST SCALED RESIDUAL MOMENT     -4.01       AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     -4.01    
 LARGEST INCREMENT OF ROTATION      3.701E-02   AT NODE       1384   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -2.334E-02   AT NODE       1361   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  45ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       1.34       TIME AVG. FORCE       0.998    
 LARGEST SCALED RESIDUAL FORCE     -1.626E-02   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE     -1.626E-02
 LARGEST INCREMENT OF DISP.         -4.87       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -8.348E-02   AT NODE         16   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.233       TIME AVG. MOMENT      0.122    
 LARGEST SCALED RESIDUAL MOMENT     3.486E-02   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     3.486E-02
 LARGEST INCREMENT OF ROTATION      3.688E-02   AT NODE       1398   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     8.290E-04   AT NODE         15   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  44ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       1.34       TIME AVG. FORCE       0.997    
 LARGEST SCALED RESIDUAL FORCE     -5.705E-02   AT NODE       1232   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -5.705E-02
 LARGEST INCREMENT OF DISP.         -4.86       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        7.066E-02   AT NODE       1288   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.255       TIME AVG. MOMENT      0.133    
 LARGEST SCALED RESIDUAL MOMENT    -1.315E-03   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT    -1.315E-03
 LARGEST INCREMENT OF ROTATION      3.272E-02   AT NODE       1412   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -5.058E-03   AT NODE       1218   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  46ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     4


 AVERAGE FORCE                       1.34       TIME AVG. FORCE       0.997    
 LARGEST SCALED RESIDUAL FORCE     -9.611E-07   AT NODE       1274   DOF  2
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -9.611E-07
 LARGEST INCREMENT OF DISP.         -4.86       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        3.049E-04   AT NODE       1443   DOF  2
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     0.255       TIME AVG. MOMENT      0.133    
 LARGEST SCALED RESIDUAL MOMENT     1.696E-06   AT NODE       1329   DOF  4
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     1.696E-06
 LARGEST INCREMENT OF ROTATION      3.275E-02   AT NODE       1412   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     2.663E-05   AT NODE       1414   DOF  4
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
        SOLVER ELAPSED TIME:  49ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       2.18       TIME AVG. FORCE        1.39    
 LARGEST SCALED RESIDUAL FORCE      -1.81       AT NODE       1289   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      -1.81    
 LARGEST INCREMENT OF DISP.         -5.27       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -0.470       AT NODE       1330   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     8.693E-02   TIME AVG. MOMENT      0.118    
 LARGEST SCALED RESIDUAL MOMENT     -5.05       AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     -5.05    
 LARGEST INCREMENT OF ROTATION     -6.052E-02   AT NODE       1361   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -2.814E-02   AT NODE       1275   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  45ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       2.08       TIME AVG. FORCE        1.36    
 LARGEST SCALED RESIDUAL FORCE     -4.818E-02   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE     -4.818E-02
 LARGEST INCREMENT OF DISP.         -5.46       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -0.189       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.231       TIME AVG. MOMENT      0.166    
 LARGEST SCALED RESIDUAL MOMENT     0.160       AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     0.160    
 LARGEST INCREMENT OF ROTATION     -6.032E-02   AT NODE       1361   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -2.526E-03   AT NODE       1204   DOF  5
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  46ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       2.08       TIME AVG. FORCE        1.36    
 LARGEST SCALED RESIDUAL FORCE     -0.346       AT NODE       1232   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -0.346    
 LARGEST INCREMENT OF DISP.         -5.42       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        0.146       AT NODE       1246   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.237       TIME AVG. MOMENT      0.168    
 LARGEST SCALED RESIDUAL MOMENT    -8.925E-03   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT    -8.925E-03
 LARGEST INCREMENT OF ROTATION     -5.403E-02   AT NODE       1404   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -1.276E-02   AT NODE       1218   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  45ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     4


 AVERAGE FORCE                       2.08       TIME AVG. FORCE        1.36    
 LARGEST SCALED RESIDUAL FORCE      3.609E-05   AT NODE       1218   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      3.609E-05
 LARGEST INCREMENT OF DISP.         -5.42       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -8.626E-04   AT NODE       1247   DOF  3
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     0.237       TIME AVG. MOMENT      0.168    
 LARGEST SCALED RESIDUAL MOMENT    -1.166E-05   AT NODE       1304   DOF  4
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT    -1.166E-05
 LARGEST INCREMENT OF ROTATION     -5.406E-02   AT NODE       1404   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -3.114E-05   AT NODE       1417   DOF  4
   INSTANCE: SHELL-1                                                                         
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED

 ITERATION SUMMARY FOR THE INCREMENT:   4 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  4 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  0.100    ,  FRACTION OF STEP COMPLETED  0.300    
 STEP TIME COMPLETED       0.300    ,  TOTAL TIME COMPLETED        0.300    


  INCREMENT     4 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  0.100    
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  48ms


 ***WARNING: THE SYSTEM MATRIX HAS 1 NEGATIVE EIGENVALUES.

     NEGATIVE EIGENVALUES MEAN THAT THE SYSTEM MATRIX IS NOT 
     POSITIVE DEFINITE:
     FOR EXAMPLE, A BIFURCATION (BUCKLING) LOAD MAY HAVE BEEN EXCEEDED.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       28.1       TIME AVG. FORCE        8.05    
 LARGEST SCALED RESIDUAL FORCE      -665.       AT NODE       1121   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      -665.    
 LARGEST INCREMENT OF DISP.         -6.38       AT NODE       1135   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        -7.24       AT NODE       1149   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                      8.66       TIME AVG. MOMENT       2.29    
 LARGEST SCALED RESIDUAL MOMENT     -429.       AT NODE       1122   DOF  4
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     -429.    
 LARGEST INCREMENT OF ROTATION      0.611       AT NODE       1107   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     0.655       AT NODE       1107   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  47ms


 ***WARNING: THE SYSTEM MATRIX HAS 508 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       13.1       TIME AVG. FORCE        4.29    
 LARGEST SCALED RESIDUAL FORCE      -993.       AT NODE       1721   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      -993.    
 LARGEST INCREMENT OF DISP.         -6.42       AT NODE       1261   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.         2.25       AT NODE       1071   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                      18.7       TIME AVG. MOMENT       4.81    
 LARGEST SCALED RESIDUAL MOMENT     1.926E+03   AT NODE       1173   DOF  4
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     1.926E+03
 LARGEST INCREMENT OF ROTATION      -3.15       AT NODE       1639   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     -5.65       AT NODE       1173   DOF  5
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  47ms


 ***WARNING: THE SYSTEM MATRIX HAS 820 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                      7.178E+03   TIME AVG. FORCE       1.796E+03
 LARGEST SCALED RESIDUAL FORCE      1.426E+06   AT NODE       2044   DOF  2
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      1.426E+06
 LARGEST INCREMENT OF DISP.          358.       AT NODE          7   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.         363.       AT NODE          7   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     8.701E+03   TIME AVG. MOMENT      2.175E+03
 LARGEST SCALED RESIDUAL MOMENT     5.767E+06   AT NODE       2366   DOF  4
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     5.767E+06
 LARGEST INCREMENT OF ROTATION       6.23       AT NODE       2468   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     -102.       AT NODE       1720   DOF  5
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  46ms


 ***WARNING: THE SYSTEM MATRIX HAS 5035 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     4


 AVERAGE FORCE                      3.097E+07   TIME AVG. FORCE       7.741E+06
 LARGEST SCALED RESIDUAL FORCE      1.744E+10   AT NODE        827   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      1.744E+10
 LARGEST INCREMENT OF DISP.          643.       AT NODE        799   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        -594.       AT NODE        561   DOF  1
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     4.178E+05   TIME AVG. MOMENT      1.044E+05
 LARGEST SCALED RESIDUAL MOMENT     5.639E+07   AT NODE        800   DOF  5
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     5.639E+07
 LARGEST INCREMENT OF ROTATION       6.04       AT NODE       2565   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.963E+03   AT NODE         63   DOF  6
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.


 ***NOTE: THE SOLUTION APPEARS TO BE DIVERGING. CONVERGENCE IS JUDGED UNLIKELY.


  INCREMENT     4 STARTS. ATTEMPT NUMBER  2, TIME INCREMENT  2.500E-02
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  45ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       2.28       TIME AVG. FORCE        1.59    
 LARGEST SCALED RESIDUAL FORCE     -7.052E-02   AT NODE         16   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -7.052E-02
 LARGEST INCREMENT OF DISP.         -1.52       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -0.160       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.300       TIME AVG. MOMENT      0.201    
 LARGEST SCALED RESIDUAL MOMENT    -0.270       AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT    -0.270    
 LARGEST INCREMENT OF ROTATION     -1.928E-02   AT NODE       1404   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -5.762E-03   AT NODE       1404   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  46ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       2.28       TIME AVG. FORCE        1.59    
 LARGEST SCALED RESIDUAL FORCE     -5.776E-04   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE     -5.776E-04
 LARGEST INCREMENT OF DISP.         -1.53       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -1.327E-02   AT NODE         27   DOF  3
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     0.292       TIME AVG. MOMENT      0.199    
 LARGEST SCALED RESIDUAL MOMENT     1.052E-03   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     1.052E-03
 LARGEST INCREMENT OF ROTATION      1.937E-02   AT NODE       1411   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     2.100E-04   AT NODE         15   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  46ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       2.28       TIME AVG. FORCE        1.59    
 LARGEST SCALED RESIDUAL FORCE     -3.230E-05   AT NODE       1204   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -3.230E-05
 LARGEST INCREMENT OF DISP.         -1.53       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        2.319E-03   AT NODE       1345   DOF  2
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     0.292       TIME AVG. MOMENT      0.199    
 LARGEST SCALED RESIDUAL MOMENT    -2.129E-06   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT    -2.129E-06
 LARGEST INCREMENT OF ROTATION     -1.952E-02   AT NODE       1404   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -1.514E-04   AT NODE       1376   DOF  4
   INSTANCE: SHELL-1                                                                         
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED

 ITERATION SUMMARY FOR THE INCREMENT:   3 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  3 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  2.500E-02,  FRACTION OF STEP COMPLETED  0.325    
 STEP TIME COMPLETED       0.325    ,  TOTAL TIME COMPLETED        0.325    


  INCREMENT     5 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  3.750E-02
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  47ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       2.61       TIME AVG. FORCE        1.79    
 LARGEST SCALED RESIDUAL FORCE     -8.398E-02   AT NODE       1428   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -8.398E-02
 LARGEST INCREMENT OF DISP.         -2.53       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -0.236       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.284       TIME AVG. MOMENT      0.216    
 LARGEST SCALED RESIDUAL MOMENT    -0.111       AT NODE         21   DOF  5
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT    -0.111    
 LARGEST INCREMENT OF ROTATION      3.771E-02   AT NODE       1411   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     8.428E-03   AT NODE       1411   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  45ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       2.61       TIME AVG. FORCE        1.79    
 LARGEST SCALED RESIDUAL FORCE     -1.392E-03   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE     -1.392E-03
 LARGEST INCREMENT OF DISP.         -2.56       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -2.925E-02   AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF DISP.    CORRECTION   -4.848E-04
          FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                     0.297       TIME AVG. MOMENT      0.218    
 LARGEST SCALED RESIDUAL MOMENT     4.765E-03   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     4.765E-03
 LARGEST INCREMENT OF ROTATION      3.792E-02   AT NODE       1411   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -3.333E-04   AT NODE       1392   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  45ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       2.61       TIME AVG. FORCE        1.79    
 LARGEST SCALED RESIDUAL FORCE     -9.203E-04   AT NODE       1344   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -9.203E-04
 LARGEST INCREMENT OF DISP.         -2.58       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -1.406E-02   AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     0.295       TIME AVG. MOMENT      0.218    
 LARGEST SCALED RESIDUAL MOMENT     3.992E-05   AT NODE        998   DOF  5
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     3.992E-05
 LARGEST INCREMENT OF ROTATION      3.879E-02   AT NODE       1411   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     8.675E-04   AT NODE       1410   DOF  4
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF ROTATION CORRECTION    7.268E-06
          MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 ITERATION SUMMARY FOR THE INCREMENT:   3 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  3 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  3.750E-02,  FRACTION OF STEP COMPLETED  0.363    
 STEP TIME COMPLETED       0.363    ,  TOTAL TIME COMPLETED        0.363    


  INCREMENT     6 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  5.625E-02
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  48ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       4.06       TIME AVG. FORCE        2.17    
 LARGEST SCALED RESIDUAL FORCE      -10.0       AT NODE       1331   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      -10.0    
 LARGEST INCREMENT OF DISP.         -5.44       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        -1.58       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.147       TIME AVG. MOMENT      0.206    
 LARGEST SCALED RESIDUAL MOMENT     -1.47       AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     -1.47    
 LARGEST INCREMENT OF ROTATION     -0.134       AT NODE       1390   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -7.622E-02   AT NODE       1376   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  45ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       3.29       TIME AVG. FORCE        2.04    
 LARGEST SCALED RESIDUAL FORCE     -0.418       AT NODE          2   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE     -0.418    
 LARGEST INCREMENT OF DISP.         -5.91       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -0.476       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.230       TIME AVG. MOMENT      0.220    
 LARGEST SCALED RESIDUAL MOMENT     0.357       AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     0.357    
 LARGEST INCREMENT OF ROTATION     -0.135       AT NODE       1390   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -5.363E-03   AT NODE       1247   DOF  5
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  44ms


 ***WARNING: THE SYSTEM MATRIX HAS 1 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       3.48       TIME AVG. FORCE        2.08    
 LARGEST SCALED RESIDUAL FORCE      -9.18       AT NODE       1345   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      -9.18    
 LARGEST INCREMENT OF DISP.         -5.61       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -0.628       AT NODE       1331   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.167       TIME AVG. MOMENT      0.210    
 LARGEST SCALED RESIDUAL MOMENT    -0.431       AT NODE       1346   DOF  4
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT    -0.431    
 LARGEST INCREMENT OF ROTATION      0.123       AT NODE       1396   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     6.708E-02   AT NODE       1345   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  44ms


 ***WARNING: THE SYSTEM MATRIX HAS 2 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     4


 AVERAGE FORCE                       3.26       TIME AVG. FORCE        2.04    
 LARGEST SCALED RESIDUAL FORCE      2.797E-02   AT NODE       1358   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      2.797E-02
 LARGEST INCREMENT OF DISP.         -5.64       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -3.527E-02   AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.214       TIME AVG. MOMENT      0.217    
 LARGEST SCALED RESIDUAL MOMENT    -4.470E-03   AT NODE       1346   DOF  4
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT    -4.470E-03
 LARGEST INCREMENT OF ROTATION      0.125       AT NODE       1396   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.331E-03   AT NODE       1480   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  47ms


 ***WARNING: THE SYSTEM MATRIX HAS 3 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     5


 AVERAGE FORCE                       5.62       TIME AVG. FORCE        2.43    
 LARGEST SCALED RESIDUAL FORCE      -30.3       AT NODE          2   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE      -30.3    
 LARGEST INCREMENT OF DISP.         -1.85       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.         3.79       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.278       TIME AVG. MOMENT      0.228    
 LARGEST SCALED RESIDUAL MOMENT     -8.18       AT NODE       1405   DOF  4
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     -8.18    
 LARGEST INCREMENT OF ROTATION     -4.728E-02   AT NODE       1395   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     0.171       AT NODE       1405   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.


 ***NOTE: THE SOLUTION APPEARS TO BE DIVERGING. CONVERGENCE IS JUDGED UNLIKELY.


  INCREMENT     6 STARTS. ATTEMPT NUMBER  2, TIME INCREMENT  1.406E-02
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  47ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       2.75       TIME AVG. FORCE        1.95    
 LARGEST SCALED RESIDUAL FORCE     -2.967E-02   AT NODE       1414   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -2.967E-02
 LARGEST INCREMENT OF DISP.         -1.11       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -0.144       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.302       TIME AVG. MOMENT      0.232    
 LARGEST SCALED RESIDUAL MOMENT    -4.336E-02   AT NODE         22   DOF  5
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT    -4.336E-02
 LARGEST INCREMENT OF ROTATION     -1.965E-02   AT NODE       1404   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     5.123E-03   AT NODE       1410   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  45ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       2.75       TIME AVG. FORCE        1.95    
 LARGEST SCALED RESIDUAL FORCE     -2.493E-04   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE     -2.493E-04
 LARGEST INCREMENT OF DISP.         -1.12       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -1.200E-02   AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF DISP.    CORRECTION   -1.008E-04
          FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                     0.310       TIME AVG. MOMENT      0.233    
 LARGEST SCALED RESIDUAL MOMENT     7.987E-04   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     7.987E-04
 LARGEST INCREMENT OF ROTATION     -1.992E-02   AT NODE       1404   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -3.021E-04   AT NODE       1405   DOF  4
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF ROTATION CORRECTION    5.566E-06
          MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 ITERATION SUMMARY FOR THE INCREMENT:   2 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  2 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  1.406E-02,  FRACTION OF STEP COMPLETED  0.377    
 STEP TIME COMPLETED       0.377    ,  TOTAL TIME COMPLETED        0.377    


  INCREMENT     7 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  2.109E-02
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  45ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       3.00       TIME AVG. FORCE        2.10    
 LARGEST SCALED RESIDUAL FORCE     -0.257       AT NODE          2   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE     -0.257    
 LARGEST INCREMENT OF DISP.         -2.06       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -0.376       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.265       TIME AVG. MOMENT      0.238    
 LARGEST SCALED RESIDUAL MOMENT     6.514E-02   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     6.514E-02
 LARGEST INCREMENT OF ROTATION      4.460E-02   AT NODE       1411   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.476E-02   AT NODE       1410   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  45ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       3.00       TIME AVG. FORCE        2.10    
 LARGEST SCALED RESIDUAL FORCE     -3.068E-03   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE     -3.068E-03
 LARGEST INCREMENT OF DISP.         -2.10       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -4.353E-02   AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF DISP.    CORRECTION   -5.190E-04
          FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                     0.295       TIME AVG. MOMENT      0.242    
 LARGEST SCALED RESIDUAL MOMENT     5.189E-03   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     5.189E-03
 LARGEST INCREMENT OF ROTATION      4.484E-02   AT NODE       1411   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -4.194E-04   AT NODE       1420   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  47ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       3.01       TIME AVG. FORCE        2.10    
 LARGEST SCALED RESIDUAL FORCE      4.431E-02   AT NODE       1406   DOF  2
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      4.431E-02
 LARGEST INCREMENT OF DISP.         -2.23       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -0.131       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.280       TIME AVG. MOMENT      0.240    
 LARGEST SCALED RESIDUAL MOMENT     4.420E-03   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     4.420E-03
 LARGEST INCREMENT OF ROTATION     -5.094E-02   AT NODE       1404   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     6.302E-03   AT NODE       1410   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  47ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     4


 AVERAGE FORCE                       3.01       TIME AVG. FORCE        2.11    
 LARGEST SCALED RESIDUAL FORCE     -1.744E-05   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE     -1.744E-05
 LARGEST INCREMENT OF DISP.         -2.24       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -2.880E-03   AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     0.278       TIME AVG. MOMENT      0.240    
 LARGEST SCALED RESIDUAL MOMENT     8.705E-06   AT NODE       1410   DOF  4
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     8.705E-06
 LARGEST INCREMENT OF ROTATION      5.102E-02   AT NODE       1411   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.031E-04   AT NODE       1410   DOF  4
   INSTANCE: SHELL-1                                                                         
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED

 ITERATION SUMMARY FOR THE INCREMENT:   4 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  4 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  2.109E-02,  FRACTION OF STEP COMPLETED  0.398    
 STEP TIME COMPLETED       0.398    ,  TOTAL TIME COMPLETED        0.398    


  INCREMENT     8 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  3.164E-02
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  45ms


 ***WARNING: THE SYSTEM MATRIX HAS 3 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       37.7       TIME AVG. FORCE        6.56    
 LARGEST SCALED RESIDUAL FORCE      -313.       AT NODE       1302   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      -313.    
 LARGEST INCREMENT OF DISP.          6.42       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.         9.77       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                      5.68       TIME AVG. MOMENT      0.919    
 LARGEST SCALED RESIDUAL MOMENT      223.       AT NODE       1383   DOF  4
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT      223.    
 LARGEST INCREMENT OF ROTATION     -0.415       AT NODE       1382   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -0.491       AT NODE       1382   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  46ms


 ***WARNING: THE SYSTEM MATRIX HAS 370 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       5.60       TIME AVG. FORCE        2.54    
 LARGEST SCALED RESIDUAL FORCE      -40.7       AT NODE       1368   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      -40.7    
 LARGEST INCREMENT OF DISP.          6.84       AT NODE       1358   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.         1.74       AT NODE       1393   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.919       TIME AVG. MOMENT      0.325    
 LARGEST SCALED RESIDUAL MOMENT      31.0       AT NODE       1355   DOF  4
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT      31.0    
 LARGEST INCREMENT OF ROTATION     -0.417       AT NODE       1326   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     0.122       AT NODE       1470   DOF  5
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  45ms


 ***WARNING: THE SYSTEM MATRIX HAS 385 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       37.5       TIME AVG. FORCE        6.53    
 LARGEST SCALED RESIDUAL FORCE     -1.359E+03   AT NODE       2506   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -1.359E+03
 LARGEST INCREMENT OF DISP.          8.18       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        -6.83       AT NODE        294   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                      12.1       TIME AVG. MOMENT       1.72    
 LARGEST SCALED RESIDUAL MOMENT    -2.205E+03   AT NODE       2505   DOF  4
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT    -2.205E+03
 LARGEST INCREMENT OF ROTATION       4.58       AT NODE       2269   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION      2.06       AT NODE       2086   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  46ms


 ***WARNING: THE SYSTEM MATRIX HAS 563 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     4


 AVERAGE FORCE                      1.325E+03   TIME AVG. FORCE        167.    
 LARGEST SCALED RESIDUAL FORCE     -3.753E+05   AT NODE       1329   DOF  2
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -3.753E+05
 LARGEST INCREMENT OF DISP.          91.1       AT NODE       1357   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.         86.0       AT NODE       1357   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     1.646E+03   TIME AVG. MOMENT       206.    
 LARGEST SCALED RESIDUAL MOMENT     6.022E+05   AT NODE       1229   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     6.022E+05
 LARGEST INCREMENT OF ROTATION       6.18       AT NODE       2165   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION      120.       AT NODE       1330   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.


 ***NOTE: THE SOLUTION APPEARS TO BE DIVERGING. CONVERGENCE IS JUDGED UNLIKELY.


  INCREMENT     8 STARTS. ATTEMPT NUMBER  2, TIME INCREMENT  7.910E-03
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  47ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       3.22       TIME AVG. FORCE        2.24    
 LARGEST SCALED RESIDUAL FORCE      -1.00       AT NODE          2   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE      -1.00    
 LARGEST INCREMENT OF DISP.         -1.53       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -0.694       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.220       TIME AVG. MOMENT      0.237    
 LARGEST SCALED RESIDUAL MOMENT     0.150       AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     0.150    
 LARGEST INCREMENT OF ROTATION      4.782E-02   AT NODE       1410   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     2.887E-02   AT NODE       1410   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  44ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       3.17       TIME AVG. FORCE        2.24    
 LARGEST SCALED RESIDUAL FORCE     -7.903E-03   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE     -7.903E-03
 LARGEST INCREMENT OF DISP.         -1.60       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -6.583E-02   AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF DISP.    CORRECTION   -5.199E-04
          FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                     0.252       TIME AVG. MOMENT      0.241    
 LARGEST SCALED RESIDUAL MOMENT     5.554E-03   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     5.554E-03
 LARGEST INCREMENT OF ROTATION     -4.808E-02   AT NODE       1405   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     4.019E-04   AT NODE       1423   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  45ms


 ***WARNING: THE SYSTEM MATRIX HAS 1 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       3.47       TIME AVG. FORCE        2.28    
 LARGEST SCALED RESIDUAL FORCE      -5.06       AT NODE          2   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE      -5.06    
 LARGEST INCREMENT OF DISP.        -0.224       AT NODE       1394   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.         1.55       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.120       TIME AVG. MOMENT      0.225    
 LARGEST SCALED RESIDUAL MOMENT     0.806       AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     0.806    
 LARGEST INCREMENT OF ROTATION     -1.718E-02   AT NODE       1410   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -6.526E-02   AT NODE       1410   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  44ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     4


 AVERAGE FORCE                       3.04       TIME AVG. FORCE        2.22    
 LARGEST SCALED RESIDUAL FORCE     -2.839E-02   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE     -2.839E-02
 LARGEST INCREMENT OF DISP.        -0.201       AT NODE       1352   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -0.108       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.328       TIME AVG. MOMENT      0.251    
 LARGEST SCALED RESIDUAL MOMENT     7.680E-03   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     7.680E-03
 LARGEST INCREMENT OF ROTATION     -1.693E-02   AT NODE       1410   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -3.810E-04   AT NODE       1420   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  44ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     5


 AVERAGE FORCE                       5.77       TIME AVG. FORCE        2.56    
 LARGEST SCALED RESIDUAL FORCE      -21.5       AT NODE       1401   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      -21.5    
 LARGEST INCREMENT OF DISP.         -3.04       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        -2.88       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.241       TIME AVG. MOMENT      0.240    
 LARGEST SCALED RESIDUAL MOMENT     -4.71       AT NODE       1411   DOF  4
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     -4.71    
 LARGEST INCREMENT OF ROTATION     -0.122       AT NODE       1404   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     0.136       AT NODE       1410   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.


 ***NOTE: THE SOLUTION APPEARS TO BE DIVERGING. CONVERGENCE IS JUDGED UNLIKELY.


  INCREMENT     8 STARTS. ATTEMPT NUMBER  3, TIME INCREMENT  1.978E-03
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  46ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       3.04       TIME AVG. FORCE        2.22    
 LARGEST SCALED RESIDUAL FORCE     -0.196       AT NODE          2   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE     -0.196    
 LARGEST INCREMENT OF DISP.        -0.306       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -0.306       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.289       TIME AVG. MOMENT      0.246    
 LARGEST SCALED RESIDUAL MOMENT     3.030E-02   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     3.030E-02
 LARGEST INCREMENT OF ROTATION     -8.684E-03   AT NODE       1405   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -8.684E-03   AT NODE       1405   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  46ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       3.04       TIME AVG. FORCE        2.22    
 LARGEST SCALED RESIDUAL FORCE     -8.015E-05   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE     -8.015E-05
 LARGEST INCREMENT OF DISP.        -0.312       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -6.161E-03   AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     0.292       TIME AVG. MOMENT      0.246    
 LARGEST SCALED RESIDUAL MOMENT    -2.461E-05   AT NODE       1405   DOF  4
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT    -2.461E-05
 LARGEST INCREMENT OF ROTATION     -8.826E-03   AT NODE       1405   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -1.417E-04   AT NODE       1405   DOF  4
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF ROTATION CORRECTION    1.151E-07
          MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  47ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       3.05       TIME AVG. FORCE        2.22    
 LARGEST SCALED RESIDUAL FORCE      1.601E-03   AT NODE       1406   DOF  2
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      1.601E-03
 LARGEST INCREMENT OF DISP.        -0.338       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -2.586E-02   AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     0.289       TIME AVG. MOMENT      0.246    
 LARGEST SCALED RESIDUAL MOMENT     1.715E-04   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     1.715E-04
 LARGEST INCREMENT OF ROTATION     -1.002E-02   AT NODE       1405   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -1.197E-03   AT NODE       1405   DOF  4
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  45ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     4


 AVERAGE FORCE                       3.05       TIME AVG. FORCE        2.22    
 LARGEST SCALED RESIDUAL FORCE     -3.966E-07   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE     -3.966E-07
 LARGEST INCREMENT OF DISP.        -0.339       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -4.250E-04   AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     0.289       TIME AVG. MOMENT      0.246    
 LARGEST SCALED RESIDUAL MOMENT    -1.437E-07   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT    -1.437E-07
 LARGEST INCREMENT OF ROTATION      1.004E-02   AT NODE       1410   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.853E-05   AT NODE       1410   DOF  4
   INSTANCE: SHELL-1                                                                         
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED

 ITERATION SUMMARY FOR THE INCREMENT:   4 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  4 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  1.978E-03,  FRACTION OF STEP COMPLETED  0.400    
 STEP TIME COMPLETED       0.400    ,  TOTAL TIME COMPLETED        0.400    


  INCREMENT     9 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  2.966E-03
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  46ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       3.12       TIME AVG. FORCE        2.32    
 LARGEST SCALED RESIDUAL FORCE     -9.317E-02   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE     -9.317E-02
 LARGEST INCREMENT OF DISP.        -0.723       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -0.215       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.275       TIME AVG. MOMENT      0.249    
 LARGEST SCALED RESIDUAL MOMENT     3.172E-02   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     3.172E-02
 LARGEST INCREMENT OF ROTATION     -2.412E-02   AT NODE       1405   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -9.061E-03   AT NODE       1405   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  46ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       3.12       TIME AVG. FORCE        2.32    
 LARGEST SCALED RESIDUAL FORCE     -3.637E-04   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE     -3.637E-04
 LARGEST INCREMENT OF DISP.        -0.737       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -1.365E-02   AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF DISP.    CORRECTION   -5.329E-05
          FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                     0.273       TIME AVG. MOMENT      0.249    
 LARGEST SCALED RESIDUAL MOMENT     2.073E-04   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     2.073E-04
 LARGEST INCREMENT OF ROTATION     -2.448E-02   AT NODE       1405   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -3.662E-04   AT NODE       1406   DOF  4
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF ROTATION CORRECTION   -2.394E-06
          MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 ITERATION SUMMARY FOR THE INCREMENT:   2 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  2 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  2.966E-03,  FRACTION OF STEP COMPLETED  0.403    
 STEP TIME COMPLETED       0.403    ,  TOTAL TIME COMPLETED        0.403    


  INCREMENT    10 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  4.449E-03
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  47ms


 ***WARNING: THE SYSTEM MATRIX HAS 5 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       3.95       TIME AVG. FORCE        2.49    
 LARGEST SCALED RESIDUAL FORCE       9.81       AT NODE       1406   DOF  2
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE       9.81    
 LARGEST INCREMENT OF DISP.          1.03       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.         2.13       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.129       TIME AVG. MOMENT      0.237    
 LARGEST SCALED RESIDUAL MOMENT      1.79       AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT      1.79    
 LARGEST INCREMENT OF ROTATION      5.784E-02   AT NODE       1405   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     9.456E-02   AT NODE       1405   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  46ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       3.05       TIME AVG. FORCE        2.39    
 LARGEST SCALED RESIDUAL FORCE     -7.710E-02   AT NODE       1406   DOF  2
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -7.710E-02
 LARGEST INCREMENT OF DISP.         0.920       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -0.110       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.359       TIME AVG. MOMENT      0.260    
 LARGEST SCALED RESIDUAL MOMENT     2.356E-02   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     2.356E-02
 LARGEST INCREMENT OF ROTATION      5.753E-02   AT NODE       1405   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.199E-03   AT NODE       1062   DOF  5
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  45ms


 ***WARNING: THE SYSTEM MATRIX HAS 1 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       3.10       TIME AVG. FORCE        2.40    
 LARGEST SCALED RESIDUAL FORCE      -2.10       AT NODE       1401   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      -2.10    
 LARGEST INCREMENT OF DISP.          1.44       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        0.516       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.239       TIME AVG. MOMENT      0.248    
 LARGEST SCALED RESIDUAL MOMENT     7.419E-02   AT NODE       1192   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     7.419E-02
 LARGEST INCREMENT OF ROTATION      7.938E-02   AT NODE       1404   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     3.046E-02   AT NODE       1401   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  46ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     4


 AVERAGE FORCE                       3.00       TIME AVG. FORCE        2.39    
 LARGEST SCALED RESIDUAL FORCE     -5.132E-03   AT NODE       1404   DOF  2
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -5.132E-03
 LARGEST INCREMENT OF DISP.          1.40       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -3.541E-02   AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF DISP.    CORRECTION   -2.357E-03
          FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                     0.422       TIME AVG. MOMENT      0.266    
 LARGEST SCALED RESIDUAL MOMENT    -2.768E-03   AT NODE       1404   DOF  4
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT    -2.768E-03
 LARGEST INCREMENT OF ROTATION     -7.800E-02   AT NODE       1411   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -2.082E-03   AT NODE       1405   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  46ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     5


 AVERAGE FORCE                       3.52       TIME AVG. FORCE        2.44    
 LARGEST SCALED RESIDUAL FORCE      -5.49       AT NODE       1401   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      -5.49    
 LARGEST INCREMENT OF DISP.         0.310       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        -1.09       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.121       TIME AVG. MOMENT      0.236    
 LARGEST SCALED RESIDUAL MOMENT     0.326       AT NODE       1404   DOF  4
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     0.326    
 LARGEST INCREMENT OF ROTATION      2.450E-02   AT NODE       1405   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -5.607E-02   AT NODE       1404   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.


 ***NOTE: THE SOLUTION APPEARS TO BE DIVERGING. CONVERGENCE IS JUDGED UNLIKELY.


  INCREMENT    10 STARTS. ATTEMPT NUMBER  2, TIME INCREMENT  1.112E-03
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  45ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       35.8       TIME AVG. FORCE        5.67    
 LARGEST SCALED RESIDUAL FORCE      -300.       AT NODE          2   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE      -300.    
 LARGEST INCREMENT OF DISP.         -12.2       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        -11.9       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                      4.88       TIME AVG. MOMENT      0.712    
 LARGEST SCALED RESIDUAL MOMENT      254.       AT NODE       1405   DOF  4
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT      254.    
 LARGEST INCREMENT OF ROTATION     -0.528       AT NODE       1405   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -0.519       AT NODE       1405   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  45ms


 ***WARNING: THE SYSTEM MATRIX HAS 276 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       6.18       TIME AVG. FORCE        2.71    
 LARGEST SCALED RESIDUAL FORCE      -67.4       AT NODE       1406   DOF  2
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      -67.4    
 LARGEST INCREMENT OF DISP.         -13.3       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        -2.34       AT NODE       1401   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.684       TIME AVG. MOMENT      0.292    
 LARGEST SCALED RESIDUAL MOMENT      35.7       AT NODE       1447   DOF  4
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT      35.7    
 LARGEST INCREMENT OF ROTATION     -0.535       AT NODE       1390   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     0.264       AT NODE       1313   DOF  6
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  44ms


 ***WARNING: THE SYSTEM MATRIX HAS 452 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       77.0       TIME AVG. FORCE        9.79    
 LARGEST SCALED RESIDUAL FORCE     -8.017E+03   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE     -8.017E+03
 LARGEST INCREMENT OF DISP.         -85.3       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        -72.0       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                      5.19       TIME AVG. MOMENT      0.743    
 LARGEST SCALED RESIDUAL MOMENT    -5.162E+03   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT    -5.162E+03
 LARGEST INCREMENT OF ROTATION      -1.36       AT NODE       1842   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     -1.47       AT NODE       1842   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  44ms


 ***WARNING: THE SYSTEM MATRIX HAS 314 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     4


 AVERAGE FORCE                       99.4       TIME AVG. FORCE        12.0    
 LARGEST SCALED RESIDUAL FORCE      7.123E+03   AT NODE       1841   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      7.123E+03
 LARGEST INCREMENT OF DISP.         -86.9       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.         5.08       AT NODE       1428   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                      148.       TIME AVG. MOMENT       15.0    
 LARGEST SCALED RESIDUAL MOMENT    -3.634E+03   AT NODE        339   DOF  5
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT    -3.634E+03
 LARGEST INCREMENT OF ROTATION       5.80       AT NODE       1816   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION      12.0       AT NODE       1493   DOF  6
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  45ms


 ***WARNING: THE SYSTEM MATRIX HAS 2196 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     5


 AVERAGE FORCE                      1.114E+05   TIME AVG. FORCE       1.114E+04
 LARGEST SCALED RESIDUAL FORCE      9.945E+07   AT NODE       1087   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      9.945E+07
 LARGEST INCREMENT OF DISP.         -534.       AT NODE       1156   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        -513.       AT NODE       1156   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     3.492E+04   TIME AVG. MOMENT      3.492E+03
 LARGEST SCALED RESIDUAL MOMENT    -1.363E+07   AT NODE       1155   DOF  5
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT    -1.363E+07
 LARGEST INCREMENT OF ROTATION      -6.01       AT NODE       2466   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION      605.       AT NODE         42   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.


 ***NOTE: THE SOLUTION APPEARS TO BE DIVERGING. CONVERGENCE IS JUDGED UNLIKELY.


  INCREMENT    10 STARTS. ATTEMPT NUMBER  3, TIME INCREMENT  2.781E-04
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  45ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       3.19       TIME AVG. FORCE        2.41    
 LARGEST SCALED RESIDUAL FORCE     -0.589       AT NODE          2   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE     -0.589    
 LARGEST INCREMENT OF DISP.        -0.529       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -0.529       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.266       TIME AVG. MOMENT      0.251    
 LARGEST SCALED RESIDUAL MOMENT     8.187E-02   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     8.187E-02
 LARGEST INCREMENT OF ROTATION     -2.244E-02   AT NODE       1405   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -2.244E-02   AT NODE       1405   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  47ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       3.17       TIME AVG. FORCE        2.41    
 LARGEST SCALED RESIDUAL FORCE     -9.691E-04   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE     -9.691E-04
 LARGEST INCREMENT OF DISP.        -0.550       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -2.124E-02   AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     0.264       TIME AVG. MOMENT      0.250    
 LARGEST SCALED RESIDUAL MOMENT     2.710E-04   AT NODE       1410   DOF  4
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     2.710E-04
 LARGEST INCREMENT OF ROTATION     -2.266E-02   AT NODE       1405   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     2.902E-04   AT NODE       1409   DOF  4
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF ROTATION CORRECTION    9.606E-07
          MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  45ms


 ***WARNING: THE SYSTEM MATRIX HAS 1 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       3.15       TIME AVG. FORCE        2.40    
 LARGEST SCALED RESIDUAL FORCE     -0.284       AT NODE          2   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE     -0.284    
 LARGEST INCREMENT OF DISP.        -0.183       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        0.367       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.277       TIME AVG. MOMENT      0.252    
 LARGEST SCALED RESIDUAL MOMENT     4.235E-02   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     4.235E-02
 LARGEST INCREMENT OF ROTATION     -7.350E-03   AT NODE       1405   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -1.531E-02   AT NODE       1410   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  45ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     4


 AVERAGE FORCE                       3.14       TIME AVG. FORCE        2.40    
 LARGEST SCALED RESIDUAL FORCE     -2.955E-04   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE     -2.955E-04
 LARGEST INCREMENT OF DISP.        -0.195       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -1.179E-02   AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     0.276       TIME AVG. MOMENT      0.252    
 LARGEST SCALED RESIDUAL MOMENT    -1.283E-04   AT NODE       1405   DOF  4
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT    -1.283E-04
 LARGEST INCREMENT OF ROTATION      7.577E-03   AT NODE       1410   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -2.640E-04   AT NODE       1406   DOF  4
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  45ms


 ***WARNING: THE SYSTEM MATRIX HAS 1 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     5


 AVERAGE FORCE                       3.74       TIME AVG. FORCE        2.46    
 LARGEST SCALED RESIDUAL FORCE      -8.18       AT NODE          2   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE      -8.18    
 LARGEST INCREMENT OF DISP.          1.78       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.         1.97       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.138       TIME AVG. MOMENT      0.238    
 LARGEST SCALED RESIDUAL MOMENT      1.33       AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT      1.33    
 LARGEST INCREMENT OF ROTATION     -7.775E-02   AT NODE       1410   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -8.532E-02   AT NODE       1410   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.


 ***NOTE: THE SOLUTION APPEARS TO BE DIVERGING. CONVERGENCE IS JUDGED UNLIKELY.


  INCREMENT    10 STARTS. ATTEMPT NUMBER  4, TIME INCREMENT  6.952E-05
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  44ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       3.16       TIME AVG. FORCE        2.41    
 LARGEST SCALED RESIDUAL FORCE      0.299       AT NODE       1406   DOF  2
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      0.299    
 LARGEST INCREMENT OF DISP.        -0.374       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -0.374       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.272       TIME AVG. MOMENT      0.251    
 LARGEST SCALED RESIDUAL MOMENT     4.083E-02   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     4.083E-02
 LARGEST INCREMENT OF ROTATION     -1.624E-02   AT NODE       1405   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -1.624E-02   AT NODE       1405   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  46ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       3.15       TIME AVG. FORCE        2.41    
 LARGEST SCALED RESIDUAL FORCE     -3.303E-04   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE     -3.303E-04
 LARGEST INCREMENT OF DISP.        -0.386       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -1.246E-02   AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     0.269       TIME AVG. MOMENT      0.251    
 LARGEST SCALED RESIDUAL MOMENT     1.327E-04   AT NODE       1410   DOF  4
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     1.327E-04
 LARGEST INCREMENT OF ROTATION     -1.645E-02   AT NODE       1405   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     2.538E-04   AT NODE       1409   DOF  4
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF ROTATION CORRECTION    8.246E-07
          MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  45ms


 ***WARNING: THE SYSTEM MATRIX HAS 1 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       3.13       TIME AVG. FORCE        2.40    
 LARGEST SCALED RESIDUAL FORCE     -0.208       AT NODE          2   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE     -0.208    
 LARGEST INCREMENT OF DISP.        -7.234E-02   AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        0.314       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.280       TIME AVG. MOMENT      0.252    
 LARGEST SCALED RESIDUAL MOMENT     3.079E-02   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     3.079E-02
 LARGEST INCREMENT OF ROTATION      3.103E-03   AT NODE       1410   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.335E-02   AT NODE       1405   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  46ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     4


 AVERAGE FORCE                       3.13       TIME AVG. FORCE        2.40    
 LARGEST SCALED RESIDUAL FORCE     -1.833E-04   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE     -1.833E-04
 LARGEST INCREMENT OF DISP.        -8.164E-02   AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -9.300E-03   AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     0.281       TIME AVG. MOMENT      0.252    
 LARGEST SCALED RESIDUAL MOMENT     8.659E-05   AT NODE       1410   DOF  4
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     8.659E-05
 LARGEST INCREMENT OF ROTATION      3.308E-03   AT NODE       1410   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     2.322E-04   AT NODE       1409   DOF  4
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  46ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     5


 AVERAGE FORCE                       3.25       TIME AVG. FORCE        2.42    
 LARGEST SCALED RESIDUAL FORCE       1.11       AT NODE       1406   DOF  2
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE       1.11    
 LARGEST INCREMENT OF DISP.        -0.794       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -0.713       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.190       TIME AVG. MOMENT      0.243    
 LARGEST SCALED RESIDUAL MOMENT     0.145       AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     0.145    
 LARGEST INCREMENT OF ROTATION     -3.452E-02   AT NODE       1405   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -3.121E-02   AT NODE       1405   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.


 ***NOTE: THE SOLUTION APPEARS TO BE DIVERGING. CONVERGENCE IS JUDGED UNLIKELY.


  INCREMENT    10 STARTS. ATTEMPT NUMBER  5, TIME INCREMENT  1.738E-05
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  45ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       3.16       TIME AVG. FORCE        2.41    
 LARGEST SCALED RESIDUAL FORCE      0.244       AT NODE       1406   DOF  2
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      0.244    
 LARGEST INCREMENT OF DISP.        -0.335       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -0.335       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.273       TIME AVG. MOMENT      0.251    
 LARGEST SCALED RESIDUAL MOMENT     3.272E-02   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     3.272E-02
 LARGEST INCREMENT OF ROTATION     -1.469E-02   AT NODE       1405   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -1.469E-02   AT NODE       1405   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  45ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       3.15       TIME AVG. FORCE        2.41    
 LARGEST SCALED RESIDUAL FORCE     -2.431E-04   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE     -2.431E-04
 LARGEST INCREMENT OF DISP.        -0.346       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -1.070E-02   AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     0.270       TIME AVG. MOMENT      0.251    
 LARGEST SCALED RESIDUAL MOMENT     1.058E-04   AT NODE       1410   DOF  4
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     1.058E-04
 LARGEST INCREMENT OF ROTATION     -1.490E-02   AT NODE       1405   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     2.423E-04   AT NODE       1409   DOF  4
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF ROTATION CORRECTION    7.833E-07
          MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  44ms


 ***WARNING: THE SYSTEM MATRIX HAS 1 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       3.13       TIME AVG. FORCE        2.40    
 LARGEST SCALED RESIDUAL FORCE     -0.195       AT NODE          2   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE     -0.195    
 LARGEST INCREMENT OF DISP.        -4.107E-02   AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        0.305       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.282       TIME AVG. MOMENT      0.252    
 LARGEST SCALED RESIDUAL MOMENT     2.896E-02   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     2.896E-02
 LARGEST INCREMENT OF ROTATION      1.883E-03   AT NODE       1410   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.301E-02   AT NODE       1405   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  46ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     4


 AVERAGE FORCE                       3.13       TIME AVG. FORCE        2.40    
 LARGEST SCALED RESIDUAL FORCE     -1.673E-04   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE     -1.673E-04
 LARGEST INCREMENT OF DISP.        -4.995E-02   AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -8.887E-03   AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     0.283       TIME AVG. MOMENT      0.252    
 LARGEST SCALED RESIDUAL MOMENT    -8.023E-05   AT NODE       1405   DOF  4
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT    -8.023E-05
 LARGEST INCREMENT OF ROTATION      2.083E-03   AT NODE       1410   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     2.257E-04   AT NODE       1409   DOF  4
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  16728
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      2.759e+08
        SOLVER ELAPSED TIME:  46ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     5


 AVERAGE FORCE                       3.18       TIME AVG. FORCE        2.41    
 LARGEST SCALED RESIDUAL FORCE      0.475       AT NODE       1406   DOF  2
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      0.475    
 LARGEST INCREMENT OF DISP.        -0.516       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -0.466       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.268       TIME AVG. MOMENT      0.251    
 LARGEST SCALED RESIDUAL MOMENT     6.281E-02   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     6.281E-02
 LARGEST INCREMENT OF ROTATION      2.254E-02   AT NODE       1410   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     2.046E-02   AT NODE       1410   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.


 ***NOTE: THE SOLUTION APPEARS TO BE DIVERGING. CONVERGENCE IS JUDGED UNLIKELY.


 ***ERROR: TOO MANY ATTEMPTS MADE FOR THIS INCREMENT

 ***ERROR: THE ANALYSIS HAS BEEN TERMINATED DUE TO PREVIOUS ERRORS. ALL OUTPUT 
           REQUESTS HAVE BEEN WRITTEN FOR THE LAST CONVERGED INCREMENT.



     ANALYSIS SUMMARY:
     TOTAL OF         10  INCREMENTS
                       9  CUTBACKS IN AUTOMATIC INCREMENTATION
                      75  ITERATIONS INCLUDING CONTACT ITERATIONS IF PRESENT
                      75  PASSES THROUGH THE EQUATION SOLVER OF WHICH 
                      75  INVOLVE MATRIX DECOMPOSITION, INCLUDING
                       0  DECOMPOSITION(S) OF THE MASS MATRIX
                       1  REORDERING OF EQUATIONS TO MINIMIZE WAVEFRONT
                       0  ADDITIONAL RESIDUAL EVALUATIONS FOR LINE SEARCHES
                       0  ADDITIONAL OPERATOR EVALUATIONS FOR LINE SEARCHES
                       1  WARNING MESSAGES DURING USER INPUT PROCESSING
                      22  WARNING MESSAGES DURING ANALYSIS
                       0  ANALYSIS WARNINGS ARE NUMERICAL PROBLEM MESSAGES
                      22  ANALYSIS WARNINGS ARE NEGATIVE EIGENVALUE MESSAGES
                       2  ERROR MESSAGES



     JOB TIME SUMMARY
       USER TIME (SEC)      =       3.E+01
       SYSTEM TIME (SEC)    =       2.E+00
       TOTAL CPU TIME (SEC) =       3.E+01
       WALLCLOCK TIME (SEC) =           14
       MEMORY PEAK (GB)     =            0
