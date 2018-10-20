@echo off
setlocal

if "%1"=="" (
  echo %~n0 dest
  goto :eof
)
if not exist %1\lexers\themes (
  echo SciTE and Scintillua must already be installed
  goto :eof
)

call :smartfilecopy scintillua\startup.lua %1\startup.lua
call :smartfilecopy scintillua\lexers\themes\jms.lua %1\lexers\themes\jms.lua
call :smartfilecopy scintillua\lexers\themes\jms-dark.lua %1\lexers\themes\jms-dark.lua
call :smartfilecopy windows\SciTEGlobal.properties %1\SciTEGlobal.properties
call :smartfilecopy windows\SciTEUser.properties %USERPROFILE%\SciTEUser.properties
goto :eof

:smartfilecopy
set doit=
rem echo %~n0 %1 %2
if not exist %2 (
  set doit=y
) else (
  fc /l %1 %2 >nul || set doit=y
)
if "%doit%"=="y" (
  echo copy %1 %2
  copy %1 %2 >nul
)
goto :eof
