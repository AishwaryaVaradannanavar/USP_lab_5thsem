#!/bin/sh
echo "enter the file name"
read fname

echo "number of charcters"
wc -c < $fname
echo "number of words"
wc -w < $fname
echo "number of lines"
wc -l < $fname
