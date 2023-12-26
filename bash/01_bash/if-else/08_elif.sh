#!/bin/bash


read -p "Enter your marks: " marks

if [[ $marks -gt 80 ]]
then
    echo "You are passed by first division...Excellent;))"
elif [[ $marks -gt 60 ]]
then
    echo "You are passed by second division...Good;)"
elif [[ $marks -gt 40 ]]
then
    echo "You are passed by third division"
else
    echo "You are FAILED...Work hard!!"
fi