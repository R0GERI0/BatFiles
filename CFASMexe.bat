@echo off
set path=%path%;C:\FASM
set INCLUDE=C:\FASM\INCLUDE
cd/
echo x-----------------------------------------------x
echo I Nome: Rogerio Nascimento                      I
echo I Data: Criado em 09/05/2020                    I
echo I OBS:  Arquivo para compilar .asm usando FASM. I
echo x-----------------------------------------------x
cd %1

if exist %2.obj	del	%2.obj
if exist %2.exe	del	%2.exe
rem //===============================================

rem //==Entrada ASM com Saida EXE====================
fasm %2.asm  %2.exe

rem //==Entrada ASM com Saida Objeto=================
rem fasm %2.asm  %2.o

rem //==Construção Usando Make=======================
rem make







rem //===============================================
if exist %2.exe echo x--------------------x  
if exist %2.exe echo : Programa Compilado : 
if exist %2.exe echo x--------------------x
if exist %2.exe cmd /c pause

if not exist %2.exe echo x---------------x  
if not exist %2.exe echo : Programa Erro : 
if not exist %2.exe echo x---------------x
if not exist %2.exe cmd /c pause
rem //===============================================