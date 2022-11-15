#!/bin/bash

# Script:                    Ops Challenge 06
# Author:                    Scott Vipond   
# Date of latest revision:   14 Nov 22   
# Purpose:                   Using conditionals in a script  


# Tasks:
  # Create a script that detects if a file or directory exists
  
    # Script must contain at least one:
        # Array
        # Loop
        # Conditional
  # Creates file or directory if it does not exist
    

# Reference sites below:
# https://linuxhint.com/bash_conditional_statement/
# https://codefellows.github.io/ops-201-guide/curriculum/class-06/challenges/demo/bash.html


# Define variables here

    # Sets loop variable
continue_search="y"
    # Creates files for exercise
touch file1 file2 file3 file4
    # Creates exercise directory
mkdir dir1
    # Establishes array
my_files=(file1 file2 file3 file4)


# Define functions here

    # Moves each file in the array to dir1
mv ${my_files[@]} ./dir1
    # Uncertain how to name a loop so I can place just name in main code!

# Main code goes here
cd ./dir1    

while [ $continue_search == "y" ]
do 
    # Asks user for a file to create
    read -p "Enter file to be created:" newfile
    
    # Checks if file exists in directory dir1
    if [[ -f $newfile ]]
        then    
        echo "$newfile exists in this directory and cannot be created"

    # If file not in dir1, will create file in dir1
    elif [[ ! -f $newfile ]]
        echo "$newfile does not exist in this directory it will be created"
        then
        touch $newfile
    fi
    read -p "Would you like to create another file? (y/n)" continue_search
    
done

echo "Thank you for using my file search and create script"

rm -r /home/server/OPS-201-Challenges/dir1

# End