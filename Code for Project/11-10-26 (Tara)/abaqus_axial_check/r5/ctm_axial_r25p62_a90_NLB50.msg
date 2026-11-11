1

   Abaqus 2020                                  Date 10-Nov-2026   Time 17:32:22
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
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      8.514E-02   TIME AVG. FORCE       8.514E-02
 LARGEST RESIDUAL FORCE            -2.092E-03   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF DISP.        -9.526E-03   AT NODE        228   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -9.526E-03   AT NODE        228   DOF  1
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     3.517E-05   TIME AVG. MOMENT      3.517E-05
 LARGEST RESIDUAL MOMENT            4.523E-06   AT NODE       1191   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION      2.172E-04   AT NODE        118   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     2.172E-04   AT NODE        118   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    1
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          1

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                      8.514E-02   TIME AVG. FORCE       8.514E-02
 LARGEST RESIDUAL FORCE            -9.773E-08   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF DISP.        -9.526E-03   AT NODE        228   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        3.620E-06   AT NODE        462   DOF  2
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     3.517E-05   TIME AVG. MOMENT      3.517E-05
 LARGEST RESIDUAL MOMENT            1.015E-07   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF ROTATION     -2.169E-04   AT NODE        236   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -2.044E-06   AT NODE       1212   DOF  5
   INSTANCE: SHELL-1                                                                         
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED

 ITERATION SUMMARY FOR THE INCREMENT:   2 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  2 ARE EQUILIBRIUM ITERATIONS.

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


 AVERAGE FORCE                      0.393       TIME AVG. FORCE       0.239    
 LARGEST RESIDUAL FORCE             1.209E-06   AT NODE       1242   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -9.525E-03   AT NODE        228   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -7.452E-06   AT NODE        579   DOF  2
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     7.240E-05   TIME AVG. MOMENT      5.378E-05
 LARGEST RESIDUAL MOMENT           -4.498E-08   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF ROTATION      2.162E-04   AT NODE         20   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     4.170E-06   AT NODE       2652   DOF  5
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF ROTATION CORRECTION    2.069E-08
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
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      0.587       TIME AVG. FORCE       0.355    
 LARGEST RESIDUAL FORCE             1.381E-06   AT NODE       1242   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -9.525E-03   AT NODE        228   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        8.578E-06   AT NODE        462   DOF  2
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     1.087E-04   TIME AVG. MOMENT      7.208E-05
 LARGEST RESIDUAL MOMENT            2.521E-08   AT NODE          2   DOF  6
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF ROTATION     -2.154E-04   AT NODE        236   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -4.597E-06   AT NODE       1212   DOF  5
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF ROTATION CORRECTION    1.279E-08
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

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          1

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      0.781       TIME AVG. FORCE       0.462    
 LARGEST RESIDUAL FORCE            -1.478E-06   AT NODE       4701   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -9.525E-03   AT NODE        228   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -9.217E-06   AT NODE        579   DOF  2
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     1.451E-04   TIME AVG. MOMENT      9.033E-05
 LARGEST RESIDUAL MOMENT           -1.230E-07   AT NODE          2   DOF  6
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF ROTATION      2.146E-04   AT NODE         20   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     4.828E-06   AT NODE       2652   DOF  5
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF ROTATION CORRECTION    6.557E-08
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


 AVERAGE FORCE                      0.973       TIME AVG. FORCE       0.564    
 LARGEST RESIDUAL FORCE             1.614E-06   AT NODE       1242   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -9.524E-03   AT NODE        228   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.011E-05   AT NODE        462   DOF  2
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     1.814E-04   TIME AVG. MOMENT      1.086E-04
 LARGEST RESIDUAL MOMENT           -5.125E-08   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF ROTATION      2.137E-04   AT NODE         20   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     5.153E-06   AT NODE       2652   DOF  5
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF ROTATION CORRECTION   -2.921E-08
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

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       1.16       TIME AVG. FORCE       0.664    
 LARGEST RESIDUAL FORCE            -1.773E-06   AT NODE       4701   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -9.524E-03   AT NODE        228   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -1.116E-05   AT NODE        579   DOF  2
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     2.180E-04   TIME AVG. MOMENT      1.268E-04
 LARGEST RESIDUAL MOMENT            3.172E-08   AT NODE          2   DOF  6
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF ROTATION     -2.133E-04   AT NODE        895   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -5.526E-06   AT NODE       1212   DOF  5
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF ROTATION CORRECTION    1.941E-08
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
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       1.35       TIME AVG. FORCE       0.763    
 LARGEST RESIDUAL FORCE            -1.954E-06   AT NODE       4701   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -9.524E-03   AT NODE        228   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.236E-05   AT NODE        552   DOF  2
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     2.550E-04   TIME AVG. MOMENT      1.451E-04
 LARGEST RESIDUAL MOMENT            1.049E-07   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF ROTATION      2.142E-04   AT NODE       2969   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     5.943E-06   AT NODE       3291   DOF  5
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF ROTATION CORRECTION    6.918E-08
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


 AVERAGE FORCE                       1.54       TIME AVG. FORCE       0.860    
 LARGEST RESIDUAL FORCE            -2.163E-06   AT NODE       3321   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -9.523E-03   AT NODE        228   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.373E-05   AT NODE        462   DOF  2
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     2.923E-04   TIME AVG. MOMENT      1.635E-04
 LARGEST RESIDUAL MOMENT            7.447E-08   AT NODE          2   DOF  6
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF ROTATION     -2.151E-04   AT NODE        895   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -6.415E-06   AT NODE       4731   DOF  5
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF ROTATION CORRECTION   -5.317E-08
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
       ELAPSED WALLCLOCK TIME (SEC) =          1

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       1.73       TIME AVG. FORCE       0.956    
 LARGEST RESIDUAL FORCE            -2.404E-06   AT NODE       3321   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -9.523E-03   AT NODE        228   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.532E-05   AT NODE        552   DOF  2
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     3.296E-04   TIME AVG. MOMENT      1.820E-04
 LARGEST RESIDUAL MOMENT           -1.734E-07   AT NODE          2   DOF  6
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF ROTATION     -2.160E-04   AT NODE       1189   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     6.953E-06   AT NODE       3291   DOF  5
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF ROTATION CORRECTION    1.346E-07
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

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       1.90       TIME AVG. FORCE        1.05    
 LARGEST RESIDUAL FORCE            -2.685E-06   AT NODE       4701   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -9.523E-03   AT NODE        228   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -1.718E-05   AT NODE        579   DOF  2
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     3.673E-04   TIME AVG. MOMENT      2.005E-04
 LARGEST RESIDUAL MOMENT            1.287E-07   AT NODE          2   DOF  6
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF ROTATION     -2.169E-04   AT NODE        895   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     7.765E-06   AT NODE       4671   DOF  5
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF ROTATION CORRECTION    1.120E-07
 MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 ITERATION SUMMARY FOR THE INCREMENT:   1 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  1 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  0.100    ,  FRACTION OF STEP COMPLETED   1.00    
 STEP TIME COMPLETED        1.00    ,  TOTAL TIME COMPLETED         1.00    
