#!/bin/bash
#SBATCH --mail-type=END               
#SBATCH --mail-user=jeffc@email.unc.edu

total_jobs=32 

for (( label=1; label<=total_jobs; label++ )); do
    echo "Submitting for label num: $label"
    sbatch /nas/longleaf/home/jeffc/CAPFEWS/innerLoop.sh $label
done