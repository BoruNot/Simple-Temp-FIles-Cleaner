@echo off
cls

echo Boru Cleaner 1.0.0

del /f /q C:\Windows\Temp\*
del /f /q C:\Users\%USERNAME%\AppData\Local\Temp\*
del /f /q C:\Windows\Prefetch\*

del /f /q %systemdrive%\*.etl
del /f /q %systemdrive%\*.log
del /f /q %systemdrive%\*.tmp
del /f /q %systemdrive%\*.old
del /f /q %systemdrive%\*.bak
del /f /q %systemdrive%\*.sav

RunDll32.exe InetCpl.cpl,ClearMyTracksByProcess 16

echo [+] Limpeza de arquivos temporários concluída.

pause
