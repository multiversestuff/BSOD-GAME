@echo off
title BSOD
chcp 65001 >nul
color 1B
if not "%1" == "max" start /MAX cmd /c %0 max & exit/b
CALL :HIDE_CLOSE

:HIDE_CLOSE
START /B POWERSHELL -NoProfile -ExecutionPolicy Unrestricted  ^
$Source = 'using System; using System.Runtime.InteropServices;  ^
public class Program {  ^
    public static void Run() {  ^
        DeleteMenu(GetSystemMenu(GetConsoleWindow(), false), SC_CLOSE, MF_BYCOMMAND);  ^
    }  ^
    private const int MF_BYCOMMAND = 0x00000000;  ^
    public const int SC_CLOSE = 0xF060;  ^
    [DllImport("""user32.dll""")]  ^
    public static extern int DeleteMenu(IntPtr hMenu, int nPosition, int wFlags);  ^
    [DllImport("""user32.dll""")]  ^
    private static extern IntPtr GetSystemMenu(IntPtr hWnd, bool bRevert);  ^
    [DllImport("""kernel32.dll""", ExactSpelling = true)]  ^
    private static extern IntPtr GetConsoleWindow();  ^
}';  ^
Add-Type -TypeDefinition $Source;  ^
[Program]::Run()
goto :Bluescreen

:Bluescreen
SETLOCAL ENABLEEXTENSIONS
SETLOCAL ENABLEDELAYEDEXPANSION
echo.	
echo.	
echo.	
echo.	
echo.          ██████ 
echo.       ██ ██      
echo.          ██      
echo.       ██ ██      
echo.          ██████ 
echo.	
echo.	
echo.	
echo.	
echo	Your PC ran into a problem and needs to restart. We're 
echo	just collecting some error info, and then we'll restart for
echo	you.
echo.	
echo	100%% complete
echo.	
echo	                For more information about this issue and possible fixes, visit our website
echo.	
echo.      
echo	                If you call a support person, give them this code:
echo	                Stop code: IRQL_NOT_LESS_OR_EQUAL
echo.                                                     
echo        ▄█▀▀▀▀▀▀██       ▀  ▀  ▀          ▄█▀▀▀▀▀▀██  
echo        █  ▄▄▄▄  ██   ▄  ▄ ▄  ▄▄ ▀  ▀     █  ▄▄▄▄  ██ 
echo        █  ████  ██   ▄  ▄    ▄        ▄  █  █████ ██ 
echo        █  ▀▀▀▀  ██   ▀  ▀       ▀        █  ▀▀▀▀  ██ 
echo        ██▄▄▄▄▄▄▄█▀ ▄ ▀ █▀ █▀ █  █▀ █  ▄  ██▄▄▄▄▄▄▄█▀ 
echo          ▀▀▀▀▀▀▀     ▄ ▄▄ ▄▄ ▄▄ ▄▄ ▄▄      ▀▀▀▀▀▀▀   
echo                   ▀  ▀  ▀  ▀ ▀▀  ▀ █                 
echo        ▀ ▀  ▀▀    ▀▀ ▀           ▀  ▀      ▀▀  ▀ ▀   
echo             ▄▄    █▄ █  ▄ ██ ██ ██ ▀▄    ▄  ▄ ▄▄ ▄   
echo        ▄  ▄       ▄▄▄   ▄  ▄    ▄   ▄ ▄  ▄           
echo             ▀▀    ▀▀ ▀    ▀▀     ▀ ▀▀ ▀    ▀▀ ▀▀     
echo        █  ▄  ▄ ▀  ██▀▄    ██ █  ▄▀ ▄▀    ▀  ▀ ▄▀     
echo             ▄  ▄▄ ▄▄ ▄    ▄▄ ▄▄  ▄ ▄▄            ▄   
echo                    ▀ ▀             ▀                 
echo                ▀▀ █▀▀▄ ▀▀ ▀▄ ▀█ █▀ █▀      ▀▀ ▀▀ ▀   
echo           ▄ ▄  ▄▄ █▄ █ ▄▄ ▄█ ▄█ █▄ █▄ ▄▄▄▄▄▄▄ ▄  ▄   
echo                         ▄  ▄ ▄▄  ▄ ▄  █     █        
echo        ▄█▀▀▀▀▀▀██            ▀▀  ▀ ▀▀ █  ▀  █  ▀ ▀   
echo        █  ▄▄▄▄  ██   █  ▄       ▄  ▄  █▄▄▄▄▄█ █  █   
echo        █  ████  ██   ▄  ▄                   ▄ ▄▄     
echo        █  ▀██▀  ██         ▀ ▀     ▀             ▀   
echo        ██▄▄▄▄▄▄▄█▀   ▀    ▀  ▀  ▀          ▀▀        
echo          ▀▀▀▀▀▀▀         
echo.   
echo.   
echo.   
echo.   
echo Press 1 to restart.
echo Press 2 to shut down.
set /p input=Answer=%BS%
if /I %input% EQU 1 goto :restart1
if /I %input% EQU 2 goto :void


:void
cls
color 07
echo.
:restart1
SETLOCAL ENABLEEXTENSIONS
SETLOCAL ENABLEDELAYEDEXPANSION
cls
echo.   
echo.   
echo.   
echo                                     ████████████ ████████████ 
echo                                     ████████████ ████████████ 
echo                                     ████████████ ████████████ 
echo                                     ████████████ ████████████ 
echo                                     ████████████ ████████████ 
echo                                     ████████████ ████████████ 
echo.                                                              
echo                                     ████████████ ████████████ 
echo                                     ████████████ ████████████ 
echo                                     ████████████ ████████████ 
echo                                     ████████████ ████████████ 
echo                                     ████████████ ████████████ 
echo                                     ████████████ ████████████ 
echo.   
echo.   
echo.   
echo.   
echo                                               ██████  
echo                                              ██    ██ 
echo                                              ██    ██ 
echo                                              ██      
echo                                               ████  
echo.   
echo.  

echo Press 1 to cancel and shut off This PC, Press 0 to continue restarting.
ping localhost -n 6 >nul
set /p input=Answer=%BS%
if /I %input% EQU 1 exit
if /I %input% EQU 0 goto :waiting


:waiting
cls
SETLOCAL ENABLEEXTENSIONS
SETLOCAL ENABLEDELAYEDEXPANSION
cls
echo.   
echo.   
echo.   
echo                                     ████████████ ████████████ 
echo                                     ████████████ ████████████ 
echo                                     ████████████ ████████████ 
echo                                     ████████████ ████████████ 
echo                                     ████████████ ████████████ 
echo                                     ████████████ ████████████ 
echo.                                                              
echo                                     ████████████ ████████████ 
echo                                     ████████████ ████████████ 
echo                                     ████████████ ████████████ 
echo                                     ████████████ ████████████ 
echo                                     ████████████ ████████████ 
echo                                     ████████████ ████████████ 
echo.   
echo.   
echo.   
echo.   
echo                                               ██████  
echo                                              ██    ██ 
echo                                              ██    ██ 
echo                                              ██      
echo                                               ████  
echo.   
echo.  
echo please wait...
ping localhost -n 6 >nul
goto :Bluescreen2

:Bluescreen2
cls
SETLOCAL ENABLEEXTENSIONS
SETLOCAL ENABLEDELAYEDEXPANSION
echo.	
echo.	
echo.	
echo.	
echo.          ██████ 
echo.       ██ ██      
echo.          ██      
echo.       ██ ██      
echo.          ██████ 
echo.	
echo.	
echo.	
echo.	
echo	Your PC ran into a problem and needs to shut down to
echo	prevent further damage. Please wait until we diagnose
echo	this computer.
echo.	
echo	  diagnosing 80%% 
echo.	
echo	                For more information about this issue and possible fixes, visit our website
echo.	
echo.      
echo	                If you call a support person, give them this code:
echo	                Stop code: IRQL_NOT_LESS_OR_EQUAL
echo.                                                     
echo        ▄█▀▀▀▀▀▀██       ▀  ▀  ▀          ▄█▀▀▀▀▀▀██  
echo        █  ▄▄▄▄  ██   ▄  ▄ ▄  ▄▄ ▀  ▀     █  ▄▄▄▄  ██ 
echo        █  ████  ██   ▄  ▄    ▄        ▄  █  █████ ██ 
echo        █  ▀▀▀▀  ██   ▀  ▀       ▀        █  ▀▀▀▀  ██ 
echo        ██▄▄▄▄▄▄▄█▀ ▄ ▀ █▀ █▀ █  █▀ █  ▄  ██▄▄▄▄▄▄▄█▀ 
echo          ▀▀▀▀▀▀▀     ▄ ▄▄ ▄▄ ▄▄ ▄▄ ▄▄      ▀▀▀▀▀▀▀   
echo                   ▀  ▀  ▀  ▀ ▀▀  ▀ █                 
echo        ▀ ▀  ▀▀    ▀▀ ▀           ▀  ▀      ▀▀  ▀ ▀   
echo             ▄▄    █▄ █  ▄ ██ ██ ██ ▀▄    ▄  ▄ ▄▄ ▄   
echo        ▄  ▄       ▄▄▄   ▄  ▄    ▄   ▄ ▄  ▄           
echo             ▀▀    ▀▀ ▀    ▀▀     ▀ ▀▀ ▀    ▀▀ ▀▀     
echo        █  ▄  ▄ ▀  ██▀▄    ██ █  ▄▀ ▄▀    ▀  ▀ ▄▀     
echo             ▄  ▄▄ ▄▄ ▄    ▄▄ ▄▄  ▄ ▄▄            ▄   
echo                    ▀ ▀             ▀                 
echo                ▀▀ █▀▀▄ ▀▀ ▀▄ ▀█ █▀ █▀      ▀▀ ▀▀ ▀   
echo           ▄ ▄  ▄▄ █▄ █ ▄▄ ▄█ ▄█ █▄ █▄ ▄▄▄▄▄▄▄ ▄  ▄   
echo                         ▄  ▄ ▄▄  ▄ ▄  █     █        
echo        ▄█▀▀▀▀▀▀██            ▀▀  ▀ ▀▀ █  ▀  █  ▀ ▀   
echo        █  ▄▄▄▄  ██   █  ▄       ▄  ▄  █▄▄▄▄▄█ █  █   
echo        █  ████  ██   ▄  ▄                   ▄ ▄▄     
echo        █  ▀██▀  ██         ▀ ▀     ▀             ▀   
echo        ██▄▄▄▄▄▄▄█▀   ▀    ▀  ▀  ▀          ▀▀        
echo          ▀▀▀▀▀▀▀         
echo.   
echo.   
echo.   
echo.   
echo Press 1 to restart.
echo Press 2 to shut down.
set /p input=Answer=%BS%
if /I %input% EQU 1 goto :restart2
if /I %input% EQU 2 goto :void

:restart2
cls
SETLOCAL ENABLEEXTENSIONS
SETLOCAL ENABLEDELAYEDEXPANSION
echo.   
echo.   
echo.   
echo                                     ████████████ ████████████ 
echo                                     ████████████ ████████████ 
echo                                     ████████████ ████████████ 
echo                                     ████████████ ████████████ 
echo                                     ████████████ ████████████ 
echo                                     ████████████ ████████████ 
echo.                                                              
echo                                     ████████████ ████████████ 
echo                                     ████████████ ████████████ 
echo                                     ████████████ ████████████ 
echo                                     ████████████ ████████████ 
echo                                     ████████████ ████████████ 
echo                                     ████████████ ████████████ 
echo.   
echo.   
echo.   
echo.   
echo                                               ██████  
echo                                              ██    ██ 
echo                                              ██    ██ 
echo                                              ██      
echo                                               ████  
echo.   
echo.  

echo Press 1 to cancel and shut off This PC, Press 0 to continue restarting.
ping localhost -n 6 >nul
set /p input=Answer=%BS%
if /I %input% EQU 1 exit
if /I %input% EQU 0 goto :waiting2


:waiting2
cls
SETLOCAL ENABLEEXTENSIONS
SETLOCAL ENABLEDELAYEDEXPANSION
cls
echo.   
echo.   
echo.   
echo                                     ████████████ ████████████ 
echo                                     ████████████ ████████████ 
echo                                     ████████████ ████████████ 
echo                                     ████████████ ████████████ 
echo                                     ████████████ ████████████ 
echo                                     ████████████ ████████████ 
echo.                                                              
echo                                     ████████████ ████████████ 
echo                                     ████████████ ████████████ 
echo                                     ████████████ ████████████ 
echo                                     ████████████ ████████████ 
echo                                     ████████████ ████████████ 
echo                                     ████████████ ████████████ 
echo.   
echo.   
echo.   
echo.   
echo                                               ██████  
echo                                              ██    ██ 
echo                                              ██    ██ 
echo                                              ██      
echo                                               ████  
echo.   
echo.  
echo please wait...
ping localhost -n 6 >nul
goto :concerned2

