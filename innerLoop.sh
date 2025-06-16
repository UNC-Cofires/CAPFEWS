#!/bin/bash
#SBATCH -t 00:20:00
#SBATCH --mem=800
#SBATCH --ntasks=1
#SBATCH --job-name=CAPS_test
#SBATCH --output=job*status/out*%j.out
#SBATCH --error=job*status/err*%j.err

# Load necessary modules and activate conda environment
module purge
module load python/3.8
source ~/CAPSjeff/bin/activate


label_num=$1
# Get the label number from command line argument
label_base="calfews_src/data/input/cap-data-crss-"
label=${label_base}${label_num}
echo "${label_num}"
echo "${label_base}"
echo "${label}"

results_base='results/'
results="${results_base}${label_num}"

echo "results_base: ${results_base}"
echo "results: ${results}"

# Create results directory
mkdir -p ${results}

# Run the Python script
time python3 -W ignore run_main_cy.py $results $label 1 1  