@ECHO OFF

CALL buildbase.bat ..\vs2017\libsodium.sln 15
ECHO.
CALL buildbase.bat ..\vs2015\libsodium.sln 14
ECHO.

PAUSE
