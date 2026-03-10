# Guide de configuration manuelle de l'extension OpenClaw Relay

## Solution manuelle : Configuration de l'extension

### Étape 1 : Ouvrir les paramètres de l'extension
1. Ouvrir Chrome/Brave
2. Aller dans `chrome://extensions/`
3. Chercher l'extension "OpenClaw Browser Relay"
4. Cliquer sur "Détails"

### Étape 2 : Vérifier les permissions
1. Vérifier que l'extension a les permissions nécessaires :
   - "Accéder aux données des sites web"
   - "Lire et modifier le contenu des pages web"
   - "Gérer vos applications, extensions et thèmes"

### Étape 3 : Configurer les raccourcis clavier
1. Aller dans `chrome://extensions/shortcuts`
2. Chercher "OpenClaw Browser Relay"
3. Définir un raccourci clavier (ex: Ctrl+Shift+O)
4. Utiliser ce raccourci pour activer l'extension rapidement

### Étape 4 : Configuration du profil Chrome
1. Créer un profil Chrome dédié à OpenClaw
2. Configurer le démarrage automatique de Chrome avec ce profil
3. Attacher l'extension à ce profil

### Étape 5 : Solution semi-automatique
1. Créer un raccourci Chrome qui ouvre automatiquement un onglet
2. Utiliser un script de démarrage qui :
   - Ouvre Chrome avec le bon profil
   - Ouvre un onglet spécifique
   - Attend que l'utilisateur clique sur l'icône de l'extension

## Configuration recommandée
- **Profil dédié** : Créer un profil "OpenClaw" dans Chrome
- **Raccourci clavier** : Configurer Ctrl+Shift+O pour activer l'extension
- **Script de démarrage** : Utiliser le script PowerShell fourni

## Limitations actuelles
- **Pas d'attachement automatique natif** : L'extension nécessite une action manuelle
- **Solution semi-automatique** : Utiliser un raccourci clavier ou un script

## Alternative : Utiliser un autre profil
1. Créer un profil Chrome séparé pour OpenClaw
2. Configurer Chrome pour ouvrir automatiquement ce profil au démarrage
3. L'extension sera toujours active dans ce profil