#!/bin/sh
#$ -cwd

STAR --runThreadN 16 --runMode genomeGenerate --genomeDir /scr1/users/shraimr/rnaseq/pass2_hg --genomeFastaFiles /mnt/isilon/dbhi_bfx/reference/human/g1k_v37/human_g1k_v37.fasta --sjdbFileChrStartEnd /scr1/users/shraimr/rnaseq/merged_SJ.filtered.out.tab.Pass1.sjdb --sjdbOverhang 150 --sjdbGTFfile /scr1/users/shraimr/rnaseq/GRCh37hg19_updated.gtf --limitSjdbInsertNsj 2000000