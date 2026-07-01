****************************************************************************************************************************************************************
***                                WIDEN YOUR WINDOW TO 160 CHARACTERS.  Use 'enscript -r -fCourier9' to print this document                                 ***
****************************************************************************************************************************************************************

------------------------------------------------------------------ PETSc Performance Summary: ------------------------------------------------------------------

/volatile/catB/am287175/Tools/GIT/TRUST/trust-code/exec/TRUST_mpi_opt on a  named is233682 with 1 process, by am287175 on Wed Jul  1 15:17:43 2026
Using PETSc Release Version 3.23.7, Sep 29, 2025

                         Max       Max/Min     Avg       Total
Time (sec):           1.013e+03     1.000   1.013e+03
Objects:              0.000e+00     0.000   0.000e+00
Flops:                3.949e+09     1.000   3.949e+09  3.949e+09
Flops/sec:            3.897e+06     1.000   3.897e+06  3.897e+06
MPI Msg Count:        0.000e+00     0.000   0.000e+00  0.000e+00
MPI Msg Len (bytes):  0.000e+00     0.000   0.000e+00  0.000e+00
MPI Reductions:       0.000e+00     0.000

Flop counting convention: 1 flop = 1 real number operation of type (multiply/divide/add/subtract)
                            e.g., VecAXPY() for real vectors of length N --> 2N flops
                            and VecAXPY() for complex vectors of length N --> 8N flops

Summary of Stages:   ----- Time ------  ----- Flop ------  --- Messages ---  -- Message Lengths --  -- Reductions --
                        Avg     %Total     Avg     %Total    Count   %Total     Avg         %Total    Count   %Total
 0:      Main Stage: 1.0092e+03  99.6%  0.0000e+00   0.0%  0.000e+00   0.0%  0.000e+00        0.0%  0.000e+00   0.0%
 2:        KSPSolve: 3.4153e+00   0.3%  3.9492e+09 100.0%  0.000e+00   0.0%  0.000e+00        0.0%  0.000e+00   0.0%

------------------------------------------------------------------------------------------------------------------------
See the 'Profiling' chapter of the users' manual for details on interpreting output.
Phase summary info:
   Count: number of times phase was executed
   Time and Flop: Max - maximum over all processors
                  Ratio - ratio of maximum to minimum over all processors
   Mess: number of messages sent
   AvgLen: average message length (bytes)
   Reduct: number of global reductions
   Global: entire computation
   Stage: stages of a computation. Set stages with PetscLogStagePush() and PetscLogStagePop().
      %T - percent time in this phase         %F - percent flop in this phase
      %M - percent messages in this phase     %L - percent message lengths in this phase
      %R - percent reductions in this phase
   Total Mflop/s: 1e-6 * (sum of flop over all processors)/(max time over all processors)
------------------------------------------------------------------------------------------------------------------------
Event                Count      Time (sec)     Flop                              --- Global ---  --- Stage ----  Total
                   Max Ratio  Max     Ratio   Max  Ratio  Mess   AvgLen  Reduct  %T %F %M %L %R  %T %F %M %L %R Mflop/s
------------------------------------------------------------------------------------------------------------------------

--- Event Stage 0: Main Stage

MatAssemblyBegin       1 1.0 8.1100e-07 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0     0
MatAssemblyEnd         1 1.0 2.8434e-04 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0     0
KSPSetUp               1 1.0 2.0332e-04 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0     0
PCSetUp                1 1.0 3.4600e-07 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0     0
VecAssemblyBegin      20 1.0 6.9870e-06 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0     0
VecAssemblyEnd        20 1.0 3.2490e-06 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0     0

--- Event Stage 2: KSPSolve

