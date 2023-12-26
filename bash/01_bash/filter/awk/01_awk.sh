#!/bin/bash

#Print only a given column
awk '{print $2}' data.csv

#Print last column
awk '{print $NF}' data.csv

#Search a word
awk '/z/ {print $0}' data.csv

#Print only a given line no. (let’s say line 6,7)
#Imp always have to right write NR in order
awk 'NR==6,NR==7 {print $4, $5}' data.csv

#Print row or line no. at start of each line
awk '{print NR, $1, $2}' data.csv

#Print range of lines (line3 to 6)
awk 'NR==3,NR==6 {print $0}' data.csv

#Get line no. of empty lines
awk 'NR==0 {print NR}' data.csv

#Search multiple words
awk '/unc.edu|elegantthemes.com|blogtalkradio.com/ {print $0}' data.csv

#Ignore case while searching
awk 'BEGIN{IGNORECASE=1} /SPIER/{print $0}' data.csv

#How to check if a given char is present in column
awk '$2 ~ /a/ {print $0}' data.csv