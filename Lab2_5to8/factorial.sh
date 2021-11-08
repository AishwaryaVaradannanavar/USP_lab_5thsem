#!/bin/bash
echo "enter number to find factorial"
read num
fac=1
one=1
for(( i=$one ; i<=$num ; i++ ))
do
	fac=$((fac*i))
done
echo $fac
