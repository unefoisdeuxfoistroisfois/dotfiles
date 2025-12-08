#!/bin/bash

GREEN='\033[0;32m'
BLUE='\033[0;34m'
NC='\033[0m'

echo -e "${GREEN}CRÉATION DE LIEN SYMBO${NC}"

# Suppression des anciens
rm -rf ~/.gitconfig
rm -rf ~/.gitignore
rm -rf ~/.gitattributes
rm -rf ~/.vimrc
rm -rf ~/.vim
rm -rf ~/.zshrc
rm -rf ~/.config

ln -sf ~/dotfiles/.gitconfig ~/.gitconfig
ln -sf ~/dotfiles/.gitignore ~/.gitignore
ln -sf ~/dotfiles/.gitattributes ~/.gitattributes
ln -sf ~/dotfiles/.vimrc ~/.vimrc
ln -sf ~/dotfiles/.vim ~/.vim
ln -sf ~/dotfiles/.zshrc ~/.zshrc
ln -sf ~/dotfiles/.config ~/.config

# --- AVEC UN FOR ---
#for file in .gitconfig .gitignore .gitattributes .vimrc .vim; do
#    ln -sf ~/dotfiles/$file ~/$file
#done

# --- VS CODE ---
echo -e "${GREEN}Configuration VS Code${NC}"

# Détection de l'OS
if [[ "$OSTYPE" == "darwin"* ]]; then
    # macOS
    VSCODE_USER_DIR="$HOME/Library/Application Support/Code/User"
else
    # Linux
    VSCODE_USER_DIR="$HOME/.config/Code/User"
fi

mkdir -p "$VSCODE_USER_DIR"
ln -sf ~/dotfiles/vscode/settings.json "$VSCODE_USER_DIR/settings.json"

if [ -f ~/dotfiles/vscode/extensions.txt ]; then
    echo "Installation des extensions VS Code..."
    cat ~/dotfiles/vscode/extensions.txt | xargs -L 1 code --install-extension
fi

echo -e "${BLUE}INSTALLATION TERMINÉE${NC}"
