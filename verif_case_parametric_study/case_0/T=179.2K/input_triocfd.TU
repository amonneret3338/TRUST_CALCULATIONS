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
Total time of the start-up:                                                0.830664       

Number of calls to the linear solver per time step:                        2              
Average time of the resolution of the linear problem per call:             0.00536273     
Average number of iteration of the linear solver per call:                 0              

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                                                 Time loop statistics
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Total time of the time loop:                                               129.152        
Number of time steps:                                                      190            
Skipped time steps:                                                        0              
Average time per time step:                                                0.679747       
Standard deviation between time steps:                                     1.61737        
Time elapsed in the skipped time steps:                                    0              


Standard counter description             | Time/step       | % loop time | Call(s)/step   
------------------------------------------------------------------------------------------
Linear solver resolutions Ax=B           | 0.555171        | 81.7        | 12             
Matrix assembly for implicit scheme      | 0.04460825      |  6.6        | 12             
Convection operator                      | 0.007829417     |  1.2        | 6              
Diffusion operator                       | 0.01487784      |  2.2        | 12             
Gradient operator                        | 0.0001291711    |  0.0        | 0              
Divergence operator                      | 0.0007961441    |  0.1        | 1              
Source terms                             | 0.009582196     |  1.4        | 12             
Update ::mettre_a_jour                   | 0.001902105     |  0.3        | 2              
Computation of the time step dt          | 0.001307711     |  0.2        | 3              
Post-treatment operations                | 5.412438e-05    |  0.0        | 2              
Other operations                         | 0.04348886      |  6.4        | 

Average number of iteration of the linear solver per call:                 6.75           

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                                              Post-resolution statistics
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Time of the post-resolution:                                               0.00105519     

Total time for the whole computation                                       129.984        

