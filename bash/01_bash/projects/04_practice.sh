#Write a shell script to validate password strength.

#!/bin/bash

read -p "Enter you password " password
len=${#password}
# echo $len

if test $len -ge 8 ; then
    echo $password | grep -q [0-9]
    if test $? -eq 0 ; then
        echo $password | grep -q [A-Z]
        if test $? -eq 0 ; then
            echo $password | grep -q [a-z]
            if test $? -eq 0 ; then
                echo "Strong Password ;)"
            else
                echo "Need to add lower case alphabetic"
            fi
        else
            echo "Need to add upper case alphabetic"
        fi
    else
        echo "Need to numeric value"
    fi
else
    echo "Password should be atleast consist of 8 characters"
fi