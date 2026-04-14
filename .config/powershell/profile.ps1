# For mdformat 
$env:PATH += ";C:\Users\fhaddad\AppData\Roaming\Python\Python312\Scripts;C:\Users\fhaddad\.local\bin"

# For C/CPP development
# Automatically load MSVC Build Tools environment
$vswhere = "${env:ProgramFiles(x86)}\Microsoft Visual Studio\Installer\vswhere.exe"
$vsPath = & $vswhere -latest -products * -requires Microsoft.Component.MSBuild -property installationPath
if ($vsPath) {
	$vsDevCmd = Join-Path $vsPath "Common7\Tools\VsDevCmd.bat"

	cmd /c "`"$vsDevCmd`" -no_logo -arch=x64 && set" | ForEach-Object {
		if ($_ -match "=") {
			$name, $value = $_ -split "=", 2
			[System.Environment]::SetEnvironmentVariable($name, $value)
		}
	}
}

# For Treesitter installed via Rust/Cargo
# cargo install tree-sitter-cli
$env:LIBCLANG_PATH = "C:\Program Files (x86)\Microsoft Visual Studio\2022\BuildTools\VC\Tools\Llvm\x64\bin"

#f45873b3-b655-43a6-b217-97c00aa0db58 PowerToys CommandNotFound module
# Import-Module -Name Microsoft.WinGet.CommandNotFound
#f45873b3-b655-43a6-b217-97c00aa0db58

# Git tab completion
# PowerShellGet\Install-Module posh-git -Scope CurrentUser -Force
# Import-Module posh-git

# Rustup completions
rustup completions powershell | Out-String | Invoke-Expression

# 1Password
op completion powershell | Out-String | Invoke-Expression

# EZA theme directory
# $env:EZA_CONFIG_DIR = "$env:USERPROFILE\.config\eza"
# $env:EZA_ICON_SPACING = "2"
# $env:EZA_ICONS_AUTO = $true

# EZA Shortcuts (aliases)
Remove-Item Alias:ls
function ls {
    param (
        [Parameter(ValueFromRemainingArguments=$true)]
        [string[]]$_args
    )
    eza @_args
}

function ll {
    param (
        [Parameter(ValueFromRemainingArguments=$true)]
        [string[]]$_args
    )
    eza -l @_args
}

function lla {
    param (
        [Parameter(ValueFromRemainingArguments=$true)]
        [string[]]$_args
    )
    eza -l -a @_args
}

function lt {
    param (
        [Parameter(ValueFromRemainingArguments=$true)]
        [string[]]$_args
    )
    eza --tree @_args
}

# On new setups, be sure to type "bat cache --build"
Set-Alias -Name cat -Value bat

# Install-Module -Name PSFzf
Set-PsFzfOption -PSReadlineChordReverseHistory 'Ctrl+r'

# Set the main FZF theme
. (Join-Path $env:USERPROFILE .config powershell ferric.fzf.ps1)

# Load FZF functions
. (Join-Path $env:USERPROFILE .config powershell fzf-functions.ps1)

# Set Powershell theme
# . (Join-Path $env:USERPROFILE .config powershell pwsh-neofusion.ps1)

# Load the Azure helper functions
. (Join-Path $env:USERPROFILE .config powershell azure-helpers.ps1)

Invoke-Expression (&starship init powershell)

# keep this line last
Invoke-Expression (& { (zoxide init powershell | Out-String) })
