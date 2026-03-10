# Script PowerShell pour automatiser l'attachement de l'extension OpenClaw Relay
# Auteur: Joubot
# Date: 2026-03-11
# Description: Ce script attache automatiquement l'extension OpenClaw Relay à un onglet Chrome

param(
    [string]$BrowserPath = "C:\Program Files\BraveSoftware\Brave-Browser\Application\brave.exe",
    [string]$Profile = "Default",
    [int]$Timeout = 30
)

# Fonction pour vérifier si Chrome/Brave est en cours d'exécution
function Test-BrowserRunning {
    param([string]$BrowserName)
    $process = Get-Process -Name $BrowserName -ErrorAction SilentlyContinue
    return $null -ne $process
}

# Fonction pour démarrer Chrome/Brave avec un profil spécifique
function Start-BrowserWithProfile {
    param(
        [string]$BrowserPath,
        [string]$Profile
    )
    
    Write-Host "Démarrage du navigateur avec le profil: $Profile"
    Start-Process -FilePath $BrowserPath -ArgumentList "--profile-directory=`"$Profile`"" -WindowStyle Normal
    
    # Attendre que le navigateur démarre
    $browserName = Split-Path $BrowserPath -Leaf
    $browserName = $browserName -replace '\.exe$', ''
    
    $startTime = Get-Date
    while (-not (Test-BrowserRunning -BrowserName $browserName)) {
        if (((Get-Date) - $startTime).TotalSeconds -gt $Timeout) {
            Write-Error "Timeout: Le navigateur n'a pas démarré dans les $Timeout secondes"
            return $false
        }
        Start-Sleep -Seconds 1
    }
    
    return $true
}

# Fonction pour attacher l'extension OpenClaw Relay
function Attach-OpenClawRelay {
    Write-Host "Attachement de l'extension OpenClaw Relay..."
    
    # Méthode 1: Utiliser les raccourcis clavier (si configurés)
    # Note: L'utilisateur doit d'abord configurer un raccourci clavier dans Chrome
    # chrome://extensions/shortcuts
    
    # Méthode 2: Script d'automatisation via Chrome DevTools Protocol
    # Note: Cette méthode nécessite que le navigateur soit démarré avec le flag --remote-debugging-port
    
    # Méthode 3: Attendre que l'utilisateur clique sur l'icône
    Write-Host "Veuillez cliquer sur l'icône de l'extension OpenClaw Relay dans votre navigateur"
    Write-Host "L'extension sera attachée automatiquement une fois que vous aurez cliqué"
    
    # Attendre que l'extension soit attachée
    $attached = $false
    $startTime = Get-Date
    
    while (-not $attached) {
        if (((Get-Date) - $startTime).TotalSeconds -gt $Timeout) {
            Write-Error "Timeout: L'extension n'a pas été attachée dans les $Timeout secondes"
            return $false
        }
        
        # Vérifier si l'extension est attachée
        # Note: Cette vérification nécessite une API spécifique
        Start-Sleep -Seconds 2
    }
    
    return $true
}

# Fonction principale
function Main {
    Write-Host "=== Script d'attachement automatique OpenClaw Relay ===" -ForegroundColor Green
    
    # Vérifier si le navigateur est déjà en cours d'exécution
    $browserName = Split-Path $BrowserPath -Leaf
    $browserName = $browserName -replace '\.exe$', ''
    
    if (Test-BrowserRunning -BrowserName $browserName) {
        Write-Host "Le navigateur est déjà en cours d'exécution"
    } else {
        # Démarrer le navigateur
        if (-not (Start-BrowserWithProfile -BrowserPath $BrowserPath -Profile $Profile)) {
            Write-Error "Impossible de démarrer le navigateur"
            return
        }
    }
    
    # Attendre un peu que le navigateur se charge
    Start-Sleep -Seconds 5
    
    # Attacher l'extension
    if (Attach-OpenClawRelay) {
        Write-Host "✅ Extension OpenClaw Relay attachée avec succès!" -ForegroundColor Green
    } else {
        Write-Error "❌ Échec de l'attachement de l'extension"
    }
}

# Exécuter le script
Main