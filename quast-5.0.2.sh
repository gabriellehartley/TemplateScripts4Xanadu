#!/bin/bash
#SBATCH --job-name=QUAST_ASSEMBLY_STATS
#SBATCH -N 1
#SBATCH -n 1
#SBATCH -c 16
#SBATCH --partition=general
#SBATCH --qos=general
#SBATCH --mail-type=END
#SBATCH --mem=10G
#SBATCH --mail-user=email@uconn.edu
#SBATCH -o %x_%j.out

###### CONTRIBUTOR DETAILS ###############
# NAME  : GABRIELLE HARTLEY
# EMAIL : gabrielle.hartley@uconn.edu
##########################################

#load the QUAST module with version 5.0.2
module load quast/5.0.2

# -o = out directory 

quast.py assembly.fasta -o out_directory
