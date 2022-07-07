@echo off
cd/
echo x--------------------------------------------x
echo I Nome: Rogerio Nascimento                   I
echo I Data: Criado em 09/05/2020                 I
echo I OBS:  Arquivo para compilar .c usando GCC. I
echo x--------------------------------------------x
cd %1

if exist %2.o	del	%2.o
if exist %2.exe	del	%2.exe
rem //==============================================


rem //===Gera Arquivo Executavel=====================
if exist %2.c	gcc %2.c -o %2.exe
if exist %2.cpp	g++ %2.cpp -o %2.exe
rem //===============================================

rem //==Construção Usando Make=======================
rem make

rem //===Teste Usando Allegro========================
rem -LC:\TDM-GCC-32\lib -lallegro -lallegro_font
rem -I C:\TDM-GCC-32\include
rem gcc -o %1\%2.o -I C:\TDM-GCC-32\include -I C:\TDM-GCC-32\lib\gcc\mingw32\9.2.0\include -LC:\TDM-GCC-32\lib -lallegro -c %1\%2.c
rem gcc -o %1\%2.exe %1\%2.o
rem //===============================================

rem //===Teste Usando SDL============================
rem gcc %1\%2.cpp -o %1\%2.exe -Wall -c -std=c++11 -I C:\TDM-GCC-32\include\SDL2 -lmingw32 -mwindows -mconsole -LC:\TDM-GCC-32\lib -lSDL2main -lSDL2 -lSDL2_test -lSDL2_image -lSDL2_mixer -lSDL2_ttf
rem gcc %1\%2.c -o %1\%2.exe -m32
rem if exist %1\%2.exe echo Arquivo %2.exe (Criado..OK)
rem //===============================================

rem //===Gerar Arquivo Objeto========================
rem gcc %2.c -c
rem //===============================================

rem //===Gerar Arquivo Assembly AT&T=================
rem gcc %2.c -S
rem //===============================================

rem //==Gerar Arquivo Assembly Intel=================
rem gcc %2.c -S -masm=intel
rem if exist \%2.s echo Arquivo %2.s (Criado..OK)
rem copy %2.s %1\%2.s
rem del %2.s
rem //===============================================

rem //===Phat=Library================================
rem -I C:\TDM-GCC-32\include
rem -I C:\TDM-GCC-32\lib\gcc\mingw32\9.2.0\include
rem -L C:\TDM-GCC-32\lib
rem //===============================================


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