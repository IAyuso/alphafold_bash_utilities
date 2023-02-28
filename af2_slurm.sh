#!/bin/bash

# Job name:
#SBATCH --job-name=AF2_cpu

# Project:
#SBATCH --account=nnxxxx

# Number of cores
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=10   ## 10 for RI DFT, 20 for hybrid DFT, 3xNAtoms for NumFreq

# Wall clock limit:
#SBATCH --time=24:00:00

# Max memory usage:
#SBATCH --mem-per-cpu=4GB

## Set up job environment
module purge
module load Alphafold/2.0.0.1  
#Data_location=$ALPHAFOLD_DATA


##  Example: run.sh -d $ALPHAFOLD_DATA -o out -m model_1 -f query.fasta -t 2020-05-14)

## Copy input files to the work directory:
cp * $SCRATCH
mkdir $SUBMITDIR/result

## Copy output files to home

cleanup "cp $SCRATCH/*  $SUBMITDIR/result/"
cleanup "cp -r $SCRATCH/*  $SUBMITDIR/result/"

## Do some work:
cd $SCRATCH
./alphafold_batch.sh

