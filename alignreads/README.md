# Running scripts in this folder 
The scripts are numbered in the order they must be run 

## Create Genome Index
I use STAR to align the RNA-seq data 
This script will create the initial genome index using STAR 
You will need the fasta and gtf file of the reference genome (in this case human) for this step 

## First Pass of the reads through the reference 
I use a manifest to feed files into this script. The manifest has the following layout 
Line1 = Sample ID
Line2 = RNA-seq data files (fastq)
Line3 = Path to save output files

The final output is combining all SJ files for the next step

## Regenerate the genome index
Use the combined SJ files from previous step to regenrate the genome index

## Second pass of the reads 
Rerun the reads using the second genome indexing. 

## Assigning read group information 
Adding read group information to the aligned data 

## MarkDuplicates
Identifies duplicate reads 

## Split GATK
Splits reads into exon segments and hard-clip any sequences overhanging into the intronic regions

## Base recalibration 
Allows us to determine the quality of the sequencing data. It adjusts base quality scores based on a machine learning algorithm. Will improve the accuracy of our variant calls. 

