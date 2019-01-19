@echo off
setlocal

if "%~1"=="" (
  goto :help
)
if not exist "%~1\lexers\themes\jms.lua" (
  goto :help
)
xcopy /s /y scintillua\* %1
xcopy /y scintillua\SciTEUser.properties %USERPROFILE%
goto :eof

:help
echo %~n0 dest
echo jms-scintillua must already be installed in "%~1"
goto :eof
