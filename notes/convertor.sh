#!/bin/bash

lof=$(ls -l | awk '{print $(NF)}')

for file in $lof
do 
	if [[ "$file" =	*"md" ]]
	then
	echo $file	
	output=$(echo $file | cut -d "." -f 1)
	of=${output}.pdf
	echo $of
        docker run --rm --volume "`pwd`:/data"  \
	       --user `id -u`:`id -g` \
	       pandoc/latex $file -o $of
        fi
    
done
