#!/bin/bash

# Script:                    Ops Challenge - Arrays                       
# Author:                    Scott Vipond                      
# Date of latest revision:   10 Nov 22
# Purpose:                   Make directories, put directories in array, add txt file to each array index

# Write a script that:

    # Review the process for creating a new directory.
    # Create four directories using the script.
    # Load each directory path into an array.
    # Create a new .txt file within each directory by referencing the directory with array indices, not the literal directory path.
    # Test & validate.


# Bascic function
lab04_challenge () {
    mkdir dir1 dir2 dir3 dir4

my_array=(dir1 dir2 dir3 dir4) 

# touch /home/server/OPS-201-Challenges/dir1/newfile.txt - provides entire path
# ./dir1/newfile.txt - provides a shorter path
# ${my_array[0]} - the entire syntax is needed to address the dir1 index in the array

touch ./${my_array[0]}/newfile.txt
touch ./${my_array[1]}/newfile.txt
touch ./${my_array[2]}/newfile.txt
touch ./${my_array[3]}/newfile.txt

# cp new.txt dir1 - was not in the spirit of tasks
# cp new.txt dir2 - was not in the spirit of tasks
# cp new.txt dir3 - was not in the spirit of tasks
# cp new.txt dir4 - was not in the spirit of tasks

# The OPS Challange task states create a new .txt file within each directory
# by referencing the directory with array indices, not the literal directory path
# I looked at multiple sites and could not find the command to move the text file to my_array[0], 
# my_array[1], my_array[2], and my_array[3]
# FINALLY with Ethans teasing of the answer I was able to make it work

# rm -r new.txt - was used initially because challenge was coded for objective not tasks

ls dir1
ls dir2
ls dir3
ls dir4
}
lab04_challenge

# End