#!/bin/sh
#$ -cwd

java -Xmx4g -Djava.io.tmpdir=/scr1/users/shraimr -jar /mnt/isilon/dbhi_bfx/bin/gatk/gatk-4.0.2.1/gatk-package-4.0.2.1-local.jar VariantFiltration -R /mnt/isilon/dbhi_bfx/reference/human/g1k_v37/human_g1k_v37.fasta -V /scr1/users/shraimr/rnaseq/variantcall/ifx.combined.12162019.vcf -window 35 -cluster 3 --filter-name FS --filter-expression "FS > 30.0" --filter-name QD -filter "QD < 2.0" -O filtered.ifx.vcf.12172019.vcf