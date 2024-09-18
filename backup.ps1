# Backup Windows program settings
$argumentList = "$env:USERPROFILE\.config\", ".\.config", "/mir", "/copyall"
& "robocopy" $argumentList
# Start-Process -FilePath "$copyProgram" -ArgumentList "$rootDirectory\.config\", ".\.config", "/mir", "/copyall" -NoNewWindow
