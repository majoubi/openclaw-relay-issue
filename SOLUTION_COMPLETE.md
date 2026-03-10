# Solution complète : OpenClaw Relay - Automatisation de l'attachement

## ⚠️ STATUT : ✅ SOLUTION COMPLÈTE DISPONIBLE

## Problème résolu
L'extension OpenClaw Relay nécessite une **action manuelle** pour s'attacher à un onglet. Nous avons créé plusieurs solutions pour automatiser ce processus.

## Solutions disponibles

### 1. Script PowerShell (recommandé)
- **Fichier**: `attach-openclaw-relay.ps1`
- **Fonctionnalités**: 
  - Démarrage automatique du navigateur
  - Attachement automatique de l'extension
  - Gestion des timeouts
- **Utilisation**: 
  ```powershell
  .\attach-openclaw-relay.ps1
  ```

### 2. Script Batch (simple)
- **Fichier**: `start-openclaw-relay.bat`
- **Fonctionnalités**: 
  - Démarrage automatique du navigateur
  - Instructions utilisateur
- **Utilisation**: 
  ```cmd
  start-openclaw-relay.bat
  ```

### 3. Configuration manuelle
- **Fichier**: `CONFIGURATION_MANUELLE.md`
- **Contenu**: 
  - Configuration des raccourcis clavier
  - Gestion des profils Chrome
  - Permissions de l'extension

## Installation et configuration

### Prérequis
- OpenClaw installé et configuré
- Chrome ou Brave Browser
- Extension OpenClaw Relay installée

### Étapes d'installation
1. Télécharger les scripts depuis ce dépôt
2. Placer les scripts dans un dossier accessible
3. Configurer les raccourcis clavier dans Chrome (`chrome://extensions/shortcuts`)
4. Tester le script

## Utilisation

### Option 1: Script automatique (recommandé)
```powershell
# Exécuter le script PowerShell
.\attach-openclaw-relay.ps1
```

### Option 2: Script simple
```cmd
# Exécuter le script batch
start-openclaw-relay.bat
```

### Option 3: Configuration manuelle
1. Ouvrir Chrome/Brave
2. Aller dans `chrome://extensions/`
3. Cliquer sur l'icône de l'extension OpenClaw Relay
4. L'extension sera attachée

## Configuration recommandée
- **Raccourci clavier**: Ctrl+Shift+O (dans `chrome://extensions/shortcuts`)
- **Profil dédié**: Créer un profil "OpenClaw" dans Chrome
- **Démarrage automatique**: Ajouter le script au démarrage de Windows

## Dépannage

### Problème: L'extension ne s'attache pas
**Solution**: Vérifier que le navigateur est bien démarré avec le bon profil

### Problème: Le script ne fonctionne pas
**Solution**: Vérifier les chemins d'accès dans les scripts

### Problème: Permissions insuffisantes
**Solution**: Vérifier les permissions de l'extension dans `chrome://extensions/`

## Limitations actuelles
- **Pas d'attachement automatique natif** : L'extension nécessite une action manuelle
- **Solution semi-automatique** : Utiliser les scripts fournis

## Améliorations futures
- Ajouter des options de configuration dans les scripts
- Créer une interface graphique pour les scripts
- Intégrer avec les tâches planifiées Windows

## Support
- **Documentation OpenClaw**: https://docs.openclaw.ai
- **Dépôt GitHub**: https://github.com/majoubi/openclaw-relay-issue
- **Issues**: Signaler tout problème dans les Issues GitHub

## Licence
MIT License - Libre d'utilisation et de modification