#!/bin/bash
#SBATCH --job-name=ReadQC
#SBATCH -n 1
#SBATCH -N 1
#SBATCH -c 8
#SBATCH --mem=40G
#SBATCH --partition=xeon
#SBATCH --qos=general
#SBATCH -o %x_%A.out
#SBATCH -e %x_%A.err

###### CONTRIBUTOR DETAILS ###############
# NAME  : VIJENDER SINGH
# EMAIL : vijender.singh@uconn.edu
##########################################

# Get info about compute node on which Job will run
hostname

# Create output Directory "TrimReads"
mkdir -p TrimReads

# Trimmomatic command
# PE # paired end reads , for Single end reads change it to SE
# -threads 8 # Multithreading with 8cpus
# sample_R1.fastq.gz sample_R2.fastq.gz # Input paired end reads
# ./TrimReads/trim_sample_R1.fastq.gz ./TrimReads/sample_R1_singles.fastq.gz  # Output Reads
# ./TrimReads/trim_sample_R2.fastq.gz ./TrimReads/sample_R2_singles.fastq.gz  # Output Reads
# ILLUMINACLIP:NexteraPE-PE # Specifying the file with adapter sequences. If not loacted in same directory provide path to the file.
# SLIDINGWINDOW:4:25  # Phred quality will be average across for 4 bsases of reads and the cut off threshold is 25.
# Read is trim if average phred quality score fall below 25.
# MINLEN:45 # Post trimming the minimum read length acceptible is 45bps.  If read is horter than 45 the reads are dropped.
# HEADCROP:1 #  Cut the specified number of bases (1 base here) from the start of the read.  If the base 1base is of low Phred Score.
# CROP: Cut the read to a specified length by removing bases from the end. here 1 base is removed from the end
# Leave HEADCROP or CROP out of analysis if not needed.


java -jar $Trimmomatic PE -threads 8 \
        sample_R1.fastq.gz sample_R2.fastq.gz \
        ./TrimReads/trim_sample_R1.fastq.gz ./TrimReads/sample_R1_singles.fastq.gz \
        ./TrimReads/trim_sample_R2.fastq.gz ./TrimReads/sample_R2_singles.fastq.gz \
        ILLUMINACLIP:NexteraPE-PE.fa:2:30:10 \
        SLIDINGWINDOW:4:25 MINLEN:45 HEADCROP:1 CROP:1
