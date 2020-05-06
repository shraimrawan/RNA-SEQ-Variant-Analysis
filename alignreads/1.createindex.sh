#!/bin/sh
#$ -cwd

STAR --runThreadN 16 --runMode genomeGenerate --genomeDir /scr1/users/shraimr/rnaseq/genomedir --genomeFastaFiles /mnt/isilon/dbhi_bfx/reference/human/g1k_v37/human_g1k_v37.fasta --sjdbGTFfile /scr1/users/shraimr/rnaseq/GRCh37hg19_updated.gtf --sjdbOverhang 99