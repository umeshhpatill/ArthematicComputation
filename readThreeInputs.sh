#!/bin/bash -x
read -p "Enter a value" a
read -p "Enter b value" b
read -p "Enter c value" c
exp1=$(($a+$b*$c))
exp2=$(($a*$b+$c))
exp3=`echo $a | awk "{exp3=$1+$a/$b printf %f; exp3}"`

