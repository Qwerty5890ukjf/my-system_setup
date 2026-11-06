
# Define backup directory
$Backup = "$PSScriptRoot\Windows-Config"

# Create directory if it doesn't exist
New-Item -ItemType Directory -Force -Path $Backup | Out-Null

# Personalization settings
reg export "HKCU\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize" "$Backup\personalize.reg" /y

# Desktop settings
reg export "HKCU\Control Panel\Desktop" "$Backup\desktop.reg" /y

# Taskbar and Explorer settings
reg export "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" "$Backup\explorer.reg" /y

# Mouse settings
reg export "HKCU\Control Panel\Mouse" "$Backup\mouse.reg" /y

Write-Host "Windows configuration backed up!"
Write-Host "Backup location: $Backup"

# Open backup folder
explorer.exe $Backup
