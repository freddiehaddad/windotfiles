# Komorebi (tiling window manager)
# Start Komorebi Tiling Window Manager
$env:KOMOREBI_CONFIG_HOME = "$env:USERPROFILE\.config\komorebi"
$env:WHKD_CONFIG_HOME = "$env:USERPROFILE\.config\whkdrc"
& komorebic start --whkd
