$AppRoot        = "$PSScriptRoot\..\.."
$AppInfoIni     = "$AppRoot\App\AppInfo\appinfo.ini"
$PackageVersion = '1.2020.2.0'
$DisplayVersion = '1.2020.2-alpha0-uroesch'
$ZipVersion     = '1.2020.2'
$ArchiveURL1    = "http://mirror.easyname.ch/apache/tomcat/tomcat-9/v9.0.31/bin/apache-tomcat-9.0.31-windows-x64.zip"
$TargetDir1     = 'apache-tomcat'
$ExtractDir1    = '/apache-tomcat-9.0.31'
$ArchiveURL2    = "https://liquidtelecom.dl.sourceforge.net/project/plantuml/plantuml.war"
$ExtractDir2    = 'plantuml.war'
$TargetDir2     = 'apache-tomcat/webapps'


Function Url-Basename {
  param(
    [string] $URL
  )
  $Elements = $URL.split('/')
  $Basename = $Elements[$($Elements.Length-1)]
  return $Basename
}

Function Download-Release { 
  param(
    [string] $URL
  )
  $DownloadPath = "$PSScriptRoot\$(Url-Basename -URL $URL)"
  If (!(Test-Path $DownloadPath)) {
    Invoke-WebRequest -Uri $URL -OutFile $DownloadPath
  }
  return $DownloadPath
}

Function Expand-Zip {
  param(
    [string] $ZipFile
  )
  Expand-Archive -LiteralPath $ZipFile -DestinationPath $PSScriptRoot -Force
}

Function Update-Release {
  param(
    [string] $URL,
    [string] $TargetDir,
    [string] $ExtractDir,
    [bool]   $RemoveTarget = $true
  )
  $ReleaseFile = $(Download-Release -URL $URL)
  $TargetPath = "$AppRoot\App\$TargetDir"
  Switch -regex ($ReleaseFile) {
    '\.[Zz][Ii][Pp]$' { Expand-Zip -ZipFile $ReleaseFile; break }
  }
  If ((Test-Path $TargetPath) -And ($RemoveTarget)) {
    Write-Output "Removing $TargetPath"
    Remove-Item -Path $TargetPath -Force -Recurse
  }
  Move-Item -Path $PSScriptRoot\$ExtractDir -Destination $TargetPath -Force
  If (Test-Path $ReleaseFile) { Remove-Item $ReleaseFile }
}

Function Update-Appinfo() {
  param(
    [string] $IniFile,
	[string] $Match,
	[string] $Replace
  )
  If (Test-Path $IniFile) {
    $Content = (Get-Content $IniFile)
	$Content -replace $Match,$Replace | Out-File -FilePath $IniFile
  }
}

Update-Release -URL $ArchiveURL1 -TargetDir $TargetDir1 -ExtractDir $ExtractDir1
Update-Release -URL $ArchiveURL2 -TargetDir $TargetDir2 -ExtractDir $ExtractDir2 -RemoveTarget $false
Update-Appinfo -IniFile $AppInfoIni -Match '^PackageVersion\s*=.*' -Replace "PackageVersion=$PackageVersion"
Update-Appinfo -IniFile $AppInfoIni -Match '^DisplayVersion\s*=.*' -Replace "DisplayVersion=$DisplayVersion"