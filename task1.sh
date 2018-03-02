#!/bin/bash
expr $1 + 0 && expr $2 + 0
echo "Addition: " `expr $1 + $2`
echo "subtraction: " `expr $1 - $2`
echo "multiplication: " `expr $1 \* $2`
if [ $2 -ne 0 ]
then
echo "division: " `expr $1 / $2`
echo "mod: " `expr $1 % $2`
else 
echo "Divison not possible"
fi

