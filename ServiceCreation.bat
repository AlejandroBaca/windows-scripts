set payloadPath=%1
sc create PurpleTeamService binpath= "%payloadPath%" start="auto" obj="LocalSystem"
sc start PurpleTeamService