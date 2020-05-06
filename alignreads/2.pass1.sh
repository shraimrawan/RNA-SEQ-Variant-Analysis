#! /bin/bash
#$ -cwd

LINE1=$(awk -v var="$SGE_TASK_ID" 'NR==var {print $1}' $manifest)
LINE2=$(awk -v var="$SGE_TASK_ID" 'NR==var {print $2}' $manifest)
LINE3=$(awk -v var="$SGE_TASK_ID" 'NR==var {print $3}' $manifest)
STAR --genomeDir /scr1/users/shraimr/rnaseq/genomedir --readFilesIn ${LINE2} --readFilesCommand zcat --runThreadN 16 --outFileNamePrefix ${LINE3}/${LINE1}

cat GC049992SJ.out.tab GC049997SJ.out.tab GC049971SJ.out.tab GC049998SJ.out.tab GC050011SJ.out.tab GC050016SJ.out.tab GC050024SJ.out.tab GC050040SJ.out.tab GC050130SJ.out.tab GC050131SJ.out.tab GC050149SJ.out.tab GC050152SJ.out.tab GC050158SJ.out.tab GC050162SJ.out.tab GC050173SJ.out.tab GC050174SJ.out.tab GC050193SJ.out.tab GC050242SJ.out.tab GC050260SJ.out.tab GC050265SJ.out.tab GC050272SJ.out.tab GC050281SJ.out.tab GC050282SJ.out.tab GC050312SJ.out.tab GC050318SJ.out.tab GC050320SJ.out.tab GC050321SJ.out.tab GC050322SJ.out.tab GC058827SJ.out.tab GC058833SJ.out.tab GC058835SJ.out.tab GC058840SJ.out.tab GC058849SJ.out.tab GC058851SJ.out.tab GC058859SJ.out.tab GC058865SJ.out.tab GC058866SJ.out.tab GC058872SJ.out.tab GC058874SJ.out.tab GC058889SJ.out.tab GC058897SJ.out.tab GC058904SJ.out.tab GC058910SJ.out.tab GC058911SJ.out.tab > allSJFiles.out.tab
