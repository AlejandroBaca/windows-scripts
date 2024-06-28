set payloadPath=%1
schtasks /create /tn PurpleTeamScheduledTask /tr "%payloadPath%" /sc onlogon /ru %USERNAME%