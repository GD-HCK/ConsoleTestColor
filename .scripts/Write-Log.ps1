$env:TERM = "xterm-256color"

function Write-Log {
    param (
        [Parameter(Position = 0, Mandatory = $true)]
        [string]$Message,
        [string]$Color = $null,
        [switch]$NoNewline
    )

    # Define ANSI escape codes for colors
    $Red = "`e[31m"
    $Cyan = "`e[36m"
    $Green = "`e[32m"
    $Yellow = "`e[33m"
    $Magenta = "`e[35m"
    $Blue = "`e[34m"
    $Reset = "`e[0m"

    switch ($Color) {
        "Red" { $Message = "${Red}$Message${Reset}" }
        "Green" { $Message = "${Green}$Message${Reset}" }
        "Yellow" { $Message = "${Yellow}$Message${Reset}" }
        "Blue" { $Message = "${Blue}$Message${Reset}" }
        "Magenta" { $Message = "${Magenta}$Message${Reset}" }
        "Cyan" { $Message = "${Cyan}$Message${Reset}" }
    }
    if ($NoNewline) {
        [Console]::Write($Message)
    }
    else {
        [Console]::WriteLine($Message)
    }
}

Write-Log "Hello, World!" -NoNewline
Write-Log "Hello, World!" -Color "Green"
Write-Log "Hello, World!" -Color "Red"
Write-Log "Hello, World!" -Color "Yellow"
Write-Log "Hello, World!" -Color "Blue"
Write-Log "Hello, World!" -Color "Magenta"
Write-Log "Hello, World!" -Color "Cyan"