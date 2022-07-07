@echo off
set path=%path%;C:\FASM
set INCLUDE=C:\FASM\INCLUDE
cd/
echo x-----------------------------------------------x
echo I Nome: Rogerio Nascimento                      I
echo I Data: Criado em 09/05/2020                    I
echo I OBS:  Arquivo para compilar .asm usando NASM. I
echo x-----------------------------------------------x
cd %1

rem //===============================================
rem if exist %2.obj	del	%2.obj
rem if exist %2.exe	del	%2.exe
rem //===============================================

rem %1 Caminho do diretorio
rem %2 Nome do arquivo

rem //==Construção Usando Make=======================
rem @echo on
make
rem //===============================================

rem //===============================================
rem //===============================================

rem //===============================================
@echo off
if exist %2.exe echo x--------------------x  
if exist %2.exe echo : Programa Compilado : 
if exist %2.exe echo x--------------------x
if exist %2.exe cmd /c pause

if not exist %2.exe echo x---------------x  
if not exist %2.exe echo : Programa Erro : 
if not exist %2.exe echo x---------------x
if not exist %2.exe cmd /c pause
rem //===============================================