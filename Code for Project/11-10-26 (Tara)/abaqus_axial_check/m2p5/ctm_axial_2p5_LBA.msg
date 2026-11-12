1

   Abaqus 2020                                  Date 10-Nov-2026   Time 17:48:17
   For use by CAL TECH under license from Dassault Systemes or its subsidiary.

                                                                                 
                                                                                 
 STEP    1     INCREMENT     1     STEP TIME    0.00    


                        S T E P       1     C A L C U L A T I O N   O F   E I G E N V A L U E S

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
                              ONLY INITIAL STRESS EFFECTS ARE INCLUDED IN THE
                              STIFFNESS MATRIX

     THIS IS A LINEAR PERTURBATION STEP.
     ALL LOADS ARE DEFINED AS CHANGE IN LOAD TO THE REFERENCE STATE

     EXTRAPOLATION WILL NOT BE USED

     CHARACTERISTIC ELEMENT LENGTH      2.50    

     DETAILS REGARDING ACTUAL SOLUTION WAVEFRONT REQUESTED

     DETAILED OUTPUT OF DIAGNOSTICS TO DATABASE REQUESTED

     PRINT OF INCREMENT NUMBER, TIME, ETC., TO THE MESSAGE FILE EVERY     1  INCREMENTS

  NUMBER OF EQUATIONS =    119412     NUMBER OF RHS =    1
  NUMBER OF FLOATING PT. OPERATIONS =  1.57E+10

     CHECK POINT   START OF SOLVER    

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   1.5000    
       ELAPSED SYSTEM TIME (SEC)    =   0.0000    
       ELAPSED TOTAL CPU TIME (SEC) =   1.5000    
       ELAPSED WALLCLOCK TIME (SEC) =          2

     CHECK POINT   START OF SOLVER    
  
 COMPUTER PRECISION USED BY ABAQUS       2.22045e-16
 CONVERGENCE CRITERION FOR LANCZOS RUN   1.81899e-12
  
 NUMBER OF EQUATIONS                                                          119412
 NUMBER OF UNRESTRAINED DEGREES OF FREEDOM                                    119405
 HEURISTIC SCALE FOR THE FIRST NONZERO EIGENVALUES (PROBLEM SCALE)   9.84080e-06
 INITIAL SHIFT VALUE                                                 9.84080e-06
  
 NUMBER OF CPUS USED BY DIRECT SOLVER     1
  
 NUMBER OF NEGATIVE EIGENVALUES     0
 NUMBER OF POSITIVE EIGENVALUES    119412
 NUMBER OF NEGATIVE EIGENVALUES NOT ASSOCIATED WITH LAGRANGE MULTIPLIERS     0
 NUMBER OF LAGRANGE MULTIPLIERS     0
  
 COMPUTATIONAL INTERVAL FOR THE INITIAL LANCZOS RUN
 
 EIGENVALUES NEEDED TO THE RIGHT OF SHIFT VALUE    4
 EIGENVALUES NEEDED TO THE LEFT OF SHIFT VALUE     4
 RIGHT BOUNDARY OF THE COMPUTATIONAL INTERVAL   2.21595e+10
 LEFT BOUNDARY OF THE COMPUTATIONAL INTERVAL    0.00000e+00
  
 LANCZOS RUN TERMINATED. NUMBER OF STEPS:    1
 SINGULAR BLOCK BETA
  
 NUMBER OF ACCEPTED EIGENVALUES    0
  
 FACTORIZATION WITH NEW SHIFT VALUE IS REQUIRED
  
 TRUST INTERVALS AFTER LANCZOS RUN AND COMPRESSION
  
 NUMBER OF TRUST INTERVALS    1
  
 -------------------------------------------------------------------------------------
 | KEY | INSIDE |      INERTIAS     |  SENTINELS  |   OUTSIDE   |  NEED TO FIND      |
 |      ENDS OF INTERVAL     |     ENDS OF SENTINEL      |   COMPUTATIONAL INTERVAL  |
 -------------------------------------------------------------------------------------
 |  +  |      0 |        0        0 |     0     0 |     0     0 |      4     4       |
 |  0.00000e+00  9.84080e-06 |  0.00000e+00  9.84080e-06 |  0.00000e+00  2.21595e+10 |
 -------------------------------------------------------------------------------------
  
 DATA FOR CHOOSING SHIFT
  
 NUMBER OF EIGENVALUES NEEDED IN THE PRIMARY TRUST INTERVAL    4
  
 NUMBER OF MODES FORMING SENTINEL TO THE RIGHT    0
 SHIFT RIGHT         1.08249e-04
  
 NUMBER OF MODES FORMING SENTINEL TO THE LEFT     0
 SHIFT LEFT         -8.85672e-05
  
 SHIFTING TO THE RIGHT DIRECTION
 NEW SHIFT           1.08249e-04
  
 NUMBER OF NEGATIVE EIGENVALUES     0
 NUMBER OF POSITIVE EIGENVALUES    119412
 NUMBER OF NEGATIVE EIGENVALUES NOT ASSOCIATED WITH LAGRANGE MULTIPLIERS     0
 NUMBER OF LAGRANGE MULTIPLIERS     0
  
 NEW LANCZOS RUN IS REQUIRED
  
 TYPE OF RUN: EXPAND THE TRUST INTERVAL TO THE RIGHT
 EIGENVALUES NEEDED TO THE RIGHT     4
 EIGENVALUES NEEDED TO THE LEFT      0
 RIGHT BOUNDARY OF THE INTERVAL   2.21595e+10
 LEFT BOUNDARY OF THE INTERVAL    1.08249e-04
  
 TRUST INTERVALS AFTER FACTORIZATION AND COMPRESSION
  
 -------------------------------------------------------------------------------------
 | KEY | INSIDE |      INERTIAS     |  SENTINELS  |   OUTSIDE   |  NEED TO FIND      |
 |      ENDS OF INTERVAL     |     ENDS OF SENTINEL      |   COMPUTATIONAL INTERVAL  |
 -------------------------------------------------------------------------------------
 |  +  |      0 |        0        0 |     0     0 |     0     0 |      4     4       |
 |  0.00000e+00  1.08249e-04 |  0.00000e+00  1.08249e-04 |  0.00000e+00  2.21595e+10 |
 -------------------------------------------------------------------------------------
  
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
 |  0.00000e+00  1.08249e-04 |  0.00000e+00  1.08249e-04 |  0.00000e+00  2.21595e+10 |
 -------------------------------------------------------------------------------------
  
 DATA FOR CHOOSING SHIFT
  
 NUMBER OF EIGENVALUES NEEDED IN THE PRIMARY TRUST INTERVAL    4
  
 NUMBER OF MODES FORMING SENTINEL TO THE RIGHT    0
 SHIFT RIGHT         6.09653e-01
  
 NUMBER OF MODES FORMING SENTINEL TO THE LEFT     0
 SHIFT LEFT          1.08249e-04
  
 SHIFTING TO THE RIGHT DIRECTION
 NEW SHIFT           6.09653e-01
  
 NUMBER OF NEGATIVE EIGENVALUES     0
 NUMBER OF POSITIVE EIGENVALUES    119412
 NUMBER OF NEGATIVE EIGENVALUES NOT ASSOCIATED WITH LAGRANGE MULTIPLIERS     0
 NUMBER OF LAGRANGE MULTIPLIERS     0
  
 NEW LANCZOS RUN IS REQUIRED
  
 TYPE OF RUN: EXPAND THE TRUST INTERVAL TO THE RIGHT
 EIGENVALUES NEEDED TO THE RIGHT     4
 EIGENVALUES NEEDED TO THE LEFT      0
 RIGHT BOUNDARY OF THE INTERVAL   2.21595e+10
 LEFT BOUNDARY OF THE INTERVAL    6.09653e-01
  
 TRUST INTERVALS AFTER FACTORIZATION AND COMPRESSION
  
 -------------------------------------------------------------------------------------
 | KEY | INSIDE |      INERTIAS     |  SENTINELS  |   OUTSIDE   |  NEED TO FIND      |
 |      ENDS OF INTERVAL     |     ENDS OF SENTINEL      |   COMPUTATIONAL INTERVAL  |
 -------------------------------------------------------------------------------------
 |  +  |      0 |        0        0 |     0     0 |     0     0 |      4     4       |
 |  0.00000e+00  6.09653e-01 |  0.00000e+00  6.09653e-01 |  0.00000e+00  2.21595e+10 |
 -------------------------------------------------------------------------------------
  
 LANCZOS RUN TERMINATED. NUMBER OF STEPS:   10
 ALL THE EIGENVALUES REQUESTED ON THIS LANCZOS RUN ARE FOUND
  
 NUMBER OF ACCEPTED EIGENVALUES    4
  
 ACCEPTED EIGENVALUES
   6.10984e-01  6.10984e-01  6.10995e-01  6.10995e-01
  
 FACTORIZATION WITH NEW SHIFT VALUE IS REQUIRED
  
 TRUST INTERVALS AFTER LANCZOS RUN AND COMPRESSION
  
 NUMBER OF TRUST INTERVALS    1
  
 -------------------------------------------------------------------------------------
 | KEY | INSIDE |      INERTIAS     |  SENTINELS  |   OUTSIDE   |  NEED TO FIND      |
 |      ENDS OF INTERVAL     |     ENDS OF SENTINEL      |   COMPUTATIONAL INTERVAL  |
 -------------------------------------------------------------------------------------
 |  +  |      0 |        0        0 |     0     0 |     0     0 |      4     4       |
 |  0.00000e+00  6.09653e-01 |  0.00000e+00  6.09653e-01 |  0.00000e+00  2.21595e+10 |
 -------------------------------------------------------------------------------------
  
 DATA FOR CHOOSING SHIFT
  
 NUMBER OF EIGENVALUES NEEDED IN THE PRIMARY TRUST INTERVAL    4
  
 NUMBER OF MODES FORMING SENTINEL TO THE RIGHT    4
 SHIFT RIGHT         6.11520e-01
  
 NUMBER OF MODES FORMING SENTINEL TO THE LEFT     0
 SHIFT LEFT          6.09653e-01
  
 SHIFTING TO THE RIGHT DIRECTION
 NEW SHIFT           6.11520e-01
  
 NUMBER OF NEGATIVE EIGENVALUES     4
 NUMBER OF POSITIVE EIGENVALUES    119408
 NUMBER OF NEGATIVE EIGENVALUES NOT ASSOCIATED WITH LAGRANGE MULTIPLIERS     4
 NUMBER OF LAGRANGE MULTIPLIERS     0
  
 THE REQUIRED NUMBER OF EIGENVALUES IS FOUND
  
 FINAL TRUST INTERVAL
  
 -------------------------------------------------------------------------------------
 | KEY | INSIDE |      INERTIAS     |  SENTINELS  |   OUTSIDE   |  NEED TO FIND      |
 |      ENDS OF INTERVAL     |     ENDS OF SENTINEL      |   COMPUTATIONAL INTERVAL  |
 -------------------------------------------------------------------------------------
 |  +  |      4 |        0        4 |     0     0 |     0     0 |      4     0       |
 |  0.00000e+00  6.11520e-01 |  0.00000e+00  6.11520e-01 |  0.00000e+00  6.11520e-01 |
 -------------------------------------------------------------------------------------
  
 FIRST EIGENVALUE REQUESTED BY THE USER     1
 THERE MAY BE MORE EIGENVALUES IN THE SPECIFIED RANGE THAN REQUESTED
  
 EIGENVALUES REQUESTED BY THE USER
   6.10984e-01  6.10984e-01  6.10995e-01  6.10995e-01
  
 EIGENVALUE EXTRACTION USING THE LANCZOS EIGENSOLVER IS COMPLETE
 NUMBER OF LANCZOS RUNS       :   3
 NUMBER OF LANCZOS STEPS      :  41
 NUMBER OF FACTORIZATIONS     :   4
 NUMBER OF BACK SUBSTITUTIONS :  43

     CHECK POINT  END OF SOLVER       

       ELAPSED USER TIME (SEC)      =   15.500    
       ELAPSED SYSTEM TIME (SEC)    =   1.6000    
       ELAPSED TOTAL CPU TIME (SEC) =   17.100    
       ELAPSED WALLCLOCK TIME (SEC) =         17


          THE ANALYSIS HAS BEEN COMPLETED



     ANALYSIS SUMMARY:
     TOTAL OF          1  INCREMENTS
                       0  CUTBACKS IN AUTOMATIC INCREMENTATION
                       1  ITERATIONS INCLUDING CONTACT ITERATIONS IF PRESENT
                      47  PASSES THROUGH THE EQUATION SOLVER OF WHICH 
                       4  INVOLVE MATRIX DECOMPOSITION, INCLUDING
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
       USER TIME (SEC)      =   19.300    
       SYSTEM TIME (SEC)    =   2.1000    
       TOTAL CPU TIME (SEC) =   21.400    
       WALLCLOCK TIME (SEC) =         22
