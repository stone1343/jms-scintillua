@echo off
setlocal

if "%1"=="" (
  echo %~n0 dest
  goto :eof
)

xcopy /y /d windows\* %1
xcopy /y /d scintillua\* %1
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
