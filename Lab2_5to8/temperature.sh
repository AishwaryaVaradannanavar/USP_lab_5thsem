#!/bin/sh
echo "enter temperature in fahrenheit"
read ftemp
atemp=`expr $ftemp\-32|bc`
ctemp=`expr $atemp\*5|bc`


echo "scale=2;$ctemp/9"|bc
