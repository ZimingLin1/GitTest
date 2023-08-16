#!/bin/bash
#SBATCH --job-name test_slurm        # Set a name for your job. This is especially useful if you have multiple jobs queued.
#SBATCH --partition short       # Slurm partition to use
#SBATCH --ntasks 1            # Number of tasks to run. By default, one CPU core will be allocated per task
#SBATCH --time 1-00:00          # Time limit in D-HH:MM
#SBATCH --mem-per-cpu=10       # Memory limit for each tasks (in MB)
#SBATCH -o myscript_%j.out      # File to which STDOUT will be written
#SBATCH -e myscript_%j.err      # File to which STDERR will be written
#SBATCH --mail-type=NONE        # Type of email notification- NONE,BEGIN,END,FAIL,ALL
#SBATCH --mail-user=zmlin@uw.edu # Email to which notifications will be sent
 
module load R
R CMD BATCH slurm_test.R