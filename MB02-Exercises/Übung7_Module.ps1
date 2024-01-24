<#
Übung 7a: - Erstelle ein Module Math mit den Funktionen "Sum", "Sub", "Div" und "Mul"
             Als Beispiel fuer die Methode Mul soll folgender String returned werden: 3 * 9 = 27
             Erstelle ein Script, in welchem das Module geladen wird und rufe alle Funktionen auf
Übung 7b: - Gib alle Funktionen des Moduls Math auf die Konsole aus
#>


# Solution a:
Import-Module -Name "$PSScriptRoot\MyMath.psm1"

MySum -a 3 -b 9
MySub -a 9 -b 3
MyMul -a 3 -b 9
MyDiv -a 9 -b 3

# Solution b:
Get-Command -Module MyMath