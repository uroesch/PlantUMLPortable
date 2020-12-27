[![Build](https://github.com/uroesch/PlantUMLPortable/workflows/build-package/badge.svg)](https://github.com/uroesch/PlantUMLPortable/actions?query=workflow%3Abuild-package)
[![GitHub release (latest by date including pre-releases)](https://img.shields.io/github/v/release/uroesch/PlantUMLPortable?include_prereleases)](https://github.com/uroesch/PlantUMLPortable/releases)
[![Runs on](https://img.shields.io/badge/runs%20on-Win64%20%26%20Win32-blue)](#runtime-dependencies)
[![Depends on](https://img.shields.io/badge/depends%20on-Java-blue)](#runtime-dependencies)
![GitHub All Releases](https://img.shields.io/github/downloads/uroesch/PlantUMLPortable/total)

# PlantUML Server Portable for PortableApps.com

<img src="App/AppInfo/appicon_128.png" align=left>

[PlantUML](https://plantuml.com/) is an open-source tool allowing users to create UML diagrams from a plain text language. The language of PlantUML is an example of a Domain-specific language. It uses Graphviz software to lay out its diagrams. It has been used to allow blind students to work with UML. PlantUML also helps blind software engineers to design and read UML diagrams. 

PlantUML uses well-formed and human-readable code to render the diagrams. 

## Runtime dependencies
* 32-bit or 64-bit version of Windows.
* 32-bit Java. 

## Support matrix

| OS              | 32-bit             | 64-bit              | 
|-----------------|:------------------:|:-------------------:|
| Windows XP      | ![ns][nd]          | ![ns][nd]           | 
| Windows Vista   | ![ps][ps]          | ![ps][ps]           | 
| Windows 7       | ![ps][ps]          | ![ps][ps]           |  
| Windows 8       | ![ps][ps]          | ![ps][ps]           |  
| Windows 10      | ![fs][fs]          | ![fs][fs]           |

Legend: ![ns][ns] not supported;  ![nd][nd] no data; ![ps][ps] supported but not verified; ![fs][fs] verified;

## Status

This PortableApp project is in early alpha stage. 

## Todo
- [ ] Documentation


<!-- Start include INSTALL.md -->
## Installation

### Install via the PortableApps.com Platform

After downloading the `.paf.exe` installer navigate to your PortableApps.com Platform
`Apps` Menu &#10102; and select `Install a new app (paf.exe)` &#10103;. 

<img src="Other/Images/install_newapp_menu.png" width="400">

From the dialog choose the previously downloaded `.paf.exe` file. &#10104; 

<img src="Other/Images/install_newapp_dialog.png" width="400">

After a short while the installation dialog will appear. 

<img src="Other/Images/install_newapp_installation.png" width="400">


### Install outside of the PortableApps.com Platform

The Packages found under the release page are not digitally signed so there the installation
is a bit involved.

After downloading the `.paf.exe` installer trying to install may result in a windows defender
warning.

<img src="Other/Images/info_defender-protected.png" width="260">

To unblock the installer and install the application follow the annotated screenshot below.

<img src="Other/Images/howto_unblock-file.png" width="600">

1. Right click on the executable file.
2. Choose `Properties` at the bottom of the menu.
3. Check the unblock box.
<!-- End include INSTALL.md -->

<!-- Start include BUILD.md -->
### Build

#### Windows 10

To build the installer run the following command in the root of the git
repository.

```
powershell -ExecutionPolicy ByPass -File Other/Update/Update.ps1
```

#### Linux (Docker)

Note: This is currently the preferred way of building.

For a Docker build run the following command.

```
curl -sJL https://raw.githubusercontent.com/uroesch/PortableApps/master/scripts/docker-build.sh | bash
```

#### Linux (Wine)

To build the installer under Linux with Wine and PowerShell installed run the
command below.

```
pwsh Other/Update/Update.ps1
```
<!-- End include BUILD.md -->

[nd]: Other/Icons/no_data.svg
[ns]: Other/Icons/no_support.svg
[ps]: Other/Icons/probably_supported.svg
[fs]: Other/Icons/full_support.svg
