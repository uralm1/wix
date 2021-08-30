@ECHO OFF
SET wpath="c:\program files\wix toolset v3.11\bin"

%wpath%\candle -arch x86 -ext WixUtilExtension rkc-ap.wxs -out rkc-ap-x86.wixobj
if errorlevel 1 exit /b
%wpath%\light -ext WixUtilExtension rkc-ap-x86.wixobj

%wpath%\candle -arch x86 -ext WixBalExtension -ext WixUtilExtension rkc-ap-bundle.wxs
if errorlevel 1 exit /b
%wpath%\light -ext WixBalExtension -ext WixUtilExtension rkc-ap-bundle.wixobj