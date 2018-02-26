@echo off
set startdir=%~dp0

:: REMOVE
DEL /f/s/q %startdir%\account-service\.gradle\ > nul
DEL /f/s/q %startdir%\account-service\build\ > nul
DEL /f/s/q %startdir%\account-service\out\ > nul

RMDIR /s/q %startdir%\account-service\.gradle\
RMDIR /s/q %startdir%\account-service\build\
RMDIR /s/q %startdir%\account-service\out\

DEL /F /S /Q /A "%startdir%\account-service\local.properties"
DEL /F /S /Q /A "%startdir%\account-service\*.iml"
DEL /F /S /Q /A "%startdir%\account-service\app\*.iml"

:: REMOVE
DEL /f/s/q %startdir%\config-service\.gradle\ > nul
DEL /f/s/q %startdir%\config-service\build\ > nul
DEL /f/s/q %startdir%\config-service\out\ > nul

RMDIR /s/q %startdir%\config-service\.gradle\
RMDIR /s/q %startdir%\config-service\build\
RMDIR /s/q %startdir%\config-service\out\

DEL /F /S /Q /A "%startdir%\config-service\local.properties"
DEL /F /S /Q /A "%startdir%\config-service\*.iml"
DEL /F /S /Q /A "%startdir%\config-service\app\*.iml"

:: REMOVE
DEL /f/s/q %startdir%\gateway-service\.gradle\ > nul
DEL /f/s/q %startdir%\gateway-service\build\ > nul
DEL /f/s/q %startdir%\gateway-service\out\ > nul

RMDIR /s/q %startdir%\gateway-service\.gradle\
RMDIR /s/q %startdir%\gateway-service\build\
RMDIR /s/q %startdir%\gateway-service\out\

DEL /F /S /Q /A "%startdir%\gateway-service\local.properties"
DEL /F /S /Q /A "%startdir%\gateway-service\*.iml"
DEL /F /S /Q /A "%startdir%\gateway-service\app\*.iml"

:: REMOVE
DEL /f/s/q %startdir%\location-service\.gradle\ > nul
DEL /f/s/q %startdir%\location-service\build\ > nul
DEL /f/s/q %startdir%\location-service\out\ > nul

RMDIR /s/q %startdir%\location-service\.gradle\
RMDIR /s/q %startdir%\location-service\build\
RMDIR /s/q %startdir%\location-service\out\

DEL /F /S /Q /A "%startdir%\location-service\local.properties"
DEL /F /S /Q /A "%startdir%\location-service\*.iml"
DEL /F /S /Q /A "%startdir%\location-service\app\*.iml"

:: REMOVE
DEL /f/s/q %startdir%\registry-service\.gradle\ > nul
DEL /f/s/q %startdir%\registry-service\build\ > nul
DEL /f/s/q %startdir%\registry-service\out\ > nul

RMDIR /s/q %startdir%\registry-service\.gradle\
RMDIR /s/q %startdir%\registry-service\build\
RMDIR /s/q %startdir%\registry-service\out\

DEL /F /S /Q /A "%startdir%\registry-service\local.properties"
DEL /F /S /Q /A "%startdir%\registry-service\*.iml"
DEL /F /S /Q /A "%startdir%\registry-service\app\*.iml"
