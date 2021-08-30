@ECHO OFF
SET wpath="c:\program files\wix toolset v3.11\bin"

%wpath%\candle -arch x86 -ext WixUtilExtension rkc-potch.wxs -out rkc-potch-x86.wixobj
if errorlevel 1 exit /b
%wpath%\light -ext WixUtilExtension rkc-potch-x86.wixobj -out rkc-potch-x86.msi

%wpath%\candle -arch x64 -ext WixUtilExtension rkc-potch.wxs -out rkc-potch-x64.wixobj
if errorlevel 1 exit /b
%wpath%\light -ext WixUtilExtension rkc-potch-x64.wixobj -out rkc-potch-x64.msi


%wpath%\candle -arch x86 -ext WixBalExtension -ext WixUtilExtension rkc-potch-bundle.wxs
if errorlevel 1 exit /b
%wpath%\light -ext WixBalExtension -ext WixUtilExtension rkc-potch-bundle.wixobj
