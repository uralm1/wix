@ECHO OFF
SET hpath="%WINDIR%\System32\Drivers\Etc\hosts"

rem type %hpath%

cmd.exe /c findstr /b /r /c:"^81\.30\.196\.222 *Morfeuz" "%WINDIR%\System32\Drivers\Etc\hosts" || echo 81.30.196.222 Morfeuz >> "%WINDIR%\System32\Drivers\Etc\hosts"