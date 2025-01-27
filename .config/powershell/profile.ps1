# Visual Studio Build Tools
$env:PATH += ";C:\Program Files (x86)\Microsoft Visual Studio\2022\BuildTools\VC\Tools\MSVC\14.42.34433\bin\HostX64\x64;C:\Program Files (x86)\Microsoft Visual Studio\2022\BuildTools\Common7\IDE\VC\VCPackages;C:\Program Files (x86)\Microsoft Visual Studio\2022\BuildTools\Common7\IDE\CommonExtensions\Microsoft\TestWindow;C:\Program Files (x86)\Microsoft Visual Studio\2022\BuildTools\MSBuild\Current\bin\Roslyn;C:\Program Files (x86)\Microsoft Visual Studio\2022\BuildTools\Common7\IDE\Extensions\Microsoft\CodeCoverage.Console;C:\Program Files (x86)\Windows Kits\10\bin\10.0.22621.0\\x64;C:\Program Files (x86)\Windows Kits\10\bin\\x64;C:\Program Files (x86)\Microsoft Visual Studio\2022\BuildTools\\MSBuild\Current\Bin\amd64;C:\Windows\Microsoft.NET\Framework64\v4.0.30319;C:\Program Files (x86)\Microsoft Visual Studio\2022\BuildTools\Common7\IDE\;C:\Program Files (x86)\Microsoft Visual Studio\2022\BuildTools\Common7\Tools\;C:\Program Files (x86)\Microsoft Visual Studio\2022\BuildTools\Common7\IDE\CommonExtensions\Microsoft\CMake\CMake\bin;C:\Program Files (x86)\Microsoft Visual Studio\2022\BuildTools\Common7\IDE\CommonExtensions\Microsoft\CMake\Ninja;C:\Program Files (x86)\Microsoft Visual Studio\2022\BuildTools\Common7\IDE\VC\Linux\bin\ConnectionManagerExe;"
# For mdformat 
$env:PATH += "C:\Users\fhaddad\AppData\Roaming\Python\Python312\Scripts;C:\Users\fhaddad\.local\bin;"

$env:INCLUDE = "C:\Program Files (x86)\Microsoft Visual Studio\2022\BuildTools\VC\Tools\MSVC\14.42.34433\include;C:\Program Files (x86)\Microsoft Visual Studio\2022\BuildTools\VC\Auxiliary\VS\include;C:\Program Files (x86)\Windows Kits\10\include\10.0.22621.0\ucrt;C:\Program Files (x86)\Windows Kits\10\\include\10.0.22621.0\\um;C:\Program Files (x86)\Windows Kits\10\\include\10.0.22621.0\\shared;C:\Program Files (x86)\Windows Kits\10\\include\10.0.22621.0\\winrt;C:\Program Files (x86)\Windows Kits\10\\include\10.0.22621.0\\cppwinrt"

$env:LIB = "C:\Program Files (x86)\Microsoft Visual Studio\2022\BuildTools\VC\Tools\MSVC\14.42.34433\lib\x64;C:\Program Files (x86)\Windows Kits\10\lib\10.0.22621.0\ucrt\x64;C:\Program Files (x86)\Windows Kits\10\\lib\10.0.22621.0\\um\x64"

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

# Aliases
Set-Alias -Name ls -Value lsd

Function lsd_long {lsd -l}
Set-Alias -Name ll -Value lsd_long

Function lsd_long_hidden {lsd -la}
Set-Alias -Name lla -Value lsd_long_hidden

Function lsd_tree {lsd --tree}
Set-Alias -Name lt -Value lsd_tree

Set-Alias -Name cat -Value bat
$env:BAT_THEME="base16"

# Install-Module -Name PSFzf
Set-PsFzfOption -PSReadlineChordReverseHistory 'Ctrl+r'
# https://vitormv.github.io/fzf-themes/
$env:FZF_DEFAULT_OPTS = "--color=fg:#9e9b94,fg+:#5c7884,bg:#101517,bg+:#1f292d,hl:#1f292d,hl+:#5c7884,info:#8e8567,marker:#1f292d,prompt:#5c7884,spinner:#5c7884,pointer:#8e8567,header:#8e8567,gutter:#101517,border:#101517,separator:#5c7884,scrollbar:#101517,label:#8e8567,query:#8e8567 --border='sharp' --border-label='' --preview-window='border-sharp' --prompt='> ' --marker='>' --pointer='o' --separator='─' --scrollbar='│' --height=50%"

# Starship
$env:STARSHIP_CONFIG = "$env:USERPROFILE\.config\starship\starship.toml"
Invoke-Expression (&starship init powershell)

# Invoke-Expression (& { (wezterm shell-completion --shell power-shell | Out-String) })

# keep this line last
Invoke-Expression (& { (zoxide init powershell | Out-String) })
