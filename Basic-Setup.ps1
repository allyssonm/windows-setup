# TODO =================================================================================================================
# 1 - Install Chocolatey if not exists
# 2 - Find somehow to install (like wget): Visual Studio, Dashlane, Oh-My-Zsh
# 3 - Set-up terminals (powershell, bash) themes
# 4 - Set-up git: generate ssh key, set name and email
# 5 - 

# Enable allowGlobalConfiguration ======================================================================================
Write-Output "Enabling allowGlobalConfiguration"
choco feature enable -n allowGlobalConfirmation

# Basic ================================================================================================================
choco install googlechrome
choco install microsoft-edge
choco install Firefox --params "/NoTaskbarShortcut /NoDesktopShortcut /NoStartMenuShortcut"

choco install 7zip
choco install winrar

choco install skype
choco install discord
choco install steam
choco install spotify

# Development ==========================================================================================================
choco install microsoft-windows-terminal
choco install git

choco install nodejs
choco install yarn

choco install vscode --yes --params "/NoDesktopIcon"
choco install firacode --yes
Copy-Item "$(Get-Location)\vscode\*" -Destination "$($env:USERPROFILE)\AppData\Roaming\Code\User\";

choco install linqpad
choco install postman

choco install docker-cli
choco install docker-desktop

choco install azure-cli

# Disable allowGlobalConfiguration =====================================================================================
Write-Output "Disabling allowGlobalConfiguration"
choco feature disable -n allowGlobalConfirmation
