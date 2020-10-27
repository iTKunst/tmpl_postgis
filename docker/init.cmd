@echo off

call LOG_ENTER \Project\docker\init

xcopy /q /y .\Project\docker\win\*.cmd .\Exe

call LOG_EXIT \Project\docker\init