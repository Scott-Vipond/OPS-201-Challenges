:: Windows .bat file

:: Script:                    Ops Challenge 10
:: Author:                    Scott Vipond   
:: Date of latest revision:   18 Nov 22   
:: Purpose:                   Use Powershell to start and stop processes  

:: Tasks:
  :: Task 1 - Print to the terminal screen all active processes ordered by highest CPU time consumption at the top.
  
  :: Task 2 - Print to the terminal screen all active processes ordered by highest Process Identification Number at the top.

  :: Task 3 - Print to the terminal screen the top five active processes ordered by highest Working Set (WS(K)) at the top.

  :: Task 4 - Start the process Internet Explorer (iexplore.exe) and have it open https://owasp.org/www-project-top-ten/.

  ::Task 5 - Start the process Internet Explorer (iexplore.exe) ten times using a for loop. 
    ::Have each instance open https://owasp.org/www-project-top-ten/.

  :: Task 6 - Close all Internet Explorer windows.

  :: Task 7 - Kill a process by its Process Identification Number. 
    :: Choose a process whose termination won’t destabilize the system, such as Internet Explorer or MS Edge

:: Reference sites below:

:: Define variables here

:: Define functions here

:: Main code goes here

:: Print to the terminal screen all active processes ordered by highest CPU time consumption at the top.
Get-Process | Sort-Object -Property 'CPU' -Descending :: | Select-Object -First 50

:: Print to the terminal screen all active processes ordered by highest Process Identification Number at the top.
Get-Process | Sort-Object Id -Descending | Select-Object -First 50

:: Print to the terminal screen the top five active processes ordered by highest Working Set (WS(K)) at the top.
Get-Process | Sort-Object WorkingSet -Descending | Select-Object -First 5

:: Start the process Internet Explorer (iexplore.exe) and have it open https://owasp.org/www-project-top-ten/
Start-Process -file iexplore "https://owasp.org/www-project-top-ten/"

:: Start the process Internet Explorer (iexplore.exe) ten times using a for loop. Have each instance open https://owasp.org/www-project-top-ten/.
$webpage=1
for(;$webpage -le10;$webpage++)
{
    Start-Process -file iexplore "https://owasp.org/www-project-top-ten/"
    Start-Sleep -Milliseconds 250
}

:: Close all Internet Explorer windows
Stop-Process -name iexplore

:: Kill a process by its Process Identification Number. Choose a process whose termination won’t destabilize the system, such as Internet Explorer or MS Edge
:: I ran the following first to ensure I was killing the correct process to not destabilize the system
:: Start-Process -file iexplore
:: Get-Process -name iexplore
Stop-Process -Id 41620

:: End