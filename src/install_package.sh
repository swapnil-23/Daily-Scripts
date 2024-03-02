#!/bin/bash

## shell script to check if the package is installed in the system and if not installing via the apt packages

echo "enter the package name: "

## taking the user input about the package

read $package_name

## checking if the package is present or not

if dpkg -l | grep -q "^ii  $package_name ";
then 
	echo "the $package_name exists"
else
	echo "the $package_name does not exists" && sudo apt-get update && sudo apt install $package_name -y
fi
