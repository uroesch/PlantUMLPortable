@echo off

set JAR_DIR=%~p0\App
set JAVA_HOME=%~p0\..\Common\JDK
set JAVA_BIN=%JAVA_HOME%\bin
set PATH=%PATH%;%JAVA_BIN%;

java -jar %JAR_DIR%\plantuml.jar %*
