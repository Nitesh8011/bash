#!/bin/bash

name="Nitesh kumar"
age=23

#if we waana value from the variable then we define that in round bracket 
host=$(hostname)

#we wanna keep the variable constant
readonly DOB="11/03/2000"

echo "My name is $name and I'm $age year old"
echo "And my date of birth is $DOB"
echo "My hostname is $host"