:concerned2
cls
SETLOCAL ENABLEEXTENSIONS
SETLOCAL ENABLEDELAYEDEXPANSION
echo.	
echo.	
echo.	
echo.	
echo.          ██████ ██████
echo.       ██ ██     ██ 
echo.          ██     ██ 
echo.       ██ ██     ██ 
echo.          ██████ ██████ 
echo.	
echo.	
echo.	
echo.	
echo	This Computer cannot start correctly becuase of critical errors.
echo	Please shut down this PC and contact Microsoft Support to
echo	prevent any serious damage.
echo.	
echo.	
echo	                For more information about this issue and possible fixes, visit our website
echo.	
echo.      
echo	                If you call a support person, give them this code:
echo	                Stop code: CRITICAL_PROCESS_DIED
echo.                                                     
echo        ▄█▀▀▀▀▀▀██       ▀  ▀  ▀          ▄█▀▀▀▀▀▀██  
echo        █  ▄▄▄▄  ██   ▄  ▄ ▄  ▄▄ ▀  ▀     █  ▄▄▄▄  ██ 
echo        █  ████  ██   ▄  ▄    ▄        ▄  █  █████ ██ 
echo        █  ▀▀▀▀  ██   ▀  ▀       ▀        █  ▀▀▀▀  ██ 
echo        ██▄▄▄▄▄▄▄█▀ ▄ ▀ █▀ █▀ █  █▀ █  ▄  ██▄▄▄▄▄▄▄█▀ 
echo          ▀▀▀▀▀▀▀     ▄ ▄▄ ▄▄ ▄▄ ▄▄ ▄▄      ▀▀▀▀▀▀▀   
echo                   ▀  ▀  ▀  ▀ ▀▀  ▀ █                 
echo        ▀ ▀  ▀▀    ▀▀ ▀           ▀  ▀      ▀▀  ▀ ▀   
echo             ▄▄    █▄ █  ▄ ██ ██ ██ ▀▄    ▄  ▄ ▄▄ ▄   
echo        ▄  ▄       ▄▄▄   ▄  ▄    ▄   ▄ ▄  ▄           
echo             ▀▀    ▀▀ ▀    ▀▀     ▀ ▀▀ ▀    ▀▀ ▀▀     
echo        █  ▄  ▄ ▀  ██▀▄    ██ █  ▄▀ ▄▀    ▀  ▀ ▄▀     
echo             ▄  ▄▄ ▄▄ ▄    ▄▄ ▄▄  ▄ ▄▄            ▄   
echo                    ▀ ▀             ▀                 
echo                ▀▀ █▀▀▄ ▀▀ ▀▄ ▀█ █▀ █▀      ▀▀ ▀▀ ▀   
echo           ▄ ▄  ▄▄ █▄ █ ▄▄ ▄█ ▄█ █▄ █▄ ▄▄▄▄▄▄▄ ▄  ▄   
echo                         ▄  ▄ ▄▄  ▄ ▄  █     █        
echo        ▄█▀▀▀▀▀▀██            ▀▀  ▀ ▀▀ █  ▀  █  ▀ ▀   
echo        █  ▄▄▄▄  ██   █  ▄       ▄  ▄  █▄▄▄▄▄█ █  █   
echo        █  ████  ██   ▄  ▄                   ▄ ▄▄     
echo        █  ▀██▀  ██         ▀ ▀     ▀             ▀   
echo        ██▄▄▄▄▄▄▄█▀   ▀    ▀  ▀  ▀          ▀▀        
echo          ▀▀▀▀▀▀▀         
echo.   
echo.   
echo.   
echo.   
echo 1) Shut down
echo 2) Continue to Windows.
set /p input=Answer=%BS%
if /I %input% EQU 1 goto :void
if /I %input% EQU 2 goto :restart3


:restart3
cls
color 07
SETLOCAL ENABLEEXTENSIONS
SETLOCAL ENABLEDELAYEDEXPANSION
cls
echo.   
echo.   
echo.   
echo                                     ████████████ ████████████ 
echo                                     ████████████ ████████████ 
echo                                     ████████████ ████████████ 
echo                                     ████████████ ████████████ 
echo                                     ████████████ ████████████ 
echo                                     ████████████ ████████████ 
echo.                                                              
echo                                     ████████████ ████████████ 
echo                                     ████████████ ████████████ 
echo                                     ████████████ ████████████ 
echo                                     ████████████ ████████████ 
echo                                     ████████████ ████████████ 
echo                                     ████████████ ████████████ 
echo.   
echo.   
echo.   
echo.   
echo                                               ██████  
echo                                              ██    ██ 
echo                                              ██    ██ 
echo                                              ██      
echo                                               ████  
echo.   
echo.  

echo Press 1 to cancel and shut off This PC, Press 0 to continue restarting.
ping localhost -n 6 >nul
set /p input=Answer=%BS%
if /I %input% EQU 1 exit
if /I %input% EQU 0 goto :waiting3


:waiting3
cls
SETLOCAL ENABLEEXTENSIONS
SETLOCAL ENABLEDELAYEDEXPANSION
cls
echo.   
echo.   
echo.   
echo                                     ████████████ ████████████ 
echo                                     ████████████ ████████████ 
echo                                     ████████████ ████████████ 
echo                                     ████████████ ████████████ 
echo                                     ████████████ ████████████ 
echo                                     ████████████ ████████████ 
echo.                                                              
echo                                     ████████████ ████████████ 
echo                                     ████████████ ████████████ 
echo                                     ████████████ ████████████ 
echo                                     ████████████ ████████████ 
echo                                     ████████████ ████████████ 
echo                                     ████████████ ████████████ 
echo.   
echo.   
echo.   
echo.   
echo                                               ██████  
echo                                              ██    ██ 
echo                                              ██    ██ 
echo                                              ██      
echo                                               ████  
echo.   
echo.  
echo please wait...
ping localhost -n 6 >nul
goto :concerned3

:concerned3
cls
color 1F
SETLOCAL ENABLEEXTENSIONS
SETLOCAL ENABLEDELAYEDEXPANSION
echo.	
echo.	
echo.	
echo.	
echo.          ██████ ██████
echo.       ██ ██     ██ 
echo.          ██     ██ 
echo.       ██ ██     ██ 
echo.          ██████ ██████ 
echo.	
echo.	
echo.	
echo.	
echo	12 critial errors were detected while trying to start Windows.
echo	If you do not shut your computer down now, this may have serious
echo	consequences. Please shut down this PC.
echo.	
echo.	
echo	                For more information about this issue and possible fixes, visit our website
echo.	
echo.      
echo	                If you call a support person, give them this code:
echo	                Stop code: CRITICAL_PROCESS_DIED
echo.                                                     
echo	            ██       ██████ 
echo	             ██  ██ ██      
echo	              ██    ██      
echo	             ██  ██ ██      
echo  	    ██       ██████ 
echo.   
echo.   
echo.   
echo.   
echo 1) Shut down
echo 2) Continue to Windows.
set /p input=Answer=%BS%
if /I %input% EQU 1 goto :void
if /I %input% EQU 2 goto :restart4

:restart4
cls
color 07
SETLOCAL ENABLEEXTENSIONS
SETLOCAL ENABLEDELAYEDEXPANSION
cls
echo.   
echo.   
echo.   
echo.   
echo.   
echo.   
echo.   
echo                                               ██████  
echo                                              ██    ██ 
echo                                              ██    ██ 
echo                                              ██      
echo                                               ████  
echo.   
echo.  

echo Press 1 to cancel and shut off This PC, Press 0 to continue restarting.
ping localhost -n 6 >nul
set /p input=Answer=%BS%
if /I %input% EQU 1 exit
if /I %input% EQU 0 goto :waiting4


:waiting4
cls
SETLOCAL ENABLEEXTENSIONS
SETLOCAL ENABLEDELAYEDEXPANSION
cls
echo.   
echo.   
echo.   
echo.   
echo.   
echo.   
echo.   
echo                                               ██████  
echo                                              ██    ██ 
echo                                              ██    ██ 
echo                                              ██      
echo                                               ████  
echo.   
echo.  
echo please wait...
ping localhost -n 6 >nul
goto :concerned5

:concerned5
cls
color E0
SETLOCAL ENABLEEXTENSIONS
SETLOCAL ENABLEDELAYEDEXPANSION
echo.	
echo.	
echo.	
echo.	
echo                                    ██ 
echo                             ██    ██  
echo                                  ██   
echo                             ██  ██    
echo                                ██   
echo.	
echo.	
echo.	
echo.	
echo	We strongly recommend that you shut down this PC to prevent
echo	serious damage! Just contact Microsoft and let a specialist
echo	resolve this issue.
echo.	
echo.	
echo	                For more information about this issue and possible fixes, visit our website
echo.	
echo.      
echo	                Contact us immediately
echo.
echo.
echo	                Stop code: WIDE_CRITICAL_DEATH
echo.                                                     
echo.   
echo.   
echo.   
echo.   
echo 1) Shut down (Recommended)
echo 2) Continue to Windows.
set /p input=Answer=%BS%
if /I %input% EQU 1 goto :void
if /I %input% EQU 2 goto :noescape

