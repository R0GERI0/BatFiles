@echo off
set path=%path%;C:\NASM
cd/
echo x-----------------------------------------------x
echo I Nome: Rogerio Nascimento                      I
echo I Data: Criado em 09/05/2020                    I
echo I OBS:  Arquivo para compilar .asm usando NASM. I
echo x-----------------------------------------------x
cd %1

if exist %2.obj	del	%2.obj
if exist %2.exe	del	%2.exe


nasm -fobj %2.asm
alink %2.obj -oEXE


if exist %2.exe echo x--------------------x  
if exist %2.exe echo : Programa Compilado : 
if exist %2.exe echo x--------------------x
if exist %2.exe cmd /c pause

if not exist %2.exe echo x---------------x  
if not exist %2.exe echo : Programa Erro : 
if not exist %2.exe echo x---------------x
if not exist %2.exe cmd /k