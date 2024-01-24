<#
Übung 6a: - Schreibe eine Funktion die ein Logfile in deinem Übungsverzeichnis schreibt.
            Als Parameter soll die Lognachricht, der Nachrichttyp(Info oder Error) mitgegeben werden.
            Die Lognachricht soll folgendes Format haben: 22.08.2023 07:16 - Info - Das ist die Lognachricht
Übung 6b: - Schreibe die Dateiennamen eures %TEMP% Verzeichnisses mit Hilfe der Funktion in das Logfile.
#>

# Shared Function
function writeToFile {
    param(
        $content
    )
    if(Test-Path -Path "$PSScriptRoot\Logfile.log"){
        Set-Content -Path "$PSScriptRoot\Logfile.log" -Value $content
    }else{
        New-Item -Path $PSScriptRoot -Name "Logfile.log" -ItemType "file" -Value $content
    }
}


# Solution a:
function writeMessageToLogFile {
    param(
        [string]$message,
        [Parameter()]
        [ValidateSet("Info","Error")]
        [string]$type
    )
    $date = Get-Date -Format "dd.MM.yyyy HH:mm"    
    writeToFile "$date - $type - $message"
}

#writeMessageToLogFile -message "Das ist die Lognachricht" -type "Info"
#writeMessageToLogFile -message "Das ist die Lognachricht" -type "Error"

# Solution b:
function writeFilesToLogFile{
    param(
        [string] $directory = $env:TEMP
    )

    $files = Get-ChildItem -Path $directory | Select-Object -Property Name
    writeToFile $files.Name
}

#writeFilesToLogFile
#writeFilesToLogFile C:\Users\seraf\OneDrive\Desktop\DigitalTalentsProgram\Kurse-Code-Track