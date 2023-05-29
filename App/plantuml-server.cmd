@echo off
rem -----------------------------------------------------------------
rem  This is a wrapper script to start the webfrontend for PlantUML
rem  and start the default browser.
rem -----------------------------------------------------------------

rem -----------------------------------------------------------------
rem  Globals
rem -----------------------------------------------------------------
set PLANTUML_URL=http://localhost:8080/plantuml/
set TOMCAT_DIR=%~dp0apache-tomcat
set BROWSER_OPTIONS=

rem -----------------------------------------------------------------
rem  Start Tomcat and PlantUML
rem -----------------------------------------------------------------
cd /d %TOMCAT_DIR%\bin 
start /b catalina.bat run

rem -----------------------------------------------------------------
rem  Start Browser
rem -----------------------------------------------------------------
if x%PORTABLE_APPS_BROWSER:firefox=%==x%PORTABLE_APPS_BROWSER% (
  echo Firefox
  set BROWSER_OPTIONS=-new-tab  
)

if x%PORTABLE_APPS_BROWSER%==x (
  start /b %PLANTUML_URL%
) else (
  start /b %PORTABLE_APPS_BROWSER% %BROWSER_OPTIONS% %PLANTUML_URL% 
)
