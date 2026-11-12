1

   Abaqus 2020                                  Date 10-Nov-2026   Time 17:50:58
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

     CHARACTERISTIC ELEMENT LENGTH      2.50    

     DETAILS REGARDING ACTUAL SOLUTION WAVEFRONT REQUESTED

     DETAILED OUTPUT OF DIAGNOSTICS TO DATABASE REQUESTED

     PRINT OF INCREMENT NUMBER, TIME, ETC., TO THE MESSAGE FILE EVERY     1  INCREMENTS

     COLLECTING MODEL CONSTRAINT INFORMATION FOR OVERCONSTRAINT CHECKS

     COLLECTING STEP CONSTRAINT INFORMATION FOR OVERCONSTRAINT CHECKS


  INCREMENT     1 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  0.100    

  NUMBER OF EQUATIONS =    119412     NUMBER OF RHS =    1
  NUMBER OF FLOATING PT. OPERATIONS =  1.57E+10

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   1.4000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   1.4000    
       ELAPSED WALLCLOCK TIME (SEC) =          2

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      4.089E-02   TIME AVG. FORCE       4.089E-02
 LARGEST RESIDUAL FORCE            -3.844E-03   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF DISP.        -9.160E-03   AT NODE        443   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -9.160E-03   AT NODE        443   DOF  1
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     4.833E-06   TIME AVG. MOMENT      4.833E-06
 LARGEST RESIDUAL MOMENT           -2.555E-06   AT NODE       3214   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION     -2.135E-04   AT NODE       3215   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -2.135E-04   AT NODE       3215   DOF  6
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =    119412     NUMBER OF RHS =    1
  NUMBER OF FLOATING PT. OPERATIONS =  1.57E+10

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   1.4000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   1.4000    
       ELAPSED WALLCLOCK TIME (SEC) =          2

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                      4.089E-02   TIME AVG. FORCE       4.089E-02
 LARGEST RESIDUAL FORCE            -2.319E-07   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF DISP.        -9.160E-03   AT NODE        443   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -3.091E-06   AT NODE      12201   DOF  2
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     4.856E-06   TIME AVG. MOMENT      4.856E-06
 LARGEST RESIDUAL MOMENT           -2.090E-07   AT NODE          2   DOF  6
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF ROTATION      2.153E-04   AT NODE       3187   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.720E-06   AT NODE       3187   DOF  6
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =    119412     NUMBER OF RHS =    1
  NUMBER OF FLOATING PT. OPERATIONS =  1.57E+10

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   1.4000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   1.4000    
       ELAPSED WALLCLOCK TIME (SEC) =          2

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                      4.089E-02   TIME AVG. FORCE       4.089E-02
 LARGEST RESIDUAL FORCE            -1.862E-08   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF DISP.        -9.160E-03   AT NODE        443   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        2.966E-11   AT NODE      15055   DOF  2
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     4.856E-06   TIME AVG. MOMENT      4.856E-06
 LARGEST RESIDUAL MOMENT            2.530E-07   AT NODE          2   DOF  6
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF ROTATION      2.153E-04   AT NODE       9353   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -2.317E-11   AT NODE      12202   DOF  5
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =    119412     NUMBER OF RHS =    1
  NUMBER OF FLOATING PT. OPERATIONS =  1.57E+10

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   1.3000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   1.3000    
       ELAPSED WALLCLOCK TIME (SEC) =          2

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     4


 AVERAGE FORCE                      4.089E-02   TIME AVG. FORCE       4.089E-02
 LARGEST RESIDUAL FORCE             2.066E-08   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF DISP.        -9.160E-03   AT NODE        443   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        6.777E-12   AT NODE        499   DOF  2
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     4.856E-06   TIME AVG. MOMENT      4.856E-06
 LARGEST RESIDUAL MOMENT            3.735E-08   AT NODE          2   DOF  6
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF ROTATION     -2.153E-04   AT NODE       3215   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -1.634E-12   AT NODE       3963   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =    119412     NUMBER OF RHS =    1
  NUMBER OF FLOATING PT. OPERATIONS =  1.57E+10

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   1.4000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   1.4000    
       ELAPSED WALLCLOCK TIME (SEC) =          2

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     5


 AVERAGE FORCE                      4.089E-02   TIME AVG. FORCE       4.089E-02
 LARGEST RESIDUAL FORCE             3.851E-09   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF DISP.        -9.160E-03   AT NODE        444   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        7.636E-12   AT NODE       5232   DOF  2
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     4.856E-06   TIME AVG. MOMENT      4.856E-06
 LARGEST RESIDUAL MOMENT           -6.261E-08   AT NODE          2   DOF  6
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF ROTATION      2.153E-04   AT NODE       3187   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.418E-12   AT NODE       4834   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =    119412     NUMBER OF RHS =    1
  NUMBER OF FLOATING PT. OPERATIONS =  1.57E+10

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   1.5000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   1.5000    
       ELAPSED WALLCLOCK TIME (SEC) =          2

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     6


 AVERAGE FORCE                      4.089E-02   TIME AVG. FORCE       4.089E-02
 LARGEST RESIDUAL FORCE            -5.952E-09   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF DISP.        -9.160E-03   AT NODE        444   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -5.543E-12   AT NODE      13876   DOF  2
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     4.856E-06   TIME AVG. MOMENT      4.856E-06
 LARGEST RESIDUAL MOMENT           -1.109E-07   AT NODE          2   DOF  6
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF ROTATION      2.153E-04   AT NODE       3187   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -1.483E-12   AT NODE      18608   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 

 ***NOTE: THE SOLUTION APPEARS TO BE DIVERGING. CONVERGENCE IS JUDGED UNLIKELY.


  INCREMENT     1 STARTS. ATTEMPT NUMBER  2, TIME INCREMENT  2.500E-02

  NUMBER OF EQUATIONS =    119412     NUMBER OF RHS =    1
  NUMBER OF FLOATING PT. OPERATIONS =  1.57E+10

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   1.4000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   1.4000    
       ELAPSED WALLCLOCK TIME (SEC) =          2

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      1.022E-02   TIME AVG. FORCE       1.022E-02
 LARGEST RESIDUAL FORCE            -2.402E-04   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF DISP.        -2.290E-03   AT NODE        442   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -2.290E-03   AT NODE        442   DOF  1
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     1.208E-06   TIME AVG. MOMENT      1.208E-06
 LARGEST RESIDUAL MOMENT            1.597E-07   AT NODE       3188   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION     -5.339E-05   AT NODE       3215   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -5.339E-05   AT NODE       3215   DOF  6
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =    119412     NUMBER OF RHS =    1
  NUMBER OF FLOATING PT. OPERATIONS =  1.57E+10

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   1.5000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   1.5000    
       ELAPSED WALLCLOCK TIME (SEC) =          2

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                      1.022E-02   TIME AVG. FORCE       1.022E-02
 LARGEST RESIDUAL FORCE            -1.590E-08   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF DISP.        -2.290E-03   AT NODE        442   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -1.913E-07   AT NODE       3218   DOF  2
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     1.209E-06   TIME AVG. MOMENT      1.209E-06
 LARGEST RESIDUAL MOMENT           -3.767E-08   AT NODE          2   DOF  6
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF ROTATION      5.349E-05   AT NODE       3187   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.064E-07   AT NODE      12170   DOF  6
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =    119412     NUMBER OF RHS =    1
  NUMBER OF FLOATING PT. OPERATIONS =  1.57E+10

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   1.4000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   1.4000    
       ELAPSED WALLCLOCK TIME (SEC) =          2

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                      1.022E-02   TIME AVG. FORCE       1.022E-02
 LARGEST RESIDUAL FORCE             2.735E-08   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF DISP.        -2.290E-03   AT NODE        444   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        5.093E-12   AT NODE       1457   DOF  3
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     1.209E-06   TIME AVG. MOMENT      1.209E-06
 LARGEST RESIDUAL MOMENT           -1.560E-07   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF ROTATION     -5.349E-05   AT NODE      12142   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -1.634E-12   AT NODE       2042   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =    119412     NUMBER OF RHS =    1
  NUMBER OF FLOATING PT. OPERATIONS =  1.57E+10

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   1.3000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   1.3000    
       ELAPSED WALLCLOCK TIME (SEC) =          1

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     4


 AVERAGE FORCE                      1.022E-02   TIME AVG. FORCE       1.022E-02
 LARGEST RESIDUAL FORCE            -1.143E-08   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF DISP.        -2.290E-03   AT NODE        441   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        7.415E-12   AT NODE      13443   DOF  2
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     1.209E-06   TIME AVG. MOMENT      1.209E-06
 LARGEST RESIDUAL MOMENT            1.955E-07   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF ROTATION      5.349E-05   AT NODE       9353   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.430E-12   AT NODE       3667   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 

 ***NOTE: THE SOLUTION APPEARS TO BE DIVERGING. CONVERGENCE IS JUDGED UNLIKELY.


  INCREMENT     1 STARTS. ATTEMPT NUMBER  3, TIME INCREMENT  6.250E-03

  NUMBER OF EQUATIONS =    119412     NUMBER OF RHS =    1
  NUMBER OF FLOATING PT. OPERATIONS =  1.57E+10

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   1.4000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   1.4000    
       ELAPSED WALLCLOCK TIME (SEC) =          2

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      2.555E-03   TIME AVG. FORCE       2.555E-03
 LARGEST RESIDUAL FORCE            -1.502E-05   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF DISP.        -5.725E-04   AT NODE        444   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -5.725E-04   AT NODE        444   DOF  1
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     3.020E-07   TIME AVG. MOMENT      3.020E-07
 LARGEST RESIDUAL MOMENT           -1.169E-07   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF ROTATION     -1.335E-05   AT NODE       3215   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -1.335E-05   AT NODE       3215   DOF  6
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =    119412     NUMBER OF RHS =    1
  NUMBER OF FLOATING PT. OPERATIONS =  1.57E+10

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   1.4000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   1.4000    
       ELAPSED WALLCLOCK TIME (SEC) =          2

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                      2.555E-03   TIME AVG. FORCE       2.555E-03
 LARGEST RESIDUAL FORCE             1.641E-08   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF DISP.        -5.725E-04   AT NODE        437   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -1.193E-08   AT NODE      12201   DOF  2
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     3.021E-07   TIME AVG. MOMENT      3.021E-07
 LARGEST RESIDUAL MOMENT            1.679E-07   AT NODE          2   DOF  6
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF ROTATION     -1.335E-05   AT NODE      12142   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -6.634E-09   AT NODE      12142   DOF  6
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =    119412     NUMBER OF RHS =    1
  NUMBER OF FLOATING PT. OPERATIONS =  1.57E+10

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   1.4000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   1.4000    
       ELAPSED WALLCLOCK TIME (SEC) =          2

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                      2.555E-03   TIME AVG. FORCE       2.555E-03
 LARGEST RESIDUAL FORCE            -2.507E-08   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF DISP.        -5.725E-04   AT NODE        443   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -5.690E-12   AT NODE       1751   DOF  3
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     3.021E-07   TIME AVG. MOMENT      3.021E-07
 LARGEST RESIDUAL MOMENT           -1.342E-07   AT NODE          2   DOF  6
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF ROTATION     -1.335E-05   AT NODE       3215   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -1.323E-12   AT NODE       9522   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =    119412     NUMBER OF RHS =    1
  NUMBER OF FLOATING PT. OPERATIONS =  1.57E+10

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   1.4000    
       ELAPSED SYSTEM TIME (SEC)    =  0.10000    
       ELAPSED TOTAL CPU TIME (SEC) =   1.5000    
       ELAPSED WALLCLOCK TIME (SEC) =          2

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     4


 AVERAGE FORCE                      2.555E-03   TIME AVG. FORCE       2.555E-03
 LARGEST RESIDUAL FORCE             1.488E-08   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF DISP.        -5.725E-04   AT NODE        437   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        6.413E-12   AT NODE       1438   DOF  3
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     3.021E-07   TIME AVG. MOMENT      3.021E-07
 LARGEST RESIDUAL MOMENT            1.472E-07   AT NODE          2   DOF  6
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF ROTATION     -1.335E-05   AT NODE      12142   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -1.671E-12   AT NODE      18741   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =    119412     NUMBER OF RHS =    1
  NUMBER OF FLOATING PT. OPERATIONS =  1.57E+10

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   1.4000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   1.4000    
       ELAPSED WALLCLOCK TIME (SEC) =          2

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     5


 AVERAGE FORCE                      2.555E-03   TIME AVG. FORCE       2.555E-03
 LARGEST RESIDUAL FORCE             6.312E-09   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF DISP.        -5.725E-04   AT NODE        441   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -4.667E-12   AT NODE       1439   DOF  3
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     3.021E-07   TIME AVG. MOMENT      3.021E-07
 LARGEST RESIDUAL MOMENT           -2.816E-07   AT NODE          2   DOF  6
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF ROTATION     -1.335E-05   AT NODE       3215   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -1.380E-12   AT NODE       2132   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 

 ***NOTE: THE SOLUTION APPEARS TO BE DIVERGING. CONVERGENCE IS JUDGED UNLIKELY.


  INCREMENT     1 STARTS. ATTEMPT NUMBER  4, TIME INCREMENT  1.563E-03

  NUMBER OF EQUATIONS =    119412     NUMBER OF RHS =    1
  NUMBER OF FLOATING PT. OPERATIONS =  1.57E+10

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   1.3000    
       ELAPSED SYSTEM TIME (SEC)    =  0.10000    
       ELAPSED TOTAL CPU TIME (SEC) =   1.4000    
       ELAPSED WALLCLOCK TIME (SEC) =          1

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      6.388E-04   TIME AVG. FORCE       6.388E-04
 LARGEST RESIDUAL FORCE            -9.405E-07   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF DISP.        -1.431E-04   AT NODE        429   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -1.431E-04   AT NODE        429   DOF  1
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF DISP.    CORRECTION   -3.525E-10
 FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                     7.550E-08   TIME AVG. MOMENT      2.504E-02
                                                (FROM FORCE     FIELD)
 LARGEST RESIDUAL MOMENT           -2.683E-07   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF ROTATION     -3.337E-06   AT NODE       3215   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -3.337E-06   AT NODE       3215   DOF  6
   INSTANCE: SHELL-1                                                                         
          THE MOMENT    IS ZERO EVERYWHERE BUT THE MOMENT    RESIDUAL OR
          THE ROTATION CORRECTION IS NON-ZERO

  NUMBER OF EQUATIONS =    119412     NUMBER OF RHS =    1
  NUMBER OF FLOATING PT. OPERATIONS =  1.57E+10

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   1.5000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   1.5000    
       ELAPSED WALLCLOCK TIME (SEC) =          1

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                      6.388E-04   TIME AVG. FORCE       6.388E-04
 LARGEST RESIDUAL FORCE             4.588E-09   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF DISP.        -1.431E-04   AT NODE        430   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -7.456E-10   AT NODE       3218   DOF  2
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     7.550E-08   TIME AVG. MOMENT      2.504E-02
                                                (FROM FORCE     FIELD)
 LARGEST RESIDUAL MOMENT            4.502E-07   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF ROTATION     -3.337E-06   AT NODE       3215   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -4.144E-10   AT NODE       3215   DOF  6
   INSTANCE: SHELL-1                                                                         
          ALL ROTATION CORRECTIONS ARE ZERO

 ITERATION SUMMARY FOR THE INCREMENT:   2 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  2 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  1.563E-03,  FRACTION OF STEP COMPLETED  1.563E-03
 STEP TIME COMPLETED       1.563E-03,  TOTAL TIME COMPLETED        1.563E-03


  INCREMENT     2 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  1.563E-03

  NUMBER OF EQUATIONS =    119412     NUMBER OF RHS =    1
  NUMBER OF FLOATING PT. OPERATIONS =  1.57E+10

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   1.5000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   1.5000    
       ELAPSED WALLCLOCK TIME (SEC) =          2

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      3.529E-03   TIME AVG. FORCE       2.084E-03
 LARGEST RESIDUAL FORCE             1.237E-08   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF DISP.        -1.431E-04   AT NODE        449   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.492E-09   AT NODE       3246   DOF  2
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     1.510E-07   TIME AVG. MOMENT      1.510E-07
 LARGEST RESIDUAL MOMENT            9.358E-08   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF ROTATION     -3.338E-06   AT NODE      12142   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -8.295E-10   AT NODE      12142   DOF  6
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =    119412     NUMBER OF RHS =    1
  NUMBER OF FLOATING PT. OPERATIONS =  1.57E+10

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   1.4000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   1.4000    
       ELAPSED WALLCLOCK TIME (SEC) =          2

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                      3.529E-03   TIME AVG. FORCE       2.084E-03
 LARGEST RESIDUAL FORCE            -2.459E-08   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF DISP.        -1.431E-04   AT NODE          7   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        8.237E-12   AT NODE      13659   DOF  2
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     1.510E-07   TIME AVG. MOMENT      1.510E-07
 LARGEST RESIDUAL MOMENT           -2.025E-07   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF ROTATION      3.338E-06   AT NODE      12170   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -1.673E-12   AT NODE      13468   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =    119412     NUMBER OF RHS =    1
  NUMBER OF FLOATING PT. OPERATIONS =  1.57E+10

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   1.5000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   1.5000    
       ELAPSED WALLCLOCK TIME (SEC) =          2

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                      3.529E-03   TIME AVG. FORCE       2.084E-03
 LARGEST RESIDUAL FORCE             3.556E-09   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF DISP.        -1.431E-04   AT NODE        449   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        4.964E-12   AT NODE       4778   DOF  3
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     1.510E-07   TIME AVG. MOMENT      1.510E-07
 LARGEST RESIDUAL MOMENT            1.877E-07   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF ROTATION     -3.338E-06   AT NODE      12142   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.711E-12   AT NODE       4789   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =    119412     NUMBER OF RHS =    1
  NUMBER OF FLOATING PT. OPERATIONS =  1.57E+10

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   1.4000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   1.4000    
       ELAPSED WALLCLOCK TIME (SEC) =          1

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     4


 AVERAGE FORCE                      3.529E-03   TIME AVG. FORCE       2.084E-03
 LARGEST RESIDUAL FORCE             3.098E-09   AT NODE      19946   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -1.431E-04   AT NODE          2   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -5.921E-12   AT NODE        971   DOF  2
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     1.510E-07   TIME AVG. MOMENT      1.510E-07
 LARGEST RESIDUAL MOMENT           -8.227E-08   AT NODE          2   DOF  6
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF ROTATION     -3.338E-06   AT NODE      12142   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -1.604E-12   AT NODE       9464   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =    119412     NUMBER OF RHS =    1
  NUMBER OF FLOATING PT. OPERATIONS =  1.57E+10

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   1.4000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   1.4000    
       ELAPSED WALLCLOCK TIME (SEC) =          1

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     5


 AVERAGE FORCE                      3.529E-03   TIME AVG. FORCE       2.084E-03
 LARGEST RESIDUAL FORCE             2.400E-08   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF DISP.        -1.431E-04   AT NODE         11   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        7.265E-12   AT NODE        972   DOF  2
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     1.510E-07   TIME AVG. MOMENT      1.510E-07
 LARGEST RESIDUAL MOMENT            1.732E-07   AT NODE          2   DOF  6
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF ROTATION     -3.338E-06   AT NODE      12142   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.339E-12   AT NODE       5084   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =    119412     NUMBER OF RHS =    1
  NUMBER OF FLOATING PT. OPERATIONS =  1.57E+10

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   1.3000    
       ELAPSED SYSTEM TIME (SEC)    =  0.10000    
       ELAPSED TOTAL CPU TIME (SEC) =   1.4000    
       ELAPSED WALLCLOCK TIME (SEC) =          1

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     6


 AVERAGE FORCE                      3.529E-03   TIME AVG. FORCE       2.084E-03
 LARGEST RESIDUAL FORCE            -1.498E-08   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF DISP.        -1.431E-04   AT NODE        449   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -5.512E-12   AT NODE       1177   DOF  2
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     1.510E-07   TIME AVG. MOMENT      1.510E-07
 LARGEST RESIDUAL MOMENT           -1.470E-07   AT NODE          2   DOF  6
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF ROTATION     -3.338E-06   AT NODE      12142   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -1.539E-12   AT NODE      13355   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =    119412     NUMBER OF RHS =    1
  NUMBER OF FLOATING PT. OPERATIONS =  1.57E+10

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   1.4000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   1.4000    
       ELAPSED WALLCLOCK TIME (SEC) =          1

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     7


 AVERAGE FORCE                      3.529E-03   TIME AVG. FORCE       2.084E-03
 LARGEST RESIDUAL FORCE             5.783E-09   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF DISP.        -1.431E-04   AT NODE        449   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -5.492E-12   AT NODE        529   DOF  2
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     1.510E-07   TIME AVG. MOMENT      1.510E-07
 LARGEST RESIDUAL MOMENT            9.007E-08   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF ROTATION     -3.338E-06   AT NODE      12142   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -1.452E-12   AT NODE       3946   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =    119412     NUMBER OF RHS =    1
  NUMBER OF FLOATING PT. OPERATIONS =  1.57E+10

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   1.3000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   1.3000    
       ELAPSED WALLCLOCK TIME (SEC) =          1

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     8


 AVERAGE FORCE                      3.529E-03   TIME AVG. FORCE       2.084E-03
 LARGEST RESIDUAL FORCE            -7.458E-09   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF DISP.        -1.431E-04   AT NODE          2   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -5.925E-12   AT NODE       1729   DOF  3
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     1.510E-07   TIME AVG. MOMENT      1.510E-07
 LARGEST RESIDUAL MOMENT           -4.334E-08   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF ROTATION     -3.338E-06   AT NODE      12142   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -1.490E-12   AT NODE      10934   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =    119412     NUMBER OF RHS =    1
  NUMBER OF FLOATING PT. OPERATIONS =  1.57E+10

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   1.4000    
       ELAPSED SYSTEM TIME (SEC)    =  0.10000    
       ELAPSED TOTAL CPU TIME (SEC) =   1.5000    
       ELAPSED WALLCLOCK TIME (SEC) =          1

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     9


 AVERAGE FORCE                      3.529E-03   TIME AVG. FORCE       2.084E-03
 LARGEST RESIDUAL FORCE             2.034E-09   AT NODE        762   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -1.431E-04   AT NODE        449   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -4.298E-12   AT NODE      13474   DOF  2
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     1.510E-07   TIME AVG. MOMENT      1.510E-07
 LARGEST RESIDUAL MOMENT            4.644E-08   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF ROTATION     -3.338E-06   AT NODE      12142   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.436E-12   AT NODE       1930   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 

 ***NOTE: THE RATE OF CONVERGENCE IS VERY SLOW. CONVERGENCE IS JUDGED UNLIKELY.


  INCREMENT     2 STARTS. ATTEMPT NUMBER  2, TIME INCREMENT  7.813E-04

  NUMBER OF EQUATIONS =    119412     NUMBER OF RHS =    1
  NUMBER OF FLOATING PT. OPERATIONS =  1.57E+10

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   1.4000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   1.4000    
       ELAPSED WALLCLOCK TIME (SEC) =          2

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      2.678E-03   TIME AVG. FORCE       1.658E-03
 LARGEST RESIDUAL FORCE            -6.821E-09   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF DISP.        -7.156E-05   AT NODE          5   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        5.599E-10   AT NODE      12173   DOF  2
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     1.133E-07   TIME AVG. MOMENT      1.133E-07
 LARGEST RESIDUAL MOMENT           -1.865E-07   AT NODE          2   DOF  6
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF ROTATION     -1.669E-06   AT NODE      12142   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -3.112E-10   AT NODE      12142   DOF  6
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =    119412     NUMBER OF RHS =    1
  NUMBER OF FLOATING PT. OPERATIONS =  1.57E+10

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   1.4000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   1.4000    
       ELAPSED WALLCLOCK TIME (SEC) =          2

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                      2.678E-03   TIME AVG. FORCE       1.658E-03
 LARGEST RESIDUAL FORCE             5.411E-09   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF DISP.        -7.156E-05   AT NODE          7   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        6.790E-12   AT NODE       1214   DOF  2
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     1.133E-07   TIME AVG. MOMENT      1.133E-07
 LARGEST RESIDUAL MOMENT           -8.815E-08   AT NODE          2   DOF  6
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF ROTATION     -1.669E-06   AT NODE      12142   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.404E-12   AT NODE      18782   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =    119412     NUMBER OF RHS =    1
  NUMBER OF FLOATING PT. OPERATIONS =  1.57E+10

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   1.4000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   1.4000    
       ELAPSED WALLCLOCK TIME (SEC) =          1

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                      2.678E-03   TIME AVG. FORCE       1.658E-03
 LARGEST RESIDUAL FORCE             2.239E-08   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF DISP.        -7.156E-05   AT NODE          2   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        4.998E-12   AT NODE      13566   DOF  2
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     1.133E-07   TIME AVG. MOMENT      1.133E-07
 LARGEST RESIDUAL MOMENT            9.198E-08   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF ROTATION      1.669E-06   AT NODE      12170   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.372E-12   AT NODE       1192   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =    119412     NUMBER OF RHS =    1
  NUMBER OF FLOATING PT. OPERATIONS =  1.57E+10

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   1.4000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   1.4000    
       ELAPSED WALLCLOCK TIME (SEC) =          1

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     4


 AVERAGE FORCE                      2.678E-03   TIME AVG. FORCE       1.658E-03
 LARGEST RESIDUAL FORCE            -2.434E-08   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF DISP.        -7.156E-05   AT NODE        449   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -5.156E-12   AT NODE       1727   DOF  3
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     1.133E-07   TIME AVG. MOMENT      1.133E-07
 LARGEST RESIDUAL MOMENT            1.787E-07   AT NODE          2   DOF  6
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF ROTATION      1.669E-06   AT NODE      12170   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -1.489E-12   AT NODE      14017   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 

 ***NOTE: THE SOLUTION APPEARS TO BE DIVERGING. CONVERGENCE IS JUDGED UNLIKELY.


  INCREMENT     2 STARTS. ATTEMPT NUMBER  3, TIME INCREMENT  1.953E-04

  NUMBER OF EQUATIONS =    119412     NUMBER OF RHS =    1
  NUMBER OF FLOATING PT. OPERATIONS =  1.57E+10

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   1.5000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   1.5000    
       ELAPSED WALLCLOCK TIME (SEC) =          2

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      2.025E-03   TIME AVG. FORCE       1.332E-03
 LARGEST RESIDUAL FORCE             1.515E-08   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF DISP.        -1.789E-05   AT NODE          7   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.056E-10   AT NODE       3246   DOF  2
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     8.494E-08   TIME AVG. MOMENT      1.000E-02
 LARGEST RESIDUAL MOMENT           -1.015E-07   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF ROTATION     -4.172E-07   AT NODE      12142   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -5.854E-11   AT NODE      12142   DOF  6
   INSTANCE: SHELL-1                                                                         
          ALL ROTATION CORRECTIONS ARE ZERO
          TIME INCREMENT MAY NOW INCREASE TO    2.930E-04

 ITERATION SUMMARY FOR THE INCREMENT:   1 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  1 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  1.953E-04,  FRACTION OF STEP COMPLETED  1.758E-03
 STEP TIME COMPLETED       1.758E-03,  TOTAL TIME COMPLETED        1.758E-03


  INCREMENT     3 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  2.930E-04

  NUMBER OF EQUATIONS =    119412     NUMBER OF RHS =    1
  NUMBER OF FLOATING PT. OPERATIONS =  1.57E+10

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   1.3000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   1.3000    
       ELAPSED WALLCLOCK TIME (SEC) =          2

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      2.356E-03   TIME AVG. FORCE       1.674E-03
 LARGEST RESIDUAL FORCE             7.354E-09   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF DISP.        -2.684E-05   AT NODE        435   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -4.503E-11   AT NODE      12201   DOF  2
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     9.910E-08   TIME AVG. MOMENT      1.000E-02
 LARGEST RESIDUAL MOMENT           -4.999E-08   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF ROTATION      6.258E-07   AT NODE      12170   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     2.452E-11   AT NODE      12170   DOF  6
   INSTANCE: SHELL-1                                                                         
          THERE IS ZERO MOMENT    EVERYWHERE
 

 ***WARNING: THERE IS ZERO MOMENT EVERYWHERE IN THE MODEL BASED ON THE DEFAULT 
             CRITERION. PLEASE CHECK THE VALUE OF THE AVERAGE MOMENT DURING THE 
             CURRENT ITERATION TO VERIFY THAT THE MOMENT IS SMALL ENOUGH TO BE 
             TREATED AS ZERO. IF NOT, PLEASE USE THE SOLUTION CONTROLS TO RESET 
             THE CRITERION FOR ZERO MOMENT.
          TIME INCREMENT MAY NOW INCREASE TO    4.395E-04

 ITERATION SUMMARY FOR THE INCREMENT:   1 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  1 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  2.930E-04,  FRACTION OF STEP COMPLETED  2.051E-03
 STEP TIME COMPLETED       2.051E-03,  TOTAL TIME COMPLETED        2.051E-03


  INCREMENT     4 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  4.395E-04

  NUMBER OF EQUATIONS =    119412     NUMBER OF RHS =    1
  NUMBER OF FLOATING PT. OPERATIONS =  1.57E+10

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   1.4000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   1.4000    
       ELAPSED WALLCLOCK TIME (SEC) =          1

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      2.852E-03   TIME AVG. FORCE       1.968E-03
 LARGEST RESIDUAL FORCE             1.206E-08   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF DISP.        -4.025E-05   AT NODE          7   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        9.937E-11   AT NODE       3246   DOF  2
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     1.203E-07   TIME AVG. MOMENT      1.203E-07
 LARGEST RESIDUAL MOMENT           -2.763E-07   AT NODE          2   DOF  6
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF ROTATION     -9.387E-07   AT NODE      12142   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -5.534E-11   AT NODE      12142   DOF  6
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =    119412     NUMBER OF RHS =    1
  NUMBER OF FLOATING PT. OPERATIONS =  1.57E+10

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   1.3000    
       ELAPSED SYSTEM TIME (SEC)    =  0.10000    
       ELAPSED TOTAL CPU TIME (SEC) =   1.4000    
       ELAPSED WALLCLOCK TIME (SEC) =          1

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                      2.852E-03   TIME AVG. FORCE       1.968E-03
 LARGEST RESIDUAL FORCE            -6.326E-09   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF DISP.        -4.025E-05   AT NODE          7   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -4.175E-12   AT NODE       1436   DOF  3
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     1.203E-07   TIME AVG. MOMENT      1.203E-07
 LARGEST RESIDUAL MOMENT           -2.239E-07   AT NODE          2   DOF  6
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF ROTATION     -9.387E-07   AT NODE       3215   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.452E-12   AT NODE      13348   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =    119412     NUMBER OF RHS =    1
  NUMBER OF FLOATING PT. OPERATIONS =  1.57E+10

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   1.4000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   1.4000    
       ELAPSED WALLCLOCK TIME (SEC) =          1

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                      2.852E-03   TIME AVG. FORCE       1.968E-03
 LARGEST RESIDUAL FORCE            -1.443E-08   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF DISP.        -4.025E-05   AT NODE       1133   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        5.289E-12   AT NODE       1440   DOF  3
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     1.203E-07   TIME AVG. MOMENT      1.203E-07
 LARGEST RESIDUAL MOMENT            1.919E-07   AT NODE          2   DOF  6
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF ROTATION     -9.387E-07   AT NODE       3215   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.539E-12   AT NODE       4515   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =    119412     NUMBER OF RHS =    1
  NUMBER OF FLOATING PT. OPERATIONS =  1.57E+10

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   1.4000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   1.4000    
       ELAPSED WALLCLOCK TIME (SEC) =          2

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     4


 AVERAGE FORCE                      2.852E-03   TIME AVG. FORCE       1.968E-03
 LARGEST RESIDUAL FORCE            -3.232E-09   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF DISP.        -4.025E-05   AT NODE          5   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -5.764E-12   AT NODE       4797   DOF  2
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     1.203E-07   TIME AVG. MOMENT      1.203E-07
 LARGEST RESIDUAL MOMENT           -1.381E-07   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF ROTATION     -9.387E-07   AT NODE       3215   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.506E-12   AT NODE      12532   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =    119412     NUMBER OF RHS =    1
  NUMBER OF FLOATING PT. OPERATIONS =  1.57E+10

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   1.4000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   1.4000    
       ELAPSED WALLCLOCK TIME (SEC) =          2

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     5


 AVERAGE FORCE                      2.852E-03   TIME AVG. FORCE       1.968E-03
 LARGEST RESIDUAL FORCE             1.071E-08   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF DISP.        -4.025E-05   AT NODE          1   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        5.089E-12   AT NODE       4796   DOF  2
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     1.203E-07   TIME AVG. MOMENT      1.203E-07
 LARGEST RESIDUAL MOMENT            8.311E-08   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF ROTATION     -9.387E-07   AT NODE      12142   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.599E-12   AT NODE       4234   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =    119412     NUMBER OF RHS =    1
  NUMBER OF FLOATING PT. OPERATIONS =  1.57E+10

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   1.3000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   1.3000    
       ELAPSED WALLCLOCK TIME (SEC) =          2

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     6


 AVERAGE FORCE                      2.852E-03   TIME AVG. FORCE       1.968E-03
 LARGEST RESIDUAL FORCE            -3.997E-09   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF DISP.        -4.025E-05   AT NODE          7   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        4.687E-12   AT NODE         68   DOF  2
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     1.203E-07   TIME AVG. MOMENT      1.203E-07
 LARGEST RESIDUAL MOMENT           -1.099E-07   AT NODE          2   DOF  6
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF ROTATION     -9.387E-07   AT NODE      12142   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -1.492E-12   AT NODE      18731   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =    119412     NUMBER OF RHS =    1
  NUMBER OF FLOATING PT. OPERATIONS =  1.57E+10

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   1.4000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   1.4000    
       ELAPSED WALLCLOCK TIME (SEC) =          2

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     7


 AVERAGE FORCE                      2.852E-03   TIME AVG. FORCE       1.968E-03
 LARGEST RESIDUAL FORCE             1.159E-08   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF DISP.        -4.025E-05   AT NODE       1132   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -7.104E-12   AT NODE       4704   DOF  2
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     1.203E-07   TIME AVG. MOMENT      1.203E-07
 LARGEST RESIDUAL MOMENT            1.559E-07   AT NODE          2   DOF  6
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF ROTATION     -9.387E-07   AT NODE       3215   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.317E-12   AT NODE       9611   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 

 ***NOTE: THE SOLUTION APPEARS TO BE DIVERGING. CONVERGENCE IS JUDGED UNLIKELY.


  INCREMENT     4 STARTS. ATTEMPT NUMBER  2, TIME INCREMENT  1.099E-04

  NUMBER OF EQUATIONS =    119412     NUMBER OF RHS =    1
  NUMBER OF FLOATING PT. OPERATIONS =  1.57E+10

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   1.4000    
       ELAPSED SYSTEM TIME (SEC)    =  0.10000    
       ELAPSED TOTAL CPU TIME (SEC) =   1.5000    
       ELAPSED WALLCLOCK TIME (SEC) =          1

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      2.484E-03   TIME AVG. FORCE       1.876E-03
 LARGEST RESIDUAL FORCE             2.190E-08   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF DISP.        -1.006E-05   AT NODE          1   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -1.705E-11   AT NODE       4828   DOF  2
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     1.044E-07   TIME AVG. MOMENT      1.044E-07
 LARGEST RESIDUAL MOMENT           -4.314E-08   AT NODE          2   DOF  6
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF ROTATION      2.347E-07   AT NODE      12170   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -7.681E-12   AT NODE      12142   DOF  6
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =    119412     NUMBER OF RHS =    1
  NUMBER OF FLOATING PT. OPERATIONS =  1.57E+10

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   1.5000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   1.5000    
       ELAPSED WALLCLOCK TIME (SEC) =          2

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                      2.484E-03   TIME AVG. FORCE       1.876E-03
 LARGEST RESIDUAL FORCE            -2.541E-08   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF DISP.        -1.006E-05   AT NODE          5   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -6.622E-12   AT NODE       1728   DOF  3
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     1.044E-07   TIME AVG. MOMENT      1.044E-07
 LARGEST RESIDUAL MOMENT           -1.076E-07   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF ROTATION     -2.347E-07   AT NODE       3215   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.369E-12   AT NODE       4001   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =    119412     NUMBER OF RHS =    1
  NUMBER OF FLOATING PT. OPERATIONS =  1.57E+10

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   1.5000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   1.5000    
       ELAPSED WALLCLOCK TIME (SEC) =          2

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                      2.484E-03   TIME AVG. FORCE       1.876E-03
 LARGEST RESIDUAL FORCE             2.385E-08   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF DISP.        -1.006E-05   AT NODE       1133   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        5.761E-12   AT NODE      12730   DOF  2
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     1.044E-07   TIME AVG. MOMENT      1.044E-07
 LARGEST RESIDUAL MOMENT           -1.904E-07   AT NODE          2   DOF  6
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF ROTATION     -2.347E-07   AT NODE       3215   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -1.603E-12   AT NODE      13170   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =    119412     NUMBER OF RHS =    1
  NUMBER OF FLOATING PT. OPERATIONS =  1.57E+10

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   1.4000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   1.4000    
       ELAPSED WALLCLOCK TIME (SEC) =          2

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     4


 AVERAGE FORCE                      2.484E-03   TIME AVG. FORCE       1.876E-03
 LARGEST RESIDUAL FORCE            -4.907E-09   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF DISP.        -1.006E-05   AT NODE       1122   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -6.114E-12   AT NODE      13566   DOF  2
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     1.044E-07   TIME AVG. MOMENT      1.044E-07
 LARGEST RESIDUAL MOMENT           -7.802E-08   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF ROTATION     -2.347E-07   AT NODE      12142   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.597E-12   AT NODE      13656   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =    119412     NUMBER OF RHS =    1
  NUMBER OF FLOATING PT. OPERATIONS =  1.57E+10

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   1.3000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   1.3000    
       ELAPSED WALLCLOCK TIME (SEC) =          1

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     5


 AVERAGE FORCE                      2.484E-03   TIME AVG. FORCE       1.876E-03
 LARGEST RESIDUAL FORCE            -2.237E-08   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF DISP.        -1.006E-05   AT NODE          2   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -1.031E-11   AT NODE       1452   DOF  3
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     1.044E-07   TIME AVG. MOMENT      1.044E-07
 LARGEST RESIDUAL MOMENT            1.142E-07   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF ROTATION     -2.347E-07   AT NODE      12142   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.482E-12   AT NODE       2235   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =    119412     NUMBER OF RHS =    1
  NUMBER OF FLOATING PT. OPERATIONS =  1.57E+10

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   1.3000    
       ELAPSED SYSTEM TIME (SEC)    =  0.10000    
       ELAPSED TOTAL CPU TIME (SEC) =   1.4000    
       ELAPSED WALLCLOCK TIME (SEC) =          1

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     6


 AVERAGE FORCE                      2.484E-03   TIME AVG. FORCE       1.876E-03
 LARGEST RESIDUAL FORCE             4.561E-09   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF DISP.        -1.006E-05   AT NODE          1   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        6.164E-12   AT NODE       1447   DOF  3
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     1.044E-07   TIME AVG. MOMENT      1.044E-07
 LARGEST RESIDUAL MOMENT            1.170E-07   AT NODE          2   DOF  6
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF ROTATION     -2.347E-07   AT NODE       3215   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -1.638E-12   AT NODE       2043   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 

 ***NOTE: THE SOLUTION APPEARS TO BE DIVERGING. CONVERGENCE IS JUDGED UNLIKELY.


  INCREMENT     4 STARTS. ATTEMPT NUMBER  3, TIME INCREMENT  2.747E-05

  NUMBER OF EQUATIONS =    119412     NUMBER OF RHS =    1
  NUMBER OF FLOATING PT. OPERATIONS =  1.57E+10

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   1.4000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   1.4000    
       ELAPSED WALLCLOCK TIME (SEC) =          2

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      2.392E-03   TIME AVG. FORCE       1.853E-03
 LARGEST RESIDUAL FORCE            -1.632E-08   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF DISP.        -2.516E-06   AT NODE       1122   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -2.516E-06   AT NODE       1122   DOF  1
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF DISP.    CORRECTION   -6.117E-12
 FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                     1.004E-07   TIME AVG. MOMENT      1.004E-07
 LARGEST RESIDUAL MOMENT           -2.001E-07   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF ROTATION     -5.867E-08   AT NODE      12142   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -5.867E-08   AT NODE      12142   DOF  6
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =    119412     NUMBER OF RHS =    1
  NUMBER OF FLOATING PT. OPERATIONS =  1.57E+10

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   1.4000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   1.4000    
       ELAPSED WALLCLOCK TIME (SEC) =          2

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                      2.392E-03   TIME AVG. FORCE       1.853E-03
 LARGEST RESIDUAL FORCE             7.661E-09   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF DISP.        -2.516E-06   AT NODE       1116   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -6.390E-12   AT NODE      13287   DOF  2
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     1.004E-07   TIME AVG. MOMENT      1.004E-07
 LARGEST RESIDUAL MOMENT           -8.342E-08   AT NODE          2   DOF  6
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF ROTATION     -5.867E-08   AT NODE      12142   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.488E-12   AT NODE      14246   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =    119412     NUMBER OF RHS =    1
  NUMBER OF FLOATING PT. OPERATIONS =  1.57E+10

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   1.4000    
       ELAPSED SYSTEM TIME (SEC)    =  0.10000    
       ELAPSED TOTAL CPU TIME (SEC) =   1.5000    
       ELAPSED WALLCLOCK TIME (SEC) =          2

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                      2.392E-03   TIME AVG. FORCE       1.853E-03
 LARGEST RESIDUAL FORCE             7.627E-09   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF DISP.        -2.516E-06   AT NODE       1122   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -4.758E-12   AT NODE        948   DOF  2
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     1.004E-07   TIME AVG. MOMENT      1.004E-07
 LARGEST RESIDUAL MOMENT            2.712E-08   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF ROTATION     -5.867E-08   AT NODE       3215   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.533E-12   AT NODE      12748   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =    119412     NUMBER OF RHS =    1
  NUMBER OF FLOATING PT. OPERATIONS =  1.57E+10

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   1.4000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   1.4000    
       ELAPSED WALLCLOCK TIME (SEC) =          2

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     4


 AVERAGE FORCE                      2.392E-03   TIME AVG. FORCE       1.853E-03
 LARGEST RESIDUAL FORCE            -2.865E-09   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF DISP.        -2.516E-06   AT NODE       1134   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        9.941E-12   AT NODE       4767   DOF  2
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     1.004E-07   TIME AVG. MOMENT      1.004E-07
 LARGEST RESIDUAL MOMENT           -2.599E-07   AT NODE          2   DOF  6
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF ROTATION     -5.867E-08   AT NODE      12142   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -1.617E-12   AT NODE       2278   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 

 ***NOTE: THE SOLUTION APPEARS TO BE DIVERGING. CONVERGENCE IS JUDGED UNLIKELY.


  INCREMENT     4 STARTS. ATTEMPT NUMBER  4, TIME INCREMENT  6.866E-06

  NUMBER OF EQUATIONS =    119412     NUMBER OF RHS =    1
  NUMBER OF FLOATING PT. OPERATIONS =  1.57E+10

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   1.4000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   1.4000    
       ELAPSED WALLCLOCK TIME (SEC) =          1

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      2.369E-03   TIME AVG. FORCE       1.847E-03
 LARGEST RESIDUAL FORCE            -2.739E-08   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF DISP.        -6.290E-07   AT NODE       1122   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -6.290E-07   AT NODE       1122   DOF  1
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF DISP.    CORRECTION   -1.026E-11
 FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                     9.943E-08   TIME AVG. MOMENT      1.000E-02
 LARGEST RESIDUAL MOMENT           -1.960E-07   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF ROTATION     -1.467E-08   AT NODE      12142   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -1.467E-08   AT NODE      12142   DOF  6
   INSTANCE: SHELL-1                                                                         
          THE MOMENT    IS ZERO EVERYWHERE BUT THE MOMENT    RESIDUAL OR
          THE ROTATION CORRECTION IS NON-ZERO

  NUMBER OF EQUATIONS =    119412     NUMBER OF RHS =    1
  NUMBER OF FLOATING PT. OPERATIONS =  1.57E+10

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   1.4000    
       ELAPSED SYSTEM TIME (SEC)    =  0.10000    
       ELAPSED TOTAL CPU TIME (SEC) =   1.5000    
       ELAPSED WALLCLOCK TIME (SEC) =          2

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                      2.369E-03   TIME AVG. FORCE       1.847E-03
 LARGEST RESIDUAL FORCE             2.752E-08   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF DISP.        -6.290E-07   AT NODE          7   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -5.896E-12   AT NODE       1183   DOF  2
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     9.943E-08   TIME AVG. MOMENT      1.000E-02
 LARGEST RESIDUAL MOMENT           -1.991E-07   AT NODE          2   DOF  6
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF ROTATION     -1.467E-08   AT NODE       3215   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -1.731E-12   AT NODE      18522   DOF  4
   INSTANCE: SHELL-1                                                                         
          ALL ROTATION CORRECTIONS ARE ZERO
          TIME INCREMENT MAY NOW INCREASE TO    1.030E-05

 ITERATION SUMMARY FOR THE INCREMENT:   2 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  2 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  6.866E-06,  FRACTION OF STEP COMPLETED  2.058E-03
 STEP TIME COMPLETED       2.058E-03,  TOTAL TIME COMPLETED        2.058E-03


  INCREMENT     5 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  1.030E-05

  NUMBER OF EQUATIONS =    119412     NUMBER OF RHS =    1
  NUMBER OF FLOATING PT. OPERATIONS =  1.57E+10

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   1.4000    
       ELAPSED SYSTEM TIME (SEC)    =  0.10000    
       ELAPSED TOTAL CPU TIME (SEC) =   1.5000    
       ELAPSED WALLCLOCK TIME (SEC) =          2

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      2.384E-03   TIME AVG. FORCE       1.955E-03
 LARGEST RESIDUAL FORCE             4.058E-09   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF DISP.        -9.435E-07   AT NODE          1   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -1.110E-11   AT NODE      12823   DOF  2
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     9.993E-08   TIME AVG. MOMENT      1.000E-02
 LARGEST RESIDUAL MOMENT            3.677E-07   AT NODE          2   DOF  6
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF ROTATION     -2.200E-08   AT NODE      12142   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     3.032E-12   AT NODE      12794   DOF  4
   INSTANCE: SHELL-1                                                                         
          ALL ROTATION CORRECTIONS ARE ZERO
          TIME INCREMENT MAY NOW INCREASE TO    1.545E-05

 ITERATION SUMMARY FOR THE INCREMENT:   1 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  1 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  1.030E-05,  FRACTION OF STEP COMPLETED  2.068E-03
 STEP TIME COMPLETED       2.068E-03,  TOTAL TIME COMPLETED        2.068E-03


  INCREMENT     6 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  1.545E-05

  NUMBER OF EQUATIONS =    119412     NUMBER OF RHS =    1
  NUMBER OF FLOATING PT. OPERATIONS =  1.57E+10

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   1.5000    
       ELAPSED SYSTEM TIME (SEC)    =  0.10000    
       ELAPSED TOTAL CPU TIME (SEC) =   1.6000    
       ELAPSED WALLCLOCK TIME (SEC) =          1

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      2.402E-03   TIME AVG. FORCE       2.029E-03
 LARGEST RESIDUAL FORCE             1.438E-08   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF DISP.        -1.415E-06   AT NODE          7   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.441E-11   AT NODE       3774   DOF  2
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     1.007E-07   TIME AVG. MOMENT      1.007E-07
 LARGEST RESIDUAL MOMENT           -2.834E-08   AT NODE          2   DOF  6
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF ROTATION      3.300E-08   AT NODE      12170   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     3.354E-12   AT NODE      13218   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =    119412     NUMBER OF RHS =    1
  NUMBER OF FLOATING PT. OPERATIONS =  1.57E+10

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   1.4000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   1.4000    
       ELAPSED WALLCLOCK TIME (SEC) =          1

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                      2.402E-03   TIME AVG. FORCE       2.029E-03
 LARGEST RESIDUAL FORCE            -2.557E-08   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF DISP.        -1.415E-06   AT NODE          7   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        5.302E-12   AT NODE       4643   DOF  2
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     1.007E-07   TIME AVG. MOMENT      1.007E-07
 LARGEST RESIDUAL MOMENT           -3.354E-07   AT NODE          2   DOF  6
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF ROTATION      3.300E-08   AT NODE      12170   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.590E-12   AT NODE       4742   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =    119412     NUMBER OF RHS =    1
  NUMBER OF FLOATING PT. OPERATIONS =  1.57E+10

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   1.3000    
       ELAPSED SYSTEM TIME (SEC)    =  0.10000    
       ELAPSED TOTAL CPU TIME (SEC) =   1.4000    
       ELAPSED WALLCLOCK TIME (SEC) =          2

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                      2.402E-03   TIME AVG. FORCE       2.029E-03
 LARGEST RESIDUAL FORCE             2.579E-09   AT NODE      19956   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -1.415E-06   AT NODE        443   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -6.450E-12   AT NODE        517   DOF  2
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     1.007E-07   TIME AVG. MOMENT      1.007E-07
 LARGEST RESIDUAL MOMENT            1.814E-08   AT NODE          2   DOF  6
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF ROTATION      3.300E-08   AT NODE       3187   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -1.456E-12   AT NODE       4711   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =    119412     NUMBER OF RHS =    1
  NUMBER OF FLOATING PT. OPERATIONS =  1.57E+10

     CHECK POINT   START OF SOLVER    
