#!/bin/bash
for i in `ls *.?*`
do
	if [ -f $i ]
	then

		file=$i
		echo $file
		IFS=$(echo -en ".")
		set $i
		IFS=$" "
		temp=$2
		mkdir -p $temp
		mv $file $temp
	fi
done
