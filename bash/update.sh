#!/bin/bash

path=/etc/os-release

if grep -q "Arch" $path
then 
	sudo pacman -Syu
fi

if grep -q "Ubuntu" $path || grep -q "Debian" $path
then
	sudo apt update && sudo apt dist-upgrade
fi
