#!/bin/bash
isLower()
{
	input=$1
	var=${input,,}
	echo $var
}
isRoot()
{
	if [  $(id -u) -eq 0 ]
	then
		return 1
	elif [ $(id -u) -ne 0 ]
	then
		return 0
	fi
}
isUserExists()
{
	name=$1
	test `grep -w "$name" /etc/passwd` && return 1 || return 0
}

isLower ABC
isRoot 
if [ $? -eq 0 ]
then
	echo "Normal user"
else
	echo "Not a normal user"
fi
isUserExists mareena
if [ $? -eq 0 ]
then
	echo "Not exists"
else
	echo "User exists"
fi

