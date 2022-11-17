:: Windows .bat file

:: Script:                    Ops Challenge 08
:: Author:                    Scott Vipond   
:: Date of latest revision:   16 Nov 22   
:: Purpose:                   Create batch script for Windows  


:: Tasks:
  :: Creat batch script to back up Jorge's files from his desktop to the E:\
    
  :: task 2
    :: Create Task Scheduler backup of folder at midnight each night

:: Reference sites below:
:: https://www.makeuseof.com/tag/use-windows-batch-file-commands-automate-repetitive-tasks/
:: https://en.wikibooks.org/wiki/Windows_Batch_Scripting

:: Define variables here

:: Define functions here

:: Main code goes here
REM This file will create a backup of the user's desktop folder to the E:\ drive
:: This is another way to make a comment in Windows

@echo off

ROBOCOPY /s "C:\Users\j.thompson\Desktop\My Project Files" "E:\J_Thompson_Desktop_Backups" /LOG:backuplog.txt

pause

:: End