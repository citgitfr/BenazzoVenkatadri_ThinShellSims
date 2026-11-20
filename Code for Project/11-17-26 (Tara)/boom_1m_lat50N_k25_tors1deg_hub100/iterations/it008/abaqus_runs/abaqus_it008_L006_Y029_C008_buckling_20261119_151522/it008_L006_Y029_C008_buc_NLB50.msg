1

   Abaqus 2026                                  Date 19-Nov-2026   Time 15:17:22
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
                              2            2816
                              3            2816
                              4            3072
                              5            2864
                              6            3072
                              7            2816
                              8            2816
      SPARSE STORAGE WAS USED FOR NODAL DATA ON WORKER THREADS
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  137916
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.973e+10
        SOLVER ELAPSED TIME:  353ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      7.587E-02   TIME AVG. FORCE       7.587E-02
 LARGEST SCALED RESIDUAL FORCE     -7.906E-03   AT NODE      22972   DOF  2
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -7.906E-03
 LARGEST INCREMENT OF DISP.         9.244E-02   AT NODE         61   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        9.244E-02   AT NODE         61   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     9.022E-03   TIME AVG. MOMENT      9.022E-03
 LARGEST SCALED RESIDUAL MOMENT    -6.693E-04   AT NODE      15900   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT    -6.693E-04
 LARGEST INCREMENT OF ROTATION      2.371E-04   AT NODE      13474   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     2.371E-04   AT NODE      13474   DOF  6
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  137916
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.973e+10
        SOLVER ELAPSED TIME:  308ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                      7.587E-02   TIME AVG. FORCE       7.587E-02
 LARGEST SCALED RESIDUAL FORCE     -1.193E-07   AT NODE      15444   DOF  2
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -1.193E-07
 LARGEST INCREMENT OF DISP.         9.244E-02   AT NODE         61   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -1.323E-04   AT NODE      15455   DOF  2
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     9.022E-03   TIME AVG. MOMENT      9.022E-03
 LARGEST SCALED RESIDUAL MOMENT     2.121E-08   AT NODE          2   DOF  6
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     1.803E-06
 LARGEST INCREMENT OF ROTATION      2.372E-04   AT NODE      13474   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     5.030E-06   AT NODE      14582   DOF  4
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF ROTATION CORRECTION   -1.594E-10
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
        SOLVER ELAPSED TIME:  288ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      0.152       TIME AVG. FORCE       0.114    
 LARGEST SCALED RESIDUAL FORCE     -1.565E-02   AT NODE      22972   DOF  2
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -1.565E-02
 LARGEST INCREMENT OF DISP.         9.244E-02   AT NODE         61   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -2.652E-04   AT NODE      15459   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                      380.       TIME AVG. MOMENT       190.    
 LARGEST SCALED RESIDUAL MOMENT     1.358E-03   AT NODE      21206   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     1.358E-03
 LARGEST INCREMENT OF ROTATION      2.374E-04   AT NODE      13474   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -1.014E-05   AT NODE      15449   DOF  4
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  137916
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.973e+10
        SOLVER ELAPSED TIME:  305ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                      0.152       TIME AVG. FORCE       0.114    
 LARGEST SCALED RESIDUAL FORCE      1.012E-08   AT NODE       6603   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      1.012E-08
 LARGEST INCREMENT OF DISP.         9.244E-02   AT NODE         61   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -3.037E-06   AT NODE      15346   DOF  2
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                      380.       TIME AVG. MOMENT       190.    
 LARGEST SCALED RESIDUAL MOMENT     1.608E-08   AT NODE          2   DOF  6
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     1.366E-06
 LARGEST INCREMENT OF ROTATION      2.374E-04   AT NODE      13474   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -3.037E-07   AT NODE       4803   DOF  4
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
        SOLVER ELAPSED TIME:  282ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      0.228       TIME AVG. FORCE       0.152    
 LARGEST SCALED RESIDUAL FORCE     -1.565E-02   AT NODE      22972   DOF  2
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -1.565E-02
 LARGEST INCREMENT OF DISP.         9.245E-02   AT NODE         61   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -2.703E-04   AT NODE      15459   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                      571.       TIME AVG. MOMENT       317.    
 LARGEST SCALED RESIDUAL MOMENT     1.358E-03   AT NODE      21206   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     1.358E-03
 LARGEST INCREMENT OF ROTATION      2.376E-04   AT NODE      13474   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -1.034E-05   AT NODE      15445   DOF  4
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  137916
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.973e+10
        SOLVER ELAPSED TIME:  291ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                      0.228       TIME AVG. FORCE       0.152    
 LARGEST SCALED RESIDUAL FORCE      1.252E-08   AT NODE      15019   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      1.252E-08
 LARGEST INCREMENT OF DISP.         9.245E-02   AT NODE         61   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -3.086E-06   AT NODE      15346   DOF  2
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                      571.       TIME AVG. MOMENT       317.    
 LARGEST SCALED RESIDUAL MOMENT     3.463E-08   AT NODE          2   DOF  6
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     2.943E-06
 LARGEST INCREMENT OF ROTATION      2.377E-04   AT NODE      13474   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -3.037E-07   AT NODE       4803   DOF  4
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
        SOLVER ELAPSED TIME:  289ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      0.304       TIME AVG. FORCE       0.190    
 LARGEST SCALED RESIDUAL FORCE     -1.565E-02   AT NODE      22972   DOF  2
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -1.565E-02
 LARGEST INCREMENT OF DISP.         9.245E-02   AT NODE         61   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -2.756E-04   AT NODE      15459   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                      761.       TIME AVG. MOMENT       428.    
 LARGEST SCALED RESIDUAL MOMENT     1.358E-03   AT NODE      21206   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     1.358E-03
 LARGEST INCREMENT OF ROTATION      2.378E-04   AT NODE      13474   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -1.054E-05   AT NODE      15445   DOF  4
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  137916
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.973e+10
        SOLVER ELAPSED TIME:  297ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                      0.304       TIME AVG. FORCE       0.190    
 LARGEST SCALED RESIDUAL FORCE      9.130E-09   AT NODE      13471   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      9.130E-09
 LARGEST INCREMENT OF DISP.         9.245E-02   AT NODE         61   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -3.138E-06   AT NODE      15350   DOF  2
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                      761.       TIME AVG. MOMENT       428.    
 LARGEST SCALED RESIDUAL MOMENT     4.693E-08   AT NODE          2   DOF  6
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     3.989E-06
 LARGEST INCREMENT OF ROTATION      2.379E-04   AT NODE      13474   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -3.038E-07   AT NODE       4803   DOF  4
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
        SOLVER ELAPSED TIME:  289ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      0.380       TIME AVG. FORCE       0.228    
 LARGEST SCALED RESIDUAL FORCE     -1.565E-02   AT NODE      22972   DOF  2
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -1.565E-02
 LARGEST INCREMENT OF DISP.         9.246E-02   AT NODE         61   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -2.812E-04   AT NODE      14576   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                      951.       TIME AVG. MOMENT       533.    
 LARGEST SCALED RESIDUAL MOMENT     1.358E-03   AT NODE      21206   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     1.358E-03
 LARGEST INCREMENT OF ROTATION      2.381E-04   AT NODE      13474   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -1.076E-05   AT NODE      15445   DOF  4
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  137916
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.973e+10
        SOLVER ELAPSED TIME:  290ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                      0.380       TIME AVG. FORCE       0.228    
 LARGEST SCALED RESIDUAL FORCE      1.117E-08   AT NODE      23050   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      1.117E-08
 LARGEST INCREMENT OF DISP.         9.246E-02   AT NODE         61   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -3.192E-06   AT NODE      15354   DOF  2
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                      951.       TIME AVG. MOMENT       533.    
 LARGEST SCALED RESIDUAL MOMENT     3.541E-08   AT NODE          2   DOF  6
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     3.010E-06
 LARGEST INCREMENT OF ROTATION      2.381E-04   AT NODE      13474   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -3.039E-07   AT NODE       4803   DOF  4
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
        SOLVER ELAPSED TIME:  303ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      0.455       TIME AVG. FORCE       0.266    
 LARGEST SCALED RESIDUAL FORCE     -1.565E-02   AT NODE      22972   DOF  2
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -1.565E-02
 LARGEST INCREMENT OF DISP.         9.246E-02   AT NODE         61   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -2.869E-04   AT NODE      14576   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     1.141E+03   TIME AVG. MOMENT       634.    
 LARGEST SCALED RESIDUAL MOMENT     1.358E-03   AT NODE      21206   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     1.358E-03
 LARGEST INCREMENT OF ROTATION      2.383E-04   AT NODE      13474   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -1.098E-05   AT NODE      15445   DOF  4
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  137916
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.973e+10
        SOLVER ELAPSED TIME:  312ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                      0.455       TIME AVG. FORCE       0.266    
 LARGEST SCALED RESIDUAL FORCE      1.025E-08   AT NODE      22842   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      1.025E-08
 LARGEST INCREMENT OF DISP.         9.246E-02   AT NODE         61   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -3.252E-06   AT NODE      15363   DOF  2
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     1.141E+03   TIME AVG. MOMENT       634.    
 LARGEST SCALED RESIDUAL MOMENT     4.744E-08   AT NODE          2   DOF  6
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     4.032E-06
 LARGEST INCREMENT OF ROTATION      2.383E-04   AT NODE      13474   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -3.040E-07   AT NODE       4803   DOF  4
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
        SOLVER ELAPSED TIME:  298ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      0.531       TIME AVG. FORCE       0.304    
 LARGEST SCALED RESIDUAL FORCE     -1.565E-02   AT NODE      22972   DOF  2
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -1.565E-02
 LARGEST INCREMENT OF DISP.         9.247E-02   AT NODE         61   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -2.928E-04   AT NODE      14576   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     1.332E+03   TIME AVG. MOMENT       734.    
 LARGEST SCALED RESIDUAL MOMENT     1.359E-03   AT NODE      21206   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     1.359E-03
 LARGEST INCREMENT OF ROTATION      2.385E-04   AT NODE      13474   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -1.121E-05   AT NODE      15441   DOF  4
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  137916
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.973e+10
        SOLVER ELAPSED TIME:  296ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                      0.531       TIME AVG. FORCE       0.304    
 LARGEST SCALED RESIDUAL FORCE      1.052E-08   AT NODE      14133   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      1.052E-08
 LARGEST INCREMENT OF DISP.         9.247E-02   AT NODE         61   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -3.317E-06   AT NODE      15367   DOF  2
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     1.332E+03   TIME AVG. MOMENT       734.    
 LARGEST SCALED RESIDUAL MOMENT    -3.454E-08   AT NODE      22751   DOF  5
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT    -3.454E-08
 LARGEST INCREMENT OF ROTATION      2.386E-04   AT NODE      13474   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -3.040E-07   AT NODE       4803   DOF  4
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
        SOLVER ELAPSED TIME:  303ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      0.607       TIME AVG. FORCE       0.342    
 LARGEST SCALED RESIDUAL FORCE     -1.565E-02   AT NODE      22972   DOF  2
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -1.565E-02
 LARGEST INCREMENT OF DISP.         9.248E-02   AT NODE         61   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -2.990E-04   AT NODE      14576   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     1.522E+03   TIME AVG. MOMENT       832.    
 LARGEST SCALED RESIDUAL MOMENT     1.359E-03   AT NODE      21206   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     1.359E-03
 LARGEST INCREMENT OF ROTATION      2.388E-04   AT NODE      13474   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -1.145E-05   AT NODE      15441   DOF  4
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  137916
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.973e+10
        SOLVER ELAPSED TIME:  301ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                      0.607       TIME AVG. FORCE       0.342    
 LARGEST SCALED RESIDUAL FORCE      1.281E-08   AT NODE       3446   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      1.281E-08
 LARGEST INCREMENT OF DISP.         9.248E-02   AT NODE         61   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -3.384E-06   AT NODE      15367   DOF  2
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     1.522E+03   TIME AVG. MOMENT       832.    
 LARGEST SCALED RESIDUAL MOMENT    -3.947E-08   AT NODE      22751   DOF  5
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT    -3.947E-08
 LARGEST INCREMENT OF ROTATION      2.388E-04   AT NODE      13474   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -3.410E-07   AT NODE       7275   DOF  4
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
        SOLVER ELAPSED TIME:  311ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      0.683       TIME AVG. FORCE       0.380    
 LARGEST SCALED RESIDUAL FORCE     -1.565E-02   AT NODE      22972   DOF  2
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -1.565E-02
 LARGEST INCREMENT OF DISP.         9.249E-02   AT NODE         61   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -3.053E-04   AT NODE      14580   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     1.712E+03   TIME AVG. MOMENT       930.    
 LARGEST SCALED RESIDUAL MOMENT     1.359E-03   AT NODE      21206   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     1.359E-03
 LARGEST INCREMENT OF ROTATION      2.390E-04   AT NODE      13474   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -1.170E-05   AT NODE      15441   DOF  4
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  137916
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.973e+10
        SOLVER ELAPSED TIME:  374ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                      0.683       TIME AVG. FORCE       0.380    
 LARGEST SCALED RESIDUAL FORCE      9.311E-09   AT NODE      22804   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      9.311E-09
 LARGEST INCREMENT OF DISP.         9.249E-02   AT NODE         61   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -3.729E-06   AT NODE       7275   DOF  3
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     1.712E+03   TIME AVG. MOMENT       930.    
 LARGEST SCALED RESIDUAL MOMENT    -4.451E-08   AT NODE      22751   DOF  5
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT    -4.451E-08
 LARGEST INCREMENT OF ROTATION      2.391E-04   AT NODE      13474   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -4.015E-07   AT NODE       7275   DOF  4
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
        SOLVER ELAPSED TIME:  381ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      0.759       TIME AVG. FORCE       0.417    
 LARGEST SCALED RESIDUAL FORCE     -1.566E-02   AT NODE      22972   DOF  2
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -1.566E-02
 LARGEST INCREMENT OF DISP.         9.250E-02   AT NODE         61   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -3.120E-04   AT NODE      14580   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     1.902E+03   TIME AVG. MOMENT      1.027E+03
 LARGEST SCALED RESIDUAL MOMENT     1.359E-03   AT NODE      21206   DOF  6
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT     1.359E-03
 LARGEST INCREMENT OF ROTATION      2.393E-04   AT NODE      13474   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -1.196E-05   AT NODE      15441   DOF  4
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC HYBRID DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  137916
        NUMBER OF RHS:        1
        NUMBER OF FLOPS:      1.973e+10
        SOLVER ELAPSED TIME:  384ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                      0.759       TIME AVG. FORCE       0.417    
 LARGEST SCALED RESIDUAL FORCE      9.746E-09   AT NODE      21868   DOF  1
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      9.746E-09
 LARGEST INCREMENT OF DISP.         9.250E-02   AT NODE         61   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -4.449E-06   AT NODE       7275   DOF  3
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     1.902E+03   TIME AVG. MOMENT      1.027E+03
 LARGEST SCALED RESIDUAL MOMENT    -4.944E-08   AT NODE      22751   DOF  5
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT    -4.944E-08
 LARGEST INCREMENT OF ROTATION      2.393E-04   AT NODE      13474   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -4.816E-07   AT NODE       7275   DOF  4
   INSTANCE: SHELL-1                                                                         
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED

 ITERATION SUMMARY FOR THE INCREMENT:   2 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  2 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  0.100    ,  FRACTION OF STEP COMPLETED   1.00    
 STEP TIME COMPLETED        1.00    ,  TOTAL TIME COMPLETED         1.00    
