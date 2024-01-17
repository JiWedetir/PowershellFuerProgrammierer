<#
a: - Schreibe alle Dateinamen und ihre Dateigrösse des Verzeichnisses C:\Windows\System32 in ein Array
b: - Erstelle ein neues Array mit allen Files die grösser als 3MB sind. Speichere nur Dateinamen und Dateigrösse
c: - Loope durch alle laufenden Prozesse und beende die Schlaufe beim ersten Prozess der im Namen mit einem O beginnt. 
            Gebe den Namen des Prozesses und Anzahl Durchgänge auf der Konsole aus.
#>

# Solution a:
$files = Get-ChildItem -Path C:\Windows\System32 | Select-Object -Property Name, Length
<# Write-Output $files #>

# Solution b:
$bigFiles = @()
foreach ($file in $files) {
    if ($file.Length -gt 3MB) {
        $bigFiles += $file
    }
}
Write-Output $bigFiles | Sort-Object Length -Descending

# Solution c:
$processes = Get-Process
$counter = 0
foreach ($process in $processes) {
    $counter++
    if ($process.Name.StartsWith('O')) {
        Write-Output "Process name: $($process.Name), number of iterations: $counter"
        break
    }
}
