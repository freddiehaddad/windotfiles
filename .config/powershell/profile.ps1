# 1Password (Wezterm nightly overrides this value)
$env:SSH_AUTH_SOCK="\\.\pipe\openssh-ssh-agent"

# For mdformat 
$env:PATH += ";C:\Users\fhaddad\AppData\Roaming\Python\Python312\Scripts;C:\Users\fhaddad\.local\bin;"

# For C/CPP
$VCToolsVersion = "14.44.35207"
$WindowsSdkVersion = "10.0.26100.0"
$DotNetFrameworkVersion = "4.0.30319"
$env:PATH += ";C:\Program Files (x86)\Microsoft Visual Studio\2022\BuildTools\VC\Tools\MSVC\$VCToolsVersion\bin\HostX64\x64;C:\Program Files (x86)\Microsoft Visual Studio\2022\BuildTools\MSBuild\Current\bin\Roslyn;C:\Program Files (x86)\Windows Kits\10\bin\$WindowsSdkVersion\\x64;C:\Program Files (x86)\Windows Kits\10\bin\\x64;C:\Program Files (x86)\Microsoft Visual Studio\2022\BuildTools\\MSBuild\Current\Bin\amd64;C:\Windows\Microsoft.NET\Framework64\v$DotNetFrameworkVersion;C:\Program Files (x86)\Microsoft Visual Studio\2022\BuildTools\Common7\IDE\;C:\Program Files (x86)\Microsoft Visual Studio\2022\BuildTools\Common7\Tools\;C:\Program Files (x86)\Microsoft Visual Studio\2022\BuildTools\VC\Tools\Llvm\x64\bin;C:\Program Files (x86)\Microsoft Visual Studio\2022\BuildTools\Common7\IDE\CommonExtensions\Microsoft\CMake\CMake\bin;C:\Program Files (x86)\Microsoft Visual Studio\2022\BuildTools\Common7\IDE\CommonExtensions\Microsoft\CMake\Ninja;"
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
$env:VISUAL = "nvim"
$env:EDITOR = $env:VISUAL

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

# Set the main FZF theme with Rust colors
$env:FZF_DEFAULT_OPTS = @"
--color=bg+:#2d2d2d,bg:#1a1a1a,spinner:#ce422b,hl:#ce422b
--color=fg:#d4d4d4,header:#ce422b,info:#a33a2a,pointer:#ce422b
--color=marker:#ce422b,fg+:#ffffff,prompt:#ce422b,hl+:#ff6b47
--color=border:#555555,gutter:#1a1a1a,query:#d4d4d4
--border=sharp
--preview-window=border-sharp
--height=40%
--layout=reverse
--info=inline
--prompt='🦀 '
--pointer='▶'
--marker='✓'
"@

# Starship
$env:STARSHIP_CONFIG = "$env:USERPROFILE\.config\starship\starship.toml"
Invoke-Expression (&starship init powershell)

# Powershell color adjustments
Set-PSReadLineOption -Colors @{ InlinePrediction = "Black" }
$PSStyle.FileInfo.Directory = "`e[94m"

# Invoke-Expression (& { (wezterm shell-completion --shell power-shell | Out-String) })

# keep this line last
Invoke-Expression (& { (zoxide init powershell | Out-String) })
