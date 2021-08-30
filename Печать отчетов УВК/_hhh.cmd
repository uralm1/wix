@ECHO OFF
SET wpath="c:\program files\wix toolset v3.11\bin"

%wpath%\heat dir "files" -dr INSTALLDIR -gg -g1 -srd -indent 2 -ke -out _folder_files.wxs
