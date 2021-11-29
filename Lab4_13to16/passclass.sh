#!/bin/sh
pass=0
fail=0
for i in 1 2 3 4 5 6
do
echo "Enter the CIE out of 50 and SEE out of 100 marks of subject $i"
read cie see
see=$(($see/2))
sum=$(($cie+$see))
grade=0
if [ $sum -ge 90 -a $sum -lt 100 ]
then
   grade=10
   pass=$(($pass+1))
elif [ $sum -ge 80 -a $sum -lt 90 ]
then
   grade=9
   pass=$(($pass+1))
elif [ $sum -ge 70 -a $sum -lt 80 ]
then
   grade=8
   pass=$(($pass+1))
elif [ $sum -ge 60 -a $sum -lt 70 ]
then
   grade=7
   pass=$(($pass+1))
elif [ $sum -ge 50 -a $sum -lt 60 ]
then
   grade=6
   pass=$(($pass+1))
elif [ $sum -ge 40 -a $sum -lt 50 ]
then
   grade=5
   pass=$(($pass+1))
else 
   grade=4
   fail=$(($fail+1))
fi

 
 
case $grade in 
   10) echo "S grade" ;;
   9) echo "A grade" ;;
   8) echo "B grade" ;;
   7) echo "C grade" ;;
   6) echo "D grade" ;;
   5) echo "E grade" ;;
   4) echo "F grade" ;; 
   *) echo "invalid marks" ;;
esac

done

echo "$pass passed"
echo "$fail failed"





   
