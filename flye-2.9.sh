#!/bin/bash
#SBATCH --job-name=FLYE_GENOME_ASSEMBLY
#SBATCH -N 1
#SBATCH -n 1
#SBATCH -c 32
#SBATCH --partition=himem
#SBATCH --qos=himem
#SBATCH --mail-type=END
#SBATCH --mem=300G
#SBATCH --mail-user=email@uconn.edu
#SBATCH -o %x_%j.out

###### CONTRIBUTOR DETAILS ###############
# NAME  : GABRIELLE HARTLEY
# EMAIL : gabrielle.hartley@uconn.edu
##########################################

#load the flye module with version 2.9
module load flye/2.9

# --nano-hq for ONT reads basecalled with SUP algorithm/Guppy 5.0; --nano-raw for ONT reads basecalled prior to Guppy 5.0
# --genome-size = genome size estimate, ie. 2.8g 
# --out-dir = out directory
# --asm-coverage = subset this coverage of the longest reads for initial disjointig assembly to reduce memory consumption for large genome assemblies
# --threads = number of threads

flye --nano-hq ONT_reads.fastq \
        --genome-size 2.8g \
        --out-dir out_directory \
        --asm-coverage 30 \
        --threads 32
