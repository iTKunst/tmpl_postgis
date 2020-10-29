@echo off
CALL settings


call LOG_ENTER pBUILD

CALL pENV

SET "CONT_DIR=%PROJ_CONT_DIR%"
SET "HOST_DIR=%PROJ_HOST_DIR%"
SET "IMG=%PROJ_IMG%"

call LOG_VAR CONT_DIR %CONT_DIR%
call LOG_VAR HOST_DIR %HOST_DIR%
call LOG_VAR IMG %IMG%

REM DOCKER_BUILDKIT=1 ^
docker  build --build-arg CONT_DIR=%CONT_DIR% --build-arg HOST_DIR=%HOST_DIR% -f .\%DIR_PROJ%\docker\win\Dockerfile -t %IMG% .

call LOG_VAR ERRORLEVEL %ERRORLEVEL%

IF %ERRORLEVEL% NEQ 0 (
  call LOG_ERR "Unable to build image"
) else (
  call LOG_CMD "Please run pGO to create and run the container"
)

call LOG_EXIT pBUILD

