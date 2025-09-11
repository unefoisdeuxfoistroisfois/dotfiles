# Nettoyer le terminal au lancement
clear

USER=bradley
export USER

# %F{black}%n (USER)
# %c chemin courant
# PROMPT="%F{black}%n %f%c %% "
PROMPT="%n %c %% "

# bat (cat amélioré)
# sous Ubuntu/WSL -> batcat
# sous macOS -> bat (donc adapte ici si besoin)
alias bat="batcat"
