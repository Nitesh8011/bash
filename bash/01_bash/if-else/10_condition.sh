#!/bin/bash

read -p "Enter your age:" age
read -p "Enter your country:" country

if [[ $age -ge 18 ]] && [[ $country == "India" ]] || [[ $country == "india" ]]
then
    echo "You can vote ;)"
else
    echo "Sorry u can't vote :("
fi


#Single line for if else
#conition1 && conition2 || conition3
# if condition1 is crt print condition2 else condition3

[[ $age -ge 18 ]] && echo "Adult" || echo "Teen"

