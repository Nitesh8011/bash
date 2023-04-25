# If condition

if [[ condition ]];
then
	statement
elif [[ condition ]]; then
	statement 
else
	do this by default
fi

#Exmaple
#!/bin/bash

echo "Please enter a number: "
read num

if [ $num -gt 0 ]; then
  echo "$num is positive"
elif [ $num -lt 0 ]; then
  echo "$num is negative"
else
  echo "$num is zero"
fi

------x------x------x------x------

#We can use logical operators such as AND -a and OR -o to make comparisons that have more significance.

#And
if [ $a -gt 60 -a $b -lt 100 ]

#Or
if [ $a -gt 60 -o $b -lt 100 ]

