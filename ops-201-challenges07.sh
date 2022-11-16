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

# Define functions here

# Main code goes here
touch config.txt
touch config1.txt

x="CPU"
echo $x > config.txt
sudo lshw | grep -A 6 "*-cpu" >> config.txt
grep -v "*-cpu" config.txt > config1.txt

y="RAM"
echo $y >> config.txt
sudo lshw | grep -A 3 "*-memory" >> config.txt 
grep -v "*-memory" config.txt >> config1.txt

z="Display Adapter"
echo $z >> config.txt
sudo lshw | grep -A 5 "*-display" >> config.txt
sudo lshw | grep -B 5 "*-network" >> config.txt

a="Network Adapter"
echo $a >> config.txt
sudo lshw | grep -A 14 "*-network" >> config.txt
grep -v "*-display" config.txt >> config1.txt

sudo lshw | grep -B 1 "*-generic" >> config.txt
grep -v "*-generic" config.txt >> config1.txt


# End