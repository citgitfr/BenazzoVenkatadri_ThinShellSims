1

   Abaqus 2020                                  Date 10-Nov-2026   Time 17:43:55
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

     THE STEP ENDS WHEN LOAD PROPORTIONALITY FACTOR EXCEEDS    3.00    

     THE STEP ENDS WHEN DISPLACEMENT AT NODE          2 INSTANCE                                                                                  DOF  1 EXCEEDS   0.600    

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

     THE MAXIMUM NUMBER OF INCREMENTS IN THIS STEP IS                     300

          LARGE DISPLACEMENT THEORY WILL BE USED

     LINEAR EXTRAPOLATION WILL BE USED

     CHARACTERISTIC ELEMENT LENGTH      5.00    

     DETAILS REGARDING ACTUAL SOLUTION WAVEFRONT REQUESTED

     DETAILED OUTPUT OF DIAGNOSTICS TO DATABASE REQUESTED

     PRINT OF INCREMENT NUMBER, TIME, ETC., TO THE MESSAGE FILE EVERY     1  INCREMENTS

     COLLECTING MODEL CONSTRAINT INFORMATION FOR OVERCONSTRAINT CHECKS

     COLLECTING STEP CONSTRAINT INFORMATION FOR OVERCONSTRAINT CHECKS


  INCREMENT     1 STARTS. ATTEMPT NUMBER  1

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      8.396E-02   TIME AVG. FORCE       8.396E-02
 LARGEST RESIDUAL FORCE            -2.033E-03   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF DISP.        -9.391E-03   AT NODE        228   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -9.391E-03   AT NODE        228   DOF  1
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     4.269E-05   TIME AVG. MOMENT      4.269E-05
 LARGEST RESIDUAL MOMENT           -5.506E-06   AT NODE        402   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION      2.142E-04   AT NODE         20   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     2.142E-04   AT NODE         20   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                      8.396E-02   TIME AVG. FORCE       8.396E-02
 LARGEST RESIDUAL FORCE            -9.761E-08   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF DISP.        -9.391E-03   AT NODE        228   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        2.041E-05   AT NODE        826   DOF  3
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     4.316E-05   TIME AVG. MOMENT      4.316E-05
 LARGEST RESIDUAL MOMENT            2.986E-08   AT NODE          2   DOF  6
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF ROTATION     -2.139E-04   AT NODE        236   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     5.446E-06   AT NODE        826   DOF  4
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                      8.396E-02   TIME AVG. FORCE       8.396E-02
 LARGEST RESIDUAL FORCE             1.051E-08   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF DISP.        -9.391E-03   AT NODE        228   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        6.573E-10   AT NODE       1042   DOF  2
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     4.316E-05   TIME AVG. MOMENT      4.316E-05
 LARGEST RESIDUAL MOMENT            1.594E-08   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF ROTATION     -2.139E-04   AT NODE        236   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -2.834E-10   AT NODE       3284   DOF  5
   INSTANCE: SHELL-1                                                                         
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED

 ITERATION SUMMARY FOR THE INCREMENT:   3 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  3 ARE EQUILIBRIUM ITERATIONS.


                                INCREMENT     1 SUMMARY


     CURRENT LOAD PROPORTIONALITY FACTOR         5.0001E-02
     TOTAL ARC LENGTH   5.000E-02, INCREMENT OF ARC LENGTH   5.000E-02


  INCREMENT     2 STARTS. ATTEMPT NUMBER  1

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      0.343       TIME AVG. FORCE       0.213    
 LARGEST RESIDUAL FORCE            -2.048E-03   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF DISP.        -9.391E-03   AT NODE        228   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -9.391E-03   AT NODE        228   DOF  1
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     8.693E-05   TIME AVG. MOMENT      6.505E-05
 LARGEST RESIDUAL MOMENT           -5.969E-06   AT NODE        402   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION     -2.135E-04   AT NODE        236   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -2.135E-04   AT NODE        236   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                      0.340       TIME AVG. FORCE       0.212    
 LARGEST RESIDUAL FORCE            -1.042E-07   AT NODE        860   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -9.391E-03   AT NODE        228   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        2.358E-05   AT NODE        826   DOF  3
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     8.750E-05   TIME AVG. MOMENT      6.533E-05
 LARGEST RESIDUAL MOMENT           -4.372E-08   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF ROTATION      2.132E-04   AT NODE         20   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     6.294E-06   AT NODE        826   DOF  4
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                      0.340       TIME AVG. FORCE       0.212    
 LARGEST RESIDUAL FORCE             9.314E-09   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF DISP.        -9.391E-03   AT NODE        228   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -8.982E-10   AT NODE       3121   DOF  2
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     8.750E-05   TIME AVG. MOMENT      6.533E-05
 LARGEST RESIDUAL MOMENT           -1.077E-07   AT NODE          2   DOF  6
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF ROTATION      2.132E-04   AT NODE         20   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -5.935E-10   AT NODE       3298   DOF  5
   INSTANCE: SHELL-1                                                                         
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED
          ARC LENGTH INCREMENT MAY NOW INCREASE TO    7.500E-02

 ITERATION SUMMARY FOR THE INCREMENT:   3 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  3 ARE EQUILIBRIUM ITERATIONS.


                                INCREMENT     2 SUMMARY


     CURRENT LOAD PROPORTIONALITY FACTOR         0.1000    
     TOTAL ARC LENGTH   0.100    , INCREMENT OF ARC LENGTH   5.000E-02


  INCREMENT     3 STARTS. ATTEMPT NUMBER  1

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      0.571       TIME AVG. FORCE       0.332    
 LARGEST RESIDUAL FORCE            -4.751E-03   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF DISP.        -1.409E-02   AT NODE        228   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -1.409E-02   AT NODE        228   DOF  1
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     1.550E-04   TIME AVG. MOMENT      9.522E-05
 LARGEST RESIDUAL MOMENT           -1.493E-05   AT NODE        171   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION     -3.193E-04   AT NODE        236   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -3.193E-04   AT NODE        236   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                      0.568       TIME AVG. FORCE       0.331    
 LARGEST RESIDUAL FORCE             7.718E-07   AT NODE        727   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -1.409E-02   AT NODE        228   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        6.427E-05   AT NODE        826   DOF  3
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     1.565E-04   TIME AVG. MOMENT      9.571E-05
 LARGEST RESIDUAL MOMENT            3.888E-08   AT NODE          2   DOF  6
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF ROTATION      3.184E-04   AT NODE         20   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.715E-05   AT NODE        826   DOF  4
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                      0.568       TIME AVG. FORCE       0.331    
 LARGEST RESIDUAL FORCE             7.424E-09   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF DISP.        -1.409E-02   AT NODE        228   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        6.844E-09   AT NODE       4901   DOF  2
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     1.565E-04   TIME AVG. MOMENT      9.571E-05
 LARGEST RESIDUAL MOMENT            3.975E-08   AT NODE          2   DOF  6
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF ROTATION     -3.184E-04   AT NODE        236   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -2.489E-09   AT NODE       3298   DOF  5
   INSTANCE: SHELL-1                                                                         
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED
          ARC LENGTH INCREMENT MAY NOW INCREASE TO    0.100    

 ITERATION SUMMARY FOR THE INCREMENT:   3 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  3 ARE EQUILIBRIUM ITERATIONS.


                                INCREMENT     3 SUMMARY


     CURRENT LOAD PROPORTIONALITY FACTOR         0.1750    
     TOTAL ARC LENGTH   0.175    , INCREMENT OF ARC LENGTH   7.500E-02


  INCREMENT     4 STARTS. ATTEMPT NUMBER  1

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      0.862       TIME AVG. FORCE       0.463    
 LARGEST RESIDUAL FORCE            -8.858E-03   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF DISP.        -1.878E-02   AT NODE        228   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -1.878E-02   AT NODE        228   DOF  1
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     2.511E-04   TIME AVG. MOMENT      1.346E-04
 LARGEST RESIDUAL MOMENT           -3.147E-05   AT NODE        171   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION      4.233E-04   AT NODE         20   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     4.233E-04   AT NODE         20   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                      0.851       TIME AVG. FORCE       0.461    
 LARGEST RESIDUAL FORCE             4.415E-06   AT NODE        761   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -1.878E-02   AT NODE        228   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -1.538E-04   AT NODE        860   DOF  3
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     2.551E-04   TIME AVG. MOMENT      1.356E-04
 LARGEST RESIDUAL MOMENT           -2.272E-07   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF ROTATION      4.217E-04   AT NODE       2675   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     4.104E-05   AT NODE        826   DOF  4
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =  0.10000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                      0.851       TIME AVG. FORCE       0.461    
 LARGEST RESIDUAL FORCE            -2.057E-09   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF DISP.        -1.878E-02   AT NODE        228   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        4.078E-08   AT NODE       1042   DOF  2
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     2.551E-04   TIME AVG. MOMENT      1.356E-04
 LARGEST RESIDUAL MOMENT            6.800E-08   AT NODE          2   DOF  6
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF ROTATION      4.217E-04   AT NODE       2675   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -7.673E-09   AT NODE       2659   DOF  5
   INSTANCE: SHELL-1                                                                         
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED

 ITERATION SUMMARY FOR THE INCREMENT:   3 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  3 ARE EQUILIBRIUM ITERATIONS.


                                INCREMENT     4 SUMMARY


     CURRENT LOAD PROPORTIONALITY FACTOR         0.2750    
     TOTAL ARC LENGTH   0.275    , INCREMENT OF ARC LENGTH   0.100    


  INCREMENT     5 STARTS. ATTEMPT NUMBER  1

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       1.14       TIME AVG. FORCE       0.596    
 LARGEST RESIDUAL FORCE            -9.470E-03   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF DISP.        -1.878E-02   AT NODE        228   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -1.878E-02   AT NODE        228   DOF  1
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     3.585E-04   TIME AVG. MOMENT      1.801E-04
 LARGEST RESIDUAL MOMENT           -4.171E-05   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF ROTATION      4.237E-04   AT NODE       2675   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     4.237E-04   AT NODE       2675   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       1.12       TIME AVG. FORCE       0.594    
 LARGEST RESIDUAL FORCE             9.753E-06   AT NODE        761   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -1.878E-02   AT NODE        228   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -2.285E-04   AT NODE        860   DOF  3
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF DISP.    CORRECTION    2.354E-07
 FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                     3.645E-04   TIME AVG. MOMENT      1.813E-04
 LARGEST RESIDUAL MOMENT           -3.452E-07   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF ROTATION      4.568E-04   AT NODE        826   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     6.099E-05   AT NODE        826   DOF  4
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       1.12       TIME AVG. FORCE       0.594    
 LARGEST RESIDUAL FORCE             9.239E-09   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF DISP.        -1.878E-02   AT NODE        228   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -9.403E-08   AT NODE       3121   DOF  2
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     3.645E-04   TIME AVG. MOMENT      1.813E-04
 LARGEST RESIDUAL MOMENT           -1.079E-07   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF ROTATION      4.568E-04   AT NODE        826   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -1.198E-08   AT NODE       3298   DOF  5
   INSTANCE: SHELL-1                                                                         
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED

 ITERATION SUMMARY FOR THE INCREMENT:   3 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  3 ARE EQUILIBRIUM ITERATIONS.


                                INCREMENT     5 SUMMARY


     CURRENT LOAD PROPORTIONALITY FACTOR         0.3750    
     TOTAL ARC LENGTH   0.375    , INCREMENT OF ARC LENGTH   0.100    


  INCREMENT     6 STARTS. ATTEMPT NUMBER  1

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       1.39       TIME AVG. FORCE       0.727    
 LARGEST RESIDUAL FORCE            -1.017E-02   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF DISP.        -1.878E-02   AT NODE        228   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -1.878E-02   AT NODE        228   DOF  1
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     4.813E-04   TIME AVG. MOMENT      2.313E-04
 LARGEST RESIDUAL MOMENT           -6.334E-05   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF ROTATION      5.286E-04   AT NODE        826   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     5.286E-04   AT NODE        826   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       1.37       TIME AVG. FORCE       0.723    
 LARGEST RESIDUAL FORCE             2.422E-05   AT NODE        761   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -1.878E-02   AT NODE        228   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -3.602E-04   AT NODE        860   DOF  3
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF DISP.    CORRECTION    8.573E-07
 FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                     4.905E-04   TIME AVG. MOMENT      2.329E-04
 LARGEST RESIDUAL MOMENT           -7.084E-07   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF ROTATION      6.247E-04   AT NODE        826   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     9.611E-05   AT NODE        826   DOF  4
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       1.37       TIME AVG. FORCE       0.723    
 LARGEST RESIDUAL FORCE             7.288E-09   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF DISP.        -1.878E-02   AT NODE        228   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        2.442E-07   AT NODE       1042   DOF  2
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     4.905E-04   TIME AVG. MOMENT      2.329E-04
 LARGEST RESIDUAL MOMENT            7.253E-08   AT NODE          2   DOF  6
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF ROTATION      6.247E-04   AT NODE        826   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -1.773E-08   AT NODE       3298   DOF  5
   INSTANCE: SHELL-1                                                                         
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED

 ITERATION SUMMARY FOR THE INCREMENT:   3 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  3 ARE EQUILIBRIUM ITERATIONS.


                                INCREMENT     6 SUMMARY


     CURRENT LOAD PROPORTIONALITY FACTOR         0.4750    
     TOTAL ARC LENGTH   0.475    , INCREMENT OF ARC LENGTH   0.100    


  INCREMENT     7 STARTS. ATTEMPT NUMBER  1

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          1

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       1.61       TIME AVG. FORCE       0.850    
 LARGEST RESIDUAL FORCE            -1.100E-02   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF DISP.        -1.877E-02   AT NODE        228   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -1.877E-02   AT NODE        228   DOF  1
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     6.289E-04   TIME AVG. MOMENT      2.894E-04
 LARGEST RESIDUAL MOMENT           -1.009E-04   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF ROTATION      7.403E-04   AT NODE        826   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     7.403E-04   AT NODE        826   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       1.58       TIME AVG. FORCE       0.846    
 LARGEST RESIDUAL FORCE            -7.026E-05   AT NODE        860   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -1.877E-02   AT NODE        228   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -6.135E-04   AT NODE        860   DOF  3
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF DISP.    CORRECTION   -3.919E-06
 FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                     6.447E-04   TIME AVG. MOMENT      2.917E-04
 LARGEST RESIDUAL MOMENT           -1.549E-06   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF ROTATION      9.040E-04   AT NODE        826   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.637E-04   AT NODE        826   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       1.58       TIME AVG. FORCE       0.846    
 LARGEST RESIDUAL FORCE             1.430E-09   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF DISP.        -1.877E-02   AT NODE        228   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -7.416E-07   AT NODE       3121   DOF  2
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     6.447E-04   TIME AVG. MOMENT      2.917E-04
 LARGEST RESIDUAL MOMENT            2.845E-08   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF ROTATION      9.040E-04   AT NODE        826   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     5.319E-08   AT NODE       1926   DOF  4
   INSTANCE: SHELL-1                                                                         
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED

 ITERATION SUMMARY FOR THE INCREMENT:   3 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  3 ARE EQUILIBRIUM ITERATIONS.


                                INCREMENT     7 SUMMARY


     CURRENT LOAD PROPORTIONALITY FACTOR         0.5749    
     TOTAL ARC LENGTH   0.575    , INCREMENT OF ARC LENGTH   0.100    


  INCREMENT     8 STARTS. ATTEMPT NUMBER  1

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       1.76       TIME AVG. FORCE       0.961    
 LARGEST RESIDUAL FORCE            -1.198E-02   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF DISP.        -1.876E-02   AT NODE        228   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -1.876E-02   AT NODE        228   DOF  1
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     8.201E-04   TIME AVG. MOMENT      3.577E-04
 LARGEST RESIDUAL MOMENT           -1.731E-04   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF ROTATION      1.107E-03   AT NODE        826   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.107E-03   AT NODE        826   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          1

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       1.72       TIME AVG. FORCE       0.956    
 LARGEST RESIDUAL FORCE            -2.515E-04   AT NODE        860   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -1.875E-02   AT NODE        228   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -1.161E-03   AT NODE        860   DOF  3
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF DISP.    CORRECTION   -2.438E-05
 FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                     8.507E-04   TIME AVG. MOMENT      3.616E-04
 LARGEST RESIDUAL MOMENT           -3.387E-06   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF ROTATION      1.417E-03   AT NODE        826   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     3.097E-04   AT NODE        826   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       1.72       TIME AVG. FORCE       0.956    
 LARGEST RESIDUAL FORCE             2.854E-09   AT NODE        380   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -1.875E-02   AT NODE        228   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        2.773E-06   AT NODE       1042   DOF  2
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     8.508E-04   TIME AVG. MOMENT      3.616E-04
 LARGEST RESIDUAL MOMENT           -1.415E-07   AT NODE          2   DOF  6
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF ROTATION      1.417E-03   AT NODE        826   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     2.031E-07   AT NODE       1926   DOF  4
   INSTANCE: SHELL-1                                                                         
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED

 ITERATION SUMMARY FOR THE INCREMENT:   3 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  3 ARE EQUILIBRIUM ITERATIONS.


                                INCREMENT     8 SUMMARY


     CURRENT LOAD PROPORTIONALITY FACTOR         0.6746    
     TOTAL ARC LENGTH   0.675    , INCREMENT OF ARC LENGTH   0.100    


  INCREMENT     9 STARTS. ATTEMPT NUMBER  1

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          1

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       1.85       TIME AVG. FORCE        1.05    
 LARGEST RESIDUAL FORCE            -1.314E-02   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF DISP.        -1.872E-02   AT NODE        228   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -1.872E-02   AT NODE        228   DOF  1
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     1.098E-03   TIME AVG. MOMENT      4.434E-04
 LARGEST RESIDUAL MOMENT           -3.290E-04   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF ROTATION      1.816E-03   AT NODE        826   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.816E-03   AT NODE        826   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       1.80       TIME AVG. FORCE        1.05    
 LARGEST RESIDUAL FORCE            -1.181E-03   AT NODE        826   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -1.866E-02   AT NODE        567   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -2.516E-03   AT NODE        860   DOF  3
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     1.164E-03   TIME AVG. MOMENT      4.508E-04
 LARGEST RESIDUAL MOMENT           -8.924E-06   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF ROTATION      2.487E-03   AT NODE        826   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     6.710E-04   AT NODE        826   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          1

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       1.81       TIME AVG. FORCE        1.05    
 LARGEST RESIDUAL FORCE            -1.451E-08   AT NODE        377   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -1.866E-02   AT NODE        567   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.378E-05   AT NODE         68   DOF  2
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     1.164E-03   TIME AVG. MOMENT      4.508E-04
 LARGEST RESIDUAL MOMENT            6.988E-08   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF ROTATION      2.486E-03   AT NODE        826   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.996E-06   AT NODE        878   DOF  4
   INSTANCE: SHELL-1                                                                         
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED

 ITERATION SUMMARY FOR THE INCREMENT:   3 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  3 ARE EQUILIBRIUM ITERATIONS.


                                INCREMENT     9 SUMMARY


     CURRENT LOAD PROPORTIONALITY FACTOR         0.7738    
     TOTAL ARC LENGTH   0.775    , INCREMENT OF ARC LENGTH   0.100    


  INCREMENT    10 STARTS. ATTEMPT NUMBER  1

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       1.93       TIME AVG. FORCE        1.14    
 LARGEST RESIDUAL FORCE            -2.952E-02   AT NODE        826   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -1.852E-02   AT NODE        567   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -1.852E-02   AT NODE        567   DOF  1
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     1.571E-03   TIME AVG. MOMENT      5.628E-04
 LARGEST RESIDUAL MOMENT           -7.192E-04   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF ROTATION      3.382E-03   AT NODE        826   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     3.382E-03   AT NODE        826   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          1

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       1.87       TIME AVG. FORCE        1.13    
 LARGEST RESIDUAL FORCE            -6.555E-03   AT NODE        826   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -1.861E-02   AT NODE        860   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -5.929E-03   AT NODE        860   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     1.733E-03   TIME AVG. MOMENT      5.790E-04
 LARGEST RESIDUAL MOMENT           -2.645E-05   AT NODE        431   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION      4.961E-03   AT NODE        826   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.579E-03   AT NODE        826   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       1.87       TIME AVG. FORCE        1.13    
 LARGEST RESIDUAL FORCE            -2.302E-06   AT NODE        878   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -1.854E-02   AT NODE        860   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -1.134E-04   AT NODE        808   DOF  3
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     1.730E-03   TIME AVG. MOMENT      5.787E-04
 LARGEST RESIDUAL MOMENT           -3.065E-07   AT NODE        171   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION      4.942E-03   AT NODE        826   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -3.013E-05   AT NODE        709   DOF  4
   INSTANCE: SHELL-1                                                                         
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED

 ITERATION SUMMARY FOR THE INCREMENT:   3 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  3 ARE EQUILIBRIUM ITERATIONS.


                                INCREMENT    10 SUMMARY


     CURRENT LOAD PROPORTIONALITY FACTOR         0.8700    
     TOTAL ARC LENGTH   0.875    , INCREMENT OF ARC LENGTH   0.100    


  INCREMENT    11 STARTS. ATTEMPT NUMBER  1

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          1

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       1.96       TIME AVG. FORCE        1.21    
 LARGEST RESIDUAL FORCE            -0.119       AT NODE        826   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -2.543E-02   AT NODE        860   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -2.543E-02   AT NODE        860   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     2.493E-03   TIME AVG. MOMENT      7.527E-04
 LARGEST RESIDUAL MOMENT           -1.709E-03   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF ROTATION      6.776E-03   AT NODE        826   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     6.776E-03   AT NODE        826   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       1.92       TIME AVG. FORCE        1.20    
 LARGEST RESIDUAL FORCE             7.968E-03   AT NODE        730   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -3.195E-02   AT NODE        860   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -6.530E-03   AT NODE        829   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     2.702E-03   TIME AVG. MOMENT      7.717E-04
 LARGEST RESIDUAL MOMENT           -7.083E-05   AT NODE        431   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION      8.499E-03   AT NODE        826   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -1.723E-03   AT NODE        730   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          1

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       1.92       TIME AVG. FORCE        1.20    
 LARGEST RESIDUAL FORCE             7.960E-05   AT NODE        785   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -3.190E-02   AT NODE        860   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -6.578E-04   AT NODE        802   DOF  3
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF DISP.    CORRECTION   -6.570E-06
 FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                     2.693E-03   TIME AVG. MOMENT      7.710E-04
 LARGEST RESIDUAL MOMENT           -1.660E-06   AT NODE        171   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION      8.487E-03   AT NODE        826   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -1.724E-04   AT NODE        703   DOF  4
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF ROTATION CORRECTION   -4.041E-06
 MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 ITERATION SUMMARY FOR THE INCREMENT:   3 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  3 ARE EQUILIBRIUM ITERATIONS.


                                INCREMENT    11 SUMMARY


     CURRENT LOAD PROPORTIONALITY FACTOR         0.9522    
     TOTAL ARC LENGTH   0.975    , INCREMENT OF ARC LENGTH   0.100    


  INCREMENT    12 STARTS. ATTEMPT NUMBER  1

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       1.99       TIME AVG. FORCE        1.27    
 LARGEST RESIDUAL FORCE            -0.207       AT NODE        857   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -3.366E-02   AT NODE        860   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -3.366E-02   AT NODE        860   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     3.747E-03   TIME AVG. MOMENT      1.019E-03
 LARGEST RESIDUAL MOMENT           -2.601E-03   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF ROTATION      8.938E-03   AT NODE        826   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     8.938E-03   AT NODE        826   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          1

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       1.97       TIME AVG. FORCE        1.27    
 LARGEST RESIDUAL FORCE            -3.853E-04   AT NODE        823   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -3.243E-02   AT NODE        829   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -2.929E-03   AT NODE        505   DOF  2
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF DISP.    CORRECTION   -5.441E-06
 FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                     3.754E-03   TIME AVG. MOMENT      1.020E-03
 LARGEST RESIDUAL MOMENT           -2.740E-05   AT NODE        822   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION      8.578E-03   AT NODE        857   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     4.136E-04   AT NODE        823   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       1.97       TIME AVG. FORCE        1.27    
 LARGEST RESIDUAL FORCE            -9.013E-06   AT NODE        805   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -3.236E-02   AT NODE        829   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -2.176E-04   AT NODE        805   DOF  3
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     3.755E-03   TIME AVG. MOMENT      1.020E-03
 LARGEST RESIDUAL MOMENT           -3.901E-07   AT NODE        366   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION      8.558E-03   AT NODE        857   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     5.544E-05   AT NODE        881   DOF  4
   INSTANCE: SHELL-1                                                                         
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED

 ITERATION SUMMARY FOR THE INCREMENT:   3 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  3 ARE EQUILIBRIUM ITERATIONS.


                                INCREMENT    12 SUMMARY


     CURRENT LOAD PROPORTIONALITY FACTOR          1.013    
     TOTAL ARC LENGTH    1.07    , INCREMENT OF ARC LENGTH   0.100    


  INCREMENT    13 STARTS. ATTEMPT NUMBER  1

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =  0.10000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          1

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       2.03       TIME AVG. FORCE        1.33    
 LARGEST RESIDUAL FORCE            -0.161       AT NODE        857   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -2.970E-02   AT NODE        829   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -2.970E-02   AT NODE        829   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     4.783E-03   TIME AVG. MOMENT      1.309E-03
 LARGEST RESIDUAL MOMENT           -2.842E-03   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF ROTATION      7.823E-03   AT NODE        857   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     7.823E-03   AT NODE        857   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       2.03       TIME AVG. FORCE        1.33    
 LARGEST RESIDUAL FORCE            -1.111E-03   AT NODE        817   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -2.771E-02   AT NODE        835   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -2.483E-03   AT NODE        869   DOF  3
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF DISP.    CORRECTION   -1.711E-05
 FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                     4.758E-03   TIME AVG. MOMENT      1.307E-03
 LARGEST RESIDUAL MOMENT            3.166E-05   AT NODE        861   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION     -7.261E-03   AT NODE        736   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     6.780E-04   AT NODE        817   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          1

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       2.03       TIME AVG. FORCE        1.33    
 LARGEST RESIDUAL FORCE             2.210E-05   AT NODE        703   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -2.768E-02   AT NODE        835   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -3.401E-04   AT NODE        884   DOF  3
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF DISP.    CORRECTION    6.769E-06
 FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                     4.761E-03   TIME AVG. MOMENT      1.307E-03
 LARGEST RESIDUAL MOMENT            8.467E-07   AT NODE        441   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION     -7.248E-03   AT NODE        736   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     8.750E-05   AT NODE        802   DOF  4
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF ROTATION CORRECTION    2.340E-06
 MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 ITERATION SUMMARY FOR THE INCREMENT:   3 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  3 ARE EQUILIBRIUM ITERATIONS.


                                INCREMENT    13 SUMMARY


     CURRENT LOAD PROPORTIONALITY FACTOR          1.063    
     TOTAL ARC LENGTH    1.18    , INCREMENT OF ARC LENGTH   0.100    


  INCREMENT    14 STARTS. ATTEMPT NUMBER  1

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       2.09       TIME AVG. FORCE        1.38    
 LARGEST RESIDUAL FORCE             0.120       AT NODE        736   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -2.708E-02   AT NODE        287   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -2.708E-02   AT NODE        287   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     5.749E-03   TIME AVG. MOMENT      1.625E-03
 LARGEST RESIDUAL MOMENT           -2.998E-03   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF ROTATION     -6.673E-03   AT NODE        736   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -6.673E-03   AT NODE        736   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          1

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       2.09       TIME AVG. FORCE        1.38    
 LARGEST RESIDUAL FORCE             7.243E-04   AT NODE        770   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -2.798E-02   AT NODE        505   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -2.022E-03   AT NODE        869   DOF  3
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF DISP.    CORRECTION   -1.217E-05
 FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                     5.739E-03   TIME AVG. MOMENT      1.624E-03
 LARGEST RESIDUAL MOMENT            1.745E-05   AT NODE        855   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION     -6.229E-03   AT NODE        736   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     5.556E-04   AT NODE        817   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       2.09       TIME AVG. FORCE        1.38    
 LARGEST RESIDUAL FORCE            -7.081E-06   AT NODE        887   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -2.796E-02   AT NODE        505   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -1.946E-04   AT NODE        799   DOF  3
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     5.740E-03   TIME AVG. MOMENT      1.624E-03
 LARGEST RESIDUAL MOMENT           -6.252E-07   AT NODE        363   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION     -6.223E-03   AT NODE        736   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     4.816E-05   AT NODE        887   DOF  4
   INSTANCE: SHELL-1                                                                         
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED

 ITERATION SUMMARY FOR THE INCREMENT:   3 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  3 ARE EQUILIBRIUM ITERATIONS.


                                INCREMENT    14 SUMMARY


     CURRENT LOAD PROPORTIONALITY FACTOR          1.107    
     TOTAL ARC LENGTH    1.28    , INCREMENT OF ARC LENGTH   0.100    


  INCREMENT    15 STARTS. ATTEMPT NUMBER  1

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          1

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       2.14       TIME AVG. FORCE        1.43    
 LARGEST RESIDUAL FORCE             9.347E-02   AT NODE        736   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -2.874E-02   AT NODE        505   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -2.874E-02   AT NODE        505   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     6.720E-03   TIME AVG. MOMENT      1.964E-03
 LARGEST RESIDUAL MOMENT           -2.882E-03   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF ROTATION     -5.785E-03   AT NODE        736   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -5.785E-03   AT NODE        736   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       2.13       TIME AVG. FORCE        1.43    
 LARGEST RESIDUAL FORCE            -3.901E-04   AT NODE        869   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -2.947E-02   AT NODE        505   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -2.031E-03   AT NODE        589   DOF  2
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF DISP.    CORRECTION    8.479E-06
 FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                     6.735E-03   TIME AVG. MOMENT      1.965E-03
 LARGEST RESIDUAL MOMENT            2.134E-05   AT NODE       3508   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION     -5.450E-03   AT NODE        736   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     8.507E-04   AT NODE       3493   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          1

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       2.13       TIME AVG. FORCE        1.43    
 LARGEST RESIDUAL FORCE             2.330E-06   AT NODE        700   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -2.948E-02   AT NODE        505   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -1.135E-04   AT NODE        799   DOF  3
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     6.737E-03   TIME AVG. MOMENT      1.965E-03
 LARGEST RESIDUAL MOMENT           -5.543E-07   AT NODE       3493   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION     -5.452E-03   AT NODE        736   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     2.621E-05   AT NODE        887   DOF  4
   INSTANCE: SHELL-1                                                                         
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED

 ITERATION SUMMARY FOR THE INCREMENT:   3 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  3 ARE EQUILIBRIUM ITERATIONS.


                                INCREMENT    15 SUMMARY


     CURRENT LOAD PROPORTIONALITY FACTOR          1.148    
     TOTAL ARC LENGTH    1.38    , INCREMENT OF ARC LENGTH   0.100    


  INCREMENT    16 STARTS. ATTEMPT NUMBER  1

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       2.18       TIME AVG. FORCE        1.48    
 LARGEST RESIDUAL FORCE             7.782E-02   AT NODE        736   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -3.011E-02   AT NODE        505   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -3.011E-02   AT NODE        505   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     7.787E-03   TIME AVG. MOMENT      2.329E-03
 LARGEST RESIDUAL MOMENT           -2.290E-03   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF ROTATION      5.861E-03   AT NODE       3493   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     5.861E-03   AT NODE       3493   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          1

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       2.17       TIME AVG. FORCE        1.48    
 LARGEST RESIDUAL FORCE            -1.932E-03   AT NODE        587   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -3.047E-02   AT NODE        505   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -6.103E-03   AT NODE        589   DOF  2
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF DISP.    CORRECTION    1.515E-04
 FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                     7.902E-03   TIME AVG. MOMENT      2.336E-03
 LARGEST RESIDUAL MOMENT            1.119E-04   AT NODE       3508   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION      8.524E-03   AT NODE       3493   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     2.662E-03   AT NODE       3493   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       2.17       TIME AVG. FORCE        1.48    
 LARGEST RESIDUAL FORCE            -2.327E-05   AT NODE       4793   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -3.046E-02   AT NODE        505   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -8.082E-04   AT NODE        589   DOF  2
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF DISP.    CORRECTION   -9.737E-06
 FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                     7.907E-03   TIME AVG. MOMENT      2.336E-03
 LARGEST RESIDUAL MOMENT           -1.085E-05   AT NODE       3478   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION      8.827E-03   AT NODE       3493   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     3.036E-04   AT NODE       3493   DOF  4
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF ROTATION CORRECTION   -2.944E-05
 MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 ITERATION SUMMARY FOR THE INCREMENT:   3 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  3 ARE EQUILIBRIUM ITERATIONS.


                                INCREMENT    16 SUMMARY


     CURRENT LOAD PROPORTIONALITY FACTOR          1.186    
     TOTAL ARC LENGTH    1.48    , INCREMENT OF ARC LENGTH   0.100    


  INCREMENT    17 STARTS. ATTEMPT NUMBER  1

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          1

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       2.23       TIME AVG. FORCE        1.52    
 LARGEST RESIDUAL FORCE             8.737E-02   AT NODE        782   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -3.291E-02   AT NODE        589   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -3.291E-02   AT NODE        589   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     9.421E-03   TIME AVG. MOMENT      2.753E-03
 LARGEST RESIDUAL MOMENT           -1.611E-03   AT NODE       3478   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION      1.480E-02   AT NODE       3493   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.480E-02   AT NODE       3493   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: THE SYSTEM MATRIX HAS 2 NEGATIVE EIGENVALUES.

     NEGATIVE EIGENVALUES MEAN THAT THE SYSTEM MATRIX IS NOT 
     POSITIVE DEFINITE:
     FOR EXAMPLE, A BIFURCATION (BUCKLING) LOAD MAY HAVE BEEN EXCEEDED.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       3.61       TIME AVG. FORCE        1.60    
 LARGEST RESIDUAL FORCE              576.       AT NODE        589   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.         -3.29       AT NODE        589   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        -3.25       AT NODE        589   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.154       TIME AVG. MOMENT      1.125E-02
 LARGEST RESIDUAL MOMENT            -95.8       AT NODE        588   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION       1.30       AT NODE       3493   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION      1.28       AT NODE       3493   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          1
 

 ***WARNING: THE SYSTEM MATRIX HAS 24 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       7.46       TIME AVG. FORCE        1.83    
 LARGEST RESIDUAL FORCE              199.       AT NODE        779   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.         -2.63       AT NODE        589   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.         1.12       AT NODE        878   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     0.987       TIME AVG. MOMENT      6.027E-02
 LARGEST RESIDUAL MOMENT            -430.       AT NODE        591   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION      -1.18       AT NODE       3492   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION      5.63       AT NODE        591   DOF  5
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: THE SYSTEM MATRIX HAS 104 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     4


 AVERAGE FORCE                       26.7       TIME AVG. FORCE        2.96    
 LARGEST RESIDUAL FORCE             4.304E+03   AT NODE       2436   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.         -5.49       AT NODE       2436   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        -5.62       AT NODE       2436   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                      21.0       TIME AVG. MOMENT       1.24    
 LARGEST RESIDUAL MOMENT           -2.718E+03   AT NODE       3466   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION      -5.17       AT NODE       2492   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION      10.9       AT NODE        658   DOF  5
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 

 ***NOTE: THE SOLUTION APPEARS TO BE DIVERGING. CONVERGENCE IS JUDGED UNLIKELY.


  INCREMENT    17 STARTS. ATTEMPT NUMBER  2

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          1

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       2.19       TIME AVG. FORCE        1.52    
 LARGEST RESIDUAL FORCE             5.478E-03   AT NODE        782   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -8.189E-03   AT NODE        589   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -8.189E-03   AT NODE        589   DOF  2
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF DISP.    CORRECTION    9.502E-06
 FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                     8.272E-03   TIME AVG. MOMENT      2.685E-03
 LARGEST RESIDUAL MOMENT           -1.031E-04   AT NODE       3478   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION      3.684E-03   AT NODE       3493   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     3.684E-03   AT NODE       3493   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       2.19       TIME AVG. FORCE        1.52    
 LARGEST RESIDUAL FORCE             3.310E-04   AT NODE       2479   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -1.098E-02   AT NODE        589   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -2.792E-03   AT NODE        104   DOF  2
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     8.301E-03   TIME AVG. MOMENT      2.687E-03
 LARGEST RESIDUAL MOMENT            2.112E-05   AT NODE       2465   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION     -4.834E-03   AT NODE       2450   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -1.150E-03   AT NODE       2450   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       2.19       TIME AVG. FORCE        1.52    
 LARGEST RESIDUAL FORCE            -2.103E-06   AT NODE       2924   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -1.121E-02   AT NODE        104   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -2.336E-04   AT NODE        104   DOF  2
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF DISP.    CORRECTION    1.484E-06
 FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                     8.304E-03   TIME AVG. MOMENT      2.687E-03
 LARGEST RESIDUAL MOMENT           -2.048E-06   AT NODE       1445   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION     -4.923E-03   AT NODE       2450   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -8.891E-05   AT NODE       2450   DOF  4
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF ROTATION CORRECTION    8.625E-06
 MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION
          ARC LENGTH INCREMENT MAY NOW INCREASE TO    3.750E-02

 ITERATION SUMMARY FOR THE INCREMENT:   3 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  3 ARE EQUILIBRIUM ITERATIONS.


                                INCREMENT    17 SUMMARY


     CURRENT LOAD PROPORTIONALITY FACTOR          1.195    
     TOTAL ARC LENGTH    1.50    , INCREMENT OF ARC LENGTH   2.500E-02


  INCREMENT    18 STARTS. ATTEMPT NUMBER  1

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       2.21       TIME AVG. FORCE        1.56    
 LARGEST RESIDUAL FORCE             2.838E-02   AT NODE        106   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -2.417E-02   AT NODE        104   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -2.417E-02   AT NODE        104   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     8.995E-03   TIME AVG. MOMENT      3.038E-03
 LARGEST RESIDUAL MOMENT            8.270E-04   AT NODE       2465   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION     -1.034E-02   AT NODE       2450   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -1.034E-02   AT NODE       2450   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: THE SYSTEM MATRIX HAS 2 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       2.19       TIME AVG. FORCE        1.56    
 LARGEST RESIDUAL FORCE              2.57       AT NODE       4799   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -0.271       AT NODE        589   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -0.247       AT NODE        589   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     1.012E-02   TIME AVG. MOMENT      3.100E-03
 LARGEST RESIDUAL MOMENT           -0.103       AT NODE       3478   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION      0.105       AT NODE       3493   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     9.454E-02   AT NODE       3493   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: THE SYSTEM MATRIX HAS 2 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       2.20       TIME AVG. FORCE        1.56    
 LARGEST RESIDUAL FORCE             0.543       AT NODE       1474   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -0.294       AT NODE        589   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -0.112       AT NODE        253   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     1.032E-02   TIME AVG. MOMENT      3.111E-03
 LARGEST RESIDUAL MOMENT           -1.986E-02   AT NODE       1474   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION      0.109       AT NODE       3493   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -4.109E-02   AT NODE       1459   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     4


 AVERAGE FORCE                       2.18       TIME AVG. FORCE        1.55    
 LARGEST RESIDUAL FORCE            -0.128       AT NODE        875   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.         0.292       AT NODE        472   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -4.524E-02   AT NODE        247   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     9.099E-03   TIME AVG. MOMENT      3.044E-03
 LARGEST RESIDUAL MOMENT            2.329E-02   AT NODE       3449   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION      0.106       AT NODE       3493   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -1.888E-02   AT NODE       1369   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     5


 AVERAGE FORCE                       2.16       TIME AVG. FORCE        1.55    
 LARGEST RESIDUAL FORCE            -1.385E-02   AT NODE        246   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.         0.290       AT NODE        472   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.274E-02   AT NODE        247   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     9.210E-03   TIME AVG. MOMENT      3.050E-03
 LARGEST RESIDUAL MOMENT           -6.968E-03   AT NODE       3479   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION     -0.106       AT NODE       3479   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     5.776E-03   AT NODE       1369   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     6


 AVERAGE FORCE                       2.17       TIME AVG. FORCE        1.55    
 LARGEST RESIDUAL FORCE             1.438E-03   AT NODE        750   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.         0.290       AT NODE        320   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        4.940E-03   AT NODE        247   DOF  2
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF DISP.    CORRECTION   -5.127E-04
 FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                     9.227E-03   TIME AVG. MOMENT      3.051E-03
 LARGEST RESIDUAL MOMENT            2.888E-03   AT NODE       3479   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION      0.106       AT NODE       2464   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.723E-03   AT NODE       1369   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =  0.10000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          1

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     7


 AVERAGE FORCE                       2.17       TIME AVG. FORCE        1.55    
 LARGEST RESIDUAL FORCE            -7.214E-05   AT NODE       3464   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.         0.290       AT NODE        320   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        2.374E-04   AT NODE        247   DOF  2
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     9.229E-03   TIME AVG. MOMENT      3.051E-03
 LARGEST RESIDUAL MOMENT            2.791E-04   AT NODE       3479   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION      0.106       AT NODE       2464   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     8.757E-05   AT NODE       1369   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     8


 AVERAGE FORCE                       2.17       TIME AVG. FORCE        1.55    
 LARGEST RESIDUAL FORCE            -3.614E-06   AT NODE       2465   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.         0.290       AT NODE        320   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -1.647E-06   AT NODE        471   DOF  2
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     9.229E-03   TIME AVG. MOMENT      3.051E-03
 LARGEST RESIDUAL MOMENT           -1.434E-05   AT NODE       2450   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION      0.106       AT NODE       2464   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -9.959E-07   AT NODE        472   DOF  6
   INSTANCE: SHELL-1                                                                         
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED

 ITERATION SUMMARY FOR THE INCREMENT:   8 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  8 ARE EQUILIBRIUM ITERATIONS.


                                INCREMENT    18 SUMMARY


     CURRENT LOAD PROPORTIONALITY FACTOR          1.166    
     TOTAL ARC LENGTH    1.54    , INCREMENT OF ARC LENGTH   3.750E-02


  INCREMENT    19 STARTS. ATTEMPT NUMBER  1

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       2.18       TIME AVG. FORCE        1.59    
 LARGEST RESIDUAL FORCE            -1.463E-02   AT NODE        838   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.         1.564E-02   AT NODE        472   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.564E-02   AT NODE        472   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     9.601E-03   TIME AVG. MOMENT      3.396E-03
 LARGEST RESIDUAL MOMENT            1.706E-03   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF ROTATION     -6.004E-03   AT NODE       3479   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -6.004E-03   AT NODE       3479   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       2.18       TIME AVG. FORCE        1.59    
 LARGEST RESIDUAL FORCE            -7.429E-05   AT NODE       3478   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.         1.439E-02   AT NODE        472   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -1.241E-03   AT NODE        472   DOF  2
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF DISP.    CORRECTION   -6.302E-06
 FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                     9.590E-03   TIME AVG. MOMENT      3.395E-03
 LARGEST RESIDUAL MOMENT            4.164E-05   AT NODE       3464   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION     -5.546E-03   AT NODE       3479   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     4.582E-04   AT NODE       3479   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          1

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       2.18       TIME AVG. FORCE        1.59    
 LARGEST RESIDUAL FORCE            -1.600E-06   AT NODE       3480   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.         1.436E-02   AT NODE        472   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        2.911E-05   AT NODE        589   DOF  2
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     9.590E-03   TIME AVG. MOMENT      3.395E-03
 LARGEST RESIDUAL MOMENT           -2.715E-06   AT NODE       3508   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION     -5.536E-03   AT NODE       3479   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -1.008E-05   AT NODE       3493   DOF  4
   INSTANCE: SHELL-1                                                                         
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED

 ITERATION SUMMARY FOR THE INCREMENT:   3 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  3 ARE EQUILIBRIUM ITERATIONS.


                                INCREMENT    19 SUMMARY


     CURRENT LOAD PROPORTIONALITY FACTOR          1.173    
     TOTAL ARC LENGTH    1.58    , INCREMENT OF ARC LENGTH   3.750E-02


  INCREMENT    20 STARTS. ATTEMPT NUMBER  1

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       2.19       TIME AVG. FORCE        1.62    
 LARGEST RESIDUAL FORCE            -1.600E-02   AT NODE        838   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -1.386E-02   AT NODE        280   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -1.386E-02   AT NODE        280   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     9.943E-03   TIME AVG. MOMENT      3.722E-03
 LARGEST RESIDUAL MOMENT            1.782E-03   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF ROTATION     -4.984E-03   AT NODE       3479   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -4.984E-03   AT NODE       3479   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       2.19       TIME AVG. FORCE        1.62    
 LARGEST RESIDUAL FORCE            -5.335E-05   AT NODE       3478   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -1.413E-02   AT NODE        280   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -1.081E-03   AT NODE        472   DOF  2
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF DISP.    CORRECTION   -3.602E-06
 FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                     9.933E-03   TIME AVG. MOMENT      3.722E-03
 LARGEST RESIDUAL MOMENT           -3.729E-05   AT NODE       2479   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION     -4.582E-03   AT NODE       3479   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     4.020E-04   AT NODE       3479   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =  0.10000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       2.19       TIME AVG. FORCE        1.62    
 LARGEST RESIDUAL FORCE            -1.293E-06   AT NODE       3480   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -1.414E-02   AT NODE        280   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -3.048E-05   AT NODE        736   DOF  3
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     9.933E-03   TIME AVG. MOMENT      3.722E-03
 LARGEST RESIDUAL MOMENT           -2.534E-06   AT NODE       2464   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION     -4.573E-03   AT NODE       3479   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     9.061E-06   AT NODE       3479   DOF  4
   INSTANCE: SHELL-1                                                                         
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED
          ARC LENGTH INCREMENT MAY NOW INCREASE TO    5.625E-02

 ITERATION SUMMARY FOR THE INCREMENT:   3 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  3 ARE EQUILIBRIUM ITERATIONS.


                                INCREMENT    20 SUMMARY


     CURRENT LOAD PROPORTIONALITY FACTOR          1.180    
     TOTAL ARC LENGTH    1.61    , INCREMENT OF ARC LENGTH   3.750E-02


  INCREMENT    21 STARTS. ATTEMPT NUMBER  1

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       2.20       TIME AVG. FORCE        1.64    
 LARGEST RESIDUAL FORCE            -3.953E-02   AT NODE        838   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -2.163E-02   AT NODE        280   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -2.163E-02   AT NODE        280   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     1.044E-02   TIME AVG. MOMENT      4.042E-03
 LARGEST RESIDUAL MOMENT            4.061E-03   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF ROTATION     -6.272E-03   AT NODE       3479   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -6.272E-03   AT NODE       3479   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       2.20       TIME AVG. FORCE        1.64    
 LARGEST RESIDUAL FORCE             3.406E-04   AT NODE        736   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -2.226E-02   AT NODE        280   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -1.684E-03   AT NODE        851   DOF  3
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF DISP.    CORRECTION    1.451E-05
 FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                     1.042E-02   TIME AVG. MOMENT      4.041E-03
 LARGEST RESIDUAL MOMENT           -8.192E-05   AT NODE       2479   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION     -5.630E-03   AT NODE       3479   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -6.422E-04   AT NODE       3493   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       2.20       TIME AVG. FORCE        1.64    
 LARGEST RESIDUAL FORCE            -9.743E-06   AT NODE        835   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -2.235E-02   AT NODE        280   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -2.821E-04   AT NODE        851   DOF  3
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF DISP.    CORRECTION    8.069E-06
 FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                     1.042E-02   TIME AVG. MOMENT      4.041E-03
 LARGEST RESIDUAL MOMENT           -8.853E-06   AT NODE       2464   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION     -5.594E-03   AT NODE       3479   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     4.723E-05   AT NODE        835   DOF  4
   INSTANCE: SHELL-1                                                                         
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED
          ARC LENGTH INCREMENT MAY NOW INCREASE TO    8.438E-02

 ITERATION SUMMARY FOR THE INCREMENT:   3 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  3 ARE EQUILIBRIUM ITERATIONS.


                                INCREMENT    21 SUMMARY


     CURRENT LOAD PROPORTIONALITY FACTOR          1.190    
     TOTAL ARC LENGTH    1.67    , INCREMENT OF ARC LENGTH   5.625E-02


  INCREMENT    22 STARTS. ATTEMPT NUMBER  1

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          1

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       2.22       TIME AVG. FORCE        1.67    
 LARGEST RESIDUAL FORCE            -0.108       AT NODE        838   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -3.450E-02   AT NODE        280   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -3.450E-02   AT NODE        280   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     1.114E-02   TIME AVG. MOMENT      4.364E-03
 LARGEST RESIDUAL MOMENT            9.114E-03   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF ROTATION     -7.372E-03   AT NODE       3479   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -7.372E-03   AT NODE       3479   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       2.21       TIME AVG. FORCE        1.67    
 LARGEST RESIDUAL FORCE            -2.811E-03   AT NODE        851   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -3.565E-02   AT NODE        275   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        8.080E-03   AT NODE        259   DOF  2
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF DISP.    CORRECTION    2.095E-04
 FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                     1.111E-02   TIME AVG. MOMENT      4.362E-03
 LARGEST RESIDUAL MOMENT           -1.942E-04   AT NODE       2494   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION      7.922E-03   AT NODE       1549   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     2.547E-03   AT NODE       1549   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       2.21       TIME AVG. FORCE        1.67    
 LARGEST RESIDUAL FORCE            -1.441E-03   AT NODE        851   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -3.688E-02   AT NODE        275   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -3.408E-03   AT NODE        851   DOF  3
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     1.109E-02   TIME AVG. MOMENT      4.361E-03
 LARGEST RESIDUAL MOMENT            2.664E-05   AT NODE       3449   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION      8.757E-03   AT NODE       1549   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     8.351E-04   AT NODE       1549   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     4


 AVERAGE FORCE                       2.21       TIME AVG. FORCE        1.67    
 LARGEST RESIDUAL FORCE            -1.858E-06   AT NODE       2463   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -3.688E-02   AT NODE        275   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.729E-04   AT NODE        259   DOF  2
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     1.109E-02   TIME AVG. MOMENT      4.361E-03
 LARGEST RESIDUAL MOMENT           -4.840E-06   AT NODE       2449   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION      8.815E-03   AT NODE       1549   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     5.730E-05   AT NODE       1549   DOF  4
   INSTANCE: SHELL-1                                                                         
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED
          ARC LENGTH INCREMENT MAY NOW INCREASE TO    0.100    

 ITERATION SUMMARY FOR THE INCREMENT:   4 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  4 ARE EQUILIBRIUM ITERATIONS.


                                INCREMENT    22 SUMMARY


     CURRENT LOAD PROPORTIONALITY FACTOR          1.202    
     TOTAL ARC LENGTH    1.75    , INCREMENT OF ARC LENGTH   8.438E-02


  INCREMENT    23 STARTS. ATTEMPT NUMBER  1

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =  0.10000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       2.23       TIME AVG. FORCE        1.69    
 LARGEST RESIDUAL FORCE            -0.221       AT NODE        853   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.         5.967E-02   AT NODE        259   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        5.967E-02   AT NODE        259   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     1.177E-02   TIME AVG. MOMENT      4.683E-03
 LARGEST RESIDUAL MOMENT            6.684E-03   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF ROTATION      2.059E-02   AT NODE       1549   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     2.059E-02   AT NODE       1549   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: THE SYSTEM MATRIX HAS 4 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       2.23       TIME AVG. FORCE        1.69    
 LARGEST RESIDUAL FORCE             0.674       AT NODE       1564   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -5.015E-02   AT NODE        259   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -0.110       AT NODE        259   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     1.191E-02   TIME AVG. MOMENT      4.689E-03
 LARGEST RESIDUAL MOMENT            1.689E-02   AT NODE       1534   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION     -2.348E-02   AT NODE       1549   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -4.407E-02   AT NODE       1549   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: THE SYSTEM MATRIX HAS 4 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       2.23       TIME AVG. FORCE        1.69    
 LARGEST RESIDUAL FORCE            -0.158       AT NODE       3178   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -5.547E-02   AT NODE        107   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -6.438E-02   AT NODE        527   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     1.179E-02   TIME AVG. MOMENT      4.684E-03
 LARGEST RESIDUAL MOMENT           -5.134E-03   AT NODE       4319   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION     -1.890E-02   AT NODE       2495   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     2.288E-02   AT NODE       4304   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: THE SYSTEM MATRIX HAS 6 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     4


 AVERAGE FORCE                       2.22       TIME AVG. FORCE        1.69    
 LARGEST RESIDUAL FORCE             8.690E-02   AT NODE        254   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.         5.783E-02   AT NODE        469   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        3.479E-02   AT NODE        259   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     1.171E-02   TIME AVG. MOMENT      4.680E-03
 LARGEST RESIDUAL MOMENT            2.477E-03   AT NODE       1429   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION     -1.977E-02   AT NODE       3434   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -1.360E-02   AT NODE       1444   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: THE SYSTEM MATRIX HAS 4 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     5


 AVERAGE FORCE                       2.22       TIME AVG. FORCE        1.69    
 LARGEST RESIDUAL FORCE            -5.575E-02   AT NODE        533   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.         7.770E-02   AT NODE        323   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        2.475E-02   AT NODE        533   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     1.155E-02   TIME AVG. MOMENT      4.674E-03
 LARGEST RESIDUAL MOMENT           -1.065E-03   AT NODE       4499   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION      2.672E-02   AT NODE       3448   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     9.072E-03   AT NODE       4484   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          1
 

 ***WARNING: THE SYSTEM MATRIX HAS 6 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     6


 AVERAGE FORCE                       2.21       TIME AVG. FORCE        1.69    
 LARGEST RESIDUAL FORCE            -0.464       AT NODE       2741   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.         0.123       AT NODE        259   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        0.106       AT NODE        259   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     1.146E-02   TIME AVG. MOMENT      4.669E-03
 LARGEST RESIDUAL MOMENT           -1.626E-02   AT NODE       1564   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION      4.338E-02   AT NODE       1549   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     3.856E-02   AT NODE       1549   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 

 ***NOTE: THE SOLUTION APPEARS TO BE DIVERGING. CONVERGENCE IS JUDGED UNLIKELY.


  INCREMENT    23 STARTS. ATTEMPT NUMBER  2

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       2.22       TIME AVG. FORCE        1.69    
 LARGEST RESIDUAL FORCE            -1.947E-02   AT NODE        838   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.         1.752E-02   AT NODE        259   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.752E-02   AT NODE        259   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     1.128E-02   TIME AVG. MOMENT      4.662E-03
 LARGEST RESIDUAL MOMENT            5.960E-04   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF ROTATION      6.045E-03   AT NODE       1549   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     6.045E-03   AT NODE       1549   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          1
 

 ***WARNING: THE SYSTEM MATRIX HAS 2 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       2.21       TIME AVG. FORCE        1.69    
 LARGEST RESIDUAL FORCE             0.282       AT NODE       3202   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.         0.102       AT NODE        533   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        8.515E-02   AT NODE        533   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     1.124E-02   TIME AVG. MOMENT      4.660E-03
 LARGEST RESIDUAL MOMENT           -9.296E-03   AT NODE       4409   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION     -3.693E-02   AT NODE       4394   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -3.102E-02   AT NODE       4394   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: THE SYSTEM MATRIX HAS 4 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       2.19       TIME AVG. FORCE        1.69    
 LARGEST RESIDUAL FORCE            -0.346       AT NODE        848   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.         0.106       AT NODE        259   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        6.112E-02   AT NODE        517   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     1.028E-02   TIME AVG. MOMENT      4.618E-03
 LARGEST RESIDUAL MOMENT            2.127E-02   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF ROTATION      3.864E-02   AT NODE       1549   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.627E-02   AT NODE       4394   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: THE SYSTEM MATRIX HAS 3 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     4


 AVERAGE FORCE                       2.19       TIME AVG. FORCE        1.69    
 LARGEST RESIDUAL FORCE            -0.806       AT NODE       4393   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -0.190       AT NODE        650   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -0.127       AT NODE        650   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     1.071E-02   TIME AVG. MOMENT      4.637E-03
 LARGEST RESIDUAL MOMENT            2.707E-02   AT NODE       4423   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION      7.169E-02   AT NODE       4408   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     5.102E-02   AT NODE       4408   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 

 ***NOTE: THE SOLUTION APPEARS TO BE DIVERGING. CONVERGENCE IS JUDGED UNLIKELY.


  INCREMENT    23 STARTS. ATTEMPT NUMBER  3

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       2.21       TIME AVG. FORCE        1.69    
 LARGEST RESIDUAL FORCE            -1.091E-04   AT NODE        838   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.         1.294E-03   AT NODE        259   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.294E-03   AT NODE        259   DOF  2
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF DISP.    CORRECTION    9.277E-07
 FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                     1.110E-02   TIME AVG. MOMENT      4.654E-03
 LARGEST RESIDUAL MOMENT            6.519E-06   AT NODE       3449   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION      4.464E-04   AT NODE       1549   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     4.464E-04   AT NODE       1549   DOF  4
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          1

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       2.21       TIME AVG. FORCE        1.69    
 LARGEST RESIDUAL FORCE            -1.726E-07   AT NODE       1520   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.         1.353E-03   AT NODE        259   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        5.899E-05   AT NODE        259   DOF  2
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF DISP.    CORRECTION    9.327E-08
 FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                     1.110E-02   TIME AVG. MOMENT      4.654E-03
 LARGEST RESIDUAL MOMENT           -1.849E-07   AT NODE        373   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION      4.670E-04   AT NODE       1549   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     2.056E-05   AT NODE       1549   DOF  4
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF ROTATION CORRECTION    7.854E-07
 MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION
          ARC LENGTH INCREMENT MAY NOW INCREASE TO    9.375E-03

 ITERATION SUMMARY FOR THE INCREMENT:   2 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  2 ARE EQUILIBRIUM ITERATIONS.


                                INCREMENT    23 SUMMARY


     CURRENT LOAD PROPORTIONALITY FACTOR          1.202    
     TOTAL ARC LENGTH    1.76    , INCREMENT OF ARC LENGTH   6.250E-03


  INCREMENT    24 STARTS. ATTEMPT NUMBER  1

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       2.22       TIME AVG. FORCE        1.72    
 LARGEST RESIDUAL FORCE            -2.426E-04   AT NODE        853   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.         2.121E-03   AT NODE        259   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        2.121E-03   AT NODE        259   DOF  2
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF DISP.    CORRECTION    3.811E-06
 FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                     1.112E-02   TIME AVG. MOMENT      4.924E-03
 LARGEST RESIDUAL MOMENT            9.575E-06   AT NODE       2494   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION      7.327E-04   AT NODE       1549   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     7.327E-04   AT NODE       1549   DOF  4
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          1

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       2.22       TIME AVG. FORCE        1.72    
 LARGEST RESIDUAL FORCE            -1.183E-06   AT NODE       1520   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.         2.292E-03   AT NODE        259   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.711E-04   AT NODE        259   DOF  2
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF DISP.    CORRECTION    8.341E-07
 FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                     1.112E-02   TIME AVG. MOMENT      4.924E-03
 LARGEST RESIDUAL MOMENT           -5.547E-07   AT NODE        373   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION      7.930E-04   AT NODE       1549   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     6.026E-05   AT NODE       1549   DOF  4
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       2.22       TIME AVG. FORCE        1.72    
 LARGEST RESIDUAL FORCE             5.161E-09   AT NODE       1549   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.         2.294E-03   AT NODE        259   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.322E-06   AT NODE        259   DOF  2
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     1.112E-02   TIME AVG. MOMENT      4.924E-03
 LARGEST RESIDUAL MOMENT            9.473E-08   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF ROTATION      7.934E-04   AT NODE       1549   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -4.891E-07   AT NODE       1535   DOF  4
   INSTANCE: SHELL-1                                                                         
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED
          ARC LENGTH INCREMENT MAY NOW INCREASE TO    1.406E-02

 ITERATION SUMMARY FOR THE INCREMENT:   3 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  3 ARE EQUILIBRIUM ITERATIONS.


                                INCREMENT    24 SUMMARY


     CURRENT LOAD PROPORTIONALITY FACTOR          1.202    
     TOTAL ARC LENGTH    1.77    , INCREMENT OF ARC LENGTH   9.375E-03


  INCREMENT    25 STARTS. ATTEMPT NUMBER  1

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          1

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       2.22       TIME AVG. FORCE        1.74    
 LARGEST RESIDUAL FORCE            -5.539E-04   AT NODE        853   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.         3.736E-03   AT NODE        259   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        3.736E-03   AT NODE        259   DOF  2
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF DISP.    CORRECTION    1.136E-05
 FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                     1.115E-02   TIME AVG. MOMENT      5.173E-03
 LARGEST RESIDUAL MOMENT            1.435E-05   AT NODE       1534   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION      1.295E-03   AT NODE       1549   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.295E-03   AT NODE       1549   DOF  4
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       2.22       TIME AVG. FORCE        1.74    
 LARGEST RESIDUAL FORCE            -1.759E-05   AT NODE       2741   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.         4.413E-03   AT NODE        259   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        6.766E-04   AT NODE        259   DOF  2
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF DISP.    CORRECTION    2.149E-05
 FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                     1.115E-02   TIME AVG. MOMENT      5.173E-03
 LARGEST RESIDUAL MOMENT           -2.242E-06   AT NODE        373   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION      1.536E-03   AT NODE       1549   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     2.412E-04   AT NODE       1549   DOF  4
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       2.22       TIME AVG. FORCE        1.74    
 LARGEST RESIDUAL FORCE            -4.754E-08   AT NODE       1534   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.         4.440E-03   AT NODE        259   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        2.704E-05   AT NODE        259   DOF  2
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     1.115E-02   TIME AVG. MOMENT      5.173E-03
 LARGEST RESIDUAL MOMENT           -9.856E-08   AT NODE       3016   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION      1.546E-03   AT NODE       1549   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     9.721E-06   AT NODE       1549   DOF  4
   INSTANCE: SHELL-1                                                                         
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED
          ARC LENGTH INCREMENT MAY NOW INCREASE TO    2.109E-02

 ITERATION SUMMARY FOR THE INCREMENT:   3 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  3 ARE EQUILIBRIUM ITERATIONS.


                                INCREMENT    25 SUMMARY


     CURRENT LOAD PROPORTIONALITY FACTOR          1.203    
     TOTAL ARC LENGTH    1.78    , INCREMENT OF ARC LENGTH   1.406E-02


  INCREMENT    26 STARTS. ATTEMPT NUMBER  1

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       2.23       TIME AVG. FORCE        1.76    
 LARGEST RESIDUAL FORCE            -2.488E-03   AT NODE       2741   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.         8.059E-03   AT NODE        259   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        8.059E-03   AT NODE        259   DOF  2
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     1.119E-02   TIME AVG. MOMENT      5.404E-03
 LARGEST RESIDUAL MOMENT            6.978E-05   AT NODE       1534   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION      2.821E-03   AT NODE       1549   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     2.821E-03   AT NODE       1549   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          1
 

 ***WARNING: THE SYSTEM MATRIX HAS 2 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       2.23       TIME AVG. FORCE        1.76    
 LARGEST RESIDUAL FORCE             4.012E-03   AT NODE       3202   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.         1.741E-02   AT NODE        533   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.019E-02   AT NODE        533   DOF  2
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     1.118E-02   TIME AVG. MOMENT      5.404E-03
 LARGEST RESIDUAL MOMENT            1.227E-04   AT NODE       4379   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION     -6.243E-03   AT NODE       4394   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -3.732E-03   AT NODE       4394   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: THE SYSTEM MATRIX HAS 3 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       2.23       TIME AVG. FORCE        1.76    
 LARGEST RESIDUAL FORCE            -5.189E-03   AT NODE       2741   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.         1.830E-02   AT NODE        259   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.153E-02   AT NODE        259   DOF  2
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     1.118E-02   TIME AVG. MOMENT      5.404E-03
 LARGEST RESIDUAL MOMENT            1.543E-04   AT NODE       1534   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION      6.516E-03   AT NODE       1549   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     4.221E-03   AT NODE       1549   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: THE SYSTEM MATRIX HAS 3 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     4


 AVERAGE FORCE                       2.22       TIME AVG. FORCE        1.76    
 LARGEST RESIDUAL FORCE            -2.678E-03   AT NODE       3196   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -2.126E-02   AT NODE        650   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        8.315E-03   AT NODE        533   DOF  2
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     1.115E-02   TIME AVG. MOMENT      5.403E-03
 LARGEST RESIDUAL MOMENT            8.384E-05   AT NODE       4379   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION      7.596E-03   AT NODE       4408   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -3.067E-03   AT NODE       4394   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: THE SYSTEM MATRIX HAS 4 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     5


 AVERAGE FORCE                       2.22       TIME AVG. FORCE        1.76    
 LARGEST RESIDUAL FORCE             1.497E-04   AT NODE       3202   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -1.933E-02   AT NODE        650   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -1.931E-03   AT NODE        533   DOF  2
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF DISP.    CORRECTION    1.079E-04
 FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                     1.114E-02   TIME AVG. MOMENT      5.402E-03
 LARGEST RESIDUAL MOMENT           -9.203E-06   AT NODE       4409   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION      6.889E-03   AT NODE       4408   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     7.062E-04   AT NODE       4394   DOF  4
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: THE SYSTEM MATRIX HAS 4 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     6


 AVERAGE FORCE                       2.22       TIME AVG. FORCE        1.76    
 LARGEST RESIDUAL FORCE             4.067E-07   AT NODE        533   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -1.928E-02   AT NODE        650   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -5.132E-05   AT NODE        533   DOF  2
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     1.114E-02   TIME AVG. MOMENT      5.402E-03
 LARGEST RESIDUAL MOMENT            8.595E-07   AT NODE        648   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION      6.872E-03   AT NODE       4408   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.782E-05   AT NODE       4394   DOF  4
   INSTANCE: SHELL-1                                                                         
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED

 ITERATION SUMMARY FOR THE INCREMENT:   6 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  6 ARE EQUILIBRIUM ITERATIONS.


                                INCREMENT    26 SUMMARY


     CURRENT LOAD PROPORTIONALITY FACTOR          1.201    
     TOTAL ARC LENGTH    1.80    , INCREMENT OF ARC LENGTH   2.109E-02


  INCREMENT    27 STARTS. ATTEMPT NUMBER  1

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: THE SYSTEM MATRIX HAS 4 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       2.22       TIME AVG. FORCE        1.77    
 LARGEST RESIDUAL FORCE             2.110E-03   AT NODE        967   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -7.700E-03   AT NODE         43   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -7.700E-03   AT NODE         43   DOF  2
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF DISP.    CORRECTION   -2.813E-05
 FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                     1.110E-02   TIME AVG. MOMENT      5.613E-03
 LARGEST RESIDUAL MOMENT            7.203E-05   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF ROTATION     -2.784E-03   AT NODE       1535   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -2.784E-03   AT NODE       1535   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: THE SYSTEM MATRIX HAS 4 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       2.22       TIME AVG. FORCE        1.77    
 LARGEST RESIDUAL FORCE            -4.053E-05   AT NODE        961   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -6.684E-03   AT NODE         43   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.016E-03   AT NODE         43   DOF  2
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF DISP.    CORRECTION   -1.952E-05
 FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                     1.110E-02   TIME AVG. MOMENT      5.613E-03
 LARGEST RESIDUAL MOMENT           -2.728E-06   AT NODE       3493   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION     -2.417E-03   AT NODE       1535   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     3.669E-04   AT NODE       1535   DOF  4
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: THE SYSTEM MATRIX HAS 4 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       2.22       TIME AVG. FORCE        1.77    
 LARGEST RESIDUAL FORCE            -9.246E-08   AT NODE         43   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -6.687E-03   AT NODE         43   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -4.093E-06   AT NODE        650   DOF  2
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     1.110E-02   TIME AVG. MOMENT      5.613E-03
 LARGEST RESIDUAL MOMENT           -2.694E-07   AT NODE       3493   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION     -2.419E-03   AT NODE       1535   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -1.706E-06   AT NODE        589   DOF  6
   INSTANCE: SHELL-1                                                                         
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED

 ITERATION SUMMARY FOR THE INCREMENT:   3 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  3 ARE EQUILIBRIUM ITERATIONS.


                                INCREMENT    27 SUMMARY


     CURRENT LOAD PROPORTIONALITY FACTOR          1.200    
     TOTAL ARC LENGTH    1.83    , INCREMENT OF ARC LENGTH   2.109E-02


  INCREMENT    28 STARTS. ATTEMPT NUMBER  1

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: THE SYSTEM MATRIX HAS 4 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       2.22       TIME AVG. FORCE        1.79    
 LARGEST RESIDUAL FORCE             1.252E-03   AT NODE        967   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -5.852E-03   AT NODE         43   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -5.852E-03   AT NODE         43   DOF  2
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF DISP.    CORRECTION   -1.295E-05
 FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                     1.105E-02   TIME AVG. MOMENT      5.808E-03
 LARGEST RESIDUAL MOMENT            7.829E-05   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF ROTATION     -2.115E-03   AT NODE       1535   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -2.115E-03   AT NODE       1535   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: THE SYSTEM MATRIX HAS 4 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       2.22       TIME AVG. FORCE        1.79    
 LARGEST RESIDUAL FORCE             7.483E-06   AT NODE       2747   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -5.414E-03   AT NODE         43   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        4.381E-04   AT NODE         43   DOF  2
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF DISP.    CORRECTION    2.618E-06
 FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                     1.105E-02   TIME AVG. MOMENT      5.807E-03
 LARGEST RESIDUAL MOMENT            2.447E-06   AT NODE       3479   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION     -1.953E-03   AT NODE       1535   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.627E-04   AT NODE       1535   DOF  4
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: THE SYSTEM MATRIX HAS 4 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       2.22       TIME AVG. FORCE        1.79    
 LARGEST RESIDUAL FORCE            -4.260E-08   AT NODE        260   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -5.419E-03   AT NODE         43   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        4.779E-06   AT NODE        259   DOF  2
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     1.105E-02   TIME AVG. MOMENT      5.807E-03
 LARGEST RESIDUAL MOMENT           -2.159E-07   AT NODE       3493   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION     -1.954E-03   AT NODE       1535   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.652E-06   AT NODE       1549   DOF  4
   INSTANCE: SHELL-1                                                                         
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED
          ARC LENGTH INCREMENT MAY NOW INCREASE TO    3.164E-02

 ITERATION SUMMARY FOR THE INCREMENT:   3 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  3 ARE EQUILIBRIUM ITERATIONS.


                                INCREMENT    28 SUMMARY


     CURRENT LOAD PROPORTIONALITY FACTOR          1.199    
     TOTAL ARC LENGTH    1.85    , INCREMENT OF ARC LENGTH   2.109E-02


  INCREMENT    29 STARTS. ATTEMPT NUMBER  1

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: THE SYSTEM MATRIX HAS 4 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       2.22       TIME AVG. FORCE        1.80    
 LARGEST RESIDUAL FORCE             2.075E-03   AT NODE        967   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -7.572E-03   AT NODE         43   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -7.572E-03   AT NODE         43   DOF  2
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF DISP.    CORRECTION   -1.834E-05
 FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                     1.099E-02   TIME AVG. MOMENT      5.986E-03
 LARGEST RESIDUAL MOMENT            1.794E-04   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF ROTATION     -2.723E-03   AT NODE       1535   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -2.723E-03   AT NODE       1535   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: THE SYSTEM MATRIX HAS 4 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       2.22       TIME AVG. FORCE        1.80    
 LARGEST RESIDUAL FORCE             1.054E-05   AT NODE       2747   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -7.080E-03   AT NODE         43   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        4.924E-04   AT NODE         43   DOF  2
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF DISP.    CORRECTION    2.500E-06
 FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                     1.099E-02   TIME AVG. MOMENT      5.986E-03
 LARGEST RESIDUAL MOMENT            4.904E-06   AT NODE       3479   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION     -2.532E-03   AT NODE       1535   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.905E-04   AT NODE       1535   DOF  4
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          1
 

 ***WARNING: THE SYSTEM MATRIX HAS 4 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       2.22       TIME AVG. FORCE        1.80    
 LARGEST RESIDUAL FORCE             8.551E-08   AT NODE         44   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -7.088E-03   AT NODE         43   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        8.125E-06   AT NODE        259   DOF  2
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     1.099E-02   TIME AVG. MOMENT      5.986E-03
 LARGEST RESIDUAL MOMENT           -3.331E-07   AT NODE       3479   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION     -2.535E-03   AT NODE       1535   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     2.805E-06   AT NODE       1549   DOF  4
   INSTANCE: SHELL-1                                                                         
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED
          ARC LENGTH INCREMENT MAY NOW INCREASE TO    4.746E-02

 ITERATION SUMMARY FOR THE INCREMENT:   3 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  3 ARE EQUILIBRIUM ITERATIONS.


                                INCREMENT    29 SUMMARY


     CURRENT LOAD PROPORTIONALITY FACTOR          1.197    
     TOTAL ARC LENGTH    1.88    , INCREMENT OF ARC LENGTH   3.164E-02


  INCREMENT    30 STARTS. ATTEMPT NUMBER  1

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: THE SYSTEM MATRIX HAS 4 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       2.22       TIME AVG. FORCE        1.82    
 LARGEST RESIDUAL FORCE             3.591E-03   AT NODE       1564   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -1.003E-02   AT NODE         43   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -1.003E-02   AT NODE         43   DOF  2
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF DISP.    CORRECTION   -2.747E-05
 FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                     1.088E-02   TIME AVG. MOMENT      6.149E-03
 LARGEST RESIDUAL MOMENT            4.071E-04   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF ROTATION     -3.565E-03   AT NODE       1535   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -3.565E-03   AT NODE       1535   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: THE SYSTEM MATRIX HAS 4 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       2.22       TIME AVG. FORCE        1.82    
 LARGEST RESIDUAL FORCE             1.347E-05   AT NODE       2747   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.         9.522E-03   AT NODE        259   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        5.062E-04   AT NODE         43   DOF  2
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF DISP.    CORRECTION    1.899E-06
 FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                     1.088E-02   TIME AVG. MOMENT      6.149E-03
 LARGEST RESIDUAL MOMENT           -9.646E-06   AT NODE       2464   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION     -3.354E-03   AT NODE       1535   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     2.112E-04   AT NODE       1535   DOF  4
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: THE SYSTEM MATRIX HAS 4 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       2.22       TIME AVG. FORCE        1.82    
 LARGEST RESIDUAL FORCE             2.078E-07   AT NODE       3508   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.         9.537E-03   AT NODE        259   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.431E-05   AT NODE        259   DOF  2
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     1.088E-02   TIME AVG. MOMENT      6.149E-03
 LARGEST RESIDUAL MOMENT            7.357E-07   AT NODE       3493   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION     -3.359E-03   AT NODE       1535   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     4.783E-06   AT NODE       1549   DOF  4
   INSTANCE: SHELL-1                                                                         
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED
          ARC LENGTH INCREMENT MAY NOW INCREASE TO    7.119E-02

 ITERATION SUMMARY FOR THE INCREMENT:   3 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  3 ARE EQUILIBRIUM ITERATIONS.


                                INCREMENT    30 SUMMARY


     CURRENT LOAD PROPORTIONALITY FACTOR          1.195    
     TOTAL ARC LENGTH    1.93    , INCREMENT OF ARC LENGTH   4.746E-02


  INCREMENT    31 STARTS. ATTEMPT NUMBER  1

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: THE SYSTEM MATRIX HAS 4 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       2.22       TIME AVG. FORCE        1.83    
 LARGEST RESIDUAL FORCE             6.506E-03   AT NODE       1550   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.         1.372E-02   AT NODE        259   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.372E-02   AT NODE        259   DOF  2
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF DISP.    CORRECTION    4.391E-05
 FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                     1.072E-02   TIME AVG. MOMENT      6.297E-03
 LARGEST RESIDUAL MOMENT            9.150E-04   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF ROTATION      4.782E-03   AT NODE       1549   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     4.782E-03   AT NODE       1549   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: THE SYSTEM MATRIX HAS 4 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       2.22       TIME AVG. FORCE        1.83    
 LARGEST RESIDUAL FORCE            -1.694E-05   AT NODE        851   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.         1.329E-02   AT NODE        259   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -4.554E-04   AT NODE         49   DOF  2
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF DISP.    CORRECTION    1.186E-06
 FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                     1.071E-02   TIME AVG. MOMENT      6.296E-03
 LARGEST RESIDUAL MOMENT           -1.841E-05   AT NODE       2464   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION      4.574E-03   AT NODE       1549   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -2.089E-04   AT NODE       1549   DOF  4
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: THE SYSTEM MATRIX HAS 4 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       2.22       TIME AVG. FORCE        1.83    
 LARGEST RESIDUAL FORCE            -5.387E-07   AT NODE       2449   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.         1.332E-02   AT NODE        259   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        2.543E-05   AT NODE        259   DOF  2
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     1.071E-02   TIME AVG. MOMENT      6.296E-03
 LARGEST RESIDUAL MOMENT            1.965E-06   AT NODE       2464   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION      4.581E-03   AT NODE       1549   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     7.834E-06   AT NODE       1549   DOF  4
   INSTANCE: SHELL-1                                                                         
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED
          ARC LENGTH INCREMENT MAY NOW INCREASE TO    0.100    

 ITERATION SUMMARY FOR THE INCREMENT:   3 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  3 ARE EQUILIBRIUM ITERATIONS.


                                INCREMENT    31 SUMMARY


     CURRENT LOAD PROPORTIONALITY FACTOR          1.190    
     TOTAL ARC LENGTH    2.00    , INCREMENT OF ARC LENGTH   7.119E-02


  INCREMENT    32 STARTS. ATTEMPT NUMBER  1

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          1
 

 ***WARNING: THE SYSTEM MATRIX HAS 4 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       2.22       TIME AVG. FORCE        1.84    
 LARGEST RESIDUAL FORCE             1.101E-02   AT NODE        749   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.         1.832E-02   AT NODE        259   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.832E-02   AT NODE        259   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     1.049E-02   TIME AVG. MOMENT      6.427E-03
 LARGEST RESIDUAL MOMENT            1.783E-03   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF ROTATION      6.217E-03   AT NODE       1549   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     6.217E-03   AT NODE       1549   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: THE SYSTEM MATRIX HAS 4 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       2.21       TIME AVG. FORCE        1.84    
 LARGEST RESIDUAL FORCE             5.801E-05   AT NODE        736   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.         1.825E-02   AT NODE        259   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -6.976E-04   AT NODE        736   DOF  3
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF DISP.    CORRECTION   -3.674E-06
 FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                     1.048E-02   TIME AVG. MOMENT      6.427E-03
 LARGEST RESIDUAL MOMENT           -2.928E-05   AT NODE       2464   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION      6.105E-03   AT NODE       1549   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     2.059E-04   AT NODE       3479   DOF  4
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          1
 

 ***WARNING: THE SYSTEM MATRIX HAS 4 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       2.21       TIME AVG. FORCE        1.84    
 LARGEST RESIDUAL FORCE             1.142E-06   AT NODE       2435   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.         1.828E-02   AT NODE        259   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -4.263E-05   AT NODE        736   DOF  3
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     1.048E-02   TIME AVG. MOMENT      6.427E-03
 LARGEST RESIDUAL MOMENT           -4.104E-06   AT NODE       2450   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION      6.113E-03   AT NODE       1549   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     7.683E-06   AT NODE       1549   DOF  4
   INSTANCE: SHELL-1                                                                         
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED

 ITERATION SUMMARY FOR THE INCREMENT:   3 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  3 ARE EQUILIBRIUM ITERATIONS.


                                INCREMENT    32 SUMMARY


     CURRENT LOAD PROPORTIONALITY FACTOR          1.184    
     TOTAL ARC LENGTH    2.10    , INCREMENT OF ARC LENGTH   0.100    


  INCREMENT    33 STARTS. ATTEMPT NUMBER  1

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: THE SYSTEM MATRIX HAS 4 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       2.21       TIME AVG. FORCE        1.85    
 LARGEST RESIDUAL FORCE            -1.107E-02   AT NODE       1534   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.         1.839E-02   AT NODE        259   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.839E-02   AT NODE        259   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     1.025E-02   TIME AVG. MOMENT      6.543E-03
 LARGEST RESIDUAL MOMENT            1.740E-03   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF ROTATION      6.066E-03   AT NODE       1549   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     6.066E-03   AT NODE       1549   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          1
 

 ***WARNING: THE SYSTEM MATRIX HAS 4 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       2.21       TIME AVG. FORCE        1.85    
 LARGEST RESIDUAL FORCE            -4.580E-05   AT NODE        851   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.         1.880E-02   AT NODE        259   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -6.453E-04   AT NODE        472   DOF  2
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF DISP.    CORRECTION   -2.670E-06
 FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                     1.024E-02   TIME AVG. MOMENT      6.543E-03
 LARGEST RESIDUAL MOMENT           -2.230E-05   AT NODE       3493   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION      6.147E-03   AT NODE       1549   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     2.459E-04   AT NODE       3479   DOF  4
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: THE SYSTEM MATRIX HAS 4 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       2.21       TIME AVG. FORCE        1.85    
 LARGEST RESIDUAL FORCE            -9.065E-07   AT NODE       2449   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.         1.881E-02   AT NODE        259   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -2.408E-05   AT NODE        736   DOF  3
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     1.024E-02   TIME AVG. MOMENT      6.543E-03
 LARGEST RESIDUAL MOMENT            3.094E-06   AT NODE       2464   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION      6.146E-03   AT NODE       1549   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     3.928E-06   AT NODE        835   DOF  4
   INSTANCE: SHELL-1                                                                         
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED

 ITERATION SUMMARY FOR THE INCREMENT:   3 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  3 ARE EQUILIBRIUM ITERATIONS.


                                INCREMENT    33 SUMMARY


     CURRENT LOAD PROPORTIONALITY FACTOR          1.177    
     TOTAL ARC LENGTH    2.20    , INCREMENT OF ARC LENGTH   0.100    


  INCREMENT    34 STARTS. ATTEMPT NUMBER  1

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: THE SYSTEM MATRIX HAS 4 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       2.20       TIME AVG. FORCE        1.86    
 LARGEST RESIDUAL FORCE            -1.251E-02   AT NODE       1534   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.         1.934E-02   AT NODE        259   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.934E-02   AT NODE        259   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     1.001E-02   TIME AVG. MOMENT      6.645E-03
 LARGEST RESIDUAL MOMENT            1.702E-03   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF ROTATION      6.268E-03   AT NODE       1549   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     6.268E-03   AT NODE       1549   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: THE SYSTEM MATRIX HAS 4 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       2.20       TIME AVG. FORCE        1.86    
 LARGEST RESIDUAL FORCE             4.636E-05   AT NODE        774   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.         2.017E-02   AT NODE        259   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        8.590E-04   AT NODE        589   DOF  2
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF DISP.    CORRECTION   -3.184E-06
 FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                     1.001E-02   TIME AVG. MOMENT      6.645E-03
 LARGEST RESIDUAL MOMENT           -2.115E-05   AT NODE       2494   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION      6.511E-03   AT NODE       1549   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -3.169E-04   AT NODE       3493   DOF  4
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          1
 

 ***WARNING: THE SYSTEM MATRIX HAS 4 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       2.20       TIME AVG. FORCE        1.86    
 LARGEST RESIDUAL FORCE             9.107E-07   AT NODE       2463   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.         2.015E-02   AT NODE        259   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        2.132E-05   AT NODE        650   DOF  2
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     1.001E-02   TIME AVG. MOMENT      6.645E-03
 LARGEST RESIDUAL MOMENT           -2.510E-06   AT NODE       2450   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION      6.501E-03   AT NODE       1549   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -9.861E-06   AT NODE       4408   DOF  4
   INSTANCE: SHELL-1                                                                         
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED

 ITERATION SUMMARY FOR THE INCREMENT:   3 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  3 ARE EQUILIBRIUM ITERATIONS.


                                INCREMENT    34 SUMMARY


     CURRENT LOAD PROPORTIONALITY FACTOR          1.170    
     TOTAL ARC LENGTH    2.30    , INCREMENT OF ARC LENGTH   0.100    


  INCREMENT    35 STARTS. ATTEMPT NUMBER  1

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: THE SYSTEM MATRIX HAS 4 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       2.20       TIME AVG. FORCE        1.87    
 LARGEST RESIDUAL FORCE            -1.525E-02   AT NODE       1534   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.         2.112E-02   AT NODE        259   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        2.112E-02   AT NODE        259   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     9.774E-03   TIME AVG. MOMENT      6.734E-03
 LARGEST RESIDUAL MOMENT            1.680E-03   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF ROTATION      6.789E-03   AT NODE       1549   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     6.789E-03   AT NODE       1549   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          1
 

 ***WARNING: THE SYSTEM MATRIX HAS 4 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       2.19       TIME AVG. FORCE        1.87    
 LARGEST RESIDUAL FORCE             9.405E-05   AT NODE       4423   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.         2.258E-02   AT NODE        259   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -1.464E-03   AT NODE        650   DOF  2
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF DISP.    CORRECTION    9.027E-06
 FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                     9.775E-03   TIME AVG. MOMENT      6.734E-03
 LARGEST RESIDUAL MOMENT           -2.263E-05   AT NODE       1579   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION      7.261E-03   AT NODE       1549   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     4.727E-04   AT NODE       4408   DOF  4
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: THE SYSTEM MATRIX HAS 4 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       2.19       TIME AVG. FORCE        1.87    
 LARGEST RESIDUAL FORCE            -1.245E-06   AT NODE       3492   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.         2.251E-02   AT NODE        259   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        6.613E-05   AT NODE        650   DOF  2
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     9.774E-03   TIME AVG. MOMENT      6.734E-03
 LARGEST RESIDUAL MOMENT           -2.221E-06   AT NODE       2450   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION      7.235E-03   AT NODE       1549   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -2.622E-05   AT NODE       4408   DOF  4
   INSTANCE: SHELL-1                                                                         
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED

 ITERATION SUMMARY FOR THE INCREMENT:   3 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  3 ARE EQUILIBRIUM ITERATIONS.


                                INCREMENT    35 SUMMARY


     CURRENT LOAD PROPORTIONALITY FACTOR          1.163    
     TOTAL ARC LENGTH    2.40    , INCREMENT OF ARC LENGTH   0.100    


  INCREMENT    36 STARTS. ATTEMPT NUMBER  1

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: THE SYSTEM MATRIX HAS 4 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       2.19       TIME AVG. FORCE        1.88    
 LARGEST RESIDUAL FORCE             2.059E-02   AT NODE       4423   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -2.419E-02   AT NODE        650   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -2.419E-02   AT NODE        650   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     9.552E-03   TIME AVG. MOMENT      6.812E-03
 LARGEST RESIDUAL MOMENT            1.680E-03   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF ROTATION      7.781E-03   AT NODE       4408   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     7.781E-03   AT NODE       4408   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: THE SYSTEM MATRIX HAS 4 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       2.19       TIME AVG. FORCE        1.88    
 LARGEST RESIDUAL FORCE             3.765E-04   AT NODE       4409   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -2.710E-02   AT NODE        650   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -2.914E-03   AT NODE        650   DOF  2
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF DISP.    CORRECTION   -5.330E-05
 FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                     9.555E-03   TIME AVG. MOMENT      6.812E-03
 LARGEST RESIDUAL MOMENT           -3.161E-05   AT NODE       4393   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION      8.768E-03   AT NODE       4408   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     9.869E-04   AT NODE       4408   DOF  4
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          1
 

 ***WARNING: THE SYSTEM MATRIX HAS 4 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       2.19       TIME AVG. FORCE        1.88    
 LARGEST RESIDUAL FORCE            -2.099E-06   AT NODE       4407   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -2.689E-02   AT NODE        650   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        2.161E-04   AT NODE        650   DOF  2
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     9.554E-03   TIME AVG. MOMENT      6.812E-03
 LARGEST RESIDUAL MOMENT            4.458E-06   AT NODE       4438   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION      8.687E-03   AT NODE       4408   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -8.146E-05   AT NODE       4408   DOF  4
   INSTANCE: SHELL-1                                                                         
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED

 ITERATION SUMMARY FOR THE INCREMENT:   3 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  3 ARE EQUILIBRIUM ITERATIONS.


                                INCREMENT    36 SUMMARY


     CURRENT LOAD PROPORTIONALITY FACTOR          1.157    
     TOTAL ARC LENGTH    2.50    , INCREMENT OF ARC LENGTH   0.100    


  INCREMENT    37 STARTS. ATTEMPT NUMBER  1

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: THE SYSTEM MATRIX HAS 4 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       2.18       TIME AVG. FORCE        1.89    
 LARGEST RESIDUAL FORCE             3.384E-02   AT NODE       4423   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -3.033E-02   AT NODE        650   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -3.033E-02   AT NODE        650   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     9.364E-03   TIME AVG. MOMENT      6.881E-03
 LARGEST RESIDUAL MOMENT            1.678E-03   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF ROTATION      9.857E-03   AT NODE       4408   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     9.857E-03   AT NODE       4408   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =  0.10000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          1
 

 ***WARNING: THE SYSTEM MATRIX HAS 4 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       2.18       TIME AVG. FORCE        1.89    
 LARGEST RESIDUAL FORCE             5.266E-03   AT NODE       4423   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -4.116E-02   AT NODE        650   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -1.083E-02   AT NODE        650   DOF  2
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     9.429E-03   TIME AVG. MOMENT      6.883E-03
 LARGEST RESIDUAL MOMENT           -1.350E-04   AT NODE       4393   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION      1.361E-02   AT NODE       4408   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     3.751E-03   AT NODE       4408   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: THE SYSTEM MATRIX HAS 4 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       2.18       TIME AVG. FORCE        1.89    
 LARGEST RESIDUAL FORCE            -3.610E-05   AT NODE       4379   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -4.031E-02   AT NODE        650   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -8.512E-04   AT NODE        533   DOF  2
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF DISP.    CORRECTION    5.835E-06
 FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                     9.418E-03   TIME AVG. MOMENT      6.883E-03
 LARGEST RESIDUAL MOMENT            3.525E-05   AT NODE       4438   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION      1.327E-02   AT NODE       4408   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     3.363E-04   AT NODE       4394   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          1
 

 ***WARNING: THE SYSTEM MATRIX HAS 4 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     4


 AVERAGE FORCE                       2.18       TIME AVG. FORCE        1.89    
 LARGEST RESIDUAL FORCE             1.330E-06   AT NODE        649   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -4.034E-02   AT NODE        650   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -2.340E-05   AT NODE        650   DOF  2
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     9.419E-03   TIME AVG. MOMENT      6.883E-03
 LARGEST RESIDUAL MOMENT           -2.433E-06   AT NODE       4364   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION      1.328E-02   AT NODE       4408   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     8.568E-06   AT NODE       4408   DOF  4
   INSTANCE: SHELL-1                                                                         
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED

 ITERATION SUMMARY FOR THE INCREMENT:   4 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  4 ARE EQUILIBRIUM ITERATIONS.


                                INCREMENT    37 SUMMARY


     CURRENT LOAD PROPORTIONALITY FACTOR          1.150    
     TOTAL ARC LENGTH    2.60    , INCREMENT OF ARC LENGTH   0.100    


  INCREMENT    38 STARTS. ATTEMPT NUMBER  1

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: THE SYSTEM MATRIX HAS 4 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       2.17       TIME AVG. FORCE        1.90    
 LARGEST RESIDUAL FORCE             0.118       AT NODE       4423   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -5.387E-02   AT NODE        650   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -5.387E-02   AT NODE        650   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     9.502E-03   TIME AVG. MOMENT      6.952E-03
 LARGEST RESIDUAL MOMENT            2.490E-03   AT NODE        651   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION      1.802E-02   AT NODE       4408   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.802E-02   AT NODE       4408   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          1

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       2.18       TIME AVG. FORCE        1.90    
 LARGEST RESIDUAL FORCE             0.107       AT NODE       3508   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.         6.528E-02   AT NODE        589   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        4.605E-02   AT NODE        589   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     8.875E-03   TIME AVG. MOMENT      6.935E-03
 LARGEST RESIDUAL MOMENT            2.053E-03   AT NODE        590   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION     -2.401E-02   AT NODE       3493   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -1.715E-02   AT NODE       3493   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: THE SYSTEM MATRIX HAS 4 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       2.19       TIME AVG. FORCE        1.90    
 LARGEST RESIDUAL FORCE             0.127       AT NODE       2465   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.         0.118       AT NODE        104   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        5.406E-02   AT NODE        104   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     8.867E-03   TIME AVG. MOMENT      6.935E-03
 LARGEST RESIDUAL MOMENT           -2.723E-03   AT NODE        103   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION      4.345E-02   AT NODE       2450   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.978E-02   AT NODE       2450   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =  0.10000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          1
 

 ***WARNING: THE SYSTEM MATRIX HAS 4 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     4


 AVERAGE FORCE                       2.19       TIME AVG. FORCE        1.90    
 LARGEST RESIDUAL FORCE             0.253       AT NODE       4423   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -0.107       AT NODE        650   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -7.491E-02   AT NODE        650   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     9.763E-03   TIME AVG. MOMENT      6.959E-03
 LARGEST RESIDUAL MOMENT           -5.483E-03   AT NODE        649   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION      3.686E-02   AT NODE       4408   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     2.587E-02   AT NODE       4408   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 

 ***NOTE: THE SOLUTION APPEARS TO BE DIVERGING. CONVERGENCE IS JUDGED UNLIKELY.


  INCREMENT    38 STARTS. ATTEMPT NUMBER  2

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: THE SYSTEM MATRIX HAS 4 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       2.18       TIME AVG. FORCE        1.90    
 LARGEST RESIDUAL FORCE             7.356E-03   AT NODE       4423   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -1.343E-02   AT NODE        650   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -1.343E-02   AT NODE        650   DOF  2
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF DISP.    CORRECTION   -1.282E-04
 FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                     9.431E-03   TIME AVG. MOMENT      6.950E-03
 LARGEST RESIDUAL MOMENT            1.404E-04   AT NODE        651   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION      4.491E-03   AT NODE       4408   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     4.491E-03   AT NODE       4408   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          1
 

 ***WARNING: THE SYSTEM MATRIX HAS 2 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       2.18       TIME AVG. FORCE        1.90    
 LARGEST RESIDUAL FORCE             3.502E-04   AT NODE       4409   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.         1.608E-02   AT NODE        533   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        2.655E-03   AT NODE        533   DOF  2
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF DISP.    CORRECTION    1.264E-04
 FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                     9.465E-03   TIME AVG. MOMENT      6.951E-03
 LARGEST RESIDUAL MOMENT            1.853E-05   AT NODE       4379   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION     -5.426E-03   AT NODE       4394   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -9.353E-04   AT NODE       4394   DOF  4
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: THE SYSTEM MATRIX HAS 2 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       2.18       TIME AVG. FORCE        1.90    
 LARGEST RESIDUAL FORCE            -2.127E-06   AT NODE       2741   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.         1.627E-02   AT NODE        533   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -2.358E-04   AT NODE        259   DOF  2
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF DISP.    CORRECTION    1.432E-06
 FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                     9.464E-03   TIME AVG. MOMENT      6.951E-03
 LARGEST RESIDUAL MOMENT            3.190E-06   AT NODE       4364   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION     -5.490E-03   AT NODE       4394   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -8.350E-05   AT NODE       1549   DOF  4
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF ROTATION CORRECTION   -1.437E-05
 MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION
          ARC LENGTH INCREMENT MAY NOW INCREASE TO    3.750E-02

 ITERATION SUMMARY FOR THE INCREMENT:   3 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  3 ARE EQUILIBRIUM ITERATIONS.


                                INCREMENT    38 SUMMARY


     CURRENT LOAD PROPORTIONALITY FACTOR          1.149    
     TOTAL ARC LENGTH    2.62    , INCREMENT OF ARC LENGTH   2.500E-02


  INCREMENT    39 STARTS. ATTEMPT NUMBER  1

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          1
 

 ***WARNING: THE SYSTEM MATRIX HAS 2 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       2.18       TIME AVG. FORCE        1.90    
 LARGEST RESIDUAL FORCE             4.108E-02   AT NODE       4423   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -3.073E-02   AT NODE        650   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -3.073E-02   AT NODE        650   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     9.578E-03   TIME AVG. MOMENT      7.018E-03
 LARGEST RESIDUAL MOMENT            8.211E-04   AT NODE        651   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION      1.054E-02   AT NODE       4408   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.054E-02   AT NODE       4408   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: THE SYSTEM MATRIX HAS 1 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       2.18       TIME AVG. FORCE        1.90    
 LARGEST RESIDUAL FORCE            -3.521E-02   AT NODE       1534   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.         3.244E-02   AT NODE        259   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        2.804E-02   AT NODE        259   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     9.655E-03   TIME AVG. MOMENT      7.020E-03
 LARGEST RESIDUAL MOMENT            6.876E-04   AT NODE        258   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION      1.109E-02   AT NODE       1549   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     9.704E-03   AT NODE       1549   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       2.18       TIME AVG. FORCE        1.90    
 LARGEST RESIDUAL FORCE            -1.427E-03   AT NODE       1534   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.         2.635E-02   AT NODE        259   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -6.096E-03   AT NODE        259   DOF  2
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF DISP.    CORRECTION   -2.471E-04
 FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                     9.694E-03   TIME AVG. MOMENT      7.021E-03
 LARGEST RESIDUAL MOMENT           -1.087E-04   AT NODE       1564   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION      9.021E-03   AT NODE       1549   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -2.065E-03   AT NODE       1549   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =  0.10000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     4


 AVERAGE FORCE                       2.18       TIME AVG. FORCE        1.90    
 LARGEST RESIDUAL FORCE            -1.377E-04   AT NODE       1534   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.         2.455E-02   AT NODE        259   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -1.795E-03   AT NODE        259   DOF  2
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF DISP.    CORRECTION   -1.732E-04
 FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                     9.695E-03   TIME AVG. MOMENT      7.021E-03
 LARGEST RESIDUAL MOMENT           -7.941E-06   AT NODE       2738   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION      8.419E-03   AT NODE       1549   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -6.016E-04   AT NODE       1549   DOF  4
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF ROTATION CORRECTION   -4.395E-05
 MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION
          ARC LENGTH INCREMENT MAY NOW INCREASE TO    5.625E-02

 ITERATION SUMMARY FOR THE INCREMENT:   4 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  4 ARE EQUILIBRIUM ITERATIONS.


                                INCREMENT    39 SUMMARY


     CURRENT LOAD PROPORTIONALITY FACTOR          1.150    
     TOTAL ARC LENGTH    2.66    , INCREMENT OF ARC LENGTH   3.750E-02


  INCREMENT    40 STARTS. ATTEMPT NUMBER  1

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          1

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       2.18       TIME AVG. FORCE        1.91    
 LARGEST RESIDUAL FORCE             1.506E-02   AT NODE       4423   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -1.799E-02   AT NODE        650   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -1.799E-02   AT NODE        650   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     9.935E-03   TIME AVG. MOMENT      7.094E-03
 LARGEST RESIDUAL MOMENT            2.863E-04   AT NODE        651   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION      6.230E-03   AT NODE       4408   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     6.230E-03   AT NODE       4408   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       2.18       TIME AVG. FORCE        1.91    
 LARGEST RESIDUAL FORCE             2.419E-04   AT NODE       4423   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -1.550E-02   AT NODE        650   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        2.491E-03   AT NODE        650   DOF  2
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF DISP.    CORRECTION    4.002E-05
 FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                     9.930E-03   TIME AVG. MOMENT      7.094E-03
 LARGEST RESIDUAL MOMENT           -4.013E-05   AT NODE       4393   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION      5.389E-03   AT NODE       4408   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -8.409E-04   AT NODE       4408   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       2.18       TIME AVG. FORCE        1.91    
 LARGEST RESIDUAL FORCE             1.580E-06   AT NODE       4407   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -1.532E-02   AT NODE        650   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.818E-04   AT NODE        650   DOF  2
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF DISP.    CORRECTION    1.187E-06
 FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                     9.929E-03   TIME AVG. MOMENT      7.094E-03
 LARGEST RESIDUAL MOMENT           -2.854E-06   AT NODE       4438   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION      5.332E-03   AT NODE       4408   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -5.651E-05   AT NODE       4408   DOF  4
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF ROTATION CORRECTION   -4.018E-06
 MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION
          ARC LENGTH INCREMENT MAY NOW INCREASE TO    8.438E-02

 ITERATION SUMMARY FOR THE INCREMENT:   3 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  3 ARE EQUILIBRIUM ITERATIONS.


                                INCREMENT    40 SUMMARY


     CURRENT LOAD PROPORTIONALITY FACTOR          1.152    
     TOTAL ARC LENGTH    2.72    , INCREMENT OF ARC LENGTH   5.625E-02


  INCREMENT    41 STARTS. ATTEMPT NUMBER  1

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       2.18       TIME AVG. FORCE        1.92    
 LARGEST RESIDUAL FORCE             1.937E-02   AT NODE       4423   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -1.966E-02   AT NODE        650   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -1.966E-02   AT NODE        650   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     1.028E-02   TIME AVG. MOMENT      7.172E-03
 LARGEST RESIDUAL MOMENT            3.654E-04   AT NODE        150   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION      6.874E-03   AT NODE       4408   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     6.874E-03   AT NODE       4408   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       2.18       TIME AVG. FORCE        1.92    
 LARGEST RESIDUAL FORCE             2.506E-04   AT NODE       4423   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -1.715E-02   AT NODE        650   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        2.512E-03   AT NODE        650   DOF  2
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF DISP.    CORRECTION    3.250E-05
 FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                     1.026E-02   TIME AVG. MOMENT      7.171E-03
 LARGEST RESIDUAL MOMENT           -5.818E-05   AT NODE       4393   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION      6.003E-03   AT NODE       4408   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -8.711E-04   AT NODE       4408   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       2.18       TIME AVG. FORCE        1.92    
 LARGEST RESIDUAL FORCE             2.136E-06   AT NODE       4407   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -1.699E-02   AT NODE        650   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.549E-04   AT NODE        650   DOF  2
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     1.026E-02   TIME AVG. MOMENT      7.171E-03
 LARGEST RESIDUAL MOMENT           -3.636E-06   AT NODE       4438   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION      5.958E-03   AT NODE       4408   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -4.518E-05   AT NODE       4408   DOF  4
   INSTANCE: SHELL-1                                                                         
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED
          ARC LENGTH INCREMENT MAY NOW INCREASE TO    0.100    

 ITERATION SUMMARY FOR THE INCREMENT:   3 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  3 ARE EQUILIBRIUM ITERATIONS.


                                INCREMENT    41 SUMMARY


     CURRENT LOAD PROPORTIONALITY FACTOR          1.155    
     TOTAL ARC LENGTH    2.80    , INCREMENT OF ARC LENGTH   8.438E-02


  INCREMENT    42 STARTS. ATTEMPT NUMBER  1

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          1

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       2.18       TIME AVG. FORCE        1.92    
 LARGEST RESIDUAL FORCE             2.218E-02   AT NODE        739   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -1.753E-02   AT NODE        650   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -1.753E-02   AT NODE        650   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     1.065E-02   TIME AVG. MOMENT      7.254E-03
 LARGEST RESIDUAL MOMENT            5.853E-04   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF ROTATION      6.152E-03   AT NODE       4408   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     6.152E-03   AT NODE       4408   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       2.18       TIME AVG. FORCE        1.92    
 LARGEST RESIDUAL FORCE             1.362E-04   AT NODE       4409   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -1.570E-02   AT NODE        650   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.831E-03   AT NODE        650   DOF  2
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF DISP.    CORRECTION    1.125E-05
 FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                     1.063E-02   TIME AVG. MOMENT      7.253E-03
 LARGEST RESIDUAL MOMENT           -5.655E-05   AT NODE       4393   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION      5.484E-03   AT NODE       4408   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -6.672E-04   AT NODE       4408   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       2.18       TIME AVG. FORCE        1.92    
 LARGEST RESIDUAL FORCE            -1.829E-06   AT NODE       4395   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -1.563E-02   AT NODE        650   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        7.525E-05   AT NODE        650   DOF  2
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     1.063E-02   TIME AVG. MOMENT      7.253E-03
 LARGEST RESIDUAL MOMENT           -2.507E-06   AT NODE       4422   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION      5.463E-03   AT NODE       4408   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -2.100E-05   AT NODE       4408   DOF  4
   INSTANCE: SHELL-1                                                                         
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED

 ITERATION SUMMARY FOR THE INCREMENT:   3 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  3 ARE EQUILIBRIUM ITERATIONS.


                                INCREMENT    42 SUMMARY


     CURRENT LOAD PROPORTIONALITY FACTOR          1.159    
     TOTAL ARC LENGTH    2.90    , INCREMENT OF ARC LENGTH   0.100    


  INCREMENT    43 STARTS. ATTEMPT NUMBER  1

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       2.18       TIME AVG. FORCE        1.93    
 LARGEST RESIDUAL FORCE             2.195E-02   AT NODE        749   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -1.399E-02   AT NODE        650   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -1.399E-02   AT NODE        650   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     1.098E-02   TIME AVG. MOMENT      7.340E-03
 LARGEST RESIDUAL MOMENT            6.412E-04   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF ROTATION      4.857E-03   AT NODE       4408   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     4.857E-03   AT NODE       4408   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       2.18       TIME AVG. FORCE        1.93    
 LARGEST RESIDUAL FORCE             4.832E-05   AT NODE       4409   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.         1.357E-02   AT NODE         59   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.088E-03   AT NODE        650   DOF  2
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF DISP.    CORRECTION    2.396E-06
 FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                     1.096E-02   TIME AVG. MOMENT      7.340E-03
 LARGEST RESIDUAL MOMENT           -4.433E-05   AT NODE       4378   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION      4.426E-03   AT NODE       4408   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -4.303E-04   AT NODE       4408   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       2.18       TIME AVG. FORCE        1.93    
 LARGEST RESIDUAL FORCE            -1.160E-06   AT NODE       4395   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.         1.357E-02   AT NODE         59   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        3.286E-05   AT NODE        705   DOF  3
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     1.096E-02   TIME AVG. MOMENT      7.340E-03
 LARGEST RESIDUAL MOMENT           -2.039E-06   AT NODE       2464   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION      4.418E-03   AT NODE       4408   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -8.294E-06   AT NODE       4408   DOF  4
   INSTANCE: SHELL-1                                                                         
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED

 ITERATION SUMMARY FOR THE INCREMENT:   3 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  3 ARE EQUILIBRIUM ITERATIONS.


                                INCREMENT    43 SUMMARY


     CURRENT LOAD PROPORTIONALITY FACTOR          1.164    
     TOTAL ARC LENGTH    3.00    , INCREMENT OF ARC LENGTH   0.100    


  INCREMENT    44 STARTS. ATTEMPT NUMBER  1

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          1

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       2.19       TIME AVG. FORCE        1.94    
 LARGEST RESIDUAL FORCE             2.201E-02   AT NODE        749   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -1.371E-02   AT NODE        275   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -1.371E-02   AT NODE        275   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     1.129E-02   TIME AVG. MOMENT      7.429E-03
 LARGEST RESIDUAL MOMENT            6.573E-04   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF ROTATION      4.011E-03   AT NODE       4408   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     4.011E-03   AT NODE       4408   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       2.19       TIME AVG. FORCE        1.94    
 LARGEST RESIDUAL FORCE            -3.289E-05   AT NODE        531   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -1.382E-02   AT NODE        275   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        6.981E-04   AT NODE        650   DOF  2
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF DISP.    CORRECTION   -1.043E-06
 FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                     1.128E-02   TIME AVG. MOMENT      7.429E-03
 LARGEST RESIDUAL MOMENT           -4.121E-05   AT NODE       1579   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION      3.696E-03   AT NODE       4408   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -3.150E-04   AT NODE       4408   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       2.19       TIME AVG. FORCE        1.94    
 LARGEST RESIDUAL FORCE            -8.610E-07   AT NODE       4395   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -1.383E-02   AT NODE        275   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -1.907E-05   AT NODE        783   DOF  3
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     1.128E-02   TIME AVG. MOMENT      7.429E-03
 LARGEST RESIDUAL MOMENT           -2.051E-06   AT NODE       2464   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION      3.691E-03   AT NODE       4408   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     5.085E-06   AT NODE       4394   DOF  4
   INSTANCE: SHELL-1                                                                         
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED

 ITERATION SUMMARY FOR THE INCREMENT:   3 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  3 ARE EQUILIBRIUM ITERATIONS.


                                INCREMENT    44 SUMMARY


     CURRENT LOAD PROPORTIONALITY FACTOR          1.168    
     TOTAL ARC LENGTH    3.10    , INCREMENT OF ARC LENGTH   0.100    


  INCREMENT    45 STARTS. ATTEMPT NUMBER  1

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       2.19       TIME AVG. FORCE        1.94    
 LARGEST RESIDUAL FORCE             2.230E-02   AT NODE        749   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.         1.393E-02   AT NODE         59   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.393E-02   AT NODE         59   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     1.158E-02   TIME AVG. MOMENT      7.521E-03
 LARGEST RESIDUAL MOMENT            6.513E-04   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF ROTATION      3.382E-03   AT NODE       4408   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     3.382E-03   AT NODE       4408   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       2.19       TIME AVG. FORCE        1.94    
 LARGEST RESIDUAL FORCE            -2.812E-05   AT NODE        531   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.         1.402E-02   AT NODE         59   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        6.676E-04   AT NODE        265   DOF  2
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF DISP.    CORRECTION   -8.416E-07
 FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                     1.158E-02   TIME AVG. MOMENT      7.521E-03
 LARGEST RESIDUAL MOMENT           -4.196E-05   AT NODE       1579   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION      3.130E-03   AT NODE       4408   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -2.526E-04   AT NODE       4408   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       2.19       TIME AVG. FORCE        1.94    
 LARGEST RESIDUAL FORCE            -7.362E-07   AT NODE       1594   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.         1.403E-02   AT NODE         59   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -3.384E-05   AT NODE        736   DOF  3
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     1.158E-02   TIME AVG. MOMENT      7.521E-03
 LARGEST RESIDUAL MOMENT           -2.209E-06   AT NODE       2464   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION      3.125E-03   AT NODE       4408   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     6.208E-06   AT NODE        736   DOF  4
   INSTANCE: SHELL-1                                                                         
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED

 ITERATION SUMMARY FOR THE INCREMENT:   3 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  3 ARE EQUILIBRIUM ITERATIONS.


                                INCREMENT    45 SUMMARY


     CURRENT LOAD PROPORTIONALITY FACTOR          1.172    
     TOTAL ARC LENGTH    3.20    , INCREMENT OF ARC LENGTH   0.100    


  INCREMENT    46 STARTS. ATTEMPT NUMBER  1

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          1

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       2.20       TIME AVG. FORCE        1.95    
 LARGEST RESIDUAL FORCE             2.279E-02   AT NODE        749   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.         1.409E-02   AT NODE         59   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.409E-02   AT NODE         59   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     1.186E-02   TIME AVG. MOMENT      7.616E-03
 LARGEST RESIDUAL MOMENT            6.259E-04   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF ROTATION      2.893E-03   AT NODE       1594   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     2.893E-03   AT NODE       1594   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       2.20       TIME AVG. FORCE        1.95    
 LARGEST RESIDUAL FORCE            -4.254E-05   AT NODE        851   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.         1.429E-02   AT NODE        754   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.081E-03   AT NODE        262   DOF  2
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF DISP.    CORRECTION   -2.018E-06
 FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                     1.185E-02   TIME AVG. MOMENT      7.615E-03
 LARGEST RESIDUAL MOMENT           -4.626E-05   AT NODE       1579   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION      3.192E-03   AT NODE       1594   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     2.990E-04   AT NODE       1594   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       2.20       TIME AVG. FORCE        1.95    
 LARGEST RESIDUAL FORCE             1.754E-06   AT NODE       1580   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.         1.433E-02   AT NODE        754   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -6.045E-05   AT NODE        736   DOF  3
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     1.185E-02   TIME AVG. MOMENT      7.615E-03
 LARGEST RESIDUAL MOMENT            3.518E-06   AT NODE       1565   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION      3.201E-03   AT NODE       1594   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.104E-05   AT NODE        736   DOF  4
   INSTANCE: SHELL-1                                                                         
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED

 ITERATION SUMMARY FOR THE INCREMENT:   3 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  3 ARE EQUILIBRIUM ITERATIONS.


                                INCREMENT    46 SUMMARY


     CURRENT LOAD PROPORTIONALITY FACTOR          1.175    
     TOTAL ARC LENGTH    3.30    , INCREMENT OF ARC LENGTH   0.100    


  INCREMENT    47 STARTS. ATTEMPT NUMBER  1

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       2.20       TIME AVG. FORCE        1.95    
 LARGEST RESIDUAL FORCE            -2.392E-02   AT NODE        853   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.         1.462E-02   AT NODE        754   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.462E-02   AT NODE        754   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     1.213E-02   TIME AVG. MOMENT      7.711E-03
 LARGEST RESIDUAL MOMENT            5.746E-04   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF ROTATION      3.595E-03   AT NODE       1594   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     3.595E-03   AT NODE       1594   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       2.20       TIME AVG. FORCE        1.95    
 LARGEST RESIDUAL FORCE             1.324E-04   AT NODE        262   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.         1.497E-02   AT NODE        754   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        2.126E-03   AT NODE        262   DOF  2
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF DISP.    CORRECTION   -1.177E-05
 FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                     1.212E-02   TIME AVG. MOMENT      7.711E-03
 LARGEST RESIDUAL MOMENT           -5.478E-05   AT NODE       1579   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION      4.195E-03   AT NODE       1594   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     6.002E-04   AT NODE       1594   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       2.20       TIME AVG. FORCE        1.95    
 LARGEST RESIDUAL FORCE             4.890E-06   AT NODE       1580   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.         1.504E-02   AT NODE        754   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -1.735E-04   AT NODE         46   DOF  2
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF DISP.    CORRECTION   -6.406E-06
 FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                     1.212E-02   TIME AVG. MOMENT      7.711E-03
 LARGEST RESIDUAL MOMENT           -7.967E-06   AT NODE       1579   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION      4.239E-03   AT NODE       1594   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -4.353E-05   AT NODE       1580   DOF  4
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF ROTATION CORRECTION   -6.330E-06
 MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 ITERATION SUMMARY FOR THE INCREMENT:   3 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  3 ARE EQUILIBRIUM ITERATIONS.


                                INCREMENT    47 SUMMARY


     CURRENT LOAD PROPORTIONALITY FACTOR          1.178    
     TOTAL ARC LENGTH    3.40    , INCREMENT OF ARC LENGTH   0.100    


  INCREMENT    48 STARTS. ATTEMPT NUMBER  1

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          1

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       2.20       TIME AVG. FORCE        1.96    
 LARGEST RESIDUAL FORCE             2.614E-02   AT NODE        734   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.         1.674E-02   AT NODE        262   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.674E-02   AT NODE        262   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     1.237E-02   TIME AVG. MOMENT      7.808E-03
 LARGEST RESIDUAL MOMENT            5.424E-04   AT NODE        375   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION      5.127E-03   AT NODE       1594   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     5.127E-03   AT NODE       1594   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       2.20       TIME AVG. FORCE        1.96    
 LARGEST RESIDUAL FORCE             1.391E-03   AT NODE        262   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.         2.334E-02   AT NODE        262   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        6.603E-03   AT NODE        262   DOF  2
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     1.236E-02   TIME AVG. MOMENT      7.808E-03
 LARGEST RESIDUAL MOMENT            8.301E-05   AT NODE       1579   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION      7.031E-03   AT NODE       1594   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.904E-03   AT NODE       1594   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: THE SYSTEM MATRIX HAS 1 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       2.20       TIME AVG. FORCE        1.96    
 LARGEST RESIDUAL FORCE             2.372E-04   AT NODE        262   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.         2.596E-02   AT NODE        262   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        2.623E-03   AT NODE        262   DOF  2
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     1.236E-02   TIME AVG. MOMENT      7.808E-03
 LARGEST RESIDUAL MOMENT            3.209E-05   AT NODE       1579   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION      7.749E-03   AT NODE       1594   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     7.182E-04   AT NODE       1594   DOF  4
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: THE SYSTEM MATRIX HAS 2 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     4


 AVERAGE FORCE                       2.20       TIME AVG. FORCE        1.96    
 LARGEST RESIDUAL FORCE            -1.237E-04   AT NODE        647   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -2.680E-02   AT NODE        647   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -1.829E-03   AT NODE        647   DOF  2
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     1.236E-02   TIME AVG. MOMENT      7.808E-03
 LARGEST RESIDUAL MOMENT           -2.551E-05   AT NODE       1579   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION      7.981E-03   AT NODE       4363   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     5.092E-04   AT NODE       4363   DOF  4
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: THE SYSTEM MATRIX HAS 2 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     5


 AVERAGE FORCE                       2.20       TIME AVG. FORCE        1.96    
 LARGEST RESIDUAL FORCE            -2.102E-04   AT NODE        970   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -2.689E-02   AT NODE        647   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -2.446E-03   AT NODE        262   DOF  2
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     1.235E-02   TIME AVG. MOMENT      7.808E-03
 LARGEST RESIDUAL MOMENT           -2.651E-05   AT NODE       1579   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION      7.988E-03   AT NODE       4363   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -6.985E-04   AT NODE       1594   DOF  4
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          1
 

 ***WARNING: THE SYSTEM MATRIX HAS 1 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     6


 AVERAGE FORCE                       2.20       TIME AVG. FORCE        1.96    
 LARGEST RESIDUAL FORCE             4.139E-05   AT NODE       4973   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -2.798E-02   AT NODE        647   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -1.085E-03   AT NODE        647   DOF  2
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     1.235E-02   TIME AVG. MOMENT      7.808E-03
 LARGEST RESIDUAL MOMENT            1.431E-05   AT NODE       1579   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION      8.299E-03   AT NODE       4363   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     3.109E-04   AT NODE       4363   DOF  4
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: THE SYSTEM MATRIX HAS 1 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     7


 AVERAGE FORCE                       2.20       TIME AVG. FORCE        1.96    
 LARGEST RESIDUAL FORCE             5.884E-06   AT NODE       4363   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -2.792E-02   AT NODE        647   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -5.867E-05   AT NODE        262   DOF  2
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     1.235E-02   TIME AVG. MOMENT      7.808E-03
 LARGEST RESIDUAL MOMENT           -7.633E-06   AT NODE       4378   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION      8.284E-03   AT NODE       4363   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -1.727E-05   AT NODE       1594   DOF  4
   INSTANCE: SHELL-1                                                                         
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED

 ITERATION SUMMARY FOR THE INCREMENT:   7 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  7 ARE EQUILIBRIUM ITERATIONS.


                                INCREMENT    48 SUMMARY


     CURRENT LOAD PROPORTIONALITY FACTOR          1.179    
     TOTAL ARC LENGTH    3.50    , INCREMENT OF ARC LENGTH   0.100    


  INCREMENT    49 STARTS. ATTEMPT NUMBER  1

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          1
 

 ***WARNING: THE SYSTEM MATRIX HAS 1 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       2.20       TIME AVG. FORCE        1.96    
 LARGEST RESIDUAL FORCE             5.047E-02   AT NODE        262   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.         3.788E-02   AT NODE        262   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        3.788E-02   AT NODE        262   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     1.242E-02   TIME AVG. MOMENT      7.902E-03
 LARGEST RESIDUAL MOMENT           -1.542E-03   AT NODE       1609   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION      1.066E-02   AT NODE       1594   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.066E-02   AT NODE       1594   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: THE SYSTEM MATRIX HAS 2 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       2.20       TIME AVG. FORCE        1.96    
 LARGEST RESIDUAL FORCE            -4.349E-02   AT NODE        838   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -5.541E-02   AT NODE         49   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        2.115E-02   AT NODE        275   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     1.208E-02   TIME AVG. MOMENT      7.895E-03
 LARGEST RESIDUAL MOMENT            1.828E-03   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF ROTATION     -1.428E-02   AT NODE       1580   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     7.406E-03   AT NODE       3434   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          1
 

 ***WARNING: THE SYSTEM MATRIX HAS 2 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       2.20       TIME AVG. FORCE        1.96    
 LARGEST RESIDUAL FORCE            -1.011E-03   AT NODE       1565   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -5.269E-02   AT NODE         49   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        4.577E-03   AT NODE         46   DOF  2
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF DISP.    CORRECTION    1.064E-04
 FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                     1.206E-02   TIME AVG. MOMENT      7.895E-03
 LARGEST RESIDUAL MOMENT           -2.068E-04   AT NODE       2509   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION     -1.305E-02   AT NODE       1625   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.546E-03   AT NODE       1580   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: THE SYSTEM MATRIX HAS 2 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     4


 AVERAGE FORCE                       2.20       TIME AVG. FORCE        1.96    
 LARGEST RESIDUAL FORCE            -4.507E-05   AT NODE       1580   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -5.259E-02   AT NODE         49   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        5.031E-04   AT NODE        469   DOF  2
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     1.206E-02   TIME AVG. MOMENT      7.895E-03
 LARGEST RESIDUAL MOMENT           -4.272E-05   AT NODE       1565   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION     -1.301E-02   AT NODE       1625   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -1.798E-04   AT NODE       3434   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: THE SYSTEM MATRIX HAS 2 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     5


 AVERAGE FORCE                       2.20       TIME AVG. FORCE        1.96    
 LARGEST RESIDUAL FORCE             1.165E-06   AT NODE       2509   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -5.258E-02   AT NODE         49   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.232E-05   AT NODE         49   DOF  2
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     1.206E-02   TIME AVG. MOMENT      7.895E-03
 LARGEST RESIDUAL MOMENT            1.978E-06   AT NODE       2494   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION     -1.301E-02   AT NODE       1625   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     4.005E-06   AT NODE       1625   DOF  4
   INSTANCE: SHELL-1                                                                         
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED

 ITERATION SUMMARY FOR THE INCREMENT:   5 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  5 ARE EQUILIBRIUM ITERATIONS.


                                INCREMENT    49 SUMMARY


     CURRENT LOAD PROPORTIONALITY FACTOR          1.175    
     TOTAL ARC LENGTH    3.60    , INCREMENT OF ARC LENGTH   0.100    


  INCREMENT    50 STARTS. ATTEMPT NUMBER  1

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: THE SYSTEM MATRIX HAS 2 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       2.20       TIME AVG. FORCE        1.97    
 LARGEST RESIDUAL FORCE             2.465E-02   AT NODE        749   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.         2.173E-02   AT NODE        265   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        2.173E-02   AT NODE        265   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     1.185E-02   TIME AVG. MOMENT      7.974E-03
 LARGEST RESIDUAL MOMENT           -4.743E-04   AT NODE        165   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION      5.237E-03   AT NODE       1639   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     5.237E-03   AT NODE       1639   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          1
 

 ***WARNING: THE SYSTEM MATRIX HAS 2 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       2.20       TIME AVG. FORCE        1.97    
 LARGEST RESIDUAL FORCE            -1.455E-04   AT NODE         45   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.         2.088E-02   AT NODE        265   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -1.644E-03   AT NODE        262   DOF  2
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF DISP.    CORRECTION    9.701E-06
 FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                     1.184E-02   TIME AVG. MOMENT      7.973E-03
 LARGEST RESIDUAL MOMENT           -5.519E-05   AT NODE       4363   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION      5.052E-03   AT NODE       1639   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -5.169E-04   AT NODE       1594   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: THE SYSTEM MATRIX HAS 2 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       2.20       TIME AVG. FORCE        1.97    
 LARGEST RESIDUAL FORCE            -4.540E-06   AT NODE       1580   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.         2.096E-02   AT NODE        265   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -1.099E-04   AT NODE        647   DOF  2
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     1.184E-02   TIME AVG. MOMENT      7.973E-03
 LARGEST RESIDUAL MOMENT           -5.482E-06   AT NODE       1564   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION      5.080E-03   AT NODE       1639   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     3.124E-05   AT NODE       1594   DOF  4
   INSTANCE: SHELL-1                                                                         
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED

 ITERATION SUMMARY FOR THE INCREMENT:   3 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  3 ARE EQUILIBRIUM ITERATIONS.


                                INCREMENT    50 SUMMARY


     CURRENT LOAD PROPORTIONALITY FACTOR          1.171    
     TOTAL ARC LENGTH    3.70    , INCREMENT OF ARC LENGTH   0.100    


  INCREMENT    51 STARTS. ATTEMPT NUMBER  1

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          1
 

 ***WARNING: THE SYSTEM MATRIX HAS 2 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       2.20       TIME AVG. FORCE        1.97    
 LARGEST RESIDUAL FORCE             2.378E-02   AT NODE        749   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.         2.038E-02   AT NODE        265   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        2.038E-02   AT NODE        265   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     1.161E-02   TIME AVG. MOMENT      8.045E-03
 LARGEST RESIDUAL MOMENT            5.092E-04   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF ROTATION      4.985E-03   AT NODE       1639   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     4.985E-03   AT NODE       1639   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: THE SYSTEM MATRIX HAS 2 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       2.20       TIME AVG. FORCE        1.97    
 LARGEST RESIDUAL FORCE            -9.164E-05   AT NODE         45   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.         2.042E-02   AT NODE        265   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -1.286E-03   AT NODE        262   DOF  2
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF DISP.    CORRECTION    4.956E-06
 FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                     1.160E-02   TIME AVG. MOMENT      8.044E-03
 LARGEST RESIDUAL MOMENT           -4.763E-05   AT NODE       1624   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION      5.092E-03   AT NODE       1639   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -4.469E-04   AT NODE       1594   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: THE SYSTEM MATRIX HAS 2 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       2.20       TIME AVG. FORCE        1.97    
 LARGEST RESIDUAL FORCE            -3.130E-06   AT NODE       1579   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.         2.047E-02   AT NODE        265   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -5.577E-05   AT NODE         49   DOF  2
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     1.160E-02   TIME AVG. MOMENT      8.044E-03
 LARGEST RESIDUAL MOMENT            4.949E-06   AT NODE       1595   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION      5.113E-03   AT NODE       1639   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -2.110E-05   AT NODE       1625   DOF  4
   INSTANCE: SHELL-1                                                                         
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED

 ITERATION SUMMARY FOR THE INCREMENT:   3 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  3 ARE EQUILIBRIUM ITERATIONS.


                                INCREMENT    51 SUMMARY


     CURRENT LOAD PROPORTIONALITY FACTOR          1.167    
     TOTAL ARC LENGTH    3.80    , INCREMENT OF ARC LENGTH   0.100    


  INCREMENT    52 STARTS. ATTEMPT NUMBER  1

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: THE SYSTEM MATRIX HAS 2 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       2.19       TIME AVG. FORCE        1.98    
 LARGEST RESIDUAL FORCE             2.328E-02   AT NODE        749   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.         2.081E-02   AT NODE        265   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        2.081E-02   AT NODE        265   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     1.136E-02   TIME AVG. MOMENT      8.108E-03
 LARGEST RESIDUAL MOMENT            5.232E-04   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF ROTATION      5.338E-03   AT NODE       1639   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     5.338E-03   AT NODE       1639   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          1
 

 ***WARNING: THE SYSTEM MATRIX HAS 2 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       2.19       TIME AVG. FORCE        1.98    
 LARGEST RESIDUAL FORCE             3.394E-04   AT NODE        264   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.         2.181E-02   AT NODE        265   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -1.920E-03   AT NODE        262   DOF  2
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF DISP.    CORRECTION   -2.799E-05
 FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                     1.135E-02   TIME AVG. MOMENT      8.108E-03
 LARGEST RESIDUAL MOMENT           -7.093E-05   AT NODE       1624   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION      5.828E-03   AT NODE       1639   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -7.292E-04   AT NODE       1594   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: THE SYSTEM MATRIX HAS 2 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       2.19       TIME AVG. FORCE        1.98    
 LARGEST RESIDUAL FORCE             4.666E-06   AT NODE       1565   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.         2.188E-02   AT NODE        265   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.565E-04   AT NODE         46   DOF  2
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     1.135E-02   TIME AVG. MOMENT      8.108E-03
 LARGEST RESIDUAL MOMENT            1.274E-05   AT NODE       1595   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION      5.863E-03   AT NODE       1639   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     6.067E-05   AT NODE       1580   DOF  4
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF ROTATION CORRECTION   -1.090E-05
 MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 ITERATION SUMMARY FOR THE INCREMENT:   3 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  3 ARE EQUILIBRIUM ITERATIONS.


                                INCREMENT    52 SUMMARY


     CURRENT LOAD PROPORTIONALITY FACTOR          1.162    
     TOTAL ARC LENGTH    3.90    , INCREMENT OF ARC LENGTH   0.100    


  INCREMENT    53 STARTS. ATTEMPT NUMBER  1

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          1
 

 ***WARNING: THE SYSTEM MATRIX HAS 2 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       2.19       TIME AVG. FORCE        1.98    
 LARGEST RESIDUAL FORCE            -2.369E-02   AT NODE        838   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.         2.339E-02   AT NODE        265   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        2.339E-02   AT NODE        265   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     1.110E-02   TIME AVG. MOMENT      8.165E-03
 LARGEST RESIDUAL MOMENT            4.998E-04   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF ROTATION      6.595E-03   AT NODE       1639   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     6.595E-03   AT NODE       1639   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: THE SYSTEM MATRIX HAS 2 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       2.19       TIME AVG. FORCE        1.98    
 LARGEST RESIDUAL FORCE             1.278E-03   AT NODE        264   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -2.535E-02   AT NODE         49   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        3.745E-03   AT NODE         46   DOF  2
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF DISP.    CORRECTION   -2.020E-04
 FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                     1.110E-02   TIME AVG. MOMENT      8.164E-03
 LARGEST RESIDUAL MOMENT            1.313E-04   AT NODE       1610   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION      7.549E-03   AT NODE       1639   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.425E-03   AT NODE       1580   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =  0.10000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.40000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: THE SYSTEM MATRIX HAS 2 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       2.19       TIME AVG. FORCE        1.98    
 LARGEST RESIDUAL FORCE             1.188E-05   AT NODE       1610   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -2.532E-02   AT NODE         49   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -3.817E-04   AT NODE        262   DOF  2
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF DISP.    CORRECTION   -3.549E-06
 FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                     1.110E-02   TIME AVG. MOMENT      8.164E-03
 LARGEST RESIDUAL MOMENT            3.237E-05   AT NODE       1610   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION      7.563E-03   AT NODE       1639   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -1.348E-04   AT NODE       1594   DOF  4
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF ROTATION CORRECTION   -3.325E-05
 MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 ITERATION SUMMARY FOR THE INCREMENT:   3 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  3 ARE EQUILIBRIUM ITERATIONS.


                                INCREMENT    53 SUMMARY


     CURRENT LOAD PROPORTIONALITY FACTOR          1.158    
     TOTAL ARC LENGTH    4.00    , INCREMENT OF ARC LENGTH   0.100    


  INCREMENT    54 STARTS. ATTEMPT NUMBER  1

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: THE SYSTEM MATRIX HAS 2 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       2.18       TIME AVG. FORCE        1.98    
 LARGEST RESIDUAL FORCE            -3.152E-02   AT NODE         47   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -2.687E-02   AT NODE         49   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -2.687E-02   AT NODE         49   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     1.084E-02   TIME AVG. MOMENT      8.214E-03
 LARGEST RESIDUAL MOMENT           -4.768E-04   AT NODE         48   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION     -8.422E-03   AT NODE       1625   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -8.422E-03   AT NODE       1625   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          1
 

 ***WARNING: THE SYSTEM MATRIX HAS 2 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       2.18       TIME AVG. FORCE        1.98    
 LARGEST RESIDUAL FORCE            -1.612E-04   AT NODE       1565   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -2.660E-02   AT NODE         49   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.913E-03   AT NODE         46   DOF  2
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF DISP.    CORRECTION    9.785E-06
 FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                     1.082E-02   TIME AVG. MOMENT      8.214E-03
 LARGEST RESIDUAL MOMENT            1.300E-04   AT NODE       1610   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION     -8.459E-03   AT NODE       1625   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     6.104E-04   AT NODE       1580   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: THE SYSTEM MATRIX HAS 2 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       2.19       TIME AVG. FORCE        1.98    
 LARGEST RESIDUAL FORCE            -6.079E-06   AT NODE       1595   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -2.660E-02   AT NODE         49   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        9.101E-05   AT NODE         46   DOF  2
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     1.082E-02   TIME AVG. MOMENT      8.214E-03
 LARGEST RESIDUAL MOMENT            1.405E-05   AT NODE       1610   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION     -8.464E-03   AT NODE       1625   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     2.992E-05   AT NODE       1580   DOF  4
   INSTANCE: SHELL-1                                                                         
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED

 ITERATION SUMMARY FOR THE INCREMENT:   3 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  3 ARE EQUILIBRIUM ITERATIONS.


                                INCREMENT    54 SUMMARY


     CURRENT LOAD PROPORTIONALITY FACTOR          1.154    
     TOTAL ARC LENGTH    4.10    , INCREMENT OF ARC LENGTH   0.100    


  INCREMENT    55 STARTS. ATTEMPT NUMBER  1

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          1
 

 ***WARNING: THE SYSTEM MATRIX HAS 2 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       2.18       TIME AVG. FORCE        1.99    
 LARGEST RESIDUAL FORCE            -3.428E-02   AT NODE         47   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -2.596E-02   AT NODE         49   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -2.596E-02   AT NODE         49   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     1.053E-02   TIME AVG. MOMENT      8.256E-03
 LARGEST RESIDUAL MOMENT           -4.590E-04   AT NODE         48   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION     -8.322E-03   AT NODE       1625   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -8.322E-03   AT NODE       1625   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: THE SYSTEM MATRIX HAS 2 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       2.18       TIME AVG. FORCE        1.99    
 LARGEST RESIDUAL FORCE             3.924E-04   AT NODE       2465   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -2.511E-02   AT NODE         49   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        2.967E-03   AT NODE        104   DOF  2
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF DISP.    CORRECTION   -3.395E-05
 FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                     1.051E-02   TIME AVG. MOMENT      8.255E-03
 LARGEST RESIDUAL MOMENT            9.798E-05   AT NODE       1610   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION     -8.033E-03   AT NODE       1625   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.096E-03   AT NODE       2450   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          1
 

 ***WARNING: THE SYSTEM MATRIX HAS 2 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       2.18       TIME AVG. FORCE        1.99    
 LARGEST RESIDUAL FORCE            -4.647E-06   AT NODE        804   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -2.501E-02   AT NODE         49   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        2.626E-04   AT NODE        104   DOF  2
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF DISP.    CORRECTION   -3.111E-06
 FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                     1.051E-02   TIME AVG. MOMENT      8.255E-03
 LARGEST RESIDUAL MOMENT            4.251E-06   AT NODE       2480   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION     -7.987E-03   AT NODE       1625   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     9.191E-05   AT NODE       2450   DOF  4
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF ROTATION CORRECTION    3.987E-06
 MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 ITERATION SUMMARY FOR THE INCREMENT:   3 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  3 ARE EQUILIBRIUM ITERATIONS.


                                INCREMENT    55 SUMMARY


     CURRENT LOAD PROPORTIONALITY FACTOR          1.151    
     TOTAL ARC LENGTH    4.20    , INCREMENT OF ARC LENGTH   0.100    


  INCREMENT    56 STARTS. ATTEMPT NUMBER  1

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: THE SYSTEM MATRIX HAS 2 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       2.18       TIME AVG. FORCE        1.99    
 LARGEST RESIDUAL FORCE            -3.006E-02   AT NODE       2435   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.         2.385E-02   AT NODE        104   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        2.385E-02   AT NODE        104   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     1.020E-02   TIME AVG. MOMENT      8.290E-03
 LARGEST RESIDUAL MOMENT           -5.744E-04   AT NODE        103   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION      8.924E-03   AT NODE       2450   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     8.924E-03   AT NODE       2450   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          1
 

 ***WARNING: THE SYSTEM MATRIX HAS 2 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       2.18       TIME AVG. FORCE        1.99    
 LARGEST RESIDUAL FORCE             5.870E-03   AT NODE       2465   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.         3.532E-02   AT NODE        104   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.147E-02   AT NODE        104   DOF  2
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     1.017E-02   TIME AVG. MOMENT      8.290E-03
 LARGEST RESIDUAL MOMENT            1.332E-04   AT NODE       1610   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION      1.313E-02   AT NODE       2450   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     4.203E-03   AT NODE       2450   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: THE SYSTEM MATRIX HAS 3 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       2.18       TIME AVG. FORCE        1.99    
 LARGEST RESIDUAL FORCE            -5.352E-03   AT NODE       2435   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.         4.642E-02   AT NODE        104   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.110E-02   AT NODE        104   DOF  2
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     1.018E-02   TIME AVG. MOMENT      8.290E-03
 LARGEST RESIDUAL MOMENT           -1.125E-04   AT NODE        103   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION      1.712E-02   AT NODE       2450   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     3.994E-03   AT NODE       2450   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          1
 

 ***WARNING: THE SYSTEM MATRIX HAS 4 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     4


 AVERAGE FORCE                       2.18       TIME AVG. FORCE        1.99    
 LARGEST RESIDUAL FORCE            -3.884E-04   AT NODE         47   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -4.871E-02   AT NODE        320   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        2.907E-03   AT NODE         49   DOF  2
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF DISP.    CORRECTION    2.110E-04
 FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                     1.020E-02   TIME AVG. MOMENT      8.290E-03
 LARGEST RESIDUAL MOMENT           -2.966E-05   AT NODE       1609   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION     -1.793E-02   AT NODE       2464   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -1.013E-03   AT NODE       1639   DOF  4
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: THE SYSTEM MATRIX HAS 4 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     5


 AVERAGE FORCE                       2.18       TIME AVG. FORCE        1.99    
 LARGEST RESIDUAL FORCE             4.430E-06   AT NODE       2463   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -4.857E-02   AT NODE        320   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.386E-04   AT NODE        320   DOF  2
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     1.020E-02   TIME AVG. MOMENT      8.290E-03
 LARGEST RESIDUAL MOMENT           -8.340E-06   AT NODE       2494   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION     -1.787E-02   AT NODE       2464   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     5.221E-05   AT NODE       2464   DOF  4
   INSTANCE: SHELL-1                                                                         
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED

 ITERATION SUMMARY FOR THE INCREMENT:   5 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  5 ARE EQUILIBRIUM ITERATIONS.


                                INCREMENT    56 SUMMARY


     CURRENT LOAD PROPORTIONALITY FACTOR          1.149    
     TOTAL ARC LENGTH    4.30    , INCREMENT OF ARC LENGTH   0.100    


  INCREMENT    57 STARTS. ATTEMPT NUMBER  1

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =  0.10000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.40000    
       ELAPSED WALLCLOCK TIME (SEC) =          1
 

 ***WARNING: THE SYSTEM MATRIX HAS 4 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       2.19       TIME AVG. FORCE        1.99    
 LARGEST RESIDUAL FORCE             0.172       AT NODE       2465   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.         6.338E-02   AT NODE        104   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        6.338E-02   AT NODE        104   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     1.030E-02   TIME AVG. MOMENT      8.325E-03
 LARGEST RESIDUAL MOMENT           -3.348E-03   AT NODE        103   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION      2.290E-02   AT NODE       2450   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     2.290E-02   AT NODE       2450   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: THE SYSTEM MATRIX HAS 4 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       2.19       TIME AVG. FORCE        1.99    
 LARGEST RESIDUAL FORCE            -9.923E-02   AT NODE       2435   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.         4.299E-02   AT NODE         49   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -4.561E-02   AT NODE        104   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     1.057E-02   TIME AVG. MOMENT      8.330E-03
 LARGEST RESIDUAL MOMENT           -2.006E-03   AT NODE       2435   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION     -1.439E-02   AT NODE       1639   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -1.749E-02   AT NODE       2450   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          1
 

 ***WARNING: THE SYSTEM MATRIX HAS 4 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       2.19       TIME AVG. FORCE        1.99    
 LARGEST RESIDUAL FORCE             0.148       AT NODE       2465   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.         7.363E-02   AT NODE        104   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        5.586E-02   AT NODE        104   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     1.032E-02   TIME AVG. MOMENT      8.326E-03
 LARGEST RESIDUAL MOMENT           -3.213E-03   AT NODE        103   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION      2.691E-02   AT NODE       2450   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     2.149E-02   AT NODE       2450   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: THE SYSTEM MATRIX HAS 4 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     4


 AVERAGE FORCE                       2.19       TIME AVG. FORCE        1.99    
 LARGEST RESIDUAL FORCE             0.118       AT NODE       2465   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -4.915E-02   AT NODE        265   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -4.977E-02   AT NODE        104   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     1.062E-02   TIME AVG. MOMENT      8.331E-03
 LARGEST RESIDUAL MOMENT           -2.742E-03   AT NODE       2435   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION     -1.669E-02   AT NODE       1639   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -1.931E-02   AT NODE       2450   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: THE SYSTEM MATRIX HAS 4 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     5


 AVERAGE FORCE                       2.20       TIME AVG. FORCE        1.99    
 LARGEST RESIDUAL FORCE             0.202       AT NODE       2465   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.         8.954E-02   AT NODE        104   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        6.568E-02   AT NODE        104   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     1.038E-02   TIME AVG. MOMENT      8.327E-03
 LARGEST RESIDUAL MOMENT           -4.295E-03   AT NODE        103   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION      3.276E-02   AT NODE       2450   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     2.516E-02   AT NODE       2450   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 

 ***NOTE: THE SOLUTION APPEARS TO BE DIVERGING. CONVERGENCE IS JUDGED UNLIKELY.


  INCREMENT    57 STARTS. ATTEMPT NUMBER  2

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: THE SYSTEM MATRIX HAS 4 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       2.19       TIME AVG. FORCE        1.99    
 LARGEST RESIDUAL FORCE             1.094E-02   AT NODE       2465   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.         1.598E-02   AT NODE        104   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.598E-02   AT NODE        104   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     1.022E-02   TIME AVG. MOMENT      8.324E-03
 LARGEST RESIDUAL MOMENT           -2.378E-04   AT NODE        103   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION      5.774E-03   AT NODE       2450   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     5.774E-03   AT NODE       2450   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          1
 

 ***WARNING: THE SYSTEM MATRIX HAS 4 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       2.19       TIME AVG. FORCE        1.99    
 LARGEST RESIDUAL FORCE            -3.491E-04   AT NODE       2435   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.         1.331E-02   AT NODE        104   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -2.668E-03   AT NODE        104   DOF  2
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF DISP.    CORRECTION    8.511E-05
 FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                     1.024E-02   TIME AVG. MOMENT      8.324E-03
 LARGEST RESIDUAL MOMENT            1.230E-05   AT NODE        106   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION      4.788E-03   AT NODE       2450   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -9.857E-04   AT NODE       2450   DOF  4
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =  0.10000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: THE SYSTEM MATRIX HAS 4 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       2.19       TIME AVG. FORCE        1.99    
 LARGEST RESIDUAL FORCE             1.349E-06   AT NODE       2451   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.         1.341E-02   AT NODE        104   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.041E-04   AT NODE        104   DOF  2
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     1.024E-02   TIME AVG. MOMENT      8.324E-03
 LARGEST RESIDUAL MOMENT           -2.811E-06   AT NODE       2480   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION      4.829E-03   AT NODE       2450   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     4.030E-05   AT NODE       2450   DOF  4
   INSTANCE: SHELL-1                                                                         
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED

 ITERATION SUMMARY FOR THE INCREMENT:   3 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  3 ARE EQUILIBRIUM ITERATIONS.


                                INCREMENT    57 SUMMARY


     CURRENT LOAD PROPORTIONALITY FACTOR          1.151    
     TOTAL ARC LENGTH    4.32    , INCREMENT OF ARC LENGTH   2.500E-02


  INCREMENT    58 STARTS. ATTEMPT NUMBER  1

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          1
 

 ***WARNING: THE SYSTEM MATRIX HAS 4 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       2.19       TIME AVG. FORCE        2.00    
 LARGEST RESIDUAL FORCE             4.835E-03   AT NODE       2465   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.         1.080E-02   AT NODE        104   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.080E-02   AT NODE        104   DOF  2
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF DISP.    CORRECTION   -7.690E-05
 FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                     1.028E-02   TIME AVG. MOMENT      8.358E-03
 LARGEST RESIDUAL MOMENT            1.087E-04   AT NODE        105   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION      3.873E-03   AT NODE       2450   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     3.873E-03   AT NODE       2450   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: THE SYSTEM MATRIX HAS 4 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       2.19       TIME AVG. FORCE        2.00    
 LARGEST RESIDUAL FORCE            -6.064E-05   AT NODE       2449   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.         9.672E-03   AT NODE        104   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -1.127E-03   AT NODE        104   DOF  2
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF DISP.    CORRECTION    1.414E-05
 FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                     1.029E-02   TIME AVG. MOMENT      8.358E-03
 LARGEST RESIDUAL MOMENT           -8.172E-06   AT NODE       1535   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION      3.461E-03   AT NODE       2450   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -4.122E-04   AT NODE       2450   DOF  4
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: THE SYSTEM MATRIX HAS 4 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       2.19       TIME AVG. FORCE        2.00    
 LARGEST RESIDUAL FORCE             3.656E-07   AT NODE       2451   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.         9.698E-03   AT NODE        104   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        2.581E-05   AT NODE        104   DOF  2
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     1.029E-02   TIME AVG. MOMENT      8.358E-03
 LARGEST RESIDUAL MOMENT            7.476E-07   AT NODE       2494   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION      3.471E-03   AT NODE       2450   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     9.772E-06   AT NODE       2450   DOF  4
   INSTANCE: SHELL-1                                                                         
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED
          ARC LENGTH INCREMENT MAY NOW INCREASE TO    3.750E-02

 ITERATION SUMMARY FOR THE INCREMENT:   3 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  3 ARE EQUILIBRIUM ITERATIONS.


                                INCREMENT    58 SUMMARY


     CURRENT LOAD PROPORTIONALITY FACTOR          1.152    
     TOTAL ARC LENGTH    4.35    , INCREMENT OF ARC LENGTH   2.500E-02


  INCREMENT    59 STARTS. ATTEMPT NUMBER  1

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: THE SYSTEM MATRIX HAS 4 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       2.19       TIME AVG. FORCE        2.00    
 LARGEST RESIDUAL FORCE             7.055E-03   AT NODE       2465   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.         1.310E-02   AT NODE        104   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.310E-02   AT NODE        104   DOF  2
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF DISP.    CORRECTION   -8.784E-05
 FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                     1.037E-02   TIME AVG. MOMENT      8.392E-03
 LARGEST RESIDUAL MOMENT            1.585E-04   AT NODE        105   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION      4.678E-03   AT NODE       2450   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     4.678E-03   AT NODE       2450   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          1
 

 ***WARNING: THE SYSTEM MATRIX HAS 4 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       2.19       TIME AVG. FORCE        2.00    
 LARGEST RESIDUAL FORCE            -8.105E-05   AT NODE       2449   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.         1.179E-02   AT NODE        104   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -1.313E-03   AT NODE        104   DOF  2
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF DISP.    CORRECTION    1.508E-05
 FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                     1.037E-02   TIME AVG. MOMENT      8.392E-03
 LARGEST RESIDUAL MOMENT            1.577E-05   AT NODE       1549   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION      4.200E-03   AT NODE       2450   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -4.785E-04   AT NODE       2450   DOF  4
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: THE SYSTEM MATRIX HAS 4 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       2.19       TIME AVG. FORCE        2.00    
 LARGEST RESIDUAL FORCE             5.833E-07   AT NODE       1550   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.         1.183E-02   AT NODE        104   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -4.624E-05   AT NODE        262   DOF  2
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     1.037E-02   TIME AVG. MOMENT      8.392E-03
 LARGEST RESIDUAL MOMENT            1.157E-06   AT NODE       1624   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION      4.217E-03   AT NODE       2450   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.681E-05   AT NODE       2450   DOF  4
   INSTANCE: SHELL-1                                                                         
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED
          ARC LENGTH INCREMENT MAY NOW INCREASE TO    5.625E-02

 ITERATION SUMMARY FOR THE INCREMENT:   3 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  3 ARE EQUILIBRIUM ITERATIONS.


                                INCREMENT    59 SUMMARY


     CURRENT LOAD PROPORTIONALITY FACTOR          1.154    
     TOTAL ARC LENGTH    4.39    , INCREMENT OF ARC LENGTH   3.750E-02


  INCREMENT    60 STARTS. ATTEMPT NUMBER  1

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          1
 

 ***WARNING: THE SYSTEM MATRIX HAS 4 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       2.19       TIME AVG. FORCE        2.00    
 LARGEST RESIDUAL FORCE            -1.181E-02   AT NODE        263   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -1.728E-02   AT NODE        265   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -1.728E-02   AT NODE        265   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     1.050E-02   TIME AVG. MOMENT      8.427E-03
 LARGEST RESIDUAL MOMENT            2.553E-04   AT NODE        264   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION      5.867E-03   AT NODE       1625   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     5.867E-03   AT NODE       1625   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: THE SYSTEM MATRIX HAS 4 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       2.20       TIME AVG. FORCE        2.00    
 LARGEST RESIDUAL FORCE            -1.125E-04   AT NODE       2435   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -1.695E-02   AT NODE        265   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -1.554E-03   AT NODE        104   DOF  2
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF DISP.    CORRECTION   -1.481E-05
 FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                     1.050E-02   TIME AVG. MOMENT      8.427E-03
 LARGEST RESIDUAL MOMENT           -2.816E-05   AT NODE       1535   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION     -5.680E-03   AT NODE       1639   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -5.637E-04   AT NODE       2450   DOF  4
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: THE SYSTEM MATRIX HAS 4 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       2.20       TIME AVG. FORCE        2.00    
 LARGEST RESIDUAL FORCE             1.860E-06   AT NODE       1595   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -1.695E-02   AT NODE        265   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.093E-04   AT NODE         46   DOF  2
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     1.049E-02   TIME AVG. MOMENT      8.427E-03
 LARGEST RESIDUAL MOMENT           -4.105E-06   AT NODE       1610   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION     -5.673E-03   AT NODE       1639   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     3.850E-05   AT NODE       1580   DOF  4
   INSTANCE: SHELL-1                                                                         
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED
          ARC LENGTH INCREMENT MAY NOW INCREASE TO    8.438E-02

 ITERATION SUMMARY FOR THE INCREMENT:   3 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  3 ARE EQUILIBRIUM ITERATIONS.


                                INCREMENT    60 SUMMARY


     CURRENT LOAD PROPORTIONALITY FACTOR          1.158    
     TOTAL ARC LENGTH    4.44    , INCREMENT OF ARC LENGTH   5.625E-02


  INCREMENT    61 STARTS. ATTEMPT NUMBER  1

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =  0.10000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: THE SYSTEM MATRIX HAS 4 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       2.20       TIME AVG. FORCE        2.01    
 LARGEST RESIDUAL FORCE            -2.137E-02   AT NODE         47   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -2.496E-02   AT NODE        265   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -2.496E-02   AT NODE        265   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     1.069E-02   TIME AVG. MOMENT      8.464E-03
 LARGEST RESIDUAL MOMENT            5.101E-04   AT NODE       1624   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION     -8.229E-03   AT NODE       1639   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -8.229E-03   AT NODE       1639   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: THE SYSTEM MATRIX HAS 4 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       2.20       TIME AVG. FORCE        2.01    
 LARGEST RESIDUAL FORCE             1.781E-04   AT NODE        264   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -2.446E-02   AT NODE        265   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -1.856E-03   AT NODE        104   DOF  2
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF DISP.    CORRECTION    1.547E-05
 FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                     1.068E-02   TIME AVG. MOMENT      8.464E-03
 LARGEST RESIDUAL MOMENT           -5.221E-05   AT NODE       1595   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION     -7.888E-03   AT NODE       1639   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -6.671E-04   AT NODE       2450   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: THE SYSTEM MATRIX HAS 4 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       2.20       TIME AVG. FORCE        2.01    
 LARGEST RESIDUAL FORCE            -7.112E-06   AT NODE       1609   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -2.446E-02   AT NODE        265   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -2.674E-04   AT NODE        262   DOF  2
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF DISP.    CORRECTION    1.068E-05
 FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                     1.068E-02   TIME AVG. MOMENT      8.464E-03
 LARGEST RESIDUAL MOMENT           -1.617E-05   AT NODE       1595   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION     -7.873E-03   AT NODE       1639   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -9.305E-05   AT NODE       1594   DOF  4
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF ROTATION CORRECTION   -2.882E-05
 MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION
          ARC LENGTH INCREMENT MAY NOW INCREASE TO    0.100    

 ITERATION SUMMARY FOR THE INCREMENT:   3 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  3 ARE EQUILIBRIUM ITERATIONS.


                                INCREMENT    61 SUMMARY


     CURRENT LOAD PROPORTIONALITY FACTOR          1.163    
     TOTAL ARC LENGTH    4.53    , INCREMENT OF ARC LENGTH   8.438E-02


  INCREMENT    62 STARTS. ATTEMPT NUMBER  1

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          1
 

 ***WARNING: THE SYSTEM MATRIX HAS 4 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       2.20       TIME AVG. FORCE        2.01    
 LARGEST RESIDUAL FORCE            -2.480E-02   AT NODE        979   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -2.842E-02   AT NODE        265   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -2.842E-02   AT NODE        265   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     1.091E-02   TIME AVG. MOMENT      8.504E-03
 LARGEST RESIDUAL MOMENT            7.162E-04   AT NODE       1624   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION     -8.901E-03   AT NODE       1639   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -8.901E-03   AT NODE       1639   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: THE SYSTEM MATRIX HAS 4 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       2.21       TIME AVG. FORCE        2.01    
 LARGEST RESIDUAL FORCE             5.690E-04   AT NODE         48   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -2.801E-02   AT NODE        265   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -3.270E-03   AT NODE        262   DOF  2
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF DISP.    CORRECTION    7.501E-05
 FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                     1.089E-02   TIME AVG. MOMENT      8.503E-03
 LARGEST RESIDUAL MOMENT            1.332E-04   AT NODE       1609   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION     -8.503E-03   AT NODE       1639   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -1.117E-03   AT NODE       1594   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: THE SYSTEM MATRIX HAS 4 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       2.20       TIME AVG. FORCE        2.01    
 LARGEST RESIDUAL FORCE             7.122E-06   AT NODE       1579   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -2.812E-02   AT NODE        265   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        2.247E-04   AT NODE         46   DOF  2
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     1.089E-02   TIME AVG. MOMENT      8.503E-03
 LARGEST RESIDUAL MOMENT           -2.293E-05   AT NODE       1595   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION     -8.523E-03   AT NODE       1639   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     7.042E-05   AT NODE       1580   DOF  4
   INSTANCE: SHELL-1                                                                         
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED

 ITERATION SUMMARY FOR THE INCREMENT:   3 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  3 ARE EQUILIBRIUM ITERATIONS.


                                INCREMENT    62 SUMMARY


     CURRENT LOAD PROPORTIONALITY FACTOR          1.169    
     TOTAL ARC LENGTH    4.63    , INCREMENT OF ARC LENGTH   0.100    


  INCREMENT    63 STARTS. ATTEMPT NUMBER  1

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: THE SYSTEM MATRIX HAS 4 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       2.21       TIME AVG. FORCE        2.01    
 LARGEST RESIDUAL FORCE            -2.428E-02   AT NODE       2759   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -2.814E-02   AT NODE        265   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -2.814E-02   AT NODE        265   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     1.111E-02   TIME AVG. MOMENT      8.545E-03
 LARGEST RESIDUAL MOMENT            7.389E-04   AT NODE       1624   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION     -8.255E-03   AT NODE       1639   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -8.255E-03   AT NODE       1639   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: THE SYSTEM MATRIX HAS 4 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       2.21       TIME AVG. FORCE        2.01    
 LARGEST RESIDUAL FORCE            -7.410E-04   AT NODE       1579   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -2.978E-02   AT NODE        265   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -4.210E-03   AT NODE        262   DOF  2
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF DISP.    CORRECTION   -1.285E-04
 FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                     1.109E-02   TIME AVG. MOMENT      8.544E-03
 LARGEST RESIDUAL MOMENT            1.391E-04   AT NODE       1609   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION     -8.529E-03   AT NODE       1639   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -1.340E-03   AT NODE       1594   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: THE SYSTEM MATRIX HAS 4 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       2.21       TIME AVG. FORCE        2.01    
 LARGEST RESIDUAL FORCE             1.312E-05   AT NODE       1580   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -2.981E-02   AT NODE        265   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.265E-04   AT NODE        262   DOF  2
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     1.109E-02   TIME AVG. MOMENT      8.544E-03
 LARGEST RESIDUAL MOMENT            1.667E-05   AT NODE       1564   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION     -8.538E-03   AT NODE       1639   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     5.461E-05   AT NODE       1594   DOF  4
   INSTANCE: SHELL-1                                                                         
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED

 ITERATION SUMMARY FOR THE INCREMENT:   3 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  3 ARE EQUILIBRIUM ITERATIONS.


                                INCREMENT    63 SUMMARY


     CURRENT LOAD PROPORTIONALITY FACTOR          1.175    
     TOTAL ARC LENGTH    4.73    , INCREMENT OF ARC LENGTH   0.100    


  INCREMENT    64 STARTS. ATTEMPT NUMBER  1

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =  0.10000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.40000    
       ELAPSED WALLCLOCK TIME (SEC) =          1
 

 ***WARNING: THE SYSTEM MATRIX HAS 4 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       2.22       TIME AVG. FORCE        2.02    
 LARGEST RESIDUAL FORCE            -3.080E-02   AT NODE       2759   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -3.288E-02   AT NODE        265   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -3.288E-02   AT NODE        265   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     1.129E-02   TIME AVG. MOMENT      8.587E-03
 LARGEST RESIDUAL MOMENT            9.964E-04   AT NODE       1624   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION     -9.236E-03   AT NODE       1639   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -9.236E-03   AT NODE       1639   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: THE SYSTEM MATRIX HAS 3 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       2.22       TIME AVG. FORCE        2.02    
 LARGEST RESIDUAL FORCE            -3.468E-02   AT NODE        970   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.         6.217E-02   AT NODE         49   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        3.075E-02   AT NODE         46   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     1.119E-02   TIME AVG. MOMENT      8.586E-03
 LARGEST RESIDUAL MOMENT           -1.203E-03   AT NODE       1610   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION      1.749E-02   AT NODE       1625   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     8.877E-03   AT NODE       1580   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: THE SYSTEM MATRIX HAS 2 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       2.22       TIME AVG. FORCE        2.02    
 LARGEST RESIDUAL FORCE            -3.195E-03   AT NODE        848   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.         6.127E-02   AT NODE         49   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        5.400E-03   AT NODE        848   DOF  3
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF DISP.    CORRECTION    5.602E-04
 FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                     1.112E-02   TIME AVG. MOMENT      8.585E-03
 LARGEST RESIDUAL MOMENT            2.805E-04   AT NODE       1580   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION      1.727E-02   AT NODE       1625   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -1.571E-03   AT NODE       2450   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: THE SYSTEM MATRIX HAS 2 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     4


 AVERAGE FORCE                       2.22       TIME AVG. FORCE        2.02    
 LARGEST RESIDUAL FORCE            -1.782E-05   AT NODE       1580   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.         6.137E-02   AT NODE         49   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        3.661E-04   AT NODE        850   DOF  3
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     1.112E-02   TIME AVG. MOMENT      8.585E-03
 LARGEST RESIDUAL MOMENT            3.185E-05   AT NODE       1595   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION      1.728E-02   AT NODE       1625   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -7.012E-05   AT NODE       2464   DOF  4
   INSTANCE: SHELL-1                                                                         
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED

 ITERATION SUMMARY FOR THE INCREMENT:   4 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  4 ARE EQUILIBRIUM ITERATIONS.


                                INCREMENT    64 SUMMARY


     CURRENT LOAD PROPORTIONALITY FACTOR          1.179    
     TOTAL ARC LENGTH    4.83    , INCREMENT OF ARC LENGTH   0.100    


  INCREMENT    65 STARTS. ATTEMPT NUMBER  1

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: THE SYSTEM MATRIX HAS 2 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       2.21       TIME AVG. FORCE        2.02    
 LARGEST RESIDUAL FORCE            -4.456E-02   AT NODE        848   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -2.738E-02   AT NODE        262   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -2.738E-02   AT NODE        262   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     1.089E-02   TIME AVG. MOMENT      8.620E-03
 LARGEST RESIDUAL MOMENT           -8.767E-04   AT NODE        396   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION     -7.877E-03   AT NODE       1639   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -7.877E-03   AT NODE       1639   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: THE SYSTEM MATRIX HAS 2 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       2.21       TIME AVG. FORCE        2.02    
 LARGEST RESIDUAL FORCE             1.291E-03   AT NODE       2765   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -2.165E-02   AT NODE        262   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        6.491E-03   AT NODE        265   DOF  2
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF DISP.    CORRECTION   -1.880E-04
 FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                     1.087E-02   TIME AVG. MOMENT      8.620E-03
 LARGEST RESIDUAL MOMENT           -2.161E-04   AT NODE       1594   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION     -6.058E-03   AT NODE       1639   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.819E-03   AT NODE       1639   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: THE SYSTEM MATRIX HAS 2 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       2.21       TIME AVG. FORCE        2.02    
 LARGEST RESIDUAL FORCE             1.066E-04   AT NODE        262   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.         2.081E-02   AT NODE        848   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.883E-03   AT NODE        265   DOF  2
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF DISP.    CORRECTION    1.556E-04
 FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                     1.087E-02   TIME AVG. MOMENT      8.620E-03
 LARGEST RESIDUAL MOMENT            2.728E-05   AT NODE       1579   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION     -5.593E-03   AT NODE       1639   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     4.645E-04   AT NODE       1639   DOF  4
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: THE SYSTEM MATRIX HAS 2 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     4


 AVERAGE FORCE                       2.21       TIME AVG. FORCE        2.02    
 LARGEST RESIDUAL FORCE             4.042E-06   AT NODE       1594   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.         2.080E-02   AT NODE        848   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        3.878E-05   AT NODE        265   DOF  2
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     1.087E-02   TIME AVG. MOMENT      8.620E-03
 LARGEST RESIDUAL MOMENT            9.179E-06   AT NODE       1549   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION     -5.583E-03   AT NODE       1639   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.053E-05   AT NODE       1639   DOF  4
   INSTANCE: SHELL-1                                                                         
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED

 ITERATION SUMMARY FOR THE INCREMENT:   4 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  4 ARE EQUILIBRIUM ITERATIONS.


                                INCREMENT    65 SUMMARY


     CURRENT LOAD PROPORTIONALITY FACTOR          1.175    
     TOTAL ARC LENGTH    4.93    , INCREMENT OF ARC LENGTH   0.100    


  INCREMENT    66 STARTS. ATTEMPT NUMBER  1

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: THE SYSTEM MATRIX HAS 2 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       2.21       TIME AVG. FORCE        2.02    
 LARGEST RESIDUAL FORCE            -4.133E-02   AT NODE        848   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.         2.028E-02   AT NODE        848   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        2.028E-02   AT NODE        848   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     1.061E-02   TIME AVG. MOMENT      8.650E-03
 LARGEST RESIDUAL MOMENT           -6.693E-04   AT NODE        396   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION     -4.425E-03   AT NODE       2450   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -4.425E-03   AT NODE       2450   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: THE SYSTEM MATRIX HAS 2 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       2.21       TIME AVG. FORCE        2.02    
 LARGEST RESIDUAL FORCE             1.516E-04   AT NODE        985   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.         2.013E-02   AT NODE        848   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        2.195E-03   AT NODE        265   DOF  2
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF DISP.    CORRECTION   -8.049E-06
 FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                     1.060E-02   TIME AVG. MOMENT      8.650E-03
 LARGEST RESIDUAL MOMENT           -8.583E-05   AT NODE       1549   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION     -4.812E-03   AT NODE       2450   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     6.056E-04   AT NODE       1639   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: THE SYSTEM MATRIX HAS 2 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       2.21       TIME AVG. FORCE        2.02    
 LARGEST RESIDUAL FORCE             3.509E-06   AT NODE       1520   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.         2.004E-02   AT NODE        848   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        2.038E-04   AT NODE        265   DOF  2
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF DISP.    CORRECTION    4.719E-06
 FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                     1.060E-02   TIME AVG. MOMENT      8.650E-03
 LARGEST RESIDUAL MOMENT            1.013E-05   AT NODE       1549   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION     -4.829E-03   AT NODE       2450   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     4.694E-05   AT NODE       1639   DOF  4
   INSTANCE: SHELL-1                                                                         
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED

 ITERATION SUMMARY FOR THE INCREMENT:   3 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  3 ARE EQUILIBRIUM ITERATIONS.


                                INCREMENT    66 SUMMARY


     CURRENT LOAD PROPORTIONALITY FACTOR          1.170    
     TOTAL ARC LENGTH    5.03    , INCREMENT OF ARC LENGTH   0.100    


  INCREMENT    67 STARTS. ATTEMPT NUMBER  1

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: THE SYSTEM MATRIX HAS 2 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       2.20       TIME AVG. FORCE        2.03    
 LARGEST RESIDUAL FORCE            -3.994E-02   AT NODE        848   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.         1.986E-02   AT NODE        848   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.986E-02   AT NODE        848   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     1.033E-02   TIME AVG. MOMENT      8.675E-03
 LARGEST RESIDUAL MOMENT           -5.858E-04   AT NODE        396   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION     -5.201E-03   AT NODE       2450   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -5.201E-03   AT NODE       2450   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: THE SYSTEM MATRIX HAS 2 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       2.20       TIME AVG. FORCE        2.03    
 LARGEST RESIDUAL FORCE             6.389E-05   AT NODE         45   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.         1.988E-02   AT NODE        848   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.083E-03   AT NODE        265   DOF  2
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF DISP.    CORRECTION   -1.731E-06
 FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                     1.031E-02   TIME AVG. MOMENT      8.675E-03
 LARGEST RESIDUAL MOMENT           -6.528E-05   AT NODE       1549   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION     -5.574E-03   AT NODE       2450   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -4.377E-04   AT NODE       4408   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: THE SYSTEM MATRIX HAS 2 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       2.20       TIME AVG. FORCE        2.03    
 LARGEST RESIDUAL FORCE            -2.123E-06   AT NODE       1534   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.         1.986E-02   AT NODE        848   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        5.136E-05   AT NODE        265   DOF  2
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     1.031E-02   TIME AVG. MOMENT      8.675E-03
 LARGEST RESIDUAL MOMENT            6.127E-06   AT NODE       1549   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION     -5.570E-03   AT NODE       2450   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.287E-05   AT NODE       1639   DOF  4
   INSTANCE: SHELL-1                                                                         
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED

 ITERATION SUMMARY FOR THE INCREMENT:   3 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  3 ARE EQUILIBRIUM ITERATIONS.


                                INCREMENT    67 SUMMARY


     CURRENT LOAD PROPORTIONALITY FACTOR          1.164    
     TOTAL ARC LENGTH    5.13    , INCREMENT OF ARC LENGTH   0.100    


  INCREMENT    68 STARTS. ATTEMPT NUMBER  1

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: THE SYSTEM MATRIX HAS 2 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       2.20       TIME AVG. FORCE        2.03    
 LARGEST RESIDUAL FORCE            -3.979E-02   AT NODE        848   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.         1.991E-02   AT NODE        848   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.991E-02   AT NODE        848   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     1.003E-02   TIME AVG. MOMENT      8.694E-03
 LARGEST RESIDUAL MOMENT           -5.457E-04   AT NODE        177   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION     -5.953E-03   AT NODE       2450   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -5.953E-03   AT NODE       2450   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: THE SYSTEM MATRIX HAS 2 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       2.20       TIME AVG. FORCE        2.03    
 LARGEST RESIDUAL FORCE             1.204E-04   AT NODE       4423   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.         2.010E-02   AT NODE        739   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.643E-03   AT NODE        650   DOF  2
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF DISP.    CORRECTION   -4.971E-06
 FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                     1.002E-02   TIME AVG. MOMENT      8.694E-03
 LARGEST RESIDUAL MOMENT           -5.971E-05   AT NODE       1549   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION     -6.422E-03   AT NODE       2450   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -6.217E-04   AT NODE       4408   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: THE SYSTEM MATRIX HAS 2 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       2.20       TIME AVG. FORCE        2.03    
 LARGEST RESIDUAL FORCE             1.790E-06   AT NODE       1548   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.         2.012E-02   AT NODE        739   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        7.669E-05   AT NODE        104   DOF  2
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     1.002E-02   TIME AVG. MOMENT      8.694E-03
 LARGEST RESIDUAL MOMENT            4.389E-06   AT NODE       1549   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION     -6.392E-03   AT NODE       2450   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     2.961E-05   AT NODE       2450   DOF  4
   INSTANCE: SHELL-1                                                                         
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED

 ITERATION SUMMARY FOR THE INCREMENT:   3 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  3 ARE EQUILIBRIUM ITERATIONS.


                                INCREMENT    68 SUMMARY


     CURRENT LOAD PROPORTIONALITY FACTOR          1.159    
     TOTAL ARC LENGTH    5.23    , INCREMENT OF ARC LENGTH   0.100    


  INCREMENT    69 STARTS. ATTEMPT NUMBER  1

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: THE SYSTEM MATRIX HAS 2 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       2.20       TIME AVG. FORCE        2.03    
 LARGEST RESIDUAL FORCE             4.072E-02   AT NODE        739   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.         2.037E-02   AT NODE        739   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        2.037E-02   AT NODE        739   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     9.704E-03   TIME AVG. MOMENT      8.709E-03
 LARGEST RESIDUAL MOMENT           -5.384E-04   AT NODE        177   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION     -6.864E-03   AT NODE       2450   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -6.864E-03   AT NODE       2450   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: THE SYSTEM MATRIX HAS 2 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       2.20       TIME AVG. FORCE        2.03    
 LARGEST RESIDUAL FORCE             4.020E-04   AT NODE       4423   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.         2.166E-02   AT NODE         43   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        3.073E-03   AT NODE        650   DOF  2
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF DISP.    CORRECTION    3.034E-05
 FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                     9.691E-03   TIME AVG. MOMENT      8.709E-03
 LARGEST RESIDUAL MOMENT           -6.002E-05   AT NODE       1549   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION     -7.515E-03   AT NODE       2450   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -1.096E-03   AT NODE       4408   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: THE SYSTEM MATRIX HAS 2 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       2.20       TIME AVG. FORCE        2.03    
 LARGEST RESIDUAL FORCE            -3.021E-06   AT NODE       1144   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.         2.179E-02   AT NODE         43   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        2.659E-04   AT NODE        104   DOF  2
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF DISP.    CORRECTION   -1.998E-06
 FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                     9.689E-03   TIME AVG. MOMENT      8.709E-03
 LARGEST RESIDUAL MOMENT           -4.979E-06   AT NODE       4378   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION     -7.477E-03   AT NODE       4408   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.001E-04   AT NODE       2450   DOF  4
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF ROTATION CORRECTION    8.303E-06
 MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 ITERATION SUMMARY FOR THE INCREMENT:   3 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  3 ARE EQUILIBRIUM ITERATIONS.


                                INCREMENT    69 SUMMARY


     CURRENT LOAD PROPORTIONALITY FACTOR          1.154    
     TOTAL ARC LENGTH    5.33    , INCREMENT OF ARC LENGTH   0.100    


  INCREMENT    70 STARTS. ATTEMPT NUMBER  1

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          1
 

 ***WARNING: THE SYSTEM MATRIX HAS 2 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       2.20       TIME AVG. FORCE        2.03    
 LARGEST RESIDUAL FORCE             4.248E-02   AT NODE        739   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.         2.531E-02   AT NODE         43   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        2.531E-02   AT NODE         43   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     9.372E-03   TIME AVG. MOMENT      8.718E-03
 LARGEST RESIDUAL MOMENT           -5.699E-04   AT NODE        177   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION     -9.028E-03   AT NODE       4408   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -9.028E-03   AT NODE       4408   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: THE SYSTEM MATRIX HAS 2 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       2.20       TIME AVG. FORCE        2.03    
 LARGEST RESIDUAL FORCE             4.804E-03   AT NODE       4423   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.         3.505E-02   AT NODE        650   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.074E-02   AT NODE        650   DOF  2
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     9.345E-03   TIME AVG. MOMENT      8.718E-03
 LARGEST RESIDUAL MOMENT           -1.053E-04   AT NODE        649   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION     -1.271E-02   AT NODE       4408   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -3.680E-03   AT NODE       4408   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          1
 

 ***WARNING: THE SYSTEM MATRIX HAS 3 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       2.20       TIME AVG. FORCE        2.03    
 LARGEST RESIDUAL FORCE             8.517E-03   AT NODE       4423   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.         4.924E-02   AT NODE        650   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.419E-02   AT NODE        650   DOF  2
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     9.335E-03   TIME AVG. MOMENT      8.718E-03
 LARGEST RESIDUAL MOMENT           -1.522E-04   AT NODE        649   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION     -1.751E-02   AT NODE       4408   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -4.798E-03   AT NODE       4408   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: THE SYSTEM MATRIX HAS 4 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     4


 AVERAGE FORCE                       2.20       TIME AVG. FORCE        2.03    
 LARGEST RESIDUAL FORCE            -5.864E-03   AT NODE       1520   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -5.823E-02   AT NODE        533   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -1.123E-02   AT NODE         43   DOF  2
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     9.375E-03   TIME AVG. MOMENT      8.718E-03
 LARGEST RESIDUAL MOMENT            1.166E-04   AT NODE         44   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION      2.047E-02   AT NODE       4394   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -3.848E-03   AT NODE       1535   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: THE SYSTEM MATRIX HAS 4 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     5


 AVERAGE FORCE                       2.20       TIME AVG. FORCE        2.03    
 LARGEST RESIDUAL FORCE             4.067E-05   AT NODE       4409   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -5.735E-02   AT NODE        533   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        9.571E-04   AT NODE         43   DOF  2
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF DISP.    CORRECTION   -6.639E-06
 FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                     9.378E-03   TIME AVG. MOMENT      8.718E-03
 LARGEST RESIDUAL MOMENT            3.921E-05   AT NODE       4364   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION      2.014E-02   AT NODE       4394   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     3.371E-04   AT NODE       1535   DOF  4
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF ROTATION CORRECTION    1.134E-04
 MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 ITERATION SUMMARY FOR THE INCREMENT:   5 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  5 ARE EQUILIBRIUM ITERATIONS.


                                INCREMENT    70 SUMMARY


     CURRENT LOAD PROPORTIONALITY FACTOR          1.152    
     TOTAL ARC LENGTH    5.43    , INCREMENT OF ARC LENGTH   0.100    


  INCREMENT    71 STARTS. ATTEMPT NUMBER  1

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: THE SYSTEM MATRIX HAS 4 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       2.20       TIME AVG. FORCE        2.04    
 LARGEST RESIDUAL FORCE             0.101       AT NODE       4423   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -4.939E-02   AT NODE        650   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -4.939E-02   AT NODE        650   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     9.276E-03   TIME AVG. MOMENT      8.726E-03
 LARGEST RESIDUAL MOMENT            2.207E-03   AT NODE        651   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION      1.639E-02   AT NODE       4408   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.639E-02   AT NODE       4408   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          1
 

 ***WARNING: THE SYSTEM MATRIX HAS 2 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       2.20       TIME AVG. FORCE        2.04    
 LARGEST RESIDUAL FORCE            -8.602E-02   AT NODE       1534   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -7.968E-02   AT NODE        259   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -4.457E-02   AT NODE        259   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     9.094E-03   TIME AVG. MOMENT      8.724E-03
 LARGEST RESIDUAL MOMENT            1.632E-03   AT NODE        258   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION     -2.774E-02   AT NODE       1549   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -1.563E-02   AT NODE       1549   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: THE SYSTEM MATRIX HAS 4 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       2.20       TIME AVG. FORCE        2.04    
 LARGEST RESIDUAL FORCE            -0.437       AT NODE       1534   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -5.607E-02   AT NODE        533   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        9.911E-02   AT NODE        259   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     9.099E-03   TIME AVG. MOMENT      8.724E-03
 LARGEST RESIDUAL MOMENT           -1.080E-02   AT NODE        260   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION      2.124E-02   AT NODE       4394   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     3.638E-02   AT NODE       1549   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: THE SYSTEM MATRIX HAS 1 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     4


 AVERAGE FORCE                       2.20       TIME AVG. FORCE        2.04    
 LARGEST RESIDUAL FORCE             0.703       AT NODE       4423   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.         0.186       AT NODE        650   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        0.130       AT NODE        650   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     8.930E-03   TIME AVG. MOMENT      8.721E-03
 LARGEST RESIDUAL MOMENT           -1.694E-02   AT NODE       4393   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION     -6.981E-02   AT NODE       4408   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -4.856E-02   AT NODE       4408   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 

 ***NOTE: THE SOLUTION APPEARS TO BE DIVERGING. CONVERGENCE IS JUDGED UNLIKELY.


  INCREMENT    71 STARTS. ATTEMPT NUMBER  2

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: THE SYSTEM MATRIX HAS 4 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       2.20       TIME AVG. FORCE        2.04    
 LARGEST RESIDUAL FORCE             6.484E-03   AT NODE       4423   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -1.248E-02   AT NODE        650   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -1.248E-02   AT NODE        650   DOF  2
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     9.351E-03   TIME AVG. MOMENT      8.727E-03
 LARGEST RESIDUAL MOMENT            1.349E-04   AT NODE       4379   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION      4.144E-03   AT NODE       4408   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     4.144E-03   AT NODE       4408   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          1
 

 ***WARNING: THE SYSTEM MATRIX HAS 4 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       2.20       TIME AVG. FORCE        2.04    
 LARGEST RESIDUAL FORCE             7.539E-04   AT NODE       4423   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -1.652E-02   AT NODE        650   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -4.043E-03   AT NODE        650   DOF  2
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     9.364E-03   TIME AVG. MOMENT      8.727E-03
 LARGEST RESIDUAL MOMENT            1.985E-05   AT NODE       4985   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION      5.567E-03   AT NODE       4408   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.424E-03   AT NODE       4408   DOF  4
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: THE SYSTEM MATRIX HAS 3 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       2.20       TIME AVG. FORCE        2.04    
 LARGEST RESIDUAL FORCE             2.679E-06   AT NODE       4395   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.         1.665E-02   AT NODE        533   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.358E-04   AT NODE        259   DOF  2
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     9.366E-03   TIME AVG. MOMENT      8.727E-03
 LARGEST RESIDUAL MOMENT            4.594E-06   AT NODE       4438   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION     -5.612E-03   AT NODE       4394   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     4.499E-05   AT NODE       1549   DOF  4
   INSTANCE: SHELL-1                                                                         
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED

 ITERATION SUMMARY FOR THE INCREMENT:   3 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  3 ARE EQUILIBRIUM ITERATIONS.


                                INCREMENT    71 SUMMARY


     CURRENT LOAD PROPORTIONALITY FACTOR          1.151    
     TOTAL ARC LENGTH    5.45    , INCREMENT OF ARC LENGTH   2.500E-02


  INCREMENT    72 STARTS. ATTEMPT NUMBER  1

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          1
 

 ***WARNING: THE SYSTEM MATRIX HAS 3 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       2.20       TIME AVG. FORCE        2.04    
 LARGEST RESIDUAL FORCE             1.993E-02   AT NODE       4423   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -2.166E-02   AT NODE        650   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -2.166E-02   AT NODE        650   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     9.401E-03   TIME AVG. MOMENT      8.737E-03
 LARGEST RESIDUAL MOMENT            3.949E-04   AT NODE        651   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION      7.414E-03   AT NODE       4408   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     7.414E-03   AT NODE       4408   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: THE SYSTEM MATRIX HAS 2 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       2.20       TIME AVG. FORCE        2.04    
 LARGEST RESIDUAL FORCE            -0.106       AT NODE       1534   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.         4.346E-02   AT NODE        259   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        4.838E-02   AT NODE        259   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     9.746E-03   TIME AVG. MOMENT      8.742E-03
 LARGEST RESIDUAL MOMENT            2.100E-03   AT NODE        258   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION     -1.479E-02   AT NODE       4394   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.630E-02   AT NODE       1549   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          1
 

 ***WARNING: THE SYSTEM MATRIX HAS 2 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       2.20       TIME AVG. FORCE        2.04    
 LARGEST RESIDUAL FORCE            -5.316E-03   AT NODE       1534   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -4.244E-02   AT NODE        650   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -1.138E-02   AT NODE        259   DOF  2
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     9.732E-03   TIME AVG. MOMENT      8.741E-03
 LARGEST RESIDUAL MOMENT           -3.615E-04   AT NODE       1564   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION      1.515E-02   AT NODE       4408   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -4.030E-03   AT NODE       1549   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: THE SYSTEM MATRIX HAS 2 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     4


 AVERAGE FORCE                       2.20       TIME AVG. FORCE        2.04    
 LARGEST RESIDUAL FORCE            -8.216E-04   AT NODE       1534   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -4.324E-02   AT NODE        650   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -4.402E-03   AT NODE        259   DOF  2
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     9.723E-03   TIME AVG. MOMENT      8.741E-03
 LARGEST RESIDUAL MOMENT           -2.674E-05   AT NODE        260   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION      1.547E-02   AT NODE       4408   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -1.411E-03   AT NODE       1549   DOF  4
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF ROTATION CORRECTION   -1.044E-04
 MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: THE SYSTEM MATRIX HAS 2 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     5


 AVERAGE FORCE                       2.20       TIME AVG. FORCE        2.04    
 LARGEST RESIDUAL FORCE            -5.116E-06   AT NODE       1548   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -4.327E-02   AT NODE        650   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -2.666E-04   AT NODE        259   DOF  2
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     9.723E-03   TIME AVG. MOMENT      8.741E-03
 LARGEST RESIDUAL MOMENT            1.085E-05   AT NODE       1579   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION      1.548E-02   AT NODE       4408   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -8.954E-05   AT NODE       1549   DOF  4
   INSTANCE: SHELL-1                                                                         
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED

 ITERATION SUMMARY FOR THE INCREMENT:   5 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  5 ARE EQUILIBRIUM ITERATIONS.


                                INCREMENT    72 SUMMARY


     CURRENT LOAD PROPORTIONALITY FACTOR          1.154    
     TOTAL ARC LENGTH    5.48    , INCREMENT OF ARC LENGTH   2.500E-02


  INCREMENT    73 STARTS. ATTEMPT NUMBER  1

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: THE SYSTEM MATRIX HAS 2 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       2.20       TIME AVG. FORCE        2.04    
 LARGEST RESIDUAL FORCE            -2.480E-03   AT NODE        848   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -6.069E-03   AT NODE         43   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -6.069E-03   AT NODE         43   DOF  2
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF DISP.    CORRECTION   -8.581E-06
 FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                     9.807E-03   TIME AVG. MOMENT      8.756E-03
 LARGEST RESIDUAL MOMENT           -4.049E-05   AT NODE        970   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION      2.127E-03   AT NODE       4408   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     2.127E-03   AT NODE       4408   DOF  4
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: THE SYSTEM MATRIX HAS 2 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       2.20       TIME AVG. FORCE        2.04    
 LARGEST RESIDUAL FORCE             2.551E-06   AT NODE       4395   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -5.848E-03   AT NODE         43   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -2.651E-04   AT NODE        533   DOF  2
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF DISP.    CORRECTION    2.727E-07
 FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                     9.806E-03   TIME AVG. MOMENT      8.756E-03
 LARGEST RESIDUAL MOMENT            4.868E-06   AT NODE       1550   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION      2.036E-03   AT NODE       4408   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     9.142E-05   AT NODE       4394   DOF  4
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: THE SYSTEM MATRIX HAS 2 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       2.20       TIME AVG. FORCE        2.04    
 LARGEST RESIDUAL FORCE            -8.147E-08   AT NODE       4395   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -5.846E-03   AT NODE         43   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        3.959E-06   AT NODE        104   DOF  2
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     9.806E-03   TIME AVG. MOMENT      8.756E-03
 LARGEST RESIDUAL MOMENT            1.253E-07   AT NODE       4424   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION      2.035E-03   AT NODE       4408   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.417E-06   AT NODE       2450   DOF  4
   INSTANCE: SHELL-1                                                                         
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED

 ITERATION SUMMARY FOR THE INCREMENT:   3 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  3 ARE EQUILIBRIUM ITERATIONS.


                                INCREMENT    73 SUMMARY


     CURRENT LOAD PROPORTIONALITY FACTOR          1.155    
     TOTAL ARC LENGTH    5.50    , INCREMENT OF ARC LENGTH   2.500E-02


  INCREMENT    74 STARTS. ATTEMPT NUMBER  1

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          1
 

 ***WARNING: THE SYSTEM MATRIX HAS 2 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       2.20       TIME AVG. FORCE        2.04    
 LARGEST RESIDUAL FORCE             2.619E-03   AT NODE        739   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -5.616E-03   AT NODE         43   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -5.616E-03   AT NODE         43   DOF  2
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF DISP.    CORRECTION    2.358E-05
 FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                     9.891E-03   TIME AVG. MOMENT      8.771E-03
 LARGEST RESIDUAL MOMENT           -3.972E-05   AT NODE       2750   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION      1.935E-03   AT NODE       4408   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.935E-03   AT NODE       4408   DOF  4
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: THE SYSTEM MATRIX HAS 2 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       2.20       TIME AVG. FORCE        2.04    
 LARGEST RESIDUAL FORCE             2.168E-06   AT NODE       4395   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -5.421E-03   AT NODE         43   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        2.315E-04   AT NODE        650   DOF  2
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF DISP.    CORRECTION    1.917E-07
 FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                     9.888E-03   TIME AVG. MOMENT      8.771E-03
 LARGEST RESIDUAL MOMENT           -4.646E-06   AT NODE       1564   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION      1.854E-03   AT NODE       4408   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -8.067E-05   AT NODE       4408   DOF  4
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: THE SYSTEM MATRIX HAS 2 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       2.20       TIME AVG. FORCE        2.04    
 LARGEST RESIDUAL FORCE             6.844E-08   AT NODE       4407   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -5.420E-03   AT NODE         43   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        3.512E-06   AT NODE        104   DOF  2
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     9.888E-03   TIME AVG. MOMENT      8.771E-03
 LARGEST RESIDUAL MOMENT           -1.757E-07   AT NODE          2   DOF  6
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF ROTATION      1.854E-03   AT NODE       2450   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.256E-06   AT NODE       2450   DOF  4
   INSTANCE: SHELL-1                                                                         
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED
          ARC LENGTH INCREMENT MAY NOW INCREASE TO    3.750E-02

 ITERATION SUMMARY FOR THE INCREMENT:   3 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  3 ARE EQUILIBRIUM ITERATIONS.


                                INCREMENT    74 SUMMARY


     CURRENT LOAD PROPORTIONALITY FACTOR          1.157    
     TOTAL ARC LENGTH    5.53    , INCREMENT OF ARC LENGTH   2.500E-02


  INCREMENT    75 STARTS. ATTEMPT NUMBER  1

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: THE SYSTEM MATRIX HAS 2 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       2.21       TIME AVG. FORCE        2.04    
 LARGEST RESIDUAL FORCE             5.823E-03   AT NODE        739   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -7.837E-03   AT NODE         43   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -7.837E-03   AT NODE         43   DOF  2
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF DISP.    CORRECTION    4.679E-05
 FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                     1.001E-02   TIME AVG. MOMENT      8.788E-03
 LARGEST RESIDUAL MOMENT           -7.631E-05   AT NODE        177   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION      2.729E-03   AT NODE       2450   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     2.729E-03   AT NODE       2450   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: THE SYSTEM MATRIX HAS 2 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       2.21       TIME AVG. FORCE        2.04    
 LARGEST RESIDUAL FORCE             6.169E-06   AT NODE       4423   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -7.698E-03   AT NODE        739   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        4.076E-04   AT NODE        650   DOF  2
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF DISP.    CORRECTION    4.318E-07
 FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                     1.001E-02   TIME AVG. MOMENT      8.788E-03
 LARGEST RESIDUAL MOMENT            1.004E-05   AT NODE       1550   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION      2.652E-03   AT NODE       2450   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -1.445E-04   AT NODE       4408   DOF  4
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: THE SYSTEM MATRIX HAS 2 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       2.21       TIME AVG. FORCE        2.04    
 LARGEST RESIDUAL FORCE            -1.764E-07   AT NODE       4395   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -7.696E-03   AT NODE        739   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        7.405E-06   AT NODE        104   DOF  2
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     1.001E-02   TIME AVG. MOMENT      8.788E-03
 LARGEST RESIDUAL MOMENT           -2.488E-07   AT NODE       1519   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION      2.654E-03   AT NODE       2450   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     2.709E-06   AT NODE       2450   DOF  4
   INSTANCE: SHELL-1                                                                         
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED
          ARC LENGTH INCREMENT MAY NOW INCREASE TO    5.625E-02

 ITERATION SUMMARY FOR THE INCREMENT:   3 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  3 ARE EQUILIBRIUM ITERATIONS.


                                INCREMENT    75 SUMMARY


     CURRENT LOAD PROPORTIONALITY FACTOR          1.159    
     TOTAL ARC LENGTH    5.57    , INCREMENT OF ARC LENGTH   3.750E-02


  INCREMENT    76 STARTS. ATTEMPT NUMBER  1

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          1
 

 ***WARNING: THE SYSTEM MATRIX HAS 2 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       2.20       TIME AVG. FORCE        2.05    
 LARGEST RESIDUAL FORCE             1.290E-02   AT NODE        739   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -1.146E-02   AT NODE        739   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -1.146E-02   AT NODE        739   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     1.018E-02   TIME AVG. MOMENT      8.806E-03
 LARGEST RESIDUAL MOMENT           -1.691E-04   AT NODE        177   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION      3.868E-03   AT NODE       2450   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     3.868E-03   AT NODE       2450   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: THE SYSTEM MATRIX HAS 2 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       2.20       TIME AVG. FORCE        2.05    
 LARGEST RESIDUAL FORCE             1.860E-05   AT NODE       4409   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -1.137E-02   AT NODE        739   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        6.783E-04   AT NODE        650   DOF  2
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF DISP.    CORRECTION    9.779E-07
 FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                     1.018E-02   TIME AVG. MOMENT      8.806E-03
 LARGEST RESIDUAL MOMENT           -2.156E-05   AT NODE       1564   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION      3.709E-03   AT NODE       2450   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -2.471E-04   AT NODE       4408   DOF  4
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: THE SYSTEM MATRIX HAS 2 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       2.20       TIME AVG. FORCE        2.05    
 LARGEST RESIDUAL FORCE            -4.310E-07   AT NODE       4395   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -1.137E-02   AT NODE        739   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.781E-05   AT NODE        104   DOF  2
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     1.018E-02   TIME AVG. MOMENT      8.806E-03
 LARGEST RESIDUAL MOMENT            6.827E-07   AT NODE       1521   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION      3.715E-03   AT NODE       2450   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     6.678E-06   AT NODE       2450   DOF  4
   INSTANCE: SHELL-1                                                                         
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED
          ARC LENGTH INCREMENT MAY NOW INCREASE TO    8.438E-02

 ITERATION SUMMARY FOR THE INCREMENT:   3 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  3 ARE EQUILIBRIUM ITERATIONS.


                                INCREMENT    76 SUMMARY


     CURRENT LOAD PROPORTIONALITY FACTOR          1.162    
     TOTAL ARC LENGTH    5.62    , INCREMENT OF ARC LENGTH   5.625E-02


  INCREMENT    77 STARTS. ATTEMPT NUMBER  1

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =  0.10000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.40000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: THE SYSTEM MATRIX HAS 2 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       2.21       TIME AVG. FORCE        2.05    
 LARGEST RESIDUAL FORCE             2.854E-02   AT NODE        739   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -1.693E-02   AT NODE        739   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -1.693E-02   AT NODE        739   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     1.044E-02   TIME AVG. MOMENT      8.827E-03
 LARGEST RESIDUAL MOMENT           -3.792E-04   AT NODE        177   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION      5.346E-03   AT NODE       2450   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     5.346E-03   AT NODE       2450   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: THE SYSTEM MATRIX HAS 2 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       2.21       TIME AVG. FORCE        2.05    
 LARGEST RESIDUAL FORCE             4.931E-05   AT NODE       4409   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -1.683E-02   AT NODE        848   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.063E-03   AT NODE        650   DOF  2
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF DISP.    CORRECTION    1.836E-06
 FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                     1.043E-02   TIME AVG. MOMENT      8.827E-03
 LARGEST RESIDUAL MOMENT           -4.615E-05   AT NODE       1564   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION      5.035E-03   AT NODE       2450   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -4.058E-04   AT NODE       4408   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: THE SYSTEM MATRIX HAS 2 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       2.21       TIME AVG. FORCE        2.05    
 LARGEST RESIDUAL FORCE            -1.047E-06   AT NODE       1548   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -1.682E-02   AT NODE        848   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -4.111E-05   AT NODE        320   DOF  2
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     1.043E-02   TIME AVG. MOMENT      8.827E-03
 LARGEST RESIDUAL MOMENT            2.364E-06   AT NODE       1535   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION      5.051E-03   AT NODE       2450   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -1.588E-05   AT NODE       2464   DOF  4
   INSTANCE: SHELL-1                                                                         
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED
          ARC LENGTH INCREMENT MAY NOW INCREASE TO    0.100    

 ITERATION SUMMARY FOR THE INCREMENT:   3 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  3 ARE EQUILIBRIUM ITERATIONS.


                                INCREMENT    77 SUMMARY


     CURRENT LOAD PROPORTIONALITY FACTOR          1.167    
     TOTAL ARC LENGTH    5.71    , INCREMENT OF ARC LENGTH   8.438E-02


  INCREMENT    78 STARTS. ATTEMPT NUMBER  1

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          1
 

 ***WARNING: THE SYSTEM MATRIX HAS 2 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       2.21       TIME AVG. FORCE        2.05    
 LARGEST RESIDUAL FORCE            -3.974E-02   AT NODE        848   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -1.984E-02   AT NODE        848   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -1.984E-02   AT NODE        848   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     1.072E-02   TIME AVG. MOMENT      8.851E-03
 LARGEST RESIDUAL MOMENT           -5.518E-04   AT NODE        396   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION      5.644E-03   AT NODE       2450   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     5.644E-03   AT NODE       2450   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: THE SYSTEM MATRIX HAS 2 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       2.21       TIME AVG. FORCE        2.05    
 LARGEST RESIDUAL FORCE             6.033E-05   AT NODE         45   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -1.986E-02   AT NODE        848   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.134E-03   AT NODE        265   DOF  2
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF DISP.    CORRECTION   -1.721E-06
 FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                     1.071E-02   TIME AVG. MOMENT      8.851E-03
 LARGEST RESIDUAL MOMENT           -6.316E-05   AT NODE       1579   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION      5.275E-03   AT NODE       2450   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -4.216E-04   AT NODE       4408   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: THE SYSTEM MATRIX HAS 2 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       2.21       TIME AVG. FORCE        2.05    
 LARGEST RESIDUAL FORCE            -1.797E-06   AT NODE       1520   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -1.988E-02   AT NODE        848   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        4.643E-05   AT NODE        265   DOF  2
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     1.070E-02   TIME AVG. MOMENT      8.851E-03
 LARGEST RESIDUAL MOMENT           -5.821E-06   AT NODE       1549   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION      5.285E-03   AT NODE       2450   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.216E-05   AT NODE       1639   DOF  4
   INSTANCE: SHELL-1                                                                         
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED

 ITERATION SUMMARY FOR THE INCREMENT:   3 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  3 ARE EQUILIBRIUM ITERATIONS.


                                INCREMENT    78 SUMMARY


     CURRENT LOAD PROPORTIONALITY FACTOR          1.172    
     TOTAL ARC LENGTH    5.81    , INCREMENT OF ARC LENGTH   0.100    


  INCREMENT    79 STARTS. ATTEMPT NUMBER  1

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: THE SYSTEM MATRIX HAS 2 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       2.22       TIME AVG. FORCE        2.05    
 LARGEST RESIDUAL FORCE            -4.037E-02   AT NODE        848   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -1.996E-02   AT NODE        848   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -1.996E-02   AT NODE        848   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     1.098E-02   TIME AVG. MOMENT      8.878E-03
 LARGEST RESIDUAL MOMENT           -6.073E-04   AT NODE        396   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION      4.912E-03   AT NODE       2450   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     4.912E-03   AT NODE       2450   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: THE SYSTEM MATRIX HAS 2 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       2.22       TIME AVG. FORCE        2.05    
 LARGEST RESIDUAL FORCE             1.758E-04   AT NODE        985   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -2.019E-02   AT NODE        848   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        2.361E-03   AT NODE        265   DOF  2
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF DISP.    CORRECTION   -1.028E-05
 FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                     1.097E-02   TIME AVG. MOMENT      8.878E-03
 LARGEST RESIDUAL MOMENT           -7.217E-05   AT NODE       1579   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION      4.529E-03   AT NODE       2450   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     6.513E-04   AT NODE       1639   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: THE SYSTEM MATRIX HAS 2 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       2.22       TIME AVG. FORCE        2.05    
 LARGEST RESIDUAL FORCE             4.410E-06   AT NODE       1580   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -2.028E-02   AT NODE        848   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        2.232E-04   AT NODE        265   DOF  2
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF DISP.    CORRECTION    5.600E-06
 FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                     1.097E-02   TIME AVG. MOMENT      8.878E-03
 LARGEST RESIDUAL MOMENT            1.033E-05   AT NODE       1535   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION      4.513E-03   AT NODE       2450   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     5.415E-05   AT NODE       1639   DOF  4
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF ROTATION CORRECTION   -7.754E-06
 MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 ITERATION SUMMARY FOR THE INCREMENT:   3 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  3 ARE EQUILIBRIUM ITERATIONS.


                                INCREMENT    79 SUMMARY


     CURRENT LOAD PROPORTIONALITY FACTOR          1.176    
     TOTAL ARC LENGTH    5.91    , INCREMENT OF ARC LENGTH   0.100    


  INCREMENT    80 STARTS. ATTEMPT NUMBER  1

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          1
 

 ***WARNING: THE SYSTEM MATRIX HAS 2 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       2.22       TIME AVG. FORCE        2.06    
 LARGEST RESIDUAL FORCE            -4.241E-02   AT NODE        848   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -2.063E-02   AT NODE        848   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -2.063E-02   AT NODE        848   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     1.122E-02   TIME AVG. MOMENT      8.907E-03
 LARGEST RESIDUAL MOMENT           -7.226E-04   AT NODE        396   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION      5.090E-03   AT NODE       1594   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     5.090E-03   AT NODE       1594   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: THE SYSTEM MATRIX HAS 2 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       2.22       TIME AVG. FORCE        2.06    
 LARGEST RESIDUAL FORCE             1.976E-03   AT NODE       2765   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.         2.532E-02   AT NODE        262   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        7.974E-03   AT NODE        265   DOF  2
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     1.121E-02   TIME AVG. MOMENT      8.907E-03
 LARGEST RESIDUAL MOMENT            8.926E-05   AT NODE       1579   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION      7.270E-03   AT NODE       1639   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     2.225E-03   AT NODE       1639   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: THE SYSTEM MATRIX HAS 2 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       2.22       TIME AVG. FORCE        2.06    
 LARGEST RESIDUAL FORCE             3.652E-04   AT NODE       2765   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.         2.842E-02   AT NODE        262   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        3.611E-03   AT NODE        265   DOF  2
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     1.120E-02   TIME AVG. MOMENT      8.907E-03
 LARGEST RESIDUAL MOMENT            3.614E-05   AT NODE       1579   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION      8.229E-03   AT NODE       1639   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     9.591E-04   AT NODE       1639   DOF  4
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: THE SYSTEM MATRIX HAS 3 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     4


 AVERAGE FORCE                       2.22       TIME AVG. FORCE        2.06    
 LARGEST RESIDUAL FORCE            -1.258E-05   AT NODE       1594   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.         2.862E-02   AT NODE        262   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        2.698E-04   AT NODE        265   DOF  2
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     1.120E-02   TIME AVG. MOMENT      8.907E-03
 LARGEST RESIDUAL MOMENT           -1.907E-05   AT NODE       1579   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION      8.302E-03   AT NODE       1639   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     7.332E-05   AT NODE       1639   DOF  4
   INSTANCE: SHELL-1                                                                         
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED

 ITERATION SUMMARY FOR THE INCREMENT:   4 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  4 ARE EQUILIBRIUM ITERATIONS.


                                INCREMENT    80 SUMMARY


     CURRENT LOAD PROPORTIONALITY FACTOR          1.179    
     TOTAL ARC LENGTH    6.01    , INCREMENT OF ARC LENGTH   0.100    


  INCREMENT    81 STARTS. ATTEMPT NUMBER  1

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: THE SYSTEM MATRIX HAS 3 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       2.22       TIME AVG. FORCE        2.06    
 LARGEST RESIDUAL FORCE             8.724E-02   AT NODE       2765   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.         5.131E-02   AT NODE        265   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        5.131E-02   AT NODE        265   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     1.133E-02   TIME AVG. MOMENT      8.937E-03
 LARGEST RESIDUAL MOMENT            2.716E-03   AT NODE       1624   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION      1.451E-02   AT NODE       1639   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.451E-02   AT NODE       1639   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: THE SYSTEM MATRIX HAS 4 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       2.20       TIME AVG. FORCE        2.06    
 LARGEST RESIDUAL FORCE            -0.234       AT NODE       1610   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -0.132       AT NODE         49   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -8.107E-02   AT NODE         49   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     1.086E-02   TIME AVG. MOMENT      8.931E-03
 LARGEST RESIDUAL MOMENT           -7.026E-03   AT NODE       1610   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION     -3.793E-02   AT NODE       1625   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -2.342E-02   AT NODE       1625   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: THE SYSTEM MATRIX HAS 4 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       2.20       TIME AVG. FORCE        2.06    
 LARGEST RESIDUAL FORCE            -0.184       AT NODE       1565   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.         0.105       AT NODE        265   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        6.468E-02   AT NODE         46   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     1.055E-02   TIME AVG. MOMENT      8.927E-03
 LARGEST RESIDUAL MOMENT            9.194E-03   AT NODE       1595   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION      3.061E-02   AT NODE       1639   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     2.264E-02   AT NODE       1580   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: THE SYSTEM MATRIX HAS 4 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     4


 AVERAGE FORCE                       2.20       TIME AVG. FORCE        2.06    
 LARGEST RESIDUAL FORCE            -2.414E-02   AT NODE       1610   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -0.124       AT NODE         49   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -1.936E-02   AT NODE         49   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     1.064E-02   TIME AVG. MOMENT      8.928E-03
 LARGEST RESIDUAL MOMENT           -1.052E-03   AT NODE       1610   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION     -3.756E-02   AT NODE       1625   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -6.955E-03   AT NODE       1625   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: THE SYSTEM MATRIX HAS 4 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     5


 AVERAGE FORCE                       2.21       TIME AVG. FORCE        2.06    
 LARGEST RESIDUAL FORCE            -1.240E-02   AT NODE         47   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.         0.113       AT NODE        265   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.119E-02   AT NODE         49   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     1.062E-02   TIME AVG. MOMENT      8.928E-03
 LARGEST RESIDUAL MOMENT           -2.119E-03   AT NODE       1595   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION     -3.301E-02   AT NODE       1625   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     4.553E-03   AT NODE       1625   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          1
 

 ***WARNING: THE SYSTEM MATRIX HAS 4 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     6


 AVERAGE FORCE                       2.20       TIME AVG. FORCE        2.06    
 LARGEST RESIDUAL FORCE             1.786E-04   AT NODE         48   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -0.112       AT NODE         49   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -1.344E-03   AT NODE         46   DOF  2
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF DISP.    CORRECTION    1.936E-05
 FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                     1.062E-02   TIME AVG. MOMENT      8.928E-03
 LARGEST RESIDUAL MOMENT           -4.289E-04   AT NODE       1595   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION     -3.263E-02   AT NODE       1625   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -5.442E-04   AT NODE       1580   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: THE SYSTEM MATRIX HAS 4 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     7


 AVERAGE FORCE                       2.20       TIME AVG. FORCE        2.06    
 LARGEST RESIDUAL FORCE             2.173E-05   AT NODE       1580   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -0.112       AT NODE         49   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -8.887E-05   AT NODE         46   DOF  2
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     1.061E-02   TIME AVG. MOMENT      8.928E-03
 LARGEST RESIDUAL MOMENT           -5.107E-05   AT NODE       1595   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION     -3.261E-02   AT NODE       1625   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -3.309E-05   AT NODE       1580   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          1
 

 ***WARNING: THE SYSTEM MATRIX HAS 4 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     8


 AVERAGE FORCE                       2.20       TIME AVG. FORCE        2.06    
 LARGEST RESIDUAL FORCE             1.332E-06   AT NODE       1580   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -0.112       AT NODE         49   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        5.442E-06   AT NODE         46   DOF  2
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     1.061E-02   TIME AVG. MOMENT      8.928E-03
 LARGEST RESIDUAL MOMENT           -1.252E-06   AT NODE       1595   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION     -3.261E-02   AT NODE       1625   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     2.215E-06   AT NODE       1580   DOF  4
   INSTANCE: SHELL-1                                                                         
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED

 ITERATION SUMMARY FOR THE INCREMENT:   8 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  8 ARE EQUILIBRIUM ITERATIONS.


                                INCREMENT    81 SUMMARY


     CURRENT LOAD PROPORTIONALITY FACTOR          1.161    
     TOTAL ARC LENGTH    6.11    , INCREMENT OF ARC LENGTH   0.100    


  INCREMENT    82 STARTS. ATTEMPT NUMBER  1

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: THE SYSTEM MATRIX HAS 4 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       2.20       TIME AVG. FORCE        2.06    
 LARGEST RESIDUAL FORCE             2.416E-02   AT NODE        733   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.         2.889E-02   AT NODE        265   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        2.889E-02   AT NODE        265   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     1.040E-02   TIME AVG. MOMENT      8.946E-03
 LARGEST RESIDUAL MOMENT           -7.319E-04   AT NODE       1610   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION      9.257E-03   AT NODE       1639   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     9.257E-03   AT NODE       1639   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          1
 

 ***WARNING: THE SYSTEM MATRIX HAS 4 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       2.20       TIME AVG. FORCE        2.06    
 LARGEST RESIDUAL FORCE            -4.118E-04   AT NODE       2449   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.         2.973E-02   AT NODE        265   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -2.961E-03   AT NODE        104   DOF  2
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF DISP.    CORRECTION    5.048E-05
 FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                     1.039E-02   TIME AVG. MOMENT      8.946E-03
 LARGEST RESIDUAL MOMENT            1.125E-04   AT NODE       1610   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION     -9.758E-03   AT NODE       1625   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -1.068E-03   AT NODE       2450   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: THE SYSTEM MATRIX HAS 4 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       2.20       TIME AVG. FORCE        2.06    
 LARGEST RESIDUAL FORCE             1.138E-05   AT NODE       1609   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.         2.965E-02   AT NODE        265   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        3.855E-04   AT NODE         46   DOF  2
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF DISP.    CORRECTION   -1.066E-05
 FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                     1.039E-02   TIME AVG. MOMENT      8.946E-03
 LARGEST RESIDUAL MOMENT            2.744E-05   AT NODE       1610   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION     -9.754E-03   AT NODE       1625   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.283E-04   AT NODE       1580   DOF  4
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF ROTATION CORRECTION    3.129E-05
 MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 ITERATION SUMMARY FOR THE INCREMENT:   3 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  3 ARE EQUILIBRIUM ITERATIONS.


                                INCREMENT    82 SUMMARY


     CURRENT LOAD PROPORTIONALITY FACTOR          1.155    
     TOTAL ARC LENGTH    6.21    , INCREMENT OF ARC LENGTH   0.100    


  INCREMENT    83 STARTS. ATTEMPT NUMBER  1

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: THE SYSTEM MATRIX HAS 4 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       2.19       TIME AVG. FORCE        2.06    
 LARGEST RESIDUAL FORCE            -3.641E-02   AT NODE         47   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.         3.051E-02   AT NODE        265   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        3.051E-02   AT NODE        265   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     1.017E-02   TIME AVG. MOMENT      8.961E-03
 LARGEST RESIDUAL MOMENT            8.359E-04   AT NODE        264   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION     -1.031E-02   AT NODE       1625   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -1.031E-02   AT NODE       1625   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: THE SYSTEM MATRIX HAS 4 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       2.19       TIME AVG. FORCE        2.06    
 LARGEST RESIDUAL FORCE            -1.004E-02   AT NODE       2435   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -4.232E-02   AT NODE        104   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -1.470E-02   AT NODE        104   DOF  2
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     1.020E-02   TIME AVG. MOMENT      8.961E-03
 LARGEST RESIDUAL MOMENT           -1.964E-04   AT NODE       2435   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION     -1.521E-02   AT NODE       2450   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -5.392E-03   AT NODE       2450   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          1
 

 ***WARNING: THE SYSTEM MATRIX HAS 4 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       2.19       TIME AVG. FORCE        2.06    
 LARGEST RESIDUAL FORCE            -8.792E-05   AT NODE       1565   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -4.157E-02   AT NODE        104   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -1.517E-03   AT NODE        262   DOF  2
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF DISP.    CORRECTION   -1.329E-05
 FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                     1.020E-02   TIME AVG. MOMENT      8.961E-03
 LARGEST RESIDUAL MOMENT           -5.962E-05   AT NODE       1624   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION     -1.490E-02   AT NODE       2450   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -4.942E-04   AT NODE       1594   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: THE SYSTEM MATRIX HAS 4 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     4


 AVERAGE FORCE                       2.19       TIME AVG. FORCE        2.06    
 LARGEST RESIDUAL FORCE            -2.893E-06   AT NODE       1595   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -4.160E-02   AT NODE        104   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -5.525E-05   AT NODE        265   DOF  2
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     1.020E-02   TIME AVG. MOMENT      8.961E-03
 LARGEST RESIDUAL MOMENT           -1.135E-05   AT NODE       1579   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION     -1.491E-02   AT NODE       2450   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.911E-05   AT NODE       1625   DOF  4
   INSTANCE: SHELL-1                                                                         
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED

 ITERATION SUMMARY FOR THE INCREMENT:   4 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  4 ARE EQUILIBRIUM ITERATIONS.


                                INCREMENT    83 SUMMARY


     CURRENT LOAD PROPORTIONALITY FACTOR          1.149    
     TOTAL ARC LENGTH    6.31    , INCREMENT OF ARC LENGTH   0.100    


  INCREMENT    84 STARTS. ATTEMPT NUMBER  1

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: THE SYSTEM MATRIX HAS 4 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       2.19       TIME AVG. FORCE        2.06    
 LARGEST RESIDUAL FORCE            -0.227       AT NODE       2435   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -7.221E-02   AT NODE        104   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -7.221E-02   AT NODE        104   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     1.025E-02   TIME AVG. MOMENT      8.976E-03
 LARGEST RESIDUAL MOMENT           -5.486E-03   AT NODE        103   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION     -2.618E-02   AT NODE       2450   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -2.618E-02   AT NODE       2450   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =  0.10000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.40000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: THE SYSTEM MATRIX HAS 2 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       2.18       TIME AVG. FORCE        2.06    
 LARGEST RESIDUAL FORCE             8.517E-02   AT NODE       4409   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -7.183E-02   AT NODE         49   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -4.457E-02   AT NODE         49   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     9.909E-03   TIME AVG. MOMENT      8.972E-03
 LARGEST RESIDUAL MOMENT           -1.800E-03   AT NODE         48   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION     -2.474E-02   AT NODE       1625   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.464E-02   AT NODE       4394   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          1
 

 ***WARNING: THE SYSTEM MATRIX HAS 3 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       2.18       TIME AVG. FORCE        2.06    
 LARGEST RESIDUAL FORCE             9.273E-02   AT NODE       4409   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.         0.107       AT NODE        265   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        4.429E-02   AT NODE        533   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     1.016E-02   TIME AVG. MOMENT      8.975E-03
 LARGEST RESIDUAL MOMENT            2.593E-03   AT NODE       1624   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION      3.491E-02   AT NODE       1639   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -1.646E-02   AT NODE       4394   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: THE SYSTEM MATRIX HAS 2 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     4


 AVERAGE FORCE                       2.18       TIME AVG. FORCE        2.06    
 LARGEST RESIDUAL FORCE             7.787E-02   AT NODE         45   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -0.130       AT NODE         49   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -3.943E-02   AT NODE        259   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     1.060E-02   TIME AVG. MOMENT      8.980E-03
 LARGEST RESIDUAL MOMENT           -1.771E-03   AT NODE       1610   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION     -4.521E-02   AT NODE       1549   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -1.431E-02   AT NODE       1549   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          1
 

 ***WARNING: THE SYSTEM MATRIX HAS 2 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     5


 AVERAGE FORCE                       2.19       TIME AVG. FORCE        2.06    
 LARGEST RESIDUAL FORCE            -4.934E-02   AT NODE         44   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -0.141       AT NODE         49   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        2.183E-02   AT NODE        262   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     1.068E-02   TIME AVG. MOMENT      8.981E-03
 LARGEST RESIDUAL MOMENT           -4.209E-03   AT NODE       1565   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION      5.158E-02   AT NODE       1535   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     8.104E-03   AT NODE       1594   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: THE SYSTEM MATRIX HAS 2 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     6


 AVERAGE FORCE                       2.19       TIME AVG. FORCE        2.06    
 LARGEST RESIDUAL FORCE             0.232       AT NODE         45   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.         0.169       AT NODE         43   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        3.822E-02   AT NODE         43   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     1.072E-02   TIME AVG. MOMENT      8.982E-03
 LARGEST RESIDUAL MOMENT            7.071E-03   AT NODE       1579   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION      6.811E-02   AT NODE       1535   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.652E-02   AT NODE       1535   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 

 ***NOTE: THE SOLUTION APPEARS TO BE DIVERGING. CONVERGENCE IS JUDGED UNLIKELY.


  INCREMENT    84 STARTS. ATTEMPT NUMBER  2

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          1
 

 ***WARNING: THE SYSTEM MATRIX HAS 4 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       2.19       TIME AVG. FORCE        2.06    
 LARGEST RESIDUAL FORCE            -1.409E-02   AT NODE       2435   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -1.797E-02   AT NODE        104   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -1.797E-02   AT NODE        104   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     1.020E-02   TIME AVG. MOMENT      8.976E-03
 LARGEST RESIDUAL MOMENT           -3.044E-04   AT NODE        103   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION     -6.512E-03   AT NODE       2450   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -6.512E-03   AT NODE       2450   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =  0.10000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: THE SYSTEM MATRIX HAS 2 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       2.19       TIME AVG. FORCE        2.06    
 LARGEST RESIDUAL FORCE            -6.234E-03   AT NODE       2449   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.         2.898E-02   AT NODE        320   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.101E-02   AT NODE        320   DOF  2
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     1.033E-02   TIME AVG. MOMENT      8.977E-03
 LARGEST RESIDUAL MOMENT           -1.193E-04   AT NODE       2479   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION      1.062E-02   AT NODE       2464   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     4.111E-03   AT NODE       2464   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          1
 

 ***WARNING: THE SYSTEM MATRIX HAS 2 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       2.19       TIME AVG. FORCE        2.06    
 LARGEST RESIDUAL FORCE             2.950E-05   AT NODE       2479   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.         2.815E-02   AT NODE        320   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -8.272E-04   AT NODE        320   DOF  2
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF DISP.    CORRECTION    3.914E-06
 FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                     1.033E-02   TIME AVG. MOMENT      8.977E-03
 LARGEST RESIDUAL MOMENT           -3.640E-05   AT NODE       2494   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION      1.031E-02   AT NODE       2464   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -3.124E-04   AT NODE       2464   DOF  4
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF ROTATION CORRECTION   -9.530E-05
 MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION
          ARC LENGTH INCREMENT MAY NOW INCREASE TO    3.750E-02

 ITERATION SUMMARY FOR THE INCREMENT:   3 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  3 ARE EQUILIBRIUM ITERATIONS.


                                INCREMENT    84 SUMMARY


     CURRENT LOAD PROPORTIONALITY FACTOR          1.149    
     TOTAL ARC LENGTH    6.33    , INCREMENT OF ARC LENGTH   2.500E-02


  INCREMENT    85 STARTS. ATTEMPT NUMBER  1

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: THE SYSTEM MATRIX HAS 2 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       2.19       TIME AVG. FORCE        2.06    
 LARGEST RESIDUAL FORCE            -9.361E-03   AT NODE       2435   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -1.406E-02   AT NODE        104   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -1.406E-02   AT NODE        104   DOF  2
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     1.045E-02   TIME AVG. MOMENT      8.995E-03
 LARGEST RESIDUAL MOMENT           -1.916E-04   AT NODE        103   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION     -5.205E-03   AT NODE       2450   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -5.205E-03   AT NODE       2450   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          1
 

 ***WARNING: THE SYSTEM MATRIX HAS 2 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       2.19       TIME AVG. FORCE        2.06    
 LARGEST RESIDUAL FORCE             1.939E-04   AT NODE       2465   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -1.194E-02   AT NODE        104   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        2.121E-03   AT NODE        104   DOF  2
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF DISP.    CORRECTION   -4.394E-05
 FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                     1.045E-02   TIME AVG. MOMENT      8.995E-03
 LARGEST RESIDUAL MOMENT            2.380E-05   AT NODE       2480   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION     -4.435E-03   AT NODE       2450   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     7.704E-04   AT NODE       2450   DOF  4
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: THE SYSTEM MATRIX HAS 2 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       2.19       TIME AVG. FORCE        2.06    
 LARGEST RESIDUAL FORCE             1.199E-06   AT NODE       2451   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -1.179E-02   AT NODE        104   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.484E-04   AT NODE        104   DOF  2
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF DISP.    CORRECTION    9.175E-07
 FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                     1.045E-02   TIME AVG. MOMENT      8.995E-03
 LARGEST RESIDUAL MOMENT           -1.909E-06   AT NODE       2480   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION     -4.382E-03   AT NODE       2450   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     5.259E-05   AT NODE       2450   DOF  4
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF ROTATION CORRECTION   -4.218E-06
 MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION
          ARC LENGTH INCREMENT MAY NOW INCREASE TO    5.625E-02

 ITERATION SUMMARY FOR THE INCREMENT:   3 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  3 ARE EQUILIBRIUM ITERATIONS.


                                INCREMENT    85 SUMMARY


     CURRENT LOAD PROPORTIONALITY FACTOR          1.150    
     TOTAL ARC LENGTH    6.37    , INCREMENT OF ARC LENGTH   3.750E-02


  INCREMENT    86 STARTS. ATTEMPT NUMBER  1

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          1
 

 ***WARNING: THE SYSTEM MATRIX HAS 2 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       2.19       TIME AVG. FORCE        2.06    
 LARGEST RESIDUAL FORCE            -1.159E-02   AT NODE       2435   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -1.498E-02   AT NODE        104   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -1.498E-02   AT NODE        104   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     1.064E-02   TIME AVG. MOMENT      9.014E-03
 LARGEST RESIDUAL MOMENT           -2.295E-04   AT NODE        103   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION     -5.590E-03   AT NODE       2450   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -5.590E-03   AT NODE       2450   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: THE SYSTEM MATRIX HAS 2 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       2.19       TIME AVG. FORCE        2.06    
 LARGEST RESIDUAL FORCE             1.722E-04   AT NODE       2465   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.         1.349E-02   AT NODE         49   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.994E-03   AT NODE        104   DOF  2
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF DISP.    CORRECTION   -2.963E-05
 FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                     1.063E-02   TIME AVG. MOMENT      9.014E-03
 LARGEST RESIDUAL MOMENT            3.763E-05   AT NODE       1565   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION     -4.862E-03   AT NODE       2450   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     7.281E-04   AT NODE       2450   DOF  4
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          1
 

 ***WARNING: THE SYSTEM MATRIX HAS 2 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       2.19       TIME AVG. FORCE        2.06    
 LARGEST RESIDUAL FORCE            -1.405E-06   AT NODE       2463   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.         1.352E-02   AT NODE         49   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.119E-04   AT NODE        104   DOF  2
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     1.063E-02   TIME AVG. MOMENT      9.014E-03
 LARGEST RESIDUAL MOMENT           -2.113E-06   AT NODE       2480   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION     -4.823E-03   AT NODE       2450   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     3.907E-05   AT NODE       2450   DOF  4
   INSTANCE: SHELL-1                                                                         
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED
          ARC LENGTH INCREMENT MAY NOW INCREASE TO    8.438E-02

 ITERATION SUMMARY FOR THE INCREMENT:   3 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  3 ARE EQUILIBRIUM ITERATIONS.


                                INCREMENT    86 SUMMARY


     CURRENT LOAD PROPORTIONALITY FACTOR          1.152    
     TOTAL ARC LENGTH    6.42    , INCREMENT OF ARC LENGTH   5.625E-02


  INCREMENT    87 STARTS. ATTEMPT NUMBER  1

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =  0.10000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: THE SYSTEM MATRIX HAS 2 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       2.19       TIME AVG. FORCE        2.07    
 LARGEST RESIDUAL FORCE            -2.206E-02   AT NODE         47   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.         2.095E-02   AT NODE         49   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        2.095E-02   AT NODE         49   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     1.089E-02   TIME AVG. MOMENT      9.035E-03
 LARGEST RESIDUAL MOMENT            3.193E-04   AT NODE         44   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION      6.691E-03   AT NODE       1625   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     6.691E-03   AT NODE       1625   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          1
 

 ***WARNING: THE SYSTEM MATRIX HAS 2 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       2.19       TIME AVG. FORCE        2.07    
 LARGEST RESIDUAL FORCE             1.943E-04   AT NODE       2465   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.         2.156E-02   AT NODE         49   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        2.109E-03   AT NODE        104   DOF  2
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF DISP.    CORRECTION   -1.857E-05
 FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                     1.088E-02   TIME AVG. MOMENT      9.035E-03
 LARGEST RESIDUAL MOMENT            9.014E-05   AT NODE       1565   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION      6.899E-03   AT NODE       1625   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     7.774E-04   AT NODE       2450   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: THE SYSTEM MATRIX HAS 2 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       2.19       TIME AVG. FORCE        2.07    
 LARGEST RESIDUAL FORCE             1.925E-06   AT NODE       2451   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.         2.157E-02   AT NODE         49   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.078E-04   AT NODE        104   DOF  2
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     1.088E-02   TIME AVG. MOMENT      9.035E-03
 LARGEST RESIDUAL MOMENT            2.777E-06   AT NODE       2436   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION      6.899E-03   AT NODE       1625   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     3.686E-05   AT NODE       2450   DOF  4
   INSTANCE: SHELL-1                                                                         
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED
          ARC LENGTH INCREMENT MAY NOW INCREASE TO    0.100    

 ITERATION SUMMARY FOR THE INCREMENT:   3 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  3 ARE EQUILIBRIUM ITERATIONS.


                                INCREMENT    87 SUMMARY


     CURRENT LOAD PROPORTIONALITY FACTOR          1.155    
     TOTAL ARC LENGTH    6.51    , INCREMENT OF ARC LENGTH   8.438E-02


  INCREMENT    88 STARTS. ATTEMPT NUMBER  1

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          1
 

 ***WARNING: THE SYSTEM MATRIX HAS 2 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       2.20       TIME AVG. FORCE        2.07    
 LARGEST RESIDUAL FORCE            -3.503E-02   AT NODE         47   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.         2.633E-02   AT NODE         49   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        2.633E-02   AT NODE         49   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     1.117E-02   TIME AVG. MOMENT      9.059E-03
 LARGEST RESIDUAL MOMENT            4.349E-04   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF ROTATION      8.435E-03   AT NODE       1625   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     8.435E-03   AT NODE       1625   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: THE SYSTEM MATRIX HAS 2 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       2.19       TIME AVG. FORCE        2.07    
 LARGEST RESIDUAL FORCE            -1.024E-04   AT NODE         45   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.         2.683E-02   AT NODE         49   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.564E-03   AT NODE         43   DOF  2
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF DISP.    CORRECTION    4.574E-06
 FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                     1.115E-02   TIME AVG. MOMENT      9.059E-03
 LARGEST RESIDUAL MOMENT            1.037E-04   AT NODE       1565   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION      8.506E-03   AT NODE       1625   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     5.657E-04   AT NODE       2450   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          1
 

 ***WARNING: THE SYSTEM MATRIX HAS 2 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       2.19       TIME AVG. FORCE        2.07    
 LARGEST RESIDUAL FORCE            -6.938E-06   AT NODE       1609   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.         2.668E-02   AT NODE         49   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        2.419E-04   AT NODE         46   DOF  2
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     1.115E-02   TIME AVG. MOMENT      9.059E-03
 LARGEST RESIDUAL MOMENT           -1.392E-05   AT NODE       1595   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION      8.433E-03   AT NODE       1625   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     9.439E-05   AT NODE       1580   DOF  4
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF ROTATION CORRECTION   -1.267E-05
 MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 ITERATION SUMMARY FOR THE INCREMENT:   3 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  3 ARE EQUILIBRIUM ITERATIONS.


                                INCREMENT    88 SUMMARY


     CURRENT LOAD PROPORTIONALITY FACTOR          1.159    
     TOTAL ARC LENGTH    6.61    , INCREMENT OF ARC LENGTH   0.100    


  INCREMENT    89 STARTS. ATTEMPT NUMBER  1

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: THE SYSTEM MATRIX HAS 2 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       2.20       TIME AVG. FORCE        2.07    
 LARGEST RESIDUAL FORCE            -2.654E-02   AT NODE         47   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.         2.636E-02   AT NODE         49   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        2.636E-02   AT NODE         49   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     1.142E-02   TIME AVG. MOMENT      9.086E-03
 LARGEST RESIDUAL MOMENT            4.605E-04   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF ROTATION      8.109E-03   AT NODE       1625   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     8.109E-03   AT NODE       1625   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          1
 

 ***WARNING: THE SYSTEM MATRIX HAS 2 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       2.20       TIME AVG. FORCE        2.07    
 LARGEST RESIDUAL FORCE             1.095E-03   AT NODE         48   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -2.475E-02   AT NODE        265   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        3.652E-03   AT NODE         46   DOF  2
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF DISP.    CORRECTION   -1.507E-04
 FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                     1.141E-02   TIME AVG. MOMENT      9.085E-03
 LARGEST RESIDUAL MOMENT           -1.107E-04   AT NODE       1595   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION     -7.281E-03   AT NODE       1639   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.366E-03   AT NODE       1580   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: THE SYSTEM MATRIX HAS 2 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       2.20       TIME AVG. FORCE        2.07    
 LARGEST RESIDUAL FORCE             4.328E-05   AT NODE        264   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -2.448E-02   AT NODE        265   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        7.103E-04   AT NODE         46   DOF  2
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF DISP.    CORRECTION    2.807E-05
 FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                     1.141E-02   TIME AVG. MOMENT      9.085E-03
 LARGEST RESIDUAL MOMENT           -3.905E-05   AT NODE       1595   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION     -7.140E-03   AT NODE       1639   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     2.719E-04   AT NODE       1580   DOF  4
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: THE SYSTEM MATRIX HAS 2 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     4


 AVERAGE FORCE                       2.20       TIME AVG. FORCE        2.07    
 LARGEST RESIDUAL FORCE            -7.197E-07   AT NODE       1625   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -2.450E-02   AT NODE        265   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        2.177E-05   AT NODE         49   DOF  2
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     1.141E-02   TIME AVG. MOMENT      9.085E-03
 LARGEST RESIDUAL MOMENT            3.221E-06   AT NODE       1609   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION     -7.148E-03   AT NODE       1639   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     8.635E-06   AT NODE       1625   DOF  4
   INSTANCE: SHELL-1                                                                         
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED

 ITERATION SUMMARY FOR THE INCREMENT:   4 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  4 ARE EQUILIBRIUM ITERATIONS.


                                INCREMENT    89 SUMMARY


     CURRENT LOAD PROPORTIONALITY FACTOR          1.163    
     TOTAL ARC LENGTH    6.71    , INCREMENT OF ARC LENGTH   0.100    


  INCREMENT    90 STARTS. ATTEMPT NUMBER  1

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: THE SYSTEM MATRIX HAS 2 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       2.21       TIME AVG. FORCE        2.07    
 LARGEST RESIDUAL FORCE            -2.352E-02   AT NODE        838   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -2.256E-02   AT NODE        265   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -2.256E-02   AT NODE        265   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     1.166E-02   TIME AVG. MOMENT      9.114E-03
 LARGEST RESIDUAL MOMENT            5.083E-04   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF ROTATION     -6.196E-03   AT NODE       1639   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -6.196E-03   AT NODE       1639   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          1
 

 ***WARNING: THE SYSTEM MATRIX HAS 2 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       2.21       TIME AVG. FORCE        2.07    
 LARGEST RESIDUAL FORCE             4.067E-04   AT NODE         48   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -2.140E-02   AT NODE        265   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -2.070E-03   AT NODE        262   DOF  2
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF DISP.    CORRECTION    3.579E-05
 FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                     1.165E-02   TIME AVG. MOMENT      9.114E-03
 LARGEST RESIDUAL MOMENT            8.496E-05   AT NODE       1609   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION     -5.641E-03   AT NODE       1639   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -7.919E-04   AT NODE       1594   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: THE SYSTEM MATRIX HAS 2 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       2.21       TIME AVG. FORCE        2.07    
 LARGEST RESIDUAL FORCE             5.343E-06   AT NODE       1579   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -2.138E-02   AT NODE        265   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -1.960E-04   AT NODE        262   DOF  2
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     1.165E-02   TIME AVG. MOMENT      9.114E-03
 LARGEST RESIDUAL MOMENT            1.307E-05   AT NODE       1609   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION     -5.621E-03   AT NODE       1639   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -7.181E-05   AT NODE       1594   DOF  4
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF ROTATION CORRECTION   -1.105E-05
 MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 ITERATION SUMMARY FOR THE INCREMENT:   3 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  3 ARE EQUILIBRIUM ITERATIONS.


                                INCREMENT    90 SUMMARY


     CURRENT LOAD PROPORTIONALITY FACTOR          1.168    
     TOTAL ARC LENGTH    6.81    , INCREMENT OF ARC LENGTH   0.100    


  INCREMENT    91 STARTS. ATTEMPT NUMBER  1

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          1
 

 ***WARNING: THE SYSTEM MATRIX HAS 2 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       2.21       TIME AVG. FORCE        2.07    
 LARGEST RESIDUAL FORCE             2.335E-02   AT NODE        749   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -2.056E-02   AT NODE        265   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -2.056E-02   AT NODE        265   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     1.189E-02   TIME AVG. MOMENT      9.145E-03
 LARGEST RESIDUAL MOMENT            5.230E-04   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF ROTATION     -5.198E-03   AT NODE       1639   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -5.198E-03   AT NODE       1639   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =  0.10000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.40000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: THE SYSTEM MATRIX HAS 2 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       2.21       TIME AVG. FORCE        2.07    
 LARGEST RESIDUAL FORCE             9.498E-05   AT NODE        264   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -2.043E-02   AT NODE        265   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -1.304E-03   AT NODE        262   DOF  2
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF DISP.    CORRECTION   -5.302E-06
 FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                     1.188E-02   TIME AVG. MOMENT      9.144E-03
 LARGEST RESIDUAL MOMENT            6.034E-05   AT NODE       1609   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION     -5.059E-03   AT NODE       1639   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -4.593E-04   AT NODE       1594   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: THE SYSTEM MATRIX HAS 2 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       2.21       TIME AVG. FORCE        2.07    
 LARGEST RESIDUAL FORCE             3.269E-06   AT NODE       1579   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -2.044E-02   AT NODE        265   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -2.675E-05   AT NODE        644   DOF  2
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     1.189E-02   TIME AVG. MOMENT      9.144E-03
 LARGEST RESIDUAL MOMENT            4.607E-06   AT NODE       1564   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION     -5.059E-03   AT NODE       1639   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -8.542E-06   AT NODE       1579   DOF  5
   INSTANCE: SHELL-1                                                                         
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED

 ITERATION SUMMARY FOR THE INCREMENT:   3 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  3 ARE EQUILIBRIUM ITERATIONS.


                                INCREMENT    91 SUMMARY


     CURRENT LOAD PROPORTIONALITY FACTOR          1.172    
     TOTAL ARC LENGTH    6.91    , INCREMENT OF ARC LENGTH   0.100    


  INCREMENT    92 STARTS. ATTEMPT NUMBER  1

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: THE SYSTEM MATRIX HAS 2 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       2.21       TIME AVG. FORCE        2.07    
 LARGEST RESIDUAL FORCE             2.405E-02   AT NODE        749   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -2.052E-02   AT NODE        265   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -2.052E-02   AT NODE        265   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     1.212E-02   TIME AVG. MOMENT      9.177E-03
 LARGEST RESIDUAL MOMENT            4.990E-04   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF ROTATION     -4.992E-03   AT NODE       1639   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -4.992E-03   AT NODE       1639   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          1
 

 ***WARNING: THE SYSTEM MATRIX HAS 2 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       2.21       TIME AVG. FORCE        2.07    
 LARGEST RESIDUAL FORCE            -1.444E-04   AT NODE         45   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -2.136E-02   AT NODE        265   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -1.640E-03   AT NODE        262   DOF  2
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF DISP.    CORRECTION    9.847E-06
 FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                     1.210E-02   TIME AVG. MOMENT      9.177E-03
 LARGEST RESIDUAL MOMENT            5.008E-05   AT NODE       1609   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION     -5.167E-03   AT NODE       1639   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -5.164E-04   AT NODE       1594   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: THE SYSTEM MATRIX HAS 2 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       2.21       TIME AVG. FORCE        2.07    
 LARGEST RESIDUAL FORCE            -4.933E-06   AT NODE       1594   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -2.133E-02   AT NODE        265   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -9.129E-05   AT NODE        644   DOF  2
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     1.210E-02   TIME AVG. MOMENT      9.177E-03
 LARGEST RESIDUAL MOMENT            5.212E-06   AT NODE       1564   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION     -5.158E-03   AT NODE       1639   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     2.807E-05   AT NODE       1594   DOF  4
   INSTANCE: SHELL-1                                                                         
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED

 ITERATION SUMMARY FOR THE INCREMENT:   3 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  3 ARE EQUILIBRIUM ITERATIONS.


                                INCREMENT    92 SUMMARY


     CURRENT LOAD PROPORTIONALITY FACTOR          1.175    
     TOTAL ARC LENGTH    7.01    , INCREMENT OF ARC LENGTH   0.100    


  INCREMENT    93 STARTS. ATTEMPT NUMBER  1

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          1
 

 ***WARNING: THE SYSTEM MATRIX HAS 2 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       2.21       TIME AVG. FORCE        2.08    
 LARGEST RESIDUAL FORCE             2.565E-02   AT NODE        749   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -2.245E-02   AT NODE        265   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -2.245E-02   AT NODE        265   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     1.232E-02   TIME AVG. MOMENT      9.210E-03
 LARGEST RESIDUAL MOMENT           -4.996E-04   AT NODE        165   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION     -5.415E-03   AT NODE       1639   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -5.415E-03   AT NODE       1639   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: THE SYSTEM MATRIX HAS 2 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       2.21       TIME AVG. FORCE        2.08    
 LARGEST RESIDUAL FORCE            -7.931E-04   AT NODE        261   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -2.596E-02   AT NODE        265   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -4.336E-03   AT NODE        262   DOF  2
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF DISP.    CORRECTION    1.341E-04
 FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                     1.230E-02   TIME AVG. MOMENT      9.210E-03
 LARGEST RESIDUAL MOMENT            6.133E-05   AT NODE       1564   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION     -6.341E-03   AT NODE       1639   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -1.283E-03   AT NODE       1594   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: THE SYSTEM MATRIX HAS 2 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       2.21       TIME AVG. FORCE        2.08    
 LARGEST RESIDUAL FORCE            -2.160E-05   AT NODE       1594   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -2.552E-02   AT NODE        265   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -6.109E-04   AT NODE        647   DOF  2
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF DISP.    CORRECTION   -1.664E-05
 FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                     1.230E-02   TIME AVG. MOMENT      9.210E-03
 LARGEST RESIDUAL MOMENT           -1.747E-05   AT NODE       1579   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION     -6.213E-03   AT NODE       1639   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.956E-04   AT NODE       1594   DOF  4
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF ROTATION CORRECTION   -5.569E-05
 MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 ITERATION SUMMARY FOR THE INCREMENT:   3 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  3 ARE EQUILIBRIUM ITERATIONS.


                                INCREMENT    93 SUMMARY


     CURRENT LOAD PROPORTIONALITY FACTOR          1.178    
     TOTAL ARC LENGTH    7.11    , INCREMENT OF ARC LENGTH   0.100    


  INCREMENT    94 STARTS. ATTEMPT NUMBER  1

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =  0.10000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: THE SYSTEM MATRIX HAS 2 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       2.21       TIME AVG. FORCE        2.08    
 LARGEST RESIDUAL FORCE             2.864E-02   AT NODE        262   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -2.929E-02   AT NODE        265   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -2.929E-02   AT NODE        265   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     1.246E-02   TIME AVG. MOMENT      9.245E-03
 LARGEST RESIDUAL MOMENT           -7.203E-04   AT NODE       1609   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION     -7.234E-03   AT NODE       1639   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -7.234E-03   AT NODE       1639   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          1
 

 ***WARNING: THE SYSTEM MATRIX HAS 1 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       2.21       TIME AVG. FORCE        2.08    
 LARGEST RESIDUAL FORCE            -2.278E-02   AT NODE        647   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -4.778E-02   AT NODE        647   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -2.536E-02   AT NODE        647   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     1.241E-02   TIME AVG. MOMENT      9.244E-03
 LARGEST RESIDUAL MOMENT           -8.289E-04   AT NODE       4348   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION      1.373E-02   AT NODE       4363   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     7.245E-03   AT NODE       4363   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: THE SYSTEM MATRIX HAS 2 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       2.20       TIME AVG. FORCE        2.08    
 LARGEST RESIDUAL FORCE             -2.23       AT NODE        970   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -0.224       AT NODE         46   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -0.248       AT NODE         46   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     1.349E-02   TIME AVG. MOMENT      9.256E-03
 LARGEST RESIDUAL MOMENT            7.179E-02   AT NODE       1595   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION     -6.503E-02   AT NODE       1580   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -7.150E-02   AT NODE       1580   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     4


 AVERAGE FORCE                       2.20       TIME AVG. FORCE        2.08    
 LARGEST RESIDUAL FORCE             0.393       AT NODE        588   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -0.262       AT NODE         46   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        8.698E-02   AT NODE        469   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     1.356E-02   TIME AVG. MOMENT      9.256E-03
 LARGEST RESIDUAL MOMENT            3.524E-02   AT NODE       1565   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION     -8.129E-02   AT NODE       1580   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     3.446E-02   AT NODE       3448   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     5


 AVERAGE FORCE                       2.17       TIME AVG. FORCE        2.08    
 LARGEST RESIDUAL FORCE             -13.8       AT NODE        877   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.         0.711       AT NODE        469   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        0.537       AT NODE        469   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     1.598E-02   TIME AVG. MOMENT      9.282E-03
 LARGEST RESIDUAL MOMENT            0.572       AT NODE       3419   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION     -0.247       AT NODE       3434   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -0.184       AT NODE       3434   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 

 ***NOTE: THE SOLUTION APPEARS TO BE DIVERGING. CONVERGENCE IS JUDGED UNLIKELY.


  INCREMENT    94 STARTS. ATTEMPT NUMBER  2

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =  0.10000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          1
 

 ***WARNING: THE SYSTEM MATRIX HAS 2 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       2.21       TIME AVG. FORCE        2.08    
 LARGEST RESIDUAL FORCE             1.788E-03   AT NODE        262   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -7.308E-03   AT NODE        265   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -7.308E-03   AT NODE        265   DOF  2
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF DISP.    CORRECTION    3.430E-05
 FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                     1.233E-02   TIME AVG. MOMENT      9.243E-03
 LARGEST RESIDUAL MOMENT            6.615E-05   AT NODE       4378   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION     -1.805E-03   AT NODE       1639   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -1.805E-03   AT NODE       1639   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: THE SYSTEM MATRIX HAS 2 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       2.21       TIME AVG. FORCE        2.08    
 LARGEST RESIDUAL FORCE            -2.121E-05   AT NODE        848   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -7.795E-03   AT NODE        265   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -6.615E-04   AT NODE        644   DOF  2
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF DISP.    CORRECTION    7.849E-06
 FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                     1.233E-02   TIME AVG. MOMENT      9.243E-03
 LARGEST RESIDUAL MOMENT            7.403E-06   AT NODE       4364   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION     -1.969E-03   AT NODE       1594   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -1.685E-04   AT NODE       1594   DOF  4
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: THE SYSTEM MATRIX HAS 1 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       2.21       TIME AVG. FORCE        2.08    
 LARGEST RESIDUAL FORCE            -7.083E-07   AT NODE       1594   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.         7.814E-03   AT NODE         49   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        2.136E-05   AT NODE         49   DOF  2
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     1.233E-02   TIME AVG. MOMENT      9.243E-03
 LARGEST RESIDUAL MOMENT            8.904E-07   AT NODE       1565   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION      1.973E-03   AT NODE       1580   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     5.934E-06   AT NODE       1625   DOF  4
   INSTANCE: SHELL-1                                                                         
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED
          ARC LENGTH INCREMENT MAY NOW INCREASE TO    3.750E-02

 ITERATION SUMMARY FOR THE INCREMENT:   3 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  3 ARE EQUILIBRIUM ITERATIONS.


                                INCREMENT    94 SUMMARY


     CURRENT LOAD PROPORTIONALITY FACTOR          1.179    
     TOTAL ARC LENGTH    7.13    , INCREMENT OF ARC LENGTH   2.500E-02


  INCREMENT    95 STARTS. ATTEMPT NUMBER  1

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: THE SYSTEM MATRIX HAS 1 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       2.21       TIME AVG. FORCE        2.08    
 LARGEST RESIDUAL FORCE             5.324E-03   AT NODE        262   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -1.232E-02   AT NODE        265   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -1.232E-02   AT NODE        265   DOF  2
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     1.237E-02   TIME AVG. MOMENT      9.276E-03
 LARGEST RESIDUAL MOMENT           -1.306E-04   AT NODE       1609   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION     -3.197E-03   AT NODE       1594   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -3.197E-03   AT NODE       1594   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          1
 

 ***WARNING: THE SYSTEM MATRIX HAS 1 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       2.22       TIME AVG. FORCE        2.08    
 LARGEST RESIDUAL FORCE            -1.085E-02   AT NODE        970   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.         2.874E-02   AT NODE         46   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.737E-02   AT NODE         46   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     1.229E-02   TIME AVG. MOMENT      9.275E-03
 LARGEST RESIDUAL MOMENT            3.342E-04   AT NODE       1595   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION      8.170E-03   AT NODE       1580   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     5.072E-03   AT NODE       1580   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       2.22       TIME AVG. FORCE        2.08    
 LARGEST RESIDUAL FORCE            -6.043E-04   AT NODE        838   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.         2.489E-02   AT NODE         46   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -3.899E-03   AT NODE         49   DOF  2
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     1.227E-02   TIME AVG. MOMENT      9.275E-03
 LARGEST RESIDUAL MOMENT            1.128E-04   AT NODE       1580   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION      7.088E-03   AT NODE       1580   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -1.083E-03   AT NODE       1580   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     4


 AVERAGE FORCE                       2.22       TIME AVG. FORCE        2.08    
 LARGEST RESIDUAL FORCE             4.892E-05   AT NODE         46   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.         2.373E-02   AT NODE         46   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -1.165E-03   AT NODE         46   DOF  2
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF DISP.    CORRECTION    9.426E-05
 FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                     1.227E-02   TIME AVG. MOMENT      9.275E-03
 LARGEST RESIDUAL MOMENT           -1.503E-05   AT NODE       1565   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION      6.771E-03   AT NODE       1580   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -3.168E-04   AT NODE       1580   DOF  4
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF ROTATION CORRECTION    4.219E-05
 MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION
          ARC LENGTH INCREMENT MAY NOW INCREASE TO    5.625E-02

 ITERATION SUMMARY FOR THE INCREMENT:   4 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  4 ARE EQUILIBRIUM ITERATIONS.


                                INCREMENT    95 SUMMARY


     CURRENT LOAD PROPORTIONALITY FACTOR          1.179    
     TOTAL ARC LENGTH    7.17    , INCREMENT OF ARC LENGTH   3.750E-02


  INCREMENT    96 STARTS. ATTEMPT NUMBER  1

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       2.21       TIME AVG. FORCE        2.08    
 LARGEST RESIDUAL FORCE            -8.877E-03   AT NODE        816   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -1.430E-02   AT NODE        530   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -1.430E-02   AT NODE        530   DOF  2
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     1.214E-02   TIME AVG. MOMENT      9.305E-03
 LARGEST RESIDUAL MOMENT            2.031E-04   AT NODE        429   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION      4.266E-03   AT NODE       4349   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     4.266E-03   AT NODE       4349   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          1

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       2.21       TIME AVG. FORCE        2.08    
 LARGEST RESIDUAL FORCE            -1.867E-04   AT NODE        530   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -1.197E-02   AT NODE        262   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        2.366E-03   AT NODE        530   DOF  2
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF DISP.    CORRECTION    4.977E-05
 FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                     1.213E-02   TIME AVG. MOMENT      9.305E-03
 LARGEST RESIDUAL MOMENT            5.646E-05   AT NODE       4349   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION     -3.606E-03   AT NODE       1594   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -6.726E-04   AT NODE       4349   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       2.21       TIME AVG. FORCE        2.08    
 LARGEST RESIDUAL FORCE            -3.653E-06   AT NODE       1580   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -1.175E-02   AT NODE        262   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        2.650E-04   AT NODE        530   DOF  2
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF DISP.    CORRECTION    5.184E-06
 FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                     1.213E-02   TIME AVG. MOMENT      9.305E-03
 LARGEST RESIDUAL MOMENT           -6.305E-06   AT NODE       4364   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION     -3.546E-03   AT NODE       1594   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -7.085E-05   AT NODE       4349   DOF  4
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF ROTATION CORRECTION    7.913E-06
 MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION
          ARC LENGTH INCREMENT MAY NOW INCREASE TO    8.438E-02

 ITERATION SUMMARY FOR THE INCREMENT:   3 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  3 ARE EQUILIBRIUM ITERATIONS.


                                INCREMENT    96 SUMMARY


     CURRENT LOAD PROPORTIONALITY FACTOR          1.178    
     TOTAL ARC LENGTH    7.23    , INCREMENT OF ARC LENGTH   5.625E-02


  INCREMENT    97 STARTS. ATTEMPT NUMBER  1

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          1

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       2.21       TIME AVG. FORCE        2.08    
 LARGEST RESIDUAL FORCE             1.868E-02   AT NODE        734   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.         1.450E-02   AT NODE         46   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.450E-02   AT NODE         46   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     1.192E-02   TIME AVG. MOMENT      9.332E-03
 LARGEST RESIDUAL MOMENT            3.902E-04   AT NODE        198   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION      4.432E-03   AT NODE       1580   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     4.432E-03   AT NODE       1580   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       2.21       TIME AVG. FORCE        2.08    
 LARGEST RESIDUAL FORCE             1.490E-04   AT NODE         46   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -1.286E-02   AT NODE        754   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -2.209E-03   AT NODE         46   DOF  2
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF DISP.    CORRECTION   -1.762E-05
 FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                     1.191E-02   TIME AVG. MOMENT      9.332E-03
 LARGEST RESIDUAL MOMENT            6.856E-05   AT NODE       1580   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION      3.806E-03   AT NODE       1580   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -6.261E-04   AT NODE       1580   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          1

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       2.21       TIME AVG. FORCE        2.08    
 LARGEST RESIDUAL FORCE            -3.644E-06   AT NODE       1580   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -1.278E-02   AT NODE        833   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -2.192E-04   AT NODE         46   DOF  2
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF DISP.    CORRECTION    5.363E-06
 FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                     1.191E-02   TIME AVG. MOMENT      9.332E-03
 LARGEST RESIDUAL MOMENT           -6.967E-06   AT NODE       1565   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION     -3.749E-03   AT NODE       1594   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -5.614E-05   AT NODE       1580   DOF  4
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF ROTATION CORRECTION    5.705E-06
 MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION
          ARC LENGTH INCREMENT MAY NOW INCREASE TO    0.100    

 ITERATION SUMMARY FOR THE INCREMENT:   3 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  3 ARE EQUILIBRIUM ITERATIONS.


                                INCREMENT    97 SUMMARY


     CURRENT LOAD PROPORTIONALITY FACTOR          1.176    
     TOTAL ARC LENGTH    7.31    , INCREMENT OF ARC LENGTH   8.438E-02


  INCREMENT    98 STARTS. ATTEMPT NUMBER  1

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =  0.10000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       2.21       TIME AVG. FORCE        2.08    
 LARGEST RESIDUAL FORCE            -2.427E-02   AT NODE        853   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -1.476E-02   AT NODE        833   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -1.476E-02   AT NODE        833   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     1.165E-02   TIME AVG. MOMENT      9.356E-03
 LARGEST RESIDUAL MOMENT            5.610E-04   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF ROTATION     -3.808E-03   AT NODE       1594   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -3.808E-03   AT NODE       1594   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          1

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       2.21       TIME AVG. FORCE        2.08    
 LARGEST RESIDUAL FORCE            -6.458E-05   AT NODE         44   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -1.452E-02   AT NODE        833   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.494E-03   AT NODE        262   DOF  2
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF DISP.    CORRECTION    3.977E-06
 FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                     1.164E-02   TIME AVG. MOMENT      9.355E-03
 LARGEST RESIDUAL MOMENT           -5.763E-05   AT NODE       1594   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION     -3.392E-03   AT NODE       1594   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     4.164E-04   AT NODE       1594   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       2.21       TIME AVG. FORCE        2.08    
 LARGEST RESIDUAL FORCE             2.223E-06   AT NODE       1594   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -1.445E-02   AT NODE        833   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.108E-04   AT NODE        262   DOF  2
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     1.164E-02   TIME AVG. MOMENT      9.355E-03
 LARGEST RESIDUAL MOMENT            4.582E-06   AT NODE       1579   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION     -3.365E-03   AT NODE       1594   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     2.689E-05   AT NODE       1594   DOF  4
   INSTANCE: SHELL-1                                                                         
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED

 ITERATION SUMMARY FOR THE INCREMENT:   3 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  3 ARE EQUILIBRIUM ITERATIONS.


                                INCREMENT    98 SUMMARY


     CURRENT LOAD PROPORTIONALITY FACTOR          1.173    
     TOTAL ARC LENGTH    7.41    , INCREMENT OF ARC LENGTH   0.100    


  INCREMENT    99 STARTS. ATTEMPT NUMBER  1

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       2.20       TIME AVG. FORCE        2.08    
 LARGEST RESIDUAL FORCE            -2.288E-02   AT NODE        848   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -1.416E-02   AT NODE        754   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -1.416E-02   AT NODE        754   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     1.135E-02   TIME AVG. MOMENT      9.376E-03
 LARGEST RESIDUAL MOMENT            6.192E-04   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF ROTATION     -3.004E-03   AT NODE       1594   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -3.004E-03   AT NODE       1594   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       2.20       TIME AVG. FORCE        2.08    
 LARGEST RESIDUAL FORCE            -3.068E-05   AT NODE        851   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.         1.407E-02   AT NODE        275   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        8.409E-04   AT NODE        265   DOF  2
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF DISP.    CORRECTION    1.127E-06
 FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                     1.134E-02   TIME AVG. MOMENT      9.375E-03
 LARGEST RESIDUAL MOMENT           -4.022E-05   AT NODE       1594   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION     -3.010E-03   AT NODE       4408   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -2.388E-04   AT NODE       4408   DOF  4
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          1

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       2.20       TIME AVG. FORCE        2.08    
 LARGEST RESIDUAL FORCE             1.121E-06   AT NODE       1520   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.         1.406E-02   AT NODE        275   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -5.590E-05   AT NODE        851   DOF  3
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     1.134E-02   TIME AVG. MOMENT      9.375E-03
 LARGEST RESIDUAL MOMENT            2.756E-06   AT NODE       1549   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION     -3.015E-03   AT NODE       4408   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -1.015E-05   AT NODE        851   DOF  4
   INSTANCE: SHELL-1                                                                         
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED

 ITERATION SUMMARY FOR THE INCREMENT:   3 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  3 ARE EQUILIBRIUM ITERATIONS.


                                INCREMENT    99 SUMMARY


     CURRENT LOAD PROPORTIONALITY FACTOR          1.169    
     TOTAL ARC LENGTH    7.51    , INCREMENT OF ARC LENGTH   0.100    


  INCREMENT   100 STARTS. ATTEMPT NUMBER  1

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       2.20       TIME AVG. FORCE        2.08    
 LARGEST RESIDUAL FORCE             2.235E-02   AT NODE        749   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.         1.397E-02   AT NODE        275   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.397E-02   AT NODE        275   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     1.105E-02   TIME AVG. MOMENT      9.392E-03
 LARGEST RESIDUAL MOMENT            6.489E-04   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF ROTATION     -3.271E-03   AT NODE       4408   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -3.271E-03   AT NODE       4408   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          1

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       2.20       TIME AVG. FORCE        2.08    
 LARGEST RESIDUAL FORCE            -3.070E-05   AT NODE        648   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.         1.388E-02   AT NODE        275   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        6.155E-04   AT NODE        589   DOF  2
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF DISP.    CORRECTION   -8.452E-07
 FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                     1.104E-02   TIME AVG. MOMENT      9.392E-03
 LARGEST RESIDUAL MOMENT           -3.381E-05   AT NODE       2464   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION     -3.552E-03   AT NODE       4408   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -2.815E-04   AT NODE       4408   DOF  4
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       2.20       TIME AVG. FORCE        2.08    
 LARGEST RESIDUAL FORCE             9.002E-07   AT NODE       1520   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -1.388E-02   AT NODE         59   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -3.247E-05   AT NODE        851   DOF  3
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     1.104E-02   TIME AVG. MOMENT      9.392E-03
 LARGEST RESIDUAL MOMENT           -2.463E-06   AT NODE       2450   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION     -3.557E-03   AT NODE       4408   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -5.947E-06   AT NODE        851   DOF  4
   INSTANCE: SHELL-1                                                                         
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED

 ITERATION SUMMARY FOR THE INCREMENT:   3 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  3 ARE EQUILIBRIUM ITERATIONS.


                                INCREMENT   100 SUMMARY


     CURRENT LOAD PROPORTIONALITY FACTOR          1.164    
     TOTAL ARC LENGTH    7.61    , INCREMENT OF ARC LENGTH   0.100    


  INCREMENT   101 STARTS. ATTEMPT NUMBER  1

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       2.20       TIME AVG. FORCE        2.09    
 LARGEST RESIDUAL FORCE             2.202E-02   AT NODE        749   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -1.376E-02   AT NODE         59   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -1.376E-02   AT NODE         59   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     1.072E-02   TIME AVG. MOMENT      9.405E-03
 LARGEST RESIDUAL MOMENT            6.587E-04   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF ROTATION     -3.870E-03   AT NODE       4408   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -3.870E-03   AT NODE       4408   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       2.20       TIME AVG. FORCE        2.09    
 LARGEST RESIDUAL FORCE            -3.677E-05   AT NODE        648   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -1.364E-02   AT NODE         59   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        8.619E-04   AT NODE        650   DOF  2
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF DISP.    CORRECTION   -1.439E-06
 FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                     1.071E-02   TIME AVG. MOMENT      9.405E-03
 LARGEST RESIDUAL MOMENT           -3.106E-05   AT NODE       3493   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION     -4.234E-03   AT NODE       4408   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -3.638E-04   AT NODE       4408   DOF  4
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          1

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       2.20       TIME AVG. FORCE        2.09    
 LARGEST RESIDUAL FORCE            -9.665E-07   AT NODE       4407   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -1.363E-02   AT NODE         59   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -1.997E-05   AT NODE        783   DOF  3
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     1.071E-02   TIME AVG. MOMENT      9.405E-03
 LARGEST RESIDUAL MOMENT           -2.407E-06   AT NODE       2450   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION     -4.240E-03   AT NODE       4408   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -6.122E-06   AT NODE       4408   DOF  4
   INSTANCE: SHELL-1                                                                         
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED

 ITERATION SUMMARY FOR THE INCREMENT:   3 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  3 ARE EQUILIBRIUM ITERATIONS.


                                INCREMENT   101 SUMMARY


     CURRENT LOAD PROPORTIONALITY FACTOR          1.160    
     TOTAL ARC LENGTH    7.71    , INCREMENT OF ARC LENGTH   0.100    


  INCREMENT   102 STARTS. ATTEMPT NUMBER  1

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       2.20       TIME AVG. FORCE        2.09    
 LARGEST RESIDUAL FORCE             2.191E-02   AT NODE        739   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -1.349E-02   AT NODE         59   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -1.349E-02   AT NODE         59   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     1.036E-02   TIME AVG. MOMENT      9.415E-03
 LARGEST RESIDUAL MOMENT            6.478E-04   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF ROTATION     -4.659E-03   AT NODE       4408   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -4.659E-03   AT NODE       4408   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          1

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       2.20       TIME AVG. FORCE        2.09    
 LARGEST RESIDUAL FORCE             7.643E-05   AT NODE       4423   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.         1.485E-02   AT NODE        650   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.377E-03   AT NODE        650   DOF  2
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF DISP.    CORRECTION    4.806E-06
 FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                     1.034E-02   TIME AVG. MOMENT      9.414E-03
 LARGEST RESIDUAL MOMENT           -3.017E-05   AT NODE       1549   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION     -5.182E-03   AT NODE       4408   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -5.230E-04   AT NODE       4408   DOF  4
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       2.20       TIME AVG. FORCE        2.09    
 LARGEST RESIDUAL FORCE             1.362E-06   AT NODE       4395   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.         1.489E-02   AT NODE        650   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        3.986E-05   AT NODE        650   DOF  2
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     1.034E-02   TIME AVG. MOMENT      9.414E-03
 LARGEST RESIDUAL MOMENT           -2.511E-06   AT NODE       3479   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION     -5.194E-03   AT NODE       4408   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -1.208E-05   AT NODE       4408   DOF  4
   INSTANCE: SHELL-1                                                                         
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED

 ITERATION SUMMARY FOR THE INCREMENT:   3 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  3 ARE EQUILIBRIUM ITERATIONS.


                                INCREMENT   102 SUMMARY


     CURRENT LOAD PROPORTIONALITY FACTOR          1.156    
     TOTAL ARC LENGTH    7.81    , INCREMENT OF ARC LENGTH   0.100    


  INCREMENT   103 STARTS. ATTEMPT NUMBER  1

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       2.20       TIME AVG. FORCE        2.09    
 LARGEST RESIDUAL FORCE             2.207E-02   AT NODE        739   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.         1.663E-02   AT NODE        650   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.663E-02   AT NODE        650   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     9.977E-03   TIME AVG. MOMENT      9.420E-03
 LARGEST RESIDUAL MOMENT            6.028E-04   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF ROTATION     -5.830E-03   AT NODE       4408   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -5.830E-03   AT NODE       4408   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       2.20       TIME AVG. FORCE        2.09    
 LARGEST RESIDUAL FORCE             2.545E-04   AT NODE       4423   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.         1.915E-02   AT NODE        650   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        2.515E-03   AT NODE        650   DOF  2
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF DISP.    CORRECTION    2.899E-05
 FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                     9.959E-03   TIME AVG. MOMENT      9.420E-03
 LARGEST RESIDUAL MOMENT           -3.253E-05   AT NODE       4408   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION     -6.723E-03   AT NODE       4408   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -8.928E-04   AT NODE       4408   DOF  4
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          1

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       2.20       TIME AVG. FORCE        2.09    
 LARGEST RESIDUAL FORCE             2.355E-06   AT NODE       4395   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.         1.929E-02   AT NODE        650   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.492E-04   AT NODE        650   DOF  2
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     9.959E-03   TIME AVG. MOMENT      9.420E-03
 LARGEST RESIDUAL MOMENT           -3.541E-06   AT NODE       4378   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION     -6.767E-03   AT NODE       4408   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -4.401E-05   AT NODE       4408   DOF  4
   INSTANCE: SHELL-1                                                                         
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED

 ITERATION SUMMARY FOR THE INCREMENT:   3 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  3 ARE EQUILIBRIUM ITERATIONS.


                                INCREMENT   103 SUMMARY


     CURRENT LOAD PROPORTIONALITY FACTOR          1.152    
     TOTAL ARC LENGTH    7.91    , INCREMENT OF ARC LENGTH   0.100    


  INCREMENT   104 STARTS. ATTEMPT NUMBER  1

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       2.20       TIME AVG. FORCE        2.09    
 LARGEST RESIDUAL FORCE             2.628E-02   AT NODE       4423   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.         2.283E-02   AT NODE        650   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        2.283E-02   AT NODE        650   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     9.559E-03   TIME AVG. MOMENT      9.421E-03
 LARGEST RESIDUAL MOMENT            5.081E-04   AT NODE        150   DOF  5
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION     -7.986E-03   AT NODE       4408   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -7.986E-03   AT NODE       4408   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          1

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       2.20       TIME AVG. FORCE        2.09    
 LARGEST RESIDUAL FORCE             1.944E-03   AT NODE       4423   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.         2.978E-02   AT NODE        650   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        6.952E-03   AT NODE        650   DOF  2
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     9.531E-03   TIME AVG. MOMENT      9.421E-03
 LARGEST RESIDUAL MOMENT           -5.486E-05   AT NODE       4393   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION     -1.036E-02   AT NODE       4408   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -2.377E-03   AT NODE       4408   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       2.20       TIME AVG. FORCE        2.09    
 LARGEST RESIDUAL FORCE             1.465E-04   AT NODE       4423   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.         3.173E-02   AT NODE        650   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.951E-03   AT NODE        650   DOF  2
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF DISP.    CORRECTION    1.470E-04
 FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                     9.531E-03   TIME AVG. MOMENT      9.421E-03
 LARGEST RESIDUAL MOMENT           -1.175E-05   AT NODE        651   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION     -1.099E-02   AT NODE       4408   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -6.251E-04   AT NODE       4408   DOF  4
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =  0.10000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          1

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     4


 AVERAGE FORCE                       2.20       TIME AVG. FORCE        2.09    
 LARGEST RESIDUAL FORCE            -2.081E-06   AT NODE       4407   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.         3.182E-02   AT NODE        650   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        9.001E-05   AT NODE        650   DOF  2
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     9.531E-03   TIME AVG. MOMENT      9.421E-03
 LARGEST RESIDUAL MOMENT           -4.339E-06   AT NODE       4378   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION     -1.102E-02   AT NODE       4408   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -2.971E-05   AT NODE       4408   DOF  4
   INSTANCE: SHELL-1                                                                         
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED

 ITERATION SUMMARY FOR THE INCREMENT:   4 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  4 ARE EQUILIBRIUM ITERATIONS.


                                INCREMENT   104 SUMMARY


     CURRENT LOAD PROPORTIONALITY FACTOR          1.149    
     TOTAL ARC LENGTH    8.01    , INCREMENT OF ARC LENGTH   0.100    


  INCREMENT   105 STARTS. ATTEMPT NUMBER  1

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       2.21       TIME AVG. FORCE        2.09    
 LARGEST RESIDUAL FORCE             0.106       AT NODE       4423   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.         4.885E-02   AT NODE        650   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        4.885E-02   AT NODE        650   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     9.148E-03   TIME AVG. MOMENT      9.418E-03
 LARGEST RESIDUAL MOMENT            1.891E-03   AT NODE        651   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION     -1.670E-02   AT NODE       4408   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -1.670E-02   AT NODE       4408   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          1
 

 ***WARNING: THE SYSTEM MATRIX HAS 4 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       2.22       TIME AVG. FORCE        2.09    
 LARGEST RESIDUAL FORCE            -0.343       AT NODE       1534   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -0.139       AT NODE        259   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -9.388E-02   AT NODE        259   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     9.778E-03   TIME AVG. MOMENT      9.424E-03
 LARGEST RESIDUAL MOMENT            9.402E-03   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF ROTATION     -4.744E-02   AT NODE       1549   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -3.191E-02   AT NODE       1549   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       2.25       TIME AVG. FORCE        2.09    
 LARGEST RESIDUAL FORCE             -14.3       AT NODE       4393   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -0.434       AT NODE        650   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -0.567       AT NODE        650   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     1.374E-02   TIME AVG. MOMENT      9.462E-03
 LARGEST RESIDUAL MOMENT            0.709       AT NODE        651   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION      0.176       AT NODE       4408   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     0.221       AT NODE       4408   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     4


 AVERAGE FORCE                       2.19       TIME AVG. FORCE        2.09    
 LARGEST RESIDUAL FORCE             -1.39       AT NODE        645   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -0.396       AT NODE        650   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        6.776E-02   AT NODE        777   DOF  3
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     1.324E-02   TIME AVG. MOMENT      9.457E-03
 LARGEST RESIDUAL MOMENT            0.184       AT NODE        652   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION      0.135       AT NODE       4408   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     4.188E-02   AT NODE        650   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     5


 AVERAGE FORCE                       2.21       TIME AVG. FORCE        2.09    
 LARGEST RESIDUAL FORCE             -1.22       AT NODE       4391   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -0.280       AT NODE        650   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        0.116       AT NODE        650   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     1.279E-02   TIME AVG. MOMENT      9.453E-03
 LARGEST RESIDUAL MOMENT           -0.133       AT NODE        649   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION     -7.223E-02   AT NODE       4394   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -6.237E-02   AT NODE       4408   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     6


 AVERAGE FORCE                       2.21       TIME AVG. FORCE        2.09    
 LARGEST RESIDUAL FORCE            -0.275       AT NODE       4393   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -0.202       AT NODE        650   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        7.780E-02   AT NODE        650   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     1.259E-02   TIME AVG. MOMENT      9.451E-03
 LARGEST RESIDUAL MOMENT           -3.200E-02   AT NODE       4393   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION     -5.823E-02   AT NODE       4394   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     2.393E-02   AT NODE       4979   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: THE SYSTEM MATRIX HAS 1 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     7


 AVERAGE FORCE                       2.22       TIME AVG. FORCE        2.09    
 LARGEST RESIDUAL FORCE              1.10       AT NODE       4378   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -0.139       AT NODE        848   DOF  3
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        0.168       AT NODE        647   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     1.253E-02   TIME AVG. MOMENT      9.450E-03
 LARGEST RESIDUAL MOMENT           -3.506E-02   AT NODE       4348   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION      4.767E-02   AT NODE       4408   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -5.158E-02   AT NODE       4363   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     8


 AVERAGE FORCE                       2.22       TIME AVG. FORCE        2.09    
 LARGEST RESIDUAL FORCE            -0.142       AT NODE        652   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.         0.143       AT NODE        262   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        4.877E-02   AT NODE        653   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     1.238E-02   TIME AVG. MOMENT      9.449E-03
 LARGEST RESIDUAL MOMENT            1.313E-02   AT NODE       4408   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION      4.369E-02   AT NODE       1594   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -1.637E-02   AT NODE       4453   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          1
 

 ***WARNING: THE SYSTEM MATRIX HAS 2 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     9


 AVERAGE FORCE                       2.23       TIME AVG. FORCE        2.09    
 LARGEST RESIDUAL FORCE             -1.04       AT NODE        264   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -0.179       AT NODE        275   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -0.187       AT NODE        265   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     1.341E-02   TIME AVG. MOMENT      9.459E-03
 LARGEST RESIDUAL MOMENT           -4.062E-02   AT NODE       1594   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION     -5.523E-02   AT NODE       3434   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -5.039E-02   AT NODE       1639   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 

 ***NOTE: THE RATE OF CONVERGENCE IS VERY SLOW. CONVERGENCE IS JUDGED UNLIKELY.


  INCREMENT   105 STARTS. ATTEMPT NUMBER  2

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       2.20       TIME AVG. FORCE        2.09    
 LARGEST RESIDUAL FORCE             2.630E-02   AT NODE       4423   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.         2.434E-02   AT NODE        650   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        2.434E-02   AT NODE        650   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     9.335E-03   TIME AVG. MOMENT      9.420E-03
 LARGEST RESIDUAL MOMENT            4.959E-04   AT NODE        651   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION     -8.322E-03   AT NODE       4408   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -8.322E-03   AT NODE       4408   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          1
 

 ***WARNING: THE SYSTEM MATRIX HAS 4 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       2.20       TIME AVG. FORCE        2.09    
 LARGEST RESIDUAL FORCE            -1.017E-02   AT NODE       1534   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -3.881E-02   AT NODE        259   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -1.611E-02   AT NODE        259   DOF  2
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     9.406E-03   TIME AVG. MOMENT      9.421E-03
 LARGEST RESIDUAL MOMENT            2.171E-04   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF ROTATION     -1.314E-02   AT NODE       1549   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -5.387E-03   AT NODE       1549   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: THE SYSTEM MATRIX HAS 4 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       2.20       TIME AVG. FORCE        2.09    
 LARGEST RESIDUAL FORCE            -3.486E-04   AT NODE       1534   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -3.617E-02   AT NODE        259   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        2.640E-03   AT NODE        259   DOF  2
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF DISP.    CORRECTION    9.048E-05
 FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                     9.431E-03   TIME AVG. MOMENT      9.421E-03
 LARGEST RESIDUAL MOMENT            4.099E-05   AT NODE       1519   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION     -1.216E-02   AT NODE       1549   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     9.802E-04   AT NODE       1549   DOF  4
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          1
 

 ***WARNING: THE SYSTEM MATRIX HAS 4 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     4


 AVERAGE FORCE                       2.20       TIME AVG. FORCE        2.09    
 LARGEST RESIDUAL FORCE            -3.594E-06   AT NODE       1548   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -3.627E-02   AT NODE        259   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -1.003E-04   AT NODE        259   DOF  2
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     9.431E-03   TIME AVG. MOMENT      9.421E-03
 LARGEST RESIDUAL MOMENT           -6.749E-06   AT NODE       1519   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION     -1.220E-02   AT NODE       1549   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -3.783E-05   AT NODE       1549   DOF  4
   INSTANCE: SHELL-1                                                                         
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED
          ARC LENGTH INCREMENT MAY NOW INCREASE TO    7.500E-02

 ITERATION SUMMARY FOR THE INCREMENT:   4 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  4 ARE EQUILIBRIUM ITERATIONS.


                                INCREMENT   105 SUMMARY


     CURRENT LOAD PROPORTIONALITY FACTOR          1.152    
     TOTAL ARC LENGTH    8.06    , INCREMENT OF ARC LENGTH   5.000E-02


  INCREMENT   106 STARTS. ATTEMPT NUMBER  1

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: THE SYSTEM MATRIX HAS 4 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       2.21       TIME AVG. FORCE        2.09    
 LARGEST RESIDUAL FORCE             4.032E-02   AT NODE       4423   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.         3.245E-02   AT NODE        650   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        3.245E-02   AT NODE        650   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     9.515E-03   TIME AVG. MOMENT      9.422E-03
 LARGEST RESIDUAL MOMENT            8.077E-04   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF ROTATION     -1.074E-02   AT NODE       4408   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -1.074E-02   AT NODE       4408   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          1
 

 ***WARNING: THE SYSTEM MATRIX HAS 4 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       2.21       TIME AVG. FORCE        2.09    
 LARGEST RESIDUAL FORCE             1.577E-03   AT NODE       4423   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.         2.661E-02   AT NODE        650   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -5.840E-03   AT NODE        650   DOF  2
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF DISP.    CORRECTION   -2.284E-04
 FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                     9.560E-03   TIME AVG. MOMENT      9.422E-03
 LARGEST RESIDUAL MOMENT           -3.873E-05   AT NODE       1579   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION     -8.682E-03   AT NODE       4408   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     2.053E-03   AT NODE       4408   DOF  4
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: THE SYSTEM MATRIX HAS 4 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       2.21       TIME AVG. FORCE        2.09    
 LARGEST RESIDUAL FORCE            -2.816E-05   AT NODE       4379   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.         2.741E-02   AT NODE        650   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        7.964E-04   AT NODE        650   DOF  2
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF DISP.    CORRECTION   -1.422E-05
 FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                     9.555E-03   TIME AVG. MOMENT      9.422E-03
 LARGEST RESIDUAL MOMENT           -1.253E-05   AT NODE       4438   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION     -8.984E-03   AT NODE       4408   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -3.014E-04   AT NODE       4408   DOF  4
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          1
 

 ***WARNING: THE SYSTEM MATRIX HAS 4 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     4


 AVERAGE FORCE                       2.21       TIME AVG. FORCE        2.09    
 LARGEST RESIDUAL FORCE             6.316E-07   AT NODE        532   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.         2.740E-02   AT NODE        650   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        8.867E-06   AT NODE        533   DOF  2
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     9.555E-03   TIME AVG. MOMENT      9.422E-03
 LARGEST RESIDUAL MOMENT           -1.245E-06   AT NODE       4378   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION     -8.981E-03   AT NODE       4408   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -3.087E-06   AT NODE       4394   DOF  4
   INSTANCE: SHELL-1                                                                         
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED
          ARC LENGTH INCREMENT MAY NOW INCREASE TO    0.100    

 ITERATION SUMMARY FOR THE INCREMENT:   4 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  4 ARE EQUILIBRIUM ITERATIONS.


                                INCREMENT   106 SUMMARY


     CURRENT LOAD PROPORTIONALITY FACTOR          1.156    
     TOTAL ARC LENGTH    8.14    , INCREMENT OF ARC LENGTH   7.500E-02


  INCREMENT   107 STARTS. ATTEMPT NUMBER  1

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.40000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.40000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: THE SYSTEM MATRIX HAS 4 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       2.22       TIME AVG. FORCE        2.09    
 LARGEST RESIDUAL FORCE             3.364E-02   AT NODE       4423   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.         3.041E-02   AT NODE        650   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        3.041E-02   AT NODE        650   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     9.767E-03   TIME AVG. MOMENT      9.425E-03
 LARGEST RESIDUAL MOMENT            1.675E-03   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF ROTATION     -9.881E-03   AT NODE       4408   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -9.881E-03   AT NODE       4408   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: THE SYSTEM MATRIX HAS 4 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       2.22       TIME AVG. FORCE        2.09    
 LARGEST RESIDUAL FORCE             6.389E-04   AT NODE       4423   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.         2.660E-02   AT NODE        650   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -3.806E-03   AT NODE        650   DOF  2
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF DISP.    CORRECTION   -7.228E-05
 FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                     9.776E-03   TIME AVG. MOMENT      9.425E-03
 LARGEST RESIDUAL MOMENT            5.865E-05   AT NODE       3464   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION     -8.571E-03   AT NODE       4408   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.310E-03   AT NODE       4408   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: THE SYSTEM MATRIX HAS 4 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       2.21       TIME AVG. FORCE        2.09    
 LARGEST RESIDUAL FORCE            -8.403E-06   AT NODE       4393   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.         2.704E-02   AT NODE        650   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        4.402E-04   AT NODE        650   DOF  2
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF DISP.    CORRECTION   -5.790E-06
 FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                     9.773E-03   TIME AVG. MOMENT      9.425E-03
 LARGEST RESIDUAL MOMENT           -6.268E-06   AT NODE       4438   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION     -8.738E-03   AT NODE       4408   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -1.668E-04   AT NODE       4408   DOF  4
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF ROTATION CORRECTION    1.783E-05
 MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 ITERATION SUMMARY FOR THE INCREMENT:   3 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  3 ARE EQUILIBRIUM ITERATIONS.


                                INCREMENT   107 SUMMARY


     CURRENT LOAD PROPORTIONALITY FACTOR          1.163    
     TOTAL ARC LENGTH    8.24    , INCREMENT OF ARC LENGTH   0.100    


  INCREMENT   108 STARTS. ATTEMPT NUMBER  1

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: THE SYSTEM MATRIX HAS 4 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       2.23       TIME AVG. FORCE        2.09    
 LARGEST RESIDUAL FORCE             2.049E-02   AT NODE       4423   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.         2.423E-02   AT NODE        650   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        2.423E-02   AT NODE        650   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     1.001E-02   TIME AVG. MOMENT      9.431E-03
 LARGEST RESIDUAL MOMENT            1.678E-03   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF ROTATION     -7.793E-03   AT NODE       4408   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -7.793E-03   AT NODE       4408   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: THE SYSTEM MATRIX HAS 4 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       2.23       TIME AVG. FORCE        2.09    
 LARGEST RESIDUAL FORCE             1.354E-04   AT NODE       4409   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.         2.245E-02   AT NODE         43   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -1.778E-03   AT NODE        650   DOF  2
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF DISP.    CORRECTION   -1.174E-05
 FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                     1.001E-02   TIME AVG. MOMENT      9.431E-03
 LARGEST RESIDUAL MOMENT           -4.377E-05   AT NODE       2479   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION      7.207E-03   AT NODE       1535   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     5.868E-04   AT NODE       4408   DOF  4
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: THE SYSTEM MATRIX HAS 4 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       2.23       TIME AVG. FORCE        2.09    
 LARGEST RESIDUAL FORCE             1.497E-06   AT NODE       3492   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.         2.258E-02   AT NODE         43   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.237E-04   AT NODE        650   DOF  2
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     1.001E-02   TIME AVG. MOMENT      9.431E-03
 LARGEST RESIDUAL MOMENT            2.443E-06   AT NODE       2450   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION      7.255E-03   AT NODE       1535   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     4.783E-05   AT NODE       4394   DOF  4
   INSTANCE: SHELL-1                                                                         
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED

 ITERATION SUMMARY FOR THE INCREMENT:   3 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  3 ARE EQUILIBRIUM ITERATIONS.


                                INCREMENT   108 SUMMARY


     CURRENT LOAD PROPORTIONALITY FACTOR          1.170    
     TOTAL ARC LENGTH    8.34    , INCREMENT OF ARC LENGTH   0.100    


  INCREMENT   109 STARTS. ATTEMPT NUMBER  1

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: THE SYSTEM MATRIX HAS 4 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       2.23       TIME AVG. FORCE        2.10    
 LARGEST RESIDUAL FORCE            -1.518E-02   AT NODE       1520   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.         2.115E-02   AT NODE         43   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        2.115E-02   AT NODE         43   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     1.024E-02   TIME AVG. MOMENT      9.438E-03
 LARGEST RESIDUAL MOMENT            1.679E-03   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF ROTATION      6.798E-03   AT NODE       1535   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     6.798E-03   AT NODE       1535   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: THE SYSTEM MATRIX HAS 4 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       2.23       TIME AVG. FORCE        2.10    
 LARGEST RESIDUAL FORCE             5.306E-05   AT NODE        774   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.         2.014E-02   AT NODE         43   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -1.007E-03   AT NODE        650   DOF  2
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF DISP.    CORRECTION    3.519E-06
 FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                     1.024E-02   TIME AVG. MOMENT      9.438E-03
 LARGEST RESIDUAL MOMENT           -3.648E-05   AT NODE       2479   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION     -6.492E-03   AT NODE       1549   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     3.427E-04   AT NODE       3479   DOF  4
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: THE SYSTEM MATRIX HAS 4 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       2.23       TIME AVG. FORCE        2.10    
 LARGEST RESIDUAL FORCE            -1.038E-06   AT NODE       3480   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -2.019E-02   AT NODE        259   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        4.937E-05   AT NODE        650   DOF  2
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     1.024E-02   TIME AVG. MOMENT      9.438E-03
 LARGEST RESIDUAL MOMENT           -2.541E-06   AT NODE       2464   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION     -6.512E-03   AT NODE       1549   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -2.002E-05   AT NODE       4408   DOF  4
   INSTANCE: SHELL-1                                                                         
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED

 ITERATION SUMMARY FOR THE INCREMENT:   3 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  3 ARE EQUILIBRIUM ITERATIONS.


                                INCREMENT   109 SUMMARY


     CURRENT LOAD PROPORTIONALITY FACTOR          1.177    
     TOTAL ARC LENGTH    8.44    , INCREMENT OF ARC LENGTH   0.100    


  INCREMENT   110 STARTS. ATTEMPT NUMBER  1

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: THE SYSTEM MATRIX HAS 4 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       2.24       TIME AVG. FORCE        2.10    
 LARGEST RESIDUAL FORCE            -1.246E-02   AT NODE       1534   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -1.936E-02   AT NODE        259   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -1.936E-02   AT NODE        259   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     1.048E-02   TIME AVG. MOMENT      9.448E-03
 LARGEST RESIDUAL MOMENT            1.701E-03   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF ROTATION     -6.274E-03   AT NODE       1549   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -6.274E-03   AT NODE       1549   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =  0.10000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.40000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: THE SYSTEM MATRIX HAS 4 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       2.24       TIME AVG. FORCE        2.10    
 LARGEST RESIDUAL FORCE            -4.300E-05   AT NODE        851   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -1.881E-02   AT NODE        259   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -6.934E-04   AT NODE        472   DOF  2
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF DISP.    CORRECTION   -2.393E-06
 FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                     1.048E-02   TIME AVG. MOMENT      9.448E-03
 LARGEST RESIDUAL MOMENT            3.282E-05   AT NODE       2465   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION     -6.142E-03   AT NODE       1549   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     2.590E-04   AT NODE       3479   DOF  4
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: THE SYSTEM MATRIX HAS 4 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       2.24       TIME AVG. FORCE        2.10    
 LARGEST RESIDUAL FORCE            -7.977E-07   AT NODE       2435   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -1.883E-02   AT NODE        259   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.746E-05   AT NODE        650   DOF  2
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     1.048E-02   TIME AVG. MOMENT      9.448E-03
 LARGEST RESIDUAL MOMENT           -2.961E-06   AT NODE       2464   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION     -6.151E-03   AT NODE       1549   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -8.404E-06   AT NODE       4408   DOF  4
   INSTANCE: SHELL-1                                                                         
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED

 ITERATION SUMMARY FOR THE INCREMENT:   3 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  3 ARE EQUILIBRIUM ITERATIONS.


                                INCREMENT   110 SUMMARY


     CURRENT LOAD PROPORTIONALITY FACTOR          1.184    
     TOTAL ARC LENGTH    8.54    , INCREMENT OF ARC LENGTH   0.100    


  INCREMENT   111 STARTS. ATTEMPT NUMBER  1

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          1
 

 ***WARNING: THE SYSTEM MATRIX HAS 4 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       2.25       TIME AVG. FORCE        2.10    
 LARGEST RESIDUAL FORCE            -1.103E-02   AT NODE       1534   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -1.841E-02   AT NODE        259   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -1.841E-02   AT NODE        259   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     1.072E-02   TIME AVG. MOMENT      9.459E-03
 LARGEST RESIDUAL MOMENT            1.740E-03   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF ROTATION     -6.072E-03   AT NODE       1549   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -6.072E-03   AT NODE       1549   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: THE SYSTEM MATRIX HAS 4 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       2.25       TIME AVG. FORCE        2.10    
 LARGEST RESIDUAL FORCE            -5.420E-05   AT NODE        851   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -1.830E-02   AT NODE        259   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -6.809E-04   AT NODE        736   DOF  3
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF DISP.    CORRECTION   -3.346E-06
 FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                     1.071E-02   TIME AVG. MOMENT      9.459E-03
 LARGEST RESIDUAL MOMENT           -3.122E-05   AT NODE       2479   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION     -6.113E-03   AT NODE       1549   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     2.098E-04   AT NODE       3479   DOF  4
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: THE SYSTEM MATRIX HAS 4 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       2.25       TIME AVG. FORCE        2.10    
 LARGEST RESIDUAL FORCE             9.600E-07   AT NODE       2449   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -1.829E-02   AT NODE        259   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -2.930E-05   AT NODE        736   DOF  3
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     1.071E-02   TIME AVG. MOMENT      9.459E-03
 LARGEST RESIDUAL MOMENT            3.746E-06   AT NODE       2450   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION     -6.112E-03   AT NODE       1549   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     4.783E-06   AT NODE        736   DOF  4
   INSTANCE: SHELL-1                                                                         
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED

 ITERATION SUMMARY FOR THE INCREMENT:   3 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  3 ARE EQUILIBRIUM ITERATIONS.


                                INCREMENT   111 SUMMARY


     CURRENT LOAD PROPORTIONALITY FACTOR          1.190    
     TOTAL ARC LENGTH    8.64    , INCREMENT OF ARC LENGTH   0.100    


  INCREMENT   112 STARTS. ATTEMPT NUMBER  1

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: THE SYSTEM MATRIX HAS 4 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       2.25       TIME AVG. FORCE        2.10    
 LARGEST RESIDUAL FORCE             1.104E-02   AT NODE        749   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -1.834E-02   AT NODE        259   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -1.834E-02   AT NODE        259   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     1.095E-02   TIME AVG. MOMENT      9.472E-03
 LARGEST RESIDUAL MOMENT            1.783E-03   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF ROTATION     -6.222E-03   AT NODE       1549   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -6.222E-03   AT NODE       1549   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          1
 

 ***WARNING: THE SYSTEM MATRIX HAS 4 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       2.25       TIME AVG. FORCE        2.10    
 LARGEST RESIDUAL FORCE             6.289E-05   AT NODE        736   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -1.905E-02   AT NODE        259   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        8.444E-04   AT NODE        265   DOF  2
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF DISP.    CORRECTION    4.809E-06
 FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                     1.094E-02   TIME AVG. MOMENT      9.472E-03
 LARGEST RESIDUAL MOMENT           -3.097E-05   AT NODE       2479   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION     -6.586E-03   AT NODE       1549   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -3.642E-04   AT NODE       1549   DOF  4
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: THE SYSTEM MATRIX HAS 4 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       2.25       TIME AVG. FORCE        2.10    
 LARGEST RESIDUAL FORCE             1.296E-06   AT NODE       2449   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -1.899E-02   AT NODE        259   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        6.482E-05   AT NODE        259   DOF  2
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     1.094E-02   TIME AVG. MOMENT      9.472E-03
 LARGEST RESIDUAL MOMENT            5.167E-06   AT NODE       2450   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION     -6.566E-03   AT NODE       1549   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     2.016E-05   AT NODE       1549   DOF  4
   INSTANCE: SHELL-1                                                                         
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED

 ITERATION SUMMARY FOR THE INCREMENT:   3 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  3 ARE EQUILIBRIUM ITERATIONS.


                                INCREMENT   112 SUMMARY


     CURRENT LOAD PROPORTIONALITY FACTOR          1.196    
     TOTAL ARC LENGTH    8.74    , INCREMENT OF ARC LENGTH   0.100    


  INCREMENT   113 STARTS. ATTEMPT NUMBER  1

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          1
 

 ***WARNING: THE SYSTEM MATRIX HAS 4 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       2.26       TIME AVG. FORCE        2.10    
 LARGEST RESIDUAL FORCE             1.437E-02   AT NODE       1564   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -2.020E-02   AT NODE        259   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -2.020E-02   AT NODE        259   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     1.118E-02   TIME AVG. MOMENT      9.487E-03
 LARGEST RESIDUAL MOMENT            1.809E-03   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF ROTATION     -7.123E-03   AT NODE       1549   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -7.123E-03   AT NODE       1549   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: THE SYSTEM MATRIX HAS 4 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       2.26       TIME AVG. FORCE        2.10    
 LARGEST RESIDUAL FORCE             1.390E-03   AT NODE       2747   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -2.590E-02   AT NODE        259   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -5.703E-03   AT NODE        259   DOF  2
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     1.116E-02   TIME AVG. MOMENT      9.487E-03
 LARGEST RESIDUAL MOMENT            4.587E-05   AT NODE       1534   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION     -9.310E-03   AT NODE       1549   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -2.187E-03   AT NODE       1549   DOF  4
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: THE SYSTEM MATRIX HAS 4 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       2.26       TIME AVG. FORCE        2.10    
 LARGEST RESIDUAL FORCE             2.388E-06   AT NODE       3494   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -2.597E-02   AT NODE        259   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        7.671E-05   AT NODE        252   DOF  2
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     1.116E-02   TIME AVG. MOMENT      9.487E-03
 LARGEST RESIDUAL MOMENT            9.607E-06   AT NODE       3479   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION     -9.326E-03   AT NODE       1549   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     2.989E-05   AT NODE       1444   DOF  4
   INSTANCE: SHELL-1                                                                         
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED

 ITERATION SUMMARY FOR THE INCREMENT:   3 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  3 ARE EQUILIBRIUM ITERATIONS.


                                INCREMENT   113 SUMMARY


     CURRENT LOAD PROPORTIONALITY FACTOR          1.202    
     TOTAL ARC LENGTH    8.84    , INCREMENT OF ARC LENGTH   0.100    


  INCREMENT   114 STARTS. ATTEMPT NUMBER  1

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: THE SYSTEM MATRIX HAS 4 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       2.26       TIME AVG. FORCE        2.10    
 LARGEST RESIDUAL FORCE             6.731E-02   AT NODE       2747   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -4.294E-02   AT NODE        259   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -4.294E-02   AT NODE        259   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     1.135E-02   TIME AVG. MOMENT      9.504E-03
 LARGEST RESIDUAL MOMENT            1.977E-03   AT NODE       1534   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION     -1.548E-02   AT NODE       1549   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -1.548E-02   AT NODE       1549   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          1

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       2.26       TIME AVG. FORCE        2.10    
 LARGEST RESIDUAL FORCE            -1.308E-02   AT NODE       2741   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -2.488E-02   AT NODE        259   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.805E-02   AT NODE        259   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     1.142E-02   TIME AVG. MOMENT      9.504E-03
 LARGEST RESIDUAL MOMENT           -3.656E-04   AT NODE       4393   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION     -9.091E-03   AT NODE       1549   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     6.393E-03   AT NODE       1549   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       2.26       TIME AVG. FORCE        2.10    
 LARGEST RESIDUAL FORCE             3.081E-02   AT NODE       3202   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.         1.502E-02   AT NODE        629   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        2.839E-02   AT NODE        533   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     1.138E-02   TIME AVG. MOMENT      9.504E-03
 LARGEST RESIDUAL MOMENT            9.270E-04   AT NODE       4379   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION      3.861E-03   AT NODE       1639   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -9.970E-03   AT NODE       4394   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: THE SYSTEM MATRIX HAS 3 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     4


 AVERAGE FORCE                       2.26       TIME AVG. FORCE        2.10    
 LARGEST RESIDUAL FORCE            -0.636       AT NODE        961   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.         0.126       AT NODE         43   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        0.127       AT NODE         43   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     1.180E-02   TIME AVG. MOMENT      9.507E-03
 LARGEST RESIDUAL MOMENT           -1.716E-02   AT NODE       1520   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION      4.678E-02   AT NODE       1535   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     4.704E-02   AT NODE       1535   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 

 ***NOTE: THE SOLUTION APPEARS TO BE DIVERGING. CONVERGENCE IS JUDGED UNLIKELY.


  INCREMENT   114 STARTS. ATTEMPT NUMBER  2

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =  0.10000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.40000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: THE SYSTEM MATRIX HAS 4 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       2.26       TIME AVG. FORCE        2.10    
 LARGEST RESIDUAL FORCE             4.140E-03   AT NODE       2747   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -1.065E-02   AT NODE        259   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -1.065E-02   AT NODE        259   DOF  2
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF DISP.    CORRECTION    6.399E-05
 FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                     1.120E-02   TIME AVG. MOMENT      9.502E-03
 LARGEST RESIDUAL MOMENT            1.291E-04   AT NODE       1534   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION     -3.840E-03   AT NODE       1549   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -3.840E-03   AT NODE       1549   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
 

 ***WARNING: THE SYSTEM MATRIX HAS 1 NEGATIVE EIGENVALUES.
             EXPLANATIONS ARE SUGGESTED AFTER THE FIRST OCCURRENCE OF THIS MESSAGE.

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       2.26       TIME AVG. FORCE        2.10    
 LARGEST RESIDUAL FORCE             1.273E-02   AT NODE       3202   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -2.823E-02   AT NODE        533   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -1.796E-02   AT NODE        533   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     1.115E-02   TIME AVG. MOMENT      9.502E-03
 LARGEST RESIDUAL MOMENT           -3.740E-04   AT NODE       4409   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION      1.013E-02   AT NODE       4394   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     6.432E-03   AT NODE       4394   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       2.26       TIME AVG. FORCE        2.10    
 LARGEST RESIDUAL FORCE            -1.263E-03   AT NODE       3196   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -2.262E-02   AT NODE        533   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        5.608E-03   AT NODE        533   DOF  2
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     1.114E-02   TIME AVG. MOMENT      9.502E-03
 LARGEST RESIDUAL MOMENT           -5.088E-05   AT NODE       4409   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION      8.017E-03   AT NODE       4394   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -2.114E-03   AT NODE       4394   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     4


 AVERAGE FORCE                       2.26       TIME AVG. FORCE        2.10    
 LARGEST RESIDUAL FORCE             1.732E-04   AT NODE       3202   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -2.045E-02   AT NODE        533   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        2.163E-03   AT NODE        533   DOF  2
   INSTANCE: SHELL-1                                                                         
          DISP.    CORRECTION TOO LARGE COMPARED TO DISP.    INCREMENT

 AVERAGE MOMENT                     1.113E-02   TIME AVG. MOMENT      9.502E-03
 LARGEST RESIDUAL MOMENT            6.832E-06   AT NODE        431   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION      7.247E-03   AT NODE       4394   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -7.698E-04   AT NODE       4394   DOF  4
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          1

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     5


 AVERAGE FORCE                       2.26       TIME AVG. FORCE        2.10    
 LARGEST RESIDUAL FORCE             1.918E-06   AT NODE       3202   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.         2.023E-02   AT NODE        650   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        2.227E-04   AT NODE        533   DOF  2
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF DISP.    CORRECTION    2.466E-06
 FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                     1.113E-02   TIME AVG. MOMENT      9.502E-03
 LARGEST RESIDUAL MOMENT            6.620E-07   AT NODE        432   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION     -7.166E-03   AT NODE       4408   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -8.090E-05   AT NODE       4394   DOF  4
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF ROTATION CORRECTION   -7.838E-06
 MOMENT    EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 ITERATION SUMMARY FOR THE INCREMENT:   5 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  5 ARE EQUILIBRIUM ITERATIONS.


                                INCREMENT   114 SUMMARY


     CURRENT LOAD PROPORTIONALITY FACTOR          1.202    
     TOTAL ARC LENGTH    8.86    , INCREMENT OF ARC LENGTH   2.500E-02


  INCREMENT   115 STARTS. ATTEMPT NUMBER  1

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       2.26       TIME AVG. FORCE        2.10    
 LARGEST RESIDUAL FORCE            -1.748E-03   AT NODE        853   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -6.852E-03   AT NODE        259   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -6.852E-03   AT NODE        259   DOF  2
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF DISP.    CORRECTION   -4.093E-05
 FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                     1.108E-02   TIME AVG. MOMENT      9.515E-03
 LARGEST RESIDUAL MOMENT            4.801E-05   AT NODE       1534   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION     -2.376E-03   AT NODE       1549   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -2.376E-03   AT NODE       1549   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       2.26       TIME AVG. FORCE        2.10    
 LARGEST RESIDUAL FORCE            -4.822E-05   AT NODE       2741   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -5.733E-03   AT NODE        259   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.119E-03   AT NODE        259   DOF  2
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF DISP.    CORRECTION    3.088E-05
 FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                     1.108E-02   TIME AVG. MOMENT      9.515E-03
 LARGEST RESIDUAL MOMENT           -3.778E-06   AT NODE        373   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION     -1.981E-03   AT NODE       1549   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     3.943E-04   AT NODE       1549   DOF  4
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =  0.10000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       2.26       TIME AVG. FORCE        2.10    
 LARGEST RESIDUAL FORCE            -1.279E-07   AT NODE       1534   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -5.680E-03   AT NODE        259   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        5.282E-05   AT NODE        259   DOF  2
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     1.108E-02   TIME AVG. MOMENT      9.515E-03
 LARGEST RESIDUAL MOMENT            2.087E-07   AT NODE        472   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION     -1.963E-03   AT NODE       1549   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.810E-05   AT NODE       1549   DOF  4
   INSTANCE: SHELL-1                                                                         
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED

 ITERATION SUMMARY FOR THE INCREMENT:   3 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  3 ARE EQUILIBRIUM ITERATIONS.


                                INCREMENT   115 SUMMARY


     CURRENT LOAD PROPORTIONALITY FACTOR          1.202    
     TOTAL ARC LENGTH    8.89    , INCREMENT OF ARC LENGTH   2.500E-02


  INCREMENT   116 STARTS. ATTEMPT NUMBER  1

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       2.26       TIME AVG. FORCE        2.10    
 LARGEST RESIDUAL FORCE            -1.686E-03   AT NODE        838   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -4.719E-03   AT NODE        259   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -4.719E-03   AT NODE        259   DOF  2
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF DISP.    CORRECTION    2.274E-05
 FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                     1.102E-02   TIME AVG. MOMENT      9.528E-03
 LARGEST RESIDUAL MOMENT            5.817E-05   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF ROTATION     -1.628E-03   AT NODE       1549   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -1.628E-03   AT NODE       1549   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       2.26       TIME AVG. FORCE        2.10    
 LARGEST RESIDUAL FORCE            -1.076E-05   AT NODE        961   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -4.192E-03   AT NODE        259   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        5.266E-04   AT NODE        259   DOF  2
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF DISP.    CORRECTION    3.362E-06
 FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                     1.102E-02   TIME AVG. MOMENT      9.528E-03
 LARGEST RESIDUAL MOMENT           -1.665E-06   AT NODE        373   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION     -1.448E-03   AT NODE       1549   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.797E-04   AT NODE       1549   DOF  4
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          1

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       2.26       TIME AVG. FORCE        2.10    
 LARGEST RESIDUAL FORCE             3.188E-08   AT NODE       1535   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -4.182E-03   AT NODE        259   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        9.769E-06   AT NODE        259   DOF  2
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     1.102E-02   TIME AVG. MOMENT      9.528E-03
 LARGEST RESIDUAL MOMENT           -1.156E-07   AT NODE          2   DOF  6
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF ROTATION     -1.445E-03   AT NODE       1549   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     3.092E-06   AT NODE       1549   DOF  4
   INSTANCE: SHELL-1                                                                         
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED
          ARC LENGTH INCREMENT MAY NOW INCREASE TO    3.750E-02

 ITERATION SUMMARY FOR THE INCREMENT:   3 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  3 ARE EQUILIBRIUM ITERATIONS.


                                INCREMENT   116 SUMMARY


     CURRENT LOAD PROPORTIONALITY FACTOR          1.201    
     TOTAL ARC LENGTH    8.91    , INCREMENT OF ARC LENGTH   2.500E-02


  INCREMENT   117 STARTS. ATTEMPT NUMBER  1

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       2.26       TIME AVG. FORCE        2.11    
 LARGEST RESIDUAL FORCE            -3.672E-03   AT NODE        838   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.         5.812E-03   AT NODE        275   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        5.812E-03   AT NODE        275   DOF  2
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF DISP.    CORRECTION   -3.278E-05
 FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                     1.092E-02   TIME AVG. MOMENT      9.540E-03
 LARGEST RESIDUAL MOMENT            1.586E-04   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF ROTATION     -1.928E-03   AT NODE       1549   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -1.928E-03   AT NODE       1549   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       2.26       TIME AVG. FORCE        2.11    
 LARGEST RESIDUAL FORCE            -1.725E-05   AT NODE       1520   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.         5.799E-03   AT NODE        275   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        6.642E-04   AT NODE        259   DOF  2
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF DISP.    CORRECTION    3.121E-06
 FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                     1.092E-02   TIME AVG. MOMENT      9.540E-03
 LARGEST RESIDUAL MOMENT            3.828E-06   AT NODE       2480   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION     -1.710E-03   AT NODE       1549   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     2.180E-04   AT NODE       1549   DOF  4
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       2.26       TIME AVG. FORCE        2.11    
 LARGEST RESIDUAL FORCE             4.793E-08   AT NODE       3479   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.         5.798E-03   AT NODE        275   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.428E-05   AT NODE        259   DOF  2
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     1.092E-02   TIME AVG. MOMENT      9.540E-03
 LARGEST RESIDUAL MOMENT           -9.926E-08   AT NODE       1445   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION     -1.705E-03   AT NODE       1549   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     4.031E-06   AT NODE       1549   DOF  4
   INSTANCE: SHELL-1                                                                         
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED
          ARC LENGTH INCREMENT MAY NOW INCREASE TO    5.625E-02

 ITERATION SUMMARY FOR THE INCREMENT:   3 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  3 ARE EQUILIBRIUM ITERATIONS.


                                INCREMENT   117 SUMMARY


     CURRENT LOAD PROPORTIONALITY FACTOR          1.199    
     TOTAL ARC LENGTH    8.95    , INCREMENT OF ARC LENGTH   3.750E-02


  INCREMENT   118 STARTS. ATTEMPT NUMBER  1

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       2.26       TIME AVG. FORCE        2.11    
 LARGEST RESIDUAL FORCE            -7.794E-03   AT NODE        838   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.         8.636E-03   AT NODE        275   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        8.636E-03   AT NODE        275   DOF  2
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF DISP.    CORRECTION   -5.973E-05
 FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                     1.078E-02   TIME AVG. MOMENT      9.551E-03
 LARGEST RESIDUAL MOMENT            4.129E-04   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF ROTATION     -2.269E-03   AT NODE       1549   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -2.269E-03   AT NODE       1549   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       2.26       TIME AVG. FORCE        2.11    
 LARGEST RESIDUAL FORCE            -2.765E-05   AT NODE       1520   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.         8.562E-03   AT NODE        275   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        8.443E-04   AT NODE        259   DOF  2
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF DISP.    CORRECTION    2.996E-06
 FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                     1.077E-02   TIME AVG. MOMENT      9.551E-03
 LARGEST RESIDUAL MOMENT           -8.593E-06   AT NODE       2509   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION     -2.007E-03   AT NODE       1549   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     2.620E-04   AT NODE       1549   DOF  4
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          1

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       2.26       TIME AVG. FORCE        2.11    
 LARGEST RESIDUAL FORCE             1.322E-07   AT NODE       2463   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.         8.555E-03   AT NODE        275   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -3.074E-05   AT NODE        851   DOF  3
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     1.077E-02   TIME AVG. MOMENT      9.551E-03
 LARGEST RESIDUAL MOMENT           -3.051E-07   AT NODE       2450   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION     -2.001E-03   AT NODE       1549   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     5.468E-06   AT NODE       1549   DOF  4
   INSTANCE: SHELL-1                                                                         
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED
          ARC LENGTH INCREMENT MAY NOW INCREASE TO    8.438E-02

 ITERATION SUMMARY FOR THE INCREMENT:   3 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  3 ARE EQUILIBRIUM ITERATIONS.


                                INCREMENT   118 SUMMARY


     CURRENT LOAD PROPORTIONALITY FACTOR          1.197    
     TOTAL ARC LENGTH    9.01    , INCREMENT OF ARC LENGTH   5.625E-02


  INCREMENT   119 STARTS. ATTEMPT NUMBER  1

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       2.25       TIME AVG. FORCE        2.11    
 LARGEST RESIDUAL FORCE            -1.600E-02   AT NODE        838   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.         1.265E-02   AT NODE        275   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.265E-02   AT NODE        275   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     1.055E-02   TIME AVG. MOMENT      9.559E-03
 LARGEST RESIDUAL MOMENT            1.037E-03   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF ROTATION     -2.654E-03   AT NODE       1549   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -2.654E-03   AT NODE       1549   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       2.25       TIME AVG. FORCE        2.11    
 LARGEST RESIDUAL FORCE            -8.562E-05   AT NODE        851   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.         1.248E-02   AT NODE        280   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.088E-03   AT NODE        259   DOF  2
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF DISP.    CORRECTION    5.819E-06
 FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                     1.054E-02   TIME AVG. MOMENT      9.559E-03
 LARGEST RESIDUAL MOMENT           -1.899E-05   AT NODE       2509   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION     -2.339E-03   AT NODE       1549   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     3.152E-04   AT NODE       1549   DOF  4
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       2.25       TIME AVG. FORCE        2.11    
 LARGEST RESIDUAL FORCE             1.001E-06   AT NODE        736   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.         1.246E-02   AT NODE        280   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -9.200E-05   AT NODE        851   DOF  3
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     1.054E-02   TIME AVG. MOMENT      9.559E-03
 LARGEST RESIDUAL MOMENT            1.434E-06   AT NODE       2464   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION     -2.331E-03   AT NODE       1549   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -1.573E-05   AT NODE        851   DOF  4
   INSTANCE: SHELL-1                                                                         
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED
          ARC LENGTH INCREMENT MAY NOW INCREASE TO    0.100    

 ITERATION SUMMARY FOR THE INCREMENT:   3 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  3 ARE EQUILIBRIUM ITERATIONS.


                                INCREMENT   119 SUMMARY


     CURRENT LOAD PROPORTIONALITY FACTOR          1.192    
     TOTAL ARC LENGTH    9.09    , INCREMENT OF ARC LENGTH   8.438E-02


  INCREMENT   120 STARTS. ATTEMPT NUMBER  1

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       2.25       TIME AVG. FORCE        2.11    
 LARGEST RESIDUAL FORCE            -1.968E-02   AT NODE        838   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.         1.454E-02   AT NODE        280   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.454E-02   AT NODE        280   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     1.025E-02   TIME AVG. MOMENT      9.565E-03
 LARGEST RESIDUAL MOMENT            1.561E-03   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF ROTATION      2.911E-03   AT NODE       3479   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     2.911E-03   AT NODE       3479   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       2.25       TIME AVG. FORCE        2.11    
 LARGEST RESIDUAL FORCE            -1.019E-04   AT NODE        851   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.         1.432E-02   AT NODE        280   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        9.280E-04   AT NODE        259   DOF  2
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF DISP.    CORRECTION    4.805E-06
 FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                     1.024E-02   TIME AVG. MOMENT      9.565E-03
 LARGEST RESIDUAL MOMENT           -2.411E-05   AT NODE       2509   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION      3.144E-03   AT NODE       3479   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     2.522E-04   AT NODE       1549   DOF  4
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       2.25       TIME AVG. FORCE        2.11    
 LARGEST RESIDUAL FORCE             1.204E-06   AT NODE        752   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.         1.429E-02   AT NODE        280   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -1.005E-04   AT NODE        851   DOF  3
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     1.024E-02   TIME AVG. MOMENT      9.565E-03
 LARGEST RESIDUAL MOMENT            2.450E-06   AT NODE       2464   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION      3.153E-03   AT NODE       3479   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -1.701E-05   AT NODE        851   DOF  4
   INSTANCE: SHELL-1                                                                         
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED

 ITERATION SUMMARY FOR THE INCREMENT:   3 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  3 ARE EQUILIBRIUM ITERATIONS.


                                INCREMENT   120 SUMMARY


     CURRENT LOAD PROPORTIONALITY FACTOR          1.186    
     TOTAL ARC LENGTH    9.19    , INCREMENT OF ARC LENGTH   0.100    


  INCREMENT   121 STARTS. ATTEMPT NUMBER  1

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =  0.10000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          1

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                       2.25       TIME AVG. FORCE        2.11    
 LARGEST RESIDUAL FORCE            -1.711E-02   AT NODE        838   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.         1.400E-02   AT NODE        280   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.400E-02   AT NODE        280   DOF  2
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     9.939E-03   TIME AVG. MOMENT      9.568E-03
 LARGEST RESIDUAL MOMENT            1.592E-03   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF ROTATION      3.398E-03   AT NODE       3479   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     3.398E-03   AT NODE       3479   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          0

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                       2.25       TIME AVG. FORCE        2.11    
 LARGEST RESIDUAL FORCE             6.191E-05   AT NODE        736   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.         1.377E-02   AT NODE        280   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -7.169E-04   AT NODE        851   DOF  3
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF DISP.    CORRECTION    2.594E-06
 FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                     9.930E-03   TIME AVG. MOMENT      9.568E-03
 LARGEST RESIDUAL MOMENT           -2.144E-05   AT NODE       2509   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION     -3.660E-03   AT NODE       3493   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -2.621E-04   AT NODE       3493   DOF  4
   INSTANCE: SHELL-1                                                                         
          ROTATION CORRECTION TOO LARGE COMPARED TO ROTATION INCREMENT

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.30000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.30000    
       ELAPSED WALLCLOCK TIME (SEC) =          1

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                       2.25       TIME AVG. FORCE        2.11    
 LARGEST RESIDUAL FORCE            -7.411E-07   AT NODE       3492   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.         1.375E-02   AT NODE        280   DOF  2
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -5.499E-05   AT NODE        851   DOF  3
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     9.929E-03   TIME AVG. MOMENT      9.568E-03
 LARGEST RESIDUAL MOMENT            2.265E-06   AT NODE       2464   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION     -3.666E-03   AT NODE       3493   DOF  4
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     9.242E-06   AT NODE        835   DOF  4
   INSTANCE: SHELL-1                                                                         
          THE MOMENT    EQUILIBRIUM EQUATIONS HAVE CONVERGED

 ITERATION SUMMARY FOR THE INCREMENT:   3 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  3 ARE EQUILIBRIUM ITERATIONS.


                                INCREMENT   121 SUMMARY


     CURRENT LOAD PROPORTIONALITY FACTOR          1.180    
     TOTAL ARC LENGTH    9.29    , INCREMENT OF ARC LENGTH   0.100    


  INCREMENT   122 STARTS. ATTEMPT NUMBER  1

  NUMBER OF EQUATIONS =     29712     NUMBER OF RHS =    2
  NUMBER OF FLOATING PT. OPERATIONS =  1.91E+09

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =  0.20000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =  0.20000    
       ELAPSED WALLCLOCK TIME (SEC) =          0