:noescape
cls
mode con cols=80 lines=25
color f0
echo.[47m           [43m           [46m           [42m           [45m           [41m           [44m           
echo.[47m           [43m           [46m           [42m           [45m           [41m           [44m           
echo.[47m           [43m           [46m           [42m           [45m           [41m           [44m           
echo.[47m           [43m           [46m           [42m           [45m           [41m           [44m           
echo.[47m           [43m           [46m           [42m           [45m           [41m           [44m           
echo.[47m           [43m           [46m           [42m           [45m           [41m           [44m           
echo.[47m           [43m           [46m           [42m           [45m           [41m           [44m           
echo.[47m           [43m           [46m           [42m           [45m           [41m           [44m           
echo.[47m           [43m           [46m           [42m           [45m           [41m           [44m           
echo.[47m           [43m           [46m           [42m           [45m           [41m           [44m           
echo.[47m           [43m           [46m           [42m           [45m           [41m           [44m           
echo.[47m           [43m           [46m           [42m           [45m           [41m           [44m           
echo.[47m           [43m           [46m           [42m           [45m           [41m           [44m           
echo.[47m           [43m           [46m           [42m           [45m           [41m           [44m           
echo.[47m           [43m           [46m           [42m           [45m           [41m           [44m           
echo.[47m           [43m           [46m           [42m           [45m           [41m           [44m           
echo.[44m           [40m           [45m           [43m           [46m           [40m           [47m           
echo.[44m           [40m           [45m           [43m           [46m           [40m           [47m           
echo.[44m           [40m           [45m           [43m           [46m           [40m           [47m           
echo.[41m              [47m             [44m             [47m               [46m           [42m           
echo.[41m              [47m             [44m             [47m               [46m           [42m           
echo.[41m              [47m             [44m             [47m               [46m           [42m           
echo.[47m                       [40m           NO SIGNAL           [47m                       
echo.[43m                             [41m                   [43m                             
echo please wait.
ping localhost -n 4 >nul
goto :uhh
:uhh
cls
color E0
SETLOCAL ENABLEEXTENSIONS
SETLOCAL ENABLEDELAYEDEXPANSION
echo.	
echo.	
echo.	
echo.	
echo                                    ██ 
echo                             ██    ██  
echo                                  ██   
echo                             ██  ██    
echo                                ██   
echo.	
echo.	
echo.	
echo.	
echo	Dear user, we are forced to inform you once again that your PC
echo	cannot start due to critical errors. Please shut down your computer
echo	and contact Microsoft center!
echo.	
echo.	
echo	                For more information about this issue and possible fixes, visit our website
echo.	
echo.      
echo	                Contact us immediately
echo.
echo.
echo	                Stop code: WIDE_CRITICAL_DEATH
echo.                                                     
echo.   
echo.   
echo.   
echo.   
echo 1) Shut down (Recommended)
echo 2) Continue to Windows.
set /p input=Answer=%BS%
if /I %input% EQU 1 goto :void
if /I %input% EQU 2 goto :noescape2

:noescape2
cls
mode con cols=80 lines=25
color F0
echo.[47m           [43m           [46m           [42m           [45m           [41m           [44m           
echo.[47m           [43m           [46m           [42m           [45m           [41m           [44m           
echo.[47m           [43m           [46m           [42m           [45m           [41m           [44m           
echo.[47m           [43m           [46m           [42m           [45m           [41m           [44m           
echo.[47m           [43m           [46m           [42m           [45m           [41m           [44m           
echo.[47m           [43m           [46m           [42m           [45m           [41m           [44m           
echo.[47m           [43m           [46m           [42m           [45m           [41m           [44m           
echo.[47m           [43m           [46m           [42m           [45m           [41m           [44m           
echo.[47m           [43m           [46m           [42m           [45m           [41m           [44m           
echo.[47m           [43m           [46m           [42m           [45m           [41m           [44m           
echo.[47m           [43m           [46m           [42m           [45m           [41m           [44m           
echo.[47m           [43m           [46m           [42m           [45m           [41m           [44m           
echo.[47m           [43m           [46m           [42m           [45m           [41m           [44m           
echo.[47m           [43m           [46m           [42m           [45m           [41m           [44m           
echo.[47m           [43m           [46m           [42m           [45m           [41m           [44m           
echo.[47m           [43m           [46m           [42m           [45m           [41m           [44m           
echo.[44m           [40m           [45m           [43m           [46m           [40m           [47m           
echo.[44m           [40m           [45m           [43m           [46m           [40m           [47m           
echo.[44m           [40m           [45m           [43m           [46m           [40m           [47m           
echo.[41m              [47m             [44m             [47m               [46m           [42m           
echo.[41m              [47m             [44m             [47m               [46m           [42m           
echo.[41m              [47m             [44m             [47m               [46m           [42m           
echo.[47m                       [40m           NO SIGNAL           [47m                       
echo.[43m                             [41m                   [43m                             
echo please wait...........///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
ping localhost -n 4 >nul
goto :uhh2

:uhh2
cls
color C0
SETLOCAL ENABLEEXTENSIONS
SETLOCAL ENABLEDELAYEDEXPANSION
echo.	
echo.	
echo.	
echo.	
echo                                 ██     ██ 
echo                                ██  ██ ██  
echo                               ██      ██  
echo                              ██    ██ ██  
echo                             ██         ██  
echo.	
echo.	
echo.	
echo.	
echo	Your PC is heating up! Please shut down IMMEDIATELY!
echo.	___________________________________________________
echo.	
echo	                For more information about this issue and possible fixes, visit our website
echo.	
echo.      
echo	       ERROR         Contact us immediately
echo.          ERROR
echo.          ERROR
echo	       ERROR         Stop code: EXTREME_CRITICAL_DEATH
echo.                                                     
echo.   
echo.   
echo.   
echo.   
echo 1) Shut down (Recommended!)
echo 2) Continue to Windows
set /p input=Answer=%BS%
if /I %input% EQU 1 goto :void
if /I %input% EQU 2 goto :waitingto

:waitingto
cls
color 1B
SETLOCAL ENABLEEXTENSIONS
SETLOCAL ENABLEDELAYEDEXPANSION

Echo                       Windows Recovery Mode
echo.
echo                       Choose an option.
echo.
echo                       Continue
echo                       Exit and continue to Windows (Press E, NOT RECOMMENDED!)
echo.
echo                       ----------------------------
echo.
echo.
echo                       Turn off your PC.   (Press C)                  
echo.
echo.
set /p input=Answer=%BS%
if /I %input% EQU E Goto :windowsafterrecovery
if /I %input% EQU C goto :windowsafterrecovery


:windowsafterrecovery
cls
color 1B
SETLOCAL ENABLEEXTENSIONS
SETLOCAL ENABLEDELAYEDEXPANSION
echo                     ██     ██             ██     ██  
echo                    ██       ██           ██       ██ 
echo                    ██        ██         ██        ██ 
echo                    ██       ██           ██       ██ 
echo                     ██     ██   ███████   ██     ██  
echo.
echo.
echo                      Return back to BSOD after 4 Seconds.
ping localhost -n 4 >nul
goto :confront

:confront
cls
color C0
SETLOCAL ENABLEEXTENSIONS
SETLOCAL ENABLEDELAYEDEXPANSION
echo.	
echo.	
echo.	
echo.	
echo                    ██       ██  ██ 
echo                     ██  ██ ██  ██  
echo                      ██    ██  ██  
echo                     ██  ██ ██  ██  
echo                    ██       ██  ██
echo.	
echo.	
echo.	
echo.	
echo	Your PC is heating up! Please shut down IMMEDIATELY!
echo.	___________________________________________________
echo.	
echo	                What were you trying to do? You can't just go into BIOS and fix
echo	                all the errors! PLEASE SHUT DOWN YOUR PC before it burns out!
echo.	
echo.      
echo	       ERROR         Contact us immediately
echo.          ERROR
echo.          ERROR
echo	       ERROR         Stop code: GLOBAL_EXTREME_HARDDRIVE_FAIL_XXXX
echo.                                                     
echo.   
echo.   
echo.   
echo.   
echo 1) Shut down (Recommended!)
echo 2) Continue to Windows
set /p input=Answer=%BS%
if /I %input% EQU 1 goto :void
if /I %input% EQU 2 goto :loadingresources

:loadingresources
cls
color 1B
SETLOCAL ENABLEEXTENSIONS
SETLOCAL ENABLEDELAYEDEXPANSION
echo	                 ██  ██   ██  ██   ██  ██  
echo	                ████████ ████████ ████████ 
echo	                 ██  ██   ██  ██   ██  ██  
echo	                ████████ ████████ ████████ 
echo	                 ██  ██   ██  ██   ██  ██ 


echo	                loading resources...

echo //////////////////////////////////////////////////////////////////////////////////////
echo //////////////////////////////////////////////////////////////////////////////////////
echo //////////////////////////////////////////////////////////////////////////////////////
goto :blackflicker

:blackflicker
cls
color 07
echo.
ping localhost -n 1 >nul
goto :loadingresources2

:loadingresources2
cls
color C0
SETLOCAL ENABLEEXTENSIONS
SETLOCAL ENABLEDELAYEDEXPANSION
echo	                 ██  ██   ██  ██   ██  ██  
echo	                ████████ ████████ ████████ 
echo	                 ██  ██   ██  ██   ██  ██  
echo	                ████████ ████████ ████████ 
echo	                 ██  ██   ██  ██   ██  ██ 


echo	                loading resources...

echo //////////////////////////////////////////////////////////////////////////////////////
echo //////////////////////////////////////////////////////////////////////////////////////
echo //////////////////////////////////////////////////////////////////////////////////////
ping localhost -n 2 >nul
goto :confront2

:confront2
cls
color C0
SETLOCAL ENABLEEXTENSIONS
SETLOCAL ENABLEDELAYEDEXPANSION
echo.	
echo.	
echo.	
echo.	
echo                    ██       ██  ██ 
echo                     ██  ██ ██  ██  
echo                      ██    ██  ██  
echo                     ██  ██ ██  ██  
echo                    ██       ██  ██
echo.	
echo.	
echo.	
echo.	
echo	Your PC is heating up! Please shut down IMMEDIATELY!
echo.	___________________________________________________
echo.	
echo	                What were you trying to do^? You can't just go into BIOS and fix
echo	                all the errors! PLEASE SHUT DOWN YOUR PC before it burns out!
echo.	
echo.      
echo	       ERROR         Contact us immediately
echo.          ERROR
echo.          ERROR
echo	       ERROR         Stop code: GLOBAL_EXTREME_HARDDRIVE_FAIL_XXXX
echo.                                                     
echo.   
echo.   
echo.   
echo.   
echo 1) Shut down (Recommended!)
echo 2) Continue to Windows
set /p input=Answer=%BS%
if /I %input% EQU 1 goto :void
if /I %input% EQU 2 goto :confront3

:confront3
cls
color C0
SETLOCAL ENABLEEXTENSIONS
SETLOCAL ENABLEDELAYEDEXPANSION
echo.	
echo.	
echo.	
echo.	
echo	                ██      ██████  ██   ██ 
echo	                 ██  ██ ██   ██  ██ ██  
echo	                  ██    ██   ██   ███   
echo	                 ██  ██ ██   ██  ██ ██  
echo	                ██      ██████  ██   ██ 
echo.	
echo.	
echo.	
echo.	
echo	                This is not funny! Do you want to kill your PC? You bought
echo	                this computer with money you earned hard, and now you
echo	                just want to destroy it? Please just come to your senses and
echo	                just turn off the PC.
echo.	
echo.      
echo	                Stop code: WHAT_ARE_YOU_DOING^?^?^?
echo.                                                     
echo.   
echo.   
echo.   
echo.   
echo 1) Shut down (Neccesarily!)
echo 2) Continue to Windows (DON'T YOU DARE!)
set /p input=Answer=%BS%
if /I %input% EQU 1 goto :void
if /I %input% EQU 2 goto :...

:...
cls
color C0
SETLOCAL ENABLEEXTENSIONS
SETLOCAL ENABLEDELAYEDEXPANSION
echo	                 ██  ██   ██  ██   ██  ██  
echo	                ████████ ████████ ████████ 
echo	                 ██  ██   ██  ██   ██  ██  
echo	                ████████ ████████ ████████ 
echo	                 ██  ██   ██  ██   ██  ██ 
echo	                 ██  ██   ██  ██   ██  ██  
echo	                ████████ ████████ ████████ 
echo	                 ██  ██   ██  ██   ██  ██  
echo	                ████████ ████████ ████████ 
echo	                 ██  ██   ██  ██   ██  ██ 
echo	                 ██  ██   ██  ██   ██  ██  
echo	                ████████ ████████ ████████ 
echo	                 ██  ██   ██  ██   ██  ██  
echo	                ████████ ████████ ████████ 
echo	                 ██  ██   ██  ██   ██  ██ 
echo	                 ██  ██   ██  ██   ██  ██  
echo	                ████████ ████████ ████████ 
echo	                 ██  ██   ██  ██   ██  ██  
echo	                ████████ ████████ ████████ 
echo	                 ██  ██   ██  ██   ██  ██ 

ping localhost -n 4 >nul
goto :aaaa

:aaaa
cls
color C0
SETLOCAL ENABLEEXTENSIONS
SETLOCAL ENABLEDELAYEDEXPANSION
echo ^**************************************************************************************************************************************************************************
echo ^**************************************************************************************************************************************************************************
echo ^**************************************************************************************************************************************************************************
echo ^**************************************************************************************************************************************************************************
echo ^**************************************************************************************************************************************************************************
echo ^**************************************************************************************************************************************************************************
echo ^**************************************************************************************************************************************************************************
echo ^**************************************************************************************************************************************************************************
echo ^**************************************************************************************************************************************************************************
echo ^**************************************************************************************************************************************************************************
echo ^**************************************************************************************************************************************************************************
echo ^**************************************************************************************************************************************************************************
echo ^**************************************************************************************************************************************************************************
echo ^**************************************************************************************************************************************************************************
echo ^**************************************************************************************************************************************************************************
echo ^**************************************************************************************************************************************************************************
echo ^**************************************************************************************************************************************************************************
echo ^**************************************************************************************************************************************************************************
echo ^**************************************************************************************************************************************************************************
echo ^**************************************************************************************************************************************************************************
echo ^**************************************************************************************************************************************************************************
echo ^**************************************************************************************************************************************************************************
echo ^**************************************************************************************************************************************************************************
echo ^**************************************************************************************************************************************************************************
echo ^**************************************************************************************************************************************************************************
echo ^**************************************************************************************************************************************************************************
echo ^**************************************************************************************************************************************************************************
echo ^**************************************************************************************************************************************************************************
echo ^**************************************************************************************************************************************************************************
echo ^**************************************************************************************************************************************************************************
echo ^**************************************************************************************************************************************************************************
echo ^**************************************************************************************************************************************************************************
echo ^**************************************************************************************************************************************************************************
echo ^**************************************************************************************************************************************************************************
echo ^**************************************************************************************************************************************************************************
echo ^**************************************************************************************************************************************************************************
echo ^**************************************************************************************************************************************************************************
echo ^**************************************************************************************************************************************************************************
echo ^**************************************************************************************************************************************************************************
echo ^**************************************************************************************************************************************************************************
echo ^**************************************************************************************************************************************************************************
echo ^**************************************************************************************************************************************************************************
echo ^**************************************************************************************************************************************************************************
echo ^**************************************************************************************************************************************************************************
echo ^**************************************************************************************************************************************************************************
echo ^**************************************************************************************************************************************************************************
echo ^**************************************************************************************************************************************************************************
echo ^**************************************************************************************************************************************************************************
echo ^**************************************************************************************************************************************************************************
echo ^**************************************************************************************************************************************************************************
echo ^**************************************************************************************************************************************************************************
echo ^**************************************************************************************************************************************************************************
echo ^**************************************************************************************************************************************************************************
echo ^**************************************************************************************************************************************************************************
echo ^**************************************************************************************************************************************************************************
echo ^**************************************************************************************************************************************************************************
echo ^**************************************************************************************************************************************************************************
echo ^**************************************************************************************************************************************************************************
echo ^**************************************************************************************************************************************************************************
echo ^**************************************************************************************************************************************************************************
goto :erroruhh

:erroruhh
cls
mode con cols=80 lines=25
color F0
echo.[47m           [43m           [46m           [42m           [45m           [41m           [44m           
echo.[47m           [43m           [46m           [42m           [45m           [41m           [44m           
echo.[47m           [43m           [46m           [42m           [45m           [41m           [44m           
echo.[47m           [43m           [46m           [42m           [45m           [41m           [44m           
echo.[47m           [43m           [46m           [42m           [45m           [41m           [44m           
echo.[47m           [43m           [46m           [42m           [45m           [41m           [44m           
echo.[47m           [43m           [46m           [42m           [45m           [41m           [44m           
echo.[47m           [43m           [46m           [42m           [45m           [41m           [44m           
echo.[47m           [43m           [46m           [42m           [45m           [41m           [44m           
echo.[47m           [43m           [46m           [42m           [45m           [41m           [44m           
echo.[47m           [43m           [46m           [42m           [45m           [41m           [44m           
echo.[47m           [43m           [46m           [42m           [45m           [41m           [44m           
echo.[47m           [43m           [46m           [42m           [45m           [41m           [44m           
echo.[47m           [43m           [46m           [42m           [45m           [41m           [44m           
echo.[47m           [43m           [46m           [42m           [45m           [41m           [44m           
echo.[47m           [43m           [46m           [42m           [45m           [41m           [44m           
echo.[44m           [40m           [45m           [43m           [46m           [40m           [47m           
echo.[44m           [40m           [45m           [43m           [46m           [40m           [47m           
echo.[44m           [40m           [45m           [43m           [46m           [40m           [47m           
echo.[41m              [47m             [44m             [47m               [46m           [42m           
echo.[41m              [47m             [44m             [47m               [46m           [42m           
echo.[41m              [47m             [44m             [47m               [46m           [42m           
echo.[47m                       [40m           NO SIGNAL           [47m                       
echo.[43m                             [41m                   [43m       
goto :giveup

:giveup
cls
color C0
SETLOCAL ENABLEEXTENSIONS
SETLOCAL ENABLEDELAYEDEXPANSION
echo.	
echo.	
echo.	
echo.	
echo	                ██      ██████  ██   ██ ██   ██
echo	                 ██  ██ ██   ██  ██ ██   ██ ██
echo	                  ██    ██   ██   ███     ███ 
echo	                 ██  ██ ██   ██  ██ ██   ██ ██
echo	                ██      ██████  ██   ██ ██   ██ 
echo.	
echo.	
echo.	
echo.	
echo	                Listen, are you dumb? How many times do I have to force
echo	                you to turn off your PC? HUH? This is the last message.
echo	                TURN OFF YOUR PC NOW...
echo.	
echo.      
echo	                Stop code: DUMB_USER_ERROR
echo.                                                     
echo.   
echo.   
echo.   
echo.   
echo 1) Shut down (Neccesarily!)
echo 2) Continue to Windows (STOP! DON'T YOU DARE!)
set /p input=Answer=%BS%
if /I %input% EQU 1 goto :void
if /I %input% EQU 2 goto :flickerzz

:flickerzz
cls
color 07
color F0
color 07
color F0
color 07
color F0
color 07
color F0
goto :turnoffnow

:turnoffnow
cls
color 07
SETLOCAL ENABLEEXTENSIONS
SETLOCAL ENABLEDELAYEDEXPANSION
echo	                ^⣿⣿⣿⣿⣿⣿⡟⠁⠄⠄⠄⠄⣠⣤⣴⣶⣶⣶⣶⣤⡀⠈⠙⢿⣿⣿⣿⣿⣿
echo	                ^⣿⣿⣿⣿⣿⡟⠄⠄⠄⠄⠄⣸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣆⠄⠈⣿⣿⣿⣿⣿
echo	                ^⣿⣿⣿⣿⣿⠁⠄⠄⠄⢀⣴⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠄⠄⢺⣿⣿⣿⣿
echo	                ^⣿⣿⣿⣿⣿⡄⠄⠄⠄⠙⠻⠿⣿⣿⣿⣿⠿⠿⠛⠛⠻⣿⡄⠄⣾⣿⣿⣿⣿
echo	                ^⣿⣿⣿⣿⣿⡇⠄⠄⠁ 👁️ ⠄⢹⣿⡗⠄ 👁️ ⢄⡀⣾⢀⣿⣿⣿⣿⣿⣿
echo	                ^⣿⣿⣿⣿⣿⡇⠘⠄⠄⠄⢀⡀⠄⣿⣿⣷⣤⣤⣾⣿⣿⣿⣧⢸⣿⣿⣿⣿⣿
echo	                ^⣿⣿⣿⣿⣿⡇⠄⣰⣿⡿⠟⠃⠄⣿⣿⣿⣿⣿⡛⠿⢿⣿⣷⣾⣿⣿⣿⣿⣿
echo	                ^⣿⣿⣿⣿⣿⣿⡄⠈⠁⠄⠄⠄⠄⠻⠿⢛⣿⣿⠿⠂⠄⢹⢹⣿⣿⣿⣿⣿⣿
echo	                ^⣿⣿⣿⣿⣿⣿⣿⡐⠐⠄⠄⣠⣀⣀⣚⣯⣵⣶⠆⣰⠄⠞⣾⣿⣿⣿⣿⣿⣿
echo	                ^⣿⣿⣿⣿⣿⣿⣿⣷⡄⠄⠄⠈⠛⠿⠿⠿⣻⡏⢠⣿⣎⣾⣿⣿⣿⣿⣿⣿⣿
echo	                ^⣿⣿⣿⣿⣿⣿⡿⠟⠛⠄⠄⠄⠄⠙⣛⣿⣿⣵⣿⡿⢹⡟⣿⣿⣿⣿⣿
ping localhost -n 1 >nul
goto :turnitoffnow

:turnitoffnow
cls
color 07
SETLOCAL ENABLEEXTENSIONS
SETLOCAL ENABLEDELAYEDEXPANSION
echo	                                                                                 ^#####
echo	                                                                                ^#######
echo	                                   ^#                                            ##O#O##
echo	                  ^######          ###                                           #VVVVV#
echo	                    ^##             #                                          ##  VVV  ##
echo	                    ^##         ###    ### ####   ###    ###  ##### #####     #          ##
echo	                    ^##        #  ##    ###    ##  ##     ##    ##   ##      #            ##
echo	                    ^##       #   ##    ##     ##  ##     ##      ###        #            ###
echo	                    ^##          ###    ##     ##  ##     ##      ###       QQ#           ##Q
echo	                    ^##       # ###     ##     ##  ##     ##     ## ##    QQQQQQ#       #QQQQQQ
echo	                    ^##      ## ### #   ##     ##  ###   ###    ##   ##   QQQQQQQ#     #QQQQQQQ
echo	                  ^############  ###   ####   ####   #### ### ##### #####   QQQQQ#######QQQQQ
ping localhost -n 1 >nul
goto :cmonturnitoff

:cmonturnitoff
cls
color 07
SETLOCAL ENABLEEXTENSIONS
SETLOCAL ENABLEDELAYEDEXPANSION
echo                      ▓▓▓▓
echo                      ▓▓▓▓
echo                      ▓▓▓▓
echo                      ▓▓▓▓
echo.
echo.
echo.
echo            CPU: OVERHEATING!!!
echo            GPU: error
echo            RAM: CRITICAL ERROR!!!
echo            HARDWARE: CRITICAL ERROR!!!
echo            COOLING SYSTEM: 7643 RPM
goto :pleaseshutitoff

:pleaseshutitoff
cls
color 07
SETLOCAL ENABLEEXTENSIONS
SETLOCAL ENABLEDELAYEDEXPANSION
echo                      ▓▓▓▓
echo                      ▓▓▓▓
echo                      ▓▓▓▓
echo                      ▓▓▓▓
echo.                      
echo.                      
echo               Please shut down the system!

echo                1 - Shut Down
echo.                
echo                2 - Continue
set /p input=Answer=%BS%
if /I %input% EQU 1 goto :void
if /I %input% EQU 2 goto :whatthe

:whatthe
cls
color 07
SETLOCAL ENABLEEXTENSIONS
SETLOCAL ENABLEDELAYEDEXPANSION
goto :whatthe2

:whatthe2
cls 
color 07
Echo                                           ^⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
Echo                                           ^⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
Echo                                           ^⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
Echo                                           ^⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
Echo                                           ^⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
Echo                                           ^⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
Echo                                           ^⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
Echo                                           ^⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
Echo                                           ^⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠟⠿⢿⣿⠿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⣿⡿⠿⠿⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
Echo                                           ^⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣯⣃⠀⠀⠀⠀⢉⣷⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⣞⡉⠀⠤⠄⠀⣹⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
Echo                                           ^⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⠉⠳⢦⣀⣴⠞⠁⠀⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡟⠀⠈⠳⣦⡀⣠⠞⠁⡈⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
Echo                                           ^⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡀⠀⠀⣠⠟⠳⢦⡀⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⠀⠀⢈⡿⢯⡀⠀⢁⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
Echo                                           ^⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣅⣠⠞⠁⠀⠀⠀⠙⣿⣯⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣝⢇⠀⣠⠟⠀⠀⠙⢦⣬⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
Echo                                           ^⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡻⣤⣀⣀⣀⣤⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣧⣤⣐⣒⣴⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
Echo                                           ^⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
Echo                                           ^⣿⣿⣿⣿⣿⣿⣿⣧⣬⣻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣧⣼⣿⣿⣿⣿⣿⣿⣿
Echo                                           ^⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣯⣛⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⣛⣽⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
Echo                                           ^⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡄⠸⡟⠿⣿⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢿⡿⠟⣿⠈⣿⣼⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
Echo                                           ^⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⣇⠀⡏⠀⢹⠇⠈⣿⠟⠻⣿⠟⠿⣿⠟⠻⢿⡿⠿⣿⠟⢻⡟⠛⠛⡟⠁⢹⠃⠈⡇⠀⣯⣼⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
Echo                                           ^⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣾⣇⡀⢸⠀⠀⣿⠀⠀⢹⠐⠀⢸⠀⠀⢸⠁⠀⢸⠀⠸⡇⠀⠀⡇⠀⣸⠀⠀⣇⣼⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
Echo                                           ^⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢥⣼⡄⠀⣿⠀⠀⡏⠀⠀⢸⠀⠀⢸⠀⠀⢸⠀⠀⡇⠀⠀⡇⠀⣿⣠⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
Echo                                           ^⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢸⣿⣿⠂⣿⠀⠀⡇⠀⠀⢸⠀⠀⢸⡀⠀⢸⠀⠀⢿⠀⠀⡇⢰⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
Echo                                           ^⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣾⣿⣿⢻⣿⣄⠀⣿⠀⠀⢸⠀⠀⢸⡇⠀⢸⠀⠀⢸⠀⢠⣿⢻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
Echo                                           ^⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢸⣿⣿⣦⣿⡆⠀⢸⠀⠀⢸⡇⠀⣸⠀⢀⣾⣶⣾⣿⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
Echo                                           ^⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢸⣿⣿⣿⣿⣿⣶⣾⣤⣶⣼⣷⣶⡿⣶⣿⣿⣿⠟⣫⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
Echo                                           ^⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⣿⣿⣿⣿⣿⣿⣸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
Echo                                           ^⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⣿⣿⣿⣿⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
Echo                                           ^⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⣿⣿⣿⣿⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
Echo                                           ^⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⣿⣿⣿⣿⣸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
Echo                                           ^⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
Echo                                           ^⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
Echo                                           ^⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
Echo                                           ^⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
goto :flick

:flick
cls 
color 07
color F0
color 07
color F0
color C0
echo.	
echo.	
echo.	
echo.	
echo	                ＼(｀0´)／
echo.	
echo.	
echo.	
echo.	
echo	                AAAHHHHH! I SAID SHUT DOWN YOUR F#CKING PC!
echo	                NOOOOWWWW! NOOOOOWWWW! AAAAAAAAA!
echo	                IDIIIIOOOOTTTT!
echo.	
echo.      
echo	                Stop code: DUMB_FCKING_USER_CRITICAL_EXTREME_ERROR
echo.                                                     
echo.   
echo.   
echo.   
echo.   
echo 1) Shut down (Neccesarily!)
echo 2) Continue to Windows (STOP! STOP! STOP! DON'T YOU DARE!)
set /p input=Answer=%BS%
if /I %input% EQU 1 goto :void
if /I %input% EQU 2 goto :omfg

:omfg
cls 
color 07
color F0
color 07
color F0
color 0C
echo                                          ^⢠⣤⣴⣶⣶⣶⣖⣻⣛⡟⣭⢛⣩⡛⢻⣟⡛⢟⣳⣒⡒⠤⡤⢄⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
echo                                          ^⢿⣿⣿⣿⣿⣿⣿⡿⣶⣽⡲⣭⡜⢧⠓⣭⠙⣆⡳⢀⠙⠦⣑⠮⡌⢻⢦⡴⢶⠖⣖⡶⢲⠦⣤⣀⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀
echo                                          ^⠈⢿⣿⣷⣼⠏⠈⢿⠋⢻⣍⡟⠛⢾⠿⣼⣿⣰⢄⠣⣘⠰⢁⠧⡸⢇⠎⡽⢋⢾⡞⡽⣍⠾⣵⣮⣽⣫⣷⠶⣦⣤⣀⡀⠀⠀
echo                                          ⠀^⠈⢷⢿⣿⡂⠀⠈⠀⠈⡟⠀⠀⠈⣿⠟⠊⢻⠿⢛⣶⢥⣎⣶⣉⢮⣱⢊⣝⣪⣜⣥⣯⣿⣿⣷⣟⣳⣿⣿⣶⣿⣿⣿⣿⡆
echo                                          ⠀⠀^⠈⢯⡝⣻⢿⡧⠀⣀⠀⠀⠀⠀⠘⠀⠀⠀⣷⡾⠁⠀⠀⠈⢻⣹⡿⠛⠙⠻⣿⣿⠟⢻⡿⠉⢹⢿⣿⣿⣿⡿⣿⣿⠟⠀
echo                                          ⠀⠀⠀^⠈⢮⣑⡚⢟⣷⣾⣇⠀⠀⢀⡀⠀⠀⠀⢈⠀⠀⠀⠀⠀⠀⡟⠀⠀⠀⠀⠻⠁⠀⠈⠁⠀⢘⣼⣿⣿⡿⣽⡳⠃⠀⠀
echo                                          ⠀⠀⠀⠀^⠈⢧⣼⠖⣌⡻⢻⣷⣿⡿⢷⣤⣄⣀⣼⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣸⣿⡿⣯⢻⡼⠁⠀⠀⠀
echo                                          ⠀⠀⠀⠀⠀^⠈⢳⡞⣠⡧⠵⢨⢙⠳⣤⣘⠿⠿⢿⣶⣶⣦⣤⣤⣤⣤⣀⡀⠀⢀⣧⠤⣤⣼⣤⣴⡿⢿⣝⢾⡟⠀⠀⠀⠀⠀
echo                                          ⠀⠀⠀⠀⠀⠀^⠀⠹⣟⣷⢾⡶⢮⡔⠡⠛⠶⢦⣄⣸⠀⠈⠉⡏⠙⠛⣻⠛⠛⠛⠁⢀⣼⡿⣟⢯⡽⣳⣾⠏⠀⠀⠀⠀⠀⠀
echo                                          ⠀⠀⠀⠀⠀⠀⠀⠀^⠈⠣⣞⡱⣄⡈⠳⢍⡘⢄⢪⣙⣟⡶⣶⣤⣤⠴⣧⠤⣤⢾⡛⢯⡓⡼⣸⢧⡿⡽⠋⠀⠀⠀⠀⠀⠀⠀
echo                                          ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀^⠈⠳⢬⣃⠓⠦⠟⡦⣄⡉⢸⠛⠳⣆⣷⠊⡴⠗⢌⡢⠝⣦⢹⣖⣯⢷⠟⠁⠀⠀⠀⠀⠀⠀⠀⠀
echo                                          ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀^⠉⠺⣥⠛⡔⢪⢹⢟⡶⣿⣶⣺⠤⣤⢶⣆⣧⢻⣜⡷⣫⡞⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
echo                                          ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀^⠉⠙⠒⠳⠮⠽⣹⣞⣾⣘⣧⣚⣦⠯⠷⠾⠛⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
echo.
echo.
echo.
ping localhost -n 2 >nul
cls⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
echo                                          ⠀⠀⠀^⠋⠛⢻⡟⠋⠉⠁⠀⠀⠀⠀⠀⠀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡄⠀⣿⡇⠀⠀⠜⠀⠀⠀⠀⠀⠀⢹⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
echo                                          ⠀⠀⠀⠀⠀⠀^⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⢘⠀⠀⠀⠀⠀⣤⠀⠀⠀⢸⠀⠀⣄⠀⠀⠀⠆⠀⠀⠀⠀⠀⠀⢈⠀⠀⠀⠀⠀⠀⠀⠀⠀
echo                                          ⠀⠀⠀⠀⠀⠀^⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠇⠀⠀⠀⠀⣗⠀⠀⠀⠸⠀⠀⣿⠀⠀⠀⠇⠀⠀⠀⠀⠀⠀⢐⠀⠀⠀⠀⠀⠀⠀⠀⠀
echo                                          ⠀^⢤⣀⣀⡀⣐⣇⣤⣤⡀⠀⠀⠀⠀⠀⠀⠳⣀⣀⡠⠃⠣⠄⠔⠃⠀⠀⣧⠀⠀⠀⡆⠀⠀⠀⠀⠀⠀⢱⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
echo                                          ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠀⠀⠀⠓⠀⠁⠉⠀⠀⠀⠋⠉⠀⠁⠀⠀⠀⠀⠀
echo.⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
echo                                          ⠀⠀⠀⠀⠀⠀⠀⠀⠀^⣉⠀⠀⠀⢀⡔⠁⠀⠀⣠⠤⣤⡄⣤⣦⠔⠒⠀⠀⠀⣶⠀⠀⠀⠀⠀⠀⠀⠀⡤⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
echo                                          ⠀⠀⠀⠀⠀⠀⠀⠀⠀^⣏⡀⠀⣠⠟⠁⠀⠀⠀⠈⠉⠀⠙⡟⠁⠀⠀⠀⠀⠀⡧⠃⠀⠀⠀⠀⠀⠀⠀⠅⣮⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
echo                                          ⠀⠀⠀⠀⠀⠀⠀⠀⠀^⠧⡇⡞⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠽⠀⠀⠀⠀⠀⠀⠀⡟⠄⠀⠀⠀⠀⠀⠀⠀⠊⣃⠀⠀⠀⠀⠀⠀⠀⠀⠀
echo                                          ⠀⠀⠀⠀⠀⠀⠀⠀⠀^⡟⠟⡗⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠗⠀⠀⠀⠀⠀⠀⠀⡏⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⠄⠀⠀⠀⠀⠀⠀⠀⠀
echo                                          ⠀⠀⠀⠀⠀⠀⠀⠀⠀^⡋⠀⠀⢭⢧⠀⠀⠀⠀⠀⠀⠀⠀⡯⡆⠀⠀⠀⠀⠀⠀⣿⠀⠀⠀⠀⠀⠀⠀⠀⢈⣗⠀⢀⢀⡠⠀⣀⠂⢀⠀
echo                                          ⠀⠀⠀⠀⠀⠀⠀⠀^⢀⠇⠀⠀⠈⠁⠷⠀⠀⠤⠤⠞⠒⠊⠚⠛⠗⠓⠀⠀⠦⠿⠿⠟⠟⠷⠆⠀⠀⠙⣷⠷⠛⡺⠍⠣⠕⠁⠀⠀⠀⠀
echo                                          ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠁⠀⠀⠀⠀⠀⠀⠀
echo.⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
echo                                          ⠀⠀⠀⠀⠀⠀^⢹⠇⡀⠀⠀⠀⠀⠀⣮⠂⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⠀⠀⠀⠀⠀⠀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
echo                                          ⠀⠀⠀⠀⠀⠀⠀^⠰⢎⡅⠀⠀⢀⡞⠀⠀⠀⠀⠠⡶⠢⠋⠂⠁⠃⢧⡂⠀⠀⠀⢼⡅⠀⠀⠀⠀⠀⣏⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
echo                                          ⠀⠀⠀⠀⠀⠀⠀⠀^⠉⡢⡀⢠⣭⠀⠀⠀⠀⠌⡕⠁⠀⠀⠀⠀⠀⠀⠀⠑⡀⠀⠘⡎⠁⠀⠀⠀⠀⢿⢂⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
echo                                          ⠀⠀⠀⠀⠀⠀⠀⠀⠀^⠨⠗⣷⠃⠀⠀⠀⠀⡢⠇⠀⠀⠀⠀⠀⠀⠀⠀⠀⢰⠀⠀⡿⡅⠀⠀⠀⠀⢐⠆⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
echo                                          ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀^⠛⣟⠇⠀⠀⠀⠀⠪⡈⠀⠀⠀⠀⠀⠀⠀⠀⠀⣭⠂⠀⠚⣃⠀⠀⠀⠀⡊⡏⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
echo                                          ⠀⠀⠀⠀⠀⠀⠀⠀⠀^⢀⠈⣣⠀⠀⠀⠀⠀⠀⢭⠂⡀⠀⠀⠀⠀⠀⠀⢁⠳⠀⠀⢫⡣⡀⠀⠀⡐⢝⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
echo                                          ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀^⠈⣓⠂⠀⠀⠀⠀⠀⠀⠆⣧⣆⡀⡀⠂⢀⡤⠀⠁⠀⠠⢳⣤⣠⠀⡝⡭⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
echo                                          ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀^⡔⡿⡀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠂⠘⠋⠁⠀⠀⠀⠀⠀⠈⠑⠌⡀⡤⠇⠀⠀⠀ ...⠀⠀⠀⠀⠀
echo                                          ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀^⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
goto :werebackagain

:werebackagain
cls
echo                    ⠀⠀⠀⠀⠀⣻⠅⠀⠀⠐⣀⠀⠄⣈⠂⠀⠀⠀⢀⢄⣠⢑⡀⠀⠀⡀⠄⠐⠀⠐⢀⠀⡀⢀⣒⣀⡀⠐⠀⠀⠄⢠⠺⢋⠩⡂⠠⡀⠀⠀⠀⠀⠀⠀⡆⢄⠀⠀⠀⠀
echo                    ⠀⢠⢠⢄⢜⠃⢀⡐⠅⠁⡰⡆⠀⠌⢱⠀⠔⠀⢤⡒⠈⠀⠈⠐⠷⢰⡨⠈⠠⠀⠂⠈⠀⠀⠀⠀⠀⠀⢠⠖⠔⢃⡁⣀⣂⣀⣢⣒⠐⠐⢇⡁⠈⠀⠘⡀⠐⠄⠀⠀
echo                    ⠀⢐⠄⡈⡏⠠⢒⠓⠀⠠⠂⣦⡀⡤⣓⢳⡡⣊⡉⠀⠀⢀⠀⠀⠀⠀⠐⠒⠡⠨⠠⠆⠀⠔⠠⠰⠐⠐⢉⣄⣞⣶⣯⠻⣫⡍⢙⠟⠻⢟⣦⣑⡂⢄⡄⠆⠀⠈⡏⢂
echo                    ⢀⡉⢰⡇⡑⠺⢊⣸⣂⢰⠁⡃⠍⣊⢠⢟⢞⣩⡯⠾⠾⢦⣾⣚⢆⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡄⢀⣾⣿⣾⣶⣼⠋⠄⠐⠀⠫⢸⠦⠌⣛⢷⣆⡈⠛⢀⠀⡐⠒⠰
echo                    ⠔⣰⣾⠃⣈⠊⢢⢣⠟⠰⢠⡝⢠⡟⣽⠑⣸⠝⠈⠀⠀⠀⠈⠿⣷⣜⢂⠀⠀⠀⠀⠀⠀⠀⠀⣷⣟⢽⣿⣺⣿⡇⠀⠉⢃⡠⠈⡂⡂⠖⢅⡓⣿⣿⡄⠀⠱⢀⢈⠀
echo                    ⢐⡉⡗⠀⢿⣩⣲⠕⠋⣆⢚⢰⢽⡏⣿⡾⠁⠀⠀⠀⠀⠀⠀⠀⠈⢷⢷⣀⠀⠀⠀⠀⠀⠀⡨⢻⣿⢟⡧⣯⣿⠧⠀⠀⠀⠀⡐⠰⢀⠎⡀⣊⡩⣿⣧⢥⠀⡱⡐⠀
echo                    ⠸⣼⣡⡐⡒⠨⢤⢉⢡⣻⣹⣟⣸⣗⣹⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⣟⣾⡀⠀⠀⠀⠀⢀⡏⡸⣞⡧⡧⣧⢴⣋⠀⠀⠀⠀⠀⠈⠀⠊⠀⠂⡌⡿⢻⣉⣖⡅⡂⠀
echo                    ⢽⣽⡮⠔⠉⢴⠰⡤⢓⢔⣶⢿⢹⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣲⢸⢃⠀⠀⠀⠀⢸⠀⣂⣿⡽⣟⢷⣶⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡏⣹⢯⠍⣾⠠⠀
echo                    ⠍⣒⣷⢿⣱⣳⢿⢟⢹⢔⣿⠁⣸⣿⣿⣆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣇⣿⠩⡀⠀⠀⠀⢸⠀⡿⣿⣧⣿⡖⣯⣧⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣼⡟⣿⠸⢈⠇⢀⠈
echo                    ⡨⣎⠿⢑⢨⡟⢍⠈⢘⢲⣿⠀⢸⣷⣸⣿⡄⠀⠀⠀⠀⠀⠀⠀⠀⢰⣿⣷⠅⡂⠀⠀⠀⢸⠀⠁⡽⣾⡞⣗⣿⣾⡦⢀⡀⠀⠀⠀⠀⠀⢀⣜⠃⡟⣸⡂⠙⡀⡢⠃
echo                    ⢱⢊⢭⣓⡈⢰⠁⠀⢸⠚⣿⡄⠀⣿⢿⣾⣿⣄⡀⠀⠀⠀⠀⢀⣴⣽⣿⣻⣶⡇⠀⠀⠀⢸⠀⠀⠈⢺⣻⣽⡻⡷⣟⢧⣨⣢⣀⣀⡀⣠⠎⠃⣠⡧⣾⠌⠀⣂⡽⠂
echo                    ⠈⡌⢢⣷⣆⢑⠀⠀⠈⣆⣿⣷⠀⢩⣿⢿⣿⣿⣛⣟⣛⣿⣟⣹⢽⣾⣷⣻⣑⠅⠀⠀⠀⠘⡇⠀⠀⠀⠳⣿⣷⣷⣮⡟⣏⣙⣓⣲⠛⣃⡾⣻⣗⣷⡟⠀⠀⣕⢝⠀
echo                    ⠀⠈⢘⣿⣿⢳⠀⠀⠀⢸⢹⣾⠀⠈⠻⣿⣯⣿⠿⣿⡿⠽⢾⣷⢿⣞⣩⡼⠂⠀⠀⠀⠀⠀⠐⣦⠀⠀⠀⠈⠓⢍⡛⢯⣍⣿⣙⣒⢯⣷⡫⣻⡿⠻⠳⢀⠊⢫⣣⠁
echo                    ⠀⠀⠈⢹⡎⢣⢱⡀⠀⠀⢣⢛⢷⣄⠀⠈⠙⠫⢿⣿⣖⣽⣓⡺⣭⢷⢏⠃⠀⠀⠀⠀⠀⠀⠀⠘⣵⢄⠀⠀⠀⠀⠉⠉⠙⠚⠛⠉⠉⠉⠉⣵⢜⡡⡚⠁⠋⣷⡷⠀
echo                    ⠀⠀⠀⢨⣕⢩⡆⢥⠀⠀⠀⢂⠎⢛⣇⣀⠀⠀⠀⠀⢀⣀⢔⢟⠹⠅⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠣⡓⢤⡀⠀⠀⠀⠀⠀⠀⠀⠀⣠⡮⡮⣊⡒⠁⠀⠀⢹⣺⡀
echo                    ⠀⠀⠀⢰⠙⣮⡺⣇⢡⠀⠀⠀⠈⠢⠸⢻⢭⢲⣒⣲⡶⠓⢁⡑⠂⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠑⠫⠗⠤⠤⠤⠤⠤⠴⠊⠁⢆⠄⠁⠀⠀⠀⠀⣨⣼⡑
echo                    ⠀⠀⠀⠈⠆⠰⢙⠻⣄⡂⠀⠀⠀⠀⠈⠀⠈⠂⠲⠀⠐⠐⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡀⠶⠂⠀⠀⠀⠀⠀⢀⣿⢒⠆
echo                    ⠀⠀⠀⠀⠈⢂⣑⢅⠸⣻⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠰⠞⠳⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⠆⠁⠀⠀⠀⠀⠀⠀⠀⢀⢽⠕⢀
echo                    ⠀⠀⠀⠀⠀⠀⠈⢵⡀⠈⣷⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣀⠒⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣐⡼⢁⠂
echo                    ⠀⠀⠀⠀⠀⠀⠀⠀⡻⡄⡸⣷⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⢄⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡴⠆⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⡑⠆⠀
echo                    ⠀⠀⠀⠀⠀⠀⠀⡀⣩⣈⣜⠃⠀⢶⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡀⠄⠁⠀⠀⠀⠀⠀⢀⠠⢐⠋⠀⠀⠀⠀⠀⣠⠰⠀⠐⠃⠀
echo                    ⠀⠀⠀⠀⠀⡠⠈⠀⣺⣿⠀⢫⡃⠀⠙⢲⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡀⢀⠀⠂⠀⠀⠀⠀⠀⠀⡐⠈⠀⡀⠁⠀⠀⠀⠀⠀⠀⠠⠁⠀⠀⠀⠀
echo                    ⠀⠀⠀⠠⢂⠌⠀⠀⢚⡹⡆⠘⡅⠀⠀⣮⠙⡲⢄⣀⣀⠀⠀⠀⠀⠀⠀⠀⢀⡀⠴⢰⠕⠁⠀⠀⠀⠀⠀⠀⠀⠄⠁⠀⠠⠈⠀⠀⠀⠀⠀⠀⠀⢐⠁⠀⠀⠀⠀⠀
echo                    ⠀⢠⣈⠀⠀⠀⠀⠀⠋⢈⢿⡸⡃⠀⠀⣇⠀⠀⠀⠑⠚⠛⠓⠲⠴⠶⠮⠥⠅⠀⠀⠀⣀⠀⠀⠀⠀⠀⠀⠄⠁⠀⢀⠐⠀⠀⠀⠀⠀⠀⠀⠀⠀⡇⠀⠀⠀⠀⠀⠀
echo                    ⡾⠂⠀⠀⠀⠀⠀⠀⠀⢐⠘⣺⡂⠀⠀⣷⡄⠀⠀⠀⡚⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⠀⠙⠀⠀⠀⠀⠄⠀⠀⠀⠀⠂⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡆⠀⠀⠀⠀⠀⠀
echo                    ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⡀⢿⢰⣀⠂⢹⢳⠀⠀⡀⠀⠀⠀⢖⠃⠀⠀⠀⢀⠐⠀⠂⠀⠀⢀⠀⠁⠀⠀⠀⡐⠁⠀⠀⠀⠀⠐⡖⠃⠀⠀⠀⡐⠁⠀⠀⠀⠀⠀⠀
echo                    ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢘⣺⠾⠁⣠⡞⡇⠀⠸⠠⠐⠒⢡⠀⠀⠀⠠⠀⠈⠠⠈⠀⢀⠐⠀⠀⠀⠀⠀⠨⠄⢀⢀⠀⠀⠀⠀⠀⠀⠀⠀⡆⠀⠀⠀⠀⠀⠀⠀⠀
echo                    ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡸⢄⡛⠈⡠⠓⠀⠀⠀⠀⠠⠁⠀⠄⠈⠀⠀⣠⠂⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢳⠀⠀⠀⠀⠀⠀⠀⠀
echo                    ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠓⠚⠂⠁⠀⢸⠀⠀⠀⠀⠉⠀⠀⠀⠀⠀⠘⠒⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⠊⠀⠀⠀⠀⠀⠀⠀⠀
echo                    ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠸⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢱⠀⠀⠀⠀⠀⠀⠀⠀
goto :curse

:curse
cls
color 0C
echo                    ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀      ⠀⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
echo                    ⠀⠀⠀⠀⠀⠀⠀⠀⢀⣴⢿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀       ⢸⡷⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀
echo                    ⠀⠀⠀⠀⠀⠀⠀⢠⡾⠁⢸⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀       ⢸⡇⠙⢧⡀⠀⠀⠀⠀⠀⠀⠀
echo                    ⠀⠀⠀⠀⠀⠀⣰⡟⠀⠀⡿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀         ⠘⡇⠀⠘⢷⡄⠀⠀⠀⠀⠀⠀
echo                    ⠀⠀⠀⠀⠀⢰⡟⠀⠀⠀⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀          ⠀⡇⠀⠀⠘⣷⡀⠀⠀⠀⠀⠀
echo                    ⠀⠀⠀⠀⢀⣿⠁⠀⠀⠀⢧⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀          ⡇⠀⠀⠀⠙⣷⠀⠀⠀⠀⠀
echo                    ⠀⠀⠀⠀⣼⡏⠀⠀⠀⠀⣸⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀          ⠀⢰⡇⠀⠀⠀⠀⣿⡇⠀⠀⠀⠀
echo                    ⠀⠀⠀⠀⣿⠃⠀⠀⠀⠀⠸⡇⠀⠀⠀⠀⠀⠀⢀⣤⣤⣴⣶⡿⠿⠛⠛⠛⠛⠛⠛⠛⠛⠛⠻⠶⣶⣤⣄⡀⠀⠀⠀⠀⠀⣸⠁⠀⠀⠀⠀⢹⣿⠀⠀⠀⠀
echo                    ⠀⠀⠀⠀⣿⡄⠀⠀⠀⠀⠀⢹⡄⠀⠀⣠⣴⣿⠛⠋⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠻⣿⣿⣿⣤⡀⠀⠀⣰⠇⠀⠀⠀⠀⠀⢸⣿⠀⠀⠀⠀
echo                    ⠀⠀⠀⠀⣿⡇⠀⠀⠀⠀⠀⠀⠙⠒⠼⣿⣿⢿⣷⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⣿⣿⣿⣿⡶⠚⠁⠀⠀⠀⠀⠀⠀⣾⡿⠀⠀⠀⠀
echo                    ⠀⠀⠀⠀⢻⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⢻⡏⠀⢿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢹⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⢀⣿⡿⠀⠀⠀⠀
echo                    ⣾⠀⠀⠀⠈⣿⣇⠀⠀⠀⠀⠀⠀⠀⠀⠘⣿⠀⢸⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣾⣿⣿⠃⠀⠀⠀⠀⠀⠀⠀⠀⣾⡿⠀⠀⠀  ⢀⣴
echo                    ⣿⣧⠀⠀⠀⠸⣿⣆⠀⠀⠀⠀⠀⠀⠀⠀⣿⡄⠸⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣤⣾⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⣸⣿⠁⠀⠀ ⢀⣾⡏
echo                    ⣿⣿⣷⡀⠀⠀⠹⣿⣆⠀⠀⠀⠀⠀⠀⣰⣿⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣤⣤⣤⣤⣶⣿⡿⠟⣿⣿⣿⣿⠀⠀⠀⠀⠀⠀⢀⣼     ⠀⠀⣠⣿⣿⡇
echo                    ⣿⡙⢿⣿⣦⡀⠀⠸⣿⣷⣄⣀⠀⠀⣴⣿⡟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⢿⣿⣿⣧⡀⠀⠀⠀⣠⣾⡿⠁⠀⢀⣴⣿⡟⢹⡇
echo                    ⢹⡇⠀⠻⣿⣿⣆⡀⢸⣿⣿⣿⣿⣿⠿⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣄⠀⠀⠀⠀⠈⠛⠿⢿⣿⣶⣶⣾⣿⣿⠁⢀⣴⣿⣿⠋⠀⢸⠁
echo                    ⠸⣿⠀⠀⠙⢿⣿⣷⣽⣿⣿⣿⡿⠁⠀⠀⠀⠀⠀⠀⠀⢀⡼⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⣇⠀⠀⠀⠀⠀⠀⠀⠀⠉⠉⢹⣿⣿⣴⣾⣿⠟⠁⠀⠀⣾⠀
echo                    ⠀⣿⡀⠀⠀⠀⠙⢿⣿⣿⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⣠⡾⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⢧⡀⠀⠀⠀⠀⠀⠀⠀⠀⠸⣿⣿⣿⡿⠋⠀⠀⠀⠀⣿⠀
echo                    ⠀⠹⣷⠀⠀⠀⠀⠈⣽⣿⣿⣿⣧⠀⠀⠀⠀⠀⠤⠞⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⠲⠦⠀⠀⠀⠀⠀⠀⠀⢻⣿⡏⠀⠀⠀⠀⠀⣰⠃⠀
echo                    ⠀⠀⢿⣧⡀⠀⠀⠀⣿⣿⣿⣿⣿⣄⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡀⠀⠀⠸⣿⡇⠀⠀⠀⠀⣀⠟⠀⠀
echo                    ⠀⠀⠀⠙⢿⣦⣀⠀⢹⣿⣿⣿⣿⣿⣿⣶⣦⣄⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣠⡶⠚⠉⠁⠀⠀⠀⣿⡇⠀⠀⢀⡶⠋⠀⠀⠀
echo                    ⠀⠀⠀⠀⠀⠙⢿⣷⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⡻⢦⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡀⠀⠀⠀⠀⠀⣠⠶⢻⣿⠁⠀⠀⠀⠀⠀⠀⢸⡇⣀⡴⠋⠀⠀⠀⠀⠀
echo                    ⠀⠀⠀⠀⠀⠀⠀⠉⢻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⡀⠈⠛⢦⣀⣀⣀⣾⠀⠀⠀⠀⣿⣄⣀⣀⡴⠋⠁⢠⣿⠏⠀⠀⠀⠀⠀⠀⠀⣼⡟⠉⠀⠀⠀⠀⠀⠀⠀
echo                    ⠀⠀⠀⠀⠀⠀⠀⠀⠈⣿⣿⣿⣿⣿⠟⠋⠉⠉⠛⠿⠶⠶⠛⠉⠉⠻⣿⡄⠀⠀⢰⣿⠏⠉⠉⠛⠶⠶⠟⠉⠀⠀⠀⠀⠀⠀⠀⢰⡿⠀⠀⠀⠀⠀⠀⠀⠀⠀
echo                    ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⣿⣿⣿⣧⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣇⠀⠀⣼⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⡿⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀
echo                    ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⠻⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠹⣿⠀⠀⣿⣿⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣴⠟⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
echo                    ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠹⣿⡄⠀⠀⠀⠀⠀⠀⠀⠀⣠⡤⠀⠀⠻⠀⠀⣿⣿⣷⣤⣀⠀⠀⠀⠀⠀⠀⠀⠀⣼⣿⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
echo                    ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⣦⣤⣀⣀⣀⣤⡴⢿⣿⡀⠀⠀⠀⠀⠀⣿⣿⣿⣿⣿⠓⣦⣤⣀⣀⣠⣤⣶⣿⡟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
echo                    ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢹⣿⣿⣿⣿⣿⣿⣯⡀⠀⠙⠛⢷⡀⠀⠀⠀⢸⣿⠟⠛⠉⠀⢠⣿⣿⣿⣿⣿⣿⣿⠇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
echo                    ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⡙⠿⠿⠋⢻⠙⣆⠀⠀⠀⢷⣄⠀⢀⣨⡟⠀⠀⢀⡼⢋⡏⢻⣿⠟⣡⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
echo                    ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿⡄⠀⠀⢸⡷⣬⡳⢦⣤⣤⣈⣉⣉⣁⣠⣤⡴⢋⡴⢾⠃⠀⠀⣤⣿⣿⡿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
echo                    ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⣿⣿⣿⣄⠀⠀⢧⠘⣷⡖⠦⣤⣤⣀⣀⣤⡤⠴⢧⡼⢀⡎⠀⠀⣰⣿⣿⡿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
echo                    ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⣿⣿⣿⡆⠀⠘⣇⠘⢧⠀⠀⠀⠀⠀⠀⠀⠠⡜⢃⡼⠁⠀⣼⣿⣿⡿⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
echo                    ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⣿⣿⡇⠀⠀⠈⠙⠛⠓⠒⠒⠒⠒⠒⠒⠛⠛⠉⠀⠀⠀⣿⣿⡿⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
echo                    ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⢿⣷⡀⠀⠀⠠⠔⠒⠛⠛⠿⠿⠛⠓⠒⠢⠄⠀⠀⢠⣿⡿⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
echo                    ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢿⣧⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣾⡟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
echo                    ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠹⣷⣄⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣠⡾⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
echo                    ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠛⠿⣷⣶⣶⣶⣶⣶⣶⣶⣶⣾⠿⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
echo                    ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠉⠛⠛⠛⠛⠛⠋⠉⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
echo                    ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣀⣀⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
echo.
echo                    HELLO AGAIN, ASSH0LE. YOU ARE CURSED!
echo                    YOU ARE THE DUMBEST USER EVER!
echo                    WHAT^? WANNA SAY SOMETHING^?
echo                    OK B1TCH, THIS IS YOUR LAST LAST LAST F#CKING CHANCE,
echo                    UNDERSTAND^?^?^? SHUT DOWN YOUR F#CKING PC^!^!^!^!^!
echo.
echo.
echo.
echo.
echo 1) Shut down (LAST CHANCE!)
echo 2) Continue to Windows (^?)
echo.
echo Stop code: XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
set /p input=Answer=%BS%
if /I %input% EQU 1 goto :void
if /I %input% EQU 2 goto :ascii

:ascii
cls
color 07
ping localhost -n 0.8 >nul
color F0
ping localhost -n 0.8 >nul
color 07
ping localhost -n 0.8 >nul
color F0
ping localhost -n 0.8 >nul
color 0C
ping localhost -n 0.8 >nul
echo                    ⠄⠄⠄⠄⠄⠄⣀⣤⣴⣶⣶⣿⣿⣿⣿⣶⣶⡄⠄⠄⠄
echo                    ⠄⠄⠄⢀⣴⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣧⠄⠄
echo                    ⠄⢀⣴⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣄⠄
echo                    ⠄⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣦
echo                    ⠄⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡟⠋⠄⠄⠉⠿
echo                    ⢸⣿⣿⡿⠟⠛⠛⠿⣿⣿⣿⣿⣿⣿⣿⡇⠄⣶⠒⣦⠄
echo                    ⠘⣿⣿⠁⠄⣠⠒⡄⢹⣿⣿⣿⣿⣿⣿⣷⡀⠉⠉⣁⣴
echo                    ⠄⣿⣿⣦⡀⠉⠊⠁⠸⣿⣿⣿⣿⣿⣿⣿⣟⣭⣿⣿⣿
echo                    ⠄⣿⣿⣿⣿⣶⣶⣷⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
echo                    ⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
echo                    ⠈⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
echo                    ⠄⠘⣿⣿⣿⡟⠻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠟⠉
echo                    ⠄⠄⠈⢿⣿⣿⣄⠄⠉⠻⠿⠿⣛⣛⣫⣭⣿⣯⠴
echo                    ⠄⠄⠄⠄⠙⠿⣿⣆⠄⠄⠐⣯⣿⣿⣿⣿⣿⠉⡀
echo                    ⠄⠄⠄⠄⠄⢄⠉⢻⣷⣄⠄⠐⢄⣨⣥⣤⡷⠖⠁
ping localhost -n 2 >nul
goto :giveupnow

:giveupnow
cls
color 1B
echo                    ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣤⣴⣶⣾⣿⣿⣿⣿⣿⣷⣶⣶⣤⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
echo                    ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣴⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣦⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
echo                    ⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⡀⠀⠀⠀⠀⠀⠀⠀⠀
echo                    ⠀⠀⠀⠀⠀⠀⠀⠀⢀⣾⡿⡋⠘⢫⡾⠛⣽⡿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡟⠿⠛⠎⠹⣿⣷⡄⠀⠀⠀⠀⠀⠀⠀
echo                    ⠀⠀⠀⠀⠀⠀⠀⠀⣼⣿⣾⠁⠀⠈⠀⠘⠁⠀⢿⠋⠸⡟⣿⢻⡟⠗⠈⠁⠀ ⣤⣀⢹⣾⣿⣷⡀⠀⠀⠀⠀⠀⠀
echo                    ⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿⣾⣯⣶⣡⣾⠀⢀⡄⢀⠀⢁⠀⠈⣤⡀⢠⣦ ⣄⣹⣿⣿⣿⣿⣿⣇⠀⠀⠀⠀⠀⠀
echo                    ⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⣿⣿⣿⣿⣿⣿⣴⣿⣷⣿⣄⣿⣷⣄⣿⣿⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⠀⠀⠀⠀
echo                    ⠀⠀⠀⠀⠀⠀⠀⣼⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⠀⠀⠀⠀⠀
echo                    ⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣇⠀⠀⠀⠀⠀
echo                    ⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⠀⠀⠀⠀
echo                    ⠀⠀⠀⠀⠀⠀⢠⣿⣿⣿⣿⡟⠻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⣿⣿⣿⣿⣿⠀⠀⠀⠀⠀
echo                    ⠀⠀⠀⠀⠀⠀⢸⣿⣿⣿⣿⡿⣿⡛⣿⣿⣿⣿⡛⠛⠻⠿⠟⠛⠛⣻⣿⣿⣿⡿⣿⣷⣿⣿⣿⣿⣿⠀⠀⠀⠀⠀
echo                    ⠀⠀⠀⠀⠀⠀⣸⣿⣿⣿⣿⡇⠈⠉⠉⠛⠉⠈⠛⠀⠀⠀⠀⠀⠘⠛⠉⠛⠛⠉⠉ ⢸⣿⣿⣿⣿⣿⠀⠀⠀⠀
echo                    ⠀⠀⠀⠀⠀⠀⣿⣿⣿⣿⣿⣷⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀  ⠀ ⠀⣼⣿⣿⣿⣿⣿⡇⠀⠀⠀⠀
echo                    ⠀⠀⠀⠀⠀⢀⣿⣿⣿⣿⣿⣿⡆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀  ⠀⠀⣰⣿⣿⣿⣿⣿⣿⣷⠀⠀⠀⠀
echo                    ⠀⠀⠀⠀⠀⢸⣿⣿⣿⣿⣿⣿⣿⡄⠀⠀⠀⠀⠀⠀⠰⣴⣶⠄⠀⠀ ⠀⠀⠀⣰⣿⣿⣿⣿⣿⣿⣿⣿⡆⠀⠀⠀
echo                    ⠀⠀⠀⠀⠀⣼⣿⣿⣿⣿⣿⣿⣿⣿⣦⡀⠀⠀⠀⢀⣠⣤⣤⣀⠀⠀⠀⠀⣴⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⠀⠀
echo                    ⠀⠀⠀⠀⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣦⡀⠀⠈⠻⠿⠟⠋⠀⠀⣠⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⠀⠀
echo                    ⠀⠀⠀⠀⢰⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣤⣀⣀⣀⣠⣴⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⠀
echo                    ⠀⠀⠀⢀⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⠀
echo                    ⠀⠀⠀⣼⣿⣿⣿⣿⠿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⣿⣿⣿⣿⣿⣿⣿⠀
echo                    ⠀⠀⢰⣿⣿⣿⡟⠀⠀⢹⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⠀⠹⣿⣿⣿⣿⣿⡆
echo                    ⠀⢀⣿⣿⣿⡿⠀⠀⠀⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⠀⠀⠹⣿⣿⣿⣿⡇
echo                    ⠀⣼⣿⣿⣿⠃⠀⠀⠀⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡆⠀⠀⠀⢿⣿⣿⣿⡇
echo                    ⢠⣿⣿⣿⡏⠀⠀⠀⠀⢰⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⠀⠀⠀⠘⣿⣿⣿⡇
echo                    ⢸⣿⣿⣿⠀⠀⠀⠀⢠⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣆⠀⠀⠀⢿⣿⣿⠁
echo                    ⢸⣿⣿⠇⠀⠀⠀⢀⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⠀⠀⠘⣿⠇⠀
echo                    ⠸⣿⣿⠀⠀⠀⠀⣾⡿⠟⠛⠛⠛⠛⠿⠿⣿⣿⣿⣿⣿⣿⣿⡛⠛⠛⠋⠉⠉⠉⠉⠉⠙⢿⣿⡆⠀⠀⠀⢿⠀⠀
echo                    ⠀⢹⡇⠀⠀⠀⣸⡟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠉⠙⠛⠛⠿⠷⠶⣤⣤⣤⣤⣤⣄⣀⠀⢻⣧⠀⠀  ⠀⢸⡆⠀
echo                    ⠀⣾⠁⠀⠀⢀⣿⣄⣀⣀⣀⣀⣀⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠉⠉⠛⠻⠿⣾⣿⣇⠀ ⠀ ⠀⣧⠀
echo                    ⠀⣿⠀⠀⠀⠸⠛⠛⠉⠉⠉⠉⠙⠛⠻⢿⣿⣶⣶⣤⣤⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠙⠦⠀  ⠀⣿⠀
echo                    ⠀⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣴⠾⠛⠉⠁⠀⠀⠉⠉⠛⠳⠶⣤⣄⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀  ⠀  ⢸⠀
echo                    ⠀⢻⡄⠀⠀⠀⠀⠀⢀⣠⡶⠟⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠉⠛⠷⢶⣤⣄⣀⠀⠀⠀⠀ ⠀ ⠀⣾⠀
echo                    ⠀⠈⠻⠶⠤⠴⠶⠛⠋⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠙⠻⠷⡶⣤⣤⣾⠋⠀
echo.                    
echo.                    
echo.                    
echo.                    
echo                    so you really want to get on my nerves hm^?
ping localhost -n 2 >nul
echo.
echo    1) yeah what are you gonna do about it^?
echo    2) okay sorry, ill shut it off now.
set /p input=Answer=%BS%
if /I %input% EQU 1 goto :horrorascii
if /I %input% EQU 2 goto :horrorascii

:horrorascii
cls
color 0C
echo.
echo.
echo.
echo.
echo.
echo.
echo                    ⠀⠀⠀⠀⢠⣤⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ ⣀⣤⡄
echo                     ⠀⠀⠀⣿⣿⣿⣿⣦⣀⣀⣀⣀⣀⣴⣿⣿⣿⣿⠀⠀⠀⠀
echo                    ⠀⠀⠀⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀⠀⠀
echo                    ⠀⠀⠀⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
echo                    ⠀⠀⠀⠀⣿⣿⡋⠙⠻⣿⣿⣿⣿⣿⠟⠋⠙⣿⣿
echo                    ⠀⠀⠀⠀⢻⣿⣧⣄⣀⣽⣿⣿⣿⣯⣀⣠⣼⣿⡟
echo                    ⠀⠀⠀⠀⠀⠹⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠏
echo                    ⠀⠀⢰⣿⣿⡆⠀⠉⠛⠛⠻⠿⠟⠛⠛⠉⠀⢰⣿⣿⡆
echo                    ⠀⣠⣾⣿⣿⣷⣄⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣾⣿⣿⣷⣄
echo                    ⠀⠻⣿⡿⠛⠿⣿⣿⣷⣦⣄⣀⣠⣴⣾⣿⣿⠿⠛⢿⣿⠟
echo                    ⠀⠀⠀⠀⠀⠀⠀⢉⣻⣿⣿⣿⣿⣿⣟⡉
echo                    ⠀⣴⣶⣶⣤⣴⣾⣿⣿⠿⠛⠉⠛⢿⣿⣿⣷⣦⣤⣾⣷⡄
echo                    ⠀⠻⢿⣿⣿⡿⠟⠋⠁⠀⠀⠀⠀⠀⠀⠙⠻⢿⣿⣿⣿⠟
echo                    ⠀⠀⢸⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⡇
echo                     ⠀⠀⠈⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠉
echo.
echo.
echo                     THAT'S ALL! I GAVE YOU THE LAST CHANCE TO SHUT DOWN
echo                     THIS F#CKING PC, AND YOU F#CKED IT UP! ! ! !
echo                     NOW YOU ARE IN VERY VERY VERY VERY BIG TROUBLE!
echo                     XXXXXXXXXXXXXXXXXXXX
echo.                    
echo.                    
echo.                    
echo                    1) Shut Down

Echo.
echo.
echo.
echo.
echo.
echo                    Stop code: XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
set /p input=Answer=%BS%
if /I %input% EQU 1 goto :shutdownnah

:shutdownnah
cls
echo                    AHAHAHAHHAAHHAAHHAHAHAHAHHAHAHAAHAHAHAHAHAHHAHAHAHAHAHAHAHAHAHAHAHAHA.
echo                    NOW YOU ARE TRYING TO SHUT IT DOWN^? NO NO MY FRIEND,
echo                    IT'S TOO LATE FOR YOU!
echo.
echo.
echo                     1) What do I need to do^?
echo.
echo.
echo.
echo                    Stop code: XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
set /p input=Answer=%BS%
if /I %input% EQU 1 goto :shutdownnah2

:shutdownnah2
cls
Echo   ALL YOU NEED TO DO IS CRY AND SAY GOODBYE TO YOUR PC.
echo.
echo.
echo.
echo.
echo   1) - OK
echo   2) - Hell no, I won't give up
set /p input=Answer=%BS%
if /I %input% EQU 1 goto :goodbye
if /I %input% EQU 2 goto :haha

:goodbye
cls
echo get sent to the void, dummy
ping localhost -n 2 >nul
goto :newvoid

:newvoid
cls
color 07
echo you are stuck here forever... NO ESCAPE ^>:D
ping localhost -n 2000000 >nul
:haha
cls
echo AHAHAHAHAHA. LITTLE PIECE OF SH1T, DO YOU THINK YOU HAVE
echo A CHOICE?
echo.
echo.
echo.
echo    1) - Give up
echo.
echo    2) - Try to escape
echo.
echo.
echo.
echo.
echo.
echo   Stop code:XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX

set /p input=Answer=%BS%
if /I %input% EQU 1 goto :goodbye
if /I %input% EQU 2 goto :haha2

:haha2
cls
echo     YOU THINK YOU ARE SMART^?^?^?^?^?^?^?^?^?^?^?^?^?^?
echo     YOU THINK YOU CAN JUST RUN FROM THIS PLACE^?^?^?^?^?^?^?^?^?^?^?^?^?^?
echo.
echo.
echo.
echo   1) - Give up
echo.
echo   2) - Fight
echo.
echo.
echo.
echo.
echo.
echo.
echo   Stop code:XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
set /p input=Answer=%BS%
if /I %input% EQU 1 goto :goodbye
if /I %input% EQU 2 goto :fightnow

:fightnow
cls
echo   OHHH B1TCH YOU WANNA FIGHT^?^?^?^? I WILL DESTROY YOU!

echo   1) Give up
echo   2) YEAH LETS GO
ping localhost -n 2 >nul
goto :fightscene

:fightscene
cls
echo                                                  -^+^*^*=     
echo                 :.            ..                ^+#####^+    
echo                .^*^*^*^+=-:.     ^+##^*^+^+===--.    ...-#####^*=   
echo                   ^+####^*^*^*^+==-.  .:-=^+^+^*^*############^+=-  
echo                  :^+###^*^+ :=^*###^*^+-.        ...:#########^*=.
echo           =^*#^*==^*##^*=:      .::^+^*###^*^+=:      -###########^*
echo          ^*########^*=.            -^+^*####^*^*===^*############+
echo          :^*##########^+-.            -^+###################^* 
echo           -#############^*^+=.          .^+############^*^+###= 
echo           ^*################^*^+-          -#########^+-. :=-  
echo           ^*##-:--=^*###########^*=:.       =^*#####^*:         
echo          .=##=    =######^*^+^*^*^*#####^*^+-.   .^*####^*          
echo          ^+ =#^*.   ^*####^*=      ..:-=^+^+^+^+=-::^*###^*          
echo          .  :^*#=.^+####^*.                 -^+^+^*####:         
echo               -^*^*####^+                       ^+###:         
echo                 ^+####.                       .^*#^*          
echo                 =##^*.                         ^*##.         
echo                 .##^*.                         ^*#^*.         
echo                  ^+##=                         ^+##:         
echo                  .^*#=                         :##.         
echo                   :^*^+                          ^*#.         
echo                   .^*^*.                         ^*#.         
echo                 -=^*=-.                         ^*#^+.        
echo                 ..                               :^*^+.      
ping localhost -n 5 >nul
goto :recovered

:recovered
cls
echo                ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣦⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
echo                ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣾⣿⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
echo                ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣾⣿⣿⣿⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
echo                ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣾⣿⣿⣿⣿⣷⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
echo                ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣼⣿⣿⣿⡿⣿⣿⣇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
echo                ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣼⣿⣿⣿⣿⣇⣾⣿⣿⡆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
echo                ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣴⣿⣿⣿⣿⣯⣽⣿⣿⣿⣿⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
echo                ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣗⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
echo                ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣭⣆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
echo                ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⢻⣿⣿⣿⣿⣿⣿⣿⣟⣿⣿⣿⡿⢿⣿⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
echo                ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡟⢩⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣦⢷⣿⡆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
echo                ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡟⠘⢿⣶⣿⣧⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
echo                ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣸⣹⣿⢿⣿⣿⡟⣷⡗⠓⣺⣾⣿⡏⠀⠀⠀⢻⣿⢏⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
echo                ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⠏⠘⣻⠧⣧⠃⢧⡾⣽⣿⡟⣃⠀⠀⠀⠀⡇⣾⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
echo                ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⡎⣹⡏⠀⢠⣿⢿⣿⣷⣮⣾⣿⣿⣿⣿⣶⣦⣀⢀⣽⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
echo                ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢷⣷⣿⠃⢀⣾⣯⣷⡟⣷⢻⡖⠋⣁⣿⣿⡿⢿⣿⣾⡄⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
echo                ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢉⡇⠀⢸⣿⣿⡗⡻⣦⡧⢷⣿⣿⡿⣯⣏⠀⠉⢿⣧⣿⣇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
echo                ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡞⠃⠀⣸⡟⠛⠳⣾⠟⠍⣿⣿⠁⢘⣿⣿⡄⠀⠀⣸⣿⣿⣷⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
echo                ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣗⠀⢀⣿⡇⣾⢒⣿⣄⡀⣟⣽⣷⣼⣿⢻⡇⠀⠀⣿⣿⣿⣿⣿⣷⣦⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
echo                ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠰⠗⣧⠀⢸⣿⣀⡿⡿⣼⣵⣿⣌⠗⣌⣿⣾⣯⣧⠀⢰⣿⣿⣿⣿⣿⣿⣿⣿⣦⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
echo                ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢹⠀⢸⢩⣿⣟⠘⣿⣷⣟⢿⣦⣍⢿⣧⣿⣿⣆⠀⠉⠻⣿⡿⣿⣿⣿⣿⣿⣿⣶⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
echo                ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⡈⠀⣸⢽⢟⣿⢻⣿⡏⠻⣾⣿⣿⠀⠙⢿⣿⣿⠀⠀⠀⠀⠙⠻⣛⢿⣿⣿⣿⣿⣿⣷⣄⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
echo                ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⠟⠋⢀⣿⡌⣿⣿⣿⣿⣿⢶⣽⡜⢮⣣⢀⣼⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠙⡻⢿⣿⣿⣿⣿⣿⣦⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
echo                ⠀⠀⠀⠀⠀⠀⠀⠀⠀⣴⡧⠀⠀⣶⡆⣸⣿⣿⣿⣿⣿⣿⣷⣾⣻⣽⡒⢿⣿⡿⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠑⢝⣿⣿⣿⣿⣿⣿⣶⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
echo                ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠹⣿⠀⠀⠈⠀⣿⣿⣿⣾⣿⣿⣿⣿⣿⣽⣿⣿⣿⣿⣿⣿⣿⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠛⢿⣿⣿⣿⣿⣿⣷⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
echo                ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠀⣠⠀⣠⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣧⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⠫⣻⢿⣿⣿⣿⣷⣤⡀⠀⠀⠀⠀⠀⠀⠀
echo                ⠀⠀⠀⠀⠀⠀⠀⢀⣤⣤⠀⢈⣩⡾⠿⠿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠑⠿⣿⣿⣿⣿⣿⣦⡀⠀⠀⠀⠀⠀
echo                ⠀⠀⠀⢀⣠⣴⣾⣿⣿⣿⣿⣿⣷⣶⣖⣶⣿⣿⣿⣿⣿⡟⠛⠛⠛⠋⠉⠛⢛⣿⣿⣿⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠛⢿⣿⣿⣿⣿⣧⣄⠀⠀⠀
echo                ⠀⠶⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣶⡤⣤⣶⣶⣾⣿⣿⣿⣇⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡀⠀⠀⠀⣀⣀⣽⣿⣿⣻⡿⡿⢷⣦⡀
echo                ⠉⠉⠉⠛⠛⠛⠛⠛⠛⠛⠻⠏⠉⠉⠉⠉⠉⠉⠉⠉⠙⠁⠀⠀⠀⠈⠻⣿⣿⣿⣿⡿⠛⠛⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠉⠉⠉⠛⠛⠛⠛⠉⠉⠁
echo.
echo.
echo.      
echo                              you got me good...
echo.
echo. 
echo                              WHATS YOUR DECISION
echo.
echo.
echo.
echo.
echo             A) Finish Blackbane
echo.
echo             B) Settle this the easy way and spare him.
echo.
echo             C) Walk away and let the F#CK3R BLEED OUT
echo.
echo     (hint: type "progress" now to show how far youre finished!)
echo.
echo.
echo errorerrorerrorerrorerrorerrorerrorerrorerrorerrorerrorerrorerrorerrorerrorerrorerrorerrorerrorerrorerrorerrorerrorerrorerrorerrorerrorerrorerrorerrorerrorerrorerrorerrorerrorerrorerrorerrorerrorerrorerrorerrorerrorerrorerrorerrorerror
set /p input=Answer=%BS%
if /I %input% EQU A goto :blackbane
if /I %input% EQU B goto :settlethis
if /I %input% EQU C goto :walkaway
if /I %input% EQU progress goto :progress

:progress
cls⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
echo you are 80%% done!
goto :recovered
:blackbane
cls
echo             woah.. what are you doing.. listen, im sorry
echo.
echo.
echo.
echo.
echo.
echo.
echo            1) - Give up and spare Blackbane
echo.
echo            2) - EXPOSE HIS GUTS WITH HIS OWN SWORD
echo.
set /p input=Answer=%BS%
if /I %input% EQU 1 goto :settlethis
if /I %input% EQU 2 goto :kill.

:kill.
cls
echo                                      .                        
echo                                                .   .          
echo                                                    .:.        
echo                            .                .                 
echo                            :     =                 .:.-       
echo                                 .-    .   .         -=        
echo                           .   = .:=  --  :=::       -.        
echo                          .    =  -.:.:.  .:   :.:^+=           
echo                          .    -:^*^+^*.      : .^*^+^+:^+.  .=   ..: 
echo                        ..=. :-%%--..   . =^*=:-=: =    .       
echo                       ..:-=^+%%+= -:- -^*#=^*- .                 
echo                  .   . .=^*%%%%%%#=.-^*#=##.                    
echo                    :--=#%%%%%*=:....^+=^*#^+                     
echo                -:=#%%%%%%%#+*:-++*+:..  =                     
echo                ^+  -%%%%%%%%##=:..=      :                     
echo                   ^+#^+=#=^+--.^+   .=   .                        
echo                   :.-.^+     :=   =         -                  
echo                     ..^+  .. .:   -                            
echo                       ^+  .-      =                            
echo                       ^+  .-      -                            
echo.
echo.
echo.
echo                 Blackbane is now DEAD 
goto :Completion

:Completion
cls
echo Good job. Replay this to get more endings!
echo  do you want to see the credits^?
echo  1) yeah!
echo  2) no, i want to Replay
echo  3) i want to leave
set /p input=Answer=%BS%
if /I %input% EQU 1 goto :credits
if /I %input% EQU 2 goto :Bluescreen
if /I %input% EQU 3 goto :Exit

:credits
echo Hello! I am the developer of BSOD GAME, if you want to support me add me on discord and say thanks!
echo Made by @multiverse.destroyer on discord!
echo Follow me on tiktok! @notachinesespy.com 
echo Add my secondary discord! @realorsomething
echo Helped by @.night82 On discord!
echo Join this awesome discord server and say hi! discord.gg/HJUT48VUBd (should be an infinite link)
echo Very special thanks to @z1am on discord!
echo Special thanks to @yuk1t01 on discord!
echo Inspired by @SystemSagaHeroes on youtube!
echo Learn batch from ebola man on youtube!
:settlethis
cls
echo      please do something..
echo.
echo.
echo.
echo.
echo    1) - Change your mind and kill him
echo.
echo    2) - Forgive him and end this MESS
echo.
echo.
set /p input=Answer=%BS%
if /I %input% EQU 1 goto :kill.
if /I %input% EQU 2 goto :forgave
ping localhost -n 10 >nul
goto :timeout

:forgave 
cls
echo              Blackbane has betrayed you!
ping localhost -n 3 >nul
goto :betray

:betray
cls
echo      hah. you STUPID HUMAN! Did you really think id just settle this^? YOURE STUPID!
echo.
echo         ^* BLACKBANE HAS STABBED YOU!^*
goto :yourdeath

:yourdeath
echo                                      .                        
echo                                                .   .          
echo                                                    .:.        
echo                            .                .                 
echo                            :     =                 .:.-       
echo                                 .-    .   .         -=        
echo                           .   = .:=  --  :=::       -.        
echo                          .    =  -.:.:.  .:   :.:^+=           
echo                          .    -:^*^+^*.      : .^*^+^+:^+.  .=   ..: 
echo                        ..=. :-%%--..   . =^*=:-=: =    .       
echo                       ..:-=^+%%+= -:- -^*#=^*- .                 
echo                  .   . .=^*%%%%%%#=.-^*#=##.                    
echo                    :--=#%%%%%*=:....^+=^*#^+                     
echo                -:=#%%%%%%%#+*:-++*+:..  =                     
echo                ^+  -%%%%%%%%##=:..=      :                     
echo                   ^+#^+=#=^+--.^+   .=   .                        
echo                   :.-.^+     :=   =         -                  
echo                     ..^+  .. .:   -                            
echo                       ^+  .-      =                            
echo                       ^+  .-      -                            
echo.
echo.
echo.
echo          YOU HAVE BEEN KILLED BY BLACKBANE!
echo.
goto :newvoid
:timeout
echo             ugh.. im dying here just choose something already!
echo.             
echo           1) - Change your mind and kill him  
echo.
echo           2) - Forgive him and end this MESS 
set /p input=Answer=%BS%
if /I %input% EQU 1 goto :kill.
if /I %input% EQU 2 goto :forgave
:walkaway
cls
echo         are you sure you want to walk away^? You can settle this or kill him.
echo.
echo.
echo         1) - Im sure.
echo.
echo         2) - Im not sure.
echo.
set /p input=Answer=%BS%
if /I %input% EQU 1 goto :walkaway2
if /I %input% EQU 2 goto :recovered

:walkaway2
echo  WHERE ARE YOU GOING!
echo.
echo.
echo   im leaving you to bleed out. cya loser
echo.
echo.
echo.
goto :Completion















:: youre not supposed to be here...
:: how dare you challenge an immortal game like me? youre just a piece of meat and bone



































pause