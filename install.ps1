$Toolkit_Download_Url="https://github.com/whatk233/setup-autoit-compiler-toolkit/releases/download/3.3.16.1_230116/autoit_compiler_toolkit_v3.3.16.1_230116.zip"
$Toolkit_Download_Path="$env:TEMP\autoit_compiler_toolkit.zip"
$Toolkit_Path="$env:APPDATA\autoit_compiler_toolkit"

Invoke-WebRequest -URI $Toolkit_Download_Url -OutFile $Toolkit_Download_Path
Expand-Archive -Path $Toolkit_Download_Path -DestinationPath $Toolkit_Path -Force

Remove-Item -Path $Toolkit_Download_Path -Force

[environment]::SetEnvironmentvariable("AUTOIT_COMPILER_TOOLKIT", "$Toolkit_Path", "Machine")