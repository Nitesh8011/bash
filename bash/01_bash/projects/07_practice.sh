#write a shell script that prompts the user for a name of a file or directory and reports if it is a regular file, a directory, or another type of file. Also perform an ls command against the file or directory with the long listing option.

#!/bin/bash

read -p "Enter path of file: " base

if [ -f $base ]
then
    echo "Its files"
elif [ -d $base ]
then
    echo "Its directory"
else
    echo "Its neither file or directory"
fi