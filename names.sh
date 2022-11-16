#!/bin/bash

#Alysia Norales
#System Administration Test 2

filename=$1
name=$2

#check if arguments were passed in
if [[ -z "$filename" ]] || [[ -z "$name" ]]
then
echo "Please provide the file name and the last name that you want to find."
echo "Example: <filename> <lastname>"
exit 0

fi 
grep -i "[A-za-z ]$2" $filename

echo "Here are the names with the last name $2"
