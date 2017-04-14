#! /bin/bash -x
################################################################################
#
# for K computer
#
################################################################################
#PJM --rsc-list "rscgrp=small"
#PJM --rsc-list "node=10"
#PJM --rsc-list "elapse=02:00:00"
#PJM --stg-transfiles all
#PJM --mpi "use-rankdir"
#PJM --stgin  "rank=* ../../../../bin/nhm_driver           %r:./"
#PJM --stgin  "rank=* /volume1/home/ra000007/a03106/nicam-dc-mini/nicam-dc-mini-master/test/case/jablonowski/gl05rl00z40pe10/nhm_driver.cnf               %r:./"
#PJM --stgin  "rank=* ../../../../data/mnginfo/rl00-prc10.info  %r:./"
#PJM --stgin  "rank=* ../../../../data/grid/vgrid/vgrid40_24000-600m.dat %r:./"
#PJM --stgin  "rank=* ../../../../data/grid/boundary/gl05rl00pe10/boundary_GL05RL00.pe%06r %r:./"
#PJM --stgout "rank=* %r:./* /volume1/home/ra000007/a03106/nicam-dc-mini/nicam-dc-mini-master/test/case/jablonowski/gl05rl00z40pe10/"
#PJM -j
#PJM -s
#
. /work/system/Env_base
#
export PARALLEL=8
export OMP_NUM_THREADS=8

# run
mpiexec ./nhm_driver || exit

################################################################################
