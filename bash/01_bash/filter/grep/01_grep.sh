#!/bin/bash

#case
grep Madeli data.csv

#case 01
grep -i maDelIne data.csv

#case 02
grep -v Madeline data.csv

#case 03
grep -c Female data.csv

#case 04
grep -w Madeline data.svc

#case 05
grep -n Female data.csv

#Case 06
grep Female data.csv data2.csv

#Case 07
grep -h Female data.csv data2.csv

#Case 08
grep -e "Female" -e "Saturn" data2.csv

#Case 09
grep -e "Female" -e "Saturn" data.csv data2.csv

#Case 10
grep -l "Audi" data.csv data2.csv

#Case 11
grep "^Ur" data2.csv #(^ is for whole line word)

#Case 12
grep "i$" data2.csv #($ is for whole line word)

#Case 13
grep -R Female ../grep

#Case 14
egrep "Lexus|Audi|Volkswagen" data2.csv

#Case 15
grep -q "audi" data.csv

grep -s "Audi" data.csv