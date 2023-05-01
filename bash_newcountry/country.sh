#Given a list of countries, each on a new line, your task is to read them into an array and then display the entire array, 
#with a space between each of the countries' names.


#!/bin/bash

i=0

while read line
do
    a[i]=$line
    i=$((i+1))
done
echo ${a[@]};
