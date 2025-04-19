@echo off
::  
::  
::  
::  
::  
::  ____________________________________________
::               VARIABLE STRINGS
::  
::  
::
::  STEP 1.) CONFIGRE YOUR CURRENT PATH TO STEAMCMD.EXE FOLDER:
SET steamcmd_path=D:\GameServers\SteamCMD


::  STEP 2.)  CONFIGRE THE DESIRED PATH TO SERVER INSTALL FOLDER PATH:
SET server_install_path=D:\GameServers\Left4Dead2

::  
::  
::  
::  STEP 3.)  CONFIGURE STEAM ACCOUNT WITH L4D2 ALREADY BOUGHT ON IT/IN ITS LIBRARY THAT STEAMCMD WILL LOG IN WITH TO DOWNLOAD THE SERVER FILES:

SET steam_account_name=account
SET steam_account_pass=password

::  
::  
::  
::  ONCE YOU'VE CONFIGURED STEP 1.), STEP 2.) AND STEP 3.) ABOVE TO YOUR DESIRED FOLDER PATHS AND STEAM ACCOUNT, YOU'RE DONE AND CAN CLOSE THIS FILE AND RETURN TO THE STEAM GUIDE TO CONTINUE
::  
::
::
::  
::  
::  
::  
::  
::  
::  
::  STEAM TARGET APPLICATION ID NUMBER, YOU CAN IGNORE THIS ONE BECAUSE ITS ALREADY SET TO L4D2'S DEDICATED SERVER ID WHICH IS 222860:
SET steam_appid=222860

::  IGNORE THE FOLLOWING 3 LINES, THESE ONES DOES NOT NEED TO CHANGE EVER:
SET steamcmd_exe=steamcmd.exe
SET steamcmd_combinedPath="%steamcmd_path%\%steamcmd_exe%"
SET server_install_root_path="%server_install_path%"

::
::
::  
::  
::  ____________________________________________
::   UPDATE OR INSTALL SOTF SERVER VIA STEAMCMD
::  
::  

start "" "%steamcmd_combinedPath%" +force_install_dir %server_install_root_path% +login %steam_account_name% %steam_account_pass% +app_update %steam_appid% validate +quit


::  
::  
:: 
::