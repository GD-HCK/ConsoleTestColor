# Function to output with colour

This is a simple PowerShell function that you can use with GitHub Actions to print the output with colour.

## Usage

To use this function just call it from your powershell console like so

```powershell
Write-GitHubOutput "This is a simple message" -Color Magenta

# Output
# This is a simple message
```

You can also concatenate multiple lines by doing so

```powershell
Write-GitHubOutput "This is a simple " -Color Magenta -NoNewLine;
Write-GitHubOutput "message"

# Output
# This is a simple message
```
