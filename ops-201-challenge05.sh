#!/bin/bash

# Script:                    Ops Challenge 05 - Loops            
# Author:                    Scott Vipond   
# Date of latest revision:   11 Nov 22   
# Purpose:                   Use loop to end a process   


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

# Check if PID is root

  echo "$PID will be terminted"
  while [ $PID -gt 0 ]
    do
    kill -9 $PID
    break
  done  
# End