#!/bin/bash

file=~/bash/exit.sh

if [ -f $file ]
then 
	echo "File exits.."
	cat $file
else 
	echo "File doen't exit.."

fi

