# Backup Windows program settings

# Copy arguments
$copyProgram = "robocopy"
$rootDirectory = "$env:USERPROFILE"

Start-Process -FilePath "$copyProgram" -ArgumentList "$rootDirectory\.config\", ".\.config", "/mir", "/copyall" -NoNewWindow
