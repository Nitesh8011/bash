#Write a shell script to print the count of files and subdirectories in the specified directory.

#!/bin/bash

read -p "Enter the path to check " path

if [ -d $path ]
then
    echo "Files found $(find $path -type f | wc -l )"
    echo "Directory found $(find $path -type d | wc -l )"
else
    echo "path not found"
fi