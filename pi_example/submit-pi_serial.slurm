#!/bin/bash

#SBATCH --job-name=pi_serial
#SBATCH --account=open
#SBATCH --partition=open
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --mem=1G
#SBATCH --time=00:20:00
#SBATCH --output=slurm-%x.out
#SBATCH --error=slurm-%x.err

source ~/.bashrc
module load anaconda3
source activate inthpc425_env

python pi_serial.py > pi_serial.out
