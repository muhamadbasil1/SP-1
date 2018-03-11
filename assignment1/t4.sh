#!/bin/bash
total=$#
case $total in
0)
echo "Too few arguments!"
;; 
1)
if [ -f $1 ]
then
sort $1 | uniq >temp
mv temp $1
else
echo "Not a file"
fi
;;
*)
echo "Too many arguments!"
;;
esac
