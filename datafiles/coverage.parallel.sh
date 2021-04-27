#!/usr/bin/sh

count=`ls -t chr*.depth | wc -l | awk '{print $1}'`

for ((i=1;i<=$count;i++))
do
    #fetch the file name
    file=`ls -t chr*.depth | awk "NR==$i {print \$1}"`

    #remove file ending from filename
    chr=`echo $file | sed -e 's/.depth//'`
    echo $file, $chr

    #change R script to run on new file
    sed -e "s/chrXL_group3b/$chr/g" coverage.R >$chr.R

    #change shell script to run on each chromsome
    sed -e "s/chrXL_group3b/$chr/g" run_coverage.sh >$chr.sh

    #add executable privaleges
    chmod +x $chr.sh

    #submit to ASC queue
    run_script $chr.sh
done

