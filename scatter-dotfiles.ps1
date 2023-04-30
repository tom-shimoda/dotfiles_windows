if (!(Test-Path ~\AppData\Local\nvim)) {
    mkdir ~\AppData\Local\nvim
}
Copy-Item -Recurse -Force nvim ~\AppData\Local\nvim

if (!(Test-Path ~\Documents\Powershell)) {
    mkdir ~\Documents\Powershell
}
Copy-Item -Recurse -Force Microsoft.PowerShell_profile.ps1 ~\Documents\PowerShell

Copy-Item -Recurse -Force settings.json ~\AppData\Local\Packages\Microsoft.WindowsTerminal_*\LocalState
