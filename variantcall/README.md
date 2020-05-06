# Variant Calling from RNA-seq data 
The scripts are numbered in the order they must be run. The filtering step will depend on the data you are using, some users may choose not to filter their data

## Bam To g.vcf
We will use the Bam file from the last step in the aligning (base recalibration) as input to this script
We will produce g.vcf files to call out all sites in a genome, whether there is a variant or not, this is the standard way to complete a cohort analysis

## Combine all g.vcf files 

## gvcf to vcf 
To get the vcf file that only has the variants present in the data 

## Filter vcf 
Fisher Strand values (FS > 30.0)
Qual By Depth values (QD < 2.0)
Filter clusters of at least 3 SNPs that are within a window of 35 bases between them
