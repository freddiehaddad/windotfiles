# Windows "dot" Files and System Settings

These instructions will apply the custom settings used on Windows 11 as well as
provide the steps to install and configure third-party software.

1. Open Microsoft Store and update all apps.

2. Open Windows Terminal

   ```text
   winget upgrade --all --accept-source-agreements --accept-package-agreements
   ```

3. Go to System Settings > System > For developers

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

4. Go to Advanced System Settings > Advanced > Settings

   Uncheck the following:

   - Show shadows under windows

5. Go to Control Panel > System and Security > Power Options

   - Select High Performance
   - Select Change plan settings
   - Set Turn off the display to 20 minutes
   - Set Put the computer to sleep to 2 hours
   - Select Change advanced power settings
   - Set Hibernate to: 240 minutes

6. Right click task bar

   - Select Taskbar settings
   - Set Search to Hide
   - Set Copilot to Off
   - Set Widgets to Off
   - Set Touch keyboard to Never
   - Uncheck Select the far corner of the taskbar to show the desktop
   - Set Combine taskbar buttons and hide labels to Never

7. Go to System Settings > Accessibility > Mouse pointer and touch

   - Select Custom
   - Set color to Gold
   - Increase Size to 2

8. Go to System Settings > Accounts > Email & accounts

   - Select Add a Microsoft account
   - Enter email, password, etc.

9. Right-click OneDrive on the taskbar

   - Select settings
   - Select Add an account
   - Enter email, password, etc.

10. Install and configure 1Password

    ```text
    winget inatall --id AgileBits.1Password
    winget install --id AgileBits.1Password.CLI
    ```

    After signing in, open Settings > Developer:

    - Enable SSH agent (follow the instructions for SSH agent configuration).
    - Enable Integrate with 1Password CLI

11. Git / GitHub CLI

    ```text
    winget install --id Git.Git
    winget install --id GitHub.cli
    ```

    After running the following command you can configure GitHub CLI. Do not
    create a new SSH key.

    ```text
    git config --global user.name "First Last"
    git config --global user.email your@email.com
    git config --global merge.tool nvimdiff
    git config --global mergetool.keepBackup false
    git config --global core.autocrlf true
    git config --global core.sshCommand "C:/Windows/System32/OpenSSH/ssh.exe"
    gh auth login
    gh auth setup-git
    ```

12. Create symbolic links

    In an Administrator PowerShell window:

    ```text
    cd ~
    New-Item -type SymbolicLink -Target S:\projects\git\windotfiles\.config\ -Name .config\
    cd AppData\Local
    new-Item -type SymbolicLink -Target S:\projects\git\nvim\ -Name nvim\
    ```

13. Terminal Configuration

    ```text
    winget install --id Microsoft.PowerShell
    winget install --id Starship.Starship
    winget install --id lsd-rs.lsd
    winget install --id ajeetdsouza.zoxide
    winget install --id junegunn.fzf
    winget install --id BurntSushi.ripgrep.MSVC
    winget install --id wez.wezterm
    ```

14. Neovim Configuration

    ```text
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

    ```text
    rustup default stable
    rustup component add rust-analyzer
    ```

15. Additional Packages

    ```text
    winget install openrgb
    winget inatall --id Nvidia.GeForceExperience
    winget install --id Logitech.GHUB
    winget install --id Microsoft.PowerToys
    ```

16. GlazeWM

    Disable Windows keybindings via registry editor:

    Navigate to:

    ```text
    Computer\HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies
    ```

    If the `Explorer` key does not exist, create it and then create a
    `DWORD (32-bit) Value` named `NoWinKeys` and set it to `1`.

    Unassign keyboard shortcuts that activate the language switcher when it pops
    up (this will happen eventually).

    ```text
    winget install --id glazr-io.glazewm
    ```

    Open File Explorer and navigate to `C:\Program Files\glzr.io\GlazeWM`. Right
    click on `glazewm.exe` and select `Create shortcut` (the shortcut will get
    created on the desktop). Edit the shortcut and append the following after
    `C:\Program Files\glzr.io\GlazeWM\glazewm.exe"` in the `Target:` field:

    ```text
    start --config "%USERPROFILE%\.config\glazewm\glazewm.yaml"
    ```

    In the File Explorer window address bar, type `shell:startup` and paste the
    shortcut to that location.
