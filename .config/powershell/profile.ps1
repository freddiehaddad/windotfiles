# 1Password (Wezterm nightly overrides this value)
$env:SSH_AUTH_SOCK="\\.\pipe\openssh-ssh-agent"

# For mdformat 
$env:PATH += ";C:\Users\fhaddad\AppData\Roaming\Python\Python312\Scripts;C:\Users\fhaddad\.local\bin"

# For C/CPP
$VCToolsVersion = "14.44.35207"
$WindowsSdkVersion = "10.0.26100.0"
$DotNetFrameworkVersion = "4.0.30319"
$env:PATH += ";C:\Program Files (x86)\Microsoft Visual Studio\2022\BuildTools\VC\Tools\MSVC\$VCToolsVersion\bin\HostX64\x64;C:\Program Files (x86)\Microsoft Visual Studio\2022\BuildTools\MSBuild\Current\bin\Roslyn;C:\Program Files (x86)\Windows Kits\10\bin\$WindowsSdkVersion\\x64;C:\Program Files (x86)\Windows Kits\10\bin\\x64;C:\Program Files (x86)\Microsoft Visual Studio\2022\BuildTools\\MSBuild\Current\Bin\amd64;C:\Windows\Microsoft.NET\Framework64\v$DotNetFrameworkVersion;C:\Program Files (x86)\Microsoft Visual Studio\2022\BuildTools\Common7\IDE\;C:\Program Files (x86)\Microsoft Visual Studio\2022\BuildTools\Common7\Tools\;C:\Program Files (x86)\Microsoft Visual Studio\2022\BuildTools\VC\Tools\Llvm\x64\bin;C:\Program Files (x86)\Microsoft Visual Studio\2022\BuildTools\Common7\IDE\CommonExtensions\Microsoft\CMake\CMake\bin;C:\Program Files (x86)\Microsoft Visual Studio\2022\BuildTools\Common7\IDE\CommonExtensions\Microsoft\CMake\Ninja"
$env:INCLUDE = "C:\Program Files (x86)\Microsoft Visual Studio\2022\BuildTools\VC\Tools\MSVC\$VCToolsVersion\include;C:\Program Files (x86)\Microsoft Visual Studio\2022\BuildTools\VC\Auxiliary\VS\include;C:\Program Files (x86)\Windows Kits\10\include\$WindowsSdkVersion\ucrt;C:\Program Files (x86)\Windows Kits\10\\include\$WindowsSdkVersion\\um;C:\Program Files (x86)\Windows Kits\10\\include\$WindowsSdkVersion\\shared;C:\Program Files (x86)\Windows Kits\10\\include\$WindowsSdkVersion\\winrt;C:\Program Files (x86)\Windows Kits\10\\include\$WindowsSdkVersion\\cppwinrt"
$env:LIB = "C:\Program Files (x86)\Microsoft Visual Studio\2022\BuildTools\VC\Tools\MSVC\$VCToolsVersion\lib\x64;C:\Program Files (x86)\Windows Kits\10\lib\$WindowsSdkVersion\ucrt\x64;C:\Program Files (x86)\Windows Kits\10\\lib\$WindowsSdkVersion\\um\x64"

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

# Neovim
#$env:VISUAL = "nvim"
#$env:EDITOR = $env:VISUAL

# LSD Shortcuts (aliases)
Remove-Item Alias:ls
function ls {
    param (
        [Parameter(ValueFromRemainingArguments=$true)]
        [string[]]$_args
    )
    lsd @_args
}

function ll {
    param (
        [Parameter(ValueFromRemainingArguments=$true)]
        [string[]]$_args
    )
    lsd -l @_args
}

function lla {
    param (
        [Parameter(ValueFromRemainingArguments=$true)]
        [string[]]$_args
    )
    lsd -l -a @_args
}

function lt {
    param (
        [Parameter(ValueFromRemainingArguments=$true)]
        [string[]]$_args
    )
    lsd --tree @_args
}

Set-Alias -Name cat -Value bat
$env:BAT_THEME="ansi"

# Install-Module -Name PSFzf
Set-PsFzfOption -PSReadlineChordReverseHistory 'Ctrl+r'

# Set the main FZF theme
$env:FZF_DEFAULT_OPTS = @"
--color=fg:#DCD7BA,bg:#202020,hl:#85a8da
--color=fg+:#ffffff,bg+:#363636,hl+:#81c0da
--color=info:#E6C384,prompt:#a584c0,pointer:#FF9E3B
--color=marker:#98BB6C,spinner:#7cd0bf,header:#7E9CD8
--color=border:#505050,label:#C8C093,query:#DCD7BA
--color=gutter:#202020,scrollbar:#585858,preview-bg:#1a1a1a
--color=preview-fg:#DCD7BA,preview-border:#505050
--border='rounded'
--border-label-pos='3'
--preview-window='border-rounded'
--prompt='🦀 '
--marker='✓'
--pointer='▶'
--separator='─'
--scrollbar='│'
--layout='reverse'
--info='right'
--height=40%
--multi
--preview-window='right:50%:wrap'
--bind='ctrl-/:toggle-preview'
--bind='ctrl-u:preview-half-page-up'
--bind='ctrl-d:preview-half-page-down'
--bind='ctrl-f:preview-page-down'
--bind='ctrl-b:preview-page-up'
--bind='shift-up:preview-up'
--bind='shift-down:preview-down'
"@

# Starship
$env:STARSHIP_CONFIG = "$env:USERPROFILE\.config\starship\starship.toml"
Invoke-Expression (&starship init powershell)

# Powershell color adjustments
Set-PSReadLineOption -Colors @{
    InlinePrediction = '#585858'           # Ghost text
    Command          = '#85a8da'           # Commands (sky blue)
    Parameter        = '#9CDCFE'           # Parameters (light blue)
    Operator         = '#f1c57e'           # Operators (gold)
    Variable         = '#e8e4ca'           # Variables (cream)
    String           = '#98BB6C'           # Strings (green)
    Number           = '#FF9488'           # Numbers (salmon)
    Type             = '#7cd0bf'           # Types (teal)
    Comment          = '#727169'           # Comments (gray)
    Keyword          = '#569cd6'           # Keywords (blue)
    Error            = '#E82424'           # Errors (red)
    Selection        = '#283c57'           # Selection background
}

# Customize Get-ChildItem colors to match Nightingale theme
$PSStyle.FileInfo.Directory = "`e[38;2;129;192;218m"           # Bright blue (#81c0da)
$PSStyle.FileInfo.SymbolicLink = "`e[38;2;163;212;213m"        # Bright cyan (#A3D4D5)
$PSStyle.FileInfo.Executable = "`e[38;2;174;217;122m"          # Bright green (#aed97a)
# $PSStyle.FileInfo.Archive = "`e[38;2;230;195;132m"             # Gold (#E6C384)
# $PSStyle.FileInfo.Hidden = "`e[38;2;114;113;105m"              # Gray (#727169)

# Invoke-Expression (& { (wezterm shell-completion --shell power-shell | Out-String) })

# keep this line last
Invoke-Expression (& { (zoxide init powershell | Out-String) })
