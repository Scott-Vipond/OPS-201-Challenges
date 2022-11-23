# Windows .ps1 file (Powershell)

# Script:                    Ops Challenge 12
# Author:                    Scott Vipond   
# Date of latest revision:   22 Nov 22   
# Purpose:                   Create Powershell script to display IPv4 information  


# Create a Powershell script that performs the following operations:
  # Create a local file called network_report.txt that holds the contents of an ipconfig /all command.
  # Use Select-String to search network_report.txt and return only the IP version 4 address.
  # Remove the network_report.txt when you are finished searching it.

# For this challenge, you must use at least one variable and one function. 

    # Reference sites below:
    # https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.utility/select-string?view=powershell-7.3
    # https://learn.microsoft.com/en-us/powershell/module/nettcpip/get-netipconfiguration?view=windowsserver2022-ps
    # https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/about_variables?view=powershell-7.3


# Define variables here
    # Defined within each of the function below

# Main code goes here (both functions work individually, different outputs)
# Function 1 - works well, uses ipconfig /all
Function IPAddress {
    $reportfile = "network_report.txt"
    ipconfig /all > $reportfile
    Select-String -Path $reportfile -Pattern "IPv4"
    rm $reportfile
}

# Function 2 - works well, uses cmdlet Get-NetIPConfiguration instead
Function IPAddress {
    $var = "Report complete"
    Get-NetIPConfiguration -All > network_report.txt
    Select-String -Path “network_report.txt” -Pattern “IPv4”
    rm “network_report.txt”
    Write-Output $var
 }

# The following three lines work as expected with great output, could not get to work in Function
# Get-NetIPConfiguration -All > network_report.txt
# Select-String -Path “network_report.txt” -Pattern “IPv4”
# rm “network_report.txt”

# The following will print "Report Complete" in Powershell display
# $var = "Report complete"
# Write-Output $var


# End
