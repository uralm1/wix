@ECHO OFF
SET wpath="c:\program files\wix toolset v3.11\bin"

rem %wpath%\heat dir "files\gis_templates" -out folder_results.wxs

%wpath%\candle -arch x86 SampleFirst.wxs
if errorlevel 1 exit /b
%wpath%\light SampleFirst.wixobj

%wpath%\candle -arch x86 -ext WixBalExtension -ext WixUtilExtension Bundle.wxs
if errorlevel 1 exit /b
%wpath%\light -ext WixBalExtension -ext WixUtilExtension Bundle.wixobj