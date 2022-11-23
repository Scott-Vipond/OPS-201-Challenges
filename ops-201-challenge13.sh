#!/bin/bash

# Script:                    Ops Challenge 13
# Author:                    Scott Vipond   
# Date of latest revision:   23 Nov 22   
# Purpose:                   Script to find domain information  


# Tasks:
  # Create a script that asks a user to type a domain, then displays information about the typed domain. 
    # Operations that must be used include:
        # whois
        # dig
        # host
        # nslookup

  
    # Script must contain at least one:
        # Function
        # Variable
        
# Reference sites below:
# https://www.howtogeek.com/680086/how-to-use-the-whois-command-on-linux/
# https://phoenixnap.com/kb/bash-function


# Define variables here

    
continue_search="y"

# Define functions here
function f1 {
    whois $newfile > domainsearch.txt
}

function f2 {
    dig $newfile >> domainsearch.txt
}
    
function f3 {
    host $newfile >> domainsearch.txt
}

function f4 {
    nslookup $newfile >> domainsearch.txt
}
# Main code

while [ $continue_search == "y" ]
do 
    # Asks user for a file to create
    read -p "Enter domain name to search for (i.e. cnn.com):" newfile
   f1
   f2
   f3
   f4
    read -p "Would you like to create another search? (y/n)" continue_search
    
done

echo "Thank you for using my domain search script"

# End