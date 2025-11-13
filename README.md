# Windows "dot" Files and System Settings

These instructions will apply the custom settings used on Windows 11 as well as
provide the steps to install and configure third-party software.

1. Open Microsoft Store and update all apps.

1. Open Windows Terminal

   ```console
   winget upgrade --all --accept-source-agreements --accept-package-agreements
   ```

1. Go to System Settings > System > For developers

   Enable the following:

   - End Task
   - Show file extensions
   - Show hidden and system files
   - Show full path in title bar
   - Show opotion to run as a different user in Start
   - Set default terminal to Windows Terminal
   - Allow local PowerShell scripts to run without signing
   - Enable sudo
     - Set Configure how sudo runs applications to Inline

1. Go to Advanced System Settings > Advanced > Settings

   Uncheck the following:

   - Show shadows under windows

1. Go to Control Panel > System and Security > Power Options

   - Select High Performance
   - Select Change plan settings
   - Set Turn off the display to 20 minutes
   - Set Put the computer to sleep to 2 hours
   - Select Change advanced power settings
   - Set Hibernate to: 240 minutes

1. Right click task bar

   - Select Taskbar settings
   - Set Search to Hide
   - Set Copilot to Off
   - Set Widgets to Off
   - Set Touch keyboard to Never
   - Uncheck Select the far corner of the taskbar to show the desktop
   - Set Combine taskbar buttons and hide labels to Never

1. Go to System Settings > Accessibility > Mouse pointer and touch

   - Select Custom
   - Set color to Gold
   - Increase Size to 2

1. Go to System Settings > Accounts > Email & accounts

   - Select Add a Microsoft account
   - Enter email, password, etc.

1. Right-click OneDrive on the taskbar

   - Select settings
   - Select Add an account
   - Enter email, password, etc.

1. Install and configure 1Password

   ```console
   winget inatall --id AgileBits.1Password
   winget install --id AgileBits.1Password.CLI
   ```

   After signing in, open Settings > Developer:

   - Enable SSH agent (follow the instructions for SSH agent configuration).
   - Enable Integrate with 1Password CLI

1. Git / GitHub CLI

   ```console
   winget install --id Git.Git
   winget install --id GitHub.cli
   ```

   After running the following command you can configure GitHub CLI. Do not
   create a new SSH key.

   ```console
   git config --global user.name "First Last"
   git config --global user.email your@email.com
   git config --global core.editor nvim
   git config --global merge.tool nvimdiff
   git config --global mergetool.keepBackup false
   git config --global core.eol lf
   git config --global core.sshCommand "C:/Windows/System32/OpenSSH/ssh.exe"
   gh auth login
   gh auth setup-git
   ```

1. Create symbolic links

   After setting up sudo and Powershell:

   ```console
   cd ~
   sudo run pwsh --Command "New-Item -type SymbolicLink -Target S:\projects\git\windotfiles\.config\ -Name .config\"
   cd AppData\Local
   sudo run pwsh --Command "new-Item -type SymbolicLink -Target S:\projects\git\nvim\ -Name nvim\"
   ```

1. Terminal Configuration

   Download and install the
   [SeriousShanns Nerd Font](https://github.com/kaBeech/serious-shanns).

   ```console
   winget install --id Microsoft.PowerShell
   winget install --id Starship.Starship
   winget install --id sharkdp.bat
   winget install eza-community.eza --accept-package-agreements --location C:\Users\fhaddad\.local\bin\
   winget install --id ajeetdsouza.zoxide
   winget install --id junegunn.fzf
   winget install --id BurntSushi.ripgrep.MSVC
   winget install --id wez.wezterm
   ```

1. Neovim Configuration

   ```console
   winget install --id Microsoft.VisualStudio.2022.BuildTools
   winget install --id Neovim.Neovim
   winget install --id Rustlang.Rustup
   winget install --id OpenJS.NodeJS.LTS
   winget install --id Python.Python.3.12
   winget install --id GoLang.Go
   ```

   After installing the BuildTools, open Visual Studio Installer, click Modify
   next to the Visual Stuiod Build Tools package, select Desktop development
   with C++.

   Configure Rust

   ```console
   rustup default stable
   rustup component add rust-analyzer
   ```

1. Install `mdformat` and plugins:

   ```console
   pip install --user pipx
   pipx install mdformat
   pipx inject mdformat mdformat-gfm mdformat-frontmatter mdformat-footnote mdformat-gfm-alerts
   ```

   See the
   [documention](https://rust-lang.github.io/rustup/installation/windows.html)
   for rustup on configuring the default host for CodeLLDB debugger support.

1. Additional Packages

   ```console
   winget install openrgb
   winget inatall --id Nvidia.GeForceExperience
   winget install --id Logitech.GHUB
   winget install --id Microsoft.PowerToys
   ```

1. GlazeWM

   Disable Windows keybindings via registry editor:

   Navigate to:

   ```console
   Computer\HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies
   ```

   If the `Explorer` key does not exist, create it and then create a
   `DWORD (32-bit) Value` named `NoWinKeys` and set it to `1`.

   Unassign keyboard shortcuts that activate the language switcher when it pops
   up (this will happen eventually).

   ```console
   winget install --id glazr-io.glazewm
   ```

   Open File Explorer and navigate to `C:\Program Files\glzr.io\GlazeWM`. Right
   click on `glazewm.exe` and select `Create shortcut` (the shortcut will get
   created on the desktop). Edit the shortcut and append the following after
   `C:\Program Files\glzr.io\GlazeWM\glazewm.exe"` in the `Target:` field:

   ```console
   start --config "%USERPROFILE%\.config\glazewm\glazewm.yaml"
   ```

   In the File Explorer window address bar, type `shell:startup` and paste the
   shortcut to that location.

1. Windows Defender

   To help speed up slow terminal and application loading from the command line,
   disable add the following Virus & threat protection exclusions (you can use
   `Add-MpPreference` cmdlet from powershell as well).

   ```text
   ExclusionPath : {C:\, S:\, T:\}
   ExclusionProcess: {git.exe, nvim.exe, pwsh.exe, starship.exe}
   ```
