#PBS -l walltime=01:00:00,select=1:ncpus=4:mem=24G:ngpus=1:gpu_type=K80
eval "$($HOME/anaconda3/bin/conda shell.bash hook)"
conda activate pacemakers
cd $PBS_O_WORKDIR
python -mjupyter nbconvert pacemakers.ipynb --execute --inplace --ExecutePreprocessor.kernel_name=python3 --ExecutePreprocessor.timeout=-1
