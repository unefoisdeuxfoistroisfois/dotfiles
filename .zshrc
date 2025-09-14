# Nettoyer le terminal au lancement
# pour ne pas avoir l'heure de connexion
clear

#USER=bradley
#export USER

#USER=britela-
#MAIL=britela-@student.s19.be

#export USER MAIL

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
