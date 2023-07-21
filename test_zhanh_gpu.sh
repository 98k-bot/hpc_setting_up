#!/bin/bash
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=5
#SBATCH -p gpu
#SBATCH --gpus=a100:4
#SBATCH --job-name=test_zhanh
#SBATCH -t 5:00:00
#SBATCH --mem=10000MB
#SBATCH --mail-type=FAIL,BEGIN,END
#SBATCH --mail-user=huixin.zhan@cshs.org
#SBATCH -o /common/zhanh/hpc_testing_zhanh/out_gpu
#SBATCH -e /common/zhanh/hpc_testing_zhanh/err_gpu
source /common/zhanh/anaconda3/etc/profile.d/conda.sh
conda activate tf_test_zhanh_gpu
/common/zhanh/anaconda3/envs/tf_test_zhanh_gpu/bin/python
python \
/common/zhanh/hpc_testing_zhanh/tensorflow_testing.py \
--index 3 \
--template 'False' \
--population 100 \
--generations 100 \
--njobs 5
