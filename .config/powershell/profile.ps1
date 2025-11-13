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

# EZA theme directory
$env:EZA_CONFIG_DIR = "$env:USERPROFILE\.config\eza"
# $env:EZA_ICON_SPACING = "2"
# $env:EZA_ICONS_AUTO = $true

# LSD Shortcuts (aliases)
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

Set-Alias -Name cat -Value bat
$env:BAT_THEME="ansi"

# Install-Module -Name PSFzf
Set-PsFzfOption -PSReadlineChordReverseHistory 'Ctrl+r'

# Set the main FZF theme
$env:FZF_DEFAULT_OPTS = @"
--color=fg:#e8e3df,bg:#242018,hl:#d4a574
--color=fg+:#e8e3df,bg+:#3a3430,hl+:#d4a574
--color=info:#8ba0b8,prompt:#d4a574,pointer:#d4a574
--color=marker:#a5b880,spinner:#b88fa0,header:#8ba0b8
--color=border:#6b5d54,label:#e8e3df,query:#e8e3df
--color=gutter:#242018
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

# PSReadLine Colors (command line editing)
Set-PSReadLineOption -Colors @{
    # Command line input
    Command            = '#8ba0b8'      # Secondary - Commands
    Parameter          = '#e8e3df'      # Foreground - Parameters
    Operator           = '#d4a574'      # Primary - Operators
    Variable           = '#b88fa0'      # Accent - Variables
    String             = '#a5b880'      # Green - Strings
    Number             = '#d4a574'      # Primary/Orange - Numbers
    Type               = '#80b8a5'      # Cyan - Types
    Comment            = '#6b5d54'      # Step7 - Comments
    Keyword            = '#d47474'      # Red - Keywords
    Member             = '#e6b886'      # Yellow - Members
    
    # Syntax highlighting
    Default            = '#e8e3df'      # Foreground
    Emphasis           = '#d4a574'      # Primary - Emphasized text
    Error              = '#d47474'      # Red - Errors
    
    # Selection and search
    Selection          = '#2e2820'      # Step3 - Selection background
    InlinePrediction   = '#6b5d54'      # Step7 - Predictive IntelliSense
    
    # List prediction (menu completion)
    ListPrediction          = '#d4a574'      # Primary
    ListPredictionSelected  = '#2e2820'      # Step3 - Selection background
}

# Set prediction view style
# Set-PSReadLineOption -PredictionViewStyle ListView

# Directory colors
$PSStyle.FileInfo.Directory = "`e[38;2;139;160;184m"           # Secondary (#8ba0b8)

# Extension-based colors
$PSStyle.FileInfo.Extension['.ps1'] = "`e[38;2;212;165;116m"   # Primary
$PSStyle.FileInfo.Extension['.psm1'] = "`e[38;2;212;165;116m"  # Primary
$PSStyle.FileInfo.Extension['.psd1'] = "`e[38;2;212;165;116m"  # Primary

# Archives
$PSStyle.FileInfo.Extension['.zip'] = "`e[38;2;184;143;160m"   # Accent
$PSStyle.FileInfo.Extension['.7z'] = "`e[38;2;184;143;160m"    # Accent
$PSStyle.FileInfo.Extension['.tar'] = "`e[38;2;184;143;160m"   # Accent
$PSStyle.FileInfo.Extension['.gz'] = "`e[38;2;184;143;160m"    # Accent
$PSStyle.FileInfo.Extension['.rar'] = "`e[38;2;184;143;160m"   # Accent

# Documents
$PSStyle.FileInfo.Extension['.txt'] = "`e[38;2;230;184;134m"   # Yellow
$PSStyle.FileInfo.Extension['.md'] = "`e[38;2;230;184;134m"    # Yellow
$PSStyle.FileInfo.Extension['.doc'] = "`e[38;2;230;184;134m"   # Yellow
$PSStyle.FileInfo.Extension['.docx'] = "`e[38;2;230;184;134m"  # Yellow
$PSStyle.FileInfo.Extension['.pdf'] = "`e[38;2;230;184;134m"   # Yellow

# Config files
$PSStyle.FileInfo.Extension['.json'] = "`e[38;2;165;184;128m"  # Green
$PSStyle.FileInfo.Extension['.yaml'] = "`e[38;2;165;184;128m"  # Green
$PSStyle.FileInfo.Extension['.yml'] = "`e[38;2;165;184;128m"   # Green
$PSStyle.FileInfo.Extension['.toml'] = "`e[38;2;165;184;128m"  # Green
$PSStyle.FileInfo.Extension['.xml'] = "`e[38;2;165;184;128m"   # Green
$PSStyle.FileInfo.Extension['.ini'] = "`e[38;2;165;184;128m"   # Green
$PSStyle.FileInfo.Extension['.conf'] = "`e[38;2;165;184;128m"  # Green

