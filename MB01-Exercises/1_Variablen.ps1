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



$Var1.GetType()        #String
$Var2.GetType()        #String
$Var3.GetType()        #Int32
$Var4.GetType()        #Object[]
$Var5.GetType()        #Boolean
$Var6.GetType()        #Hashtable
$Var7.GetType()        #DateTime
