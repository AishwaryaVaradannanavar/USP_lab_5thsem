#!/bin/sh
echo "enter basic salary"
read basic
da=`expr $basic\*10/100|bc`
hra=`expr $basic\*20/100|bc`
gross=`expr $basic\+$da\+$hra|bc`
echo "gross salary = $gross"
