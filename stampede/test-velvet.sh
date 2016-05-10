#!/bin/bash

#SBATCH -A iPlant-Collabs
#SBATCH -t 02:00:0
#SBATCH -N 1
#SBATCH -n 1
#SBATCH -J velvet-test
#SBATCH -p development

set -u

module load velvet

./run-velvet.pl -d $(SCRATCH)/data/assembly/velvet-fa -o $(SCRATCH)/velvet-out --debug
