#!/bin/bash

for files in logfiles/*.log
do 
	tar -zcvf $files.tar.gz $files
	rm -rf $files
done
