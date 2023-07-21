#!/bin/bash
#$ -N job_test_zhanh
#$ -cwd
#$ -q 1tb.q
#$ -o /common/zhanh/hpc_testing_zhanh/out_test
#$ -e /common/zhanh/hpc_testing_zhanh/error_test
source /common/zhanh/anaconda3/etc/profile.d/conda.sh
conda activate tf_test_zhanh
/common/zhanh/anaconda3/envs/tf_test_zhanh/bin/python
python \
/common/zhanh/hpc_testing_zhanh/tensorflow_testing.py
