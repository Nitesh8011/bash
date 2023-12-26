#!/bin/bash


var="Hello Guys!! how are you??"

echo "Lengh of the array is ${#var}"

#Upper case

echo -e "Upper case of var will be \n${var^^}"

#Lower case
echo -e "Lower case of $var will be \n${var,,}"


#replcaing
replace=${var/Guys/Nitesh}
echo "$replace"


#slicing

slice=${var:6:11}
echo "$slice"

#user interaction

echo "Enter you name"
read name

echo "Hello $name!! how are you??"

read -p "Enter you name:" name

echo "Hello $name!! how are you??"



