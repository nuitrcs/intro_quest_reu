#!/bin/bash
#SBATCH --account=<OUR_CLASSROOM_ACCOUNT>
#SBATCH --partition=short
#SBATCH --time=00:10:00  
#SBATCH --nodes=1    
#SBATCH --ntasks-per-node=1     
#SBATCH --mem=4G      
#SBATCH --job-name=my_test_job

## Initialize mamba
module purge
module load mamba/24.3.0
eval "$('/hpc/software/mamba/24.3.0/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
source "/hpc/software/mamba/24.3.0/etc/profile.d/mamba.sh"

## Activate python environment 
mamba activate /projects/e53006/0_RCS_WORKSHOP/simple_py312_env

## Run code 
cd <PATH_TO_SCRIPT>

python hello_world.py
