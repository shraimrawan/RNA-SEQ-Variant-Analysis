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

## Regenerate 
