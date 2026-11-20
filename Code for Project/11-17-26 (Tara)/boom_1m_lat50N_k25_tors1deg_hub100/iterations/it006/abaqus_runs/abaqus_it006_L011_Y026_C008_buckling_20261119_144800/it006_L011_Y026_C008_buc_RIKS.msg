1

   Abaqus 2026                                  Date 19-Nov-2026   Time 14:54:23
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

     THE STEP ENDS WHEN DISPLACEMENT AT NODE          2 INSTANCE                                                                                  DOF  6 EXCEEDS   0.100    

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

     CHARACTERISTIC ELEMENT LENGTH      4.46    

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
                              1            2560
                              2            3072
                              3            2816
                              4            3328
                              5            3072
                              6            2816
                              7            2608
                              8            2816
      SPARSE STORAGE WAS USED FOR NODAL DATA ON WORKER THREADS
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  137916
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      1.973e+10
        SOLVER ELAPSED TIME:  186ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      7.885E-02   TIME AVG. FORCE       7.885E-02
 LARGEST SCALED RESIDUAL FORCE     -0.118       AT NODE          2   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE     -0.118    
 LARGEST INCREMENT OF DISP.         9.139E-02   AT NODE          1   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        9.139E-02   AT NODE          1   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     9.464E-03   TIME AVG. MOMENT      9.464E-03
 LARGEST SCALED RESIDUAL MOMENT     2.106E-04   AT NODE          2   DOF  6
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     2.106E-04
 LARGEST INCREMENT OF ROTATION      2.146E-04   AT NODE       8168   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     2.146E-04   AT NODE       8168   DOF  6
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  137916
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      1.973e+10
        SOLVER ELAPSED TIME:  165ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                      7.884E-02   TIME AVG. FORCE       7.884E-02
 LARGEST SCALED RESIDUAL FORCE     -6.889E-03   AT NODE      22972   DOF  2
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -6.889E-03
 LARGEST INCREMENT OF DISP.         9.140E-02   AT NODE         61   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -8.724E-05   AT NODE      14568   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     9.464E-03   TIME AVG. MOMENT      9.464E-03
 LARGEST SCALED RESIDUAL MOMENT    -6.843E-03   AT NODE          2   DOF  6
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT    -6.843E-03
 LARGEST INCREMENT OF ROTATION      2.146E-04   AT NODE      15903   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     3.583E-06   AT NODE       7183   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  137916
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      1.973e+10
        SOLVER ELAPSED TIME:  204ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                      7.884E-02   TIME AVG. FORCE       7.884E-02
 LARGEST SCALED RESIDUAL FORCE     -4.208E-08   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE     -4.208E-08
 LARGEST INCREMENT OF DISP.         9.140E-02   AT NODE         61   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -1.276E-06   AT NODE      14146   DOF  2
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     9.464E-03   TIME AVG. MOMENT      9.464E-03
 LARGEST SCALED RESIDUAL MOMENT     6.842E-07   AT NODE          2   DOF  6
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     6.842E-07
 LARGEST INCREMENT OF ROTATION      2.146E-04   AT NODE      15903   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -1.750E-07   AT NODE      11704   DOF  5
   INSTANCE: SHELL-1                                                                         
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED

 ITERATION SUMMARY FOR THE INCREMENT:   3 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  3 ARE EQUILIBRIUM ITERATIONS.


                                INCREMENT     1 SUMMARY


     CURRENT LOAD PROPORTIONALITY FACTOR         5.0000E-02
     TOTAL ARC LENGTH   5.000E-02, INCREMENT OF ARC LENGTH   5.000E-02


  INCREMENT     2 STARTS. ATTEMPT NUMBER  1
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  137916
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      1.973e+10
        SOLVER ELAPSED TIME:  228ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      0.158       TIME AVG. FORCE       0.119    
 LARGEST SCALED RESIDUAL FORCE     -0.116       AT NODE          2   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE     -0.116    
 LARGEST INCREMENT OF DISP.         9.140E-02   AT NODE         61   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        9.140E-02   AT NODE         61   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     5.221E+03   TIME AVG. MOMENT      2.610E+03
 LARGEST SCALED RESIDUAL MOMENT     2.438E-03   AT NODE          2   DOF  6
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     2.438E-03
 LARGEST INCREMENT OF ROTATION      2.147E-04   AT NODE      15903   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     2.147E-04   AT NODE      15903   DOF  6
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF ROTATION CORRECTION    2.025E-10
          MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  137916
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      1.973e+10
        SOLVER ELAPSED TIME:  158ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                      0.158       TIME AVG. FORCE       0.118    
 LARGEST SCALED RESIDUAL FORCE     -6.751E-03   AT NODE      22972   DOF  2
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -6.751E-03
 LARGEST INCREMENT OF DISP.         9.140E-02   AT NODE         61   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -8.778E-05   AT NODE      14568   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     5.221E+03   TIME AVG. MOMENT      2.610E+03
 LARGEST SCALED RESIDUAL MOMENT    -6.632E-03   AT NODE          2   DOF  6
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT    -6.632E-03
 LARGEST INCREMENT OF ROTATION      2.147E-04   AT NODE      15903   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     4.108E-06   AT NODE       7170   DOF  4
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  137916
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      1.973e+10
        SOLVER ELAPSED TIME:  169ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                      0.158       TIME AVG. FORCE       0.118    
 LARGEST SCALED RESIDUAL FORCE     -5.394E-08   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE     -5.394E-08
 LARGEST INCREMENT OF DISP.         9.140E-02   AT NODE         61   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -1.252E-06   AT NODE      14146   DOF  2
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     5.221E+03   TIME AVG. MOMENT      2.610E+03
 LARGEST SCALED RESIDUAL MOMENT    -1.585E-06   AT NODE          2   DOF  6
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT    -1.585E-06
 LARGEST INCREMENT OF ROTATION      2.148E-04   AT NODE      15903   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -1.716E-07   AT NODE      11704   DOF  5
   INSTANCE: SHELL-1                                                                         
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED
          ARC LENGTH INCREMENT MAY NOW INCREASE TO    7.500E-02

 ITERATION SUMMARY FOR THE INCREMENT:   3 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  3 ARE EQUILIBRIUM ITERATIONS.


                                INCREMENT     2 SUMMARY


     CURRENT LOAD PROPORTIONALITY FACTOR         0.1000    
     TOTAL ARC LENGTH   0.100    , INCREMENT OF ARC LENGTH   5.000E-02


  INCREMENT     3 STARTS. ATTEMPT NUMBER  1
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  137916
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      1.973e+10
        SOLVER ELAPSED TIME:  255ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      0.277       TIME AVG. FORCE       0.171    
 LARGEST SCALED RESIDUAL FORCE     -0.261       AT NODE          2   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE     -0.261    
 LARGEST INCREMENT OF DISP.         0.137       AT NODE         61   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        0.137       AT NODE         61   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     9.137E+03   TIME AVG. MOMENT      4.786E+03
 LARGEST SCALED RESIDUAL MOMENT     1.067E-02   AT NODE          2   DOF  6
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     1.067E-02
 LARGEST INCREMENT OF ROTATION      3.223E-04   AT NODE      15903   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     3.223E-04   AT NODE      15903   DOF  6
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF ROTATION CORRECTION    8.872E-10
          MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  137916
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      1.973e+10
        SOLVER ELAPSED TIME:  188ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                      0.276       TIME AVG. FORCE       0.171    
 LARGEST SCALED RESIDUAL FORCE     -1.519E-02   AT NODE      22972   DOF  2
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -1.519E-02
 LARGEST INCREMENT OF DISP.         0.137       AT NODE         61   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -2.015E-04   AT NODE      14568   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     9.136E+03   TIME AVG. MOMENT      4.786E+03
 LARGEST SCALED RESIDUAL MOMENT    -2.238E-02   AT NODE          2   DOF  6
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT    -2.238E-02
 LARGEST INCREMENT OF ROTATION      3.224E-04   AT NODE      15903   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.108E-05   AT NODE       7170   DOF  4
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  137916
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      1.973e+10
        SOLVER ELAPSED TIME:  190ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                      0.276       TIME AVG. FORCE       0.171    
 LARGEST SCALED RESIDUAL FORCE     -2.639E-07   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE     -2.639E-07
 LARGEST INCREMENT OF DISP.         0.137       AT NODE         61   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -2.821E-06   AT NODE      14146   DOF  2
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     9.136E+03   TIME AVG. MOMENT      4.786E+03
 LARGEST SCALED RESIDUAL MOMENT    -4.407E-07   AT NODE          2   DOF  6
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT    -4.407E-07
 LARGEST INCREMENT OF ROTATION      3.224E-04   AT NODE      15903   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -3.863E-07   AT NODE      11704   DOF  5
   INSTANCE: SHELL-1                                                                         
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED
          ARC LENGTH INCREMENT MAY NOW INCREASE TO    0.100    

 ITERATION SUMMARY FOR THE INCREMENT:   3 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  3 ARE EQUILIBRIUM ITERATIONS.


                                INCREMENT     3 SUMMARY


     CURRENT LOAD PROPORTIONALITY FACTOR         0.1750    
     TOTAL ARC LENGTH   0.175    , INCREMENT OF ARC LENGTH   7.500E-02


  INCREMENT     4 STARTS. ATTEMPT NUMBER  1
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  137916
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      1.973e+10
        SOLVER ELAPSED TIME:  283ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      0.435       TIME AVG. FORCE       0.237    
 LARGEST SCALED RESIDUAL FORCE     -0.464       AT NODE          2   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE     -0.464    
 LARGEST INCREMENT OF DISP.         0.183       AT NODE         61   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        0.183       AT NODE         61   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     2.871E+03   TIME AVG. MOMENT      4.307E+03
 LARGEST SCALED RESIDUAL MOMENT     3.266E-02   AT NODE          2   DOF  6
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     3.266E-02
 LARGEST INCREMENT OF ROTATION      4.301E-04   AT NODE      15903   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     4.301E-04   AT NODE      15903   DOF  6
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF ROTATION CORRECTION    2.718E-09
          MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  137916
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      1.973e+10
        SOLVER ELAPSED TIME:  254ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                      0.434       TIME AVG. FORCE       0.237    
 LARGEST SCALED RESIDUAL FORCE     -2.701E-02   AT NODE      22972   DOF  2
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -2.701E-02
 LARGEST INCREMENT OF DISP.         0.183       AT NODE         61   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -3.700E-04   AT NODE      15454   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     2.871E+03   TIME AVG. MOMENT      4.307E+03
 LARGEST SCALED RESIDUAL MOMENT    -5.304E-02   AT NODE          2   DOF  6
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT    -5.304E-02
 LARGEST INCREMENT OF ROTATION      4.303E-04   AT NODE      15903   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     2.607E-05   AT NODE       7170   DOF  4
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  137916
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      1.973e+10
        SOLVER ELAPSED TIME:  183ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                      0.434       TIME AVG. FORCE       0.237    
 LARGEST SCALED RESIDUAL FORCE     -8.297E-07   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE     -8.297E-07
 LARGEST INCREMENT OF DISP.         0.183       AT NODE         61   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -5.024E-06   AT NODE      14146   DOF  2
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     2.871E+03   TIME AVG. MOMENT      4.307E+03
 LARGEST SCALED RESIDUAL MOMENT     6.080E-07   AT NODE          2   DOF  6
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     6.080E-07
 LARGEST INCREMENT OF ROTATION      4.304E-04   AT NODE      15903   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -6.875E-07   AT NODE      11704   DOF  5
   INSTANCE: SHELL-1                                                                         
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED

 ITERATION SUMMARY FOR THE INCREMENT:   3 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  3 ARE EQUILIBRIUM ITERATIONS.


                                INCREMENT     4 SUMMARY


     CURRENT LOAD PROPORTIONALITY FACTOR         0.2750    
     TOTAL ARC LENGTH   0.275    , INCREMENT OF ARC LENGTH   0.100    


  INCREMENT     5 STARTS. ATTEMPT NUMBER  1
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  137916
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      1.973e+10
        SOLVER ELAPSED TIME:  164ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      0.593       TIME AVG. FORCE       0.308    
 LARGEST SCALED RESIDUAL FORCE     -0.464       AT NODE          2   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE     -0.464    
 LARGEST INCREMENT OF DISP.         0.183       AT NODE         61   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        0.183       AT NODE         61   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     6.526E+03   TIME AVG. MOMENT      4.751E+03
 LARGEST SCALED RESIDUAL MOMENT     5.043E-02   AT NODE          2   DOF  6
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     5.043E-02
 LARGEST INCREMENT OF ROTATION      4.307E-04   AT NODE      15903   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     4.307E-04   AT NODE      15903   DOF  6
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF ROTATION CORRECTION    4.203E-09
          MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  137916
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      1.973e+10
        SOLVER ELAPSED TIME:  178ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                      0.593       TIME AVG. FORCE       0.308    
 LARGEST SCALED RESIDUAL FORCE     -2.701E-02   AT NODE      22972   DOF  2
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -2.701E-02
 LARGEST INCREMENT OF DISP.         0.183       AT NODE         61   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -3.894E-04   AT NODE      15454   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     9.788E+03   TIME AVG. MOMENT      5.403E+03
 LARGEST SCALED RESIDUAL MOMENT    -5.300E-02   AT NODE          2   DOF  6
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT    -5.300E-02
 LARGEST INCREMENT OF ROTATION      4.309E-04   AT NODE      15903   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     3.779E-05   AT NODE       7170   DOF  4
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  137916
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      1.973e+10
        SOLVER ELAPSED TIME:  256ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                      0.593       TIME AVG. FORCE       0.308    
 LARGEST SCALED RESIDUAL FORCE     -8.476E-07   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE     -8.476E-07
 LARGEST INCREMENT OF DISP.         0.183       AT NODE         61   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -5.030E-06   AT NODE      14146   DOF  2
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     6.526E+03   TIME AVG. MOMENT      4.751E+03
 LARGEST SCALED RESIDUAL MOMENT     4.509E-07   AT NODE          2   DOF  6
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     4.509E-07
 LARGEST INCREMENT OF ROTATION      4.310E-04   AT NODE      15903   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -6.883E-07   AT NODE      11704   DOF  5
   INSTANCE: SHELL-1                                                                         
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED

 ITERATION SUMMARY FOR THE INCREMENT:   3 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  3 ARE EQUILIBRIUM ITERATIONS.


                                INCREMENT     5 SUMMARY


     CURRENT LOAD PROPORTIONALITY FACTOR         0.3750    
     TOTAL ARC LENGTH   0.375    , INCREMENT OF ARC LENGTH   0.100    


  INCREMENT     6 STARTS. ATTEMPT NUMBER  1
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  137916
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      1.973e+10
        SOLVER ELAPSED TIME:  300ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      0.751       TIME AVG. FORCE       0.382    
 LARGEST SCALED RESIDUAL FORCE     -0.464       AT NODE          2   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE     -0.464    
 LARGEST INCREMENT OF DISP.         0.183       AT NODE         61   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        0.183       AT NODE         61   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     2.480E+04   TIME AVG. MOMENT      8.092E+03
 LARGEST SCALED RESIDUAL MOMENT     6.824E-02   AT NODE          2   DOF  6
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     6.824E-02
 LARGEST INCREMENT OF ROTATION      4.313E-04   AT NODE      15903   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     4.313E-04   AT NODE      15903   DOF  6
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF ROTATION CORRECTION    5.696E-09
          MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  137916
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      1.973e+10
        SOLVER ELAPSED TIME:  267ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                      0.751       TIME AVG. FORCE       0.382    
 LARGEST SCALED RESIDUAL FORCE     -2.701E-02   AT NODE      22972   DOF  2
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -2.701E-02
 LARGEST INCREMENT OF DISP.         0.183       AT NODE         61   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        5.127E-04   AT NODE       7170   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     2.480E+04   TIME AVG. MOMENT      8.092E+03
 LARGEST SCALED RESIDUAL MOMENT    -5.297E-02   AT NODE          2   DOF  6
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT    -5.297E-02
 LARGEST INCREMENT OF ROTATION      4.315E-04   AT NODE      15903   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     5.759E-05   AT NODE       7170   DOF  4
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  137916
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      1.973e+10
        SOLVER ELAPSED TIME:  254ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                      0.751       TIME AVG. FORCE       0.382    
 LARGEST SCALED RESIDUAL FORCE     -8.244E-07   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE     -8.244E-07
 LARGEST INCREMENT OF DISP.         0.183       AT NODE         61   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -5.031E-06   AT NODE      14146   DOF  2
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     2.480E+04   TIME AVG. MOMENT      8.092E+03
 LARGEST SCALED RESIDUAL MOMENT     1.768E-06   AT NODE          2   DOF  6
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     1.768E-06
 LARGEST INCREMENT OF ROTATION      4.316E-04   AT NODE      15903   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -6.890E-07   AT NODE      11704   DOF  5
   INSTANCE: SHELL-1                                                                         
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED

 ITERATION SUMMARY FOR THE INCREMENT:   3 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  3 ARE EQUILIBRIUM ITERATIONS.


                                INCREMENT     6 SUMMARY


     CURRENT LOAD PROPORTIONALITY FACTOR         0.4749    
     TOTAL ARC LENGTH   0.475    , INCREMENT OF ARC LENGTH   0.100    


  INCREMENT     7 STARTS. ATTEMPT NUMBER  1
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  137916
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      1.973e+10
        SOLVER ELAPSED TIME:  277ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      0.910       TIME AVG. FORCE       0.457    
 LARGEST SCALED RESIDUAL FORCE     -0.464       AT NODE          2   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE     -0.464    
 LARGEST INCREMENT OF DISP.         0.183       AT NODE         61   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        0.183       AT NODE         61   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     3.001E+04   TIME AVG. MOMENT      1.122E+04
 LARGEST SCALED RESIDUAL MOMENT     8.616E-02   AT NODE          2   DOF  6
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     8.616E-02
 LARGEST INCREMENT OF ROTATION      4.725E-04   AT NODE       7170   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     4.725E-04   AT NODE       7170   DOF  4
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF ROTATION CORRECTION    7.879E-09
          MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  137916
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      1.973e+10
        SOLVER ELAPSED TIME:  225ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                      0.909       TIME AVG. FORCE       0.457    
 LARGEST SCALED RESIDUAL FORCE     -2.702E-02   AT NODE      22972   DOF  2
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -2.702E-02
 LARGEST INCREMENT OF DISP.         0.183       AT NODE         61   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        8.334E-04   AT NODE       7170   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     3.001E+04   TIME AVG. MOMENT      1.122E+04
 LARGEST SCALED RESIDUAL MOMENT    -5.293E-02   AT NODE          2   DOF  6
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT    -5.293E-02
 LARGEST INCREMENT OF ROTATION      5.661E-04   AT NODE       7170   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     9.360E-05   AT NODE       7170   DOF  4
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  137916
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      1.973e+10
        SOLVER ELAPSED TIME:  193ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                      0.909       TIME AVG. FORCE       0.457    
 LARGEST SCALED RESIDUAL FORCE     -8.380E-07   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE     -8.380E-07
 LARGEST INCREMENT OF DISP.         0.183       AT NODE         61   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -5.013E-06   AT NODE      14146   DOF  2
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     3.001E+04   TIME AVG. MOMENT      1.122E+04
 LARGEST SCALED RESIDUAL MOMENT     1.234E-06   AT NODE          2   DOF  6
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     1.234E-06
 LARGEST INCREMENT OF ROTATION      5.663E-04   AT NODE       7170   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -6.899E-07   AT NODE      11704   DOF  5
   INSTANCE: SHELL-1                                                                         
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED

 ITERATION SUMMARY FOR THE INCREMENT:   3 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  3 ARE EQUILIBRIUM ITERATIONS.


                                INCREMENT     7 SUMMARY


     CURRENT LOAD PROPORTIONALITY FACTOR         0.5749    
     TOTAL ARC LENGTH   0.575    , INCREMENT OF ARC LENGTH   0.100    


  INCREMENT     8 STARTS. ATTEMPT NUMBER  1
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  137916
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      1.973e+10
        SOLVER ELAPSED TIME:  179ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       1.07       TIME AVG. FORCE       0.534    
 LARGEST SCALED RESIDUAL FORCE     -0.464       AT NODE          2   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE     -0.464    
 LARGEST INCREMENT OF DISP.         0.183       AT NODE         61   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        0.183       AT NODE         61   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     3.523E+04   TIME AVG. MOMENT      1.422E+04
 LARGEST SCALED RESIDUAL MOMENT     0.104       AT NODE          2   DOF  6
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     0.104    
 LARGEST INCREMENT OF ROTATION      6.804E-04   AT NODE       7170   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     6.804E-04   AT NODE       7170   DOF  4
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF ROTATION CORRECTION    1.373E-08
          MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  137916
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      1.973e+10
        SOLVER ELAPSED TIME:  183ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       1.07       TIME AVG. FORCE       0.533    
 LARGEST SCALED RESIDUAL FORCE     -2.702E-02   AT NODE      22972   DOF  2
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -2.702E-02
 LARGEST INCREMENT OF DISP.         0.183       AT NODE         61   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.472E-03   AT NODE       7170   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     3.523E+04   TIME AVG. MOMENT      1.422E+04
 LARGEST SCALED RESIDUAL MOMENT    -5.289E-02   AT NODE          2   DOF  6
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT    -5.289E-02
 LARGEST INCREMENT OF ROTATION      8.456E-04   AT NODE       7170   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.652E-04   AT NODE       7170   DOF  4
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  137916
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      1.973e+10
        SOLVER ELAPSED TIME:  186ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       1.07       TIME AVG. FORCE       0.533    
 LARGEST SCALED RESIDUAL FORCE     -8.387E-07   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE     -8.387E-07
 LARGEST INCREMENT OF DISP.         0.183       AT NODE         61   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -5.489E-06   AT NODE       7203   DOF  2
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     3.523E+04   TIME AVG. MOMENT      1.422E+04
 LARGEST SCALED RESIDUAL MOMENT     5.933E-08   AT NODE          2   DOF  6
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     5.933E-08
 LARGEST INCREMENT OF ROTATION      8.461E-04   AT NODE       7170   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -6.909E-07   AT NODE      11704   DOF  5
   INSTANCE: SHELL-1                                                                         
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED

 ITERATION SUMMARY FOR THE INCREMENT:   3 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  3 ARE EQUILIBRIUM ITERATIONS.


                                INCREMENT     8 SUMMARY


     CURRENT LOAD PROPORTIONALITY FACTOR         0.6748    
     TOTAL ARC LENGTH   0.675    , INCREMENT OF ARC LENGTH   0.100    


  INCREMENT     9 STARTS. ATTEMPT NUMBER  1
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  137916
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      1.973e+10
        SOLVER ELAPSED TIME:  162ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       1.23       TIME AVG. FORCE       0.611    
 LARGEST SCALED RESIDUAL FORCE     -0.464       AT NODE          2   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE     -0.464    
 LARGEST INCREMENT OF DISP.         0.183       AT NODE         61   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        0.183       AT NODE         61   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     4.044E+04   TIME AVG. MOMENT      1.714E+04
 LARGEST SCALED RESIDUAL MOMENT     0.123       AT NODE          2   DOF  6
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     0.123    
 LARGEST INCREMENT OF ROTATION      1.054E-03   AT NODE       7170   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.054E-03   AT NODE       7170   DOF  4
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF ROTATION CORRECTION    2.507E-08
          MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  137916
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      1.973e+10
        SOLVER ELAPSED TIME:  191ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       1.23       TIME AVG. FORCE       0.610    
 LARGEST SCALED RESIDUAL FORCE     -2.703E-02   AT NODE      22972   DOF  2
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -2.703E-02
 LARGEST INCREMENT OF DISP.         0.183       AT NODE         61   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        2.874E-03   AT NODE       7170   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     4.044E+04   TIME AVG. MOMENT      1.714E+04
 LARGEST SCALED RESIDUAL MOMENT    -5.285E-02   AT NODE          2   DOF  6
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT    -5.285E-02
 LARGEST INCREMENT OF ROTATION      1.377E-03   AT NODE       7170   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     3.224E-04   AT NODE       7170   DOF  4
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  137916
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      1.973e+10
        SOLVER ELAPSED TIME:  180ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       1.23       TIME AVG. FORCE       0.610    
 LARGEST SCALED RESIDUAL FORCE     -8.496E-07   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE     -8.496E-07
 LARGEST INCREMENT OF DISP.         0.183       AT NODE         61   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.385E-05   AT NODE       7183   DOF  3
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     4.044E+04   TIME AVG. MOMENT      1.714E+04
 LARGEST SCALED RESIDUAL MOMENT     2.824E-06   AT NODE          2   DOF  6
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     2.824E-06
 LARGEST INCREMENT OF ROTATION      1.378E-03   AT NODE       7170   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.720E-06   AT NODE       7170   DOF  4
   INSTANCE: SHELL-1                                                                         
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED

 ITERATION SUMMARY FOR THE INCREMENT:   3 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  3 ARE EQUILIBRIUM ITERATIONS.


                                INCREMENT     9 SUMMARY


     CURRENT LOAD PROPORTIONALITY FACTOR         0.7746    
     TOTAL ARC LENGTH   0.775    , INCREMENT OF ARC LENGTH   0.100    


  INCREMENT    10 STARTS. ATTEMPT NUMBER  1
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  137916
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      1.973e+10
        SOLVER ELAPSED TIME:  181ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       1.39       TIME AVG. FORCE       0.688    
 LARGEST SCALED RESIDUAL FORCE     -0.464       AT NODE          2   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE     -0.464    
 LARGEST INCREMENT OF DISP.         0.183       AT NODE         61   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        0.183       AT NODE         61   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     2.403E+03   TIME AVG. MOMENT      1.566E+04
 LARGEST SCALED RESIDUAL MOMENT     0.142       AT NODE          2   DOF  6
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     0.142    
 LARGEST INCREMENT OF ROTATION      1.799E-03   AT NODE       7170   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.799E-03   AT NODE       7170   DOF  4
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF ROTATION CORRECTION    4.960E-08
          MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  137916
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      1.973e+10
        SOLVER ELAPSED TIME:  201ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       1.39       TIME AVG. FORCE       0.688    
 LARGEST SCALED RESIDUAL FORCE     -2.704E-02   AT NODE      22972   DOF  2
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -2.704E-02
 LARGEST INCREMENT OF DISP.         0.183       AT NODE         61   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        6.032E-03   AT NODE       7170   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     1.201E+03   TIME AVG. MOMENT      1.554E+04
 LARGEST SCALED RESIDUAL MOMENT    -5.279E-02   AT NODE          2   DOF  6
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT    -5.279E-02
 LARGEST INCREMENT OF ROTATION      2.474E-03   AT NODE       7170   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     6.751E-04   AT NODE       7170   DOF  4
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  137916
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      1.973e+10
        SOLVER ELAPSED TIME:  246ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       1.39       TIME AVG. FORCE       0.688    
 LARGEST SCALED RESIDUAL FORCE     -3.611E-06   AT NODE       7170   DOF  2
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -3.611E-06
 LARGEST INCREMENT OF DISP.         0.183       AT NODE         61   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        8.596E-05   AT NODE       7170   DOF  3
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     1.201E+03   TIME AVG. MOMENT      1.554E+04
 LARGEST SCALED RESIDUAL MOMENT     2.783E-06   AT NODE          2   DOF  6
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     2.783E-06
 LARGEST INCREMENT OF ROTATION      2.485E-03   AT NODE       7170   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.074E-05   AT NODE       7170   DOF  4
   INSTANCE: SHELL-1                                                                         
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED

 ITERATION SUMMARY FOR THE INCREMENT:   3 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  3 ARE EQUILIBRIUM ITERATIONS.


                                INCREMENT    10 SUMMARY


     CURRENT LOAD PROPORTIONALITY FACTOR         0.8741    
     TOTAL ARC LENGTH   0.875    , INCREMENT OF ARC LENGTH   0.100    


  INCREMENT    11 STARTS. ATTEMPT NUMBER  1
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  137916
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      1.973e+10
        SOLVER ELAPSED TIME:  238ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       1.55       TIME AVG. FORCE       0.766    
 LARGEST SCALED RESIDUAL FORCE     -0.465       AT NODE          2   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE     -0.465    
 LARGEST INCREMENT OF DISP.         0.183       AT NODE         61   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        0.183       AT NODE         61   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                      344.       TIME AVG. MOMENT      1.416E+04
 LARGEST SCALED RESIDUAL MOMENT     0.164       AT NODE          2   DOF  6
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     0.164    
 LARGEST INCREMENT OF ROTATION      3.367E-03   AT NODE       7170   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     3.367E-03   AT NODE       7170   DOF  4
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF ROTATION CORRECTION    1.073E-07
          MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  137916
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      1.973e+10
        SOLVER ELAPSED TIME:  199ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       1.54       TIME AVG. FORCE       0.766    
 LARGEST SCALED RESIDUAL FORCE     -3.865E-02   AT NODE       7157   DOF  2
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -3.865E-02
 LARGEST INCREMENT OF DISP.         0.183       AT NODE         61   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        9.695E-03   AT NODE       7157   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                      229.       TIME AVG. MOMENT      1.415E+04
 LARGEST SCALED RESIDUAL MOMENT    -5.261E-02   AT NODE          2   DOF  6
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT    -5.261E-02
 LARGEST INCREMENT OF ROTATION      4.441E-03   AT NODE       7170   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.077E-03   AT NODE       7157   DOF  4
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  137916
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      1.973e+10
        SOLVER ELAPSED TIME:  149ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       1.54       TIME AVG. FORCE       0.766    
 LARGEST SCALED RESIDUAL FORCE     -1.997E-04   AT NODE       7170   DOF  2
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -1.997E-04
 LARGEST INCREMENT OF DISP.         0.183       AT NODE         61   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        6.571E-04   AT NODE       7170   DOF  3
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                      228.       TIME AVG. MOMENT      1.415E+04
 LARGEST SCALED RESIDUAL MOMENT     8.142E-06   AT NODE          2   DOF  6
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     8.142E-06
 LARGEST INCREMENT OF ROTATION      4.520E-03   AT NODE       7170   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     7.978E-05   AT NODE       7170   DOF  4
   INSTANCE: SHELL-1                                                                         
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED

 ITERATION SUMMARY FOR THE INCREMENT:   3 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  3 ARE EQUILIBRIUM ITERATIONS.


                                INCREMENT    11 SUMMARY


     CURRENT LOAD PROPORTIONALITY FACTOR         0.9728    
     TOTAL ARC LENGTH   0.975    , INCREMENT OF ARC LENGTH   0.100    


  INCREMENT    12 STARTS. ATTEMPT NUMBER  1
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  137916
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      1.973e+10
        SOLVER ELAPSED TIME:  157ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       1.71       TIME AVG. FORCE       0.844    
 LARGEST SCALED RESIDUAL FORCE      -1.03       AT NODE       7170   DOF  2
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      -1.03    
 LARGEST INCREMENT OF DISP.         0.183       AT NODE         61   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        0.183       AT NODE         61   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                      103.       TIME AVG. MOMENT      1.298E+04
 LARGEST SCALED RESIDUAL MOMENT     0.194       AT NODE          2   DOF  6
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     0.194    
 LARGEST INCREMENT OF ROTATION      5.625E-03   AT NODE       7170   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     5.625E-03   AT NODE       7170   DOF  4
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF ROTATION CORRECTION    2.139E-07
          MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  137916
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      1.973e+10
        SOLVER ELAPSED TIME:  170ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       1.70       TIME AVG. FORCE       0.844    
 LARGEST SCALED RESIDUAL FORCE     -3.558E-02   AT NODE       7091   DOF  2
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -3.558E-02
 LARGEST INCREMENT OF DISP.         0.184       AT NODE         61   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        9.313E-03   AT NODE       7091   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                      94.2       TIME AVG. MOMENT      1.298E+04
 LARGEST SCALED RESIDUAL MOMENT    -5.164E-02   AT NODE          2   DOF  6
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT    -5.164E-02
 LARGEST INCREMENT OF ROTATION      5.945E-03   AT NODE       7170   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.033E-03   AT NODE       7091   DOF  4
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  137916
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      1.973e+10
        SOLVER ELAPSED TIME:  170ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       1.70       TIME AVG. FORCE       0.844    
 LARGEST SCALED RESIDUAL FORCE     -7.634E-04   AT NODE       7104   DOF  2
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -7.634E-04
 LARGEST INCREMENT OF DISP.         0.184       AT NODE         61   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.320E-03   AT NODE       7104   DOF  3
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                      93.5       TIME AVG. MOMENT      1.298E+04
 LARGEST SCALED RESIDUAL MOMENT    -2.518E-05   AT NODE       7104   DOF  5
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL MOMENT    -2.518E-05
 LARGEST INCREMENT OF ROTATION      6.001E-03   AT NODE       7157   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -1.546E-04   AT NODE       7229   DOF  4
   INSTANCE: SHELL-1                                                                         
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED

 ITERATION SUMMARY FOR THE INCREMENT:   3 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  3 ARE EQUILIBRIUM ITERATIONS.


                                INCREMENT    12 SUMMARY


     CURRENT LOAD PROPORTIONALITY FACTOR          1.070    
     TOTAL ARC LENGTH    1.07    , INCREMENT OF ARC LENGTH   0.100    


  INCREMENT    13 STARTS. ATTEMPT NUMBER  1
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  137916
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      1.973e+10
        SOLVER ELAPSED TIME:  273ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       1.86       TIME AVG. FORCE       0.922    
 LARGEST SCALED RESIDUAL FORCE      -1.23       AT NODE       7229   DOF  2
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      -1.23    
 LARGEST INCREMENT OF DISP.         0.184       AT NODE         61   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        0.184       AT NODE         61   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                      72.8       TIME AVG. MOMENT      1.199E+04
 LARGEST SCALED RESIDUAL MOMENT     0.261       AT NODE          2   DOF  6
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     0.261    
 LARGEST INCREMENT OF ROTATION     -6.124E-03   AT NODE       7229   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -6.124E-03   AT NODE       7229   DOF  4
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF ROTATION CORRECTION   -3.180E-07
          MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  137916
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      1.973e+10
        SOLVER ELAPSED TIME:  284ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       1.86       TIME AVG. FORCE       0.922    
 LARGEST SCALED RESIDUAL FORCE      2.724E-02   AT NODE      22751   DOF  2
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      2.724E-02
 LARGEST INCREMENT OF DISP.         0.184       AT NODE         61   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -7.437E-03   AT NODE       7269   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                      72.5       TIME AVG. MOMENT      1.199E+04
 LARGEST SCALED RESIDUAL MOMENT    -5.037E-02   AT NODE          2   DOF  6
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT    -5.037E-02
 LARGEST INCREMENT OF ROTATION      5.999E-03   AT NODE       7104   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -8.206E-04   AT NODE       7269   DOF  4
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  137916
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      1.973e+10
        SOLVER ELAPSED TIME:  253ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       1.86       TIME AVG. FORCE       0.922    
 LARGEST SCALED RESIDUAL FORCE     -1.969E-03   AT NODE       7078   DOF  2
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -1.969E-03
 LARGEST INCREMENT OF DISP.         0.184       AT NODE         61   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        2.152E-03   AT NODE       7078   DOF  3
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF DISP.    CORRECTION   -1.555E-04
          FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                      72.3       TIME AVG. MOMENT      1.199E+04
 LARGEST SCALED RESIDUAL MOMENT     1.358E-04   AT NODE          2   DOF  6
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     1.358E-04
 LARGEST INCREMENT OF ROTATION      6.100E-03   AT NODE       7091   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     2.464E-04   AT NODE       7078   DOF  4
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF ROTATION CORRECTION   -6.643E-07
          MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 ITERATION SUMMARY FOR THE INCREMENT:   3 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  3 ARE EQUILIBRIUM ITERATIONS.


                                INCREMENT    13 SUMMARY


     CURRENT LOAD PROPORTIONALITY FACTOR          1.166    
     TOTAL ARC LENGTH    1.18    , INCREMENT OF ARC LENGTH   0.100    


  INCREMENT    14 STARTS. ATTEMPT NUMBER  1
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  137916
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      1.973e+10
        SOLVER ELAPSED TIME:  240ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       2.02       TIME AVG. FORCE        1.00    
 LARGEST SCALED RESIDUAL FORCE      -1.23       AT NODE       7084   DOF  2
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      -1.23    
 LARGEST INCREMENT OF DISP.         0.184       AT NODE         61   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        0.184       AT NODE         61   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                      66.5       TIME AVG. MOMENT      1.114E+04
 LARGEST SCALED RESIDUAL MOMENT     0.393       AT NODE          2   DOF  6
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     0.393    
 LARGEST INCREMENT OF ROTATION     -6.146E-03   AT NODE       7084   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -6.146E-03   AT NODE       7084   DOF  4
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF ROTATION CORRECTION   -4.891E-07
          MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  137916
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      1.973e+10
        SOLVER ELAPSED TIME:  261ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       2.02       TIME AVG. FORCE        1.00    
 LARGEST SCALED RESIDUAL FORCE      2.725E-02   AT NODE      22751   DOF  2
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      2.725E-02
 LARGEST INCREMENT OF DISP.         0.184       AT NODE         61   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        3.579E-03   AT NODE       7065   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                      66.6       TIME AVG. MOMENT      1.114E+04
 LARGEST SCALED RESIDUAL MOMENT    -5.126E-02   AT NODE          2   DOF  6
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT    -5.126E-02
 LARGEST INCREMENT OF ROTATION      6.043E-03   AT NODE       7078   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     4.315E-04   AT NODE       7068   DOF  5
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF ROTATION CORRECTION   -5.627E-05
          MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  137916
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      1.973e+10
        SOLVER ELAPSED TIME:  183ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       2.02       TIME AVG. FORCE        1.00    
 LARGEST SCALED RESIDUAL FORCE     -1.105E-03   AT NODE       7071   DOF  2
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -1.105E-03
 LARGEST INCREMENT OF DISP.         0.184       AT NODE         61   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -1.659E-03   AT NODE       7071   DOF  3
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                      66.7       TIME AVG. MOMENT      1.114E+04
 LARGEST SCALED RESIDUAL MOMENT     2.834E-04   AT NODE          2   DOF  6
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     2.834E-04
 LARGEST INCREMENT OF ROTATION      6.127E-03   AT NODE       7078   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -1.834E-04   AT NODE       7071   DOF  4
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF ROTATION CORRECTION    1.014E-06
          MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 ITERATION SUMMARY FOR THE INCREMENT:   3 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  3 ARE EQUILIBRIUM ITERATIONS.


                                INCREMENT    14 SUMMARY


     CURRENT LOAD PROPORTIONALITY FACTOR          1.260    
     TOTAL ARC LENGTH    1.28    , INCREMENT OF ARC LENGTH   0.100    


  INCREMENT    15 STARTS. ATTEMPT NUMBER  1
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  137916
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      1.973e+10
        SOLVER ELAPSED TIME:  248ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       2.17       TIME AVG. FORCE        1.08    
 LARGEST SCALED RESIDUAL FORCE      -1.14       AT NODE       7078   DOF  2
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      -1.14    
 LARGEST INCREMENT OF DISP.         0.184       AT NODE         61   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        0.184       AT NODE         61   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                      64.3       TIME AVG. MOMENT      1.040E+04
 LARGEST SCALED RESIDUAL MOMENT     0.535       AT NODE          2   DOF  6
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     0.535    
 LARGEST INCREMENT OF ROTATION      5.937E-03   AT NODE       7078   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     5.937E-03   AT NODE       7078   DOF  4
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF ROTATION CORRECTION    6.484E-07
          MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  137916
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      1.973e+10
        SOLVER ELAPSED TIME:  265ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       2.17       TIME AVG. FORCE        1.08    
 LARGEST SCALED RESIDUAL FORCE      2.724E-02   AT NODE      22751   DOF  2
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      2.724E-02
 LARGEST INCREMENT OF DISP.         0.184       AT NODE         61   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -3.435E-03   AT NODE       7091   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                      64.9       TIME AVG. MOMENT      1.040E+04
 LARGEST SCALED RESIDUAL MOMENT    -5.209E-02   AT NODE          2   DOF  6
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT    -5.209E-02
 LARGEST INCREMENT OF ROTATION      5.604E-03   AT NODE       7078   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -3.901E-04   AT NODE       7091   DOF  4
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF ROTATION CORRECTION    3.801E-05
          MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  137916
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      1.973e+10
        SOLVER ELAPSED TIME:  254ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       2.17       TIME AVG. FORCE        1.08    
 LARGEST SCALED RESIDUAL FORCE     -3.663E-04   AT NODE       7084   DOF  2
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -3.663E-04
 LARGEST INCREMENT OF DISP.         0.184       AT NODE         61   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        9.176E-04   AT NODE       7084   DOF  3
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                      64.9       TIME AVG. MOMENT      1.040E+04
 LARGEST SCALED RESIDUAL MOMENT     3.663E-05   AT NODE          2   DOF  6
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     3.663E-05
 LARGEST INCREMENT OF ROTATION     -5.546E-03   AT NODE       7269   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.078E-04   AT NODE       7084   DOF  4
   INSTANCE: SHELL-1                                                                         
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED

 ITERATION SUMMARY FOR THE INCREMENT:   3 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  3 ARE EQUILIBRIUM ITERATIONS.


                                INCREMENT    15 SUMMARY


     CURRENT LOAD PROPORTIONALITY FACTOR          1.355    
     TOTAL ARC LENGTH    1.38    , INCREMENT OF ARC LENGTH   0.100    


  INCREMENT    16 STARTS. ATTEMPT NUMBER  1
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  137916
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      1.973e+10
        SOLVER ELAPSED TIME:  190ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       2.32       TIME AVG. FORCE        1.16    
 LARGEST SCALED RESIDUAL FORCE     -0.933       AT NODE       7269   DOF  2
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -0.933    
 LARGEST INCREMENT OF DISP.         0.184       AT NODE         61   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        0.184       AT NODE         61   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                      65.4       TIME AVG. MOMENT      9.752E+03
 LARGEST SCALED RESIDUAL MOMENT     0.638       AT NODE          2   DOF  6
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     0.638    
 LARGEST INCREMENT OF ROTATION     -5.333E-03   AT NODE       7269   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -5.333E-03   AT NODE       7269   DOF  4
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF ROTATION CORRECTION   -6.986E-07
          MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  137916
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      1.973e+10
        SOLVER ELAPSED TIME:  209ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       2.32       TIME AVG. FORCE        1.16    
 LARGEST SCALED RESIDUAL FORCE      2.723E-02   AT NODE      22751   DOF  2
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE      2.723E-02
 LARGEST INCREMENT OF DISP.         0.184       AT NODE         61   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -3.199E-03   AT NODE       7078   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                      65.8       TIME AVG. MOMENT      9.752E+03
 LARGEST SCALED RESIDUAL MOMENT    -5.255E-02   AT NODE          2   DOF  6
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT    -5.255E-02
 LARGEST INCREMENT OF ROTATION     -5.113E-03   AT NODE       7071   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -3.642E-04   AT NODE       7078   DOF  4
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF ROTATION CORRECTION    2.999E-05
          MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  137916
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      1.973e+10
        SOLVER ELAPSED TIME:  192ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       2.32       TIME AVG. FORCE        1.16    
 LARGEST SCALED RESIDUAL FORCE     -1.974E-04   AT NODE       7078   DOF  2
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -1.974E-04
 LARGEST INCREMENT OF DISP.         0.184       AT NODE         61   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -6.895E-04   AT NODE       7078   DOF  3
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                      65.8       TIME AVG. MOMENT      9.752E+03
 LARGEST SCALED RESIDUAL MOMENT     1.138E-05   AT NODE          2   DOF  6
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     1.138E-05
 LARGEST INCREMENT OF ROTATION     -5.065E-03   AT NODE       7071   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -7.933E-05   AT NODE       7078   DOF  4
   INSTANCE: SHELL-1                                                                         
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED

 ITERATION SUMMARY FOR THE INCREMENT:   3 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  3 ARE EQUILIBRIUM ITERATIONS.


                                INCREMENT    16 SUMMARY


     CURRENT LOAD PROPORTIONALITY FACTOR          1.449    
     TOTAL ARC LENGTH    1.48    , INCREMENT OF ARC LENGTH   0.100    


  INCREMENT    17 STARTS. ATTEMPT NUMBER  1
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  137916
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      1.973e+10
        SOLVER ELAPSED TIME:  234ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       2.48       TIME AVG. FORCE        1.23    
 LARGEST SCALED RESIDUAL FORCE     -0.753       AT NODE       7071   DOF  2
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -0.753    
 LARGEST INCREMENT OF DISP.         0.184       AT NODE         61   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        0.184       AT NODE         61   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                      66.1       TIME AVG. MOMENT      9.182E+03
 LARGEST SCALED RESIDUAL MOMENT     0.716       AT NODE          2   DOF  6
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     0.716    
 LARGEST INCREMENT OF ROTATION     -4.773E-03   AT NODE       7071   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -4.773E-03   AT NODE       7071   DOF  4
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF ROTATION CORRECTION   -7.027E-07
          MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  137916
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      1.973e+10
        SOLVER ELAPSED TIME:  225ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       2.48       TIME AVG. FORCE        1.23    
 LARGEST SCALED RESIDUAL FORCE     -2.724E-02   AT NODE      22972   DOF  2
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -2.724E-02
 LARGEST INCREMENT OF DISP.         0.184       AT NODE         61   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -2.649E-03   AT NODE       7078   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                      66.4       TIME AVG. MOMENT      9.182E+03
 LARGEST SCALED RESIDUAL MOMENT    -5.289E-02   AT NODE          2   DOF  6
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT    -5.289E-02
 LARGEST INCREMENT OF ROTATION     -4.530E-03   AT NODE       7071   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -3.008E-04   AT NODE       7078   DOF  4
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF ROTATION CORRECTION    2.223E-05
          MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  137916
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      1.973e+10
        SOLVER ELAPSED TIME:  281ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       2.48       TIME AVG. FORCE        1.23    
 LARGEST SCALED RESIDUAL FORCE     -6.914E-05   AT NODE       7269   DOF  2
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -6.914E-05
 LARGEST INCREMENT OF DISP.         0.184       AT NODE         61   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        4.132E-04   AT NODE       7269   DOF  3
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                      66.4       TIME AVG. MOMENT      9.182E+03
 LARGEST SCALED RESIDUAL MOMENT     1.715E-05   AT NODE          2   DOF  6
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     1.715E-05
 LARGEST INCREMENT OF ROTATION     -4.484E-03   AT NODE       7071   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     4.737E-05   AT NODE       7269   DOF  4
   INSTANCE: SHELL-1                                                                         
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED

 ITERATION SUMMARY FOR THE INCREMENT:   3 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  3 ARE EQUILIBRIUM ITERATIONS.


                                INCREMENT    17 SUMMARY


     CURRENT LOAD PROPORTIONALITY FACTOR          1.542    
     TOTAL ARC LENGTH    1.58    , INCREMENT OF ARC LENGTH   0.100    


  INCREMENT    18 STARTS. ATTEMPT NUMBER  1
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  137916
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      1.973e+10
        SOLVER ELAPSED TIME:  221ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       2.63       TIME AVG. FORCE        1.31    
 LARGEST SCALED RESIDUAL FORCE     -0.585       AT NODE       7071   DOF  2
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -0.585    
 LARGEST INCREMENT OF DISP.         0.184       AT NODE         61   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        0.184       AT NODE         61   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                      67.3       TIME AVG. MOMENT      8.675E+03
 LARGEST SCALED RESIDUAL MOMENT     0.775       AT NODE          2   DOF  6
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     0.775    
 LARGEST INCREMENT OF ROTATION     -4.192E-03   AT NODE       7070   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -4.192E-03   AT NODE       7070   DOF  4
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF ROTATION CORRECTION   -6.701E-07
          MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  137916
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      1.973e+10
        SOLVER ELAPSED TIME:  247ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       2.63       TIME AVG. FORCE        1.31    
 LARGEST SCALED RESIDUAL FORCE     -2.725E-02   AT NODE      22972   DOF  2
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -2.725E-02
 LARGEST INCREMENT OF DISP.         0.184       AT NODE         61   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        2.208E-03   AT NODE       7268   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                      67.4       TIME AVG. MOMENT      8.675E+03
 LARGEST SCALED RESIDUAL MOMENT    -5.316E-02   AT NODE          2   DOF  6
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT    -5.316E-02
 LARGEST INCREMENT OF ROTATION     -4.041E-03   AT NODE       7070   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     2.514E-04   AT NODE       7268   DOF  4
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF ROTATION CORRECTION   -1.723E-05
          MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  137916
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      1.973e+10
        SOLVER ELAPSED TIME:  238ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       2.63       TIME AVG. FORCE        1.31    
 LARGEST SCALED RESIDUAL FORCE     -3.225E-05   AT NODE       7071   DOF  2
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -3.225E-05
 LARGEST INCREMENT OF DISP.         0.184       AT NODE         61   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        2.870E-04   AT NODE       7071   DOF  3
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                      67.4       TIME AVG. MOMENT      8.676E+03
 LARGEST SCALED RESIDUAL MOMENT     1.660E-05   AT NODE          2   DOF  6
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     1.660E-05
 LARGEST INCREMENT OF ROTATION     -4.009E-03   AT NODE       7070   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     3.213E-05   AT NODE       7071   DOF  4
   INSTANCE: SHELL-1                                                                         
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED

 ITERATION SUMMARY FOR THE INCREMENT:   3 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  3 ARE EQUILIBRIUM ITERATIONS.


                                INCREMENT    18 SUMMARY


     CURRENT LOAD PROPORTIONALITY FACTOR          1.636    
     TOTAL ARC LENGTH    1.68    , INCREMENT OF ARC LENGTH   0.100    


  INCREMENT    19 STARTS. ATTEMPT NUMBER  1
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  137916
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      1.973e+10
        SOLVER ELAPSED TIME:  186ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       2.78       TIME AVG. FORCE        1.39    
 LARGEST SCALED RESIDUAL FORCE     -0.479       AT NODE       7070   DOF  2
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -0.479    
 LARGEST INCREMENT OF DISP.         0.184       AT NODE         61   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        0.184       AT NODE         61   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                      69.0       TIME AVG. MOMENT      8.223E+03
 LARGEST SCALED RESIDUAL MOMENT     0.820       AT NODE          2   DOF  6
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     0.820    
 LARGEST INCREMENT OF ROTATION     -3.821E-03   AT NODE       7070   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -3.821E-03   AT NODE       7070   DOF  4
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF ROTATION CORRECTION   -6.466E-07
          MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  137916
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      1.973e+10
        SOLVER ELAPSED TIME:  158ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       2.78       TIME AVG. FORCE        1.39    
 LARGEST SCALED RESIDUAL FORCE     -2.727E-02   AT NODE      22972   DOF  2
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -2.727E-02
 LARGEST INCREMENT OF DISP.         0.184       AT NODE         61   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.869E-03   AT NODE       7268   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                      69.3       TIME AVG. MOMENT      8.223E+03
 LARGEST SCALED RESIDUAL MOMENT    -5.335E-02   AT NODE          2   DOF  6
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT    -5.335E-02
 LARGEST INCREMENT OF ROTATION     -3.672E-03   AT NODE       7070   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     2.123E-04   AT NODE       7268   DOF  4
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF ROTATION CORRECTION   -1.381E-05
          MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  137916
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      1.973e+10
        SOLVER ELAPSED TIME:  195ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       2.78       TIME AVG. FORCE        1.39    
 LARGEST SCALED RESIDUAL FORCE     -1.645E-05   AT NODE       7070   DOF  2
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -1.645E-05
 LARGEST INCREMENT OF DISP.         0.184       AT NODE         61   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        2.056E-04   AT NODE       7070   DOF  3
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                      69.3       TIME AVG. MOMENT      8.223E+03
 LARGEST SCALED RESIDUAL MOMENT     1.636E-05   AT NODE          2   DOF  6
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     1.636E-05
 LARGEST INCREMENT OF ROTATION     -3.649E-03   AT NODE       7070   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     2.307E-05   AT NODE       7070   DOF  4
   INSTANCE: SHELL-1                                                                         
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED

 ITERATION SUMMARY FOR THE INCREMENT:   3 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  3 ARE EQUILIBRIUM ITERATIONS.


                                INCREMENT    19 SUMMARY


     CURRENT LOAD PROPORTIONALITY FACTOR          1.730    
     TOTAL ARC LENGTH    1.78    , INCREMENT OF ARC LENGTH   0.100    


  INCREMENT    20 STARTS. ATTEMPT NUMBER  1
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  137916
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      1.973e+10
        SOLVER ELAPSED TIME:  153ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       2.94       TIME AVG. FORCE        1.47    
 LARGEST SCALED RESIDUAL FORCE     -0.475       AT NODE          2   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE     -0.475    
 LARGEST INCREMENT OF DISP.         0.184       AT NODE         61   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        0.184       AT NODE         61   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                      71.6       TIME AVG. MOMENT      7.815E+03
 LARGEST SCALED RESIDUAL MOMENT     0.850       AT NODE          2   DOF  6
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     0.850    
 LARGEST INCREMENT OF ROTATION     -3.475E-03   AT NODE       7070   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -3.475E-03   AT NODE       7070   DOF  4
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF ROTATION CORRECTION   -6.103E-07
          MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  137916
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      1.973e+10
        SOLVER ELAPSED TIME:  179ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       2.94       TIME AVG. FORCE        1.47    
 LARGEST SCALED RESIDUAL FORCE     -2.728E-02   AT NODE      22972   DOF  2
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -2.728E-02
 LARGEST INCREMENT OF DISP.         0.184       AT NODE         61   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.583E-03   AT NODE       7071   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                      71.6       TIME AVG. MOMENT      7.815E+03
 LARGEST SCALED RESIDUAL MOMENT    -5.345E-02   AT NODE          2   DOF  6
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT    -5.345E-02
 LARGEST INCREMENT OF ROTATION     -3.335E-03   AT NODE       7070   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.818E-04   AT NODE       7071   DOF  4
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF ROTATION CORRECTION   -1.143E-05
          MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  137916
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      1.973e+10
        SOLVER ELAPSED TIME:  170ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       2.94       TIME AVG. FORCE        1.47    
 LARGEST SCALED RESIDUAL FORCE     -9.638E-06   AT NODE       7069   DOF  2
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -9.638E-06
 LARGEST INCREMENT OF DISP.         0.184       AT NODE         61   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.573E-04   AT NODE       7069   DOF  3
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                      71.7       TIME AVG. MOMENT      7.815E+03
 LARGEST SCALED RESIDUAL MOMENT     1.479E-05   AT NODE          2   DOF  6
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     1.479E-05
 LARGEST INCREMENT OF ROTATION     -3.318E-03   AT NODE       7070   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.759E-05   AT NODE       7069   DOF  4
   INSTANCE: SHELL-1                                                                         
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED

 ITERATION SUMMARY FOR THE INCREMENT:   3 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  3 ARE EQUILIBRIUM ITERATIONS.


                                INCREMENT    20 SUMMARY


     CURRENT LOAD PROPORTIONALITY FACTOR          1.823    
     TOTAL ARC LENGTH    1.88    , INCREMENT OF ARC LENGTH   0.100    


  INCREMENT    21 STARTS. ATTEMPT NUMBER  1
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  137916
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      1.973e+10
        SOLVER ELAPSED TIME:  175ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       3.09       TIME AVG. FORCE        1.54    
 LARGEST SCALED RESIDUAL FORCE     -0.475       AT NODE          2   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE     -0.475    
 LARGEST INCREMENT OF DISP.         0.184       AT NODE         61   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        0.184       AT NODE         61   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                      74.7       TIME AVG. MOMENT      7.446E+03
 LARGEST SCALED RESIDUAL MOMENT     0.867       AT NODE          2   DOF  6
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     0.867    
 LARGEST INCREMENT OF ROTATION     -3.161E-03   AT NODE       7070   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -3.161E-03   AT NODE       7070   DOF  4
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF ROTATION CORRECTION   -5.667E-07
          MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  137916
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      1.973e+10
        SOLVER ELAPSED TIME:  174ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       3.09       TIME AVG. FORCE        1.54    
 LARGEST SCALED RESIDUAL FORCE     -2.729E-02   AT NODE      22972   DOF  2
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -2.729E-02
 LARGEST INCREMENT OF DISP.         0.184       AT NODE         61   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.383E-03   AT NODE       7071   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                      74.8       TIME AVG. MOMENT      7.446E+03
 LARGEST SCALED RESIDUAL MOMENT    -5.348E-02   AT NODE          2   DOF  6
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT    -5.348E-02
 LARGEST INCREMENT OF ROTATION     -3.031E-03   AT NODE       7070   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.582E-04   AT NODE       7071   DOF  4
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF ROTATION CORRECTION   -9.754E-06
          MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  137916
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      1.973e+10
        SOLVER ELAPSED TIME:  174ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       3.09       TIME AVG. FORCE        1.54    
 LARGEST SCALED RESIDUAL FORCE     -6.986E-06   AT NODE       7069   DOF  2
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -6.986E-06
 LARGEST INCREMENT OF DISP.         0.184       AT NODE         61   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.344E-04   AT NODE       7069   DOF  3
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                      74.8       TIME AVG. MOMENT      7.446E+03
 LARGEST SCALED RESIDUAL MOMENT     1.506E-05   AT NODE          2   DOF  6
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     1.506E-05
 LARGEST INCREMENT OF ROTATION     -3.019E-03   AT NODE       7070   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.503E-05   AT NODE       7069   DOF  4
   INSTANCE: SHELL-1                                                                         
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED

 ITERATION SUMMARY FOR THE INCREMENT:   3 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  3 ARE EQUILIBRIUM ITERATIONS.


                                INCREMENT    21 SUMMARY


     CURRENT LOAD PROPORTIONALITY FACTOR          1.917    
     TOTAL ARC LENGTH    1.98    , INCREMENT OF ARC LENGTH   0.100    


  INCREMENT    22 STARTS. ATTEMPT NUMBER  1
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  137916
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      1.973e+10
        SOLVER ELAPSED TIME:  210ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       3.24       TIME AVG. FORCE        1.62    
 LARGEST SCALED RESIDUAL FORCE     -0.475       AT NODE          2   DOF  1
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL FORCE     -0.475    
 LARGEST INCREMENT OF DISP.         0.184       AT NODE         61   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        0.184       AT NODE         61   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                      78.5       TIME AVG. MOMENT      7.112E+03
 LARGEST SCALED RESIDUAL MOMENT     0.873       AT NODE          2   DOF  6
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     0.873    
 LARGEST INCREMENT OF ROTATION     -2.877E-03   AT NODE       7070   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -2.877E-03   AT NODE       7070   DOF  4
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF ROTATION CORRECTION   -5.196E-07
          MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  137916
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      1.973e+10
        SOLVER ELAPSED TIME:  227ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       3.24       TIME AVG. FORCE        1.62    
 LARGEST SCALED RESIDUAL FORCE     -2.730E-02   AT NODE      22972   DOF  2
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -2.730E-02
 LARGEST INCREMENT OF DISP.         0.184       AT NODE         61   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -1.352E-03   AT NODE      14577   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                      78.7       TIME AVG. MOMENT      7.112E+03
 LARGEST SCALED RESIDUAL MOMENT    -5.346E-02   AT NODE          2   DOF  6
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT    -5.346E-02
 LARGEST INCREMENT OF ROTATION     -2.758E-03   AT NODE       7070   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.381E-04   AT NODE       7071   DOF  4
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF ROTATION CORRECTION   -8.463E-06
          MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION
 
	SYMMETRIC PURE THREAD-BASED DIRECT SPARSE SOLVER RUNNING ON
 	1 HOST x 1 MPI RANK PER HOST x 8 THREADS PER RANK
        NUMBER OF EQUATIONS:  137916
        NUMBER OF RHS:        2
        NUMBER OF FLOPS:      1.973e+10
        SOLVER ELAPSED TIME:  178ms

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       3.24       TIME AVG. FORCE        1.62    
 LARGEST SCALED RESIDUAL FORCE     -5.391E-06   AT NODE       7068   DOF  2
   INSTANCE: SHELL-1                                                                         
  CORRESPONDING RESIDUAL FORCE     -5.391E-06
 LARGEST INCREMENT OF DISP.         0.184       AT NODE         61   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.172E-04   AT NODE       7068   DOF  3
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                      78.7       TIME AVG. MOMENT      7.112E+03
 LARGEST SCALED RESIDUAL MOMENT     1.232E-05   AT NODE          2   DOF  6
   INSTANCE:                                                                                 
  CORRESPONDING RESIDUAL MOMENT     1.232E-05
 LARGEST INCREMENT OF ROTATION     -2.748E-03   AT NODE       7070   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.304E-05   AT NODE       7068   DOF  4
   INSTANCE: SHELL-1                                                                         
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED

 ITERATION SUMMARY FOR THE INCREMENT:   3 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  3 ARE EQUILIBRIUM ITERATIONS.


                                INCREMENT    22 SUMMARY


     CURRENT LOAD PROPORTIONALITY FACTOR          2.010    
     TOTAL ARC LENGTH    2.08    , INCREMENT OF ARC LENGTH   0.100    

     LOAD PROPORTIONALITY FACTOR NOW EXCEEDS THE MAXIMUM VALUE SPECIFIED
     THE STEP ENDS AT THIS INCREMENT


          THE ANALYSIS HAS BEEN COMPLETED



     ANALYSIS SUMMARY:
     TOTAL OF         22  INCREMENTS
                       0  CUTBACKS IN AUTOMATIC INCREMENTATION
                      66  ITERATIONS INCLUDING CONTACT ITERATIONS IF PRESENT
                      66  PASSES THROUGH THE EQUATION SOLVER OF WHICH 
                      66  INVOLVE MATRIX DECOMPOSITION, INCLUDING
                       0  DECOMPOSITION(S) OF THE MASS MATRIX
                       1  REORDERING OF EQUATIONS TO MINIMIZE WAVEFRONT
                       0  ADDITIONAL RESIDUAL EVALUATIONS FOR LINE SEARCHES
                       0  ADDITIONAL OPERATOR EVALUATIONS FOR LINE SEARCHES
                       0  WARNING MESSAGES DURING USER INPUT PROCESSING
                       0  WARNING MESSAGES DURING ANALYSIS
                       0  ANALYSIS WARNINGS ARE NUMERICAL PROBLEM MESSAGES
                       0  ANALYSIS WARNINGS ARE NEGATIVE EIGENVALUE MESSAGES
                       0  ERROR MESSAGES



     JOB TIME SUMMARY
       USER TIME (SEC)      =       3.E+02
       SYSTEM TIME (SEC)    =       3.E+01
       TOTAL CPU TIME (SEC) =       3.E+02
       WALLCLOCK TIME (SEC) =           52
       MEMORY PEAK (GB)     =            1
