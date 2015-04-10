@ECHO OFF
SETLOCAL

SET MAIN_7Z=%CD%
SET PROG_7Z="%CD%/Tools/7z/7z"
SET PK3SOURCE="%CD%/PK3 Source"
SET PK3SOURCE_ZANDRO="%CD%/PK3 Source - Zandronum"

DEL "%MAIN_7Z%/Se7evidas.PK3" 2>nul
DEL "%MAIN_7Z%/Se7evidas_Zandro.PK3" 2>nul
CD %PK3SOURCE%
%PROG_7Z% a -tzip "%MAIN_7Z%/Se7evidas.PK3" "*" -mx0 -r -x!*.DB -X!*.DBS -X!*.WAD.BACKUP* -X!*.TMP*
CD %MAIN_7Z%

CD %PK3SOURCE_ZANDRO%
%PROG_7Z% a -tzip "%MAIN_7Z%/Se7evidas_Zandro.PK3" "*" -mx0 -r -x!*.DB -X!*.DBS -X!*.WAD.BACKUP* -X!*.TMP*