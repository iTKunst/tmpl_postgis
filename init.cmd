@echo off

call :log_enter \DIR_PROJ\init

CALL .\DIR_PROJ\docker\init
CALL .\DIR_PROJ\env\init

call :log_exit \DIR_PROJ\init