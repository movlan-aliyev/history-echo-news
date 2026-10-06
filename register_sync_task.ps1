# Registers a Windows task that syncs the board every morning at 8:00 and at logon.
$script = Join-Path $PSScriptRoot "sync_board.ps1"
$action = New-ScheduledTaskAction -Execute "powershell.exe" `
    -Argument "-NoProfile -WindowStyle Hidden -ExecutionPolicy Bypass -File `"$script`""
$triggers = @(
    (New-ScheduledTaskTrigger -Daily -At 8:00am),
    (New-ScheduledTaskTrigger -AtLogOn -User $env:USERNAME)
)
$settings = New-ScheduledTaskSettingsSet -StartWhenAvailable -AllowStartIfOnBatteries -DontStopIfGoingOnBatteries
Register-ScheduledTask -TaskName "History Echo - Sync Newspaper Board" -Action $action `
    -Trigger $triggers -Settings $settings -Force | Out-Null
Write-Host "Registered task 'History Echo - Sync Newspaper Board'."