1

   Abaqus 2020                                  Date 10-Nov-2026   Time 17:32:29
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
       ELAPSED WALLCLOCK TIME (SEC) =          0

     CHECK POINT   START OF SOLVER    
  
 COMPUTER PRECISION USED BY ABAQUS       2.22045e-16
 CONVERGENCE CRITERION FOR LANCZOS RUN   1.81899e-12
  
 NUMBER OF EQUATIONS                                                           29712
 NUMBER OF UNRESTRAINED DEGREES OF FREEDOM                                     29705
 HEURISTIC SCALE FOR THE FIRST NONZERO EIGENVALUES (PROBLEM SCALE)   1.56257e-04
 INITIAL SHIFT VALUE                                                 1.56257e-04
  
 NUMBER OF CPUS USED BY DIRECT SOLVER     1
  
 NUMBER OF NEGATIVE EIGENVALUES     0
 NUMBER OF POSITIVE EIGENVALUES     29712
 NUMBER OF NEGATIVE EIGENVALUES NOT ASSOCIATED WITH LAGRANGE MULTIPLIERS     0
 NUMBER OF LAGRANGE MULTIPLIERS     0
  
 COMPUTATIONAL INTERVAL FOR THE INITIAL LANCZOS RUN
 
 EIGENVALUES NEEDED TO THE RIGHT OF SHIFT VALUE    4
 EIGENVALUES NEEDED TO THE LEFT OF SHIFT VALUE     4
 RIGHT BOUNDARY OF THE COMPUTATIONAL INTERVAL   3.51860e+11
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
 |  0.00000e+00  1.56257e-04 |  0.00000e+00  1.56257e-04 |  0.00000e+00  3.51860e+11 |
 -------------------------------------------------------------------------------------
  
 DATA FOR CHOOSING SHIFT
  
 NUMBER OF EIGENVALUES NEEDED IN THE PRIMARY TRUST INTERVAL    4
  
 NUMBER OF MODES FORMING SENTINEL TO THE RIGHT    0
 SHIFT RIGHT         5.06747e-01
  
 NUMBER OF MODES FORMING SENTINEL TO THE LEFT     0
 SHIFT LEFT         -1.40632e-03
  
 SHIFTING TO THE RIGHT DIRECTION
 NEW SHIFT           5.06747e-01
  
 NUMBER OF NEGATIVE EIGENVALUES     0
 NUMBER OF POSITIVE EIGENVALUES     29712
 NUMBER OF NEGATIVE EIGENVALUES NOT ASSOCIATED WITH LAGRANGE MULTIPLIERS     0
 NUMBER OF LAGRANGE MULTIPLIERS     0
  
 NEW LANCZOS RUN IS REQUIRED
  
 TYPE OF RUN: EXPAND THE TRUST INTERVAL TO THE RIGHT
 EIGENVALUES NEEDED TO THE RIGHT     4
 EIGENVALUES NEEDED TO THE LEFT      0
 RIGHT BOUNDARY OF THE INTERVAL   3.51860e+11
 LEFT BOUNDARY OF THE INTERVAL    5.06747e-01
  
 TRUST INTERVALS AFTER FACTORIZATION AND COMPRESSION
  
 -------------------------------------------------------------------------------------
 | KEY | INSIDE |      INERTIAS     |  SENTINELS  |   OUTSIDE   |  NEED TO FIND      |
 |      ENDS OF INTERVAL     |     ENDS OF SENTINEL      |   COMPUTATIONAL INTERVAL  |
 -------------------------------------------------------------------------------------
 |  +  |      0 |        0        0 |     0     0 |     0     0 |      4     4       |
 |  0.00000e+00  5.06747e-01 |  0.00000e+00  5.06747e-01 |  0.00000e+00  3.51860e+11 |
 -------------------------------------------------------------------------------------
  
 LANCZOS RUN TERMINATED. NUMBER OF STEPS:    5
 ALL THE EIGENVALUES REQUESTED ON THIS LANCZOS RUN ARE FOUND
  
 NUMBER OF ACCEPTED EIGENVALUES    4
  
 ACCEPTED EIGENVALUES
   5.06950e-01  5.06969e-01  5.06984e-01  5.07004e-01
  
 FACTORIZATION WITH NEW SHIFT VALUE IS REQUIRED
  
 TRUST INTERVALS AFTER LANCZOS RUN AND COMPRESSION
  
 NUMBER OF TRUST INTERVALS    1
  
 -------------------------------------------------------------------------------------
 | KEY | INSIDE |      INERTIAS     |  SENTINELS  |   OUTSIDE   |  NEED TO FIND      |
 |      ENDS OF INTERVAL     |     ENDS OF SENTINEL      |   COMPUTATIONAL INTERVAL  |
 -------------------------------------------------------------------------------------
 |  +  |      0 |        0        0 |     0     0 |     0     0 |      4     4       |
 |  0.00000e+00  5.06747e-01 |  0.00000e+00  5.06747e-01 |  0.00000e+00  3.51860e+11 |
 -------------------------------------------------------------------------------------
  
 DATA FOR CHOOSING SHIFT
  
 NUMBER OF EIGENVALUES NEEDED IN THE PRIMARY TRUST INTERVAL    4
  
 NUMBER OF MODES FORMING SENTINEL TO THE RIGHT    4
 SHIFT RIGHT         5.07495e-01
  
 NUMBER OF MODES FORMING SENTINEL TO THE LEFT     0
 SHIFT LEFT          5.06747e-01
  
 SHIFTING TO THE RIGHT DIRECTION
 NEW SHIFT           5.07495e-01
  
 NUMBER OF NEGATIVE EIGENVALUES     4
 NUMBER OF POSITIVE EIGENVALUES     29708
 NUMBER OF NEGATIVE EIGENVALUES NOT ASSOCIATED WITH LAGRANGE MULTIPLIERS     4
 NUMBER OF LAGRANGE MULTIPLIERS     0
  
 THE REQUIRED NUMBER OF EIGENVALUES IS FOUND
  
 FINAL TRUST INTERVAL
  
 -------------------------------------------------------------------------------------
 | KEY | INSIDE |      INERTIAS     |  SENTINELS  |   OUTSIDE   |  NEED TO FIND      |
 |      ENDS OF INTERVAL     |     ENDS OF SENTINEL      |   COMPUTATIONAL INTERVAL  |
 -------------------------------------------------------------------------------------
 |  +  |      4 |        0        4 |     0     0 |     0     0 |      4     0       |
 |  0.00000e+00  5.07495e-01 |  0.00000e+00  5.07495e-01 |  0.00000e+00  5.07495e-01 |
 -------------------------------------------------------------------------------------
  
 FIRST EIGENVALUE REQUESTED BY THE USER     1
 THERE MAY BE MORE EIGENVALUES IN THE SPECIFIED RANGE THAN REQUESTED
  
 EIGENVALUES REQUESTED BY THE USER
   5.06950e-01  5.06969e-01  5.06984e-01  5.07004e-01
  
 EIGENVALUE EXTRACTION USING THE LANCZOS EIGENSOLVER IS COMPLETE
 NUMBER OF LANCZOS RUNS       :   2
 NUMBER OF LANCZOS STEPS      :  35
 NUMBER OF FACTORIZATIONS     :   3
 NUMBER OF BACK SUBSTITUTIONS :  36

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   3.1000    
       ELAPSED SYSTEM TIME (SEC)    =  0.50000    
       ELAPSED TOTAL CPU TIME (SEC) =   3.6000    
       ELAPSED WALLCLOCK TIME (SEC) =          4


          THE ANALYSIS HAS BEEN COMPLETED



     ANALYSIS SUMMARY:
     TOTAL OF         11  INCREMENTS
                       0  CUTBACKS IN AUTOMATIC INCREMENTATION
                      12  ITERATIONS INCLUDING CONTACT ITERATIONS IF PRESENT
                      50  PASSES THROUGH THE EQUATION SOLVER OF WHICH 
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
       USER TIME (SEC)      =   10.300    
       SYSTEM TIME (SEC)    =   1.0000    
       TOTAL CPU TIME (SEC) =   11.300    
       WALLCLOCK TIME (SEC) =         11
