# Mes Dotfiles

Bienvenue dans mon environnement de configuration personnel.  
Ce dépôt contient tous mes fichiers de config pour Git, Vim, Zsh, VS Code, etc. afin de garder un setup cohérent entre mes différentes machines.

---

## Contenu

| Fichier/Dossier   | Description |
|-------------------|-------------|
| `.gitconfig`      | Configuration globale Git (nom, email, alias, couleurs) |
| `.gitignore`      | Fichiers à ignorer dans tous les projets Git |
| `.gitattributes`  | Règles de détection de langage et comportement GitHub |
| `.vimrc`          | Configuration Vim (indentation, raccourcis, apparence) |
| `.vim/`           | Répertoire Vim (plugins, thèmes, scripts, configs additionnelles) |
| `.zshrc`          | Configuration Zsh (prompt, alias, environnement) |
| `.config/`        | Configurations diverses (Hyprland, etc.) |
| `setup.sh`        | Script d'installation automatique |

---

## Installation
```bash
# Cloner le dépôt
git clone https://github.com/unefoisdeuxfoistroisfois/dotfiles.git ~/dotfiles

# Se placer dans le dossier dotfiles
cd ~/dotfiles

# Lancer le script d'installation
chmod +x setup.sh
./setup.sh
```

Le script créera automatiquement tous les liens symboliques nécessaires.

---

## Notes

- Les dotfiles utilisent des liens symboliques pour rester synchronisés avec le dépôt Git
- Modifications dans `~/.vimrc` = modifications automatiques dans `~/dotfiles/.vimrc`
- Permet de garder la même config entre PC personnel et école 42
