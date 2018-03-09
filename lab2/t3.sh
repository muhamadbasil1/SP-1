#!/bin/bash
showAllOwners()
{
	name=$1
for i in `ls`
do
set `ls -li $i`
if [ $4 = $name ]
then
	if [ -f $i ]
	then
	echo "$i | regular file|  $name"
	else
	echo "$i | non-regular file|  $name"
	fi
fi
done
}

num=$#
case $num in 
0)
echo "no arguments passed!"
;;
1)
test `expr $1 + 0` || showAllOwners $1
;;
*)
echo "invalid arguments"
;;
esac
