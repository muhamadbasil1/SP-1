#!/bin/bash
if [ $# -eq 4 ]
then
	file_name1=$1
	user_name1=$2
	file_name2=$3
	user_name2=$4

	arr1=(`ls -li $file_name1`)
	arr2=(`ls -li $file_name2`)
	cheating=1

	if [ $user_name1 != $user_name2 ]
	then
		test diff -c $file_name1 $file_name2 && cheating=0

		echo "Owner: ${arr1[3]}"
		echo "group: ${arr1[4]}"
		echo "permisiion: ${arr1[1]}"
		echo "filename: $file_name1"
		echo "cheating: $cheating"
		echo "info of 2nd user: "
		echo "Owner: ${arr2[3]}"
		echo "group: ${arr2[4]}"
		echo "permisiion: ${arr2[1]}"
		echo "filename: $file_name1"
		echo "cheating: $cheating"
	fi


else
	file_name=$1
	user_name=$2
	echo $user_name
	set `ls -li $file_name`
	echo $@
	echo $4
	cheating=1
	if [ $user_name = $4 ]
	then
		cheating=0
	fi
	echo "Owner: $4"
	echo "group: $5"
	echo "permisiion: $2"
	echo "filename: $file_name"
	echo "cheating: $cheating"
fi
	 

