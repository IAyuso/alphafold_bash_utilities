# alphafold_bash_utilities
This repository contains scripts useful to work with alphafold modelling in Slurm-managed clusters and posterior output management.

It is tailored for the Saga supercomputer of the Norwegian Research Infrastructure Services https://documentation.sigma2.no/index.html, but should be easily adapted to any other systems. Also, the renaming script should be useful for any purpose after some tweaking.

The list.txt input is a text file containing the names of the sequences that will be modelled, and an example is given. In Saga, for alphafold batch modelling the inputs needed are:
- list.txt
- fasta files of each sequence in list.txt
- af2_batch.sh, to iterate the list.txt
- af2_slurm.sh, Slurm script to run alphafold2 on Saga

To deal with the result folder, the script rename_output_af.sh iterates through list.txt to rename all the folders and relaxed models and put them in a common folder.
