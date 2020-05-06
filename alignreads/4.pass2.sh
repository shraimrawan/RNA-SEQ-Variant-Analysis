#! /bin/bash
#$ -cwd

LINE1=$(awk -v var="$SGE_TASK_ID" 'NR==var {print $1}' $manifest)
LINE2=$(awk -v var="$SGE_TASK_ID" 'NR==var {print $2}' $manifest)
LINE3=$(awk -v var="$SGE_TASK_ID" 'NR==var {print $3}' $manifest)
STAR --genomeDir /scr1/users/shraimr/rnaseq/pass2_hg --readFilesIn ${LINE2} --readFilesCommand zcat --runThreadN 16 --outFileNamePrefix ${LINE3}/${LINE1} --quantMode TranscriptomeSAM GeneCounts --outSAMtype BAM SortedByCoordinate
