#!/bin/sh
echo "enter n for fibonacci series"
read n
count=2
num=1
prev=0

if [ $n -eq $prev ]
then 
   echo "0"
elif [ $n -lt $prev ]
then
   echo "Enter a positive number"

else
echo "$prev"
echo "$num"
while [ $count -lt $n ]
do 
 sum=$(($prev+$num))
 echo "$sum  "
 prev=$num
 num=$sum
 count=$(($count+1))
done
fi
