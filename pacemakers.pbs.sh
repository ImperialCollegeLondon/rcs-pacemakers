#PBS -l walltime=01:00:00,select=1:ncpus=4:mem=24G:ngpus=1:gpu_type=P100
cd $PBS_O_WORKDIR
source ~/anaconda3/etc/profile.d/conda.sh
conda run --name pacemakers python -mjupyter nbconvert pacemakers.ipynb --execute --inplace --ExecutePreprocessor.kernel_name=python3 --ExecutePreprocessor.timeout=-1
