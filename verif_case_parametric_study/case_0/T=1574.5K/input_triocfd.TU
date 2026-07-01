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
Total time of the start-up:                                                0.829376       

Number of calls to the linear solver per time step:                        2              
Average time of the resolution of the linear problem per call:             0.00529462     
Average number of iteration of the linear solver per call:                 0              

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                                                 Time loop statistics
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Total time of the time loop:                                               1012.53        
Number of time steps:                                                      3226           
Skipped time steps:                                                        0              
Average time per time step:                                                0.313866       
Standard deviation between time steps:                                     1.63536        
Time elapsed in the skipped time steps:                                    0              


Standard counter description             | Time/step       | % loop time | Call(s)/step   
------------------------------------------------------------------------------------------
Linear solver resolutions Ax=B           | 0.256065        | 81.6        | 5              
Matrix assembly for implicit scheme      | 0.01945491      |  6.2        | 5              
Convection operator                      | 0.003409633     |  1.1        | 3              
Diffusion operator                       | 0.006554193     |  2.1        | 5              
Gradient operator                        | 7.753857e-06    |  0.0        | 0              
Divergence operator                      | 0.0007510204    |  0.2        | 1              
Source terms                             | 0.004252208     |  1.4        | 5              
Update ::mettre_a_jour                   | 0.001852504     |  0.6        | 2              
Computation of the time step dt          | 0.001289038     |  0.4        | 3              
Post-treatment operations                | 1.829431e-05    |  0.0        | 2              
Other operations                         | 0.02021091      |  6.4        | 

Average number of iteration of the linear solver per call:                 1.77           

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                                              Post-resolution statistics
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Time of the post-resolution:                                               0.000766943    

Total time for the whole computation                                       1013.37        

