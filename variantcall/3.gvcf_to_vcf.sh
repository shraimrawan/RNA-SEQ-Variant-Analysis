#!/bin/sh
#$ -cwd

java -Xmx4g -Djava.io.tmpdir=/scr1/users/shraimr -jar /mnt/isilon/dbhi_bfx/bin/gatk/gatk-4.0.2.1/gatk-package-4.0.2.1-local.jar GenotypeGVCFs -R /mnt/isilon/dbhi_bfx/reference/human/g1k_v37/human_g1k_v37.fasta --dbsnp /mnt/isilon/dbhi_bfx/reference/human/All_20180423.vcf.gz -V /scr1/users/shraimr/rnaseq/variantcall/combined.12162019.gvcf -O ifx.combined.12162019.vcf