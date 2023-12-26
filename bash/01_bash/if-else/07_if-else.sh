#!/bin/bash

read -p "Enter you age:" age

if [[ $age -ge 18 ]]
then
    echo "You can vote ;)"
else
    echo "Sorry, you are not allowed to vote!!"
fi