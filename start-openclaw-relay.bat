@echo off
REM Script de demarrage automatique OpenClaw Relay
REM Auteur: Joubot
REM Date: 2026-03-11

echo.
echo ========================================
echo   OpenClaw Relay - Demarrage Automatique
echo ========================================
echo.

REM Demarrer Brave/Chrome avec le profil par defaut
echo Demarrage du navigateur...
start "" "C:\Program Files\BraveSoftware\Brave-Browser\Application\brave.exe" --profile-directory="Default"

REM Attendre 5 secondes que le navigateur se charge
timeout /t 5 /nobreak >nul

echo.
echo IMPORTANT: 
echo 1. Le navigateur a ete demarre
echo 2. Cliquez sur l'icone de l'extension OpenClaw Relay
echo 3. L'extension sera attachee automatiquement
echo.
echo Appuyez sur une touche pour fermer ce message...
pause >nul

echo.
echo Extension OpenClaw Relay prete a l'emploi !
echo.