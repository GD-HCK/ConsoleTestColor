#Requires -PSEdition Core

$env:TERM = "xterm-256color"

function Write-GitHubOutput {
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

Write-GitHubOutput "Hello, World!" -Color "Green"
Write-GitHubOutput "Hello, World!" -Color "Red"
Write-GitHubOutput "Hello, World!" -Color "Yellow"
Write-GitHubOutput "Hello, World!" -Color "Blue"
Write-GitHubOutput "Hello, World!" -Color "Magenta"
Write-GitHubOutput "Hello, World!" -Color "Cyan"

Write-GitHubOutput " "

Write-GitHubOutput "This is a simple " -Color "Green" -NoNewline; Write-GitHubOutput "message" -Color Blue
