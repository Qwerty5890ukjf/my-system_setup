<CodeBlock language="powershell" editable>
$Backup = "$PSScriptRoot\Windows-Config"

reg import "$Backup\personalize.reg"
reg import "$Backup\desktop.reg"
reg import "$Backup\explorer.reg"
reg import "$Backup\mouse.reg"


Stop-Process -Name explorer -Force
Start-Process explorer.exe

Write-Host "Configuration restored!"