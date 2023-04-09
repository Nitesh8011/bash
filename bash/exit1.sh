#!/bin/bash

package=htop
sudo apt remove htop -y >> pass.log

if [ $? -eq 0 ]
then 
	echo "uninstalled $package successfully"

else 
	echo "Unable to install" >> failed.log

fi
