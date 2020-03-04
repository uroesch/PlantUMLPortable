@echo off


set TOMCAT_DIR=%~dp0apache-tomcat

cd /d %TOMCAT_DIR%\bin 
start /b catalina.bat run

start /b %PORTABLE_APPS_BROWSER% http://localhost:8080/plantuml/	