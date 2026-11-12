1

   Abaqus 2020                                  Date 10-Nov-2026   Time 17:49:04
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

       ELAPSED USER TIME (SEC)      =   1.5000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   1.5000    
       ELAPSED WALLCLOCK TIME (SEC) =          1

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      2.555E-02   TIME AVG. FORCE       2.555E-02
 LARGEST RESIDUAL FORCE            -1.502E-03   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF DISP.        -5.725E-03   AT NODE        443   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -5.725E-03   AT NODE        443   DOF  1
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     3.020E-06   TIME AVG. MOMENT      3.020E-06
 LARGEST RESIDUAL MOMENT            9.981E-07   AT NODE      12169   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION     -1.335E-04   AT NODE       3215   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -1.335E-04   AT NODE       3215   DOF  6
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =    119412     NUMBER OF RHS =    1
  NUMBER OF FLOATING PT. OPERATIONS =  1.57E+10

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   1.5000    
       ELAPSED SYSTEM TIME (SEC)    =  0.10000    
       ELAPSED TOTAL CPU TIME (SEC) =   1.6000    
       ELAPSED WALLCLOCK TIME (SEC) =          2

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                      2.555E-02   TIME AVG. FORCE       2.555E-02
 LARGEST RESIDUAL FORCE            -2.487E-08   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF DISP.        -5.725E-03   AT NODE        444   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -1.202E-06   AT NODE      18277   DOF  2
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     3.029E-06   TIME AVG. MOMENT      3.029E-06
 LARGEST RESIDUAL MOMENT           -1.038E-07   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF ROTATION      1.341E-04   AT NODE       9353   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     6.686E-07   AT NODE       9353   DOF  6
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

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                      2.555E-02   TIME AVG. FORCE       2.555E-02
 LARGEST RESIDUAL FORCE            -9.404E-09   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF DISP.        -5.725E-03   AT NODE        444   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -9.495E-12   AT NODE       4674   DOF  2
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     3.029E-06   TIME AVG. MOMENT      3.029E-06
 LARGEST RESIDUAL MOMENT            1.440E-07   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF ROTATION     -1.341E-04   AT NODE       3215   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -5.773E-12   AT NODE      12202   DOF  5
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


 AVERAGE FORCE                      2.555E-02   TIME AVG. FORCE       2.555E-02
 LARGEST RESIDUAL FORCE            -1.433E-08   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF DISP.        -5.725E-03   AT NODE        444   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        6.711E-12   AT NODE        970   DOF  2
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     3.029E-06   TIME AVG. MOMENT      3.029E-06
 LARGEST RESIDUAL MOMENT           -1.858E-07   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF ROTATION      1.341E-04   AT NODE       3187   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.548E-12   AT NODE      11094   DOF  4
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
       ELAPSED WALLCLOCK TIME (SEC) =          1

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      6.388E-03   TIME AVG. FORCE       6.388E-03
 LARGEST RESIDUAL FORCE            -9.386E-05   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF DISP.        -1.431E-03   AT NODE        442   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -1.431E-03   AT NODE        442   DOF  1
   INSTANCE: SHELL-1                                                                         
          FORCE     EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

 AVERAGE MOMENT                     7.550E-07   TIME AVG. MOMENT      7.550E-07
 LARGEST RESIDUAL MOMENT           -6.238E-08   AT NODE      12143   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF ROTATION     -3.337E-05   AT NODE       3215   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -3.337E-05   AT NODE       3215   DOF  6
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


 AVERAGE FORCE                      6.388E-03   TIME AVG. FORCE       6.388E-03
 LARGEST RESIDUAL FORCE             1.707E-08   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF DISP.        -1.431E-03   AT NODE        441   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -7.465E-08   AT NODE       3218   DOF  2
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     7.555E-07   TIME AVG. MOMENT      7.555E-07
 LARGEST RESIDUAL MOMENT           -6.172E-08   AT NODE          2   DOF  6
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF ROTATION      3.341E-05   AT NODE       3187   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     4.152E-08   AT NODE       3187   DOF  6
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

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                      6.388E-03   TIME AVG. FORCE       6.388E-03
 LARGEST RESIDUAL FORCE            -1.841E-08   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF DISP.        -1.431E-03   AT NODE        442   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        7.460E-12   AT NODE        958   DOF  2
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     7.555E-07   TIME AVG. MOMENT      7.555E-07
 LARGEST RESIDUAL MOMENT            9.350E-08   AT NODE          2   DOF  6
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF ROTATION      3.341E-05   AT NODE       9353   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.611E-12   AT NODE      11089   DOF  4
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


 AVERAGE FORCE                      6.388E-03   TIME AVG. FORCE       6.388E-03
 LARGEST RESIDUAL FORCE             1.682E-08   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF DISP.        -1.431E-03   AT NODE        443   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -6.108E-12   AT NODE       1748   DOF  3
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     7.555E-07   TIME AVG. MOMENT      7.555E-07
 LARGEST RESIDUAL MOMENT           -6.525E-08   AT NODE          2   DOF  6
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF ROTATION      3.341E-05   AT NODE       9353   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -1.515E-12   AT NODE       2086   DOF  4
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


 AVERAGE FORCE                      6.388E-03   TIME AVG. FORCE       6.388E-03
 LARGEST RESIDUAL FORCE            -1.308E-08   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF DISP.        -1.431E-03   AT NODE        441   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -6.689E-12   AT NODE        968   DOF  2
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     7.555E-07   TIME AVG. MOMENT      7.555E-07
 LARGEST RESIDUAL MOMENT           -4.644E-08   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF ROTATION      3.341E-05   AT NODE       3187   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -1.585E-12   AT NODE       4120   DOF  4
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


 AVERAGE FORCE                      6.388E-03   TIME AVG. FORCE       6.388E-03
 LARGEST RESIDUAL FORCE             1.707E-08   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF DISP.        -1.431E-03   AT NODE        441   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -6.924E-12   AT NODE      13690   DOF  2
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     7.555E-07   TIME AVG. MOMENT      7.555E-07
 LARGEST RESIDUAL MOMENT            1.859E-07   AT NODE          2   DOF  6
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF ROTATION     -3.341E-05   AT NODE      12142   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -1.397E-12   AT NODE      12485   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 

 ***NOTE: THE SOLUTION APPEARS TO BE DIVERGING. CONVERGENCE IS JUDGED UNLIKELY.


  INCREMENT     1 STARTS. ATTEMPT NUMBER  3, TIME INCREMENT  6.250E-03

  NUMBER OF EQUATIONS =    119412     NUMBER OF RHS =    1
  NUMBER OF FLOATING PT. OPERATIONS =  1.57E+10

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   1.3000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   1.3000    
       ELAPSED WALLCLOCK TIME (SEC) =          1

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      1.597E-03   TIME AVG. FORCE       1.597E-03
 LARGEST RESIDUAL FORCE            -5.853E-06   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF DISP.        -3.578E-04   AT NODE        435   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -3.578E-04   AT NODE        435   DOF  1
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF DISP.    CORRECTION   -2.194E-09
 FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                     1.887E-07   TIME AVG. MOMENT      2.504E-02
                                                (FROM FORCE     FIELD)
 LARGEST RESIDUAL MOMENT           -7.711E-08   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF ROTATION     -8.341E-06   AT NODE       3215   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -8.341E-06   AT NODE       3215   DOF  6
   INSTANCE: SHELL-1                                                                         
          THERE IS ZERO MOMENT    EVERYWHERE

 ITERATION SUMMARY FOR THE INCREMENT:   1 TOTAL ITERATIONS, OF WHICH
   0 ARE SEVERE DISCONTINUITY ITERATIONS AND  1 ARE EQUILIBRIUM ITERATIONS.

 TIME INCREMENT COMPLETED  6.250E-03,  FRACTION OF STEP COMPLETED  6.250E-03
 STEP TIME COMPLETED       6.250E-03,  TOTAL TIME COMPLETED        6.250E-03


  INCREMENT     2 STARTS. ATTEMPT NUMBER  1, TIME INCREMENT  6.250E-03

  NUMBER OF EQUATIONS =    119412     NUMBER OF RHS =    1
  NUMBER OF FLOATING PT. OPERATIONS =  1.57E+10

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   1.3000    
       ELAPSED SYSTEM TIME (SEC)    =  0.10000    
       ELAPSED TOTAL CPU TIME (SEC) =   1.4000    
       ELAPSED WALLCLOCK TIME (SEC) =          2

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      8.822E-03   TIME AVG. FORCE       5.209E-03
 LARGEST RESIDUAL FORCE             1.335E-08   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF DISP.        -3.578E-04   AT NODE        443   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.864E-08   AT NODE      12173   DOF  2
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     3.776E-07   TIME AVG. MOMENT      3.776E-07
 LARGEST RESIDUAL MOMENT           -9.753E-08   AT NODE          2   DOF  6
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF ROTATION      8.352E-06   AT NODE       3187   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.036E-08   AT NODE       3187   DOF  6
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


 AVERAGE FORCE                      8.822E-03   TIME AVG. FORCE       5.209E-03
 LARGEST RESIDUAL FORCE            -3.889E-09   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF DISP.        -3.578E-04   AT NODE        442   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        1.286E-11   AT NODE      12172   DOF  2
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     3.776E-07   TIME AVG. MOMENT      3.776E-07
 LARGEST RESIDUAL MOMENT            1.579E-07   AT NODE          2   DOF  6
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF ROTATION     -8.352E-06   AT NODE      12142   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -9.286E-12   AT NODE      12249   DOF  5
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =    119412     NUMBER OF RHS =    1
  NUMBER OF FLOATING PT. OPERATIONS =  1.57E+10

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   1.5000    
       ELAPSED SYSTEM TIME (SEC)    =  0.10000    
       ELAPSED TOTAL CPU TIME (SEC) =   1.6000    
       ELAPSED WALLCLOCK TIME (SEC) =          1

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                      8.822E-03   TIME AVG. FORCE       5.209E-03
 LARGEST RESIDUAL FORCE            -2.565E-09   AT NODE      19770   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -3.578E-04   AT NODE        429   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -5.187E-12   AT NODE        528   DOF  2
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     3.776E-07   TIME AVG. MOMENT      3.776E-07
 LARGEST RESIDUAL MOMENT           -8.874E-08   AT NODE          2   DOF  6
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF ROTATION      8.352E-06   AT NODE       3187   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -1.422E-12   AT NODE       5279   DOF  4
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


 AVERAGE FORCE                      8.822E-03   TIME AVG. FORCE       5.209E-03
 LARGEST RESIDUAL FORCE             9.817E-09   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF DISP.        -3.578E-04   AT NODE        440   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -6.479E-12   AT NODE       1740   DOF  3
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     3.776E-07   TIME AVG. MOMENT      3.776E-07
 LARGEST RESIDUAL MOMENT            9.569E-08   AT NODE          2   DOF  6
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF ROTATION     -8.352E-06   AT NODE       3215   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -1.582E-12   AT NODE       2126   DOF  4
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

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     5


 AVERAGE FORCE                      8.822E-03   TIME AVG. FORCE       5.209E-03
 LARGEST RESIDUAL FORCE            -1.823E-08   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF DISP.        -3.578E-04   AT NODE        434   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -5.874E-12   AT NODE       1234   DOF  2
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     3.776E-07   TIME AVG. MOMENT      3.776E-07
 LARGEST RESIDUAL MOMENT           -2.548E-07   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF ROTATION     -8.352E-06   AT NODE      12142   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -1.427E-12   AT NODE      13887   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 

 ***NOTE: THE SOLUTION APPEARS TO BE DIVERGING. CONVERGENCE IS JUDGED UNLIKELY.


  INCREMENT     2 STARTS. ATTEMPT NUMBER  2, TIME INCREMENT  1.563E-03

  NUMBER OF EQUATIONS =    119412     NUMBER OF RHS =    1
  NUMBER OF FLOATING PT. OPERATIONS =  1.57E+10

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   1.4000    
       ELAPSED SYSTEM TIME (SEC)    =  0.10000    
       ELAPSED TOTAL CPU TIME (SEC) =   1.5000    
       ELAPSED WALLCLOCK TIME (SEC) =          1

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      5.609E-03   TIME AVG. FORCE       3.603E-03
 LARGEST RESIDUAL FORCE            -3.443E-09   AT NODE      19917   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -8.945E-05   AT NODE        434   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -7.280E-09   AT NODE      12201   DOF  2
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     2.360E-07   TIME AVG. MOMENT      2.360E-07
 LARGEST RESIDUAL MOMENT            7.017E-08   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF ROTATION      2.089E-06   AT NODE      18280   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     4.048E-09   AT NODE      18280   DOF  6
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

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                      5.609E-03   TIME AVG. FORCE       3.603E-03
 LARGEST RESIDUAL FORCE            -2.246E-08   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF DISP.        -8.945E-05   AT NODE          1   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        3.716E-12   AT NODE       1714   DOF  3
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     2.360E-07   TIME AVG. MOMENT      2.360E-07
 LARGEST RESIDUAL MOMENT            6.037E-08   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF ROTATION      2.089E-06   AT NODE       3187   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -1.341E-12   AT NODE       2092   DOF  4
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

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                      5.609E-03   TIME AVG. FORCE       3.603E-03
 LARGEST RESIDUAL FORCE             2.003E-08   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF DISP.        -8.945E-05   AT NODE          1   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -4.652E-12   AT NODE         43   DOF  2
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     2.360E-07   TIME AVG. MOMENT      2.360E-07
 LARGEST RESIDUAL MOMENT           -4.139E-08   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF ROTATION      2.089E-06   AT NODE      12170   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -1.567E-12   AT NODE      12434   DOF  4
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


 AVERAGE FORCE                      5.609E-03   TIME AVG. FORCE       3.603E-03
 LARGEST RESIDUAL FORCE            -1.130E-08   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF DISP.        -8.945E-05   AT NODE          1   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -8.833E-12   AT NODE       1752   DOF  3
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     2.360E-07   TIME AVG. MOMENT      2.360E-07
 LARGEST RESIDUAL MOMENT            1.544E-07   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF ROTATION      2.089E-06   AT NODE       9353   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -1.804E-12   AT NODE       9634   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 

 ***NOTE: THE SOLUTION APPEARS TO BE DIVERGING. CONVERGENCE IS JUDGED UNLIKELY.


  INCREMENT     2 STARTS. ATTEMPT NUMBER  3, TIME INCREMENT  3.906E-04

  NUMBER OF EQUATIONS =    119412     NUMBER OF RHS =    1
  NUMBER OF FLOATING PT. OPERATIONS =  1.57E+10

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   1.4000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   1.4000    
       ELAPSED WALLCLOCK TIME (SEC) =          2

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      4.789E-03   TIME AVG. FORCE       3.193E-03
 LARGEST RESIDUAL FORCE            -3.266E-08   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF DISP.        -2.236E-05   AT NODE          1   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -2.236E-05   AT NODE          1   DOF  1
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF DISP.    CORRECTION   -1.224E-11
 FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                     2.006E-07   TIME AVG. MOMENT      2.006E-07
 LARGEST RESIDUAL MOMENT            4.486E-08   AT NODE          2   DOF  6
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF ROTATION     -5.243E-07   AT NODE      12142   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -5.243E-07   AT NODE      12142   DOF  6
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


 AVERAGE FORCE                      4.789E-03   TIME AVG. FORCE       3.193E-03
 LARGEST RESIDUAL FORCE            -1.058E-08   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF DISP.        -2.236E-05   AT NODE        429   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -1.834E-11   AT NODE      12201   DOF  2
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     2.006E-07   TIME AVG. MOMENT      2.006E-07
 LARGEST RESIDUAL MOMENT            3.684E-08   AT NODE          2   DOF  6
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF ROTATION      5.243E-07   AT NODE      12170   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.024E-11   AT NODE      12170   DOF  6
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


 AVERAGE FORCE                      4.789E-03   TIME AVG. FORCE       3.193E-03
 LARGEST RESIDUAL FORCE             1.305E-08   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF DISP.        -2.236E-05   AT NODE       1117   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        4.778E-12   AT NODE       1441   DOF  3
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     2.006E-07   TIME AVG. MOMENT      2.006E-07
 LARGEST RESIDUAL MOMENT           -7.746E-08   AT NODE          2   DOF  6
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF ROTATION      5.243E-07   AT NODE      12170   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.470E-12   AT NODE       2167   DOF  4
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

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     4


 AVERAGE FORCE                      4.789E-03   TIME AVG. FORCE       3.193E-03
 LARGEST RESIDUAL FORCE             1.001E-08   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF DISP.        -2.236E-05   AT NODE          1   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        4.703E-12   AT NODE      13041   DOF  2
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     2.006E-07   TIME AVG. MOMENT      2.006E-07
 LARGEST RESIDUAL MOMENT           -6.452E-08   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF ROTATION      5.243E-07   AT NODE       3187   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -1.554E-12   AT NODE      13201   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =    119412     NUMBER OF RHS =    1
  NUMBER OF FLOATING PT. OPERATIONS =  1.57E+10

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   1.5000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   1.5000    
       ELAPSED WALLCLOCK TIME (SEC) =          1

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     5


 AVERAGE FORCE                      4.789E-03   TIME AVG. FORCE       3.193E-03
 LARGEST RESIDUAL FORCE            -2.311E-09   AT NODE      19724   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -2.236E-05   AT NODE       1117   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -5.768E-12   AT NODE        531   DOF  2
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     2.006E-07   TIME AVG. MOMENT      2.006E-07
 LARGEST RESIDUAL MOMENT           -1.323E-07   AT NODE          2   DOF  6
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF ROTATION     -5.243E-07   AT NODE       3215   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.515E-12   AT NODE      13685   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 

 ***NOTE: THE SOLUTION APPEARS TO BE DIVERGING. CONVERGENCE IS JUDGED UNLIKELY.


  INCREMENT     2 STARTS. ATTEMPT NUMBER  4, TIME INCREMENT  9.766E-05

  NUMBER OF EQUATIONS =    119412     NUMBER OF RHS =    1
  NUMBER OF FLOATING PT. OPERATIONS =  1.57E+10

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   1.5000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   1.5000    
       ELAPSED WALLCLOCK TIME (SEC) =          2

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      4.580E-03   TIME AVG. FORCE       3.089E-03
 LARGEST RESIDUAL FORCE            -2.970E-08   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF DISP.        -5.591E-06   AT NODE          1   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -5.591E-06   AT NODE          1   DOF  1
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF DISP.    CORRECTION   -1.113E-11
 FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                     1.917E-07   TIME AVG. MOMENT      1.917E-07
 LARGEST RESIDUAL MOMENT           -1.666E-07   AT NODE          2   DOF  6
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF ROTATION     -1.330E-07   AT NODE      12142   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -1.330E-07   AT NODE      12142   DOF  6
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

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     2


 AVERAGE FORCE                      4.580E-03   TIME AVG. FORCE       3.089E-03
 LARGEST RESIDUAL FORCE            -2.405E-09   AT NODE      19723   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -5.591E-06   AT NODE          5   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -4.537E-12   AT NODE      15303   DOF  2
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     1.917E-07   TIME AVG. MOMENT      1.917E-07
 LARGEST RESIDUAL MOMENT            1.355E-07   AT NODE          2   DOF  6
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF ROTATION     -1.330E-07   AT NODE      12142   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.360E-12   AT NODE      12706   DOF  4
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


 AVERAGE FORCE                      4.580E-03   TIME AVG. FORCE       3.089E-03
 LARGEST RESIDUAL FORCE             2.212E-08   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF DISP.        -5.591E-06   AT NODE          1   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -5.252E-12   AT NODE       1458   DOF  3
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     1.917E-07   TIME AVG. MOMENT      1.917E-07
 LARGEST RESIDUAL MOMENT           -2.329E-07   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF ROTATION     -1.330E-07   AT NODE       3215   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.347E-12   AT NODE       3686   DOF  4
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


 AVERAGE FORCE                      4.580E-03   TIME AVG. FORCE       3.089E-03
 LARGEST RESIDUAL FORCE            -3.990E-09   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF DISP.        -5.591E-06   AT NODE          1   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -5.112E-12   AT NODE       1158   DOF  2
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     1.917E-07   TIME AVG. MOMENT      1.917E-07
 LARGEST RESIDUAL MOMENT            1.195E-07   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF ROTATION     -1.330E-07   AT NODE       3215   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.458E-12   AT NODE       4574   DOF  4
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


 AVERAGE FORCE                      4.580E-03   TIME AVG. FORCE       3.089E-03
 LARGEST RESIDUAL FORCE            -2.469E-09   AT NODE      19745   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -5.591E-06   AT NODE        443   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        8.933E-12   AT NODE       1447   DOF  3
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     1.917E-07   TIME AVG. MOMENT      1.917E-07
 LARGEST RESIDUAL MOMENT            2.838E-08   AT NODE          2   DOF  6
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF ROTATION      1.330E-07   AT NODE       3187   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -1.531E-12   AT NODE       2228   DOF  4
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

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     6


 AVERAGE FORCE                      4.580E-03   TIME AVG. FORCE       3.089E-03
 LARGEST RESIDUAL FORCE            -2.165E-08   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF DISP.        -5.591E-06   AT NODE          7   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -4.998E-12   AT NODE       1447   DOF  3
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     1.917E-07   TIME AVG. MOMENT      1.917E-07
 LARGEST RESIDUAL MOMENT            3.483E-08   AT NODE          2   DOF  6
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF ROTATION      1.330E-07   AT NODE      12170   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.268E-12   AT NODE      13700   DOF  4
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


 AVERAGE FORCE                      4.580E-03   TIME AVG. FORCE       3.089E-03
 LARGEST RESIDUAL FORCE             6.643E-09   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF DISP.        -5.591E-06   AT NODE          1   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        5.894E-12   AT NODE       1437   DOF  3
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     1.917E-07   TIME AVG. MOMENT      1.917E-07
 LARGEST RESIDUAL MOMENT            9.623E-08   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF ROTATION     -1.330E-07   AT NODE       3215   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.427E-12   AT NODE       3324   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 

 ***NOTE: THE SOLUTION APPEARS TO BE DIVERGING. CONVERGENCE IS JUDGED UNLIKELY.


  INCREMENT     2 STARTS. ATTEMPT NUMBER  5, TIME INCREMENT  2.441E-05

  NUMBER OF EQUATIONS =    119412     NUMBER OF RHS =    1
  NUMBER OF FLOATING PT. OPERATIONS =  1.57E+10

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   1.3000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   1.3000    
       ELAPSED WALLCLOCK TIME (SEC) =          2

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     1


 AVERAGE FORCE                      4.529E-03   TIME AVG. FORCE       3.063E-03
 LARGEST RESIDUAL FORCE             3.008E-09   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF DISP.        -1.397E-06   AT NODE          1   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -1.397E-06   AT NODE          1   DOF  1
   INSTANCE: SHELL-1                                                                         
 ESTIMATE OF DISP.    CORRECTION    1.125E-12
 FORCE     EQUILIB. ACCEPTED BASED ON SMALL RESIDUAL AND ESTIMATED CORRECTION

 AVERAGE MOMENT                     1.895E-07   TIME AVG. MOMENT      1.895E-07
 LARGEST RESIDUAL MOMENT            1.392E-07   AT NODE          2   DOF  6
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF ROTATION     -3.519E-08   AT NODE      12142   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -3.519E-08   AT NODE      12142   DOF  6
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


 AVERAGE FORCE                      4.529E-03   TIME AVG. FORCE       3.063E-03
 LARGEST RESIDUAL FORCE            -3.725E-09   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF DISP.        -1.397E-06   AT NODE       1117   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        6.374E-12   AT NODE       4953   DOF  2
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     1.895E-07   TIME AVG. MOMENT      1.895E-07
 LARGEST RESIDUAL MOMENT           -2.024E-07   AT NODE          2   DOF  6
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF ROTATION     -3.519E-08   AT NODE      18308   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -1.376E-12   AT NODE       2169   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =    119412     NUMBER OF RHS =    1
  NUMBER OF FLOATING PT. OPERATIONS =  1.57E+10

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   1.5000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   1.5000    
       ELAPSED WALLCLOCK TIME (SEC) =          1

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     3


 AVERAGE FORCE                      4.529E-03   TIME AVG. FORCE       3.063E-03
 LARGEST RESIDUAL FORCE            -2.707E-09   AT NODE      19943   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST INCREMENT OF DISP.        -1.397E-06   AT NODE       1140   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        5.012E-12   AT NODE       1742   DOF  3
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     1.895E-07   TIME AVG. MOMENT      1.895E-07
 LARGEST RESIDUAL MOMENT            1.783E-07   AT NODE          2   DOF  6
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF ROTATION      3.519E-08   AT NODE      18280   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.489E-12   AT NODE      12750   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =    119412     NUMBER OF RHS =    1
  NUMBER OF FLOATING PT. OPERATIONS =  1.57E+10

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   1.5000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   1.5000    
       ELAPSED WALLCLOCK TIME (SEC) =          1

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     4


 AVERAGE FORCE                      4.529E-03   TIME AVG. FORCE       3.063E-03
 LARGEST RESIDUAL FORCE             2.759E-09   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF DISP.        -1.397E-06   AT NODE         20   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        6.325E-12   AT NODE       1196   DOF  2
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     1.895E-07   TIME AVG. MOMENT      1.895E-07
 LARGEST RESIDUAL MOMENT           -1.651E-07   AT NODE          2   DOF  6
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF ROTATION      3.519E-08   AT NODE      12170   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -1.307E-12   AT NODE      14278   DOF  4
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


 AVERAGE FORCE                      4.529E-03   TIME AVG. FORCE       3.063E-03
 LARGEST RESIDUAL FORCE            -1.606E-08   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF DISP.        -1.397E-06   AT NODE          1   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.       -7.742E-12   AT NODE       1183   DOF  2
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     1.895E-07   TIME AVG. MOMENT      1.895E-07
 LARGEST RESIDUAL MOMENT            1.746E-07   AT NODE          2   DOF  5
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF ROTATION      3.519E-08   AT NODE      12170   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION     1.521E-12   AT NODE      13066   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.

  NUMBER OF EQUATIONS =    119412     NUMBER OF RHS =    1
  NUMBER OF FLOATING PT. OPERATIONS =  1.57E+10

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   1.5000    
       ELAPSED SYSTEM TIME (SEC)    =  0.10000    
       ELAPSED TOTAL CPU TIME (SEC) =   1.6000    
       ELAPSED WALLCLOCK TIME (SEC) =          1

               CONVERGENCE CHECKS FOR EQUILIBRIUM ITERATION     6


 AVERAGE FORCE                      4.529E-03   TIME AVG. FORCE       3.063E-03
 LARGEST RESIDUAL FORCE             8.727E-09   AT NODE          2   DOF  1
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF DISP.        -1.397E-06   AT NODE       1139   DOF  1
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO DISP.        5.726E-12   AT NODE       1729   DOF  3
   INSTANCE: SHELL-1                                                                         
          THE FORCE     EQUILIBRIUM EQUATIONS HAVE CONVERGED

 AVERAGE MOMENT                     1.895E-07   TIME AVG. MOMENT      1.895E-07
 LARGEST RESIDUAL MOMENT            3.060E-07   AT NODE          2   DOF  6
   INSTANCE:                                                                                 
 LARGEST INCREMENT OF ROTATION     -3.519E-08   AT NODE      12142   DOF  6
   INSTANCE: SHELL-1                                                                         
 LARGEST CORRECTION TO ROTATION    -1.647E-12   AT NODE       4572   DOF  4
   INSTANCE: SHELL-1                                                                         
          MOMENT    EQUILIBRIUM NOT ACHIEVED WITHIN TOLERANCE.
 

 ***NOTE: THE SOLUTION APPEARS TO BE DIVERGING. CONVERGENCE IS JUDGED UNLIKELY.
 

 ***ERROR: TOO MANY ATTEMPTS MADE FOR THIS INCREMENT

 ***ERROR: THE ANALYSIS HAS BEEN TERMINATED DUE TO PREVIOUS ERRORS. ALL OUTPUT 
           REQUESTS HAVE BEEN WRITTEN FOR THE LAST CONVERGED INCREMENT.



     ANALYSIS SUMMARY:
     TOTAL OF          2  INCREMENTS
                       7  CUTBACKS IN AUTOMATIC INCREMENTATION
                      38  ITERATIONS INCLUDING CONTACT ITERATIONS IF PRESENT
                      38  PASSES THROUGH THE EQUATION SOLVER OF WHICH 
                      38  INVOLVE MATRIX DECOMPOSITION, INCLUDING
                       0  DECOMPOSITION(S) OF THE MASS MATRIX
                       1  REORDERING OF EQUATIONS TO MINIMIZE WAVEFRONT
                       0  ADDITIONAL RESIDUAL EVALUATIONS FOR LINE SEARCHES
                       0  ADDITIONAL OPERATOR EVALUATIONS FOR LINE SEARCHES
                       1  WARNING MESSAGES DURING USER INPUT PROCESSING
                       0  WARNING MESSAGES DURING ANALYSIS
                       0  ANALYSIS WARNINGS ARE NUMERICAL PROBLEM MESSAGES
                       0  ANALYSIS WARNINGS ARE NEGATIVE EIGENVALUE MESSAGES
                       2  ERROR MESSAGES



     JOB TIME SUMMARY
       USER TIME (SEC)      =   83.800    
       SYSTEM TIME (SEC)    =   1.9000    
       TOTAL CPU TIME (SEC) =   85.700    
       WALLCLOCK TIME (SEC) =         86
