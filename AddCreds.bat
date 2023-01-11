@ECHO OFF

SET configPart=\.git\config
SET credsPart=git-creds.txt

SET configPath=%CD%%configPart%

SET credsPath=%~dp0%credsPart%

ECHO %credsPath%

for /f "delims== tokens=1,2" %%G in (%credsPath%) do set %%G=%%H

ECHO;>>%configPath%
ECHO [user]>>%configPath%
ECHO 	name = %name%>>%configPath%
ECHO 	email = %email%>>%configPath%

ECHO Credentials have been added to config.