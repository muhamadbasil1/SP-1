#!/bin/bash
print_table()
{
	total=$#
	case $total in 
	0)
	echo "No arguments passed"
	;;
	#one num
	1)
	for i in `seq 1 10`
	do
	echo "$1 * $i = " `expr $1 \* $i`
	done
	;;
	#start
	2)
echo "two"
	for i in `seq $2 10`
	do
	echo "$1 * $i = " `expr $1 \* $i`
	done
	;;
	#end
	3)
echo "three"
	for i in `seq 1 $2`
	do
	echo "$1 * $i = " `expr $1 \* $i`
	done
	;;
	#both
	4)
	for i in `seq $2 $3`
	do
	echo "$1 * $i = " `expr $1 \* $i`
	done
	;;
	5)
	num=$3
	while [ $num -ge $2 ]
	do 
	echo "$1 * $num = " `expr $1 \* $num`
	num=`expr $num - 1`
	done
	esac
}

##main
count=$#
case $count in
0) print_table
;;
1)
test `expr $1 + 0` && print_table $1 || echo "invalid argument!"
;;
3)
test `expr $1 + 0` && test `expr $3 + 0` || echo "invalid argument!"
if [ $2 = -s ]
then
print_table $1 $3
elif [ $2 = -e ]
then
print_table $1 $3 $2
else
echo "Invalid argument!"
fi
;;
5)
test `expr $1 + 0` && test `expr $3 + 0` && test `expr $5 + 0`  || echo "invalid argument!"
if [ $2 = -s -a $4 = -e ]
then
print_table $1 $3 $5 $2
else
echo"invalid arguments!"
fi
;;
6)
test `expr $1 + 0` && test `expr $3 + 0` && test `expr $5 + 0`  || echo "invalid argument!"
if [ $2 = -s -a $4 = -e -a $6 = -r ]
then
print_table $1 $3 $5 $2 $4
else
echo"invalid arguments!"
fi
;;
*)
echo "invalid arguments!"
;;
esac
