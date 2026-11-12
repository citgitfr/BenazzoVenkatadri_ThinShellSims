1

   Abaqus 2020                                  Date 10-Nov-2026   Time 17:43:23
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

     THE MAXIMUM NUMBER OF INCREMENTS IN THIS STEP IS                    1000

          LARGE DISPLACEMENT THEORY WILL BE USED

     LINEAR EXTRAPOLATION WILL BE USED

     CHARACTERISTIC ELEMENT LENGTH      5.00    

     DETAILS REGARDING ACTUAL SOLUTION WAVEFRONT REQUESTED

     DETAILED OUTPUT OF DIAGNOSTICS TO DATABASE REQUESTED

     PRINT OF INCREMENT NUMBER, TIME, ETC., TO THE MESSAGE FILE EVERY     1  INCREMENTS

     COLLECTING MODEL CONSTRAINT INFORMATION FOR OVERCONSTRAINT CHECKS

     COLLECTING STEP CONSTRAINT INFORMATION FOR OVERCONSTRAINT CHECKS


  INCREMENT     1 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  0.100    

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    1
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          1

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      0.162       TIME AVG. FORCE       0.162    
 LARGEST RESIDUAL FORCE            -7.552E-03   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF DISP.        -1.810E-02   AT NODE        228   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -1.810E-02   AT NODE        228   DOF  1
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     6.682E-05   TIME AVG. MOMENT      6.682E-05
 LARGEST RESIDUAL MOMENT            1.633E-05   AT NODE       1191   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION      4.127E-04   AT NODE        118   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     4.127E-04   AT NODE        118   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    1
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                      0.162       TIME AVG. FORCE       0.162    
 LARGEST RESIDUAL FORCE            -1.280E-06   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF DISP.        -1.810E-02   AT NODE        228   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.342E-05   AT NODE        462   DOF  2
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     6.685E-05   TIME AVG. MOMENT      6.685E-05
 LARGEST RESIDUAL MOMENT            5.996E-08   AT NODE       1205   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION     -4.115E-04   AT NODE        236   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -7.513E-06   AT NODE       1212   DOF  5
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    1
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                      0.162       TIME AVG. FORCE       0.162    
 LARGEST RESIDUAL FORCE             1.113E-08   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF DISP.        -1.810E-02   AT NODE        228   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -5.201E-10   AT NODE         21   DOF  2
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     6.685E-05   TIME AVG. MOMENT      6.685E-05
 LARGEST RESIDUAL MOMENT           -2.192E-08   AT NODE          2   DOF  6
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF ROTATION     -4.115E-04   AT NODE        334   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.945E-09   AT NODE       1219   DOF  5
   INSTANCE: SHELL-1                                                                         
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED

 ITERATION SUMMARY FOR THE INCREMENT:   3 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  3 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  0.100    ,  FRACTION OF STEP COMPLETED  0.100    
 STEP TIME COMPLETED       0.100    ,  TOTAL TIME COMPLETED        0.100    


  INCREMENT     2 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  0.100    

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    1
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      0.743       TIME AVG. FORCE       0.452    
 LARGEST RESIDUAL FORCE            -8.720E-06   AT NODE       4701   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -1.810E-02   AT NODE        228   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        2.838E-05   AT NODE        552   DOF  2
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     1.378E-04   TIME AVG. MOMENT      1.023E-04
 LARGEST RESIDUAL MOMENT           -1.252E-07   AT NODE       2659   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION      4.089E-04   AT NODE         20   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.561E-05   AT NODE       2652   DOF  5
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF ROTATION CORRECTION    5.984E-08
 MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 ITERATION SUMMARY FOR THE INCREMENT:   1 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  1 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  0.100    ,  FRACTION OF STEP COMPLETED  0.200    
 STEP TIME COMPLETED       0.200    ,  TOTAL TIME COMPLETED        0.200    


  INCREMENT     3 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  0.100    

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    1
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          1

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       1.11       TIME AVG. FORCE       0.671    
 LARGEST RESIDUAL FORCE            -1.121E-05   AT NODE       4701   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -1.810E-02   AT NODE        228   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        3.700E-05   AT NODE        462   DOF  2
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     2.070E-04   TIME AVG. MOMENT      1.372E-04
 LARGEST RESIDUAL MOMENT           -1.517E-07   AT NODE       3298   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION     -4.055E-04   AT NODE        236   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -1.883E-05   AT NODE       1212   DOF  5
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF ROTATION CORRECTION   -8.718E-08
 MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 ITERATION SUMMARY FOR THE INCREMENT:   1 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  1 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  0.100    ,  FRACTION OF STEP COMPLETED  0.300    
 STEP TIME COMPLETED       0.300    ,  TOTAL TIME COMPLETED        0.300    


  INCREMENT     4 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  0.100    

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    1
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       1.47       TIME AVG. FORCE       0.870    
 LARGEST RESIDUAL FORCE            -1.307E-05   AT NODE       4701   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -1.809E-02   AT NODE        228   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -4.347E-05   AT NODE        579   DOF  2
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     2.772E-04   TIME AVG. MOMENT      1.722E-04
 LARGEST RESIDUAL MOMENT           -2.259E-07   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF ROTATION     -4.072E-04   AT NODE       1189   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     2.105E-05   AT NODE       2652   DOF  5
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF ROTATION CORRECTION   -1.458E-07
 MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 ITERATION SUMMARY FOR THE INCREMENT:   1 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  1 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  0.100    ,  FRACTION OF STEP COMPLETED  0.400    
 STEP TIME COMPLETED       0.400    ,  TOTAL TIME COMPLETED        0.400    


  INCREMENT     5 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  0.100    

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    1
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       1.81       TIME AVG. FORCE        1.06    
 LARGEST RESIDUAL FORCE            -1.576E-05   AT NODE       4701   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -1.809E-02   AT NODE        228   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        5.284E-05   AT NODE        552   DOF  2
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     3.484E-04   TIME AVG. MOMENT      2.075E-04
 LARGEST RESIDUAL MOMENT            1.948E-07   AT NODE       1205   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION     -4.104E-04   AT NODE        895   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -2.427E-05   AT NODE       4731   DOF  5
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF ROTATION CORRECTION    1.456E-07
 MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 ITERATION SUMMARY FOR THE INCREMENT:   1 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  1 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  0.100    ,  FRACTION OF STEP COMPLETED  0.500    
 STEP TIME COMPLETED       0.500    ,  TOTAL TIME COMPLETED        0.500    


  INCREMENT     6 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  0.100    

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    1
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          1

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       2.16       TIME AVG. FORCE        1.24    
 LARGEST RESIDUAL FORCE            -1.945E-05   AT NODE       4701   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -1.809E-02   AT NODE        228   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        6.566E-05   AT NODE        462   DOF  2
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     4.208E-04   TIME AVG. MOMENT      2.430E-04
 LARGEST RESIDUAL MOMENT            2.264E-07   AT NODE       3284   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION      4.138E-04   AT NODE       2675   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -2.988E-05   AT NODE       3351   DOF  5
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF ROTATION CORRECTION   -2.099E-07
 MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 ITERATION SUMMARY FOR THE INCREMENT:   1 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  1 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  0.100    ,  FRACTION OF STEP COMPLETED  0.600    
 STEP TIME COMPLETED       0.600    ,  TOTAL TIME COMPLETED        0.600    


  INCREMENT     7 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  0.100    

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    1
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       2.49       TIME AVG. FORCE        1.42    
 LARGEST RESIDUAL FORCE            -2.451E-05   AT NODE       4701   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -1.809E-02   AT NODE        228   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        8.309E-05   AT NODE        552   DOF  2
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     4.963E-04   TIME AVG. MOMENT      2.792E-04
 LARGEST RESIDUAL MOMENT            2.657E-07   AT NODE       4724   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION     -4.364E-04   AT NODE       4732   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     3.902E-05   AT NODE       4671   DOF  5
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF ROTATION CORRECTION   -3.248E-07
 MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 ITERATION SUMMARY FOR THE INCREMENT:   1 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  1 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  0.100    ,  FRACTION OF STEP COMPLETED  0.700    
 STEP TIME COMPLETED       0.700    ,  TOTAL TIME COMPLETED        0.700    


  INCREMENT     8 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  0.100    

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    1
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =  0.10000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       2.81       TIME AVG. FORCE        1.59    
 LARGEST RESIDUAL FORCE            -3.173E-05   AT NODE       4701   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -1.809E-02   AT NODE        228   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -1.074E-04   AT NODE        579   DOF  2
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     5.748E-04   TIME AVG. MOMENT      3.161E-04
 LARGEST RESIDUAL MOMENT           -3.146E-07   AT NODE       4738   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION     -4.780E-04   AT NODE       1212   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     5.244E-05   AT NODE       4671   DOF  5
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF ROTATION CORRECTION   -5.245E-07
 MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 ITERATION SUMMARY FOR THE INCREMENT:   1 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  1 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  0.100    ,  FRACTION OF STEP COMPLETED  0.800    
 STEP TIME COMPLETED       0.800    ,  TOTAL TIME COMPLETED        0.800    


  INCREMENT     9 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  0.100    

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    1
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       3.10       TIME AVG. FORCE        1.76    
 LARGEST RESIDUAL FORCE            -4.254E-05   AT NODE       4701   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -1.809E-02   AT NODE        228   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.426E-04   AT NODE        462   DOF  2
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     6.592E-04   TIME AVG. MOMENT      3.543E-04
 LARGEST RESIDUAL MOMENT            3.758E-07   AT NODE       4724   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION     -5.312E-04   AT NODE       4731   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -7.319E-05   AT NODE       3351   DOF  5
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF ROTATION CORRECTION    8.928E-07
 MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 ITERATION SUMMARY FOR THE INCREMENT:   1 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  1 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  0.100    ,  FRACTION OF STEP COMPLETED  0.900    
 STEP TIME COMPLETED       0.900    ,  TOTAL TIME COMPLETED        0.900    


  INCREMENT    10 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  0.100    

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    1
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       3.38       TIME AVG. FORCE        1.92    
 LARGEST RESIDUAL FORCE            -6.336E-05   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF DISP.        -1.809E-02   AT NODE        565   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -1.955E-04   AT NODE        579   DOF  2
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF DISP.    CORRECTION   -4.203E-07
 FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                     7.526E-04   TIME AVG. MOMENT      3.941E-04
 LARGEST RESIDUAL MOMENT           -5.559E-07   AT NODE       4724   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION      6.018E-04   AT NODE       3291   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -1.076E-04   AT NODE       3351   DOF  5
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF ROTATION CORRECTION    1.778E-06
 MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 ITERATION SUMMARY FOR THE INCREMENT:   1 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  1 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  0.100    ,  FRACTION OF STEP COMPLETED   1.00    
 STEP TIME COMPLETED        1.00    ,  TOTAL TIME COMPLETED         1.00    