# Code files
$PSStyle.FileInfo.Extension['.js'] = "`e[38;2;128;184;165m"    # Cyan
$PSStyle.FileInfo.Extension['.ts'] = "`e[38;2;128;184;165m"    # Cyan
$PSStyle.FileInfo.Extension['.py'] = "`e[38;2;128;184;165m"    # Cyan
$PSStyle.FileInfo.Extension['.rb'] = "`e[38;2;128;184;165m"    # Cyan
$PSStyle.FileInfo.Extension['.go'] = "`e[38;2;128;184;165m"    # Cyan
$PSStyle.FileInfo.Extension['.rs'] = "`e[38;2;128;184;165m"    # Cyan
$PSStyle.FileInfo.Extension['.java'] = "`e[38;2;128;184;165m"  # Cyan
$PSStyle.FileInfo.Extension['.c'] = "`e[38;2;128;184;165m"     # Cyan
$PSStyle.FileInfo.Extension['.cpp'] = "`e[38;2;128;184;165m"   # Cyan
$PSStyle.FileInfo.Extension['.cs'] = "`e[38;2;128;184;165m"    # Cyan
$PSStyle.FileInfo.Extension['.lua'] = "`e[38;2;128;184;165m"   # Cyan

# Web files
$PSStyle.FileInfo.Extension['.html'] = "`e[38;2;212;116;116m"  # Red
$PSStyle.FileInfo.Extension['.css'] = "`e[38;2;212;116;116m"   # Red
$PSStyle.FileInfo.Extension['.scss'] = "`e[38;2;212;116;116m"  # Red
$PSStyle.FileInfo.Extension['.vue'] = "`e[38;2;212;116;116m"   # Red
$PSStyle.FileInfo.Extension['.jsx'] = "`e[38;2;212;116;116m"   # Red
$PSStyle.FileInfo.Extension['.tsx'] = "`e[38;2;212;116;116m"   # Red

# Executables
$PSStyle.FileInfo.Extension['.exe'] = "`e[38;2;212;165;116m"   # Primary
$PSStyle.FileInfo.Extension['.dll'] = "`e[38;2;212;165;116m"   # Primary
$PSStyle.FileInfo.Extension['.bat'] = "`e[38;2;212;165;116m"   # Primary
$PSStyle.FileInfo.Extension['.cmd'] = "`e[38;2;212;165;116m"   # Primary
$PSStyle.FileInfo.Extension['.sh'] = "`e[38;2;212;165;116m"    # Primary

# Images
$PSStyle.FileInfo.Extension['.jpg'] = "`e[38;2;184;143;160m"   # Accent
$PSStyle.FileInfo.Extension['.jpeg'] = "`e[38;2;184;143;160m"  # Accent
$PSStyle.FileInfo.Extension['.png'] = "`e[38;2;184;143;160m"   # Accent
$PSStyle.FileInfo.Extension['.gif'] = "`e[38;2;184;143;160m"   # Accent
$PSStyle.FileInfo.Extension['.svg'] = "`e[38;2;184;143;160m"   # Accent
$PSStyle.FileInfo.Extension['.ico'] = "`e[38;2;184;143;160m"   # Accent

# Git
$PSStyle.FileInfo.Extension['.git'] = "`e[38;2;107;93;84m"      # Step7
$PSStyle.FileInfo.Extension['.gitignore'] = "`e[38;2;107;93;84m" # Step7
$PSStyle.FileInfo.Extension['.gitattributes'] = "`e[38;2;107;93;84m" # Step7

# Formatting styles
$PSStyle.Formatting.FormatAccent = "`e[38;2;212;165;116m"      # Primary
$PSStyle.Formatting.TableHeader = "`e[38;2;139;160;184m"       # Secondary
$PSStyle.Formatting.ErrorAccent = "`e[38;2;212;116;116m"       # Red
$PSStyle.Formatting.Error = "`e[38;2;212;116;116m"             # Red
$PSStyle.Formatting.Warning = "`e[38;2;212;165;116m"           # Orange/Primary
$PSStyle.Formatting.Verbose = "`e[38;2;139;160;184m"           # Secondary
$PSStyle.Formatting.Debug = "`e[38;2;230;184;134m"             # Yellow

# Invoke-Expression (& { (wezterm shell-completion --shell power-shell | Out-String) })

# keep this line last
Invoke-Expression (& { (zoxide init powershell | Out-String) })
