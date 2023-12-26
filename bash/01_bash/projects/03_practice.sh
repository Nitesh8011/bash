#!bin/bash

#Write a shell script to print a number in reverse order. It should support the following requirements.


read -p "Enter number: " n

sd=0
rev=0

while [ $n -gt 0 ]
do
    sd=`expr $n % 10`
    rev=`expr $rev \* 10 + $sd`
    n=`expr $n / 10`
done
echo "Reverse number is $rev"