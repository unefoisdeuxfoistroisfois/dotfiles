# Nettoyer le terminal au lancement
# pour ne pas avoir l'heure de connexion
clear

# Enlève la premiere ligne d'éspace
precmd() {
  if [[ -n "$_precmd_ran" ]]; then
    echo
  fi
  _precmd_ran=1
}

# Nom user en fonciton de l'OS
if [[ "$(uname)" == "Darwin" ]]; then
    export USER="bradley"
elif [[ "$(uname)" == "Linux" ]]; then
    export USER="britela-"
    export MAIL="britela-@student.s19.be"
fi

if [[ "$(uname)" == "Linux" ]]; then
  bash -c "rm -f ~/.config/BraveSoftware/Brave-Browser/Singleton*" >/dev/null 2>&1
fi

setopt PROMPT_SUBST

# Fonction qui récupère la branche Git
git_branch() {
  branch=$(git rev-parse --abbrev-ref HEAD 2>/dev/null)
  if [ -n "$branch" ]; then
    echo "%F{214}($branch)%f"
  fi
}

PROMPT="%F{213}%n%f %F{141}%c%f \$(git_branch) %% "

#USER=bradley
#export USER

#USER=britela-
#MAIL=britela-@student.s19.be
#export USER MAIL

# %F{black}%n (USER)
# %c (chemin courant)
# PROMPT="%F{black}%n %f%c %% "
#PROMPT="%n %c %% "

#PROMPT="%F{214}%n%f %F{33}%c%f %% "
#PROMPT="%F{cyan}%n%f %F{yellow}%c%f %% "
#PROMPT="%F{213}%n%f %F{141}%c%f %% "

# bat (cat amélioré)
# Ubuntu -> batcat
# macOS -> bat
if command -v batcat &> /dev/null; then
    alias bat="batcat"
elif command -v bat &> /dev/null; then
    alias bat="bat"
fi

# Mapping pour que bat fonciont direcement avec le man -> man atoi
if command -v batcat &> /dev/null; then
    export MANPAGER="sh -c 'col -bx | batcat -l man -p'"
elif command -v bat &> /dev/null; then
    export MANPAGER="sh -c 'col -bx | bat -l man -p'"
fi
export MANROFFOPT="-c"

# Chemin pour bat sur Linux comme j'ai pas les droit sudo j'ai mis dans .local
# direct pas dans usr/.local
export PATH="$HOME/.local/bin:$PATH"
