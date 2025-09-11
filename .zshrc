# Nettoyer le terminal au lancement
clear

USER=bradley
export USER

# %F{black}%n (USER)
# %c (chemin courant)
# PROMPT="%F{black}%n %f%c %% "
PROMPT="%n %c %% "

# bat (cat amélioré)
# Ubuntu -> batcat
# macOS -> bat
if command -v batcat &> /dev/null; then
    alias bat="batcat"
elif command -v bat &> /dev/null; then
    alias bat="bat"
fi
