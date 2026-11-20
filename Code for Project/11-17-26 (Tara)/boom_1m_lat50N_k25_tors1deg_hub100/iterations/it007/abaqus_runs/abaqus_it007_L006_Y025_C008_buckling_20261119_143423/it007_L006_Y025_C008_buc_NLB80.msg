1

   Abaqus 2026                                  Date 19-Nov-2026   Time 14:37:59
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

     CHARACTERISTIC ELEMENT LENGTH      4.46    

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
                              1            2816
                              2            3072
                              3            2864
                              4            2816
                              5            2816
                              6            2816
                              7            2816
                              8            3072
      SPARSE STORAGE WAS USED FOR NODAL DATA ON WORKER THREADS
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  137916
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.973e+10
        SOLVER ELAPSED TIME:  349ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      0.121       TIME AVG. FORCE       0.121    
 LARGEST SCALED RESIDUAL FORCE     -2.024E-02   AT NODE      22972   DOF  2
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -2.024E-02
 LARGEST INCREMENT OF DISP.         0.148       AT NODE         61   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        0.148       AT NODE         61   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     1.444E-02   TIME AVG. MOMENT      1.444E-02
 LARGEST SCALED RESIDUAL MOMENT    -1.713E-03   AT NODE      13471   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT    -1.713E-03
 LARGEST INCREMENT OF ROTATION      3.794E-04   AT NODE      15903   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     3.794E-04   AT NODE      15903   DOF  6
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  137916
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.973e+10
        SOLVER ELAPSED TIME:  324ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                      0.121       TIME AVG. FORCE       0.121    
 LARGEST SCALED RESIDUAL FORCE     -7.842E-07   AT NODE      15472   DOF  2
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -7.842E-07
 LARGEST INCREMENT OF DISP.         0.148       AT NODE         61   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -3.398E-04   AT NODE      14568   DOF  2
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     1.444E-02   TIME AVG. MOMENT      1.444E-02
 LARGEST SCALED RESIDUAL MOMENT     7.059E-08   AT NODE          2   DOF  6
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     6.000E-06
 LARGEST INCREMENT OF ROTATION      3.797E-04   AT NODE      15903   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -1.293E-05   AT NODE      15465   DOF  4
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF ROTATION CORRECTION    5.325E-10
          MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 ITERATION SUMMARY FOR THE INCREMENT:   2 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  2 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  0.100    ,  FRACTION OF STEP COMPLETED  0.100    
 STEP TIME COMPLETED       0.100    ,  TOTAL TIME COMPLETED        0.100    


  INCREMENT     2 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  0.100    
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  137916
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.973e+10
        SOLVER ELAPSED TIME:  345ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      0.243       TIME AVG. FORCE       0.182    
 LARGEST SCALED RESIDUAL FORCE     -4.005E-02   AT NODE      22972   DOF  2
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -4.005E-02
 LARGEST INCREMENT OF DISP.         0.148       AT NODE         61   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -6.841E-04   AT NODE      14572   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                      565.       TIME AVG. MOMENT       283.    
 LARGEST SCALED RESIDUAL MOMENT     3.477E-03   AT NODE       8165   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     3.477E-03
 LARGEST INCREMENT OF ROTATION      3.801E-04   AT NODE      15903   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     2.616E-05   AT NODE      14566   DOF  4
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  137916
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.973e+10
        SOLVER ELAPSED TIME:  339ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                      0.243       TIME AVG. FORCE       0.182    
 LARGEST SCALED RESIDUAL FORCE      4.390E-08   AT NODE      15018   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      4.390E-08
 LARGEST INCREMENT OF DISP.         0.148       AT NODE         61   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -1.035E-05   AT NODE      14504   DOF  2
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                      609.       TIME AVG. MOMENT       304.    
 LARGEST SCALED RESIDUAL MOMENT     1.166E-07   AT NODE          2   DOF  6
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     9.915E-06
 LARGEST INCREMENT OF ROTATION      3.802E-04   AT NODE      15903   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     7.776E-07   AT NODE       2093   DOF  4
   INSTANCE: SHELL-1                                                                         
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED

 ITERATION SUMMARY FOR THE INCREMENT:   2 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  2 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  0.100    ,  FRACTION OF STEP COMPLETED  0.200    
 STEP TIME COMPLETED       0.200    ,  TOTAL TIME COMPLETED        0.200    


  INCREMENT     3 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  0.100    
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  137916
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.973e+10
        SOLVER ELAPSED TIME:  458ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      0.364       TIME AVG. FORCE       0.243    
 LARGEST SCALED RESIDUAL FORCE     -4.006E-02   AT NODE      22972   DOF  2
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -4.006E-02
 LARGEST INCREMENT OF DISP.         0.148       AT NODE         61   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -7.055E-04   AT NODE      15463   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                      913.       TIME AVG. MOMENT       507.    
 LARGEST SCALED RESIDUAL MOMENT     3.477E-03   AT NODE       8165   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     3.477E-03
 LARGEST INCREMENT OF ROTATION      3.807E-04   AT NODE      15903   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     2.699E-05   AT NODE      14562   DOF  4
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  137916
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.973e+10
        SOLVER ELAPSED TIME:  343ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                      0.364       TIME AVG. FORCE       0.243    
 LARGEST SCALED RESIDUAL FORCE      4.659E-08   AT NODE      15018   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      4.659E-08
 LARGEST INCREMENT OF DISP.         0.148       AT NODE         61   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -1.072E-05   AT NODE      14508   DOF  2
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                      913.       TIME AVG. MOMENT       507.    
 LARGEST SCALED RESIDUAL MOMENT     1.311E-07   AT NODE          2   DOF  6
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     1.114E-05
 LARGEST INCREMENT OF ROTATION      3.808E-04   AT NODE      15903   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     7.779E-07   AT NODE       2093   DOF  4
   INSTANCE: SHELL-1                                                                         
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED

 ITERATION SUMMARY FOR THE INCREMENT:   2 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  2 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  0.100    ,  FRACTION OF STEP COMPLETED  0.300    
 STEP TIME COMPLETED       0.300    ,  TOTAL TIME COMPLETED        0.300    


  INCREMENT     4 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  0.100    
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  137916
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.973e+10
        SOLVER ELAPSED TIME:  478ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      0.486       TIME AVG. FORCE       0.304    
 LARGEST SCALED RESIDUAL FORCE     -4.006E-02   AT NODE      22972   DOF  2
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -4.006E-02
 LARGEST INCREMENT OF DISP.         0.148       AT NODE         61   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -7.285E-04   AT NODE      15463   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     1.218E+03   TIME AVG. MOMENT       685.    
 LARGEST SCALED RESIDUAL MOMENT     3.477E-03   AT NODE       8165   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     3.477E-03
 LARGEST INCREMENT OF ROTATION      3.813E-04   AT NODE      15903   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     2.789E-05   AT NODE      14562   DOF  4
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  137916
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.973e+10
        SOLVER ELAPSED TIME:  418ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                      0.486       TIME AVG. FORCE       0.304    
 LARGEST SCALED RESIDUAL FORCE      4.578E-08   AT NODE      21867   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      4.578E-08
 LARGEST INCREMENT OF DISP.         0.148       AT NODE         61   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -1.113E-05   AT NODE      14508   DOF  2
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     1.218E+03   TIME AVG. MOMENT       685.    
 LARGEST SCALED RESIDUAL MOMENT     1.009E-07   AT NODE          2   DOF  6
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     8.573E-06
 LARGEST INCREMENT OF ROTATION      3.814E-04   AT NODE      15903   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     9.091E-07   AT NODE       7275   DOF  4
   INSTANCE: SHELL-1                                                                         
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED

 ITERATION SUMMARY FOR THE INCREMENT:   2 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  2 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  0.100    ,  FRACTION OF STEP COMPLETED  0.400    
 STEP TIME COMPLETED       0.400    ,  TOTAL TIME COMPLETED        0.400    


  INCREMENT     5 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  0.100    
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  137916
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.973e+10
        SOLVER ELAPSED TIME:  620ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      0.607       TIME AVG. FORCE       0.364    
 LARGEST SCALED RESIDUAL FORCE     -4.007E-02   AT NODE      22972   DOF  2
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -4.007E-02
 LARGEST INCREMENT OF DISP.         0.148       AT NODE         61   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -7.528E-04   AT NODE      15463   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     1.522E+03   TIME AVG. MOMENT       852.    
 LARGEST SCALED RESIDUAL MOMENT     3.478E-03   AT NODE       8165   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     3.478E-03
 LARGEST INCREMENT OF ROTATION      3.819E-04   AT NODE      15903   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     2.883E-05   AT NODE      14558   DOF  4
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  137916
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.973e+10
        SOLVER ELAPSED TIME:  434ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                      0.607       TIME AVG. FORCE       0.364    
 LARGEST SCALED RESIDUAL FORCE      4.747E-08   AT NODE      15018   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      4.747E-08
 LARGEST INCREMENT OF DISP.         0.148       AT NODE         61   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -1.157E-05   AT NODE      14512   DOF  2
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     1.522E+03   TIME AVG. MOMENT       852.    
 LARGEST SCALED RESIDUAL MOMENT     1.196E-07   AT NODE          2   DOF  6
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     1.017E-05
 LARGEST INCREMENT OF ROTATION      3.820E-04   AT NODE      15903   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.152E-06   AT NODE       7275   DOF  4
   INSTANCE: SHELL-1                                                                         
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED

 ITERATION SUMMARY FOR THE INCREMENT:   2 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  2 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  0.100    ,  FRACTION OF STEP COMPLETED  0.500    
 STEP TIME COMPLETED       0.500    ,  TOTAL TIME COMPLETED        0.500    


  INCREMENT     6 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  0.100    
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  137916
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.973e+10
        SOLVER ELAPSED TIME:  334ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      0.729       TIME AVG. FORCE       0.425    
 LARGEST SCALED RESIDUAL FORCE     -4.007E-02   AT NODE      22972   DOF  2
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -4.007E-02
 LARGEST INCREMENT OF DISP.         0.148       AT NODE         61   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -7.784E-04   AT NODE      15467   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     1.826E+03   TIME AVG. MOMENT      1.015E+03
 LARGEST SCALED RESIDUAL MOMENT     3.479E-03   AT NODE       8165   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     3.479E-03
 LARGEST INCREMENT OF ROTATION      3.825E-04   AT NODE      15903   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     2.983E-05   AT NODE      14558   DOF  4
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  137916
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.973e+10
        SOLVER ELAPSED TIME:  339ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                      0.729       TIME AVG. FORCE       0.425    
 LARGEST SCALED RESIDUAL FORCE      4.739E-08   AT NODE      21867   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      4.739E-08
 LARGEST INCREMENT OF DISP.         0.148       AT NODE         61   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.401E-05   AT NODE       7275   DOF  3
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     1.826E+03   TIME AVG. MOMENT      1.015E+03
 LARGEST SCALED RESIDUAL MOMENT     1.280E-07   AT NODE          2   DOF  6
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     1.088E-05
 LARGEST INCREMENT OF ROTATION      3.826E-04   AT NODE      15903   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.514E-06   AT NODE       7275   DOF  4
   INSTANCE: SHELL-1                                                                         
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED

 ITERATION SUMMARY FOR THE INCREMENT:   2 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  2 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  0.100    ,  FRACTION OF STEP COMPLETED  0.600    
 STEP TIME COMPLETED       0.600    ,  TOTAL TIME COMPLETED        0.600    


  INCREMENT     7 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  0.100    
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  137916
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.973e+10
        SOLVER ELAPSED TIME:  366ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      0.850       TIME AVG. FORCE       0.486    
 LARGEST SCALED RESIDUAL FORCE     -4.008E-02   AT NODE      22972   DOF  2
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -4.008E-02
 LARGEST INCREMENT OF DISP.         0.148       AT NODE         61   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -8.056E-04   AT NODE      15467   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     2.131E+03   TIME AVG. MOMENT      1.174E+03
 LARGEST SCALED RESIDUAL MOMENT     3.480E-03   AT NODE       8165   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     3.480E-03
 LARGEST INCREMENT OF ROTATION      3.832E-04   AT NODE      15903   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     3.090E-05   AT NODE      14554   DOF  4
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  137916
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.973e+10
        SOLVER ELAPSED TIME:  466ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                      0.850       TIME AVG. FORCE       0.486    
 LARGEST SCALED RESIDUAL FORCE     -7.159E-08   AT NODE       7275   DOF  2
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -7.159E-08
 LARGEST INCREMENT OF DISP.         0.148       AT NODE         61   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.916E-05   AT NODE       7275   DOF  3
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     2.131E+03   TIME AVG. MOMENT      1.174E+03
 LARGEST SCALED RESIDUAL MOMENT     1.420E-07   AT NODE      22751   DOF  5
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     1.420E-07
 LARGEST INCREMENT OF ROTATION      3.833E-04   AT NODE      15903   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     2.087E-06   AT NODE       7275   DOF  4
   INSTANCE: SHELL-1                                                                         
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED

 ITERATION SUMMARY FOR THE INCREMENT:   2 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  2 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  0.100    ,  FRACTION OF STEP COMPLETED  0.700    
 STEP TIME COMPLETED       0.700    ,  TOTAL TIME COMPLETED        0.700    


  INCREMENT     8 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  0.100    
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  137916
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.973e+10
        SOLVER ELAPSED TIME:  404ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      0.972       TIME AVG. FORCE       0.547    
 LARGEST SCALED RESIDUAL FORCE     -4.010E-02   AT NODE      22972   DOF  2
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -4.010E-02
 LARGEST INCREMENT OF DISP.         0.148       AT NODE         61   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -8.344E-04   AT NODE      15467   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     2.435E+03   TIME AVG. MOMENT      1.332E+03
 LARGEST SCALED RESIDUAL MOMENT     3.481E-03   AT NODE       8165   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     3.481E-03
 LARGEST INCREMENT OF ROTATION      3.839E-04   AT NODE      15903   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     3.204E-05   AT NODE      14554   DOF  4
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  137916
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.973e+10
        SOLVER ELAPSED TIME:  485ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                      0.972       TIME AVG. FORCE       0.547    
 LARGEST SCALED RESIDUAL FORCE     -1.558E-07   AT NODE       7275   DOF  2
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -1.558E-07
 LARGEST INCREMENT OF DISP.         0.148       AT NODE         61   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        2.782E-05   AT NODE       7275   DOF  3
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     2.435E+03   TIME AVG. MOMENT      1.332E+03
 LARGEST SCALED RESIDUAL MOMENT     1.627E-07   AT NODE      22751   DOF  5
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     1.627E-07
 LARGEST INCREMENT OF ROTATION      3.840E-04   AT NODE      15903   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     3.055E-06   AT NODE       7275   DOF  4
   INSTANCE: SHELL-1                                                                         
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED

 ITERATION SUMMARY FOR THE INCREMENT:   2 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  2 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  0.100    ,  FRACTION OF STEP COMPLETED  0.800    
 STEP TIME COMPLETED       0.800    ,  TOTAL TIME COMPLETED        0.800    


  INCREMENT     9 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  0.100    
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  137916
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.973e+10
        SOLVER ELAPSED TIME:  454ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       1.09       TIME AVG. FORCE       0.607    
 LARGEST SCALED RESIDUAL FORCE     -4.011E-02   AT NODE      22972   DOF  2
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -4.011E-02
 LARGEST INCREMENT OF DISP.         0.148       AT NODE         61   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -8.648E-04   AT NODE      15467   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     2.739E+03   TIME AVG. MOMENT      1.488E+03
 LARGEST SCALED RESIDUAL MOMENT     3.482E-03   AT NODE       8165   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     3.482E-03
 LARGEST INCREMENT OF ROTATION      3.846E-04   AT NODE      15903   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -3.545E-05   AT NODE       7065   DOF  4
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  137916
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.973e+10
        SOLVER ELAPSED TIME:  327ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       1.09       TIME AVG. FORCE       0.607    
 LARGEST SCALED RESIDUAL FORCE     -3.977E-07   AT NODE       7275   DOF  2
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -3.977E-07
 LARGEST INCREMENT OF DISP.         0.148       AT NODE         61   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        4.380E-05   AT NODE       7275   DOF  3
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     2.739E+03   TIME AVG. MOMENT      1.488E+03
 LARGEST SCALED RESIDUAL MOMENT     1.835E-07   AT NODE      22751   DOF  5
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     1.835E-07
 LARGEST INCREMENT OF ROTATION      3.847E-04   AT NODE      15903   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     4.846E-06   AT NODE       7275   DOF  4
   INSTANCE: SHELL-1                                                                         
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED

 ITERATION SUMMARY FOR THE INCREMENT:   2 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  2 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  0.100    ,  FRACTION OF STEP COMPLETED  0.900    
 STEP TIME COMPLETED       0.900    ,  TOTAL TIME COMPLETED        0.900    


  INCREMENT    10 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  0.100    
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  137916
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.973e+10
        SOLVER ELAPSED TIME:  312ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       1.22       TIME AVG. FORCE       0.668    
 LARGEST SCALED RESIDUAL FORCE     -4.012E-02   AT NODE      22972   DOF  2
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -4.012E-02
 LARGEST INCREMENT OF DISP.         0.148       AT NODE         61   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -8.968E-04   AT NODE      15471   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     2.826E+03   TIME AVG. MOMENT      1.622E+03
 LARGEST SCALED RESIDUAL MOMENT     3.483E-03   AT NODE       8165   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     3.483E-03
 LARGEST INCREMENT OF ROTATION      3.853E-04   AT NODE      15903   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -5.008E-05   AT NODE       7065   DOF  4
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  137916
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.973e+10
        SOLVER ELAPSED TIME:  320ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       1.22       TIME AVG. FORCE       0.668    
 LARGEST SCALED RESIDUAL FORCE     -1.289E-06   AT NODE       7274   DOF  2
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -1.289E-06
 LARGEST INCREMENT OF DISP.         0.148       AT NODE         61   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        7.745E-05   AT NODE       7275   DOF  3
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     2.826E+03   TIME AVG. MOMENT      1.622E+03
 LARGEST SCALED RESIDUAL MOMENT     2.044E-07   AT NODE      22751   DOF  5
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     2.044E-07
 LARGEST INCREMENT OF ROTATION      3.854E-04   AT NODE      15903   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     8.631E-06   AT NODE       7275   DOF  4
   INSTANCE: SHELL-1                                                                         
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED

 ITERATION SUMMARY FOR THE INCREMENT:   2 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  2 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  0.100    ,  FRACTION OF STEP COMPLETED   1.00    
 STEP TIME COMPLETED        1.00    ,  TOTAL TIME COMPLETED         1.00    
