#!/bin/bash

while [ -f ~/demo ]
do
	echo "demo file exit until $(date)"
	sleep 5
done

echo "demo file doesn't exit at $(date)"
