#!/bin/bash
#$ -pe mpi 3
#$ -N dask_test
#$ -cwd
#$ -q all.q
#$ -o /common/zhanh/hpc_testing_zhanh/out2
#$ -e /common/zhanh/hpc_testing_zhanh/err2
module load openmpi/4.1.2
module unload uge
source /common/zhanh/anaconda3/etc/profile.d/conda.sh
conda activate tf_test_zhanh
/common/zhanh/anaconda3/envs/tf_test_zhanh/bin/python
$(which mpirun) --host $(echo $(awk <$PE_HOSTFILE '{print $1":"$2}')|tr ' ' ,)
python /common/zhanh/hpc_testing_zhanh/tensorflow_testing.py
