Copy-Item -Path $PSScriptRoot/../home/** -Destination $HOME -Include **

# keyboard repeat
reg add "HKCU\Control Panel\Keyboard" /v KeyboardDelay /t REG_SZ /d "0" /f
reg add "HKCU\Control Panel\Keyboard" /v KeyboardSpeed /t REG_SZ /d "31" /f
