# Function to output with color

This is a simple PowerShell function that you can use with GitHub Actions to print the output with colour.

## Usage

To use this function just call it from your powershell console like so

```powershell
Write-Log "This is a simple message" -Color Magenta

# Output
# This is a simple message
```

You can also concatenate multiple lines by doing so

```powershell
Write-Log "This is a simple " -Color Magenta -NoNewLine;
Write-Log "message"

# Output
# This is a simple message
```