MatMult             6791 1.0 1.2593e+00 1.0 1.35e+09 1.0 0.0e+00 0.0e+00 0.0e+00  0 34  0  0  0  37 34  0  0  0  1069
MatSOR              6781 1.0 1.8674e+00 1.0 1.60e+09 1.0 0.0e+00 0.0e+00 0.0e+00  0 40  0  0  0  55 40  0  0  0   854
KSPSolve              10 1.0 3.4151e+00 1.0 3.95e+09 1.0 0.0e+00 0.0e+00 0.0e+00  0 100  0  0  0 100 100  0  0  0  1156
PCApply             6781 1.0 1.8699e+00 1.0 1.60e+09 1.0 0.0e+00 0.0e+00 0.0e+00  0 40  0  0  0  55 40  0  0  0   853
VecTDot            13582 1.0 8.7011e-02 1.0 3.36e+08 1.0 0.0e+00 0.0e+00 0.0e+00  0  9  0  0  0   3  9  0  0  0  3865
VecNorm             6791 1.0 3.3061e-02 1.0 1.68e+08 1.0 0.0e+00 0.0e+00 0.0e+00  0  4  0  0  0   1  4  0  0  0  5086
VecCopy                8 1.0 1.4208e-04 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   0  0  0  0  0     0
VecSet              6789 1.0 2.8673e-02 1.0 0.00e+00 0.0 0.0e+00 0.0e+00 0.0e+00  0  0  0  0  0   1  0  0  0  0     0
VecAXPY            13562 1.0 1.0550e-01 1.0 3.36e+08 1.0 0.0e+00 0.0e+00 0.0e+00  0  9  0  0  0   3  9  0  0  0  3183
VecAYPX             6783 1.0 4.6809e-02 1.0 1.68e+08 1.0 0.0e+00 0.0e+00 0.0e+00  0  4  0  0  0   1  4  0  0  0  3586
------------------------------------------------------------------------------------------------------------------------

Object Type          Creations   Destructions. Reports information only for process 0.

--- Event Stage 0: Main Stage

           Container     2              2
       Krylov Solver     0              1
              Matrix     1              1
      Preconditioner     0              1
              Vector     6              6
             Section     3              3
    Distributed Mesh     1              1
   Star Forest Graph     3              3
     Discrete System     1              1
           Weak Form     1              1

--- Event Stage 1: CreateStage


--- Event Stage 2: KSPSolve

========================================================================================================================
Average time to get PetscTime(): 4.85e-08
#PETSc Option Table entries:
-log_view :input_triocfd_petsc.TU # (source: code)
#End of PETSc Option Table entries
Compiled without FORTRAN kernels
Compiled with 64-bit PetscInt
Compiled with full precision matrices (default)
sizeof(short) 2 sizeof(int) 4 sizeof(long) 8 sizeof(void*) 8 sizeof(PetscScalar) 8 sizeof(PetscInt) 8
Configure options: --prefix=/volatile/catB/am287175/Tools/GIT/TRUST/trust-code/lib/src/LIBPETSC/petsc/linux_opt --with-single-library --with-shared-libraries=0 --with-make-np=40 --with-debugging=0 --COPTFLAGS="  -mavx2 -O3 -fPIC " --CXXOPTFLAGS="  -mavx2 -O3 -fPIC " --FOPTFLAGS="  -O3 -std=legacy -fPIC -fallow-argument-mismatch" --with-fortran=yes --with-fortran-bindings=0 --with-cxx-dialect=c++20  --with-clean=1 --with-ssl=0 --with-gmsh=0 --with-gmsh-exec=/bin/ls --with-windows-graphics=0 --download-scalapack=../ScaLAPACK-6f56981cb0cabffd8c72c7d1016146c4b8e276dc.tar.gz --download-mumps=../MUMPS_5.5.1.tar.gz --download-metis=../METIS-5.1.0-p12.tar.gz --download-suitesparse=../SuiteSparse-7.7.0.tar.gz --download-parmetis=../ParMETIS-4.0.3-p9.tar.gz --download-ptscotch=../PTSCOTCH-7.0.10.tar.gz --download-hypre=../hypre-2.33.0.tar.gz --with-blaslapack-dir=/volatile/catB/am287175/Tools/GIT/TRUST/trust-code/lib/src/LIBLAPACK --with-cudac=0 --CUDAFLAGS= --with-mpi-dir=/volatile/catB/am287175/Tools/GIT/TRUST/trust-code/lib/src/LIBMPI/mpich --with-64-bit-indices
-----------------------------------------
Libraries compiled on 2026-04-17 09:48:08 on is233682
Machine characteristics: Linux-6.17.0-14-generic-x86_64-with-glibc2.39
Using PETSc directory: /volatile/catB/am287175/Tools/GIT/TRUST/trust-code/lib/src/LIBPETSC/petsc/linux_opt
Using PETSc arch: 
-----------------------------------------

