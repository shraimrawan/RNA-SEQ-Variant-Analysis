# RNA-SEQ-Variant-Analysis
Calling variants from IBD RNA-seq data 
Used publically available RNA-sequencing data from ArrayExpress. RNA data was from inflammed intestinal mucosa of inflammatory bowel disease patients. Link is below 
https://www.ebi.ac.uk/arrayexpress/experiments/E-MTAB-7604/samples/?s_page=1&s_pagesize=25

## Running the code
First we will need to align the RNA-seq data to reference genome. Refer to code found in alignreads folder in this repo 

Second we will call genomic variants from the RNA-seq data. Refer to code found in variantcall folder in this repo

# Run Burden Test and Variant Calling using SNPEff in the Burden Test Repo
Use the final filter vcf produced by the final step in the variantcall folder and use that fo the Burden test steps
