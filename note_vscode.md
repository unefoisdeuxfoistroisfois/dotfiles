# Configuration VS Code avec Dotfiles

## Structure

```
~/dotfiles/
  vscode/
    settings.json      # Configuration VS Code
    extensions.txt     # Liste des extensions
  setup.sh             # Script d'installation
```

---

## Initialisation (à faire une seule fois sur chaque machine)

### 1. Copier la config actuelle dans dotfiles

**macOS :**
```bash
cp ~/Library/Application\ Support/Code/User/settings.json ~/dotfiles/vscode/
code --list-extensions > ~/dotfiles/vscode/extensions.txt
```

**Linux :**
```bash
cp ~/.config/Code/User/settings.json ~/dotfiles/vscode/
code --list-extensions > ~/dotfiles/vscode/extensions.txt
```

### 2. Créer le lien symbolique

**macOS :**
```bash
# Supprimer l'original
rm ~/Library/Application\ Support/Code/User/settings.json

# Créer le symlink (le fichier dans dotfiles devient le maître)
ln -sf ~/dotfiles/vscode/settings.json ~/Library/Application\ Support/Code/User/settings.json
```

**Linux :**
```bash
# Supprimer l'original
rm ~/.config/Code/User/settings.json

# Créer le symlink
ln -sf ~/dotfiles/vscode/settings.json ~/.config/Code/User/settings.json
```

> **Résultat :** Toutes les modifications faites dans VS Code modifient directement `~/dotfiles/vscode/settings.json`

---

## Ajouter une nouvelle extension

1. Installer l'extension dans VS Code (via l'interface)
2. Mettre à jour `extensions.txt` :
```bash
code --list-extensions > ~/dotfiles/vscode/extensions.txt
```
3. Commit et push :
```bash
cd ~/dotfiles
git add vscode/extensions.txt
git commit -m "Add new extension"
git push
```

---

## Synchroniser sur une autre machine

```bash
# Récupérer les changements
cd ~/dotfiles
git pull
```

> **Settings :** Se synchronisent automatiquement grâce au symlink.

> **Extensions :** Ne s'installent pas automatiquement. Deux options :

### Option 1 — Relancer setup.sh (recommandé)
```bash
./setup.sh
```
Sans risque : si une extension est déjà installée elle est skippée, sinon elle est installée.

### Option 2 — Lancer manuellement
```bash
cat ~/dotfiles/vscode/extensions.txt | xargs -L 1 code --install-extension
```

---

## Installation sur une nouvelle machine

```bash
# Cloner le repo
git clone <ton-repo> ~/dotfiles

# Lancer le script d'installation
cd ~/dotfiles
chmod 777 setup.sh
./setup.sh
```

Le script fait automatiquement :
- Crée les liens symboliques pour tous les dotfiles
- Crée le lien symbolique pour `settings.json` (selon l'OS)
- Installe toutes les extensions listées dans `extensions.txt`

---

## Notes importantes

### Settings
- Synchronisation automatique grâce au symlink
- Modifier dans VS Code → modifie directement `~/dotfiles/vscode/settings.json`
- Juste faire `git push` / `git pull`

### Extensions
- Mise à jour manuelle avec : `code --list-extensions > ~/dotfiles/vscode/extensions.txt`
- Penser à faire cette commande après chaque installation d'extension
- Sur l'autre machine : `git pull` puis relancer `./setup.sh` ou installer manuellement

### setup.sh
- À lancer **une seule fois** par machine lors de la première installation
- Peut être relancé sans risque pour mettre à jour les extensions
