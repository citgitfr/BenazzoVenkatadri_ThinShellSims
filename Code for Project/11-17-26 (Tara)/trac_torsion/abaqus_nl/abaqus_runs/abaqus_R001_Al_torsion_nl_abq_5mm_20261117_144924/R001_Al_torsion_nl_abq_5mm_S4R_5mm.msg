1

   Abaqus 2026                                  Date 17-Nov-2026   Time 14:50:17
   For use by CAL TECH under license from Dassault Systemes or its subsidiary.

                                                                                 
                                                                                 
 STEP    1     INCREMENT     1     STEP TIME    0.00    


                        S T E P       1     S T A T I C   A N A L Y S I S


                                                                                          

     AUTOMATIC TIME CONTROL WITH -
          A SUGGESTED INITIAL TIME INCREMENT OF                5.000E-02
          AND A TOTAL TIME PERIOD OF                            1.00    
          THE MINIMUM TIME INCREMENT ALLOWED IS                1.000E-05
          THE MAXIMUM TIME INCREMENT ALLOWED IS                5.000E-02

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

     CHARACTERISTIC ELEMENT LENGTH      4.85    

     DETAILS REGARDING ACTUAL SOLUTION WAVEFRONT REQUESTED

     DETAILED OUTPUT OF DIAGNOSTICS TO DATABASE REQUESTED

     PRINT OF INCREMENT NUMBER, TIME, ETC., TO THE MESSAGE FILE EVERY     1  INCREMENTS

     ELEMENT OPERATIONS WILL BE CARRIED OUT IN PARALLEL USING   4 THREADS ON 1 DOMAIN

     PARALLEL CONTACT TRACKING ENABLED


     COLLECTING MODEL CONSTRAINT INFORMATION FOR OVERCONSTRAINT CHECKS

     COLLECTING STEP CONSTRAINT INFORMATION FOR OVERCONSTRAINT CHECKS


  INCREMENT     1 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  5.000E-02
 
     INITIAL ELEMENT LOAD BALANCE
            DOMAIN    1     THREAD    NUMBER OF ELEMENTS
                              1            372
                              2            558
                              3            574
                              4            496
      SPARSE STORAGE WAS USED FOR NODAL DATA ON WORKER THREADS
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  57ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       3.99       TIME AVG. FORCE        3.99    
 LARGEST SCALED RESIDUAL FORCE       78.7       AT NODE        619   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE       78.7    
 LARGEST INCREMENT OF DISP.         0.580       AT NODE        619   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        0.580       AT NODE        619   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     4.977E-02   TIME AVG. MOMENT      4.977E-02
 LARGEST SCALED RESIDUAL MOMENT     -43.7       AT NODE          1   DOF  4
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     -43.7    
 LARGEST INCREMENT OF ROTATION      4.389E-02   AT NODE          1   DOF  4
   INSTANCE: {assembly node}                                                                 
 LARGEST CORRECTION TO ROTATION     4.389E-02   AT NODE          1   DOF  4
   INSTANCE: {assembly node}                                                                 
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  66ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                      6.357E-03   TIME AVG. FORCE       6.357E-03
 LARGEST SCALED RESIDUAL FORCE      0.148       AT NODE          1   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE      0.148    
 LARGEST INCREMENT OF DISP.         0.580       AT NODE          7   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.274E-02   AT NODE        619   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     5.933E-04   TIME AVG. MOMENT      5.933E-04
 LARGEST SCALED RESIDUAL MOMENT    -0.262       AT NODE          1   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT    -0.262    
 LARGEST INCREMENT OF ROTATION      4.395E-02   AT NODE       1418   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -1.431E-04   AT NODE        411   DOF  5
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  15ms


 ***WARNING: THE SYSTEM MATRIX HAS 2 NEGATIVE EIGENVALUES.

     NEGATIVE EIGENVALUES MEAN THAT THE SYSTEM MATRIX IS NOT 
     POSITIVE DEFINITE:
     FOR EXAMPLE, A BIFURCATION (BUCKLING) LOAD MAY HAVE BEEN EXCEEDED.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                      3.357E-03   TIME AVG. FORCE       3.357E-03
 LARGEST SCALED RESIDUAL FORCE     -4.669E-05   AT NODE          1   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE     -4.669E-05
 LARGEST INCREMENT OF DISP.         0.580       AT NODE          7   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        3.796E-04   AT NODE        410   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     5.455E-04   TIME AVG. MOMENT      5.455E-04
 LARGEST SCALED RESIDUAL MOMENT    -2.550E-04   AT NODE          1   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT    -2.550E-04
 LARGEST INCREMENT OF ROTATION      4.387E-02   AT NODE          1   DOF  4
   INSTANCE: {assembly node}                                                                 
 LARGEST CORRECTION TO ROTATION     1.438E-04   AT NODE        411   DOF  5
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  15ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     4


 AVERAGE FORCE                      3.353E-03   TIME AVG. FORCE       3.353E-03
 LARGEST SCALED RESIDUAL FORCE      6.742E-05   AT NODE        619   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      6.742E-05
 LARGEST INCREMENT OF DISP.         0.580       AT NODE          7   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -5.475E-04   AT NODE        667   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     5.450E-04   TIME AVG. MOMENT      5.450E-04
 LARGEST SCALED RESIDUAL MOMENT     1.032E-05   AT NODE        819   DOF  5
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     1.032E-05
 LARGEST INCREMENT OF ROTATION      4.383E-02   AT NODE          1   DOF  4
   INSTANCE: {assembly node}                                                                 
 LARGEST CORRECTION TO ROTATION    -4.170E-05   AT NODE        462   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  16ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     5


 AVERAGE FORCE                      3.353E-03   TIME AVG. FORCE       3.353E-03
 LARGEST SCALED RESIDUAL FORCE      5.761E-09   AT NODE          1   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE      5.761E-09
 LARGEST INCREMENT OF DISP.         0.580       AT NODE          7   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -7.596E-07   AT NODE        619   DOF  2
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     5.450E-04   TIME AVG. MOMENT      5.450E-04
 LARGEST SCALED RESIDUAL MOMENT     2.843E-08   AT NODE          1   DOF  6
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     2.843E-08
 LARGEST INCREMENT OF ROTATION      4.383E-02   AT NODE          1   DOF  4
   INSTANCE: {assembly node}                                                                 
 LARGEST CORRECTION TO ROTATION    -5.776E-08   AT NODE        417   DOF  4
   INSTANCE: SHELL-1                                                                         
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED

 ITERATION SUMMARY FOR THE INCREMENT:   5 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  5 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  5.000E-02,  FRACTION OF STEP COMPLETED  5.000E-02
 STEP TIME COMPLETED       5.000E-02,  TOTAL TIME COMPLETED        5.000E-02


  INCREMENT     2 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  5.000E-02
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  13ms


 ***WARNING: THE SYSTEM MATRIX HAS 1 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       85.1       TIME AVG. FORCE        42.6    
 LARGEST SCALED RESIDUAL FORCE      1.289E+03   AT NODE        691   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      1.289E+03
 LARGEST INCREMENT OF DISP.          3.01       AT NODE        686   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.         2.61       AT NODE        689   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                      3.54       TIME AVG. MOMENT       1.77    
 LARGEST SCALED RESIDUAL MOMENT     -323.       AT NODE          1   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     -323.    
 LARGEST INCREMENT OF ROTATION      0.218       AT NODE        484   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     0.188       AT NODE        488   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  13ms


 ***WARNING: THE SYSTEM MATRIX HAS 15 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       1.55       TIME AVG. FORCE       0.776    
 LARGEST SCALED RESIDUAL FORCE      -34.5       AT NODE        691   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      -34.5    
 LARGEST INCREMENT OF DISP.          2.95       AT NODE        686   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        0.247       AT NODE        340   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     8.397E-02   TIME AVG. MOMENT      4.226E-02
 LARGEST SCALED RESIDUAL MOMENT     -11.1       AT NODE          1   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     -11.1    
 LARGEST INCREMENT OF ROTATION      0.217       AT NODE        484   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     2.957E-02   AT NODE        412   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  16ms


 ***WARNING: THE SYSTEM MATRIX HAS 151 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       2.02       TIME AVG. FORCE        1.01    
 LARGEST SCALED RESIDUAL FORCE       132.       AT NODE        278   DOF  2
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE       132.    
 LARGEST INCREMENT OF DISP.          3.23       AT NODE        683   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        0.539       AT NODE          7   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     6.978E-02   TIME AVG. MOMENT      3.516E-02
 LARGEST SCALED RESIDUAL MOMENT     -12.8       AT NODE          1   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     -12.8    
 LARGEST INCREMENT OF ROTATION      0.321       AT NODE        362   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     0.118       AT NODE        362   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  15ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     4


 AVERAGE FORCE                      0.360       TIME AVG. FORCE       0.182    
 LARGEST SCALED RESIDUAL FORCE       6.28       AT NODE        708   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE       6.28    
 LARGEST INCREMENT OF DISP.          3.06       AT NODE        688   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -0.354       AT NODE          5   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     2.791E-02   TIME AVG. MOMENT      1.423E-02
 LARGEST SCALED RESIDUAL MOMENT      1.10       AT NODE          1   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT      1.10    
 LARGEST INCREMENT OF ROTATION      0.291       AT NODE        362   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     4.599E-02   AT NODE        497   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  14ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     5


 AVERAGE FORCE                       2.18       TIME AVG. FORCE        1.09    
 LARGEST SCALED RESIDUAL FORCE       477.       AT NODE        278   DOF  2
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE       477.    
 LARGEST INCREMENT OF DISP.          2.99       AT NODE        688   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        -1.09       AT NODE        278   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     6.640E-02   TIME AVG. MOMENT      3.347E-02
 LARGEST SCALED RESIDUAL MOMENT     -54.0       AT NODE          1   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     -54.0    
 LARGEST INCREMENT OF ROTATION      0.223       AT NODE        346   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     0.203       AT NODE        278   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.


 ***NOTE: THE SOLUTION APPEARS TO BE DIVERGING. CONVERGENCE IS JUDGED UNLIKELY.


  INCREMENT     2 STARTS. ATTEMPT NUMBER  2, TIME INCREMENT  1.250E-02
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  17ms


 ***WARNING: THE SYSTEM MATRIX HAS 1 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      3.068E-02   TIME AVG. FORCE       1.701E-02
 LARGEST SCALED RESIDUAL FORCE       21.0       AT NODE          1   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE       21.0    
 LARGEST INCREMENT OF DISP.        -0.149       AT NODE        401   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        2.789E-02   AT NODE        690   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     4.848E-03   TIME AVG. MOMENT      2.696E-03
 LARGEST SCALED RESIDUAL MOMENT     -49.4       AT NODE          1   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     -49.4    
 LARGEST INCREMENT OF ROTATION      1.451E-02   AT NODE        416   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -3.843E-03   AT NODE        412   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  13ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                      4.508E-03   TIME AVG. FORCE       3.931E-03
 LARGEST SCALED RESIDUAL FORCE     -0.120       AT NODE          1   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE     -0.120    
 LARGEST INCREMENT OF DISP.         0.145       AT NODE        641   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        6.874E-03   AT NODE        402   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     7.028E-04   TIME AVG. MOMENT      6.239E-04
 LARGEST SCALED RESIDUAL MOMENT    -0.275       AT NODE          1   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT    -0.275    
 LARGEST INCREMENT OF ROTATION      1.103E-02   AT NODE        411   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     3.858E-03   AT NODE        412   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  15ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                      1.075E-02   TIME AVG. FORCE       7.050E-03
 LARGEST SCALED RESIDUAL FORCE      0.124       AT NODE        695   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      0.124    
 LARGEST INCREMENT OF DISP.         0.148       AT NODE          7   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        2.385E-02   AT NODE        337   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     6.927E-04   TIME AVG. MOMENT      6.189E-04
 LARGEST SCALED RESIDUAL MOMENT    -2.838E-03   AT NODE          1   DOF  4
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT    -2.838E-03
 LARGEST INCREMENT OF ROTATION      1.122E-02   AT NODE          1   DOF  4
   INSTANCE: {assembly node}                                                                 
 LARGEST CORRECTION TO ROTATION    -1.803E-03   AT NODE        492   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  12ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     4


 AVERAGE FORCE                      4.280E-03   TIME AVG. FORCE       3.816E-03
 LARGEST SCALED RESIDUAL FORCE      5.013E-05   AT NODE        619   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      5.013E-05
 LARGEST INCREMENT OF DISP.         0.149       AT NODE          7   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        4.600E-04   AT NODE          7   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     6.916E-04   TIME AVG. MOMENT      6.183E-04
 LARGEST SCALED RESIDUAL MOMENT    -8.976E-06   AT NODE          1   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT    -8.976E-06
 LARGEST INCREMENT OF ROTATION      1.126E-02   AT NODE          1   DOF  4
   INSTANCE: {assembly node}                                                                 
 LARGEST CORRECTION TO ROTATION     3.830E-05   AT NODE        419   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  15ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     5


 AVERAGE FORCE                      4.392E-03   TIME AVG. FORCE       3.872E-03
 LARGEST SCALED RESIDUAL FORCE      4.580E-03   AT NODE        619   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      4.580E-03
 LARGEST INCREMENT OF DISP.         0.144       AT NODE          7   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -4.419E-03   AT NODE        628   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     6.870E-04   TIME AVG. MOMENT      6.160E-04
 LARGEST SCALED RESIDUAL MOMENT     7.019E-04   AT NODE        819   DOF  5
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     7.019E-04
 LARGEST INCREMENT OF ROTATION      1.092E-02   AT NODE          1   DOF  4
   INSTANCE: {assembly node}                                                                 
 LARGEST CORRECTION TO ROTATION    -3.346E-04   AT NODE        842   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  12ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     6


 AVERAGE FORCE                      4.249E-03   TIME AVG. FORCE       3.801E-03
 LARGEST SCALED RESIDUAL FORCE      4.160E-08   AT NODE        619   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      4.160E-08
 LARGEST INCREMENT OF DISP.         0.144       AT NODE          7   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -1.347E-05   AT NODE        619   DOF  2
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     6.875E-04   TIME AVG. MOMENT      6.163E-04
 LARGEST SCALED RESIDUAL MOMENT    -8.978E-08   AT NODE          1   DOF  4
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT    -8.978E-08
 LARGEST INCREMENT OF ROTATION      1.092E-02   AT NODE          1   DOF  4
   INSTANCE: {assembly node}                                                                 
 LARGEST CORRECTION TO ROTATION    -1.021E-06   AT NODE        417   DOF  4
   INSTANCE: SHELL-1                                                                         
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED

 ITERATION SUMMARY FOR THE INCREMENT:   6 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  6 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  1.250E-02,  FRACTION OF STEP COMPLETED  6.250E-02
 STEP TIME COMPLETED       6.250E-02,  TOTAL TIME COMPLETED        6.250E-02


  INCREMENT     3 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  1.250E-02
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  18ms


 ***WARNING: THE SYSTEM MATRIX HAS 1 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      1.168E-02   TIME AVG. FORCE       6.426E-03
 LARGEST SCALED RESIDUAL FORCE       8.36       AT NODE          1   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE       8.36    
 LARGEST INCREMENT OF DISP.         0.144       AT NODE          7   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -4.240E-03   AT NODE        426   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     2.283E-03   TIME AVG. MOMENT      1.172E-03
 LARGEST SCALED RESIDUAL MOMENT     -19.5       AT NODE          1   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     -19.5    
 LARGEST INCREMENT OF ROTATION      1.236E-02   AT NODE        416   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -1.501E-03   AT NODE        412   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  12ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                      5.170E-03   TIME AVG. FORCE       4.257E-03
 LARGEST SCALED RESIDUAL FORCE     -1.881E-02   AT NODE          1   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE     -1.881E-02
 LARGEST INCREMENT OF DISP.         0.144       AT NODE          7   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        3.406E-03   AT NODE        402   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     8.265E-04   TIME AVG. MOMENT      6.863E-04
 LARGEST SCALED RESIDUAL MOMENT    -4.371E-02   AT NODE          1   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT    -4.371E-02
 LARGEST INCREMENT OF ROTATION      1.091E-02   AT NODE        411   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.491E-03   AT NODE        412   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  12ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                      5.161E-03   TIME AVG. FORCE       4.254E-03
 LARGEST SCALED RESIDUAL FORCE      1.194E-05   AT NODE        711   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      1.194E-05
 LARGEST INCREMENT OF DISP.         0.144       AT NODE          7   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        5.272E-04   AT NODE        417   DOF  3
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     8.254E-04   TIME AVG. MOMENT      6.860E-04
 LARGEST SCALED RESIDUAL MOMENT    -8.947E-06   AT NODE          1   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT    -8.947E-06
 LARGEST INCREMENT OF ROTATION      1.089E-02   AT NODE          1   DOF  4
   INSTANCE: {assembly node}                                                                 
 LARGEST CORRECTION TO ROTATION     2.849E-05   AT NODE        417   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  17ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     4


 AVERAGE FORCE                      5.159E-03   TIME AVG. FORCE       4.253E-03
 LARGEST SCALED RESIDUAL FORCE      6.135E-06   AT NODE        619   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      6.135E-06
 LARGEST INCREMENT OF DISP.         0.144       AT NODE          7   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -1.617E-04   AT NODE          7   DOF  2
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     8.252E-04   TIME AVG. MOMENT      6.859E-04
 LARGEST SCALED RESIDUAL MOMENT    -9.670E-07   AT NODE          1   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT    -9.670E-07
 LARGEST INCREMENT OF ROTATION      1.088E-02   AT NODE          1   DOF  4
   INSTANCE: {assembly node}                                                                 
 LARGEST CORRECTION TO ROTATION    -1.226E-05   AT NODE        410   DOF  4
   INSTANCE: SHELL-1                                                                         
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED

 ITERATION SUMMARY FOR THE INCREMENT:   4 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  4 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  1.250E-02,  FRACTION OF STEP COMPLETED  7.500E-02
 STEP TIME COMPLETED       7.500E-02,  TOTAL TIME COMPLETED        7.500E-02


  INCREMENT     4 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  1.250E-02
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  13ms


 ***WARNING: THE SYSTEM MATRIX HAS 1 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      1.253E-02   TIME AVG. FORCE       6.322E-03
 LARGEST SCALED RESIDUAL FORCE       8.30       AT NODE          1   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE       8.30    
 LARGEST INCREMENT OF DISP.         0.143       AT NODE          7   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -4.205E-03   AT NODE        426   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     2.405E-03   TIME AVG. MOMENT      1.116E-03
 LARGEST SCALED RESIDUAL MOMENT     -19.4       AT NODE          1   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     -19.4    
 LARGEST INCREMENT OF ROTATION      1.231E-02   AT NODE        416   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -1.491E-03   AT NODE        412   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  14ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                      6.106E-03   TIME AVG. FORCE       4.717E-03
 LARGEST SCALED RESIDUAL FORCE     -1.855E-02   AT NODE          1   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE     -1.855E-02
 LARGEST INCREMENT OF DISP.         0.143       AT NODE          7   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        3.403E-03   AT NODE        402   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     9.642E-04   TIME AVG. MOMENT      7.555E-04
 LARGEST SCALED RESIDUAL MOMENT    -4.308E-02   AT NODE          1   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT    -4.308E-02
 LARGEST INCREMENT OF ROTATION      1.088E-02   AT NODE        411   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.481E-03   AT NODE        412   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  12ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                      6.099E-03   TIME AVG. FORCE       4.715E-03
 LARGEST SCALED RESIDUAL FORCE     -8.713E-06   AT NODE        417   DOF  2
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -8.713E-06
 LARGEST INCREMENT OF DISP.         0.143       AT NODE          7   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        5.658E-04   AT NODE        417   DOF  3
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     9.636E-04   TIME AVG. MOMENT      7.553E-04
 LARGEST SCALED RESIDUAL MOMENT    -8.901E-06   AT NODE          1   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT    -8.901E-06
 LARGEST INCREMENT OF ROTATION      1.086E-02   AT NODE          1   DOF  4
   INSTANCE: {assembly node}                                                                 
 LARGEST CORRECTION TO ROTATION     3.205E-05   AT NODE        417   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  15ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     4


 AVERAGE FORCE                      6.098E-03   TIME AVG. FORCE       4.715E-03
 LARGEST SCALED RESIDUAL FORCE      1.651E-06   AT NODE        619   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      1.651E-06
 LARGEST INCREMENT OF DISP.         0.143       AT NODE          7   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -8.559E-05   AT NODE        663   DOF  2
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     9.635E-04   TIME AVG. MOMENT      7.553E-04
 LARGEST SCALED RESIDUAL MOMENT    -2.574E-07   AT NODE          1   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT    -2.574E-07
 LARGEST INCREMENT OF ROTATION      1.085E-02   AT NODE          1   DOF  4
   INSTANCE: {assembly node}                                                                 
 LARGEST CORRECTION TO ROTATION    -6.487E-06   AT NODE        369   DOF  4
   INSTANCE: SHELL-1                                                                         
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED

 ITERATION SUMMARY FOR THE INCREMENT:   4 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  4 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  1.250E-02,  FRACTION OF STEP COMPLETED  8.750E-02
 STEP TIME COMPLETED       8.750E-02,  TOTAL TIME COMPLETED        8.750E-02


  INCREMENT     5 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  1.875E-02
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  14ms


 ***WARNING: THE SYSTEM MATRIX HAS 1 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      2.048E-02   TIME AVG. FORCE       7.868E-03
 LARGEST SCALED RESIDUAL FORCE       15.5       AT NODE          1   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE       15.5    
 LARGEST INCREMENT OF DISP.        -0.217       AT NODE        404   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -9.540E-03   AT NODE        341   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     3.924E-03   TIME AVG. MOMENT      1.389E-03
 LARGEST SCALED RESIDUAL MOMENT     -36.2       AT NODE          1   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     -36.2    
 LARGEST INCREMENT OF ROTATION      1.893E-02   AT NODE        416   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -2.797E-03   AT NODE        412   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  14ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                      7.605E-03   TIME AVG. FORCE       5.293E-03
 LARGEST SCALED RESIDUAL FORCE     -6.481E-02   AT NODE          1   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE     -6.481E-02
 LARGEST INCREMENT OF DISP.         0.214       AT NODE          7   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        5.874E-03   AT NODE        402   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     1.177E-03   TIME AVG. MOMENT      8.396E-04
 LARGEST SCALED RESIDUAL MOMENT    -0.149       AT NODE          1   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT    -0.149    
 LARGEST INCREMENT OF ROTATION      1.631E-02   AT NODE        411   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     2.801E-03   AT NODE        412   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  12ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                      7.765E-03   TIME AVG. FORCE       5.325E-03
 LARGEST SCALED RESIDUAL FORCE      7.380E-03   AT NODE        707   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      7.380E-03
 LARGEST INCREMENT OF DISP.         0.216       AT NODE          7   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        6.103E-03   AT NODE        328   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     1.173E-03   TIME AVG. MOMENT      8.389E-04
 LARGEST SCALED RESIDUAL MOMENT    -6.961E-04   AT NODE          1   DOF  4
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT    -6.961E-04
 LARGEST INCREMENT OF ROTATION      1.639E-02   AT NODE          1   DOF  4
   INSTANCE: {assembly node}                                                                 
 LARGEST CORRECTION TO ROTATION    -4.397E-04   AT NODE        503   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  18ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     4


 AVERAGE FORCE                      7.566E-03   TIME AVG. FORCE       5.285E-03
 LARGEST SCALED RESIDUAL FORCE      3.726E-05   AT NODE        685   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      3.726E-05
 LARGEST INCREMENT OF DISP.         0.216       AT NODE          7   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -4.106E-04   AT NODE        685   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     1.173E-03   TIME AVG. MOMENT      8.388E-04
 LARGEST SCALED RESIDUAL MOMENT    -2.508E-07   AT NODE         91   DOF  4
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT    -2.508E-07
 LARGEST INCREMENT OF ROTATION      1.638E-02   AT NODE          1   DOF  4
   INSTANCE: {assembly node}                                                                 
 LARGEST CORRECTION TO ROTATION    -3.155E-05   AT NODE        481   DOF  4
   INSTANCE: SHELL-1                                                                         
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  14ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     5


 AVERAGE FORCE                      7.565E-03   TIME AVG. FORCE       5.285E-03
 LARGEST SCALED RESIDUAL FORCE      1.190E-03   AT NODE        619   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      1.190E-03
 LARGEST INCREMENT OF DISP.         0.214       AT NODE          7   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -2.250E-03   AT NODE          7   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     1.170E-03   TIME AVG. MOMENT      8.383E-04
 LARGEST SCALED RESIDUAL MOMENT     1.842E-04   AT NODE        819   DOF  5
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     1.842E-04
 LARGEST INCREMENT OF ROTATION      1.621E-02   AT NODE          1   DOF  4
   INSTANCE: {assembly node}                                                                 
 LARGEST CORRECTION TO ROTATION    -1.708E-04   AT NODE       1418   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  14ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     6


 AVERAGE FORCE                      7.551E-03   TIME AVG. FORCE       5.282E-03
 LARGEST SCALED RESIDUAL FORCE      1.621E-07   AT NODE        669   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      1.621E-07
 LARGEST INCREMENT OF DISP.         0.214       AT NODE          7   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -2.699E-05   AT NODE        669   DOF  2
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     1.171E-03   TIME AVG. MOMENT      8.384E-04
 LARGEST SCALED RESIDUAL MOMENT    -4.497E-08   AT NODE          1   DOF  4
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT    -4.497E-08
 LARGEST INCREMENT OF ROTATION      1.621E-02   AT NODE          1   DOF  4
   INSTANCE: {assembly node}                                                                 
 LARGEST CORRECTION TO ROTATION    -2.049E-06   AT NODE        362   DOF  4
   INSTANCE: SHELL-1                                                                         
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED

 ITERATION SUMMARY FOR THE INCREMENT:   6 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  6 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  1.875E-02,  FRACTION OF STEP COMPLETED  0.106    
 STEP TIME COMPLETED       0.106    ,  TOTAL TIME COMPLETED        0.106    


  INCREMENT     6 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  1.875E-02
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  17ms


 ***WARNING: THE SYSTEM MATRIX HAS 1 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      2.577E-02   TIME AVG. FORCE       8.697E-03
 LARGEST SCALED RESIDUAL FORCE       18.4       AT NODE          1   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE       18.4    
 LARGEST INCREMENT OF DISP.        -0.219       AT NODE        404   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -1.520E-02   AT NODE        341   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     4.716E-03   TIME AVG. MOMENT      1.485E-03
 LARGEST SCALED RESIDUAL MOMENT     -43.0       AT NODE          1   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     -43.0    
 LARGEST INCREMENT OF ROTATION      1.935E-02   AT NODE        416   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -3.339E-03   AT NODE        412   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  14ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                      9.148E-03   TIME AVG. FORCE       5.926E-03
 LARGEST SCALED RESIDUAL FORCE     -9.193E-02   AT NODE          1   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE     -9.193E-02
 LARGEST INCREMENT OF DISP.        -0.215       AT NODE        411   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        6.704E-03   AT NODE        402   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     1.387E-03   TIME AVG. MOMENT      9.298E-04
 LARGEST SCALED RESIDUAL MOMENT    -0.210       AT NODE          1   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT    -0.210    
 LARGEST INCREMENT OF ROTATION      1.626E-02   AT NODE        411   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     3.354E-03   AT NODE        412   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  16ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                      1.013E-02   TIME AVG. FORCE       6.090E-03
 LARGEST SCALED RESIDUAL FORCE      2.828E-02   AT NODE        701   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      2.828E-02
 LARGEST INCREMENT OF DISP.         0.215       AT NODE          7   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.182E-02   AT NODE        333   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     1.379E-03   TIME AVG. MOMENT      9.284E-04
 LARGEST SCALED RESIDUAL MOMENT    -1.373E-03   AT NODE          1   DOF  4
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT    -1.373E-03
 LARGEST INCREMENT OF ROTATION      1.637E-02   AT NODE          1   DOF  4
   INSTANCE: {assembly node}                                                                 
 LARGEST CORRECTION TO ROTATION    -8.617E-04   AT NODE        497   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  18ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     4


 AVERAGE FORCE                      9.088E-03   TIME AVG. FORCE       5.916E-03
 LARGEST SCALED RESIDUAL FORCE      1.510E-05   AT NODE        619   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      1.510E-05
 LARGEST INCREMENT OF DISP.         0.216       AT NODE          7   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -2.566E-04   AT NODE        410   DOF  3
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     1.381E-03   TIME AVG. MOMENT      9.287E-04
 LARGEST SCALED RESIDUAL MOMENT    -2.726E-06   AT NODE          1   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT    -2.726E-06
 LARGEST INCREMENT OF ROTATION      1.639E-02   AT NODE          1   DOF  4
   INSTANCE: {assembly node}                                                                 
 LARGEST CORRECTION TO ROTATION     2.094E-05   AT NODE        419   DOF  4
   INSTANCE: SHELL-1                                                                         
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED

 ITERATION SUMMARY FOR THE INCREMENT:   4 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  4 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  1.875E-02,  FRACTION OF STEP COMPLETED  0.125    
 STEP TIME COMPLETED       0.125    ,  TOTAL TIME COMPLETED        0.125    


  INCREMENT     7 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  1.875E-02
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  20ms


 ***WARNING: THE SYSTEM MATRIX HAS 1 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      2.737E-02   TIME AVG. FORCE       8.980E-03
 LARGEST SCALED RESIDUAL FORCE       18.8       AT NODE          1   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE       18.8    
 LARGEST INCREMENT OF DISP.        -0.223       AT NODE        404   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -1.457E-02   AT NODE        343   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     4.982E-03   TIME AVG. MOMENT      1.508E-03
 LARGEST SCALED RESIDUAL MOMENT     -43.9       AT NODE          1   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     -43.9    
 LARGEST INCREMENT OF ROTATION      1.959E-02   AT NODE        416   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -3.413E-03   AT NODE        412   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  16ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                      1.076E-02   TIME AVG. FORCE       6.609E-03
 LARGEST SCALED RESIDUAL FORCE     -9.601E-02   AT NODE          1   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE     -9.601E-02
 LARGEST INCREMENT OF DISP.        -0.218       AT NODE        411   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        6.951E-03   AT NODE        402   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     1.601E-03   TIME AVG. MOMENT      1.025E-03
 LARGEST SCALED RESIDUAL MOMENT    -0.219       AT NODE          1   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT    -0.219    
 LARGEST INCREMENT OF ROTATION      1.644E-02   AT NODE        411   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     3.429E-03   AT NODE        412   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  20ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                      1.192E-02   TIME AVG. FORCE       6.774E-03
 LARGEST SCALED RESIDUAL FORCE      3.281E-02   AT NODE        700   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      3.281E-02
 LARGEST INCREMENT OF DISP.        -0.218       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.278E-02   AT NODE        334   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     1.592E-03   TIME AVG. MOMENT      1.023E-03
 LARGEST SCALED RESIDUAL MOMENT    -9.143E-04   AT NODE          1   DOF  4
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT    -9.143E-04
 LARGEST INCREMENT OF ROTATION      1.646E-02   AT NODE          1   DOF  4
   INSTANCE: {assembly node}                                                                 
 LARGEST CORRECTION TO ROTATION    -9.282E-04   AT NODE        497   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  16ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     4


 AVERAGE FORCE                      1.070E-02   TIME AVG. FORCE       6.599E-03
 LARGEST SCALED RESIDUAL FORCE      7.688E-05   AT NODE        652   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      7.688E-05
 LARGEST INCREMENT OF DISP.        -0.217       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        6.011E-04   AT NODE        381   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     1.593E-03   TIME AVG. MOMENT      1.024E-03
 LARGEST SCALED RESIDUAL MOMENT     9.421E-06   AT NODE        819   DOF  5
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     9.421E-06
 LARGEST INCREMENT OF ROTATION      1.642E-02   AT NODE          1   DOF  4
   INSTANCE: {assembly node}                                                                 
 LARGEST CORRECTION TO ROTATION    -4.584E-05   AT NODE        381   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  15ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     5


 AVERAGE FORCE                      1.127E-02   TIME AVG. FORCE       6.681E-03
 LARGEST SCALED RESIDUAL FORCE      1.767E-02   AT NODE        619   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      1.767E-02
 LARGEST INCREMENT OF DISP.        -0.209       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        8.750E-03   AT NODE        412   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     1.584E-03   TIME AVG. MOMENT      1.022E-03
 LARGEST SCALED RESIDUAL MOMENT     2.755E-03   AT NODE        819   DOF  5
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     2.755E-03
 LARGEST INCREMENT OF ROTATION      1.577E-02   AT NODE          1   DOF  4
   INSTANCE: {assembly node}                                                                 
 LARGEST CORRECTION TO ROTATION    -6.594E-04   AT NODE       1418   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  17ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     6


 AVERAGE FORCE                      1.063E-02   TIME AVG. FORCE       6.589E-03
 LARGEST SCALED RESIDUAL FORCE      2.585E-07   AT NODE        619   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      2.585E-07
 LARGEST INCREMENT OF DISP.        -0.209       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        3.406E-05   AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     1.584E-03   TIME AVG. MOMENT      1.022E-03
 LARGEST SCALED RESIDUAL MOMENT    -8.613E-07   AT NODE          1   DOF  4
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT    -8.613E-07
 LARGEST INCREMENT OF ROTATION      1.576E-02   AT NODE          1   DOF  4
   INSTANCE: {assembly node}                                                                 
 LARGEST CORRECTION TO ROTATION    -2.563E-06   AT NODE        824   DOF  4
   INSTANCE: SHELL-1                                                                         
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED

 ITERATION SUMMARY FOR THE INCREMENT:   6 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  6 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  1.875E-02,  FRACTION OF STEP COMPLETED  0.144    
 STEP TIME COMPLETED       0.144    ,  TOTAL TIME COMPLETED        0.144    


  INCREMENT     8 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  1.875E-02
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  14ms


 ***WARNING: THE SYSTEM MATRIX HAS 1 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      2.732E-02   TIME AVG. FORCE       9.180E-03
 LARGEST SCALED RESIDUAL FORCE       17.4       AT NODE          1   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE       17.4    
 LARGEST INCREMENT OF DISP.        -0.215       AT NODE        404   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -1.336E-02   AT NODE        339   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     4.885E-03   TIME AVG. MOMENT      1.505E-03
 LARGEST SCALED RESIDUAL MOMENT     -40.5       AT NODE          1   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     -40.5    
 LARGEST INCREMENT OF ROTATION      1.873E-02   AT NODE        416   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -3.157E-03   AT NODE        412   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  16ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                      1.228E-02   TIME AVG. FORCE       7.300E-03
 LARGEST SCALED RESIDUAL FORCE     -8.210E-02   AT NODE          1   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE     -8.210E-02
 LARGEST INCREMENT OF DISP.        -0.211       AT NODE        411   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        6.584E-03   AT NODE        402   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     1.796E-03   TIME AVG. MOMENT      1.119E-03
 LARGEST SCALED RESIDUAL MOMENT    -0.187       AT NODE          1   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT    -0.187    
 LARGEST INCREMENT OF ROTATION      1.580E-02   AT NODE        411   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     3.167E-03   AT NODE        412   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  18ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                      1.277E-02   TIME AVG. FORCE       7.362E-03
 LARGEST SCALED RESIDUAL FORCE      1.724E-02   AT NODE        703   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      1.724E-02
 LARGEST INCREMENT OF DISP.        -0.212       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        9.366E-03   AT NODE        332   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     1.793E-03   TIME AVG. MOMENT      1.119E-03
 LARGEST SCALED RESIDUAL MOMENT    -1.207E-03   AT NODE          1   DOF  4
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT    -1.207E-03
 LARGEST INCREMENT OF ROTATION      1.592E-02   AT NODE          1   DOF  4
   INSTANCE: {assembly node}                                                                 
 LARGEST CORRECTION TO ROTATION    -6.732E-04   AT NODE        499   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  18ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     4


 AVERAGE FORCE                      1.226E-02   TIME AVG. FORCE       7.298E-03
 LARGEST SCALED RESIDUAL FORCE      3.650E-05   AT NODE        619   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      3.650E-05
 LARGEST INCREMENT OF DISP.        -0.212       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -4.035E-04   AT NODE        410   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     1.792E-03   TIME AVG. MOMENT      1.119E-03
 LARGEST SCALED RESIDUAL MOMENT    -6.146E-06   AT NODE          1   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT    -6.146E-06
 LARGEST INCREMENT OF ROTATION      1.595E-02   AT NODE          1   DOF  4
   INSTANCE: {assembly node}                                                                 
 LARGEST CORRECTION TO ROTATION     3.144E-05   AT NODE        419   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  14ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     5


 AVERAGE FORCE                      1.224E-02   TIME AVG. FORCE       7.296E-03
 LARGEST SCALED RESIDUAL FORCE      8.482E-04   AT NODE        619   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      8.482E-04
 LARGEST INCREMENT OF DISP.        -0.210       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.930E-03   AT NODE        409   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     1.790E-03   TIME AVG. MOMENT      1.118E-03
 LARGEST SCALED RESIDUAL MOMENT     1.329E-04   AT NODE        819   DOF  5
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     1.329E-04
 LARGEST INCREMENT OF ROTATION      1.580E-02   AT NODE          1   DOF  4
   INSTANCE: {assembly node}                                                                 
 LARGEST CORRECTION TO ROTATION    -1.448E-04   AT NODE        889   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  15ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     6


 AVERAGE FORCE                      1.224E-02   TIME AVG. FORCE       7.296E-03
 LARGEST SCALED RESIDUAL FORCE      6.212E-08   AT NODE        619   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      6.212E-08
 LARGEST INCREMENT OF DISP.        -0.210       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.657E-05   AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     1.790E-03   TIME AVG. MOMENT      1.118E-03
 LARGEST SCALED RESIDUAL MOMENT    -5.548E-08   AT NODE          1   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT    -5.548E-08
 LARGEST INCREMENT OF ROTATION      1.580E-02   AT NODE          1   DOF  4
   INSTANCE: {assembly node}                                                                 
 LARGEST CORRECTION TO ROTATION    -1.242E-06   AT NODE        417   DOF  4
   INSTANCE: SHELL-1                                                                         
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED

 ITERATION SUMMARY FOR THE INCREMENT:   6 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  6 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  1.875E-02,  FRACTION OF STEP COMPLETED  0.162    
 STEP TIME COMPLETED       0.162    ,  TOTAL TIME COMPLETED        0.162    


  INCREMENT     9 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  1.875E-02
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  14ms


 ***WARNING: THE SYSTEM MATRIX HAS 1 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      2.886E-02   TIME AVG. FORCE       9.692E-03
 LARGEST SCALED RESIDUAL FORCE       17.5       AT NODE          1   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE       17.5    
 LARGEST INCREMENT OF DISP.        -0.217       AT NODE        404   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -1.295E-02   AT NODE        341   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     5.094E-03   TIME AVG. MOMENT      1.560E-03
 LARGEST SCALED RESIDUAL MOMENT     -40.6       AT NODE          1   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     -40.6    
 LARGEST INCREMENT OF ROTATION      1.878E-02   AT NODE        416   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -3.175E-03   AT NODE        412   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  17ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                      1.395E-02   TIME AVG. FORCE       8.036E-03
 LARGEST SCALED RESIDUAL FORCE     -8.295E-02   AT NODE          1   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE     -8.295E-02
 LARGEST INCREMENT OF DISP.        -0.213       AT NODE        411   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        6.700E-03   AT NODE        402   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     2.002E-03   TIME AVG. MOMENT      1.217E-03
 LARGEST SCALED RESIDUAL MOMENT    -0.189       AT NODE          1   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT    -0.189    
 LARGEST INCREMENT OF ROTATION      1.584E-02   AT NODE        411   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     3.184E-03   AT NODE        412   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  14ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                      1.444E-02   TIME AVG. FORCE       8.090E-03
 LARGEST SCALED RESIDUAL FORCE      1.749E-02   AT NODE        703   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      1.749E-02
 LARGEST INCREMENT OF DISP.        -0.214       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        9.475E-03   AT NODE        332   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     1.999E-03   TIME AVG. MOMENT      1.216E-03
 LARGEST SCALED RESIDUAL MOMENT    -1.121E-03   AT NODE          1   DOF  4
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT    -1.121E-03
 LARGEST INCREMENT OF ROTATION      1.594E-02   AT NODE          1   DOF  4
   INSTANCE: {assembly node}                                                                 
 LARGEST CORRECTION TO ROTATION    -6.783E-04   AT NODE        500   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  17ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     4


 AVERAGE FORCE                      1.393E-02   TIME AVG. FORCE       8.034E-03
 LARGEST SCALED RESIDUAL FORCE      1.600E-05   AT NODE        681   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      1.600E-05
 LARGEST INCREMENT OF DISP.        -0.214       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -2.696E-04   AT NODE        681   DOF  2
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     1.998E-03   TIME AVG. MOMENT      1.216E-03
 LARGEST SCALED RESIDUAL MOMENT    -1.473E-06   AT NODE          1   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT    -1.473E-06
 LARGEST INCREMENT OF ROTATION      1.595E-02   AT NODE          1   DOF  4
   INSTANCE: {assembly node}                                                                 
 LARGEST CORRECTION TO ROTATION    -2.114E-05   AT NODE        477   DOF  4
   INSTANCE: SHELL-1                                                                         
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED

 ITERATION SUMMARY FOR THE INCREMENT:   4 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  4 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  1.875E-02,  FRACTION OF STEP COMPLETED  0.181    
 STEP TIME COMPLETED       0.181    ,  TOTAL TIME COMPLETED        0.181    


  INCREMENT    10 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  1.875E-02
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  20ms


 ***WARNING: THE SYSTEM MATRIX HAS 1 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      3.063E-02   TIME AVG. FORCE       1.029E-02
 LARGEST SCALED RESIDUAL FORCE       17.8       AT NODE          1   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE       17.8    
 LARGEST INCREMENT OF DISP.        -0.221       AT NODE        404   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -1.214E-02   AT NODE        343   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     5.346E-03   TIME AVG. MOMENT      1.629E-03
 LARGEST SCALED RESIDUAL MOMENT     -41.3       AT NODE          1   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     -41.3    
 LARGEST INCREMENT OF ROTATION      1.899E-02   AT NODE        416   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -3.236E-03   AT NODE        412   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  13ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                      1.573E-02   TIME AVG. FORCE       8.804E-03
 LARGEST SCALED RESIDUAL FORCE     -8.619E-02   AT NODE          1   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE     -8.619E-02
 LARGEST INCREMENT OF DISP.        -0.216       AT NODE        411   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        6.936E-03   AT NODE        402   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     2.214E-03   TIME AVG. MOMENT      1.316E-03
 LARGEST SCALED RESIDUAL MOMENT    -0.195       AT NODE          1   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT    -0.195    
 LARGEST INCREMENT OF ROTATION      1.600E-02   AT NODE        411   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     3.246E-03   AT NODE        412   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  14ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                      1.628E-02   TIME AVG. FORCE       8.858E-03
 LARGEST SCALED RESIDUAL FORCE      1.942E-02   AT NODE        702   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      1.942E-02
 LARGEST INCREMENT OF DISP.        -0.216       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.003E-02   AT NODE        333   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     2.210E-03   TIME AVG. MOMENT      1.316E-03
 LARGEST SCALED RESIDUAL MOMENT    -6.806E-04   AT NODE          1   DOF  4
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT    -6.806E-04
 LARGEST INCREMENT OF ROTATION      1.601E-02   AT NODE          1   DOF  4
   INSTANCE: {assembly node}                                                                 
 LARGEST CORRECTION TO ROTATION    -7.148E-04   AT NODE        499   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  16ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     4


 AVERAGE FORCE                      1.570E-02   TIME AVG. FORCE       8.800E-03
 LARGEST SCALED RESIDUAL FORCE      1.346E-04   AT NODE        651   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      1.346E-04
 LARGEST INCREMENT OF DISP.        -0.215       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        8.057E-04   AT NODE        382   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     2.208E-03   TIME AVG. MOMENT      1.315E-03
 LARGEST SCALED RESIDUAL MOMENT     1.908E-05   AT NODE        819   DOF  5
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     1.908E-05
 LARGEST INCREMENT OF ROTATION      1.595E-02   AT NODE          1   DOF  4
   INSTANCE: {assembly node}                                                                 
 LARGEST CORRECTION TO ROTATION    -6.019E-05   AT NODE        381   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  13ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     5


 AVERAGE FORCE                      1.595E-02   TIME AVG. FORCE       8.825E-03
 LARGEST SCALED RESIDUAL FORCE      1.152E-02   AT NODE        619   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      1.152E-02
 LARGEST INCREMENT OF DISP.        -0.208       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        7.214E-03   AT NODE        412   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     2.201E-03   TIME AVG. MOMENT      1.315E-03
 LARGEST SCALED RESIDUAL MOMENT     1.818E-03   AT NODE        819   DOF  5
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     1.818E-03
 LARGEST INCREMENT OF ROTATION      1.542E-02   AT NODE          1   DOF  4
   INSTANCE: {assembly node}                                                                 
 LARGEST CORRECTION TO ROTATION    -5.342E-04   AT NODE          1   DOF  4
   INSTANCE: {assembly node}                                                                 
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  17ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     6


 AVERAGE FORCE                      1.564E-02   TIME AVG. FORCE       8.794E-03
 LARGEST SCALED RESIDUAL FORCE      1.327E-06   AT NODE        619   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      1.327E-06
 LARGEST INCREMENT OF DISP.        -0.208       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        7.777E-05   AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     2.200E-03   TIME AVG. MOMENT      1.315E-03
 LARGEST SCALED RESIDUAL MOMENT    -1.274E-06   AT NODE          1   DOF  4
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT    -1.274E-06
 LARGEST INCREMENT OF ROTATION      1.541E-02   AT NODE          1   DOF  4
   INSTANCE: {assembly node}                                                                 
 LARGEST CORRECTION TO ROTATION    -5.752E-06   AT NODE          1   DOF  4
   INSTANCE: {assembly node}                                                                 
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED

 ITERATION SUMMARY FOR THE INCREMENT:   6 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  6 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  1.875E-02,  FRACTION OF STEP COMPLETED  0.200    
 STEP TIME COMPLETED       0.200    ,  TOTAL TIME COMPLETED        0.200    


  INCREMENT    11 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  1.875E-02
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  16ms


 ***WARNING: THE SYSTEM MATRIX HAS 1 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      3.116E-02   TIME AVG. FORCE       1.083E-02
 LARGEST SCALED RESIDUAL FORCE       16.6       AT NODE          1   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE       16.6    
 LARGEST INCREMENT OF DISP.        -0.214       AT NODE        404   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -1.136E-02   AT NODE        339   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     5.303E-03   TIME AVG. MOMENT      1.677E-03
 LARGEST SCALED RESIDUAL MOMENT     -38.4       AT NODE          1   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     -38.4    
 LARGEST INCREMENT OF ROTATION      1.825E-02   AT NODE        416   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -3.020E-03   AT NODE        412   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  13ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                      1.742E-02   TIME AVG. FORCE       9.578E-03
 LARGEST SCALED RESIDUAL FORCE     -7.501E-02   AT NODE          1   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE     -7.501E-02
 LARGEST INCREMENT OF DISP.        -0.210       AT NODE        411   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        6.587E-03   AT NODE        402   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     2.409E-03   TIME AVG. MOMENT      1.414E-03
 LARGEST SCALED RESIDUAL MOMENT    -0.170       AT NODE          1   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT    -0.170    
 LARGEST INCREMENT OF ROTATION      1.545E-02   AT NODE        411   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     3.025E-03   AT NODE        412   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  14ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                      1.766E-02   TIME AVG. FORCE       9.600E-03
 LARGEST SCALED RESIDUAL FORCE      1.119E-02   AT NODE        704   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      1.119E-02
 LARGEST INCREMENT OF DISP.        -0.210       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        7.689E-03   AT NODE        331   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     2.406E-03   TIME AVG. MOMENT      1.414E-03
 LARGEST SCALED RESIDUAL MOMENT    -8.335E-04   AT NODE          1   DOF  4
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT    -8.335E-04
 LARGEST INCREMENT OF ROTATION      1.552E-02   AT NODE          1   DOF  4
   INSTANCE: {assembly node}                                                                 
 LARGEST CORRECTION TO ROTATION    -5.431E-04   AT NODE        501   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  15ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     4


 AVERAGE FORCE                      1.742E-02   TIME AVG. FORCE       9.578E-03
 LARGEST SCALED RESIDUAL FORCE      2.593E-05   AT NODE        680   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      2.593E-05
 LARGEST INCREMENT OF DISP.        -0.210       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        3.457E-04   AT NODE        352   DOF  3
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     2.406E-03   TIME AVG. MOMENT      1.414E-03
 LARGEST SCALED RESIDUAL MOMENT    -3.071E-07   AT NODE         87   DOF  4
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT    -3.071E-07
 LARGEST INCREMENT OF ROTATION      1.552E-02   AT NODE       1418   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -2.662E-05   AT NODE        476   DOF  4
   INSTANCE: SHELL-1                                                                         
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED

 ITERATION SUMMARY FOR THE INCREMENT:   4 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  4 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  1.875E-02,  FRACTION OF STEP COMPLETED  0.219    
 STEP TIME COMPLETED       0.219    ,  TOTAL TIME COMPLETED        0.219    


  INCREMENT    12 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  1.875E-02
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  16ms


 ***WARNING: THE SYSTEM MATRIX HAS 1 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      3.291E-02   TIME AVG. FORCE       1.152E-02
 LARGEST SCALED RESIDUAL FORCE       16.8       AT NODE          1   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE       16.8    
 LARGEST INCREMENT OF DISP.        -0.216       AT NODE        404   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -1.018E-02   AT NODE        343   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     5.541E-03   TIME AVG. MOMENT      1.758E-03
 LARGEST SCALED RESIDUAL MOMENT     -38.8       AT NODE          1   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     -38.8    
 LARGEST INCREMENT OF ROTATION      1.839E-02   AT NODE        416   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -3.062E-03   AT NODE        412   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  17ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                      1.929E-02   TIME AVG. FORCE       1.039E-02
 LARGEST SCALED RESIDUAL FORCE     -7.709E-02   AT NODE          1   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE     -7.709E-02
 LARGEST INCREMENT OF DISP.        -0.212       AT NODE        411   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        6.794E-03   AT NODE        402   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     2.617E-03   TIME AVG. MOMENT      1.514E-03
 LARGEST SCALED RESIDUAL MOMENT    -0.174       AT NODE          1   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT    -0.174    
 LARGEST INCREMENT OF ROTATION      1.555E-02   AT NODE        411   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     3.066E-03   AT NODE        412   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  17ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                      1.950E-02   TIME AVG. FORCE       1.040E-02
 LARGEST SCALED RESIDUAL FORCE      1.094E-02   AT NODE        704   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      1.094E-02
 LARGEST INCREMENT OF DISP.        -0.212       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        7.660E-03   AT NODE        331   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     2.611E-03   TIME AVG. MOMENT      1.514E-03
 LARGEST SCALED RESIDUAL MOMENT    -5.589E-04   AT NODE          1   DOF  4
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT    -5.589E-04
 LARGEST INCREMENT OF ROTATION      1.556E-02   AT NODE          1   DOF  4
   INSTANCE: {assembly node}                                                                 
 LARGEST CORRECTION TO ROTATION    -5.369E-04   AT NODE        501   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  19ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     4


 AVERAGE FORCE                      1.926E-02   TIME AVG. FORCE       1.038E-02
 LARGEST SCALED RESIDUAL FORCE      1.845E-04   AT NODE        656   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      1.845E-04
 LARGEST INCREMENT OF DISP.        -0.211       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        9.477E-04   AT NODE        377   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     2.612E-03   TIME AVG. MOMENT      1.514E-03
 LARGEST SCALED RESIDUAL MOMENT     2.578E-05   AT NODE        819   DOF  5
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     2.578E-05
 LARGEST INCREMENT OF ROTATION      1.550E-02   AT NODE       1418   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -7.009E-05   AT NODE        376   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  23ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     5


 AVERAGE FORCE                      1.931E-02   TIME AVG. FORCE       1.039E-02
 LARGEST SCALED RESIDUAL FORCE      5.748E-03   AT NODE        619   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      5.748E-03
 LARGEST INCREMENT OF DISP.        -0.206       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        5.162E-03   AT NODE        412   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     2.607E-03   TIME AVG. MOMENT      1.513E-03
 LARGEST SCALED RESIDUAL MOMENT     9.146E-04   AT NODE        819   DOF  5
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     9.146E-04
 LARGEST INCREMENT OF ROTATION      1.512E-02   AT NODE       1418   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -3.785E-04   AT NODE        824   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  14ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     6


 AVERAGE FORCE                      1.922E-02   TIME AVG. FORCE       1.038E-02
 LARGEST SCALED RESIDUAL FORCE      4.526E-06   AT NODE        619   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      4.526E-06
 LARGEST INCREMENT OF DISP.        -0.206       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.451E-04   AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     2.607E-03   TIME AVG. MOMENT      1.513E-03
 LARGEST SCALED RESIDUAL MOMENT    -1.183E-06   AT NODE          1   DOF  4
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT    -1.183E-06
 LARGEST INCREMENT OF ROTATION      1.511E-02   AT NODE       1418   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -1.063E-05   AT NODE          1   DOF  4
   INSTANCE: {assembly node}                                                                 
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED

 ITERATION SUMMARY FOR THE INCREMENT:   6 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  6 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  1.875E-02,  FRACTION OF STEP COMPLETED  0.237    
 STEP TIME COMPLETED       0.237    ,  TOTAL TIME COMPLETED        0.237    


  INCREMENT    13 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  1.875E-02
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  17ms


 ***WARNING: THE SYSTEM MATRIX HAS 1 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      3.391E-02   TIME AVG. FORCE       1.219E-02
 LARGEST SCALED RESIDUAL FORCE       16.0       AT NODE          1   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE       16.0    
 LARGEST INCREMENT OF DISP.        -0.212       AT NODE        404   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -9.858E-03   AT NODE        339   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     5.581E-03   TIME AVG. MOMENT      1.826E-03
 LARGEST SCALED RESIDUAL MOMENT     -36.7       AT NODE          1   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     -36.7    
 LARGEST INCREMENT OF ROTATION      1.783E-02   AT NODE        416   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -2.903E-03   AT NODE        412   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  12ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                      2.109E-02   TIME AVG. FORCE       1.120E-02
 LARGEST SCALED RESIDUAL FORCE     -6.927E-02   AT NODE          1   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE     -6.927E-02
 LARGEST INCREMENT OF DISP.        -0.208       AT NODE        411   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        6.519E-03   AT NODE        402   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     2.812E-03   TIME AVG. MOMENT      1.613E-03
 LARGEST SCALED RESIDUAL MOMENT    -0.156       AT NODE          1   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT    -0.156    
 LARGEST INCREMENT OF ROTATION      1.514E-02   AT NODE        411   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     2.905E-03   AT NODE        412   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  17ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                      2.121E-02   TIME AVG. FORCE       1.121E-02
 LARGEST SCALED RESIDUAL FORCE      7.386E-03   AT NODE        706   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      7.386E-03
 LARGEST INCREMENT OF DISP.        -0.208       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        6.339E-03   AT NODE        330   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     2.809E-03   TIME AVG. MOMENT      1.613E-03
 LARGEST SCALED RESIDUAL MOMENT    -6.243E-04   AT NODE          1   DOF  4
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT    -6.243E-04
 LARGEST INCREMENT OF ROTATION      1.518E-02   AT NODE       1418   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -4.415E-04   AT NODE        503   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  37ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     4


 AVERAGE FORCE                      2.108E-02   TIME AVG. FORCE       1.120E-02
 LARGEST SCALED RESIDUAL FORCE      5.626E-05   AT NODE        676   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      5.626E-05
 LARGEST INCREMENT OF DISP.        -0.208       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        5.173E-04   AT NODE        356   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     2.810E-03   TIME AVG. MOMENT      1.613E-03
 LARGEST SCALED RESIDUAL MOMENT     2.435E-06   AT NODE        819   DOF  5
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     2.435E-06
 LARGEST INCREMENT OF ROTATION      1.517E-02   AT NODE       1418   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -3.891E-05   AT NODE        473   DOF  4
   INSTANCE: SHELL-1                                                                         
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  17ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     5


 AVERAGE FORCE                      2.106E-02   TIME AVG. FORCE       1.120E-02
 LARGEST SCALED RESIDUAL FORCE      1.452E-03   AT NODE        619   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      1.452E-03
 LARGEST INCREMENT OF DISP.        -0.205       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        2.610E-03   AT NODE        412   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     2.807E-03   TIME AVG. MOMENT      1.613E-03
 LARGEST SCALED RESIDUAL MOMENT     2.320E-04   AT NODE        819   DOF  5
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     2.320E-04
 LARGEST INCREMENT OF ROTATION      1.497E-02   AT NODE       1418   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -1.905E-04   AT NODE        417   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  26ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     6


 AVERAGE FORCE                      2.106E-02   TIME AVG. FORCE       1.120E-02
 LARGEST SCALED RESIDUAL FORCE      5.744E-07   AT NODE        619   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      5.744E-07
 LARGEST INCREMENT OF DISP.        -0.205       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        5.196E-05   AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     2.807E-03   TIME AVG. MOMENT      1.613E-03
 LARGEST SCALED RESIDUAL MOMENT    -1.084E-07   AT NODE          1   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT    -1.084E-07
 LARGEST INCREMENT OF ROTATION      1.497E-02   AT NODE       1418   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -3.800E-06   AT NODE        886   DOF  4
   INSTANCE: SHELL-1                                                                         
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED

 ITERATION SUMMARY FOR THE INCREMENT:   6 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  6 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  1.875E-02,  FRACTION OF STEP COMPLETED  0.256    
 STEP TIME COMPLETED       0.256    ,  TOTAL TIME COMPLETED        0.256    


  INCREMENT    14 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  1.875E-02
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  19ms


 ***WARNING: THE SYSTEM MATRIX HAS 1 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      3.539E-02   TIME AVG. FORCE       1.293E-02
 LARGEST SCALED RESIDUAL FORCE       15.7       AT NODE          1   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE       15.7    
 LARGEST INCREMENT OF DISP.        -0.210       AT NODE        404   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -9.028E-03   AT NODE        339   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     5.725E-03   TIME AVG. MOMENT      1.906E-03
 LARGEST SCALED RESIDUAL MOMENT     -35.9       AT NODE          1   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     -35.9    
 LARGEST INCREMENT OF ROTATION      1.764E-02   AT NODE        416   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -2.851E-03   AT NODE        412   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  14ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                      2.298E-02   TIME AVG. FORCE       1.204E-02
 LARGEST SCALED RESIDUAL FORCE     -6.675E-02   AT NODE          1   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE     -6.675E-02
 LARGEST INCREMENT OF DISP.        -0.207       AT NODE        411   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        6.488E-03   AT NODE        402   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     3.010E-03   TIME AVG. MOMENT      1.712E-03
 LARGEST SCALED RESIDUAL MOMENT    -0.150       AT NODE          1   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT    -0.150    
 LARGEST INCREMENT OF ROTATION      1.499E-02   AT NODE        411   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     2.851E-03   AT NODE        412   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  12ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                      2.304E-02   TIME AVG. FORCE       1.205E-02
 LARGEST SCALED RESIDUAL FORCE      5.631E-03   AT NODE        707   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      5.631E-03
 LARGEST INCREMENT OF DISP.        -0.207       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        5.586E-03   AT NODE        329   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     3.007E-03   TIME AVG. MOMENT      1.712E-03
 LARGEST SCALED RESIDUAL MOMENT    -6.167E-04   AT NODE          1   DOF  4
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT    -6.167E-04
 LARGEST INCREMENT OF ROTATION      1.505E-02   AT NODE       1418   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -3.857E-04   AT NODE        504   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  13ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     4


 AVERAGE FORCE                      2.298E-02   TIME AVG. FORCE       1.204E-02
 LARGEST SCALED RESIDUAL FORCE      6.757E-05   AT NODE        681   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      6.757E-05
 LARGEST INCREMENT OF DISP.        -0.207       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        5.681E-04   AT NODE        352   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     3.008E-03   TIME AVG. MOMENT      1.712E-03
 LARGEST SCALED RESIDUAL MOMENT     2.381E-06   AT NODE        819   DOF  5
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     2.381E-06
 LARGEST INCREMENT OF ROTATION      1.503E-02   AT NODE       1418   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -4.257E-05   AT NODE        478   DOF  4
   INSTANCE: SHELL-1                                                                         
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  14ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     5


 AVERAGE FORCE                      2.296E-02   TIME AVG. FORCE       1.204E-02
 LARGEST SCALED RESIDUAL FORCE      1.043E-03   AT NODE        619   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      1.043E-03
 LARGEST INCREMENT OF DISP.        -0.204       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        2.225E-03   AT NODE        412   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     3.005E-03   TIME AVG. MOMENT      1.712E-03
 LARGEST SCALED RESIDUAL MOMENT     1.672E-04   AT NODE        819   DOF  5
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     1.672E-04
 LARGEST INCREMENT OF ROTATION      1.487E-02   AT NODE       1418   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -1.617E-04   AT NODE        417   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  14ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     6


 AVERAGE FORCE                      2.296E-02   TIME AVG. FORCE       1.204E-02
 LARGEST SCALED RESIDUAL FORCE      8.794E-07   AT NODE        619   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      8.794E-07
 LARGEST INCREMENT OF DISP.        -0.204       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        6.465E-05   AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     3.005E-03   TIME AVG. MOMENT      1.712E-03
 LARGEST SCALED RESIDUAL MOMENT    -1.501E-07   AT NODE          1   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT    -1.501E-07
 LARGEST INCREMENT OF ROTATION      1.486E-02   AT NODE       1418   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -4.705E-06   AT NODE        880   DOF  4
   INSTANCE: SHELL-1                                                                         
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED

 ITERATION SUMMARY FOR THE INCREMENT:   6 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  6 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  1.875E-02,  FRACTION OF STEP COMPLETED  0.275    
 STEP TIME COMPLETED       0.275    ,  TOTAL TIME COMPLETED        0.275    


  INCREMENT    15 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  1.875E-02
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  15ms


 ***WARNING: THE SYSTEM MATRIX HAS 1 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      3.702E-02   TIME AVG. FORCE       1.371E-02
 LARGEST SCALED RESIDUAL FORCE       15.5       AT NODE          1   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE       15.5    
 LARGEST INCREMENT OF DISP.        -0.210       AT NODE        404   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -8.444E-03   AT NODE        339   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     5.885E-03   TIME AVG. MOMENT      1.990E-03
 LARGEST SCALED RESIDUAL MOMENT     -35.3       AT NODE          1   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     -35.3    
 LARGEST INCREMENT OF ROTATION      1.750E-02   AT NODE        416   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -2.811E-03   AT NODE        412   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  13ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                      2.492E-02   TIME AVG. FORCE       1.290E-02
 LARGEST SCALED RESIDUAL FORCE     -6.485E-02   AT NODE          1   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE     -6.485E-02
 LARGEST INCREMENT OF DISP.        -0.206       AT NODE        411   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        6.477E-03   AT NODE        402   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     3.208E-03   TIME AVG. MOMENT      1.812E-03
 LARGEST SCALED RESIDUAL MOMENT    -0.145       AT NODE          1   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT    -0.145    
 LARGEST INCREMENT OF ROTATION      1.488E-02   AT NODE        411   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     2.810E-03   AT NODE        412   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  14ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                      2.496E-02   TIME AVG. FORCE       1.290E-02
 LARGEST SCALED RESIDUAL FORCE      4.743E-03   AT NODE        707   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      4.743E-03
 LARGEST INCREMENT OF DISP.        -0.206       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        5.170E-03   AT NODE        329   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     3.207E-03   TIME AVG. MOMENT      1.812E-03
 LARGEST SCALED RESIDUAL MOMENT    -4.743E-04   AT NODE          1   DOF  4
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT    -4.743E-04
 LARGEST INCREMENT OF ROTATION      1.491E-02   AT NODE       1418   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -3.542E-04   AT NODE        504   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  12ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     4


 AVERAGE FORCE                      2.492E-02   TIME AVG. FORCE       1.290E-02
 LARGEST SCALED RESIDUAL FORCE      1.324E-04   AT NODE        672   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      1.324E-04
 LARGEST INCREMENT OF DISP.        -0.205       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        8.049E-04   AT NODE        361   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     3.206E-03   TIME AVG. MOMENT      1.812E-03
 LARGEST SCALED RESIDUAL MOMENT     1.350E-05   AT NODE        819   DOF  5
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     1.350E-05
 LARGEST INCREMENT OF ROTATION      1.487E-02   AT NODE       1418   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -5.944E-05   AT NODE        469   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  12ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     5


 AVERAGE FORCE                      2.489E-02   TIME AVG. FORCE       1.290E-02
 LARGEST SCALED RESIDUAL FORCE      1.139E-03   AT NODE        619   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      1.139E-03
 LARGEST INCREMENT OF DISP.        -0.203       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        2.339E-03   AT NODE        411   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     3.204E-03   TIME AVG. MOMENT      1.812E-03
 LARGEST SCALED RESIDUAL MOMENT     1.835E-04   AT NODE        819   DOF  5
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     1.835E-04
 LARGEST INCREMENT OF ROTATION      1.470E-02   AT NODE       1418   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -1.694E-04   AT NODE        417   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  12ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     6


 AVERAGE FORCE                      2.489E-02   TIME AVG. FORCE       1.290E-02
 LARGEST SCALED RESIDUAL FORCE      5.343E-06   AT NODE        619   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      5.343E-06
 LARGEST INCREMENT OF DISP.        -0.203       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.603E-04   AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     3.204E-03   TIME AVG. MOMENT      1.812E-03
 LARGEST SCALED RESIDUAL MOMENT     8.684E-07   AT NODE        819   DOF  5
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     8.684E-07
 LARGEST INCREMENT OF ROTATION      1.469E-02   AT NODE       1418   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -1.160E-05   AT NODE       1418   DOF  4
   INSTANCE: SHELL-1                                                                         
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED

 ITERATION SUMMARY FOR THE INCREMENT:   6 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  6 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  1.875E-02,  FRACTION OF STEP COMPLETED  0.294    
 STEP TIME COMPLETED       0.294    ,  TOTAL TIME COMPLETED        0.294    


  INCREMENT    16 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  1.875E-02
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  16ms


 ***WARNING: THE SYSTEM MATRIX HAS 1 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      3.857E-02   TIME AVG. FORCE       1.450E-02
 LARGEST SCALED RESIDUAL FORCE       15.1       AT NODE          1   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE       15.1    
 LARGEST INCREMENT OF DISP.        -0.208       AT NODE        404   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -8.066E-03   AT NODE        401   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     6.017E-03   TIME AVG. MOMENT      2.074E-03
 LARGEST SCALED RESIDUAL MOMENT     -34.3       AT NODE          1   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     -34.3    
 LARGEST INCREMENT OF ROTATION      1.726E-02   AT NODE        416   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -2.745E-03   AT NODE        412   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  12ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                      2.689E-02   TIME AVG. FORCE       1.377E-02
 LARGEST SCALED RESIDUAL FORCE     -6.182E-02   AT NODE          1   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE     -6.182E-02
 LARGEST INCREMENT OF DISP.        -0.204       AT NODE        411   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        6.409E-03   AT NODE        402   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     3.405E-03   TIME AVG. MOMENT      1.911E-03
 LARGEST SCALED RESIDUAL MOMENT    -0.138       AT NODE          1   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT    -0.138    
 LARGEST INCREMENT OF ROTATION      1.471E-02   AT NODE        411   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     2.742E-03   AT NODE        412   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  16ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                      2.691E-02   TIME AVG. FORCE       1.377E-02
 LARGEST SCALED RESIDUAL FORCE      3.549E-03   AT NODE        708   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      3.549E-03
 LARGEST INCREMENT OF DISP.        -0.204       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        4.523E-03   AT NODE        329   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     3.403E-03   TIME AVG. MOMENT      1.911E-03
 LARGEST SCALED RESIDUAL MOMENT    -3.630E-04   AT NODE          1   DOF  4
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT    -3.630E-04
 LARGEST INCREMENT OF ROTATION      1.472E-02   AT NODE       1418   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -3.065E-04   AT NODE        504   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  18ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     4


 AVERAGE FORCE                      2.688E-02   TIME AVG. FORCE       1.377E-02
 LARGEST SCALED RESIDUAL FORCE      2.116E-04   AT NODE        667   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      2.116E-04
 LARGEST INCREMENT OF DISP.        -0.203       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.027E-03   AT NODE        367   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     3.402E-03   TIME AVG. MOMENT      1.911E-03
 LARGEST SCALED RESIDUAL MOMENT     2.851E-05   AT NODE        819   DOF  5
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     2.851E-05
 LARGEST INCREMENT OF ROTATION      1.465E-02   AT NODE       1418   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -7.504E-05   AT NODE        464   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  16ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     5


 AVERAGE FORCE                      2.686E-02   TIME AVG. FORCE       1.377E-02
 LARGEST SCALED RESIDUAL FORCE      8.035E-04   AT NODE        619   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      8.035E-04
 LARGEST INCREMENT OF DISP.        -0.201       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.975E-03   AT NODE        411   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     3.400E-03   TIME AVG. MOMENT      1.911E-03
 LARGEST SCALED RESIDUAL MOMENT     1.299E-04   AT NODE        819   DOF  5
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     1.299E-04
 LARGEST INCREMENT OF ROTATION      1.451E-02   AT NODE       1418   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -1.425E-04   AT NODE        417   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  15ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     6


 AVERAGE FORCE                      2.686E-02   TIME AVG. FORCE       1.377E-02
 LARGEST SCALED RESIDUAL FORCE      1.710E-05   AT NODE        619   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      1.710E-05
 LARGEST INCREMENT OF DISP.        -0.201       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        2.884E-04   AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     3.400E-03   TIME AVG. MOMENT      1.911E-03
 LARGEST SCALED RESIDUAL MOMENT     2.774E-06   AT NODE        819   DOF  5
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     2.774E-06
 LARGEST INCREMENT OF ROTATION      1.449E-02   AT NODE       1418   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -2.079E-05   AT NODE        417   DOF  4
   INSTANCE: SHELL-1                                                                         
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED

 ITERATION SUMMARY FOR THE INCREMENT:   6 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  6 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  1.875E-02,  FRACTION OF STEP COMPLETED  0.312    
 STEP TIME COMPLETED       0.312    ,  TOTAL TIME COMPLETED        0.312    


  INCREMENT    17 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  1.875E-02
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  14ms


 ***WARNING: THE SYSTEM MATRIX HAS 1 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      4.013E-02   TIME AVG. FORCE       1.532E-02
 LARGEST SCALED RESIDUAL FORCE       14.7       AT NODE          1   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE       14.7    
 LARGEST INCREMENT OF DISP.        -0.206       AT NODE        404   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -7.778E-03   AT NODE        402   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     6.137E-03   TIME AVG. MOMENT      2.159E-03
 LARGEST SCALED RESIDUAL MOMENT     -33.2       AT NODE          1   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     -33.2    
 LARGEST INCREMENT OF ROTATION      1.699E-02   AT NODE        416   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -2.671E-03   AT NODE        412   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  12ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                      2.890E-02   TIME AVG. FORCE       1.466E-02
 LARGEST SCALED RESIDUAL FORCE     -5.851E-02   AT NODE          1   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE     -5.851E-02
 LARGEST INCREMENT OF DISP.        -0.202       AT NODE        411   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        6.315E-03   AT NODE        402   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     3.599E-03   TIME AVG. MOMENT      2.010E-03
 LARGEST SCALED RESIDUAL MOMENT    -0.130       AT NODE          1   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT    -0.130    
 LARGEST INCREMENT OF ROTATION      1.450E-02   AT NODE        411   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     2.666E-03   AT NODE        412   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  13ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                      2.890E-02   TIME AVG. FORCE       1.466E-02
 LARGEST SCALED RESIDUAL FORCE      2.501E-03   AT NODE        708   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      2.501E-03
 LARGEST INCREMENT OF DISP.        -0.202       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        3.851E-03   AT NODE        329   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     3.597E-03   TIME AVG. MOMENT      2.010E-03
 LARGEST SCALED RESIDUAL MOMENT    -2.767E-04   AT NODE          1   DOF  4
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT    -2.767E-04
 LARGEST INCREMENT OF ROTATION      1.450E-02   AT NODE       1418   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -2.574E-04   AT NODE        505   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  12ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     4


 AVERAGE FORCE                      2.888E-02   TIME AVG. FORCE       1.466E-02
 LARGEST SCALED RESIDUAL FORCE      2.955E-04   AT NODE        663   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      2.955E-04
 LARGEST INCREMENT OF DISP.        -0.201       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.222E-03   AT NODE        372   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     3.596E-03   TIME AVG. MOMENT      2.010E-03
 LARGEST SCALED RESIDUAL MOMENT     4.462E-05   AT NODE        819   DOF  5
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     4.462E-05
 LARGEST INCREMENT OF ROTATION      1.442E-02   AT NODE       1418   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -8.874E-05   AT NODE        369   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  12ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     5


 AVERAGE FORCE                      2.887E-02   TIME AVG. FORCE       1.466E-02
 LARGEST SCALED RESIDUAL FORCE      4.483E-04   AT NODE        619   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      4.483E-04
 LARGEST INCREMENT OF DISP.        -0.199       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.483E-03   AT NODE        407   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     3.594E-03   TIME AVG. MOMENT      2.010E-03
 LARGEST SCALED RESIDUAL MOMENT     7.274E-05   AT NODE        819   DOF  5
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     7.274E-05
 LARGEST INCREMENT OF ROTATION      1.431E-02   AT NODE       1418   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -1.071E-04   AT NODE        928   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  13ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     6


 AVERAGE FORCE                      2.886E-02   TIME AVG. FORCE       1.466E-02
 LARGEST SCALED RESIDUAL FORCE      3.453E-05   AT NODE        619   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      3.453E-05
 LARGEST INCREMENT OF DISP.        -0.199       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        4.121E-04   AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     3.594E-03   TIME AVG. MOMENT      2.010E-03
 LARGEST SCALED RESIDUAL MOMENT     5.611E-06   AT NODE        819   DOF  5
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     5.611E-06
 LARGEST INCREMENT OF ROTATION      1.428E-02   AT NODE       1418   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -2.960E-05   AT NODE        417   DOF  4
   INSTANCE: SHELL-1                                                                         
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED

 ITERATION SUMMARY FOR THE INCREMENT:   6 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  6 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  1.875E-02,  FRACTION OF STEP COMPLETED  0.331    
 STEP TIME COMPLETED       0.331    ,  TOTAL TIME COMPLETED        0.331    


  INCREMENT    18 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  1.875E-02
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  12ms


 ***WARNING: THE SYSTEM MATRIX HAS 1 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      4.175E-02   TIME AVG. FORCE       1.616E-02
 LARGEST SCALED RESIDUAL FORCE       14.3       AT NODE          1   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE       14.3    
 LARGEST INCREMENT OF DISP.        -0.203       AT NODE        404   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -7.501E-03   AT NODE        402   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     6.258E-03   TIME AVG. MOMENT      2.246E-03
 LARGEST SCALED RESIDUAL MOMENT     -32.2       AT NODE          1   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     -32.2    
 LARGEST INCREMENT OF ROTATION      1.671E-02   AT NODE        416   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -2.596E-03   AT NODE        412   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  14ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                      3.092E-02   TIME AVG. FORCE       1.556E-02
 LARGEST SCALED RESIDUAL FORCE     -5.526E-02   AT NODE          1   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE     -5.526E-02
 LARGEST INCREMENT OF DISP.        -0.200       AT NODE        411   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        6.209E-03   AT NODE        402   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     3.790E-03   TIME AVG. MOMENT      2.109E-03
 LARGEST SCALED RESIDUAL MOMENT    -0.123       AT NODE          1   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT    -0.123    
 LARGEST INCREMENT OF ROTATION      1.429E-02   AT NODE        411   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     2.590E-03   AT NODE        412   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  12ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                      3.093E-02   TIME AVG. FORCE       1.556E-02
 LARGEST SCALED RESIDUAL FORCE      1.703E-03   AT NODE        709   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      1.703E-03
 LARGEST INCREMENT OF DISP.        -0.199       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        3.233E-03   AT NODE        329   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     3.789E-03   TIME AVG. MOMENT      2.109E-03
 LARGEST SCALED RESIDUAL MOMENT    -2.086E-04   AT NODE          1   DOF  4
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT    -2.086E-04
 LARGEST INCREMENT OF ROTATION      1.428E-02   AT NODE       1418   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -2.126E-04   AT NODE        506   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  12ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     4


 AVERAGE FORCE                      3.092E-02   TIME AVG. FORCE       1.556E-02
 LARGEST SCALED RESIDUAL FORCE      3.659E-04   AT NODE        660   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      3.659E-04
 LARGEST INCREMENT OF DISP.        -0.198       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.370E-03   AT NODE        376   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     3.787E-03   TIME AVG. MOMENT      2.109E-03
 LARGEST SCALED RESIDUAL MOMENT     5.855E-05   AT NODE        819   DOF  5
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     5.855E-05
 LARGEST INCREMENT OF ROTATION      1.419E-02   AT NODE       1418   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -9.894E-05   AT NODE        373   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  12ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     5


 AVERAGE FORCE                      3.090E-02   TIME AVG. FORCE       1.556E-02
 LARGEST SCALED RESIDUAL FORCE      2.168E-04   AT NODE        619   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      2.168E-04
 LARGEST INCREMENT OF DISP.        -0.197       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.039E-03   AT NODE        380   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     3.786E-03   TIME AVG. MOMENT      2.109E-03
 LARGEST SCALED RESIDUAL MOMENT     3.532E-05   AT NODE        819   DOF  5
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     3.532E-05
 LARGEST INCREMENT OF ROTATION      1.411E-02   AT NODE       1418   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -7.513E-05   AT NODE        368   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  13ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     6


 AVERAGE FORCE                      3.090E-02   TIME AVG. FORCE       1.556E-02
 LARGEST SCALED RESIDUAL FORCE      4.208E-05   AT NODE        619   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      4.208E-05
 LARGEST INCREMENT OF DISP.        -0.197       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        4.573E-04   AT NODE        412   DOF  3
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     3.786E-03   TIME AVG. MOMENT      2.109E-03
 LARGEST SCALED RESIDUAL MOMENT     6.856E-06   AT NODE        819   DOF  5
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     6.856E-06
 LARGEST INCREMENT OF ROTATION      1.408E-02   AT NODE       1418   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -3.275E-05   AT NODE        417   DOF  4
   INSTANCE: SHELL-1                                                                         
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED

 ITERATION SUMMARY FOR THE INCREMENT:   6 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  6 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  1.875E-02,  FRACTION OF STEP COMPLETED  0.350    
 STEP TIME COMPLETED       0.350    ,  TOTAL TIME COMPLETED        0.350    


  INCREMENT    19 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  1.875E-02
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  12ms


 ***WARNING: THE SYSTEM MATRIX HAS 1 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      4.342E-02   TIME AVG. FORCE       1.703E-02
 LARGEST SCALED RESIDUAL FORCE       13.9       AT NODE          1   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE       13.9    
 LARGEST INCREMENT OF DISP.        -0.201       AT NODE        404   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -7.236E-03   AT NODE        402   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     6.380E-03   TIME AVG. MOMENT      2.333E-03
 LARGEST SCALED RESIDUAL MOMENT     -31.1       AT NODE          1   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     -31.1    
 LARGEST INCREMENT OF ROTATION      1.644E-02   AT NODE        416   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -2.523E-03   AT NODE        412   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  14ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                      3.298E-02   TIME AVG. FORCE       1.648E-02
 LARGEST SCALED RESIDUAL FORCE     -5.220E-02   AT NODE          1   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE     -5.220E-02
 LARGEST INCREMENT OF DISP.        -0.198       AT NODE        411   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        6.100E-03   AT NODE        402   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     3.981E-03   TIME AVG. MOMENT      2.207E-03
 LARGEST SCALED RESIDUAL MOMENT    -0.115       AT NODE          1   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT    -0.115    
 LARGEST INCREMENT OF ROTATION      1.409E-02   AT NODE        411   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     2.516E-03   AT NODE        412   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  12ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                      3.299E-02   TIME AVG. FORCE       1.648E-02
 LARGEST SCALED RESIDUAL FORCE      1.150E-03   AT NODE        709   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      1.150E-03
 LARGEST INCREMENT OF DISP.        -0.197       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        2.709E-03   AT NODE        330   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     3.978E-03   TIME AVG. MOMENT      2.207E-03
 LARGEST SCALED RESIDUAL MOMENT    -1.487E-04   AT NODE          1   DOF  4
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT    -1.487E-04
 LARGEST INCREMENT OF ROTATION      1.407E-02   AT NODE       1418   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -1.748E-04   AT NODE        506   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  14ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     4


 AVERAGE FORCE                      3.297E-02   TIME AVG. FORCE       1.648E-02
 LARGEST SCALED RESIDUAL FORCE      4.259E-04   AT NODE        619   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      4.259E-04
 LARGEST INCREMENT OF DISP.        -0.196       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.475E-03   AT NODE        383   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     3.978E-03   TIME AVG. MOMENT      2.207E-03
 LARGEST SCALED RESIDUAL MOMENT     6.960E-05   AT NODE        819   DOF  5
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     6.960E-05
 LARGEST INCREMENT OF ROTATION      1.397E-02   AT NODE       1418   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -1.060E-04   AT NODE        378   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  13ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     5


 AVERAGE FORCE                      3.296E-02   TIME AVG. FORCE       1.648E-02
 LARGEST SCALED RESIDUAL FORCE      9.930E-05   AT NODE        619   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      9.930E-05
 LARGEST INCREMENT OF DISP.        -0.195       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        7.103E-04   AT NODE        372   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     3.977E-03   TIME AVG. MOMENT      2.207E-03
 LARGEST SCALED RESIDUAL MOMENT     1.624E-05   AT NODE        819   DOF  5
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     1.624E-05
 LARGEST INCREMENT OF ROTATION      1.392E-02   AT NODE       1418   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -5.131E-05   AT NODE        364   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  13ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     6


 AVERAGE FORCE                      3.296E-02   TIME AVG. FORCE       1.648E-02
 LARGEST SCALED RESIDUAL FORCE      3.379E-05   AT NODE        619   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      3.379E-05
 LARGEST INCREMENT OF DISP.        -0.194       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        4.118E-04   AT NODE        412   DOF  3
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     3.976E-03   TIME AVG. MOMENT      2.207E-03
 LARGEST SCALED RESIDUAL MOMENT     5.523E-06   AT NODE        819   DOF  5
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     5.523E-06
 LARGEST INCREMENT OF ROTATION      1.389E-02   AT NODE       1418   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -2.941E-05   AT NODE        417   DOF  4
   INSTANCE: SHELL-1                                                                         
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED

 ITERATION SUMMARY FOR THE INCREMENT:   6 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  6 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  1.875E-02,  FRACTION OF STEP COMPLETED  0.369    
 STEP TIME COMPLETED       0.369    ,  TOTAL TIME COMPLETED        0.369    


  INCREMENT    20 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  1.875E-02
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  16ms


 ***WARNING: THE SYSTEM MATRIX HAS 1 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      4.513E-02   TIME AVG. FORCE       1.791E-02
 LARGEST SCALED RESIDUAL FORCE       13.5       AT NODE          1   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE       13.5    
 LARGEST INCREMENT OF DISP.        -0.199       AT NODE        404   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -6.985E-03   AT NODE        402   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     6.501E-03   TIME AVG. MOMENT      2.422E-03
 LARGEST SCALED RESIDUAL MOMENT     -30.2       AT NODE          1   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     -30.2    
 LARGEST INCREMENT OF ROTATION      1.618E-02   AT NODE        416   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -2.454E-03   AT NODE        412   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  15ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                      3.508E-02   TIME AVG. FORCE       1.741E-02
 LARGEST SCALED RESIDUAL FORCE     -4.936E-02   AT NODE          1   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE     -4.936E-02
 LARGEST INCREMENT OF DISP.        -0.195       AT NODE        411   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        5.991E-03   AT NODE        402   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     4.170E-03   TIME AVG. MOMENT      2.305E-03
 LARGEST SCALED RESIDUAL MOMENT    -0.109       AT NODE          1   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT    -0.109    
 LARGEST INCREMENT OF ROTATION      1.389E-02   AT NODE        411   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     2.446E-03   AT NODE        412   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  14ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                      3.507E-02   TIME AVG. FORCE       1.741E-02
 LARGEST SCALED RESIDUAL FORCE      7.796E-04   AT NODE        709   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      7.796E-04
 LARGEST INCREMENT OF DISP.        -0.195       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        2.284E-03   AT NODE        331   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     4.168E-03   TIME AVG. MOMENT      2.305E-03
 LARGEST SCALED RESIDUAL MOMENT    -8.978E-05   AT NODE          1   DOF  4
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT    -8.978E-05
 LARGEST INCREMENT OF ROTATION      1.386E-02   AT NODE       1418   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -1.440E-04   AT NODE        506   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  16ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     4


 AVERAGE FORCE                      3.506E-02   TIME AVG. FORCE       1.741E-02
 LARGEST SCALED RESIDUAL FORCE      4.859E-04   AT NODE        619   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      4.859E-04
 LARGEST INCREMENT OF DISP.        -0.193       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.569E-03   AT NODE        397   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     4.166E-03   TIME AVG. MOMENT      2.305E-03
 LARGEST SCALED RESIDUAL MOMENT     7.968E-05   AT NODE        819   DOF  5
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     7.968E-05
 LARGEST INCREMENT OF ROTATION      1.375E-02   AT NODE       1418   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -1.120E-04   AT NODE        389   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  13ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     5


 AVERAGE FORCE                      3.505E-02   TIME AVG. FORCE       1.741E-02
 LARGEST SCALED RESIDUAL FORCE      4.614E-05   AT NODE        672   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      4.614E-05
 LARGEST INCREMENT OF DISP.        -0.193       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        4.871E-04   AT NODE        368   DOF  3
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     4.165E-03   TIME AVG. MOMENT      2.305E-03
 LARGEST SCALED RESIDUAL MOMENT     7.515E-06   AT NODE        819   DOF  5
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     7.515E-06
 LARGEST INCREMENT OF ROTATION      1.372E-02   AT NODE       1418   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -3.513E-05   AT NODE        361   DOF  4
   INSTANCE: SHELL-1                                                                         
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED

 ITERATION SUMMARY FOR THE INCREMENT:   5 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  5 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  1.875E-02,  FRACTION OF STEP COMPLETED  0.387    
 STEP TIME COMPLETED       0.387    ,  TOTAL TIME COMPLETED        0.387    


  INCREMENT    21 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  1.875E-02
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  13ms


 ***WARNING: THE SYSTEM MATRIX HAS 1 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      4.694E-02   TIME AVG. FORCE       1.881E-02
 LARGEST SCALED RESIDUAL FORCE       13.2       AT NODE          1   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE       13.2    
 LARGEST INCREMENT OF DISP.        -0.197       AT NODE        404   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -6.764E-03   AT NODE        402   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     6.626E-03   TIME AVG. MOMENT      2.511E-03
 LARGEST SCALED RESIDUAL MOMENT     -29.3       AT NODE          1   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     -29.3    
 LARGEST INCREMENT OF ROTATION      1.596E-02   AT NODE        416   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -2.394E-03   AT NODE        412   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  14ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                      3.719E-02   TIME AVG. FORCE       1.835E-02
 LARGEST SCALED RESIDUAL FORCE     -4.698E-02   AT NODE          1   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE     -4.698E-02
 LARGEST INCREMENT OF DISP.        -0.193       AT NODE        412   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        5.903E-03   AT NODE        402   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     4.357E-03   TIME AVG. MOMENT      2.403E-03
 LARGEST SCALED RESIDUAL MOMENT    -0.103       AT NODE          1   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT    -0.103    
 LARGEST INCREMENT OF ROTATION      1.372E-02   AT NODE        411   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     2.385E-03   AT NODE        412   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  15ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                      3.720E-02   TIME AVG. FORCE       1.835E-02
 LARGEST SCALED RESIDUAL FORCE      5.505E-04   AT NODE        707   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      5.505E-04
 LARGEST INCREMENT OF DISP.        -0.192       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.983E-03   AT NODE        335   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     4.355E-03   TIME AVG. MOMENT      2.402E-03
 LARGEST SCALED RESIDUAL MOMENT    -5.327E-05   AT NODE          1   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT    -5.327E-05
 LARGEST INCREMENT OF ROTATION      1.366E-02   AT NODE       1418   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -1.211E-04   AT NODE        504   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  14ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     4


 AVERAGE FORCE                      3.717E-02   TIME AVG. FORCE       1.835E-02
 LARGEST SCALED RESIDUAL FORCE      7.264E-04   AT NODE        619   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      7.264E-04
 LARGEST INCREMENT OF DISP.        -0.190       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.928E-03   AT NODE        410   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     4.352E-03   TIME AVG. MOMENT      2.402E-03
 LARGEST SCALED RESIDUAL MOMENT     1.196E-04   AT NODE        819   DOF  5
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     1.196E-04
 LARGEST INCREMENT OF ROTATION      1.353E-02   AT NODE       1418   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -1.370E-04   AT NODE        410   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  15ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     5


 AVERAGE FORCE                      3.717E-02   TIME AVG. FORCE       1.835E-02
 LARGEST SCALED RESIDUAL FORCE      2.744E-05   AT NODE        674   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      2.744E-05
 LARGEST INCREMENT OF DISP.        -0.190       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        3.765E-04   AT NODE        365   DOF  3
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     4.352E-03   TIME AVG. MOMENT      2.402E-03
 LARGEST SCALED RESIDUAL MOMENT     4.366E-06   AT NODE        819   DOF  5
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     4.366E-06
 LARGEST INCREMENT OF ROTATION      1.350E-02   AT NODE       1418   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -2.712E-05   AT NODE        359   DOF  4
   INSTANCE: SHELL-1                                                                         
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED

 ITERATION SUMMARY FOR THE INCREMENT:   5 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  5 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  1.875E-02,  FRACTION OF STEP COMPLETED  0.406    
 STEP TIME COMPLETED       0.406    ,  TOTAL TIME COMPLETED        0.406    


  INCREMENT    22 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  1.875E-02
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  17ms


 ***WARNING: THE SYSTEM MATRIX HAS 1 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      4.870E-02   TIME AVG. FORCE       1.973E-02
 LARGEST SCALED RESIDUAL FORCE       12.8       AT NODE          1   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE       12.8    
 LARGEST INCREMENT OF DISP.        -0.194       AT NODE        404   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -6.502E-03   AT NODE        402   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     6.739E-03   TIME AVG. MOMENT      2.599E-03
 LARGEST SCALED RESIDUAL MOMENT     -28.2       AT NODE          1   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     -28.2    
 LARGEST INCREMENT OF ROTATION      1.567E-02   AT NODE        416   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -2.320E-03   AT NODE        412   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  12ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                      3.933E-02   TIME AVG. FORCE       1.930E-02
 LARGEST SCALED RESIDUAL FORCE     -4.408E-02   AT NODE          1   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE     -4.408E-02
 LARGEST INCREMENT OF DISP.        -0.191       AT NODE        412   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        5.763E-03   AT NODE        402   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     4.540E-03   TIME AVG. MOMENT      2.499E-03
 LARGEST SCALED RESIDUAL MOMENT    -9.649E-02   AT NODE          1   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT    -9.649E-02
 LARGEST INCREMENT OF ROTATION      1.350E-02   AT NODE        411   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     2.309E-03   AT NODE        412   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  12ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                      3.932E-02   TIME AVG. FORCE       1.930E-02
 LARGEST SCALED RESIDUAL FORCE      3.610E-04   AT NODE        706   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      3.610E-04
 LARGEST INCREMENT OF DISP.        -0.190       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.666E-03   AT NODE        338   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     4.538E-03   TIME AVG. MOMENT      2.499E-03
 LARGEST SCALED RESIDUAL MOMENT    -4.686E-05   AT NODE          1   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT    -4.686E-05
 LARGEST INCREMENT OF ROTATION      1.344E-02   AT NODE       1418   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -9.811E-05   AT NODE        503   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  12ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     4


 AVERAGE FORCE                      3.931E-02   TIME AVG. FORCE       1.930E-02
 LARGEST SCALED RESIDUAL FORCE      6.301E-04   AT NODE        619   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      6.301E-04
 LARGEST INCREMENT OF DISP.        -0.188       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.804E-03   AT NODE        410   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     4.536E-03   TIME AVG. MOMENT      2.499E-03
 LARGEST SCALED RESIDUAL MOMENT     1.041E-04   AT NODE        819   DOF  5
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     1.041E-04
 LARGEST INCREMENT OF ROTATION      1.331E-02   AT NODE       1418   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -1.279E-04   AT NODE        410   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  18ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     5


 AVERAGE FORCE                      3.930E-02   TIME AVG. FORCE       1.930E-02
 LARGEST SCALED RESIDUAL FORCE      1.315E-05   AT NODE        619   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      1.315E-05
 LARGEST INCREMENT OF DISP.        -0.188       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        2.624E-04   AT NODE        376   DOF  3
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     4.536E-03   TIME AVG. MOMENT      2.499E-03
 LARGEST SCALED RESIDUAL MOMENT     2.179E-06   AT NODE        819   DOF  5
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     2.179E-06
 LARGEST INCREMENT OF ROTATION      1.329E-02   AT NODE       1418   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -1.876E-05   AT NODE        368   DOF  4
   INSTANCE: SHELL-1                                                                         
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED

 ITERATION SUMMARY FOR THE INCREMENT:   5 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  5 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  1.875E-02,  FRACTION OF STEP COMPLETED  0.425    
 STEP TIME COMPLETED       0.425    ,  TOTAL TIME COMPLETED        0.425    


  INCREMENT    23 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  1.875E-02
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  18ms


 ***WARNING: THE SYSTEM MATRIX HAS 1 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      5.049E-02   TIME AVG. FORCE       2.066E-02
 LARGEST SCALED RESIDUAL FORCE       12.4       AT NODE          1   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE       12.4    
 LARGEST INCREMENT OF DISP.        -0.191       AT NODE        404   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -6.256E-03   AT NODE        402   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     6.850E-03   TIME AVG. MOMENT      2.688E-03
 LARGEST SCALED RESIDUAL MOMENT     -27.2       AT NODE          1   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     -27.2    
 LARGEST INCREMENT OF ROTATION      1.540E-02   AT NODE        416   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -2.249E-03   AT NODE        412   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  17ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                      4.148E-02   TIME AVG. FORCE       2.026E-02
 LARGEST SCALED RESIDUAL FORCE     -4.141E-02   AT NODE          1   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE     -4.141E-02
 LARGEST INCREMENT OF DISP.        -0.188       AT NODE        412   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        5.623E-03   AT NODE        402   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     4.722E-03   TIME AVG. MOMENT      2.596E-03
 LARGEST SCALED RESIDUAL MOMENT    -9.031E-02   AT NODE          1   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT    -9.031E-02
 LARGEST INCREMENT OF ROTATION      1.329E-02   AT NODE        411   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     2.238E-03   AT NODE        412   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  17ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                      4.148E-02   TIME AVG. FORCE       2.026E-02
 LARGEST SCALED RESIDUAL FORCE      2.346E-04   AT NODE        705   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      2.346E-04
 LARGEST INCREMENT OF DISP.        -0.187       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.406E-03   AT NODE        343   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     4.720E-03   TIME AVG. MOMENT      2.596E-03
 LARGEST SCALED RESIDUAL MOMENT     5.524E-05   AT NODE          1   DOF  4
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     5.524E-05
 LARGEST INCREMENT OF ROTATION      1.323E-02   AT NODE       1418   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -7.916E-05   AT NODE        502   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  19ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     4


 AVERAGE FORCE                      4.146E-02   TIME AVG. FORCE       2.026E-02
 LARGEST SCALED RESIDUAL FORCE      4.751E-04   AT NODE        619   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      4.751E-04
 LARGEST INCREMENT OF DISP.        -0.185       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.574E-03   AT NODE        410   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     4.719E-03   TIME AVG. MOMENT      2.596E-03
 LARGEST SCALED RESIDUAL MOMENT     7.875E-05   AT NODE        819   DOF  5
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     7.875E-05
 LARGEST INCREMENT OF ROTATION      1.311E-02   AT NODE       1418   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -1.113E-04   AT NODE        410   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  20ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     5


 AVERAGE FORCE                      4.145E-02   TIME AVG. FORCE       2.026E-02
 LARGEST SCALED RESIDUAL FORCE      6.282E-06   AT NODE        619   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      6.282E-06
 LARGEST INCREMENT OF DISP.        -0.185       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.808E-04   AT NODE        405   DOF  3
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     4.719E-03   TIME AVG. MOMENT      2.596E-03
 LARGEST SCALED RESIDUAL MOMENT     1.045E-06   AT NODE        819   DOF  5
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     1.045E-06
 LARGEST INCREMENT OF ROTATION      1.310E-02   AT NODE       1418   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -1.281E-05   AT NODE        886   DOF  4
   INSTANCE: SHELL-1                                                                         
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED

 ITERATION SUMMARY FOR THE INCREMENT:   5 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  5 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  1.875E-02,  FRACTION OF STEP COMPLETED  0.444    
 STEP TIME COMPLETED       0.444    ,  TOTAL TIME COMPLETED        0.444    


  INCREMENT    24 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  1.875E-02
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  20ms


 ***WARNING: THE SYSTEM MATRIX HAS 1 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      5.234E-02   TIME AVG. FORCE       2.160E-02
 LARGEST SCALED RESIDUAL FORCE       12.0       AT NODE          1   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE       12.0    
 LARGEST INCREMENT OF DISP.        -0.189       AT NODE        404   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -6.034E-03   AT NODE        402   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     6.968E-03   TIME AVG. MOMENT      2.778E-03
 LARGEST SCALED RESIDUAL MOMENT     -26.3       AT NODE          1   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     -26.3    
 LARGEST INCREMENT OF ROTATION      1.515E-02   AT NODE        416   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -2.185E-03   AT NODE        412   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  19ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                      4.365E-02   TIME AVG. FORCE       2.124E-02
 LARGEST SCALED RESIDUAL FORCE     -3.907E-02   AT NODE          1   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE     -3.907E-02
 LARGEST INCREMENT OF DISP.        -0.186       AT NODE        412   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        5.495E-03   AT NODE        402   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     4.903E-03   TIME AVG. MOMENT      2.692E-03
 LARGEST SCALED RESIDUAL MOMENT    -8.489E-02   AT NODE          1   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT    -8.489E-02
 LARGEST INCREMENT OF ROTATION      1.310E-02   AT NODE        411   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     2.173E-03   AT NODE        412   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  21ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                      4.365E-02   TIME AVG. FORCE       2.124E-02
 LARGEST SCALED RESIDUAL FORCE      1.631E-04   AT NODE        702   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      1.631E-04
 LARGEST INCREMENT OF DISP.        -0.185       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.428E-03   AT NODE        411   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     4.901E-03   TIME AVG. MOMENT      2.692E-03
 LARGEST SCALED RESIDUAL MOMENT     7.839E-05   AT NODE          1   DOF  4
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     7.839E-05
 LARGEST INCREMENT OF ROTATION      1.303E-02   AT NODE       1418   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -8.333E-05   AT NODE        411   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  17ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     4


 AVERAGE FORCE                      4.363E-02   TIME AVG. FORCE       2.124E-02
 LARGEST SCALED RESIDUAL FORCE      3.930E-04   AT NODE        619   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      3.930E-04
 LARGEST INCREMENT OF DISP.        -0.183       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.438E-03   AT NODE        410   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     4.900E-03   TIME AVG. MOMENT      2.692E-03
 LARGEST SCALED RESIDUAL MOMENT     6.537E-05   AT NODE        819   DOF  5
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     6.537E-05
 LARGEST INCREMENT OF ROTATION      1.292E-02   AT NODE       1418   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -1.015E-04   AT NODE        410   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  21ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     5


 AVERAGE FORCE                      4.363E-02   TIME AVG. FORCE       2.124E-02
 LARGEST SCALED RESIDUAL FORCE      4.015E-06   AT NODE        619   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      4.015E-06
 LARGEST INCREMENT OF DISP.        -0.183       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.452E-04   AT NODE        411   DOF  3
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     4.899E-03   TIME AVG. MOMENT      2.692E-03
 LARGEST SCALED RESIDUAL MOMENT     6.704E-07   AT NODE        819   DOF  5
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     6.704E-07
 LARGEST INCREMENT OF ROTATION      1.291E-02   AT NODE       1418   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -1.026E-05   AT NODE        411   DOF  4
   INSTANCE: SHELL-1                                                                         
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED

 ITERATION SUMMARY FOR THE INCREMENT:   5 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  5 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  1.875E-02,  FRACTION OF STEP COMPLETED  0.462    
 STEP TIME COMPLETED       0.462    ,  TOTAL TIME COMPLETED        0.462    


  INCREMENT    25 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  1.875E-02
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  18ms


 ***WARNING: THE SYSTEM MATRIX HAS 1 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      5.421E-02   TIME AVG. FORCE       2.256E-02
 LARGEST SCALED RESIDUAL FORCE       11.7       AT NODE          1   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE       11.7    
 LARGEST INCREMENT OF DISP.        -0.186       AT NODE        404   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -5.820E-03   AT NODE        402   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     7.086E-03   TIME AVG. MOMENT      2.867E-03
 LARGEST SCALED RESIDUAL MOMENT     -25.4       AT NODE          1   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     -25.4    
 LARGEST INCREMENT OF ROTATION      1.490E-02   AT NODE        416   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -2.123E-03   AT NODE        412   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  17ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                      4.585E-02   TIME AVG. FORCE       2.222E-02
 LARGEST SCALED RESIDUAL FORCE     -3.688E-02   AT NODE          1   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE     -3.688E-02
 LARGEST INCREMENT OF DISP.        -0.184       AT NODE        412   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        5.367E-03   AT NODE        402   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     5.080E-03   TIME AVG. MOMENT      2.787E-03
 LARGEST SCALED RESIDUAL MOMENT    -7.982E-02   AT NODE          1   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT    -7.982E-02
 LARGEST INCREMENT OF ROTATION      1.291E-02   AT NODE        411   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     2.111E-03   AT NODE        412   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  19ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                      4.584E-02   TIME AVG. FORCE       2.222E-02
 LARGEST SCALED RESIDUAL FORCE      1.224E-04   AT NODE        695   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      1.224E-04
 LARGEST INCREMENT OF DISP.        -0.182       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.522E-03   AT NODE        411   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     5.080E-03   TIME AVG. MOMENT      2.787E-03
 LARGEST SCALED RESIDUAL MOMENT     1.010E-04   AT NODE          1   DOF  4
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     1.010E-04
 LARGEST INCREMENT OF ROTATION      1.283E-02   AT NODE       1418   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -9.106E-05   AT NODE        411   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  21ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     4


 AVERAGE FORCE                      4.582E-02   TIME AVG. FORCE       2.222E-02
 LARGEST SCALED RESIDUAL FORCE      3.346E-04   AT NODE        619   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      3.346E-04
 LARGEST INCREMENT OF DISP.        -0.181       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.332E-03   AT NODE        410   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     5.079E-03   TIME AVG. MOMENT      2.787E-03
 LARGEST SCALED RESIDUAL MOMENT     5.585E-05   AT NODE        819   DOF  5
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     5.585E-05
 LARGEST INCREMENT OF ROTATION      1.274E-02   AT NODE       1418   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -9.393E-05   AT NODE        410   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  17ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     5


 AVERAGE FORCE                      4.582E-02   TIME AVG. FORCE       2.222E-02
 LARGEST SCALED RESIDUAL FORCE      3.338E-06   AT NODE        619   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      3.338E-06
 LARGEST INCREMENT OF DISP.        -0.181       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.330E-04   AT NODE        411   DOF  3
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     5.078E-03   TIME AVG. MOMENT      2.787E-03
 LARGEST SCALED RESIDUAL MOMENT     5.591E-07   AT NODE        819   DOF  5
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     5.591E-07
 LARGEST INCREMENT OF ROTATION      1.273E-02   AT NODE       1418   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -9.376E-06   AT NODE        411   DOF  4
   INSTANCE: SHELL-1                                                                         
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED

 ITERATION SUMMARY FOR THE INCREMENT:   5 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  5 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  1.875E-02,  FRACTION OF STEP COMPLETED  0.481    
 STEP TIME COMPLETED       0.481    ,  TOTAL TIME COMPLETED        0.481    


  INCREMENT    26 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  1.875E-02
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  18ms


 ***WARNING: THE SYSTEM MATRIX HAS 1 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      5.612E-02   TIME AVG. FORCE       2.352E-02
 LARGEST SCALED RESIDUAL FORCE       11.3       AT NODE          1   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE       11.3    
 LARGEST INCREMENT OF DISP.        -0.184       AT NODE        404   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -5.612E-03   AT NODE        402   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     7.202E-03   TIME AVG. MOMENT      2.957E-03
 LARGEST SCALED RESIDUAL MOMENT     -24.6       AT NODE          1   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     -24.6    
 LARGEST INCREMENT OF ROTATION      1.465E-02   AT NODE        416   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -2.062E-03   AT NODE        412   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  19ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                      4.805E-02   TIME AVG. FORCE       2.321E-02
 LARGEST SCALED RESIDUAL FORCE     -3.478E-02   AT NODE          1   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE     -3.478E-02
 LARGEST INCREMENT OF DISP.        -0.181       AT NODE        412   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        5.233E-03   AT NODE        402   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     5.257E-03   TIME AVG. MOMENT      2.882E-03
 LARGEST SCALED RESIDUAL MOMENT    -7.496E-02   AT NODE          1   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT    -7.496E-02
 LARGEST INCREMENT OF ROTATION      1.272E-02   AT NODE        411   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     2.049E-03   AT NODE        412   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  18ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                      4.805E-02   TIME AVG. FORCE       2.321E-02
 LARGEST SCALED RESIDUAL FORCE      1.171E-04   AT NODE        411   DOF  2
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      1.171E-04
 LARGEST INCREMENT OF DISP.        -0.180       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.591E-03   AT NODE        411   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     5.255E-03   TIME AVG. MOMENT      2.882E-03
 LARGEST SCALED RESIDUAL MOMENT     1.160E-04   AT NODE          1   DOF  4
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     1.160E-04
 LARGEST INCREMENT OF ROTATION      1.263E-02   AT NODE       1418   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -9.697E-05   AT NODE        411   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  19ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     4


 AVERAGE FORCE                      4.803E-02   TIME AVG. FORCE       2.321E-02
 LARGEST SCALED RESIDUAL FORCE      2.758E-04   AT NODE        619   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      2.758E-04
 LARGEST INCREMENT OF DISP.        -0.178       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.215E-03   AT NODE        410   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     5.254E-03   TIME AVG. MOMENT      2.882E-03
 LARGEST SCALED RESIDUAL MOMENT     4.619E-05   AT NODE        819   DOF  5
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     4.619E-05
 LARGEST INCREMENT OF ROTATION      1.255E-02   AT NODE       1418   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -8.550E-05   AT NODE        410   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  19ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     5


 AVERAGE FORCE                      4.802E-02   TIME AVG. FORCE       2.321E-02
 LARGEST SCALED RESIDUAL FORCE      3.030E-06   AT NODE        619   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      3.030E-06
 LARGEST INCREMENT OF DISP.        -0.178       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.273E-04   AT NODE        411   DOF  3
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     5.253E-03   TIME AVG. MOMENT      2.882E-03
 LARGEST SCALED RESIDUAL MOMENT     5.091E-07   AT NODE        819   DOF  5
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     5.091E-07
 LARGEST INCREMENT OF ROTATION      1.254E-02   AT NODE       1418   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -8.957E-06   AT NODE        411   DOF  4
   INSTANCE: SHELL-1                                                                         
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED

 ITERATION SUMMARY FOR THE INCREMENT:   5 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  5 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  1.875E-02,  FRACTION OF STEP COMPLETED  0.500    
 STEP TIME COMPLETED       0.500    ,  TOTAL TIME COMPLETED        0.500    


  INCREMENT    27 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  1.875E-02
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  21ms


 ***WARNING: THE SYSTEM MATRIX HAS 1 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      5.805E-02   TIME AVG. FORCE       2.450E-02
 LARGEST SCALED RESIDUAL FORCE       11.0       AT NODE          1   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE       11.0    
 LARGEST INCREMENT OF DISP.        -0.181       AT NODE        404   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -5.410E-03   AT NODE        402   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     7.317E-03   TIME AVG. MOMENT      3.046E-03
 LARGEST SCALED RESIDUAL MOMENT     -23.7       AT NODE          1   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     -23.7    
 LARGEST INCREMENT OF ROTATION      1.441E-02   AT NODE        416   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -2.002E-03   AT NODE        412   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  20ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                      5.028E-02   TIME AVG. FORCE       2.421E-02
 LARGEST SCALED RESIDUAL FORCE     -3.278E-02   AT NODE          1   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE     -3.278E-02
 LARGEST INCREMENT OF DISP.        -0.179       AT NODE        412   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        5.099E-03   AT NODE        402   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     5.433E-03   TIME AVG. MOMENT      2.977E-03
 LARGEST SCALED RESIDUAL MOMENT    -7.035E-02   AT NODE          1   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT    -7.035E-02
 LARGEST INCREMENT OF ROTATION      1.253E-02   AT NODE        411   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.989E-03   AT NODE        412   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  20ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                      5.026E-02   TIME AVG. FORCE       2.421E-02
 LARGEST SCALED RESIDUAL FORCE      1.335E-04   AT NODE        411   DOF  2
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      1.335E-04
 LARGEST INCREMENT OF DISP.        -0.177       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.639E-03   AT NODE        411   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     5.430E-03   TIME AVG. MOMENT      2.976E-03
 LARGEST SCALED RESIDUAL MOMENT     1.253E-04   AT NODE          1   DOF  4
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     1.253E-04
 LARGEST INCREMENT OF ROTATION      1.244E-02   AT NODE       1418   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -1.013E-04   AT NODE        411   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  19ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     4


 AVERAGE FORCE                      5.025E-02   TIME AVG. FORCE       2.421E-02
 LARGEST SCALED RESIDUAL FORCE      2.237E-04   AT NODE        619   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      2.237E-04
 LARGEST INCREMENT OF DISP.        -0.176       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.098E-03   AT NODE        410   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     5.429E-03   TIME AVG. MOMENT      2.976E-03
 LARGEST SCALED RESIDUAL MOMENT     3.760E-05   AT NODE        819   DOF  5
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     3.760E-05
 LARGEST INCREMENT OF ROTATION      1.237E-02   AT NODE       1418   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -7.722E-05   AT NODE        410   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  18ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     5


 AVERAGE FORCE                      5.026E-02   TIME AVG. FORCE       2.421E-02
 LARGEST SCALED RESIDUAL FORCE      2.878E-06   AT NODE        619   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      2.878E-06
 LARGEST INCREMENT OF DISP.        -0.176       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.245E-04   AT NODE        412   DOF  3
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     5.429E-03   TIME AVG. MOMENT      2.976E-03
 LARGEST SCALED RESIDUAL MOMENT     4.849E-07   AT NODE        819   DOF  5
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     4.849E-07
 LARGEST INCREMENT OF ROTATION      1.236E-02   AT NODE       1418   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -8.751E-06   AT NODE        411   DOF  4
   INSTANCE: SHELL-1                                                                         
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED

 ITERATION SUMMARY FOR THE INCREMENT:   5 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  5 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  1.875E-02,  FRACTION OF STEP COMPLETED  0.519    
 STEP TIME COMPLETED       0.519    ,  TOTAL TIME COMPLETED        0.519    


  INCREMENT    28 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  1.875E-02
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  23ms


 ***WARNING: THE SYSTEM MATRIX HAS 1 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      5.999E-02   TIME AVG. FORCE       2.549E-02
 LARGEST SCALED RESIDUAL FORCE       10.7       AT NODE          1   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE       10.7    
 LARGEST INCREMENT OF DISP.        -0.179       AT NODE        404   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -5.216E-03   AT NODE        402   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     7.430E-03   TIME AVG. MOMENT      3.135E-03
 LARGEST SCALED RESIDUAL MOMENT     -22.9       AT NODE          1   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     -22.9    
 LARGEST INCREMENT OF ROTATION      1.417E-02   AT NODE        416   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -1.944E-03   AT NODE        412   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  23ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                      5.251E-02   TIME AVG. FORCE       2.522E-02
 LARGEST SCALED RESIDUAL FORCE     -3.090E-02   AT NODE          1   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE     -3.090E-02
 LARGEST INCREMENT OF DISP.        -0.176       AT NODE        412   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        4.964E-03   AT NODE        402   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     5.603E-03   TIME AVG. MOMENT      3.070E-03
 LARGEST SCALED RESIDUAL MOMENT    -6.603E-02   AT NODE          1   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT    -6.603E-02
 LARGEST INCREMENT OF ROTATION      1.235E-02   AT NODE        411   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.931E-03   AT NODE        412   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  26ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                      5.250E-02   TIME AVG. FORCE       2.522E-02
 LARGEST SCALED RESIDUAL FORCE      1.512E-04   AT NODE        619   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      1.512E-04
 LARGEST INCREMENT OF DISP.        -0.175       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.675E-03   AT NODE        411   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     5.602E-03   TIME AVG. MOMENT      3.070E-03
 LARGEST SCALED RESIDUAL MOMENT     1.308E-04   AT NODE          1   DOF  4
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     1.308E-04
 LARGEST INCREMENT OF ROTATION      1.225E-02   AT NODE       1418   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -1.048E-04   AT NODE        411   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  25ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     4


 AVERAGE FORCE                      5.248E-02   TIME AVG. FORCE       2.522E-02
 LARGEST SCALED RESIDUAL FORCE      1.810E-04   AT NODE        619   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      1.810E-04
 LARGEST INCREMENT OF DISP.        -0.174       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        9.920E-04   AT NODE        410   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     5.601E-03   TIME AVG. MOMENT      3.070E-03
 LARGEST SCALED RESIDUAL MOMENT     3.053E-05   AT NODE        819   DOF  5
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     3.053E-05
 LARGEST INCREMENT OF ROTATION      1.218E-02   AT NODE       1418   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -6.967E-05   AT NODE        419   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  23ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     5


 AVERAGE FORCE                      5.249E-02   TIME AVG. FORCE       2.522E-02
 LARGEST SCALED RESIDUAL FORCE      2.815E-06   AT NODE        619   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      2.815E-06
 LARGEST INCREMENT OF DISP.        -0.174       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.237E-04   AT NODE        412   DOF  3
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     5.601E-03   TIME AVG. MOMENT      3.070E-03
 LARGEST SCALED RESIDUAL MOMENT     4.756E-07   AT NODE        819   DOF  5
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     4.756E-07
 LARGEST INCREMENT OF ROTATION      1.218E-02   AT NODE       1418   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -8.678E-06   AT NODE        411   DOF  4
   INSTANCE: SHELL-1                                                                         
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED

 ITERATION SUMMARY FOR THE INCREMENT:   5 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  5 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  1.875E-02,  FRACTION OF STEP COMPLETED  0.537    
 STEP TIME COMPLETED       0.537    ,  TOTAL TIME COMPLETED        0.537    


  INCREMENT    29 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  1.875E-02
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  18ms


 ***WARNING: THE SYSTEM MATRIX HAS 1 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      6.195E-02   TIME AVG. FORCE       2.649E-02
 LARGEST SCALED RESIDUAL FORCE       10.4       AT NODE          1   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE       10.4    
 LARGEST INCREMENT OF DISP.        -0.176       AT NODE        404   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -5.029E-03   AT NODE        402   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     7.549E-03   TIME AVG. MOMENT      3.225E-03
 LARGEST SCALED RESIDUAL MOMENT     -22.1       AT NODE          1   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     -22.1    
 LARGEST INCREMENT OF ROTATION      1.394E-02   AT NODE        416   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -1.888E-03   AT NODE        412   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  22ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                      5.476E-02   TIME AVG. FORCE       2.624E-02
 LARGEST SCALED RESIDUAL FORCE     -2.912E-02   AT NODE          1   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE     -2.912E-02
 LARGEST INCREMENT OF DISP.        -0.174       AT NODE        412   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        4.830E-03   AT NODE        402   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     5.776E-03   TIME AVG. MOMENT      3.163E-03
 LARGEST SCALED RESIDUAL MOMENT    -6.197E-02   AT NODE          1   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT    -6.197E-02
 LARGEST INCREMENT OF ROTATION      1.216E-02   AT NODE        411   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.875E-03   AT NODE        412   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  20ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                      5.473E-02   TIME AVG. FORCE       2.624E-02
 LARGEST SCALED RESIDUAL FORCE      1.754E-04   AT NODE        619   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      1.754E-04
 LARGEST INCREMENT OF DISP.        -0.172       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.700E-03   AT NODE        411   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     5.776E-03   TIME AVG. MOMENT      3.163E-03
 LARGEST SCALED RESIDUAL MOMENT     1.335E-04   AT NODE          1   DOF  4
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     1.335E-04
 LARGEST INCREMENT OF ROTATION      1.207E-02   AT NODE       1418   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -1.074E-04   AT NODE        411   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  18ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     4


 AVERAGE FORCE                      5.472E-02   TIME AVG. FORCE       2.624E-02
 LARGEST SCALED RESIDUAL FORCE      1.463E-04   AT NODE        619   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      1.463E-04
 LARGEST INCREMENT OF DISP.        -0.171       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        8.954E-04   AT NODE        410   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     5.775E-03   TIME AVG. MOMENT      3.163E-03
 LARGEST SCALED RESIDUAL MOMENT     2.477E-05   AT NODE        819   DOF  5
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     2.477E-05
 LARGEST INCREMENT OF ROTATION      1.201E-02   AT NODE       1418   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -6.283E-05   AT NODE        419   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  17ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     5


 AVERAGE FORCE                      5.473E-02   TIME AVG. FORCE       2.624E-02
 LARGEST SCALED RESIDUAL FORCE      2.769E-06   AT NODE        619   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      2.769E-06
 LARGEST INCREMENT OF DISP.        -0.171       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.231E-04   AT NODE        412   DOF  3
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     5.775E-03   TIME AVG. MOMENT      3.163E-03
 LARGEST SCALED RESIDUAL MOMENT     4.693E-07   AT NODE        819   DOF  5
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     4.693E-07
 LARGEST INCREMENT OF ROTATION      1.200E-02   AT NODE       1418   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -8.630E-06   AT NODE        411   DOF  4
   INSTANCE: SHELL-1                                                                         
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED

 ITERATION SUMMARY FOR THE INCREMENT:   5 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  5 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  1.875E-02,  FRACTION OF STEP COMPLETED  0.556    
 STEP TIME COMPLETED       0.556    ,  TOTAL TIME COMPLETED        0.556    


  INCREMENT    30 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  1.875E-02
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  18ms


 ***WARNING: THE SYSTEM MATRIX HAS 1 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      6.394E-02   TIME AVG. FORCE       2.750E-02
 LARGEST SCALED RESIDUAL FORCE       10.1       AT NODE          1   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE       10.1    
 LARGEST INCREMENT OF DISP.        -0.174       AT NODE        404   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -4.850E-03   AT NODE        402   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     7.658E-03   TIME AVG. MOMENT      3.313E-03
 LARGEST SCALED RESIDUAL MOMENT     -21.4       AT NODE          1   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     -21.4    
 LARGEST INCREMENT OF ROTATION      1.371E-02   AT NODE        416   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -1.833E-03   AT NODE        412   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  17ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                      5.701E-02   TIME AVG. FORCE       2.727E-02
 LARGEST SCALED RESIDUAL FORCE     -2.746E-02   AT NODE          1   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE     -2.746E-02
 LARGEST INCREMENT OF DISP.        -0.171       AT NODE        412   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        4.699E-03   AT NODE        402   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     5.944E-03   TIME AVG. MOMENT      3.256E-03
 LARGEST SCALED RESIDUAL MOMENT    -5.817E-02   AT NODE          1   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT    -5.817E-02
 LARGEST INCREMENT OF ROTATION      1.199E-02   AT NODE        411   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.820E-03   AT NODE        412   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  17ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                      5.700E-02   TIME AVG. FORCE       2.727E-02
 LARGEST SCALED RESIDUAL FORCE      1.972E-04   AT NODE        619   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      1.972E-04
 LARGEST INCREMENT OF DISP.        -0.170       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.718E-03   AT NODE        411   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     5.943E-03   TIME AVG. MOMENT      3.256E-03
 LARGEST SCALED RESIDUAL MOMENT     1.340E-04   AT NODE          1   DOF  4
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     1.340E-04
 LARGEST INCREMENT OF ROTATION      1.189E-02   AT NODE       1418   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -1.095E-04   AT NODE        411   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  18ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     4


 AVERAGE FORCE                      5.699E-02   TIME AVG. FORCE       2.727E-02
 LARGEST SCALED RESIDUAL FORCE      1.181E-04   AT NODE        619   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      1.181E-04
 LARGEST INCREMENT OF DISP.        -0.169       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        8.073E-04   AT NODE        410   DOF  3
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     5.943E-03   TIME AVG. MOMENT      3.256E-03
 LARGEST SCALED RESIDUAL MOMENT     2.006E-05   AT NODE        819   DOF  5
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     2.006E-05
 LARGEST INCREMENT OF ROTATION      1.183E-02   AT NODE       1418   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -5.662E-05   AT NODE        419   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  14ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     5


 AVERAGE FORCE                      5.699E-02   TIME AVG. FORCE       2.727E-02
 LARGEST SCALED RESIDUAL FORCE      2.695E-06   AT NODE        619   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      2.695E-06
 LARGEST INCREMENT OF DISP.        -0.169       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.219E-04   AT NODE        412   DOF  3
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     5.942E-03   TIME AVG. MOMENT      3.256E-03
 LARGEST SCALED RESIDUAL MOMENT     4.581E-07   AT NODE        819   DOF  5
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     4.581E-07
 LARGEST INCREMENT OF ROTATION      1.182E-02   AT NODE       1418   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -8.538E-06   AT NODE        411   DOF  4
   INSTANCE: SHELL-1                                                                         
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED

 ITERATION SUMMARY FOR THE INCREMENT:   5 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  5 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  1.875E-02,  FRACTION OF STEP COMPLETED  0.575    
 STEP TIME COMPLETED       0.575    ,  TOTAL TIME COMPLETED        0.575    


  INCREMENT    31 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  1.875E-02
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  18ms


 ***WARNING: THE SYSTEM MATRIX HAS 1 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      6.594E-02   TIME AVG. FORCE       2.851E-02
 LARGEST SCALED RESIDUAL FORCE       9.80       AT NODE          1   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE       9.80    
 LARGEST INCREMENT OF DISP.        -0.171       AT NODE        404   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -4.679E-03   AT NODE        402   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     7.769E-03   TIME AVG. MOMENT      3.402E-03
 LARGEST SCALED RESIDUAL MOMENT     -20.6       AT NODE          1   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     -20.6    
 LARGEST INCREMENT OF ROTATION      1.349E-02   AT NODE        416   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -1.781E-03   AT NODE        412   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  16ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                      5.927E-02   TIME AVG. FORCE       2.830E-02
 LARGEST SCALED RESIDUAL FORCE     -2.590E-02   AT NODE          1   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE     -2.590E-02
 LARGEST INCREMENT OF DISP.        -0.169       AT NODE        412   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        4.570E-03   AT NODE        402   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     6.112E-03   TIME AVG. MOMENT      3.348E-03
 LARGEST SCALED RESIDUAL MOMENT    -5.461E-02   AT NODE          1   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT    -5.461E-02
 LARGEST INCREMENT OF ROTATION      1.181E-02   AT NODE        411   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.768E-03   AT NODE        412   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  17ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                      5.926E-02   TIME AVG. FORCE       2.830E-02
 LARGEST SCALED RESIDUAL FORCE      2.164E-04   AT NODE        619   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      2.164E-04
 LARGEST INCREMENT OF DISP.        -0.167       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.730E-03   AT NODE        411   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     6.111E-03   TIME AVG. MOMENT      3.348E-03
 LARGEST SCALED RESIDUAL MOMENT     1.330E-04   AT NODE          1   DOF  4
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     1.330E-04
 LARGEST INCREMENT OF ROTATION      1.171E-02   AT NODE       1418   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -1.111E-04   AT NODE        411   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  17ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     4


 AVERAGE FORCE                      5.924E-02   TIME AVG. FORCE       2.830E-02
 LARGEST SCALED RESIDUAL FORCE      9.513E-05   AT NODE        619   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      9.513E-05
 LARGEST INCREMENT OF DISP.        -0.167       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        7.272E-04   AT NODE        410   DOF  3
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     6.110E-03   TIME AVG. MOMENT      3.348E-03
 LARGEST SCALED RESIDUAL MOMENT     1.621E-05   AT NODE        819   DOF  5
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     1.621E-05
 LARGEST INCREMENT OF ROTATION      1.166E-02   AT NODE       1418   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -5.098E-05   AT NODE        419   DOF  4
   INSTANCE: SHELL-1                                                                         
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED

 ITERATION SUMMARY FOR THE INCREMENT:   4 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  4 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  1.875E-02,  FRACTION OF STEP COMPLETED  0.594    
 STEP TIME COMPLETED       0.594    ,  TOTAL TIME COMPLETED        0.594    


  INCREMENT    32 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  1.875E-02
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  14ms


 ***WARNING: THE SYSTEM MATRIX HAS 1 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      6.799E-02   TIME AVG. FORCE       2.954E-02
 LARGEST SCALED RESIDUAL FORCE       9.54       AT NODE          1   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE       9.54    
 LARGEST INCREMENT OF DISP.        -0.169       AT NODE        404   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -4.522E-03   AT NODE        402   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     7.885E-03   TIME AVG. MOMENT      3.490E-03
 LARGEST SCALED RESIDUAL MOMENT     -20.0       AT NODE          1   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     -20.0    
 LARGEST INCREMENT OF ROTATION      1.328E-02   AT NODE        416   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -1.732E-03   AT NODE        412   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  15ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                      6.154E-02   TIME AVG. FORCE       2.934E-02
 LARGEST SCALED RESIDUAL FORCE     -2.450E-02   AT NODE          1   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE     -2.450E-02
 LARGEST INCREMENT OF DISP.        -0.167       AT NODE        412   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        4.452E-03   AT NODE        402   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     6.278E-03   TIME AVG. MOMENT      3.440E-03
 LARGEST SCALED RESIDUAL MOMENT    -5.144E-02   AT NODE          1   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT    -5.144E-02
 LARGEST INCREMENT OF ROTATION      1.165E-02   AT NODE        411   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.719E-03   AT NODE        412   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  14ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                      6.152E-02   TIME AVG. FORCE       2.934E-02
 LARGEST SCALED RESIDUAL FORCE      2.941E-04   AT NODE        619   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      2.941E-04
 LARGEST INCREMENT OF DISP.        -0.165       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.878E-03   AT NODE        411   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     6.276E-03   TIME AVG. MOMENT      3.440E-03
 LARGEST SCALED RESIDUAL MOMENT     1.475E-04   AT NODE          1   DOF  4
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     1.475E-04
 LARGEST INCREMENT OF ROTATION      1.154E-02   AT NODE       1418   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -1.221E-04   AT NODE        411   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  17ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     4


 AVERAGE FORCE                      6.153E-02   TIME AVG. FORCE       2.934E-02
 LARGEST SCALED RESIDUAL FORCE      8.963E-05   AT NODE        619   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      8.963E-05
 LARGEST INCREMENT OF DISP.        -0.164       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        7.084E-04   AT NODE        410   DOF  3
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     6.276E-03   TIME AVG. MOMENT      3.440E-03
 LARGEST SCALED RESIDUAL MOMENT     1.533E-05   AT NODE        819   DOF  5
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     1.533E-05
 LARGEST INCREMENT OF ROTATION      1.149E-02   AT NODE       1418   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -4.965E-05   AT NODE        419   DOF  4
   INSTANCE: SHELL-1                                                                         
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED

 ITERATION SUMMARY FOR THE INCREMENT:   4 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  4 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  1.875E-02,  FRACTION OF STEP COMPLETED  0.613    
 STEP TIME COMPLETED       0.613    ,  TOTAL TIME COMPLETED        0.613    


  INCREMENT    33 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  2.813E-02
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  18ms


 ***WARNING: THE SYSTEM MATRIX HAS 1 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      7.762E-02   TIME AVG. FORCE       3.080E-02
 LARGEST SCALED RESIDUAL FORCE       17.3       AT NODE          1   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE       17.3    
 LARGEST INCREMENT OF DISP.        -0.252       AT NODE        404   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -8.934E-03   AT NODE        402   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     9.555E-03   TIME AVG. MOMENT      3.625E-03
 LARGEST SCALED RESIDUAL MOMENT     -36.1       AT NODE          1   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     -36.1    
 LARGEST INCREMENT OF ROTATION      2.016E-02   AT NODE        416   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -3.170E-03   AT NODE        412   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  18ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                      6.499E-02   TIME AVG. FORCE       3.042E-02
 LARGEST SCALED RESIDUAL FORCE     -8.152E-02   AT NODE          1   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE     -8.152E-02
 LARGEST INCREMENT OF DISP.        -0.247       AT NODE        411   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        7.838E-03   AT NODE        402   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     6.523E-03   TIME AVG. MOMENT      3.533E-03
 LARGEST SCALED RESIDUAL MOMENT    -0.167       AT NODE          1   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT    -0.167    
 LARGEST INCREMENT OF ROTATION      1.725E-02   AT NODE        411   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     3.170E-03   AT NODE        412   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  19ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                      6.499E-02   TIME AVG. FORCE       3.042E-02
 LARGEST SCALED RESIDUAL FORCE      3.038E-03   AT NODE        707   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      3.038E-03
 LARGEST INCREMENT OF DISP.        -0.247       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        4.527E-03   AT NODE        332   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     6.522E-03   TIME AVG. MOMENT      3.533E-03
 LARGEST SCALED RESIDUAL MOMENT    -3.098E-04   AT NODE          1   DOF  4
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT    -3.098E-04
 LARGEST INCREMENT OF ROTATION      1.722E-02   AT NODE       1418   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -2.879E-04   AT NODE        503   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  14ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     4


 AVERAGE FORCE                      6.497E-02   TIME AVG. FORCE       3.042E-02
 LARGEST SCALED RESIDUAL FORCE      4.527E-04   AT NODE        654   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      4.527E-04
 LARGEST INCREMENT OF DISP.        -0.245       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.627E-03   AT NODE        383   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     6.521E-03   TIME AVG. MOMENT      3.533E-03
 LARGEST SCALED RESIDUAL MOMENT     7.754E-05   AT NODE        819   DOF  5
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     7.754E-05
 LARGEST INCREMENT OF ROTATION      1.711E-02   AT NODE       1418   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -1.139E-04   AT NODE        382   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  15ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     5


 AVERAGE FORCE                      6.494E-02   TIME AVG. FORCE       3.041E-02
 LARGEST SCALED RESIDUAL FORCE      5.670E-04   AT NODE        672   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      5.670E-04
 LARGEST INCREMENT OF DISP.        -0.243       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.793E-03   AT NODE        370   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     6.519E-03   TIME AVG. MOMENT      3.533E-03
 LARGEST SCALED RESIDUAL MOMENT     9.542E-05   AT NODE        819   DOF  5
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     9.542E-05
 LARGEST INCREMENT OF ROTATION      1.699E-02   AT NODE       1418   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -1.260E-04   AT NODE        366   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  17ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     6


 AVERAGE FORCE                      6.494E-02   TIME AVG. FORCE       3.041E-02
 LARGEST SCALED RESIDUAL FORCE      6.579E-05   AT NODE        619   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      6.579E-05
 LARGEST INCREMENT OF DISP.        -0.243       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        6.093E-04   AT NODE        412   DOF  3
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     6.518E-03   TIME AVG. MOMENT      3.533E-03
 LARGEST SCALED RESIDUAL MOMENT     1.131E-05   AT NODE        819   DOF  5
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     1.131E-05
 LARGEST INCREMENT OF ROTATION      1.694E-02   AT NODE       1418   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -4.261E-05   AT NODE        417   DOF  4
   INSTANCE: SHELL-1                                                                         
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED

 ITERATION SUMMARY FOR THE INCREMENT:   6 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  6 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  2.813E-02,  FRACTION OF STEP COMPLETED  0.641    
 STEP TIME COMPLETED       0.641    ,  TOTAL TIME COMPLETED        0.641    


  INCREMENT    34 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  2.813E-02
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  21ms


 ***WARNING: THE SYSTEM MATRIX HAS 1 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      8.363E-02   TIME AVG. FORCE       3.198E-02
 LARGEST SCALED RESIDUAL FORCE       20.1       AT NODE          1   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE       20.1    
 LARGEST INCREMENT OF DISP.        -0.249       AT NODE        404   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -1.190E-02   AT NODE        340   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     1.033E-02   TIME AVG. MOMENT      3.733E-03
 LARGEST SCALED RESIDUAL MOMENT     -41.5       AT NODE          1   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     -41.5    
 LARGEST INCREMENT OF ROTATION      2.033E-02   AT NODE        416   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -3.686E-03   AT NODE        412   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  19ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                      6.845E-02   TIME AVG. FORCE       3.153E-02
 LARGEST SCALED RESIDUAL FORCE     -0.110       AT NODE          1   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE     -0.110    
 LARGEST INCREMENT OF DISP.        -0.244       AT NODE        411   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        8.857E-03   AT NODE        402   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     6.765E-03   TIME AVG. MOMENT      3.628E-03
 LARGEST SCALED RESIDUAL MOMENT    -0.222       AT NODE          1   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT    -0.222    
 LARGEST INCREMENT OF ROTATION      1.699E-02   AT NODE        411   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     3.697E-03   AT NODE        412   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  18ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                      6.859E-02   TIME AVG. FORCE       3.154E-02
 LARGEST SCALED RESIDUAL FORCE      1.235E-02   AT NODE        703   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      1.235E-02
 LARGEST INCREMENT OF DISP.        -0.243       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        8.849E-03   AT NODE        335   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     6.759E-03   TIME AVG. MOMENT      3.628E-03
 LARGEST SCALED RESIDUAL MOMENT    -8.990E-04   AT NODE          1   DOF  4
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT    -8.990E-04
 LARGEST INCREMENT OF ROTATION      1.698E-02   AT NODE       1418   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -5.831E-04   AT NODE        499   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  18ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     4


 AVERAGE FORCE                      6.845E-02   TIME AVG. FORCE       3.153E-02
 LARGEST SCALED RESIDUAL FORCE      1.455E-04   AT NODE        658   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      1.455E-04
 LARGEST INCREMENT OF DISP.        -0.242       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        9.281E-04   AT NODE        376   DOF  3
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     6.759E-03   TIME AVG. MOMENT      3.628E-03
 LARGEST SCALED RESIDUAL MOMENT     1.921E-05   AT NODE        819   DOF  5
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     1.921E-05
 LARGEST INCREMENT OF ROTATION      1.693E-02   AT NODE       1418   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -6.510E-05   AT NODE        376   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  17ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     5


 AVERAGE FORCE                      6.839E-02   TIME AVG. FORCE       3.153E-02
 LARGEST SCALED RESIDUAL FORCE      4.074E-03   AT NODE        619   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      4.074E-03
 LARGEST INCREMENT OF DISP.        -0.238       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        4.813E-03   AT NODE        404   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     6.755E-03   TIME AVG. MOMENT      3.628E-03
 LARGEST SCALED RESIDUAL MOMENT     7.026E-04   AT NODE        819   DOF  5
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     7.026E-04
 LARGEST INCREMENT OF ROTATION      1.659E-02   AT NODE       1418   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -3.367E-04   AT NODE        417   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  17ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     6


 AVERAGE FORCE                      6.840E-02   TIME AVG. FORCE       3.153E-02
 LARGEST SCALED RESIDUAL FORCE      2.887E-06   AT NODE        619   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      2.887E-06
 LARGEST INCREMENT OF DISP.        -0.237       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.285E-04   AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     6.754E-03   TIME AVG. MOMENT      3.628E-03
 LARGEST SCALED RESIDUAL MOMENT    -7.967E-07   AT NODE          1   DOF  4
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT    -7.967E-07
 LARGEST INCREMENT OF ROTATION      1.658E-02   AT NODE       1418   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -8.980E-06   AT NODE        417   DOF  4
   INSTANCE: SHELL-1                                                                         
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED

 ITERATION SUMMARY FOR THE INCREMENT:   6 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  6 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  2.813E-02,  FRACTION OF STEP COMPLETED  0.669    
 STEP TIME COMPLETED       0.669    ,  TOTAL TIME COMPLETED        0.669    


  INCREMENT    35 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  2.813E-02
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  19ms


 ***WARNING: THE SYSTEM MATRIX HAS 1 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      8.611E-02   TIME AVG. FORCE       3.309E-02
 LARGEST SCALED RESIDUAL FORCE       19.2       AT NODE          1   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE       19.2    
 LARGEST INCREMENT OF DISP.        -0.244       AT NODE        404   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -1.024E-02   AT NODE        339   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     1.039E-02   TIME AVG. MOMENT      3.821E-03
 LARGEST SCALED RESIDUAL MOMENT     -39.4       AT NODE          1   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     -39.4    
 LARGEST INCREMENT OF ROTATION      1.982E-02   AT NODE        416   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -3.530E-03   AT NODE        412   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  18ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                      7.189E-02   TIME AVG. FORCE       3.268E-02
 LARGEST SCALED RESIDUAL FORCE     -0.101       AT NODE          1   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE     -0.101    
 LARGEST INCREMENT OF DISP.        -0.239       AT NODE        411   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        8.618E-03   AT NODE        402   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     6.997E-03   TIME AVG. MOMENT      3.724E-03
 LARGEST SCALED RESIDUAL MOMENT    -0.202       AT NODE          1   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT    -0.202    
 LARGEST INCREMENT OF ROTATION      1.661E-02   AT NODE        411   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     3.537E-03   AT NODE        412   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  17ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                      7.191E-02   TIME AVG. FORCE       3.269E-02
 LARGEST SCALED RESIDUAL FORCE      7.865E-03   AT NODE        704   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      7.865E-03
 LARGEST INCREMENT OF DISP.        -0.238       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        7.144E-03   AT NODE        334   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     6.994E-03   TIME AVG. MOMENT      3.724E-03
 LARGEST SCALED RESIDUAL MOMENT    -6.394E-04   AT NODE          1   DOF  4
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT    -6.394E-04
 LARGEST INCREMENT OF ROTATION      1.660E-02   AT NODE       1418   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -4.654E-04   AT NODE        500   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  17ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     4


 AVERAGE FORCE                      7.189E-02   TIME AVG. FORCE       3.268E-02
 LARGEST SCALED RESIDUAL FORCE      2.422E-04   AT NODE        656   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      2.422E-04
 LARGEST INCREMENT OF DISP.        -0.237       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.202E-03   AT NODE        379   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     6.995E-03   TIME AVG. MOMENT      3.724E-03
 LARGEST SCALED RESIDUAL MOMENT     3.780E-05   AT NODE        819   DOF  5
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     3.780E-05
 LARGEST INCREMENT OF ROTATION      1.652E-02   AT NODE        417   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -8.415E-05   AT NODE        379   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  17ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     5


 AVERAGE FORCE                      7.182E-02   TIME AVG. FORCE       3.268E-02
 LARGEST SCALED RESIDUAL FORCE      2.451E-03   AT NODE        619   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      2.451E-03
 LARGEST INCREMENT OF DISP.        -0.233       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        3.757E-03   AT NODE        388   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     6.991E-03   TIME AVG. MOMENT      3.724E-03
 LARGEST SCALED RESIDUAL MOMENT     4.248E-04   AT NODE        819   DOF  5
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     4.248E-04
 LARGEST INCREMENT OF ROTATION      1.626E-02   AT NODE        417   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -2.626E-04   AT NODE        895   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  18ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     6


 AVERAGE FORCE                      7.182E-02   TIME AVG. FORCE       3.268E-02
 LARGEST SCALED RESIDUAL FORCE      1.221E-05   AT NODE        619   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      1.221E-05
 LARGEST INCREMENT OF DISP.        -0.233       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        2.652E-04   AT NODE        412   DOF  3
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     6.992E-03   TIME AVG. MOMENT      3.724E-03
 LARGEST SCALED RESIDUAL MOMENT     2.148E-06   AT NODE        819   DOF  5
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     2.148E-06
 LARGEST INCREMENT OF ROTATION      1.624E-02   AT NODE        417   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -1.854E-05   AT NODE        417   DOF  4
   INSTANCE: SHELL-1                                                                         
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED

 ITERATION SUMMARY FOR THE INCREMENT:   6 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  6 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  2.813E-02,  FRACTION OF STEP COMPLETED  0.697    
 STEP TIME COMPLETED       0.697    ,  TOTAL TIME COMPLETED        0.697    


  INCREMENT    36 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  2.813E-02
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  19ms


 ***WARNING: THE SYSTEM MATRIX HAS 1 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      8.874E-02   TIME AVG. FORCE       3.424E-02
 LARGEST SCALED RESIDUAL FORCE       18.4       AT NODE          1   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE       18.4    
 LARGEST INCREMENT OF DISP.        -0.238       AT NODE        404   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -9.489E-03   AT NODE        402   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     1.047E-02   TIME AVG. MOMENT      3.911E-03
 LARGEST SCALED RESIDUAL MOMENT     -37.4       AT NODE          1   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     -37.4    
 LARGEST INCREMENT OF ROTATION      1.935E-02   AT NODE        416   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -3.385E-03   AT NODE        412   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  20ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                      7.533E-02   TIME AVG. FORCE       3.387E-02
 LARGEST SCALED RESIDUAL FORCE     -9.256E-02   AT NODE          1   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE     -9.256E-02
 LARGEST INCREMENT OF DISP.        -0.233       AT NODE        411   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        8.382E-03   AT NODE        402   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     7.228E-03   TIME AVG. MOMENT      3.821E-03
 LARGEST SCALED RESIDUAL MOMENT    -0.185       AT NODE          1   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT    -0.185    
 LARGEST INCREMENT OF ROTATION      1.626E-02   AT NODE        411   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     3.387E-03   AT NODE        412   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  17ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                      7.534E-02   TIME AVG. FORCE       3.387E-02
 LARGEST SCALED RESIDUAL FORCE      4.718E-03   AT NODE        706   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      4.718E-03
 LARGEST INCREMENT OF DISP.        -0.232       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        5.628E-03   AT NODE        333   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     7.225E-03   TIME AVG. MOMENT      3.821E-03
 LARGEST SCALED RESIDUAL MOMENT    -4.049E-04   AT NODE          1   DOF  4
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT    -4.049E-04
 LARGEST INCREMENT OF ROTATION      1.623E-02   AT NODE        417   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -3.607E-04   AT NODE        501   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  18ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     4


 AVERAGE FORCE                      7.533E-02   TIME AVG. FORCE       3.387E-02
 LARGEST SCALED RESIDUAL FORCE      4.238E-04   AT NODE        652   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      4.238E-04
 LARGEST INCREMENT OF DISP.        -0.231       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.600E-03   AT NODE        385   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     7.224E-03   TIME AVG. MOMENT      3.821E-03
 LARGEST SCALED RESIDUAL MOMENT     7.345E-05   AT NODE        819   DOF  5
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     7.345E-05
 LARGEST INCREMENT OF ROTATION      1.612E-02   AT NODE        417   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -1.118E-04   AT NODE        384   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  18ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     5


 AVERAGE FORCE                      7.528E-02   TIME AVG. FORCE       3.387E-02
 LARGEST SCALED RESIDUAL FORCE      1.195E-03   AT NODE        671   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      1.195E-03
 LARGEST INCREMENT OF DISP.        -0.228       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        2.639E-03   AT NODE        372   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     7.221E-03   TIME AVG. MOMENT      3.821E-03
 LARGEST SCALED RESIDUAL MOMENT     2.042E-04   AT NODE        819   DOF  5
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     2.042E-04
 LARGEST INCREMENT OF ROTATION      1.594E-02   AT NODE        417   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -1.847E-04   AT NODE        369   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  20ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     6


 AVERAGE FORCE                      7.529E-02   TIME AVG. FORCE       3.387E-02
 LARGEST SCALED RESIDUAL FORCE      5.159E-05   AT NODE        619   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      5.159E-05
 LARGEST INCREMENT OF DISP.        -0.228       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        5.471E-04   AT NODE        412   DOF  3
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     7.222E-03   TIME AVG. MOMENT      3.821E-03
 LARGEST SCALED RESIDUAL MOMENT     9.017E-06   AT NODE        819   DOF  5
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     9.017E-06
 LARGEST INCREMENT OF ROTATION      1.590E-02   AT NODE        417   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -3.826E-05   AT NODE        417   DOF  4
   INSTANCE: SHELL-1                                                                         
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED

 ITERATION SUMMARY FOR THE INCREMENT:   6 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  6 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  2.813E-02,  FRACTION OF STEP COMPLETED  0.725    
 STEP TIME COMPLETED       0.725    ,  TOTAL TIME COMPLETED        0.725    


  INCREMENT    37 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  2.813E-02
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  17ms


 ***WARNING: THE SYSTEM MATRIX HAS 1 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      9.145E-02   TIME AVG. FORCE       3.542E-02
 LARGEST SCALED RESIDUAL FORCE       17.7       AT NODE          1   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE       17.7    
 LARGEST INCREMENT OF DISP.        -0.233       AT NODE        404   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -8.933E-03   AT NODE        402   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     1.054E-02   TIME AVG. MOMENT      4.003E-03
 LARGEST SCALED RESIDUAL MOMENT     -35.5       AT NODE          1   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     -35.5    
 LARGEST INCREMENT OF ROTATION      1.888E-02   AT NODE        416   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -3.244E-03   AT NODE        412   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  21ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                      7.879E-02   TIME AVG. FORCE       3.508E-02
 LARGEST SCALED RESIDUAL FORCE     -8.498E-02   AT NODE          1   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE     -8.498E-02
 LARGEST INCREMENT OF DISP.        -0.228       AT NODE        411   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        8.133E-03   AT NODE        402   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     7.451E-03   TIME AVG. MOMENT      3.919E-03
 LARGEST SCALED RESIDUAL MOMENT    -0.168       AT NODE          1   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT    -0.168    
 LARGEST INCREMENT OF ROTATION      1.591E-02   AT NODE        411   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     3.243E-03   AT NODE        412   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  18ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                      7.879E-02   TIME AVG. FORCE       3.508E-02
 LARGEST SCALED RESIDUAL FORCE      2.666E-03   AT NODE        707   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      2.666E-03
 LARGEST INCREMENT OF DISP.        -0.227       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        4.334E-03   AT NODE        334   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     7.450E-03   TIME AVG. MOMENT      3.919E-03
 LARGEST SCALED RESIDUAL MOMENT    -2.196E-04   AT NODE          1   DOF  4
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT    -2.196E-04
 LARGEST INCREMENT OF ROTATION      1.586E-02   AT NODE        417   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -2.714E-04   AT NODE        502   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  17ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     4


 AVERAGE FORCE                      7.876E-02   TIME AVG. FORCE       3.508E-02
 LARGEST SCALED RESIDUAL FORCE     -6.886E-04   AT NODE          1   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE     -6.886E-04
 LARGEST INCREMENT OF DISP.        -0.225       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        2.011E-03   AT NODE        393   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     7.448E-03   TIME AVG. MOMENT      3.919E-03
 LARGEST SCALED RESIDUAL MOMENT     1.199E-04   AT NODE        819   DOF  5
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     1.199E-04
 LARGEST INCREMENT OF ROTATION      1.572E-02   AT NODE        417   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -1.405E-04   AT NODE        393   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  20ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     5


 AVERAGE FORCE                      7.874E-02   TIME AVG. FORCE       3.508E-02
 LARGEST SCALED RESIDUAL FORCE      4.555E-04   AT NODE        678   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      4.555E-04
 LARGEST INCREMENT OF DISP.        -0.224       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.622E-03   AT NODE        362   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     7.447E-03   TIME AVG. MOMENT      3.919E-03
 LARGEST SCALED RESIDUAL MOMENT     7.346E-05   AT NODE        819   DOF  5
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     7.346E-05
 LARGEST INCREMENT OF ROTATION      1.561E-02   AT NODE        417   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -1.137E-04   AT NODE        359   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  19ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     6


 AVERAGE FORCE                      7.875E-02   TIME AVG. FORCE       3.508E-02
 LARGEST SCALED RESIDUAL FORCE     -1.220E-04   AT NODE          1   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE     -1.220E-04
 LARGEST INCREMENT OF DISP.        -0.223       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        8.423E-04   AT NODE        412   DOF  3
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     7.447E-03   TIME AVG. MOMENT      3.919E-03
 LARGEST SCALED RESIDUAL MOMENT     2.125E-05   AT NODE        819   DOF  5
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     2.125E-05
 LARGEST INCREMENT OF ROTATION      1.555E-02   AT NODE        417   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -5.894E-05   AT NODE        417   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  19ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     7


 AVERAGE FORCE                      7.874E-02   TIME AVG. FORCE       3.508E-02
 LARGEST SCALED RESIDUAL FORCE     -2.694E-05   AT NODE          1   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE     -2.694E-05
 LARGEST INCREMENT OF DISP.        -0.222       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        3.959E-04   AT NODE        411   DOF  3
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     7.446E-03   TIME AVG. MOMENT      3.919E-03
 LARGEST SCALED RESIDUAL MOMENT     4.695E-06   AT NODE        819   DOF  5
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     4.695E-06
 LARGEST INCREMENT OF ROTATION      1.553E-02   AT NODE        417   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -2.770E-05   AT NODE        417   DOF  4
   INSTANCE: SHELL-1                                                                         
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED

 ITERATION SUMMARY FOR THE INCREMENT:   7 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  7 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  2.813E-02,  FRACTION OF STEP COMPLETED  0.753    
 STEP TIME COMPLETED       0.753    ,  TOTAL TIME COMPLETED        0.753    


  INCREMENT    38 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  2.813E-02
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  17ms


 ***WARNING: THE SYSTEM MATRIX HAS 1 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      9.414E-02   TIME AVG. FORCE       3.663E-02
 LARGEST SCALED RESIDUAL FORCE       16.9       AT NODE          1   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE       16.9    
 LARGEST INCREMENT OF DISP.        -0.227       AT NODE        404   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -8.378E-03   AT NODE        402   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     1.061E-02   TIME AVG. MOMENT      4.095E-03
 LARGEST SCALED RESIDUAL MOMENT     -33.6       AT NODE          1   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     -33.6    
 LARGEST INCREMENT OF ROTATION      1.837E-02   AT NODE        416   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -3.095E-03   AT NODE        412   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  17ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                      8.221E-02   TIME AVG. FORCE       3.632E-02
 LARGEST SCALED RESIDUAL FORCE     -7.728E-02   AT NODE          1   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE     -7.728E-02
 LARGEST INCREMENT OF DISP.        -0.223       AT NODE        411   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        7.825E-03   AT NODE        402   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     7.671E-03   TIME AVG. MOMENT      4.018E-03
 LARGEST SCALED RESIDUAL MOMENT    -0.152       AT NODE          1   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT    -0.152    
 LARGEST INCREMENT OF ROTATION      1.553E-02   AT NODE        411   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     3.090E-03   AT NODE        412   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  19ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                      8.221E-02   TIME AVG. FORCE       3.632E-02
 LARGEST SCALED RESIDUAL FORCE      1.397E-03   AT NODE        708   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      1.397E-03
 LARGEST INCREMENT OF DISP.        -0.222       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        3.230E-03   AT NODE        333   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     7.670E-03   TIME AVG. MOMENT      4.018E-03
 LARGEST SCALED RESIDUAL MOMENT    -1.883E-04   AT NODE          1   DOF  4
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT    -1.883E-04
 LARGEST INCREMENT OF ROTATION      1.549E-02   AT NODE        417   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -1.966E-04   AT NODE        504   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  20ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     4


 AVERAGE FORCE                      8.220E-02   TIME AVG. FORCE       3.632E-02
 LARGEST SCALED RESIDUAL FORCE     -5.786E-04   AT NODE          1   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE     -5.786E-04
 LARGEST INCREMENT OF DISP.        -0.220       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.849E-03   AT NODE        386   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     7.667E-03   TIME AVG. MOMENT      4.017E-03
 LARGEST SCALED RESIDUAL MOMENT     1.003E-04   AT NODE        819   DOF  5
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     1.003E-04
 LARGEST INCREMENT OF ROTATION      1.536E-02   AT NODE        417   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -1.292E-04   AT NODE        387   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  17ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     5


 AVERAGE FORCE                      8.219E-02   TIME AVG. FORCE       3.632E-02
 LARGEST SCALED RESIDUAL FORCE      1.223E-04   AT NODE        678   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      1.223E-04
 LARGEST INCREMENT OF DISP.        -0.219       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        8.439E-04   AT NODE        363   DOF  3
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     7.666E-03   TIME AVG. MOMENT      4.017E-03
 LARGEST SCALED RESIDUAL MOMENT     2.006E-05   AT NODE        819   DOF  5
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     2.006E-05
 LARGEST INCREMENT OF ROTATION      1.531E-02   AT NODE        417   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -5.907E-05   AT NODE        361   DOF  4
   INSTANCE: SHELL-1                                                                         
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED

 ITERATION SUMMARY FOR THE INCREMENT:   5 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  5 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  2.813E-02,  FRACTION OF STEP COMPLETED  0.781    
 STEP TIME COMPLETED       0.781    ,  TOTAL TIME COMPLETED        0.781    


  INCREMENT    39 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  2.813E-02
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  24ms


 ***WARNING: THE SYSTEM MATRIX HAS 1 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      9.717E-02   TIME AVG. FORCE       3.788E-02
 LARGEST SCALED RESIDUAL FORCE       16.4       AT NODE          1   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE       16.4    
 LARGEST INCREMENT OF DISP.        -0.224       AT NODE        404   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -8.018E-03   AT NODE        402   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     1.073E-02   TIME AVG. MOMENT      4.190E-03
 LARGEST SCALED RESIDUAL MOMENT     -32.3       AT NODE          1   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     -32.3    
 LARGEST INCREMENT OF ROTATION      1.807E-02   AT NODE        416   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -3.008E-03   AT NODE        412   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  19ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                      8.573E-02   TIME AVG. FORCE       3.759E-02
 LARGEST SCALED RESIDUAL FORCE     -7.297E-02   AT NODE          1   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE     -7.297E-02
 LARGEST INCREMENT OF DISP.        -0.219       AT NODE        411   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        7.683E-03   AT NODE        402   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     7.892E-03   TIME AVG. MOMENT      4.117E-03
 LARGEST SCALED RESIDUAL MOMENT    -0.143       AT NODE          1   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT    -0.143    
 LARGEST INCREMENT OF ROTATION      1.531E-02   AT NODE        411   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     3.001E-03   AT NODE        412   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  20ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                      8.568E-02   TIME AVG. FORCE       3.758E-02
 LARGEST SCALED RESIDUAL FORCE      8.700E-04   AT NODE        705   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      8.700E-04
 LARGEST INCREMENT OF DISP.        -0.218       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        2.677E-03   AT NODE        340   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     7.889E-03   TIME AVG. MOMENT      4.117E-03
 LARGEST SCALED RESIDUAL MOMENT    -1.238E-04   AT NODE          1   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT    -1.238E-04
 LARGEST INCREMENT OF ROTATION      1.522E-02   AT NODE        417   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -1.556E-04   AT NODE        500   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  23ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     4


 AVERAGE FORCE                      8.568E-02   TIME AVG. FORCE       3.758E-02
 LARGEST SCALED RESIDUAL FORCE     -1.260E-03   AT NODE          1   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE     -1.260E-03
 LARGEST INCREMENT OF DISP.        -0.215       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        2.703E-03   AT NODE        410   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     7.887E-03   TIME AVG. MOMENT      4.117E-03
 LARGEST SCALED RESIDUAL MOMENT     2.172E-04   AT NODE        819   DOF  5
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     2.172E-04
 LARGEST INCREMENT OF ROTATION      1.503E-02   AT NODE        417   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -1.895E-04   AT NODE        410   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  21ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     5


 AVERAGE FORCE                      8.565E-02   TIME AVG. FORCE       3.758E-02
 LARGEST SCALED RESIDUAL FORCE      6.393E-05   AT NODE        681   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      6.393E-05
 LARGEST INCREMENT OF DISP.        -0.214       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        6.100E-04   AT NODE        358   DOF  3
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     7.885E-03   TIME AVG. MOMENT      4.117E-03
 LARGEST SCALED RESIDUAL MOMENT     9.877E-06   AT NODE        819   DOF  5
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     9.877E-06
 LARGEST INCREMENT OF ROTATION      1.499E-02   AT NODE        417   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -4.271E-05   AT NODE        356   DOF  4
   INSTANCE: SHELL-1                                                                         
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED

 ITERATION SUMMARY FOR THE INCREMENT:   5 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  5 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  2.813E-02,  FRACTION OF STEP COMPLETED  0.809    
 STEP TIME COMPLETED       0.809    ,  TOTAL TIME COMPLETED        0.809    


  INCREMENT    40 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  2.813E-02
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  21ms


 ***WARNING: THE SYSTEM MATRIX HAS 1 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      0.100       TIME AVG. FORCE       3.914E-02
 LARGEST SCALED RESIDUAL FORCE       15.7       AT NODE          1   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE       15.7    
 LARGEST INCREMENT OF DISP.        -0.219       AT NODE        404   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -7.569E-03   AT NODE        402   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     1.082E-02   TIME AVG. MOMENT      4.284E-03
 LARGEST SCALED RESIDUAL MOMENT     -30.7       AT NODE          1   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     -30.7    
 LARGEST INCREMENT OF ROTATION      1.763E-02   AT NODE        416   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -2.884E-03   AT NODE        412   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  26ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                      8.915E-02   TIME AVG. FORCE       3.887E-02
 LARGEST SCALED RESIDUAL FORCE     -6.705E-02   AT NODE          1   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE     -6.705E-02
 LARGEST INCREMENT OF DISP.        -0.214       AT NODE        412   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        7.415E-03   AT NODE        402   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     8.106E-03   TIME AVG. MOMENT      4.216E-03
 LARGEST SCALED RESIDUAL MOMENT    -0.130       AT NODE          1   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT    -0.130    
 LARGEST INCREMENT OF ROTATION      1.498E-02   AT NODE        411   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     2.874E-03   AT NODE        412   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  31ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                      8.914E-02   TIME AVG. FORCE       3.887E-02
 LARGEST SCALED RESIDUAL FORCE      5.130E-04   AT NODE        702   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      5.130E-04
 LARGEST INCREMENT OF DISP.        -0.212       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        2.179E-03   AT NODE        348   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     8.105E-03   TIME AVG. MOMENT      4.216E-03
 LARGEST SCALED RESIDUAL MOMENT     1.952E-04   AT NODE          1   DOF  4
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     1.952E-04
 LARGEST INCREMENT OF ROTATION      1.488E-02   AT NODE        417   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -1.314E-04   AT NODE        411   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  25ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     4


 AVERAGE FORCE                      8.909E-02   TIME AVG. FORCE       3.887E-02
 LARGEST SCALED RESIDUAL FORCE     -1.202E-03   AT NODE          1   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE     -1.202E-03
 LARGEST INCREMENT OF DISP.        -0.210       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        2.638E-03   AT NODE        410   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     8.102E-03   TIME AVG. MOMENT      4.216E-03
 LARGEST SCALED RESIDUAL MOMENT     2.063E-04   AT NODE        819   DOF  5
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     2.063E-04
 LARGEST INCREMENT OF ROTATION      1.469E-02   AT NODE        417   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -1.852E-04   AT NODE        409   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  22ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     5


 AVERAGE FORCE                      8.909E-02   TIME AVG. FORCE       3.887E-02
 LARGEST SCALED RESIDUAL FORCE      2.944E-05   AT NODE        670   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      2.944E-05
 LARGEST INCREMENT OF DISP.        -0.209       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        4.202E-04   AT NODE        372   DOF  3
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     8.102E-03   TIME AVG. MOMENT      4.216E-03
 LARGEST SCALED RESIDUAL MOMENT     5.066E-06   AT NODE        819   DOF  5
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     5.066E-06
 LARGEST INCREMENT OF ROTATION      1.466E-02   AT NODE        417   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -2.935E-05   AT NODE        372   DOF  4
   INSTANCE: SHELL-1                                                                         
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED

 ITERATION SUMMARY FOR THE INCREMENT:   5 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  5 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  2.813E-02,  FRACTION OF STEP COMPLETED  0.837    
 STEP TIME COMPLETED       0.837    ,  TOTAL TIME COMPLETED        0.837    


  INCREMENT    41 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  2.813E-02
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  21ms


 ***WARNING: THE SYSTEM MATRIX HAS 1 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      0.103       TIME AVG. FORCE       4.043E-02
 LARGEST SCALED RESIDUAL FORCE       15.0       AT NODE          1   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE       15.0    
 LARGEST INCREMENT OF DISP.        -0.213       AT NODE        404   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -7.139E-03   AT NODE        402   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     1.091E-02   TIME AVG. MOMENT      4.380E-03
 LARGEST SCALED RESIDUAL MOMENT     -29.1       AT NODE          1   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     -29.1    
 LARGEST INCREMENT OF ROTATION      1.720E-02   AT NODE        416   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -2.761E-03   AT NODE        412   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  21ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                      9.260E-02   TIME AVG. FORCE       4.018E-02
 LARGEST SCALED RESIDUAL FORCE     -6.143E-02   AT NODE          1   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE     -6.143E-02
 LARGEST INCREMENT OF DISP.        -0.210       AT NODE        412   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        7.124E-03   AT NODE        402   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     8.316E-03   TIME AVG. MOMENT      4.316E-03
 LARGEST SCALED RESIDUAL MOMENT    -0.118       AT NODE          1   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT    -0.118    
 LARGEST INCREMENT OF ROTATION      1.466E-02   AT NODE        411   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     2.750E-03   AT NODE        412   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  18ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                      9.260E-02   TIME AVG. FORCE       4.018E-02
 LARGEST SCALED RESIDUAL FORCE      2.860E-04   AT NODE        700   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      2.860E-04
 LARGEST INCREMENT OF DISP.        -0.208       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        2.045E-03   AT NODE        411   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     8.314E-03   TIME AVG. MOMENT      4.316E-03
 LARGEST SCALED RESIDUAL MOMENT     1.910E-04   AT NODE          1   DOF  4
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     1.910E-04
 LARGEST INCREMENT OF ROTATION      1.456E-02   AT NODE        417   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -1.269E-04   AT NODE        411   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  19ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     4


 AVERAGE FORCE                      9.256E-02   TIME AVG. FORCE       4.018E-02
 LARGEST SCALED RESIDUAL FORCE     -7.895E-04   AT NODE          1   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE     -7.895E-04
 LARGEST INCREMENT OF DISP.        -0.205       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        2.135E-03   AT NODE        410   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     8.311E-03   TIME AVG. MOMENT      4.316E-03
 LARGEST SCALED RESIDUAL MOMENT     1.347E-04   AT NODE        819   DOF  5
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     1.347E-04
 LARGEST INCREMENT OF ROTATION      1.441E-02   AT NODE        417   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -1.501E-04   AT NODE        409   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  20ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     5


 AVERAGE FORCE                      9.255E-02   TIME AVG. FORCE       4.018E-02
 LARGEST SCALED RESIDUAL FORCE     -1.229E-05   AT NODE          1   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE     -1.229E-05
 LARGEST INCREMENT OF DISP.        -0.205       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        2.663E-04   AT NODE        399   DOF  3
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     8.311E-03   TIME AVG. MOMENT      4.316E-03
 LARGEST SCALED RESIDUAL MOMENT     2.107E-06   AT NODE        819   DOF  5
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     2.107E-06
 LARGEST INCREMENT OF ROTATION      1.439E-02   AT NODE        417   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -1.871E-05   AT NODE        411   DOF  4
   INSTANCE: SHELL-1                                                                         
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED

 ITERATION SUMMARY FOR THE INCREMENT:   5 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  5 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  2.813E-02,  FRACTION OF STEP COMPLETED  0.866    
 STEP TIME COMPLETED       0.866    ,  TOTAL TIME COMPLETED        0.866    


  INCREMENT    42 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  2.813E-02
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  16ms


 ***WARNING: THE SYSTEM MATRIX HAS 1 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      0.106       TIME AVG. FORCE       4.174E-02
 LARGEST SCALED RESIDUAL FORCE       14.5       AT NODE          1   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE       14.5    
 LARGEST INCREMENT OF DISP.        -0.209       AT NODE        404   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -6.776E-03   AT NODE        402   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     1.101E-02   TIME AVG. MOMENT      4.476E-03
 LARGEST SCALED RESIDUAL MOMENT     -27.7       AT NODE          1   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     -27.7    
 LARGEST INCREMENT OF ROTATION      1.682E-02   AT NODE        416   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -2.658E-03   AT NODE        412   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  16ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                      9.605E-02   TIME AVG. FORCE       4.151E-02
 LARGEST SCALED RESIDUAL FORCE     -5.688E-02   AT NODE          1   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE     -5.688E-02
 LARGEST INCREMENT OF DISP.        -0.205       AT NODE        412   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        6.872E-03   AT NODE        402   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     8.524E-03   TIME AVG. MOMENT      4.416E-03
 LARGEST SCALED RESIDUAL MOMENT    -0.109       AT NODE          1   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT    -0.109    
 LARGEST INCREMENT OF ROTATION      1.437E-02   AT NODE        411   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     2.646E-03   AT NODE        412   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  20ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                      9.603E-02   TIME AVG. FORCE       4.151E-02
 LARGEST SCALED RESIDUAL FORCE      1.784E-04   AT NODE        694   DOF  3
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      1.784E-04
 LARGEST INCREMENT OF DISP.        -0.203       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        2.028E-03   AT NODE        411   DOF  3
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     8.520E-03   TIME AVG. MOMENT      4.416E-03
 LARGEST SCALED RESIDUAL MOMENT     2.031E-04   AT NODE          1   DOF  4
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     2.031E-04
 LARGEST INCREMENT OF ROTATION      1.427E-02   AT NODE        417   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -1.277E-04   AT NODE        411   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  23ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     4


 AVERAGE FORCE                      9.599E-02   TIME AVG. FORCE       4.151E-02
 LARGEST SCALED RESIDUAL FORCE     -5.488E-04   AT NODE          1   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE     -5.488E-04
 LARGEST INCREMENT OF DISP.        -0.202       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.778E-03   AT NODE        410   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     8.518E-03   TIME AVG. MOMENT      4.416E-03
 LARGEST SCALED RESIDUAL MOMENT     9.316E-05   AT NODE        819   DOF  5
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     9.316E-05
 LARGEST INCREMENT OF ROTATION      1.415E-02   AT NODE        417   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -1.251E-04   AT NODE        409   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  20ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     5


 AVERAGE FORCE                      9.601E-02   TIME AVG. FORCE       4.151E-02
 LARGEST SCALED RESIDUAL FORCE     -6.680E-06   AT NODE          1   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE     -6.680E-06
 LARGEST INCREMENT OF DISP.        -0.201       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.960E-04   AT NODE        410   DOF  3
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     8.518E-03   TIME AVG. MOMENT      4.416E-03
 LARGEST SCALED RESIDUAL MOMENT     1.140E-06   AT NODE        819   DOF  5
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     1.140E-06
 LARGEST INCREMENT OF ROTATION      1.413E-02   AT NODE        417   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -1.380E-05   AT NODE        411   DOF  4
   INSTANCE: SHELL-1                                                                         
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED

 ITERATION SUMMARY FOR THE INCREMENT:   5 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  5 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  2.813E-02,  FRACTION OF STEP COMPLETED  0.894    
 STEP TIME COMPLETED       0.894    ,  TOTAL TIME COMPLETED        0.894    


  INCREMENT    43 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  2.813E-02
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  15ms


 ***WARNING: THE SYSTEM MATRIX HAS 1 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      0.109       TIME AVG. FORCE       4.308E-02
 LARGEST SCALED RESIDUAL FORCE       14.0       AT NODE          1   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE       14.0    
 LARGEST INCREMENT OF DISP.        -0.205       AT NODE        404   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -6.453E-03   AT NODE        402   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     1.113E-02   TIME AVG. MOMENT      4.572E-03
 LARGEST SCALED RESIDUAL MOMENT     -26.4       AT NODE          1   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     -26.4    
 LARGEST INCREMENT OF ROTATION      1.649E-02   AT NODE        416   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -2.566E-03   AT NODE        412   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  19ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                      0.100       TIME AVG. FORCE       4.286E-02
 LARGEST SCALED RESIDUAL FORCE     -5.298E-02   AT NODE          1   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE     -5.298E-02
 LARGEST INCREMENT OF DISP.        -0.201       AT NODE        412   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        6.644E-03   AT NODE        402   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     8.727E-03   TIME AVG. MOMENT      4.516E-03
 LARGEST SCALED RESIDUAL MOMENT    -0.100       AT NODE          1   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT    -0.100    
 LARGEST INCREMENT OF ROTATION      1.412E-02   AT NODE        411   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     2.552E-03   AT NODE        412   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  23ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                      9.948E-02   TIME AVG. FORCE       4.286E-02
 LARGEST SCALED RESIDUAL FORCE      2.095E-04   AT NODE        411   DOF  2
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      2.095E-04
 LARGEST INCREMENT OF DISP.        -0.199       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        2.126E-03   AT NODE        411   DOF  3
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF DISP.    CORRECTION   -8.404E-06
          FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                     8.725E-03   TIME AVG. MOMENT      4.516E-03
 LARGEST SCALED RESIDUAL MOMENT     2.387E-04   AT NODE          1   DOF  4
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     2.387E-04
 LARGEST INCREMENT OF ROTATION      1.401E-02   AT NODE        417   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -1.363E-04   AT NODE        411   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  18ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     4


 AVERAGE FORCE                      9.944E-02   TIME AVG. FORCE       4.286E-02
 LARGEST SCALED RESIDUAL FORCE     -4.481E-04   AT NODE          1   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE     -4.481E-04
 LARGEST INCREMENT OF DISP.        -0.198       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.604E-03   AT NODE        410   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     8.724E-03   TIME AVG. MOMENT      4.516E-03
 LARGEST SCALED RESIDUAL MOMENT     7.566E-05   AT NODE        819   DOF  5
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     7.566E-05
 LARGEST INCREMENT OF ROTATION      1.390E-02   AT NODE        417   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -1.131E-04   AT NODE        419   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  21ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     5


 AVERAGE FORCE                      9.945E-02   TIME AVG. FORCE       4.286E-02
 LARGEST SCALED RESIDUAL FORCE     -6.334E-06   AT NODE          1   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE     -6.334E-06
 LARGEST INCREMENT OF DISP.        -0.197       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.906E-04   AT NODE        411   DOF  3
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     8.723E-03   TIME AVG. MOMENT      4.516E-03
 LARGEST SCALED RESIDUAL MOMENT     1.073E-06   AT NODE        819   DOF  5
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     1.073E-06
 LARGEST INCREMENT OF ROTATION      1.388E-02   AT NODE        417   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -1.343E-05   AT NODE        411   DOF  4
   INSTANCE: SHELL-1                                                                         
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED

 ITERATION SUMMARY FOR THE INCREMENT:   5 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  5 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  2.813E-02,  FRACTION OF STEP COMPLETED  0.922    
 STEP TIME COMPLETED       0.922    ,  TOTAL TIME COMPLETED        0.922    


  INCREMENT    44 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  2.813E-02
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  20ms


 ***WARNING: THE SYSTEM MATRIX HAS 1 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      0.112       TIME AVG. FORCE       4.443E-02
 LARGEST SCALED RESIDUAL FORCE       13.5       AT NODE          1   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE       13.5    
 LARGEST INCREMENT OF DISP.        -0.201       AT NODE        404   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -6.144E-03   AT NODE        402   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     1.124E-02   TIME AVG. MOMENT      4.669E-03
 LARGEST SCALED RESIDUAL MOMENT     -25.3       AT NODE          1   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     -25.3    
 LARGEST INCREMENT OF ROTATION      1.615E-02   AT NODE        416   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -2.476E-03   AT NODE        412   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  18ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                      0.103       TIME AVG. FORCE       4.422E-02
 LARGEST SCALED RESIDUAL FORCE     -4.930E-02   AT NODE          1   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE     -4.930E-02
 LARGEST INCREMENT OF DISP.        -0.197       AT NODE        412   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        6.413E-03   AT NODE        402   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     8.927E-03   TIME AVG. MOMENT      4.617E-03
 LARGEST SCALED RESIDUAL MOMENT    -9.275E-02   AT NODE          1   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT    -9.275E-02
 LARGEST INCREMENT OF ROTATION      1.386E-02   AT NODE        411   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     2.462E-03   AT NODE        412   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  15ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                      0.103       TIME AVG. FORCE       4.422E-02
 LARGEST SCALED RESIDUAL FORCE      2.390E-04   AT NODE        411   DOF  2
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      2.390E-04
 LARGEST INCREMENT OF DISP.        -0.195       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        2.187E-03   AT NODE        411   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     8.925E-03   TIME AVG. MOMENT      4.617E-03
 LARGEST SCALED RESIDUAL MOMENT     2.584E-04   AT NODE          1   DOF  4
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     2.584E-04
 LARGEST INCREMENT OF ROTATION      1.375E-02   AT NODE        417   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -1.422E-04   AT NODE        411   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  19ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     4


 AVERAGE FORCE                      0.103       TIME AVG. FORCE       4.422E-02
 LARGEST SCALED RESIDUAL FORCE     -3.551E-04   AT NODE          1   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE     -3.551E-04
 LARGEST INCREMENT OF DISP.        -0.194       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.425E-03   AT NODE        410   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     8.923E-03   TIME AVG. MOMENT      4.616E-03
 LARGEST SCALED RESIDUAL MOMENT     5.962E-05   AT NODE        819   DOF  5
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     5.962E-05
 LARGEST INCREMENT OF ROTATION      1.365E-02   AT NODE        417   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -1.007E-04   AT NODE        419   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  21ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     5


 AVERAGE FORCE                      0.103       TIME AVG. FORCE       4.422E-02
 LARGEST SCALED RESIDUAL FORCE     -6.399E-06   AT NODE          1   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE     -6.399E-06
 LARGEST INCREMENT OF DISP.        -0.194       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.914E-04   AT NODE        411   DOF  3
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     8.923E-03   TIME AVG. MOMENT      4.616E-03
 LARGEST SCALED RESIDUAL MOMENT     1.079E-06   AT NODE        819   DOF  5
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     1.079E-06
 LARGEST INCREMENT OF ROTATION      1.364E-02   AT NODE        417   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -1.351E-05   AT NODE        411   DOF  4
   INSTANCE: SHELL-1                                                                         
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED

 ITERATION SUMMARY FOR THE INCREMENT:   5 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  5 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  2.813E-02,  FRACTION OF STEP COMPLETED  0.950    
 STEP TIME COMPLETED       0.950    ,  TOTAL TIME COMPLETED        0.950    


  INCREMENT    45 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  2.813E-02
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  20ms


 ***WARNING: THE SYSTEM MATRIX HAS 1 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      0.115       TIME AVG. FORCE       4.579E-02
 LARGEST SCALED RESIDUAL FORCE       13.0       AT NODE          1   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE       13.0    
 LARGEST INCREMENT OF DISP.        -0.197       AT NODE        404   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -5.851E-03   AT NODE        402   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     1.134E-02   TIME AVG. MOMENT      4.766E-03
 LARGEST SCALED RESIDUAL MOMENT     -24.1       AT NODE          1   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     -24.1    
 LARGEST INCREMENT OF ROTATION      1.582E-02   AT NODE        416   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -2.389E-03   AT NODE        412   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  20ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                      0.106       TIME AVG. FORCE       4.560E-02
 LARGEST SCALED RESIDUAL FORCE     -4.587E-02   AT NODE          1   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE     -4.587E-02
 LARGEST INCREMENT OF DISP.        -0.193       AT NODE        412   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        6.182E-03   AT NODE        402   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     9.123E-03   TIME AVG. MOMENT      4.717E-03
 LARGEST SCALED RESIDUAL MOMENT    -8.559E-02   AT NODE          1   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT    -8.559E-02
 LARGEST INCREMENT OF ROTATION      1.362E-02   AT NODE        411   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     2.374E-03   AT NODE        412   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  15ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                      0.106       TIME AVG. FORCE       4.560E-02
 LARGEST SCALED RESIDUAL FORCE     -2.710E-04   AT NODE          1   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE     -2.710E-04
 LARGEST INCREMENT OF DISP.        -0.191       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        2.200E-03   AT NODE        411   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     9.124E-03   TIME AVG. MOMENT      4.717E-03
 LARGEST SCALED RESIDUAL MOMENT     2.625E-04   AT NODE          1   DOF  4
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     2.625E-04
 LARGEST INCREMENT OF ROTATION      1.350E-02   AT NODE        417   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -1.447E-04   AT NODE        411   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  20ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     4


 AVERAGE FORCE                      0.106       TIME AVG. FORCE       4.560E-02
 LARGEST SCALED RESIDUAL FORCE     -2.713E-04   AT NODE          1   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE     -2.713E-04
 LARGEST INCREMENT OF DISP.        -0.190       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.244E-03   AT NODE        410   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     9.122E-03   TIME AVG. MOMENT      4.717E-03
 LARGEST SCALED RESIDUAL MOMENT     4.530E-05   AT NODE        819   DOF  5
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     4.530E-05
 LARGEST INCREMENT OF ROTATION      1.341E-02   AT NODE        417   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -8.812E-05   AT NODE        419   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  15ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     5


 AVERAGE FORCE                      0.106       TIME AVG. FORCE       4.560E-02
 LARGEST SCALED RESIDUAL FORCE     -6.053E-06   AT NODE          1   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE     -6.053E-06
 LARGEST INCREMENT OF DISP.        -0.190       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.858E-04   AT NODE        411   DOF  3
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     9.122E-03   TIME AVG. MOMENT      4.717E-03
 LARGEST SCALED RESIDUAL MOMENT     1.014E-06   AT NODE        819   DOF  5
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     1.014E-06
 LARGEST INCREMENT OF ROTATION      1.340E-02   AT NODE        417   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -1.314E-05   AT NODE        411   DOF  4
   INSTANCE: SHELL-1                                                                         
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED

 ITERATION SUMMARY FOR THE INCREMENT:   5 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  5 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  2.813E-02,  FRACTION OF STEP COMPLETED  0.978    
 STEP TIME COMPLETED       0.978    ,  TOTAL TIME COMPLETED        0.978    


  INCREMENT    46 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  2.188E-02
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  12ms


 ***WARNING: THE SYSTEM MATRIX HAS 1 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      0.114       TIME AVG. FORCE       4.710E-02
 LARGEST SCALED RESIDUAL FORCE       8.70       AT NODE          1   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE       8.70    
 LARGEST INCREMENT OF DISP.        -0.149       AT NODE        406   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -3.718E-03   AT NODE        402   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     1.071E-02   TIME AVG. MOMENT      4.847E-03
 LARGEST SCALED RESIDUAL MOMENT     -15.9       AT NODE          1   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     -15.9    
 LARGEST INCREMENT OF ROTATION      1.188E-02   AT NODE        416   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -1.591E-03   AT NODE        412   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  11ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                      0.109       TIME AVG. FORCE       4.698E-02
 LARGEST SCALED RESIDUAL FORCE     -2.038E-02   AT NODE          1   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE     -2.038E-02
 LARGEST INCREMENT OF DISP.        -0.147       AT NODE        412   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        4.083E-03   AT NODE        402   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     9.281E-03   TIME AVG. MOMENT      4.816E-03
 LARGEST SCALED RESIDUAL MOMENT    -3.806E-02   AT NODE          1   DOF  5
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT    -3.806E-02
 LARGEST INCREMENT OF ROTATION      1.039E-02   AT NODE        412   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.576E-03   AT NODE        412   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  12ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                      0.109       TIME AVG. FORCE       4.698E-02
 LARGEST SCALED RESIDUAL FORCE     -3.467E-04   AT NODE          1   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE     -3.467E-04
 LARGEST INCREMENT OF DISP.        -0.146       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.833E-03   AT NODE        411   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     9.279E-03   TIME AVG. MOMENT      4.816E-03
 LARGEST SCALED RESIDUAL MOMENT     1.359E-04   AT NODE          1   DOF  4
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     1.359E-04
 LARGEST INCREMENT OF ROTATION      1.029E-02   AT NODE        417   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -1.252E-04   AT NODE        411   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 4 THREADS PER RANK
        NUMBER OF EQUATIONS:  13206
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.272e+08
        SOLVER ELAPSED TIME:  12ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     4


 AVERAGE FORCE                      0.109       TIME AVG. FORCE       4.698E-02
 LARGEST SCALED RESIDUAL FORCE     -2.423E-05   AT NODE          1   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE     -2.423E-05
 LARGEST INCREMENT OF DISP.        -0.145       AT NODE          1   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        3.714E-04   AT NODE        410   DOF  3
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     9.279E-03   TIME AVG. MOMENT      4.816E-03
 LARGEST SCALED RESIDUAL MOMENT     4.032E-06   AT NODE        819   DOF  5
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     4.032E-06
 LARGEST INCREMENT OF ROTATION      1.026E-02   AT NODE        417   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -2.642E-05   AT NODE        419   DOF  4
   INSTANCE: SHELL-1                                                                         
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED

 ITERATION SUMMARY FOR THE INCREMENT:   4 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  4 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  2.188E-02,  FRACTION OF STEP COMPLETED   1.00    
 STEP TIME COMPLETED        1.00    ,  TOTAL TIME COMPLETED         1.00    


          THE ANALYSIS HAS BEEN COMPLETED



     ANALYSIS SUMMARY:
     TOTAL OF         46  INCREMENTS
                       1  CUTBACKS IN AUTOMATIC INCREMENTATION
                     246  ITERATIONS INCLUDING CONTACT ITERATIONS IF PRESENT
                     246  PASSES THROUGH THE EQUATION SOLVER OF WHICH 
                     246  INVOLVE MATRIX DECOMPOSITION, INCLUDING
                       0  DECOMPOSITION(S) OF THE MASS MATRIX
                       1  REORDERING OF EQUATIONS TO MINIMIZE WAVEFRONT
                       0  ADDITIONAL RESIDUAL EVALUATIONS FOR LINE SEARCHES
                       0  ADDITIONAL OPERATOR EVALUATIONS FOR LINE SEARCHES
                       0  WARNING MESSAGES DURING USER INPUT PROCESSING
                      49  WARNING MESSAGES DURING ANALYSIS
                       0  ANALYSIS WARNINGS ARE NUMERICAL PROBLEM MESSAGES
                      49  ANALYSIS WARNINGS ARE NEGATIVE EIGENVALUE MESSAGES
                       0  ERROR MESSAGES



     JOB TIME SUMMARY
       USER TIME (SEC)      =       6.E+01
       SYSTEM TIME (SEC)    =       1.E+01
       TOTAL CPU TIME (SEC) =       7.E+01
       WALLCLOCK TIME (SEC) =           31
       MEMORY PEAK (GB)     =            0
