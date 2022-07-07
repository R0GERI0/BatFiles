@echo off
cd/
rem x------------------------------x
rem	| Nome: Rogério Nascimento     |
rem | Data: Criado em 09/05/2020   |
rem | OBS:  Arquivo de lote para   |
rem |	    executar arquivos .exe |
rem x------------------------------x
rem @echo on
cd %1

if exist %2.exe %2.exe
@echo.
if exist %2.exe pause

if not exist %2.exe echo x--------------------------x  
if not exist %2.exe echo : Programa .exe nao existe : 
if not exist %2.exe echo x--------------------------x
if not exist %2.exe cmd /c pause