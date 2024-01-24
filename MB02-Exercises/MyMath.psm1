function MySum {
    param(
        [int]$a,
        [int]$b
    )
    return $a + $b
}

function MySub {
    param(
        [int]$a,
        [int]$b
    )
    return $a - $b
}

function MyDiv {
    param(
        [int]$a,
        [int]$b
    )
    return $a / $b
}

function MyMul {
    param(
        [int]$a,
        [int]$b
    )
    return $a * $b
}

Export-ModuleMember -Function MyMul, MyDiv, MySub, MySum