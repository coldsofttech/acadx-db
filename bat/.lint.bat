@echo off
setlocal

REM Execute linting
echo Running linting on scripts folder...
sqlfluff lint --config .sqlfluff --nofail

endlocal