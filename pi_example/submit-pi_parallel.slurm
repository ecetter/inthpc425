#!/bin/bash

#SBATCH --job-name=pi_parallel
#SBATCH --account=open
#SBATCH --partition=open
#SBATCH --nodes=3
#SBATCH --ntasks-per-node=4
#SBATCH --mem=1G
#SBATCH --time=00:20:00
#SBATCH --output=slurm-%x.out
#SBATCH --error=slurm-%x.err

source ~/.bashrc
module load anaconda3 intel impi
source activate inthpc425_env

srun python pi_parallel.py > pi_parallel.out
