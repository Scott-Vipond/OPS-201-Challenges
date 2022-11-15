#!/bin/bash

# Script:                    Ops Challenge 05 - Loops (working example of code)           
# Author:                    Scott Vipond   
# Date of latest revision:   14 Nov 22   
# Purpose:                   Use loops, created working example compared to my submission


# Define variables here

# Define functions here

# Main code goes here

# Establishes variable to use in while loop
continue_var="y"

# Uses above variable to continue the loop as long as the contitional is true
while [ $continue_var == "y" ]
do

    # Displays processing running
    ps aux

    # Asks user for process PID to terminate
    read -p "Please enter a PID to kill: " pid_to_kill

    # Terminates the user inputted PID
    kill -9 $pid_to_kill

    echo $pid_to_kill "has been terminated!"

    # Prompts user to continue terminating or to end program
    read -p "Would you like to terminate another process? (y/n)" continue_var

done

# Lets user know the program has ended
echo "Loop challenge has ended"

# End
