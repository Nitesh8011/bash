#!/bin/bash

#How to work with CSV file
awk -F, '{print $2}' data-delimitor.csv

#Print data of employees whose salary>20k
awk -F, '$NF<=20000 {print $0}' data-delimitor.csv

#What if a file is having multiple delimeter
awk -F[:,] '$NF>=20000 {print $0}' data-delimitor.csv

#How to only get Status of service
systemctl status jenkins.service | awk 'NR==3 {print $2}'

#How to get list of files
ls -ltr | awk 'NR>1 {print $9}'

#How to read logs in range of time
sudo less /var/log/messages | awk '$3>="12:16:41" && $3<="12:17:05" && $1=="Dec" && $2=="4"'

#Get files modified in Oct
ls -ltr | awk '$6=="Dec"'

#How to replace a word?


#Length of line/field 
awk -F, '{print length($2)}' data-delimitor.csv

#Index/position of a word in a given line
awk -F, '/Madeline/{print index($0, "Female")}' data-delimitor.csv

#Print values in upper or lower letter
awk -F, '{print tolower($4)}' data-delimitor.csv
awk -F, '{print toupper($4)}' data-delimitor.csv
