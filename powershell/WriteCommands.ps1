<#
.SYNOPSIS
    Demonstrates all the main PowerShell write/output commands with examples and reference options.

.DESCRIPTION
    This script shows how to use Write-Host, Write-Output, Write-Error, Write-Verbose,
    Write-Information, Write-Warning, and Write-Debug.
    Includes explanations for common action preferences and parameters.

# Reference Options:

# 1. ErrorAction / InformationAction / WarningAction / Verbose / Debug
#    Controls behavior of non-terminating errors or messages.
#    Common values:
#       - Continue : Show message and continue (default)
#       - SilentlyContinue : Ignore the message/error
#       - Stop : Treat as terminating error (can trigger catch block)
#       - Inquire : Ask user interactively
#       - Ignore : Ignore completely
#       - Suspend : Used in workflows

# Example usage:
#    Get-ChildItem -Path C:\NotExist -ErrorAction Stop
#    Write-Information "Message" -InformationAction Continue
#    Write-Warning "Message" -WarningAction SilentlyContinue
#    Write-Verbose "Verbose info" -Verbose
#    Write-Debug "Debug info" -Debug

# You can also set preferences globally for the script:
#    $ErrorActionPreference = 'Stop'
#    $VerbosePreference = 'Continue'
#    $DebugPreference = 'Continue'
#    $WarningPreference = 'Continue'
#    $InformationPreference = 'Continue'
#    $InformationActionPreference = 'Continue'  # For PS 5.1+

# ===========================
# Script demonstrating write commands
# ===========================

# 1. Write-Host
# Writes directly to the console. Not captured in pipeline. Can color output.
Write-Host "Write-Host: Hello World!" -ForegroundColor Cyan

# 2. Write-Output
# Sends objects to the pipeline. Can be captured by variables or piped to other commands.
Write-Output "Write-Output: Sending to pipeline"

# 3. Write-Error
# Writes an error message to the error stream. Controlled by -ErrorAction
Write-Error "Write-Error: Something went wrong!" -ErrorAction Continue

# 4. Write-Verbose
# Writes a verbose message. Shown only if -Verbose or $VerbosePreference = 'Continue'
Write-Verbose "Write-Verbose: Verbose message here"

# 5. Write-Information
# Writes to the information stream. Controlled by -InformationAction
Write-Information "Write-Information: Informational message" -InformationAction Continue

# 6. Write-Warning
# Writes a warning message (yellow). Controlled by -WarningAction
Write-Warning "Write-Warning: Be careful!" -WarningAction Continue

# 7. Write-Debug
# Writes a debug message. Visible only if -Debug or $DebugPreference = 'Continue'
Write-Debug "Write-Debug: Debugging info"

# ===========================
# Example function demonstrating all writes with preferences
# ===========================
function Test-WriteCommands {
    param([string]$Name)

    # Optional: Set preferences for this function
    $ErrorActionPreference = 'Continue'
    $VerbosePreference = 'Continue'
    $DebugPreference = 'Continue'
    $WarningPreference = 'Continue'
    $InformationPreference = 'Continue'

    Write-Host "Hello, $Name! (Write-Host)"
    Write-Output "Pipeline value: $Name (Write-Output)"
    Write-Warning "Warning: $Name might have an issue (Write-Warning)"
    Write-Error "Error: $Name caused an error (Write-Error)"
    Write-Information "Info: Processing $Name (Write-Information)"
    Write-Verbose "Verbose: $Name is being processed (Write-Verbose)"
    Write-Debug "Debug: Variable value = $Name (Write-Debug)"
}

# Calling the function
# Run with: -Verbose -Debug to see all messages
Test-WriteCommands -Name "Alice"
