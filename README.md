# 🛠️ Mes Dotfiles

Bienvenue dans mon environnement de configuration personnel.  
Ce dépôt contient tous mes fichiers de config pour Git, Vim, etc. afin de garder un setup cohérent entre mes différentes machines.

---

## 📁 Contenu

| Fichier           | Description |
|-------------------|-------------|
| `.gitconfig`      | Configuration globale Git (nom, email, alias, couleurs) |
| `.gitignore`      | Fichiers à ignorer dans tous les projets Git |
| `.gitattributes`  | Règles de détection de langage et comportement GitHub |
| `.vimrc`          | Configuration Vim (indentation, raccourcis, apparence) |

---

## 🚀 Installation rapide

> ℹ️ Tous les fichiers de config sont stockés dans `~/dotfiles`.  
> On crée ensuite des **liens symboliques** vers ces fichiers pour les rendre actifs dans le système,  
> sans avoir à les copier ni dupliquer.  
> Il est recommandé d’utiliser des **chemins relatifs** pour garder l’installation portable.

```bash
# Cloner le dépôt
git clone https://github.com/unefoisdeuxfoistroisfois/dotfiles.git ~/dotfiles

# Se placer dans le dossier dotfiles
cd ~/dotfiles

# Créer les liens symboliques vers le home (~), avec chemins relatifs
ln -s ~dotfiles/.gitconfig ~/.gitconfig
ln -s ~dotfiles/.gitignore ~/.gitignore
ln -s ~dotfiles/.gitattributes ~/.gitattributes
ln -s ~dotfiles/.vimrc ~/.vimrc

# Activer le .gitignore global
git config --global core.excludesfile ~/.gitignore
