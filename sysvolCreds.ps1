Push-Location \\$env:USERDNSDOMAIN\SYSVOL
gci * -Include *.xml,*.txt,*.bat,*.ps1,*.psm,*.psd -Recurse -EA SilentlyContinue | select-string password
Pop-Location
