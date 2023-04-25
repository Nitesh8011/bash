#!/bin/bash

read -n 1 word

for n in ${word[@]}
do
        if [ $word == 'n' ] || [ $word == 'N' ]
        then   
            echo "NO"
        elif [ $word == 'y' ] || [ $word == 'Y' ]
        then
            echo "YES"
        else
            echo "N or Y not found"
        fi
done