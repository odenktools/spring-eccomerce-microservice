@echo off
set startdir=%~dp0

del /f/s/q %startdir%\.gradle\ > nul
del /f/s/q %startdir%\build\ > nul
del /f/s/q %startdir%\out\ > nul

rmdir /s/q %startdir%\.gradle\
rmdir /s/q %startdir%\build\
rmdir /s/q %startdir%\out\

DEL /F /S /Q /A "%startdir%\local.properties"
DEL /F /S /Q /A "%startdir%\*.iml"
DEL /F /S /Q /A "%startdir%\app\*.iml"