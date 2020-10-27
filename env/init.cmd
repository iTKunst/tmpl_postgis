@echo off

call LOG_ENTER \Project\env\init

xcopy /q /y .\Project\env\win\*.cmd .\Env

call LOG_EXIT \Project\env\init