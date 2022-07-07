@echo off
cd/
echo x--------------------------------------------x
echo I Nome: Rogerio Nascimento                   I
echo I Data: Criado em 09/05/2020                 I
echo I OBS:  Arquivo para compilar .c usando GCC. I
echo x--------------------------------------------x
cd %1

if exist %2.com	del	%2.com

rem nasm %2.asm -fbin -o %2.com
rem nasm -fobj filename.asm -l filename.lst
rem alink -m filename.obj

nasm -fobj %2.asm
rem nasm -fobj NT2.asm
alink -oCOM -m %2.obj 
rem NT2.obj
rem alink -m NT2.obj
nasm -fobj %2.asm -l %2.lst
rem nasm -fobj NT2.asm -l NT2.lst


if exist %2.com echo x--------------------x  
if exist %2.com echo : Programa Compilado : 
if exist %2.com echo x--------------------x
if exist %2.com echo O Programa sera Executado
if exist %2.com cmd /c pause
if exist %2.com cmd /k %2.com

if not exist %2.com echo x---------------x  
if not exist %2.com echo : Programa Erro : 
if not exist %2.com echo x---------------x
if not exist %2.com cmd /k