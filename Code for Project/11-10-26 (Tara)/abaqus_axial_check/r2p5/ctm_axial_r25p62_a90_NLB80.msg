1

   Abaqus 2020                                  Date 10-Nov-2026   Time 17:42:51
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

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      0.136       TIME AVG. FORCE       0.136    
 LARGEST RESIDUAL FORCE            -5.356E-03   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF DISP.        -1.524E-02   AT NODE        228   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -1.524E-02   AT NODE        228   DOF  1
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     5.627E-05   TIME AVG. MOMENT      5.627E-05
 LARGEST RESIDUAL MOMENT           -1.158E-05   AT NODE       2661   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION      3.475E-04   AT NODE        118   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     3.475E-04   AT NODE        118   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    1
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                      0.136       TIME AVG. FORCE       0.136    
 LARGEST RESIDUAL FORCE            -6.267E-07   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF DISP.        -1.524E-02   AT NODE        228   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -9.432E-06   AT NODE        669   DOF  2
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     5.629E-05   TIME AVG. MOMENT      5.629E-05
 LARGEST RESIDUAL MOMENT            3.562E-08   AT NODE       1190   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION     -3.467E-04   AT NODE        236   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     5.295E-06   AT NODE       2652   DOF  5
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


 AVERAGE FORCE                      0.136       TIME AVG. FORCE       0.136    
 LARGEST RESIDUAL FORCE             1.678E-09   AT NODE        210   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -1.524E-02   AT NODE        228   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        2.673E-10   AT NODE        237   DOF  2
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     5.629E-05   TIME AVG. MOMENT      5.629E-05
 LARGEST RESIDUAL MOMENT            5.650E-08   AT NODE          2   DOF  6
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF ROTATION     -3.467E-04   AT NODE        334   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.160E-09   AT NODE       1219   DOF  5
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

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      0.626       TIME AVG. FORCE       0.381    
 LARGEST RESIDUAL FORCE             5.121E-06   AT NODE       1242   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -1.524E-02   AT NODE        228   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.976E-05   AT NODE        462   DOF  2
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     1.160E-04   TIME AVG. MOMENT      8.613E-05
 LARGEST RESIDUAL MOMENT           -1.011E-07   AT NODE          2   DOF  6
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF ROTATION     -3.449E-04   AT NODE        236   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.094E-05   AT NODE       2652   DOF  5
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF ROTATION CORRECTION    4.773E-08
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

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      0.934       TIME AVG. FORCE       0.565    
 LARGEST RESIDUAL FORCE            -6.330E-06   AT NODE       4701   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -1.524E-02   AT NODE        228   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        2.472E-05   AT NODE        552   DOF  2
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     1.741E-04   TIME AVG. MOMENT      1.155E-04
 LARGEST RESIDUAL MOMENT            1.196E-07   AT NODE          2   DOF  6
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF ROTATION      3.426E-04   AT NODE         20   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -1.280E-05   AT NODE       1212   DOF  5
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF ROTATION CORRECTION   -6.589E-08
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
       ELAPSED WALLCLOCK TIME (SEC) =          1

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       1.24       TIME AVG. FORCE       0.734    
 LARGEST RESIDUAL FORCE            -7.152E-06   AT NODE       4701   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -1.524E-02   AT NODE        228   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -2.813E-05   AT NODE        579   DOF  2
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     2.328E-04   TIME AVG. MOMENT      1.448E-04
 LARGEST RESIDUAL MOMENT           -9.497E-08   AT NODE       4738   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION     -3.415E-04   AT NODE        895   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.398E-05   AT NODE       2652   DOF  5
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF ROTATION CORRECTION   -5.737E-08
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

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       1.54       TIME AVG. FORCE       0.895    
 LARGEST RESIDUAL FORCE            -8.321E-06   AT NODE       3321   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -1.524E-02   AT NODE        228   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        3.296E-05   AT NODE        552   DOF  2
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     2.923E-04   TIME AVG. MOMENT      1.743E-04
 LARGEST RESIDUAL MOMENT           -1.063E-07   AT NODE       2659   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION      3.437E-04   AT NODE       2675   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -1.567E-05   AT NODE       1212   DOF  5
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF ROTATION CORRECTION   -7.219E-08
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
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       1.83       TIME AVG. FORCE        1.05    
 LARGEST RESIDUAL FORCE            -9.834E-06   AT NODE       3321   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -1.524E-02   AT NODE        228   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -3.921E-05   AT NODE        579   DOF  2
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     3.522E-04   TIME AVG. MOMENT      2.040E-04
 LARGEST RESIDUAL MOMENT            1.201E-07   AT NODE       1205   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION     -3.460E-04   AT NODE        895   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.779E-05   AT NODE       3291   DOF  5
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF ROTATION CORRECTION    9.300E-08
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

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          1

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       2.12       TIME AVG. FORCE        1.20    
 LARGEST RESIDUAL FORCE            -1.177E-05   AT NODE       4701   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -1.524E-02   AT NODE        228   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        4.717E-05   AT NODE        552   DOF  2
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     4.132E-04   TIME AVG. MOMENT      2.338E-04
 LARGEST RESIDUAL MOMENT           -1.364E-07   AT NODE       4738   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION     -3.484E-04   AT NODE        895   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     2.151E-05   AT NODE       4671   DOF  5
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF ROTATION CORRECTION   -1.285E-07
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
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       2.40       TIME AVG. FORCE        1.35    
 LARGEST RESIDUAL FORCE            -1.429E-05   AT NODE       3321   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -1.524E-02   AT NODE        228   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        5.749E-05   AT NODE        462   DOF  2
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     4.760E-04   TIME AVG. MOMENT      2.641E-04
 LARGEST RESIDUAL MOMENT           -1.560E-07   AT NODE       4738   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION      3.622E-04   AT NODE       3292   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -2.692E-05   AT NODE       3351   DOF  5
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF ROTATION CORRECTION    1.856E-07
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


 AVERAGE FORCE                       2.68       TIME AVG. FORCE        1.50    
 LARGEST RESIDUAL FORCE            -1.769E-05   AT NODE       4701   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -1.523E-02   AT NODE        228   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        7.113E-05   AT NODE        552   DOF  2
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     5.410E-04   TIME AVG. MOMENT      2.949E-04
 LARGEST RESIDUAL MOMENT            1.796E-07   AT NODE       2645   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION     -3.897E-04   AT NODE       1212   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     3.437E-05   AT NODE       4671   DOF  5
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF ROTATION CORRECTION   -2.760E-07
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


 AVERAGE FORCE                       2.94       TIME AVG. FORCE        1.65    
 LARGEST RESIDUAL FORCE            -2.241E-05   AT NODE       3321   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -1.523E-02   AT NODE        228   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -8.961E-05   AT NODE        669   DOF  2
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     6.093E-04   TIME AVG. MOMENT      3.263E-04
 LARGEST RESIDUAL MOMENT           -2.082E-07   AT NODE       2659   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION     -4.237E-04   AT NODE       4731   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     4.501E-05   AT NODE       4671   DOF  5
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF ROTATION CORRECTION    4.257E-07
 MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 ITERATION SUMMARY FOR THE INCREMENT:   1 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  1 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  0.100    ,  FRACTION OF STEP COMPLETED   1.00    
 STEP TIME COMPLETED        1.00    ,  TOTAL TIME COMPLETED         1.00    
