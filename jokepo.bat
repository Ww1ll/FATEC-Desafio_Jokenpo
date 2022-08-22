@echo off
title jokenpo
mode 60,30
color f1

:inicio
cls
echo.
echo ============================
echo    Joken-Po
echo ============================
echo [1] Lagarto
echo [2] Pedra
echo [3] Spock
echo [4] Papel
echo [5] Tesoura
echo [R] Regras
echo [F] Finalizar o Programa
echo ===========================
echo 	Placar
echo ===========================
 echo Vitoria %vitoria_jogador%
 echo Derrota %vitoria_maquina%
 echo Empate %empate%

:pc
set /a jogada=(%random% %%4) + 1

set /p op=Digite a opcao desejada:
if %op% == 1 (goto:lagarto)
if %op% == 2 (goto:pedra)
if %op% == 3 (goto:spoke)
if %op% == 4 (goto:papel)
if %op% == 5 (goto:tesoura) 
if %op% == r (goto:regras)
if i/ %op% == f (exit) else (
	goto:inicio)


:regras	
echo Pedra:
echo 		Empata com pedra; ganha de tesoura e lagarto; perde de papel e spock;
echo Papel:
echo 		Empata com papel; ganha de pedra e spock; perde de tesoura e lagarto;
echo Tesoura:
echo		Empata com tesoura; ganha de lagarto e papel; perde de pedra e spock;
echo Lagarto:
echo 		Empata com lagarto; ganha de papel e spock; perde de pedra e tesoura;
echo Spock:
echo 		Empata com spock; ganha de pedra e tesoura; perde de lagarto e papel;

:empate
echo Empatou 
set /a empate=%empate% + 1
pause
goto:inicio

:vitoria_maquina
echo A maquina ganhou 
set /a vitoria_maquina=%vitoria_maquina% + 1
pause
goto:inicio

:vitoria_jogador
echo O jogador ganhou 
set /a vitoria_jogador=%vitoria_jogador% + 1
pause
goto:inicio

:lagarto
if %jogada% == 1 (goto:empate)
if %jogada% == 2 (goto:vitoria_maquina)
if %jogada% == 3 (goto:vitoria_maquina)
if %jogada% == 4 (goto:vitoria_jogador)
if %jogada% == 5 (goto:vitoria_jogador)
goto:inicio

:pedra
if %jogada% == 1 (goto:vitoria_maquina)
if %jogada% == 2 (goto:empate)
if %jogada% == 3 (goto:vitoria_maquina)
if %jogada% == 4 (goto:vitoria_jogador)
if %jogada% == 5 (goto:vitoria_maquina)
goto:inicio

:tesoura
if %jogada% == 1 (goto:vitoria_maquina)
if %jogada% == 2 (goto:vitoria_jogador)
if %jogada% == 3 (goto:vitoria_jogador)
if %jogada% == 4 (goto:vitoria_maquina)
if %jogada% == 5 (goto:empate)
goto:inicio

:spoke
if %jogada% == 1 (goto:vitoria_maquina)
if %jogada% == 2 (goto:vitoria_jogador) 
if %jogada% == 3 (goto:empate) 
if %jogada% == 4 (goto:vitoria_maquina)
if %jogada% == 5 (goto:vitoria_jogador) 
goto:inicio

:papel
if %jogada% == 1 (goto:vitoria_jogador) 
if %jogada% == 2 (goto:vitoria_maquina) 
if %jogada% == 3 (goto:vitoria_maquina) 
if %jogada% == 4 (goto:empate)
if %jogada% == 5 (goto:vitoria_jogador) 
goto:inicio




REM echo ------------------------------
REM echo Numero Sorteado: %numero%
REM echo Qtd de Sorteios %cont%
REM echo ------------------------------
REM echo.