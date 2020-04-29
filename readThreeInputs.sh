#!/bin/bash -x
read -p "Enter a value" a
read -p "Enter b value" b
read -p "Enter c value" c
exp1=$(($a+$b*$c))
exp2=$(($a*$b+$c))
exp3=$(($c+$a/$b))
exp4=$(($a%$b+$c))

declare  -A  Expressions
Expressions=( ["exp1"]=$exp1 ["exp2"]=$exp2 ["exp3"]=$exp3 ["exp4"]=$exp4)
sorted=`printf '%s\n' "${Expressions[@]}" | sort -nr`
echo $sorted
