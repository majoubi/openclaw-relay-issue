# Recherche de solution : Extension toujours active

## Problème
L'extension OpenClaw Relay fonctionne mais nécessite une **action manuelle** pour s'attacher à un onglet. L'utilisateur veut que l'extension soit **toujours sur "on"** quand il ouvre Chrome sur le profil de l'extension.

## Erreur actuelle
"Chrome extension relay is running, but no tab is connected. Click the OpenClaw Chrome extension icon on a tab to attach it (profile \"chrome\")."

## Solutions possibles

### 1. Configuration de l'extension
- Vérifier les paramètres de l'extension OpenClaw Relay
- Chercher une option "auto-attach" ou "always on"
- Vérifier les permissions de l'extension

### 2. Configuration d'OpenClaw
- Vérifier si OpenClaw a des options pour l'attachement automatique
- Chercher des paramètres dans openclaw.json
- Vérifier les hooks de démarrage

### 3. Script de démarrage
- Créer un script qui attache l'extension automatiquement
- Utiliser des hooks de démarrage de navigateur
- Automatiser l'attachement via des commandes

### 4. Configuration du navigateur
- Vérifier les paramètres de Chrome/Brave
- Chercher des extensions qui s'attachent automatiquement
- Utiliser des profils de navigateur configurés

## Actions à entreprendre
1. Vérifier la configuration de l'extension OpenClaw Relay
2. Chercher des options d'attachement automatique
3. Documenter les solutions trouvées
4. Implémenter la meilleure solution

## Priorité
Haute - L'utilisateur veut une solution permanente