#!/bin/sh
#$ -cwd

LINE1=$(awk -v var="$SGE_TASK_ID" 'NR==var {print $1}' $manifest)
LINE2=$(awk -v var="$SGE_TASK_ID" 'NR==var {print $2}' $manifest)
LINE3=$(awk -v var="$SGE_TASK_ID" 'NR==var {print $3}' $manifest)

java -jar /mnt/isilon/dbhi_bfx/bin/picard.jar MarkDuplicates I=${LINE2} O=${LINE3}/${LINE1}.bam CREATE_INDEX=true VALIDATION_STRINGENCY=SILENT M=${LINE1}.metrics 