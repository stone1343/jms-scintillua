# jms-scintillua

My customization of SciTE/Scintilla and Scintillua

jms-scintillua-win32.zip is Windows version of SciTE 3.7.5. + Scintillua 3.7.5 + my customization

Customization:
 - Commented out markdown lexer (lexers\lpeg.properties)
 - Added startup.lua
 - Customized version of SciTEGlobal.properties
 - jms and jms-dark themes using xkcd colors
 - Sample SciTEUser.properties is provided, though it doesn't do anything

Usage
 - Unzip
 - Optionally copy SciTEUser.properties to %USERPROFILE%
 - Paste shortcut of SciTE.exe to shell:sendto and pin SciTE to taskbar or Start menu
 - In Windows 10, I find it helpful to right-click on SciTE.exe, Properties->Compatibility, Select "Disable display scaling on high DPI settings"
 - Consider using Notepad Replacer ( https://www.binaryfortress.com/NotepadReplacer/ )
