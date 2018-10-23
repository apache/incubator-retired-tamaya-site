@ECHO OFF
cls
echo Cleaning up cache ...
rmdir /Q /S cache/
echo Starting to bake our project homepage ....
set JBAKE_HOME="%~dp0\bin\jbake-2.6.1-bin"
echo %JBAKE_HOME%
%JBAKE_HOME%/bin/jbake -b -s
@ECHO ON
