#!/bin/sh
echo "enter two numbers"
read a b
sum=`expr $a\+$b|bc`
diff=`expr $a\-$b|bc`
mul=`expr $a\*$b|bc`
div=`expr $a/$b|bc`
echo "sum=$sum, difference=$diff, multiply=$mul, divide=$div"