1

   Abaqus 2020                                  Date 10-Nov-2026   Time 17:43:30
   For use by CAL TECH under license from Dassault Systemes or its subsidiary.

                                                                                 
                                                                                 
 STEP    2     INCREMENT     1     STEP TIME    0.00    


                        S T E P       2     C A L C U L A T I O N   O F   E I G E N V A L U E S

                                            F O R   B U C K L I N G   P R E D I C T I O N



                                                                                          

     THE LANCZOS EIGENSOLVER IS USED FOR THIS ANALYSIS
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

     CHARACTERISTIC ELEMENT LENGTH      5.00    

     DETAILS REGARDING ACTUAL SOLUTION WAVEFRONT REQUESTED

     DETAILED OUTPUT OF DIAGNOSTICS TO DATABASE REQUESTED

     PRINT OF INCREMENT NUMBER, TIME, ETC., TO THE MESSAGE FILE EVERY     1  INCREMENTS

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    1
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          1

     CHECK POINT   START OF SOLVER    
  
 COMPUTER PRECISION USED BY ABAQUS       2.22045e-16
 CONVERGENCE CRITERION FOR LANCZOS RUN   1.81899e-12
  
 NUMBER OF EQUATIONS                                                           29712
 NUMBER OF UNRESTRAINED DEGREES OF FREEDOM                                     29705
 HEURISTIC SCALE FOR THE FIRST NONZERO EIGENVALUES (PROBLEM SCALE)   1.56059e-04
 INITIAL SHIFT VALUE                                                 1.56059e-04
  
 NUMBER OF CPUS USED BY DIRECT SOLVER     1
  
 NUMBER OF NEGATIVE EIGENVALUES     0
 NUMBER OF POSITIVE EIGENVALUES     29712
 NUMBER OF NEGATIVE EIGENVALUES NOT ASSOCIATED WITH LAGRANGE MULTIPLIERS     0
 NUMBER OF LAGRANGE MULTIPLIERS     0
  
 COMPUTATIONAL INTERVAL FOR THE INITIAL LANCZOS RUN
 
 EIGENVALUES NEEDED TO THE RIGHT OF SHIFT VALUE    4
 EIGENVALUES NEEDED TO THE LEFT OF SHIFT VALUE     4
 RIGHT BOUNDARY OF THE COMPUTATIONAL INTERVAL   3.51414e+11
 LEFT BOUNDARY OF THE COMPUTATIONAL INTERVAL    0.00000e+00
  
 LANCZOS RUN TERMINATED. NUMBER OF STEPS:   28
 ALL THE EIGENVALUES FOUND ON THE FIRST RUN
  
 NUMBER OF ACCEPTED EIGENVALUES    5
  
 ACCEPTED EIGENVALUES
   5.01373e-02  5.01562e-02  5.01724e-02  5.01925e-02  5.11581e-02
  
 FACTORIZATION WITH NEW SHIFT VALUE IS REQUIRED
  
 TRUST INTERVALS AFTER LANCZOS RUN AND COMPRESSION
  
 NUMBER OF TRUST INTERVALS    1
  
 -------------------------------------------------------------------------------------
 | KEY | INSIDE |      INERTIAS     |  SENTINELS  |   OUTSIDE   |  NEED TO FIND      |
 |      ENDS OF INTERVAL     |     ENDS OF SENTINEL      |   COMPUTATIONAL INTERVAL  |
 -------------------------------------------------------------------------------------
 |  +  |      0 |        0        0 |     0     0 |     0     0 |      4     5       |
 |  0.00000e+00  1.56059e-04 |  0.00000e+00  1.56059e-04 |  0.00000e+00  3.51414e+11 |
 -------------------------------------------------------------------------------------
  
 DATA FOR CHOOSING SHIFT
  
 NUMBER OF EIGENVALUES NEEDED IN THE PRIMARY TRUST INTERVAL    4
  
 NUMBER OF MODES FORMING SENTINEL TO THE RIGHT    5
 SHIFT RIGHT         5.11684e-02
  
 NUMBER OF MODES FORMING SENTINEL TO THE LEFT     0
 SHIFT LEFT         -5.08460e-02
  
 SHIFTING TO THE RIGHT DIRECTION
 NEW SHIFT           5.11684e-02
  
 NUMBER OF NEGATIVE EIGENVALUES     5
 NUMBER OF POSITIVE EIGENVALUES     29707
 NUMBER OF NEGATIVE EIGENVALUES NOT ASSOCIATED WITH LAGRANGE MULTIPLIERS     5
 NUMBER OF LAGRANGE MULTIPLIERS     0
  
 THE REQUIRED NUMBER OF EIGENVALUES IS FOUND
  
 FINAL TRUST INTERVAL
  
 -------------------------------------------------------------------------------------
 | KEY | INSIDE |      INERTIAS     |  SENTINELS  |   OUTSIDE   |  NEED TO FIND      |
 |      ENDS OF INTERVAL     |     ENDS OF SENTINEL      |   COMPUTATIONAL INTERVAL  |
 -------------------------------------------------------------------------------------
 |  +  |      5 |        0        5 |     0     0 |     0     0 |      4     0       |
 |  0.00000e+00  5.11684e-02 |  0.00000e+00  5.11684e-02 |  0.00000e+00  5.11684e-02 |
 -------------------------------------------------------------------------------------
  
 FIRST EIGENVALUE REQUESTED BY THE USER     1
 THERE ARE MORE EIGENVALUES IN THE SPECIFIED RANGE THAN REQUESTED
  
 EIGENVALUES REQUESTED BY THE USER
   5.01373e-02  5.01562e-02  5.01724e-02  5.01925e-02
  
 EIGENVALUE EXTRACTION USING THE LANCZOS EIGENSOLVER IS COMPLETE
 NUMBER OF LANCZOS RUNS       :   1
 NUMBER OF LANCZOS STEPS      :  28
 NUMBER OF FACTORIZATIONS     :   2
 NUMBER OF BACK SUBSTITUTIONS :  29

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   2.1000    
       ELAPSED SYSTEM TIME (SEC)    =  0.40000    
       ELAPSED TOTAL CPU TIME (SEC) =   2.5000    
       ELAPSED WALLCLOCK TIME (SEC) =          2


          THE ANALYSIS HAS BEEN COMPLETED



     ANALYSIS SUMMARY:
     TOTAL OF         11  INCREMENTS
                       0  CUTBACKS IN AUTOMATIC INCREMENTATION
                      13  ITERATIONS INCLUDING CONTACT ITERATIONS IF PRESENT
                      43  PASSES THROUGH THE EQUATION SOLVER OF WHICH 
                      14  INVOLVE MATRIX DECOMPOSITION, INCLUDING
                       0  DECOMPOSITION(S) OF THE MASS MATRIX
                       1  REORDERING OF EQUATIONS TO MINIMIZE WAVEFRONT
                       0  ADDITIONAL RESIDUAL EVALUATIONS FOR LINE SEARCHES
                       0  ADDITIONAL OPERATOR EVALUATIONS FOR LINE SEARCHES
                       1  WARNING MESSAGES DURING USER INPUT PROCESSING
                       0  WARNING MESSAGES DURING ANALYSIS
                       0  ANALYSIS WARNINGS ARE NUMERICAL PROBLEM MESSAGES
                       0  ANALYSIS WARNINGS ARE NEGATIVE EIGENVALUE MESSAGES
                       0  ERROR MESSAGES



     JOB TIME SUMMARY
       USER TIME (SEC)      =   9.9000    
       SYSTEM TIME (SEC)    =  0.80000    
       TOTAL CPU TIME (SEC) =   10.700    
       WALLCLOCK TIME (SEC) =         11
