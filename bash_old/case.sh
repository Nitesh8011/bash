#!/bin/bash

finished=0

while [ $finished -ne 1 ]
do
	echo "Press any number from following..."
	echo "1 - This is apple"
        echo "2 - This is ball"
	echo "3 - this is cat"
	echo "Press 4 to exit"

read press

case $press in
	1) echo "You like apple";;
	2) echo "You like ball";;
	3) echo "You like cat";;
	4) finished=1;;
	*) echo "Please enter correct number"
esac
done

echo "Thankyou for script.."
