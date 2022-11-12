#!/bin/bash

# Script:                    Ops Challenge 05 - Loops            
# Author:                    Scott Vipond   
# Date of latest revision:   11 Nov 22   
# Purpose:                   Use loops...   


# Tasks:
  # Write a script that displays running processes, asks the user for a PID, then kills the process with that PID
    # For this part of the lab, initialize a process that won’t harm the OS’s functionality upon termination. 
    # Don’t kill essential processes required for the OS to work, such as kernel drivers
  # Use a loop in your script
    # This loop will facilitate the menu system of your script, so that it can prompt the user to choose an option

# https://ryanstutorials.net/bash-scripting-tutorial/bash-loops.php - reference site
# https://codefellows.github.io/ops-201-guide/curriculum/class-05/challenges/demo/bash.html - reference site


ps -aux
echo # adds line
echo # adds line
echo "Enter Process Identification Number (PID) to terminate"
read PID
# echo "Are you sure you want to terminate $PID, y/n"
# read var
# Check if PID is root
# if [ $var=y ]
# do
  echo "$PID will be terminted"
# done
  while [ $PID -gt 0 ]
    do
    kill -9 $PID
  #  echo "Process was successful ended"
    break
  done  
# Loop example using the for command

#names="Stan Kyle Cartman"
#for name in $names
#do
#  echo $name
#done

#echo "Script complete"

# Loop example using while command
# -il = is less than; -le = is less than or equal to

#counter=1
#while [ $counter -le 10 ]
#do
#echo $counter
#((counter++))
#done
#echo All done

# Loop example using until command
# The until loop is fairly similar to the while loop. 
# The difference is that it will execute the commands within it until the test becomes true

#counter=1
#until [ $counter -gt 10 ]
#do
#echo $counter
#((counter++))
#done
#echo All done

# Loop example using a range in for loop
# It's important when specifying a range like this that there are no spaces present between the curly brackets { }. 
# If there are then it will not be seen as a range but as a list of items

#for value in {1..5}
#do
#echo $value
#done
#echo All done

# Loop example usnig a range with steps for loop
# It is also possible to specify a value to increase or decrease by each time. 
# You do this by adding another two dots ( .. ) and the value to step by
 

#for value in {10..0..2}
#do
#echo $value
#done
#echo All done

# Make a php copy of any html files
# * is a wildcard used to indicate a set of .html files

#for value in $1/*.html
#do
#cp $value $1/$( basename -s .html $value ).php
#done

# Make a backup set of files
# break stops the execution and leaves the loop because free disk space is below a certain point

#for value in $1/*
#do
#used=$( df $1 | tail -1 | awk '{ print $5 }' | sed 's/%//' )
#if [ $used -gt 90 ]
#then
#echo Low disk space 1>&2
#break
#fi
#cp $value $1/backup/
#done

# A simple menu system
# No error checking when user enter number not corresponding or other value

#names='Kyle Cartman Stan Quit'
#PS3='Select character: '
#select name in $names
#do
#if [ $name == 'Quit' ]
#then
#break
#fi
#echo Hello $name
#done
#echo Bye

# End