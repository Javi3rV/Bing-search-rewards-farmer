@echo off
setlocal enabledelayedexpansion
set /p lvl=Nivel de rewards de bing (1 o 2): 
if %lvl%==1 (
	set counter=1
	for /l %%n in (1, 1, 10) do (
		set /a posicion=!random!*%%n
		start microsoft-edge:https://www.bing.com/search?q=!posicion!
		if !counter! equ 1 (
            	timeout /t 5
            	set /a counter+=1
        	) else (
            	timeout /t 1
        	)
	)
	powershell -Command "Add-Type -AssemblyName System.Windows.Forms; [System.Windows.Forms.SendKeys]::SendWait('^{TAB}')"
	for /l %%n in (1, 1, 9) do (
		powershell -Command "Add-Type -AssemblyName System.Windows.Forms; [System.Windows.Forms.SendKeys]::SendWait('^w')"
	)

) else (

	set counter=1
	for /l %%n in (1, 1, 30) do (
		set /a posicion=!random!*%%n
		start microsoft-edge:https://www.bing.com/search?q=!posicion!
		if !counter! equ 1 (
            	timeout /t 4
            	set /a counter+=1
        	) else (
            	timeout /t 1
        	)
	)
	powershell -Command "Add-Type -AssemblyName System.Windows.Forms; [System.Windows.Forms.SendKeys]::SendWait('^{TAB}')"
	for /l %%n in (1, 1, 29) do (
		powershell -Command "Add-Type -AssemblyName System.Windows.Forms; [System.Windows.Forms.SendKeys]::SendWait('^w')"
	)
)
start microsoft-edge:https://www.bing.com/search?q=a
timeout /t 2
powershell -Command "Add-Type -AssemblyName System.Windows.Forms; [System.Windows.Forms.SendKeys]::SendWait('{F4}edge://settings/clearBrowserData{ENTER}')"
powershell -Command "Add-Type -AssemblyName System.Windows.Forms; [System.Windows.Forms.SendKeys]::SendWait('^{TAB}')"
powershell -Command "Add-Type -AssemblyName System.Windows.Forms; [System.Windows.Forms.SendKeys]::SendWait('^w')"