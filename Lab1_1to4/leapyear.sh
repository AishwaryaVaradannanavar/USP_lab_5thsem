#!/bin/sh
echo "enter year"
read year
if [ `expr $year % 100` -eq 0 ]
then 
if [ `expr $year % 400` -eq 0 ]
then 
 echo "leap year"
else 
echo "not leap year"
fi
elif [ `expr $year % 4` -eq 0 ]
then 
echo "leap year"
else 
echo "not leap year"
fi
