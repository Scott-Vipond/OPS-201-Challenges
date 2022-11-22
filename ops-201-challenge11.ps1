# Windows .ps1 file (Powershell)

# Script:                    Ops Challenge 11
# Author:                    Scott Vipond   
# Date of latest revision:   21 Nov 22   
# Purpose:                   Using various scripts to automate system configuration  

# Tasks:
  # Enable File and Printer Sharing
  # Allow ICMP traffic
  # Enable Remote management
  # Remove bloatware
  # Enable Hyper-V
  # Disable SMBv1, an insecure protocol
  
# Reference sites below was used for all command scripts: 
# https://github.com/superswan/Powershell-SysAdmin

# Documentation of Challege in Google Document below:
# https://docs.google.com/document/d/1NodgoeATu1MoJ9ZOOsZPHJNofMg-eXXLGncnfY5NoPI/edit#

# Main code

# The script below is to Enable File and Printer Sharing
Set-NetFirewallRule -DisplayGroup "File And Printer Sharing" -Enabled True


# This script will Allow ICMP traffic
netsh advfirewall firewall add rule name="Allow incoming ping requests IPv4" dir=in action=allow protocol=icmpv4

# These three scripts below will Enable Remote management

    # 1. RDP script
    reg add "HKLM\SYSTEM\CurrentControlSet\Control\Terminal Server" /v fDenyTSConnections /t REG_DWORD /d 0 /f

    # 2. NLA script
    Set-ItemProperty 'HKLM:\SYSTEM\CurrentControlSet\Control\Terminal Server\WinStations\RDP-Tcp\' -Name "UserAuthentication" -Value 1

    # 3. Firewall Rule script
    Enable-NetFirewallRule -DisplayGroup "Remote Desktop"

## This script "should" Remove bloatware but I received multiple errors with the UI
iex ((New-Object System.Net.WebClient).DownloadString('https://git.io/debloat'))

# This scripts will Enable Hyper-V
Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Hyper-V -All

## This script will Disable SMBv1, an insecure protocol (which was already disabled)
Set-SmbServerConfiguration -EnableSMB1Protocol $false -Force

## End