1

   Abaqus 2026                                  Date 19-Nov-2026   Time 14:38:18
   For use by CAL TECH under license from Dassault Systemes or its subsidiary.

                                                                                 
                                                                                 
 STEP    2     INCREMENT     1     STEP TIME    0.00    


                        S T E P       2     C A L C U L A T I O N   O F   E I G E N V A L U E S

                                            F O R   B U C K L I N G   P R E D I C T I O N



                                                                                          

     THE LANCZOS EIGENSOLVER IS USED FOR THIS ANALYSIS
     SYSTEM DATA WILL BE WRITTEN TO THE .SIM FILE

     Abaqus WILL COMPUTE UNCOUPLED
      STRUCTURAL AND ACOUSTIC MODES
     NUMBER OF EIGENVALUES                      4
     SMALLEST EIGENVALUE OF INTEREST                 0.0000    
     MAXIMUM NUMBER OF STEPS WITHIN RUN               30
     BLOCK SIZE FOR LANCZOS PROCEDURE                  4
     THE BUCKLING MODE CONSTRAINTS 
      ARE DEFINED AS LOAD CASE 2
                              INITIAL STRESS AND DISPLACEMENT EFFECTS ARE
                              INCLUDED IN THE STIFFNESS MATRIX

     THIS IS A LINEAR PERTURBATION STEP.
     ALL LOADS ARE DEFINED AS CHANGE IN LOAD TO THE REFERENCE STATE

          LARGE DISPLACEMENT THEORY WILL BE USED

     EXTRAPOLATION WILL NOT BE USED

     CHARACTERISTIC ELEMENT LENGTH      4.46    

     DETAILS REGARDING ACTUAL SOLUTION WAVEFRONT REQUESTED

     DETAILED OUTPUT OF DIAGNOSTICS TO DATABASE REQUESTED

     PRINT OF INCREMENT NUMBER, TIME, ETC., TO THE MESSAGE FILE EVERY     1  INCREMENTS

     ELEMENT OPERATIONS WILL NOT BE CARRIED OUT IN PARALLEL
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  137916
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.973e+10
        SOLVER ELAPSED TIME:  359ms

     CHECK POINT  START OF SOLVER     
 
	DMP LANCZOS RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
  
 COMPUTER PRECISION USED BY ABAQUS       2.22045e-16
 CONVERGENCE CRITERION FOR LANCZOS RUN   1.81899e-12
  
 NUMBER OF EQUATIONS                                                          137916
 NUMBER OF UNRESTRAINED DEGREES OF FREEDOM                                    137907
 HEURISTIC SCALE FOR THE FIRST NONZERO EIGENVALUES (PROBLEM SCALE)   1.80976e-05
 INITIAL SHIFT VALUE                                                 1.80976e-05
  
 NUMBER OF CPUS USED BY DIRECT SOLVER     8
  
 NUMBER OF NEGATIVE EIGENVALUES     0
 NUMBER OF POSITIVE EIGENVALUES    137916
 NUMBER OF NEGATIVE EIGENVALUES NOT ASSOCIATED WITH LAGRANGE MULTIPLIERS     0
 NUMBER OF LAGRANGE MULTIPLIERS     0
  
 COMPUTATIONAL INTERVAL FOR THE INITIAL LANCZOS RUN
 
 EIGENVALUES NEEDED TO THE RIGHT OF SHIFT VALUE    4
 EIGENVALUES NEEDED TO THE LEFT OF SHIFT VALUE     4
 RIGHT BOUNDARY OF THE COMPUTATIONAL INTERVAL   4.07522e+10
 LEFT BOUNDARY OF THE COMPUTATIONAL INTERVAL    0.00000e+00
 INITIAL BLOCK CONTAINS LINEARLY DEPENDENT VECTORS. REDUCING THE BLOCK SIZE ACCORDINGLY
  
 NEW BLOCK SIZE               3
  
 LANCZOS RUN TERMINATED. NUMBER OF STEPS:   30
 MAXIMUM NUMBER OF STEPS IS DONE
  
 NUMBER OF ACCEPTED EIGENVALUES    2
  
 ACCEPTED EIGENVALUES
   1.75326e-01  1.75326e-01
  
 FACTORIZATION WITH NEW SHIFT VALUE IS REQUIRED
  
 TRUST INTERVALS AFTER LANCZOS RUN AND COMPRESSION
  
 NUMBER OF TRUST INTERVALS    1
  
 -------------------------------------------------------------------------------------
 | KEY | INSIDE |      INERTIAS     |  SENTINELS  |   OUTSIDE   |  NEED TO FIND      |
 |      ENDS OF INTERVAL     |     ENDS OF SENTINEL      |   COMPUTATIONAL INTERVAL  |
 -------------------------------------------------------------------------------------
 |  +  |      0 |        0        0 |     0     0 |     0     0 |      4     4       |
 |  0.00000e+00  1.80976e-05 |  0.00000e+00  1.80976e-05 |  0.00000e+00  4.07522e+10 |
 -------------------------------------------------------------------------------------
  
 DATA FOR CHOOSING SHIFT
  
 NUMBER OF EIGENVALUES NEEDED IN THE PRIMARY TRUST INTERVAL    4
  
 NUMBER OF MODES FORMING SENTINEL TO THE RIGHT    2
 SHIFT RIGHT         1.87334e-01
  
 NUMBER OF MODES FORMING SENTINEL TO THE LEFT     0
 SHIFT LEFT         -1.75290e-01
  
 SHIFTING TO THE RIGHT DIRECTION
 NEW SHIFT           1.87334e-01
  
 NUMBER OF NEGATIVE EIGENVALUES     4
 NUMBER OF POSITIVE EIGENVALUES    137912
 NUMBER OF NEGATIVE EIGENVALUES NOT ASSOCIATED WITH LAGRANGE MULTIPLIERS     4
 NUMBER OF LAGRANGE MULTIPLIERS     0
  
 NEW LANCZOS RUN IS REQUIRED
  
 TYPE OF RUN: EXPAND THE TRUST INTERVAL TO THE RIGHT
 EIGENVALUES NEEDED TO THE RIGHT     0
 EIGENVALUES NEEDED TO THE LEFT      2
 RIGHT BOUNDARY OF THE INTERVAL   1.87334e-01
 LEFT BOUNDARY OF THE INTERVAL    1.75326e-01
  
 TRUST INTERVALS AFTER FACTORIZATION AND COMPRESSION
  
 -------------------------------------------------------------------------------------
 | KEY | INSIDE |      INERTIAS     |  SENTINELS  |   OUTSIDE   |  NEED TO FIND      |
 |      ENDS OF INTERVAL     |     ENDS OF SENTINEL      |   COMPUTATIONAL INTERVAL  |
 -------------------------------------------------------------------------------------
 |  +  |      0 |        0        0 |     0     2 |     0     2 |      4     4       |
 |  0.00000e+00  1.80976e-05 |  0.00000e+00  1.75326e-01 |  0.00000e+00  4.07522e+10 |
 -------------------------------------------------------------------------------------
 |  -  |      0 |        4        4 |     0     0 |     0     0 |      2     0       |
 |  1.87334e-01  1.87334e-01 |  1.87334e-01  1.87334e-01 |  1.75326e-01  1.87334e-01 |
 -------------------------------------------------------------------------------------
  
 LANCZOS RUN TERMINATED. NUMBER OF STEPS:    8
 ALL THE EIGENVALUES REQUESTED ON THIS LANCZOS RUN ARE FOUND
  
 NUMBER OF ACCEPTED EIGENVALUES    4
  
 ACCEPTED EIGENVALUES
   1.75326e-01  1.75326e-01  1.83248e-01  1.83248e-01
  
 THE REQUIRED NUMBER OF EIGENVALUES IS FOUND
  
 FINAL TRUST INTERVALS AFTER SUCCESSFUL LANCZOS RUN
  
 NUMBER OF TRUST INTERVALS    1
  
 -------------------------------------------------------------------------------------
 | KEY | INSIDE |      INERTIAS     |  SENTINELS  |   OUTSIDE   |  NEED TO FIND      |
 |      ENDS OF INTERVAL     |     ENDS OF SENTINEL      |   COMPUTATIONAL INTERVAL  |
 -------------------------------------------------------------------------------------
 |  +  |      4 |        0        4 |     0     0 |     0     0 |      4     0       |
 |  0.00000e+00  1.87334e-01 |  0.00000e+00  1.87334e-01 |  0.00000e+00  1.87334e-01 |
 -------------------------------------------------------------------------------------
  
 FIRST EIGENVALUE REQUESTED BY THE USER     1

 ***WARNING: THERE MAY BE MORE EIGENVALUES IN THE SPECIFIED RANGE THAN 
             REQUESTED. IF THE NUMBER OF EIGENVALUES WAS NOT EXPLICITLY 
             REQUESTED, SPECIFY THE MAXIMUM NUMBER OF EIGENVALUES TO BE 
             EXTRACTED.
  
 EIGENVALUES REQUESTED BY THE USER : 4
   1.75326e-01  1.75326e-01  1.83248e-01  1.83248e-01
  
 EIGENVALUE EXTRACTION USING THE LANCZOS EIGENSOLVER IS COMPLETE
 NUMBER OF LANCZOS RUNS       :   2
 NUMBER OF LANCZOS STEPS      :  38
 NUMBER OF FACTORIZATIONS     :   2
 NUMBER OF BACK SUBSTITUTIONS :  40

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =       4.E+01
       ELAPSED SYSTEM TIME (SEC)    =       5.E+00
       ELAPSED TOTAL CPU TIME (SEC) =       5.E+01
       ELAPSED WALLCLOCK TIME (SEC) =           18


          THE ANALYSIS HAS BEEN COMPLETED



     ANALYSIS SUMMARY:
     TOTAL OF         11  INCREMENTS
                       0  CUTBACKS IN AUTOMATIC INCREMENTATION
                      21  ITERATIONS INCLUDING CONTACT ITERATIONS IF PRESENT
                      62  PASSES THROUGH THE EQUATION SOLVER OF WHICH 
                      22  INVOLVE MATRIX DECOMPOSITION, INCLUDING
                       0  DECOMPOSITION(S) OF THE MASS MATRIX
                       1  REORDERING OF EQUATIONS TO MINIMIZE WAVEFRONT
                       0  ADDITIONAL RESIDUAL EVALUATIONS FOR LINE SEARCHES
                       0  ADDITIONAL OPERATOR EVALUATIONS FOR LINE SEARCHES
                       1  WARNING MESSAGES DURING USER INPUT PROCESSING
                       1  WARNING MESSAGES DURING ANALYSIS
                       0  ANALYSIS WARNINGS ARE NUMERICAL PROBLEM MESSAGES
                       0  ANALYSIS WARNINGS ARE NEGATIVE EIGENVALUE MESSAGES
                       0  ERROR MESSAGES



     JOB TIME SUMMARY
       USER TIME (SEC)      =       2.E+02
       SYSTEM TIME (SEC)    =       1.E+01
       TOTAL CPU TIME (SEC) =       2.E+02
       WALLCLOCK TIME (SEC) =           47
       MEMORY PEAK (GB)     =            2
