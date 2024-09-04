# Backup Windows program settings

# Copy arguments
$copyProgram = "robocopy"
$rootDirectory = "$env:USERPROFILE"

& "$copyProgram" "$rootDirectory\.config\" ".\.config\" /mir /copyall
