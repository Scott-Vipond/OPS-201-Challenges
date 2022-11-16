#!/bin/bash

# Script:                    Ops Challenge 07
# Author:                    Scott Vipond   
# Date of latest revision:   15 Nov 22   
# Purpose:                   Create script to show lshw and grep for certain components only  


# Tasks:
  # Display the following components: 
    # Name of the computer
    # CPU
        # Product, Vendor, Physical ID, Bus info, Width
    # RAM
        # Description, Physical ID, Size, 
    # Display adapter
        # Description, Product, Vendor, Physical ID, Bus info, Width, Clock, Capabilities, Configuration, Resources
    # Network adapter
        # Description, Product, Vendor, Physical ID, Bus info, Logical name, Version, Serial, Size, Capacity, Width, Clock
        # Capabilities, Configuration, Resource
        
# Reference sites below:
# https://www.howtoforge.com/linux-lshw-command/
# https://careerkarma.com/blog/linux-grep-command/
# https://codefellows.github.io/ops-201-guide/curriculum/class-07/challenges/demo/bash.html

# Define variables here
b="Computer Name"
x="CPU"
y="RAM"
z="Display Adapter"
a="Network Adapter"
# Define functions here

# Main code goes here
touch config.txt
touch configreport.txt
# touch finalconfig.txt

echo $b > configreport.txt

sudo lshw > config.txt

sed -n 1p config.txt >> configreport.txt

echo $x >> configreport.txt
echo | grep -A 6 "*-cpu" config.txt >> configreport.txt
# echo | grep -v "*-cpu" configreport.txt > finalconfig.txt 

echo $y >> configreport.txt
echo | grep -A 3 "*-memory" config.txt >> configreport.txt
# echo | grep -v "*-memory" configreport.txt >> finalconfig.txt

echo $z >> configreport.txt
echo | grep -A 5 "*-display" config.txt >> configreport.txt
echo | grep -B 5 "*-network" config.txt >> configreport.txt

echo $a >> configreport.txt
echo | grep -A 14 "*-network" config.txt >> configreport.txt
# grep -v "*-display" config.txt >> configreport.txt

echo | grep -B 1 "*-generic" config.txt >> configreport.txt
# grep -v "*-generic" config.txt >> configreport.txt

sed -i '/*-/d' configreport.txt
# sed -i "/\b\(*-cpu\|*-moemory\*-display\*-network\*generic\)\b/d" configreport.txt

# Cannot get the syntax to check the config.txt file for items in the array and remove them
# remove_text=("*-cpu" "*-memory" "*-display" "*-network" "*-generic")
# for ${remove_text[@]} in ./$config.txt
#    do
#        if test -e '$[remove_text[@]]}'

#       then 
#            grep -v remove_text[@] config.txt > configreport.txt
#        fi
# done
echo "Compilation of lshw is complete"   

rm ./config.txt

# End