if not exist "~\AppData\Local\nvim" (
    mkdir ~\AppData\Local\nvim
)
cp -r nvim ~/AppData/Local/nvim

if not exist "~\Documents\Powershell" (
    mkdir ~\Documents\Powershell
)
cp -r Microsoft.PowerShell_profile.ps1 C:/Users/%username%/Documents/PowerShell

cp -r settings.json C:/Users/%username%/AppData/Local/Packages/Microsoft.WindowsTerminal_*/LocalState
