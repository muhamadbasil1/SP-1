#!/bin/bash
unix=("debain" "red hat" "ubuntu" "suse" "fedora")
echo ${unix[*]}
echo "length: " ${#unix[*]}
echo "length: " ${#unix[2]}
#extract
echo ${unix[@]: 3 : 2}
#replace
echo ${unix[@]/"ubuntu"/"sco"}
#add
unix=(${unix[@]} "aix" "hp-ux")
#unix=(${temp[@]})
#remove
unset unix[2]
#copy
linux=(${unix[@]})
#concatenate
bash=(${unix[@]} ${unix[@]})
echo ${bash[*]}
#remove
unset unix[*]
unset linux[*]
#echo ${unix[*]}
