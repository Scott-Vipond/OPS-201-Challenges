#!/bin/sh

# This script will help understand the below command line arguments
# The variable $0 stores the name of the script or the command itself
# first command-line argument is $1, the second $2 and the third is $3, and so on
# The special character $# stores the total number of arguments
# $@ and $* as wildcard characters which are used to denote all the arguments
# Use $$ to find the process ID of the current shell script
# $? can be used to print the exit code for our script

# reference site: https://www.digitalocean.com/community/tutorials/read-command-line-arguments-in-shell-scripts

# to run use: ./commandlinearguments.sh learning command line arguments

echo "Script Name: $0"
echo "First Parameter of the script is $1"
echo "The second Parameter is $2"
echo "The complete list of arguments is $@"
echo "Total Number of Parameters: $#"
echo "The process ID is $$"
echo "Exit code for the script: $?"

# End
