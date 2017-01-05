@ECHO off
ECHO.
ECHO Automator for MiCloud Telepo
ECHO Copyright (c) 2017 Abhishek Kumar (kumarab@hcl.com), HCL Tech
ECHO.

IF "%1"=="-c" (
	ECHO Copy new repository
  	GOTO done
)

IF "%1"=="-s" (
	ECHO Sync repository
  	GOTO done
)

IF "%1"=="-h" CALL :menu & GOTO end

GOTO default

:menu 
	ECHO Please select the command from the list given below
  	ECHO  -c 	to copy new repository 
  	ECHO  -s 	to sync existing repository
  	ECHO  -h 	to see the menu
  	GOTO done

:default
	ECHO This command is not available.
	ECHO.
	CALL :menu
	GOTO end

:done
	ECHO.
	ECHO Done!
	GOTO end

:end
  	EXIT /B
