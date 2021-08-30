@ECHO OFF
SET wpath="c:\program files\wix toolset v3.11\bin"

%wpath%\candle -arch x86 -ext WixUtilExtension rkc-ipu.wxs -out rkc-ipu-x86.wixobj
if errorlevel 1 exit /b
%wpath%\light -sice:ICE60 -ext WixUtilExtension rkc-ipu-x86.wixobj