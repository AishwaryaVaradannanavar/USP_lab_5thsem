#!/bin/sh
echo "enter the string"
read name
vowels=$(echo $name | grep -o "[aeiouAEIOU]" | wc --lines)
echo "$vowels"
  
