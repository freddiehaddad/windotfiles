# Visual Studio Build Tools
$env:INCLUDE = "C:\Program Files (x86)\Microsoft Visual Studio\2022\BuildTools\VC\Tools\MSVC\14.43.34808\include;C:\Program Files (x86)\Microsoft Visual Studio\2022\BuildTools\VC\Auxiliary\VS\include;C:\Program Files (x86)\Windows Kits\10\include\10.0.22621.0\ucrt;C:\Program Files (x86)\Windows Kits\10\\include\10.0.22621.0\\um;C:\Program Files (x86)\Windows Kits\10\\include\10.0.22621.0\\shared;C:\Program Files (x86)\Windows Kits\10\\include\10.0.22621.0\\winrt;C:\Program Files (x86)\Windows Kits\10\\include\10.0.22621.0\\cppwinrt"
$env:LIB = "C:\Program Files (x86)\Microsoft Visual Studio\2022\BuildTools\VC\Tools\MSVC\14.43.34808\lib\x64;C:\Program Files (x86)\Windows Kits\10\lib\10.0.22621.0\ucrt\x64;C:\Program Files (x86)\Windows Kits\10\\lib\10.0.22621.0\\um\x64"
$env:PATH += ";C:\Program Files (x86)\Microsoft Visual Studio\2022\BuildTools\VC\Tools\MSVC\14.43.34808\bin\HostX64\x64;C:\Program Files (x86)\Microsoft Visual Studio\2022\BuildTools\Common7\IDE\VC\VCPackages;C:\Program Files (x86)\Microsoft Visual Studio\2022\BuildTools\Common7\IDE\CommonExtensions\Microsoft\TestWindow;C:\Program Files (x86)\Microsoft Visual Studio\2022\BuildTools\MSBuild\Current\bin\Roslyn;C:\Program Files (x86)\Microsoft Visual Studio\2022\BuildTools\Common7\IDE\Extensions\Microsoft\CodeCoverage.Console;C:\Program Files (x86)\Windows Kits\10\bin\10.0.22621.0\\x64;C:\Program Files (x86)\Windows Kits\10\bin\\x64;C:\Program Files (x86)\Microsoft Visual Studio\2022\BuildTools\\MSBuild\Current\Bin\amd64;C:\Windows\Microsoft.NET\Framework64\v4.0.30319;C:\Program Files (x86)\Microsoft Visual Studio\2022\BuildTools\Common7\IDE\;C:\Program Files (x86)\Microsoft Visual Studio\2022\BuildTools\Common7\Tools\;C:\Program Files (x86)\Microsoft Visual Studio\2022\BuildTools\Common7\IDE\CommonExtensions\Microsoft\CMake\CMake\bin;C:\Program Files (x86)\Microsoft Visual Studio\2022\BuildTools\Common7\IDE\CommonExtensions\Microsoft\CMake\Ninja;C:\Program Files (x86)\Microsoft Visual Studio\2022\BuildTools\Common7\IDE\VC\Linux\bin\ConnectionManagerExe;"

# XStore
$env:INETROOT="s:\Azure\Storage\XStore"
$env:INCLUDE += ";T:\CxCache\Storage-vcpkg.mts.release-x64.14.42.34440.1-4f746bc66\installed\x64mtsr\include"

# 1Password (Wezterm nightly overrides this value)
$env:SSH_AUTH_SOCK="\\.\pipe\openssh-ssh-agent"

# For mdformat 
$env:PATH += "C:\Users\fhaddad\AppData\Roaming\Python\Python312\Scripts;C:\Users\fhaddad\.local\bin;"

#f45873b3-b655-43a6-b217-97c00aa0db58 PowerToys CommandNotFound module
# Import-Module -Name Microsoft.WinGet.CommandNotFound
#f45873b3-b655-43a6-b217-97c00aa0db58

# Git tab completion
# PowerShellGet\Install-Module posh-git -Scope CurrentUser -Force
# Import-Module posh-git

# Rustup completions
# rustup completions powershell | Out-String | Invoke-Expression

# 1Password
# op completion powershell | Out-String | Invoke-Expression

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

# https://vitormv.github.io/fzf-themes
$env:FZF_DEFAULT_OPTS = "--color=fg:#e8e8d3,fg+:#e8e8d3,bg:#302028,bg+:#2b5b77,hl:#e6a75a,hl+:#e6a75a,info:#87d7ff,marker:#535d66,prompt:#e6a75a,spinner:#87d7ff,pointer:#e6a75a,header:#b0d0f0,gutter:#302028,border:#302028,scrollbar:#9098a0,label:#b0d0f0,query:#e8e8d3 --border='sharp' --border-label=' Fuzzy Search ' --border-label-pos='0' --preview-window='border-sharp' --prompt='  ' --marker=' ' --pointer='' --separator='─' --scrollbar='█' --info='right' --height='50%'"

# Starship
$env:STARSHIP_CONFIG = "$env:USERPROFILE\.config\starship\starship.toml"
Invoke-Expression (&starship init powershell)

# Powershell color adjustments
Set-PSReadLineOption -Colors @{ InlinePrediction = "Black" }
$PSStyle.FileInfo.Directory = "`e[94m"

# Invoke-Expression (& { (wezterm shell-completion --shell power-shell | Out-String) })

# keep this line last
Invoke-Expression (& { (zoxide init powershell | Out-String) })
