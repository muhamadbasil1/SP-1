#!/bin/bash
array=(`cat ./abc`)
echo ${array[*]}
echo "length of third index: " ${#array[3]}
