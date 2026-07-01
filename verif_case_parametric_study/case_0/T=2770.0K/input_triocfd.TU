                                             # Global performance file #

This is the global file for tracking performance in TRUST. It stores aggregated quantities.
More detailed statistics can be found in the input_triocfd_csv.TU file
For time loop, only standard counters of level 1 are printed alongside your custom counters
Time is given in seconds

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                                              Context of the computation
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Date:     01-07-2026 -- 15:00:50
OS:       is233682__Linux__x86_64__6.17.0-23-generic__#23~24.04.1-Ubuntu SMP PREEMPT_DYNAMIC Tue Apr 14 16:11:48 UTC 2
CPU model : Intel(R) Xeon(R) CPU E5-2630 v4 @ 2.20GHz
Total number of threads:40
GPU model: No GPU used for the computation
Nb procs used for the computation: 1
TRUST version: 1.9.8_beta
Total number of elements used for the calculation: 15658

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                                           Computation start-up statistics
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Total time of the start-up:                                                0.836118       

Number of calls to the linear solver per time step:                        2              
Average time of the resolution of the linear problem per call:             0.00878257     
Average number of iteration of the linear solver per call:                 0              

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                                                 Time loop statistics
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Total time of the time loop:                                               591.284        
Number of time steps:                                                      1326           
Skipped time steps:                                                        0              
Average time per time step:                                                0.445916       
Standard deviation between time steps:                                     1.65551        
Time elapsed in the skipped time steps:                                    0              


Standard counter description             | Time/step       | % loop time | Call(s)/step   
------------------------------------------------------------------------------------------
Linear solver resolutions Ax=B           | 0.364586        | 81.8        | 8              
Matrix assembly for implicit scheme      | 0.02816238      |  6.3        | 8              
Convection operator                      | 0.004915286     |  1.1        | 4              
Diffusion operator                       | 0.009461629     |  2.1        | 8              
Gradient operator                        | 1.823013e-05    |  0.0        | 0              
Divergence operator                      | 0.0007658109    |  0.2        | 1              
Source terms                             | 0.006202782     |  1.4        | 8              
Update ::mettre_a_jour                   | 0.001890118     |  0.4        | 2              
Computation of the time step dt          | 0.001313345     |  0.3        | 3              
Post-treatment operations                | 2.000973e-05    |  0.0        | 2              
Other operations                         | 0.02858019      |  6.4        | 

Average number of iteration of the linear solver per call:                 2.3            

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                                              Post-resolution statistics
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Time of the post-resolution:                                               0.000921482    

Total time for the whole computation                                       592.124        

