#!/bin/bash

command=/usr/bin/htop

if [ -f $command ]
then 
	echo "$command is there, let's run it"
else
	echo "$command is no there,let install it.."
	apt-get update && apt-get install htop
fi

$command
