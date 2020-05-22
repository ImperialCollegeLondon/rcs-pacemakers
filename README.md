# Pacemakers

These instructions describe how to run a lightly-modified version of the [Pacemakers](https://www.kaggle.com/jamesphoward/pacemaker-identification-neural-network-example) Kaggle kernel on Imperial College's HPC system.

Platforms such as Kaggle, Colab and Azure Notebooks are great for sharing notebooks but there are advantages to using the [RCS Compute Service](https://www.imperial.ac.uk/admin-services/ict/self-service/research-support/rcs/computing/) for your research:

- Your data remains inside the College, via the [RDS](https://www.imperial.ac.uk/admin-services/ict/self-service/research-support/rcs/rds/)
- You can run long, non-interactive and/or parallel jobs (see below)
- You have access to multi-GPU nodes and several models of GPU ([details](https://www.imperial.ac.uk/admin-services/ict/self-service/research-support/rcs/computing/job-sizing-guidance/gpu/))

## Setup

1. Clone or download this repository to the HPC system
1. Download the [data](https://www.kaggle.com/jamesphoward/pacemakers/download) to `Train` and `Test` folders in the same directory
1. Create a conda environment with the required dependencies: `conda env create --file environment.yml`

## Execute

To run the notebook in Jupyter (P1000):

1. Visit the [RCS Jupyter Service](https://jupyter.rcs.imperial.ac.uk/)
1. Create a new server (GPU recommended)
1. Open `pacemakers.ipynb` and run the notebook

To run the notebook as a job (P100):

1. `qsub pacemakers.pbs.sh`
1. On job completion visit the [RCS Jupyter Service](https://jupyter.rcs.imperial.ac.uk/)
1. Open `pacemakers.ipynb` and review the outputs

## Acknowledgements

Many thanks to [James Howard](http://www.jamesphoward.com/) for sharing his work and reviewing these instructions.
