:: Windows .bat file

:: Script:                    Ops Challenge 09
:: Author:                    Scott Vipond   
:: Date of latest revision:   17 Nov 22   
:: Purpose:                   Using Powershell create scripts to retrieve System event logs  


:: Tasks:
    :: Task #1
    :: Output all events from the System event log that occurred in the last 24 hours to a file on your desktop named last_24.txt.
    :: Task #2
    :: Output all “error” type events from the System event log to a file on your desktop named errors.txt.
    :: Task #3
    :: Print to the screen all events with ID of 16 from the System event log.
    :: Task #4
    :: Print to the screen the most recent 20 entries from the System event log.
    :: Task #5
    :: Print to the screen all sources of the 500 most recent entries in the System event log. 
        :: Ensure that the full lines are displayed (get rid of the … and show the entire text)


:: Reference sites below:
:: https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.management/get-eventlog?view=powershell-5.1

:: Define variables here

:: Define functions here

:: Main code goes here

:: Each of these tasks require copy/paste to Powershell, this cannot be run as a .bat file on its own!

:: Output all events from the System event log that occurred in the last 24 hours
:: to a file on your desktop named last_24.txt
$Begin = Get-Date -Date '11/17/2022 00:00:00'
$End = Get-Date -Date '11/17/2022 23:59:59'
Get-EventLog -LogName System -After $Begin -Before $End >C:\Users\admin\Desktop\last_24.txt


:: Output all “error” type events from the System event log to a file on your desktop named errors.txt
Get-EventLog -LogName System -EntryType Error >C:\Users\admin\Desktop\errors.txt


:: Print to the screen all events with ID of 16 from the System event log
Get-EventLog -LogName System -InstanceID 16


:: Print to the screen the most recent 20 entries from the System event log
Get-EventLog -LogName System -Newest 20


:: Print to the screen all sources of the 500 most recent entries in the System event log.
:: Ensure that the full lines are displayed (get rid of the … and show the entire text)
Get-EventLog -LogName System -Newest 500 | Format-Table -Wrap


:: Tried function below, still need to work on syntax and how to call from menu
:: function Get-SystemTable {
:: Get-EventLog -LogName System -Newest 500 | Format-Table -Wrap
:: }

:: End