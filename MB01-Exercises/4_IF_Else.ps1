<#
a: - Überprüfe auf deinem Gerät ein Prozess mit dem Namen "Teams" läuft und gebe die ID des Prozesses aus
b: - Wenn der Prozess nicht läuft, gebe einen folgenden String aus "Prozess Teams läuft nicht."
c: - Überprüfe ob in deinem Scriptverzeichnis die Datei "Scriptlog.log" existiert. Falls nicht erstelle die Datei mit dem Inhalt "Script gestartet"
#>

# Solution a & b:
if (Get-Process -Name *Teams* -ErrorAction SilentlyContinue) {
    Get-Process -Name *Teams* | Select-Object -Property Id
} else {
    Write-Host "Prozess Teams läuft nicht."
}

# Solution c:
if(Test-Path -Path "$PSScriptRoot\Scriptlog.log"){
    Write-Output "File exists"
}else{
    New-Item -Path $PSScriptRoot -Name "Scriptlog.log" -ItemType "file" -Value "Script gestartet"
}
