#!/bin/sh
#$ -cwd

LINE1=$(awk -v var="$SGE_TASK_ID" 'NR==var {print $1}' $manifest)
LINE2=$(awk -v var="$SGE_TASK_ID" 'NR==var {print $2}' $manifest)
LINE3=$(awk -v var="$SGE_TASK_ID" 'NR==var {print $3}' $manifest)

java -Xmx4g -Djava.io.tmpdir=/scr1/users/shraimr -jar /mnt/isilon/dbhi_bfx/bin/gatk/gatk-4.0.2.1/gatk-package-4.0.2.1-local.jar ApplyBQSR -R /mnt/isilon/dbhi_bfx/reference/human/g1k_v37/human_g1k_v37.fasta -I ${LINE2} -bqsr /scr1/users/shraimr/rnaseq/baserecal/recal_data.table -O ${LINE3}/${LINE1}.bam