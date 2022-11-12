#!/bin/bash

# Script: Functions                      
# Author: Scott Vipond                      
# Date of latest revision: 9 Nov 22
# Purpose: OPS-201 Challenge03 - Functions

# Basic function
print_something () {
  echo "Hello I am a function that displays the login history"

  var="Ubuntu Server User Login History"
echo $var
last
}

print_something

# End