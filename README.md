# TemplateScripts4Xanadu
Scripts added here are to illustrate the usage syntax of different packages and commands.  The scripts deposited here are with a sole purpose of serving as templates.  Users have to modify them to use in their own analysis.  

Xanadu users are encourage to deposit scripts in this repository.  Please follow th following guidelines.
#### 1. Include version of the pacakge in the script name. e.g. if you are depositing a template script for `trinity/2.8.5` then please name the script as `trinity-2.8.5.sh`.
#### 2. Please keep the resource header.
#### 3. Include your Name in the script after the resource header. You can include your emailID as well if you donot mind communicating with potential users.
#### 4. Please annotate your script as much as possible so that it is easy to follow for potential users. A basic annotation example is given below.
#### 5. As a user if you encounter issue with the deposited script, please get in touch to get it fixed.  Either email the contributor or cbcsupport@uconn.edu.
#### 6. Finally please appreciate the efforts of the individuals who contributed their scripts.
###  7. You are welcome  to deposit scripts for same package with different version numbers. However,Please donot submit multiple scripts for the same package with same version number.  

### Sample script file name : fastqc-0.11.7.sh
```
#!/bin/bash
#SBATCH -J test
#SBATCH -p general
#SBATCH -q general
#SBATCH -c 4
#SBATCH --mem=10G
#SBATCH -o log-%j.out

###### CONTRIBUTOR DETAILS ###############
# NAME  : VIJENDER SINGH
# EMAIL : userID@domain.com
##########################################

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
## How to Contribute?
1. Create a github account if you donot have one then, Create a fork by clicking on `Fork` on top right corner of this repository page. 
2. A copy of the repository will be available in your GitHub account.  You can then add your scripts by clicking `Add File` next to green `code` tab.
3. Now, add files in your forked repository.  Once you have added all the scripts.  Create a pull request, by clicking Pull Requests.
4. This will take you to another page, where it will shows a green tab, asking to create Pull request. CLick it.
5. Further it will ask you to put a comment.  Add a short comment like name of Script(s) and submit it.
6.  This will notify mus that a new version is available and ask us to merge.  Which we will take care of. 


# We thank all the contributors for their efforts.