Using C compiler: /volatile/catB/am287175/Tools/GIT/TRUST/trust-code/lib/src/LIBMPI/mpich/bin/mpicc  -Wall -Wwrite-strings -Wno-unknown-pragmas -Wno-lto-type-mismatch -Wno-stringop-overflow -fstack-protector -fvisibility=hidden -mavx2 -O3 -fPIC 
Using Fortran compiler: /volatile/catB/am287175/Tools/GIT/TRUST/trust-code/lib/src/LIBMPI/mpich/bin/mpif90  -Wall -ffree-line-length-none -ffree-line-length-0 -Wno-lto-type-mismatch -Wno-unused-dummy-argument -O3 -std=legacy -fPIC -fallow-argument-mismatch   
-----------------------------------------

Using include paths: -I/volatile/catB/am287175/Tools/GIT/TRUST/trust-code/lib/src/LIBPETSC/petsc/linux_opt/include -I/volatile/catB/am287175/Tools/GIT/TRUST/trust-code/lib/src/LIBPETSC/petsc/linux_opt/include/suitesparse -I/volatile/catB/am287175/Tools/GIT/TRUST/trust-code/lib/src/LIBMPI/mpich/include
-----------------------------------------

Using C linker: /volatile/catB/am287175/Tools/GIT/TRUST/trust-code/lib/src/LIBMPI/mpich/bin/mpicc
Using Fortran linker: /volatile/catB/am287175/Tools/GIT/TRUST/trust-code/lib/src/LIBMPI/mpich/bin/mpif90
Using libraries: -Wl,-rpath,/volatile/catB/am287175/Tools/GIT/TRUST/trust-code/lib/src/LIBPETSC/petsc/linux_opt/lib -L/volatile/catB/am287175/Tools/GIT/TRUST/trust-code/lib/src/LIBPETSC/petsc/linux_opt/lib -lpetsc -Wl,-rpath,/volatile/catB/am287175/Tools/GIT/TRUST/trust-code/lib/src/LIBPETSC/petsc/linux_opt/lib -L/volatile/catB/am287175/Tools/GIT/TRUST/trust-code/lib/src/LIBPETSC/petsc/linux_opt/lib -Wl,-rpath,/volatile/catB/am287175/Tools/GIT/TRUST/trust-code/lib/src/LIBLAPACK -L/volatile/catB/am287175/Tools/GIT/TRUST/trust-code/lib/src/LIBLAPACK -Wl,-rpath,/volatile/catB/am287175/Tools/GIT/TRUST/trust-code/lib/src/LIBMPI/mpich/lib -L/volatile/catB/am287175/Tools/GIT/TRUST/trust-code/lib/src/LIBMPI/mpich/lib -Wl,-rpath,/usr/lib/gcc/x86_64-linux-gnu/13 -L/usr/lib/gcc/x86_64-linux-gnu/13 -lHYPRE -lspqr -lumfpack -lklu -lcholmod -lbtf -lccolamd -lcolamd -lcamd -lamd -lsuitesparseconfig -ldmumps -lmumps_common -lpord -lpthread -lscalapack -llapack -lblas -lptesmumps -lptscotchparmetisv3 -lptscotch -lptscotcherr -lesmumps -lscotch -lscotcherr -lparmetis -lmetis -lm -lX11 -lmpifort -lmpi -lgfortran -lm -lgfortran -lm -lgcc_s -lquadmath -lstdc++
-----------------------------------------

