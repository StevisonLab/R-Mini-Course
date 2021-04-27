#! /usr/bin/sh

module load R

count=`ls -S chr*.depth | wc -l | awk '{print $1}'`

echo $count

for ((i=1;i<=$count;i++))
do
#fetch the file 

   file=`ls -S chr*.depth | awk "NR==$i {print \$1}"`
    
#remove the file ending from the name
    chr=`echo $file | sed -e 's/.depth//'`
    
    echo $file, $chr
    
    #change R script for each chromosome
    sed -e "s/chrXL_group3b/$chr/g" coverage.R >$chr.R

    #run it!
#    R --vanilla <$chr.R

done
