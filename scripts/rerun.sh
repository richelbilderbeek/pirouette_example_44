#!/bin/bash
#
# Re-run the code locally, to re-create the data and figure.
#
# Usage:
#
#   ./scripts/rerun.sh
#
#SBATCH --partition=gelifes
#SBATCH --time=24:00:00
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --ntasks=1
#SBATCH --mem=10G
#SBATCH --job-name=pirex44
#SBATCH --output=example_44.log
#
rm -rf example_44
rm *.png
time Rscript example_44.R
zip -r pirouette_example_44.zip example_44 example_44.R scripts *.png

