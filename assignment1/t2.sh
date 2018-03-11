#!/bin/bash
file=$1
touch evenFile
touch oddFile
i=1
while read line
do
	temp=`expr $i % 2`
	if [ $temp -eq 0 ]
	then
		echo $line >>evenFile
	else
		echo $line >>oddFile
	fi
	i=`expr $i + 1`
done < $file
