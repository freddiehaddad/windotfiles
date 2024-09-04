# Windows "dotfiles"

Program configuration backups:

- git
- windows terminal
- powershell
- fancywm
- lsd

## Restoration

Some programs require a few manual steps to restore the settings (see below).

For the rest, copy or symlink the `.config` directory to `$env:USERPROFILE`.

### Windows Terminal

Open the app, press `Ctrl+,` to open settings, click "Open JSON file", and
replace the contents with the backup.

### FancyWM

Open the app, navigate to Settings, select the General tab, click
"Show settings.json in containing folder". Replace the `settings.json` file
with the backup.

## PowerShell

Create a `PowerShell` directory under `Documents` and create a file named
`Microsoft.PowerShell_profile.ps1` with the following contents:

```powershell
$PROFILE = "$env:USERPROFILE\.config\powershell\profile.ps1"
. "$PROFILE"
```
