#!/bin/bash

echo "a --> check todays date and current time"
echo "b --> check files and directory in current directory"
echo "c --> check path of current directory"

read -p "Kindly choose from above options:" option

case $option in
    a) date;;
    b) ls;;
    c) pwd;;
    *) echo "Kindly choose correct option ;)"
esac

