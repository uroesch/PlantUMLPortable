[![Build](https://github.com/uroesch/PlantUMLPortable/workflows/build-package/badge.svg)](https://github.com/uroesch/PlantUMLPortable/actions?query=workflow%3Abuild-package)
[![GitHub release (latest by date including pre-releases)](https://img.shields.io/github/v/release/uroesch/PlantUMLPortable?include_prereleases)](https://github.com/uroesch/PlantUMLPortable/releases)
[![Runs on](https://img.shields.io/badge/runs%20on-Win64%20%26%20Win32-blue)](#runtime-dependencies)
[![Depends on](https://img.shields.io/badge/depends%20on-Java-blue)](#runtime-dependencies)

# PlantUML Server Portable for PortableApps.com

<img src="App/AppInfo/appicon_128.png" align=left>

[PlantUML](https://plantuml.com/) is an open-source tool allowing users to create UML diagrams from a plain text language. The language of PlantUML is an example of a Domain-specific language. It uses Graphviz software to lay out its diagrams. It has been used to allow blind students to work with UML. PlantUML also helps blind software engineers to design and read UML diagrams. 

PlantUML uses well-formed and human-readable code to render the diagrams. 

## Runtime dependencies
* 32-bit or 64-bit version of Windows.
* 32-bit Java. 

## Status

This PortableApp project is in early alpha stage. 

## Todo
- [ ] Documentation

## Build

### Prerequisites

* [PortableApps.com Launcher](https://portableapps.com/apps/development/portableapps.com_launcher)
* [PortableApps.com Installer](https://portableapps.com/apps/development/portableapps.com_installer)
* [Powershell](https://docs.microsoft.com/en-us/powershell/scripting/install/installing-powershell-core-on-linux?view=powershell-7)
* [Wine (Linux / MacOS only)](https://www.winehq.org/)

### Build

To build the installer run the following command in the root of the git repository.

```
powershell Other/Update/Update.ps1
```
