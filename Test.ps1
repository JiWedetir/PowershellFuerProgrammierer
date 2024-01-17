<# $name = Read-Host "Please enter your name"
Write-Host "Hello, $name!" #>

<# $operand1 = Read-Host "Enter the first number"
$operator = Read-Host "Enter the operator (+, -, *, /)"
$operand2 = Read-Host "Enter the second number"

switch ($operator) {
    "+" { $result = $operand1 + $operand2 }
    "-" { $result = $operand1 - $operand2 }
    "*" { $result = $operand1 * $operand2 }
    "/" { $result = $operand1 / $operand2 }
    default { Write-Host "Invalid operator" }
}

Write-Host "Result: $result" #>

Write-Host "Script root: $PSScriptRoot"