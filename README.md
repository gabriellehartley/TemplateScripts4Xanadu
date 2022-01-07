# TemplateScripts4Xanadu
Scripts added here are to illustrate the usage syntax of different packages and commands.  The scripts deposited here are with a sole purpose of serving as templates.  Users have to modify them to use in their own analysis.  

Xanadu users are encourage to deposit scripts in this repository.  Please follow th following guidelines.
#### 1. Include version of the pacakge in the script name. e.g. if you are depositing a template script for **trinity/2.8.5** then please name the script as **trinity-2.8.5.sh**
#### 2. Please keep the resource header.
3. Please include your Name in the script after the resource header. You can include your emailID as well if you donot mind communicating with potential users.
4. Please annotate your script as much as possible so that it is easy to follow for potential users. A basic annotation example is given below.
5. As a user if you encounter issue with the deposited script, please get in touch to get it fixed.  Either email the contributor or cbcsupport@uconn.edu.
6. Finally please appreciate the efforts of the individuals who contributed their scripts.

### Sample script file name : fastqc-0.11.7.sh
```
#!/bin/bash
#SBATCH -J test
#SBATCH -p general
#SBATCH -q general
#SBATCH -c 4
#SBATCH --mem=10G
#SBATCH -o log-%j.out

## CONTRIBUTOR DETAILS
# NAME  : VIJENDER SINGH
# EMAIL : userID@domain.com

# Command below loads the fastqc module with 0.11.7 version
module load fastqc/0.11.7

# Creates fastqc output directory
mkdir -p RAWfastqc_OUT

#fastqc command
# -t number of threads
# -o output diretory
# ../01_raw_reads/${sample}*_R1*.fastq.gz ../01_raw_reads/${sample}*_R2*.fastq.gz : PATH to INPUT files

fastqc -t 4 -o ./RAWfastqc_OUT ../01_raw_reads/${sample}*_R1*.fastq.gz ../01_raw_reads/${sample}*_R2*.fastq.gz


```

# We thank all the contributors for their efforts.