1

   Abaqus 2020                                  Date 10-Nov-2026   Time 17:42:59
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

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

     CHECK POINT   START OF SOLVER    
  
 COMPUTER PRECISION USED BY ABAQUS       2.22045e-16
 CONVERGENCE CRITERION FOR LANCZOS RUN   1.81899e-12
  
 NUMBER OF EQUATIONS                                                           29712
 NUMBER OF UNRESTRAINED DEGREES OF FREEDOM                                     29705
 HEURISTIC SCALE FOR THE FIRST NONZERO EIGENVALUES (PROBLEM SCALE)   1.56127e-04
 INITIAL SHIFT VALUE                                                 1.56127e-04
  
 NUMBER OF CPUS USED BY DIRECT SOLVER     1
  
 NUMBER OF NEGATIVE EIGENVALUES     0
 NUMBER OF POSITIVE EIGENVALUES     29712
 NUMBER OF NEGATIVE EIGENVALUES NOT ASSOCIATED WITH LAGRANGE MULTIPLIERS     0
 NUMBER OF LAGRANGE MULTIPLIERS     0
  
 COMPUTATIONAL INTERVAL FOR THE INITIAL LANCZOS RUN
 
 EIGENVALUES NEEDED TO THE RIGHT OF SHIFT VALUE    4
 EIGENVALUES NEEDED TO THE LEFT OF SHIFT VALUE     4
 RIGHT BOUNDARY OF THE COMPUTATIONAL INTERVAL   3.51567e+11
 LEFT BOUNDARY OF THE COMPUTATIONAL INTERVAL    0.00000e+00
  
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
 |  0.00000e+00  1.56127e-04 |  0.00000e+00  1.56127e-04 |  0.00000e+00  3.51567e+11 |
 -------------------------------------------------------------------------------------
  
 DATA FOR CHOOSING SHIFT
  
 NUMBER OF EIGENVALUES NEEDED IN THE PRIMARY TRUST INTERVAL    4
  
 NUMBER OF MODES FORMING SENTINEL TO THE RIGHT    0
 SHIFT RIGHT         2.03714e-01
  
 NUMBER OF MODES FORMING SENTINEL TO THE LEFT     0
 SHIFT LEFT         -1.40514e-03
  
 SHIFTING TO THE RIGHT DIRECTION
 NEW SHIFT           2.03714e-01
  
 NUMBER OF NEGATIVE EIGENVALUES     8
 NUMBER OF POSITIVE EIGENVALUES     29704
 NUMBER OF NEGATIVE EIGENVALUES NOT ASSOCIATED WITH LAGRANGE MULTIPLIERS     8
 NUMBER OF LAGRANGE MULTIPLIERS     0
  
 NEW LANCZOS RUN IS REQUIRED
  
 TYPE OF RUN: EXPAND THE TRUST INTERVAL TO THE RIGHT
 EIGENVALUES NEEDED TO THE RIGHT     0
 EIGENVALUES NEEDED TO THE LEFT      8
 RIGHT BOUNDARY OF THE INTERVAL   2.03714e-01
 LEFT BOUNDARY OF THE INTERVAL    1.56127e-04
  
 TRUST INTERVALS AFTER FACTORIZATION AND COMPRESSION
  
 -------------------------------------------------------------------------------------
 | KEY | INSIDE |      INERTIAS     |  SENTINELS  |   OUTSIDE   |  NEED TO FIND      |
 |      ENDS OF INTERVAL     |     ENDS OF SENTINEL      |   COMPUTATIONAL INTERVAL  |
 -------------------------------------------------------------------------------------
 |  +  |      0 |        0        0 |     0     0 |     0     0 |      4     4       |
 |  0.00000e+00  1.56127e-04 |  0.00000e+00  1.56127e-04 |  0.00000e+00  3.51567e+11 |
 -------------------------------------------------------------------------------------
 |  -  |      0 |        8        8 |     0     0 |     0     0 |      8     0       |
 |  2.03714e-01  2.03714e-01 |  2.03714e-01  2.03714e-01 |  1.56127e-04  2.03714e-01 |
 -------------------------------------------------------------------------------------
  
 LANCZOS RUN TERMINATED. NUMBER OF STEPS:    8
 ALL THE EIGENVALUES REQUESTED ON THIS LANCZOS RUN ARE FOUND
  
 NUMBER OF ACCEPTED EIGENVALUES    8
  
 ACCEPTED EIGENVALUES
   2.02414e-01  2.02433e-01  2.02449e-01  2.02469e-01  2.03440e-01  2.03461e-01
   2.03531e-01  2.03555e-01
  
 THE REQUIRED NUMBER OF EIGENVALUES IS FOUND
  
 FINAL TRUST INTERVALS AFTER SUCCESSFUL LANCZOS RUN
  
 NUMBER OF TRUST INTERVALS    1
  
 -------------------------------------------------------------------------------------
 | KEY | INSIDE |      INERTIAS     |  SENTINELS  |   OUTSIDE   |  NEED TO FIND      |
 |      ENDS OF INTERVAL     |     ENDS OF SENTINEL      |   COMPUTATIONAL INTERVAL  |
 -------------------------------------------------------------------------------------
 |  +  |      8 |        0        8 |     0     0 |     0     0 |      4     0       |
 |  0.00000e+00  2.03714e-01 |  0.00000e+00  2.03714e-01 |  0.00000e+00  2.03714e-01 |
 -------------------------------------------------------------------------------------
  
 FIRST EIGENVALUE REQUESTED BY THE USER     1
 THERE ARE MORE EIGENVALUES IN THE SPECIFIED RANGE THAN REQUESTED
  
 EIGENVALUES REQUESTED BY THE USER
   2.02414e-01  2.02433e-01  2.02449e-01  2.02469e-01
  
 EIGENVALUE EXTRACTION USING THE LANCZOS EIGENSOLVER IS COMPLETE
 NUMBER OF LANCZOS RUNS       :   2
 NUMBER OF LANCZOS STEPS      :  38
 NUMBER OF FACTORIZATIONS     :   2
 NUMBER OF BACK SUBSTITUTIONS :  39

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   2.7000    
       ELAPSED SYSTEM TIME (SEC)    =  0.30000    
       ELAPSED TOTAL CPU TIME (SEC) =   3.0000    
       ELAPSED WALLCLOCK TIME (SEC) =          3


          THE ANALYSIS HAS BEEN COMPLETED



     ANALYSIS SUMMARY:
     TOTAL OF         11  INCREMENTS
                       0  CUTBACKS IN AUTOMATIC INCREMENTATION
                      13  ITERATIONS INCLUDING CONTACT ITERATIONS IF PRESENT
                      53  PASSES THROUGH THE EQUATION SOLVER OF WHICH 
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
       USER TIME (SEC)      =   11.100    
       SYSTEM TIME (SEC)    =  0.80000    
       TOTAL CPU TIME (SEC) =   11.900    
       WALLCLOCK TIME (SEC) =         11
