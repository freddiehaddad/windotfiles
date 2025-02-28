# Visual Studio Build Tools
$env:INCLUDE = "C:\Program Files (x86)\Microsoft Visual Studio\2022\BuildTools\VC\Tools\MSVC\14.43.34808\include;C:\Program Files (x86)\Microsoft Visual Studio\2022\BuildTools\VC\Auxiliary\VS\include;C:\Program Files (x86)\Windows Kits\10\include\10.0.22621.0\ucrt;C:\Program Files (x86)\Windows Kits\10\\include\10.0.22621.0\\um;C:\Program Files (x86)\Windows Kits\10\\include\10.0.22621.0\\shared;C:\Program Files (x86)\Windows Kits\10\\include\10.0.22621.0\\winrt;C:\Program Files (x86)\Windows Kits\10\\include\10.0.22621.0\\cppwinrt"
$env:LIB = "C:\Program Files (x86)\Microsoft Visual Studio\2022\BuildTools\VC\Tools\MSVC\14.43.34808\lib\x64;C:\Program Files (x86)\Windows Kits\10\lib\10.0.22621.0\ucrt\x64;C:\Program Files (x86)\Windows Kits\10\\lib\10.0.22621.0\\um\x64"
$ENV:PATH += ";C:\Program Files (x86)\Microsoft Visual Studio\2022\BuildTools\VC\Tools\MSVC\14.43.34808\bin\HostX64\x64;C:\Program Files (x86)\Microsoft Visual Studio\2022\BuildTools\Common7\IDE\VC\VCPackages;C:\Program Files (x86)\Microsoft Visual Studio\2022\BuildTools\Common7\IDE\CommonExtensions\Microsoft\TestWindow;C:\Program Files (x86)\Microsoft Visual Studio\2022\BuildTools\MSBuild\Current\bin\Roslyn;C:\Program Files (x86)\Microsoft Visual Studio\2022\BuildTools\Common7\IDE\Extensions\Microsoft\CodeCoverage.Console;C:\Program Files (x86)\Windows Kits\10\bin\10.0.22621.0\\x64;C:\Program Files (x86)\Windows Kits\10\bin\\x64;C:\Program Files (x86)\Microsoft Visual Studio\2022\BuildTools\\MSBuild\Current\Bin\amd64;C:\Windows\Microsoft.NET\Framework64\v4.0.30319;C:\Program Files (x86)\Microsoft Visual Studio\2022\BuildTools\Common7\IDE\;C:\Program Files (x86)\Microsoft Visual Studio\2022\BuildTools\Common7\Tools\;C:\Program Files (x86)\Microsoft Visual Studio\2022\BuildTools\Common7\IDE\CommonExtensions\Microsoft\CMake\CMake\bin;C:\Program Files (x86)\Microsoft Visual Studio\2022\BuildTools\Common7\IDE\CommonExtensions\Microsoft\CMake\Ninja;C:\Program Files (x86)\Microsoft Visual Studio\2022\BuildTools\Common7\IDE\VC\Linux\bin\ConnectionManagerExe;"

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

# Aliases
Set-Alias -Name ls -Value lsd

Function lsd_long {lsd -l}
Set-Alias -Name ll -Value lsd_long

Function lsd_long_hidden {lsd -la}
Set-Alias -Name lla -Value lsd_long_hidden

Function lsd_tree {lsd --tree}
Set-Alias -Name lt -Value lsd_tree

Set-Alias -Name cat -Value bat
$env:BAT_THEME="ansi"

# Install-Module -Name PSFzf
Set-PsFzfOption -PSReadlineChordReverseHistory 'Ctrl+r'
# https://vitormv.github.io/fzf-themes/
# https://vitormv.github.io/fzf-themes#eyJib3JkZXJTdHlsZSI6InNoYXJwIiwiYm9yZGVyTGFiZWwiOiIgRnV6enkgU2VhcmNoICIsImJvcmRlckxhYmVsUG9zaXRpb24iOjAsInByZXZpZXdCb3JkZXJTdHlsZSI6InNoYXJwIiwicGFkZGluZyI6IjAiLCJtYXJnaW4iOiIwIiwicHJvbXB0Ijoi74CCICAiLCJtYXJrZXIiOiLvgIwgIiwicG9pbnRlciI6Iu+RiiIsInNlcGFyYXRvciI6IuKUgCIsInNjcm9sbGJhciI6IuKUgiIsImxheW91dCI6ImRlZmF1bHQiLCJpbmZvIjoicmlnaHQiLCJjb2xvcnMiOiJmZzojOEE4RjhGLGZnKzojOEE4QTdCLGJnOiMxQjI0MjYsYmcrOiMyQTM2MzksaGw6IzVhNzU4MixobCs6IzZDOEE5OSxpbmZvOiM1YTc1ODIsbWFya2VyOiM2QzhBOTkscHJvbXB0OiMzODQ5NEQsc3Bpbm5lcjojNWE3NTgyLHBvaW50ZXI6Izc1NzU2OCxoZWFkZXI6IzhBOEY4Rixib3JkZXI6IzM4NDk0RCxsYWJlbDojOEE4RjhGLHF1ZXJ5OiM1YTc1ODIifQ==
$env:FZF_DEFAULT_OPTS = "--color=fg:#829090,fg+:#B9A970,bg:#0D1112,bg+:#1A2125,hl:#4D7695,hl+:#5899A7,info:#4D7695,marker:#5899A7,prompt:#424B4B,spinner:#4D7695,pointer:#A2763B,header:#829090,border:#424B4B,label:#829090,query:#4D7695 --border='sharp' --border-label=' Fuzzy Search ' --border-label-pos='0' --preview-window='border-sharp' --prompt='  ' --marker=' ' --pointer='' --separator='─' --scrollbar='│' --info='right' --height='50%'"
# Starship
$env:STARSHIP_CONFIG = "$env:USERPROFILE\.config\starship\starship.toml"
Invoke-Expression (&starship init powershell)

# Invoke-Expression (& { (wezterm shell-completion --shell power-shell | Out-String) })

# keep this line last
Invoke-Expression (& { (zoxide init powershell | Out-String) })
