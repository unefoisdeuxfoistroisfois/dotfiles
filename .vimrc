" --- 42 HEADER ---
let g:user42 = 'britela-'
let g:mail42 = 'britela-@student.s19.be'

" --- APPARENCE ---
syntax on
"colorscheme elflord
"colorscheme sorbet 
colorscheme zaibatsu
"colorscheme default
"colorscheme murphy
"colorscheme shades_of_purple

set number
set relativenumber

set ruler	" Permet d'avoir les lignes et colonnes (bas droite)
set cursorline	" Surbillance sur la ligne du curseur
set colorcolumn=81 " Colonne pour limiter la frappe a 80
set showcmd	" Voir les commandes qu'on tape (bas droite)
set showmode

" --- RECHERCHE ---
set hlsearch	" Surbrillance sur le mot trouvé 
set incsearch	" Recherche en temps réel pendant que tu tapes
"set nohlsearch	" Enleve la surbrillance apres avoir trouvé 

" --- NAVIGATION ---
set mouse=a	" a pour all

" --- COPIER / COLLER ---
set clipboard=unnamed