1

   Abaqus 2026                                  Date 19-Nov-2026   Time 15:17:37
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
        SOLVER ELAPSED TIME:  390ms

     CHECK POINT  START OF SOLVER     
 
	DMP LANCZOS RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
  
 COMPUTER PRECISION USED BY ABAQUS       2.22045e-16
 CONVERGENCE CRITERION FOR LANCZOS RUN   1.81899e-12
  
 NUMBER OF EQUATIONS                                                          137916
 NUMBER OF UNRESTRAINED DEGREES OF FREEDOM                                    137907
 HEURISTIC SCALE FOR THE FIRST NONZERO EIGENVALUES (PROBLEM SCALE)   1.84029e-05
 INITIAL SHIFT VALUE                                                 1.84029e-05
  
 NUMBER OF CPUS USED BY DIRECT SOLVER     8
  
 NUMBER OF NEGATIVE EIGENVALUES     0
 NUMBER OF POSITIVE EIGENVALUES    137916
 NUMBER OF NEGATIVE EIGENVALUES NOT ASSOCIATED WITH LAGRANGE MULTIPLIERS     0
 NUMBER OF LAGRANGE MULTIPLIERS     0
  
 COMPUTATIONAL INTERVAL FOR THE INITIAL LANCZOS RUN
 
 EIGENVALUES NEEDED TO THE RIGHT OF SHIFT VALUE    4
 EIGENVALUES NEEDED TO THE LEFT OF SHIFT VALUE     4
 RIGHT BOUNDARY OF THE COMPUTATIONAL INTERVAL   4.14397e+10
 LEFT BOUNDARY OF THE COMPUTATIONAL INTERVAL    0.00000e+00
 INITIAL BLOCK CONTAINS LINEARLY DEPENDENT VECTORS. REDUCING THE BLOCK SIZE ACCORDINGLY
  
 NEW BLOCK SIZE               3
  
 LANCZOS RUN TERMINATED. NUMBER OF STEPS:   30
 MAXIMUM NUMBER OF STEPS IS DONE
  
 NUMBER OF ACCEPTED EIGENVALUES    0
  
 FACTORIZATION WITH NEW SHIFT VALUE IS REQUIRED
  
 TRUST INTERVALS AFTER LANCZOS RUN AND COMPRESSION
  
 NUMBER OF TRUST INTERVALS    1
  
 -------------------------------------------------------------------------------------
 | KEY | INSIDE |      INERTIAS     |  SENTINELS  |   OUTSIDE   |  NEED TO FIND      |
 |      ENDS OF INTERVAL     |     ENDS OF SENTINEL      |   COMPUTATIONAL INTERVAL  |
 -------------------------------------------------------------------------------------
 |  +  |      0 |        0        0 |     0     0 |     0     0 |      4     4       |
 |  0.00000e+00  1.84029e-05 |  0.00000e+00  1.84029e-05 |  0.00000e+00  4.14397e+10 |
 -------------------------------------------------------------------------------------
  
 DATA FOR CHOOSING SHIFT
  
 NUMBER OF EIGENVALUES NEEDED IN THE PRIMARY TRUST INTERVAL    4
  
 NUMBER OF MODES FORMING SENTINEL TO THE RIGHT    0
 SHIFT RIGHT         4.79144e-01
  
 NUMBER OF MODES FORMING SENTINEL TO THE LEFT     0
 SHIFT LEFT         -1.65626e-04
  
 SHIFTING TO THE RIGHT DIRECTION
 NEW SHIFT           4.79144e-01
  
 NUMBER OF NEGATIVE EIGENVALUES     2
 NUMBER OF POSITIVE EIGENVALUES    137914
 NUMBER OF NEGATIVE EIGENVALUES NOT ASSOCIATED WITH LAGRANGE MULTIPLIERS     2
 NUMBER OF LAGRANGE MULTIPLIERS     0
  
 NEW LANCZOS RUN IS REQUIRED
  
 TYPE OF RUN: EXPAND THE TRUST INTERVAL TO THE RIGHT
 EIGENVALUES NEEDED TO THE RIGHT     2
 EIGENVALUES NEEDED TO THE LEFT      2
 RIGHT BOUNDARY OF THE INTERVAL   4.14397e+10
 LEFT BOUNDARY OF THE INTERVAL    1.84029e-05
  
 TRUST INTERVALS AFTER FACTORIZATION AND COMPRESSION
  
 -------------------------------------------------------------------------------------
 | KEY | INSIDE |      INERTIAS     |  SENTINELS  |   OUTSIDE   |  NEED TO FIND      |
 |      ENDS OF INTERVAL     |     ENDS OF SENTINEL      |   COMPUTATIONAL INTERVAL  |
 -------------------------------------------------------------------------------------
 |  +  |      0 |        0        0 |     0     0 |     0     0 |      4     4       |
 |  0.00000e+00  1.84029e-05 |  0.00000e+00  1.84029e-05 |  0.00000e+00  4.14397e+10 |
 -------------------------------------------------------------------------------------
 |  -  |      0 |        2        2 |     0     0 |     0     0 |      2     2       |
 |  4.79144e-01  4.79144e-01 |  4.79144e-01  4.79144e-01 |  1.84029e-05  4.14397e+10 |
 -------------------------------------------------------------------------------------
  
 LANCZOS RUN TERMINATED. NUMBER OF STEPS:    9
 ALL THE EIGENVALUES REQUESTED ON THIS LANCZOS RUN ARE FOUND
  
 NUMBER OF ACCEPTED EIGENVALUES    4
  
 ACCEPTED EIGENVALUES
   4.79058e-01  4.79058e-01  4.85903e-01  4.85905e-01
  
 FACTORIZATION WITH NEW SHIFT VALUE IS REQUIRED
  
 TRUST INTERVALS AFTER LANCZOS RUN AND COMPRESSION
  
 NUMBER OF TRUST INTERVALS    1
  
 -------------------------------------------------------------------------------------
 | KEY | INSIDE |      INERTIAS     |  SENTINELS  |   OUTSIDE   |  NEED TO FIND      |
 |      ENDS OF INTERVAL     |     ENDS OF SENTINEL      |   COMPUTATIONAL INTERVAL  |
 -------------------------------------------------------------------------------------
 |  +  |      2 |        0        2 |     0     0 |     0     0 |      4     2       |
 |  0.00000e+00  4.79144e-01 |  0.00000e+00  4.79144e-01 |  0.00000e+00  4.14397e+10 |
 -------------------------------------------------------------------------------------
  
 DATA FOR CHOOSING SHIFT
  
 NUMBER OF EIGENVALUES NEEDED IN THE PRIMARY TRUST INTERVAL    2
  
 NUMBER OF MODES FORMING SENTINEL TO THE RIGHT    2
 SHIFT RIGHT         4.89462e-01
  
 NUMBER OF MODES FORMING SENTINEL TO THE LEFT     2
 SHIFT LEFT          4.78973e-01
  
 SHIFTING TO THE RIGHT DIRECTION
 NEW SHIFT           4.89462e-01
  
 NUMBER OF NEGATIVE EIGENVALUES     4
 NUMBER OF POSITIVE EIGENVALUES    137912
 NUMBER OF NEGATIVE EIGENVALUES NOT ASSOCIATED WITH LAGRANGE MULTIPLIERS     4
 NUMBER OF LAGRANGE MULTIPLIERS     0
  
 THE REQUIRED NUMBER OF EIGENVALUES IS FOUND
  
 FINAL TRUST INTERVAL
  
 -------------------------------------------------------------------------------------
 | KEY | INSIDE |      INERTIAS     |  SENTINELS  |   OUTSIDE   |  NEED TO FIND      |
 |      ENDS OF INTERVAL     |     ENDS OF SENTINEL      |   COMPUTATIONAL INTERVAL  |
 -------------------------------------------------------------------------------------
 |  +  |      4 |        0        4 |     0     0 |     0     0 |      4     0       |
 |  0.00000e+00  4.89462e-01 |  0.00000e+00  4.89462e-01 |  0.00000e+00  4.89462e-01 |
 -------------------------------------------------------------------------------------
  
 FIRST EIGENVALUE REQUESTED BY THE USER     1

 ***WARNING: THERE MAY BE MORE EIGENVALUES IN THE SPECIFIED RANGE THAN 
             REQUESTED. IF THE NUMBER OF EIGENVALUES WAS NOT EXPLICITLY 
             REQUESTED, SPECIFY THE MAXIMUM NUMBER OF EIGENVALUES TO BE 
             EXTRACTED.
  
 EIGENVALUES REQUESTED BY THE USER : 4
   4.79058e-01  4.79058e-01  4.85903e-01  4.85905e-01
  
 EIGENVALUE EXTRACTION USING THE LANCZOS EIGENSOLVER IS COMPLETE
 NUMBER OF LANCZOS RUNS       :   2
 NUMBER OF LANCZOS STEPS      :  39
 NUMBER OF FACTORIZATIONS     :   3
 NUMBER OF BACK SUBSTITUTIONS :  41

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =       3.E+01
       ELAPSED SYSTEM TIME (SEC)    =       3.E+00
       ELAPSED TOTAL CPU TIME (SEC) =       4.E+01
       ELAPSED WALLCLOCK TIME (SEC) =           16


          THE ANALYSIS HAS BEEN COMPLETED



     ANALYSIS SUMMARY:
     TOTAL OF         11  INCREMENTS
                       0  CUTBACKS IN AUTOMATIC INCREMENTATION
                      21  ITERATIONS INCLUDING CONTACT ITERATIONS IF PRESENT
                      64  PASSES THROUGH THE EQUATION SOLVER OF WHICH 
                      23  INVOLVE MATRIX DECOMPOSITION, INCLUDING
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
       USER TIME (SEC)      =       1.E+02
       SYSTEM TIME (SEC)    =       7.E+00
       TOTAL CPU TIME (SEC) =       1.E+02
       WALLCLOCK TIME (SEC) =           40
       MEMORY PEAK (GB)     =            2
