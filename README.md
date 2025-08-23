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
| `.vim/`           | Répertoire Vim (plugins, thèmes, scripts, configs additionnelles) |

---

## 🚀 Installation rapide

> ℹ️ Les dotfiles sont stockés dans `~/dotfiles`.
> > On crée ensuite des **liens symboliques** vers ces fichiers pour les rendre actifs dans le système,  
> sans avoir à les copier ni dupliquer.  
> Il est recommandé d’utiliser des **chemins relatifs** pour garder l’installation portable.

```bash
# Cloner le dépôt
git clone https://github.com/unefoisdeuxfoistroisfois/dotfiles.git ~/dotfiles

# Se placer dans le dossier dotfiles
cd ~/dotfiles

# Créer les liens symboliques vers le home (~), avec chemins relatifs

#### 🔹 Méthode simple (pas à pas)
ln -sf ~/dotfiles/.gitconfig ~/.gitconfig
ln -sf ~/dotfiles/.gitignore ~/.gitignore
ln -sf ~/dotfiles/.gitattributes ~/.gitattributes
ln -sf ~/dotfiles/.vimrc ~/.vimrc
ln -sf ~/dotfiles/.vim ~/.vim

#### 🔹 Méthode rapide (tout d’un coup)
for file in .gitconfig .gitignore .gitattributes .vimrc .vim; do
    ln -sf ~/dotfiles/$file ~/$file
done

# Activer le .gitignore global
git config --global core.excludesfile ~/.gitignore
