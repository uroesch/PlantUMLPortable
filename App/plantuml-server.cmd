@echo off

set TOMCAT_DIR=%~dp0apache-tomcat
set BROWSER_OPTIONS=

cd /d %TOMCAT_DIR%\bin 
start /b catalina.bat run


if x%PORTABLE_APPS_BROWSER:firefox=%==x%PORTABLE_APPS_BROWSER% (
  echo Firefox
  set BROWSER_OPTIONS=-new-tab  
)

rem start /b %PORTABLE_APPS_BROWSER% %BROWSER_OPTIONS% http://localhost:8080/plantuml/	
start /b http://localhost:8080/plantuml/	
