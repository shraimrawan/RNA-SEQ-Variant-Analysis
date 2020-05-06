#!/bin/sh
#$ -cwd

LINE1=$(awk -v var="$SGE_TASK_ID" 'NR==var {print $1}' $manifest)
LINE2=$(awk -v var="$SGE_TASK_ID" 'NR==var {print $2}' $manifest)
LINE3=$(awk -v var="$SGE_TASK_ID" 'NR==var {print $3}' $manifest)

java -jar /mnt/isilon/dbhi_bfx/bin/picard.jar AddOrReplaceReadGroups I=${LINE2} O=${LINE3}/${LINE1}.bam SO=coordinate RGID=id RGLB=library RGPL=platform RGPU=machine RGSM=${LINE1} 
