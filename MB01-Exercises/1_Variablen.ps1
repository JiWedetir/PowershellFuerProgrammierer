<#
Fuehre das Script aus und finde heraus welche Variable welchen Typ hat.
#>

$Var1 = "Scripting mit Powershell"
$Var2 = "123"
$Var3 = 123
$Var4 = "ÜBUNG1","ÜBUNG2","ÜBUNG3","ÜBUNG4"
$Var5 = 1 -eq 2
$Var6 = @{
    Name = "GBSSG"
    Modul = "Scripting mit PowerShell"}
$Var7 = Get-Date



Write-Output $Var1.GetType()        #String
Write-Output $Var2.GetType()        #String
Write-Output $Var3.GetType()        #Int32
Write-Output $Var4.GetType()        #Object[]
Write-Output $Var5.GetType()        #Boolean
Write-Output $Var6.GetType()        #Hashtable
Write-Output $Var7.GetType()        #DateTime
