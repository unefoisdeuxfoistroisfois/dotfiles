" --- 42 HEADER ---
let g:user42 = 'britela-'
let g:mail42 = 'britela-@student.s19.be'

" --- APPARENCE ---
syntax on
"colorscheme elflord
"colorscheme sorbet
"colorscheme zaibatsu
"colorscheme default
"colorscheme murphy
"colorscheme shades_of_purple
colorscheme koehler

"Ubuntu ne possede pas de couleur 24 bits
if has("termguicolors") && has("unix") && !has("macunix")
    set termguicolors
endif

set autoindent	" Va identer la prochaine ligne comme la precedente
set smartindent	" indente intelgenite pour les {}

set number
set relativenumber

set ruler	" Permet d'avoir les lignes et colonnes (bas droite)
set showcmd	" Voir les commandes qu'on tape (bas droite)
set cursorline	" Surbillance sur la ligne du curseur

set textwidth=80
set formatoptions+=t   " Active le retour à la ligne automatique à textwidth
set colorcolumn=80 " Colonne pour limiter la frappe a 80

set list
set list listchars=tab:\\u2591\\u2591 

set showmatch	"apres avoir taper ) il va clingté au ( qui precede
set matchtime=10	"temps de clignotememnt (1 seconde)

" --- RECHERCHE ---
set hlsearch	" Surbrillance sur le mot trouvé
set incsearch	" Recherche en temps réel pendant que tu tapes
"set nohlsearch

" --- NAVIGATION ---
set mouse=a	" a pour all

" --- COPIER / COLLER ---
if has('unnamedplus')
    set clipboard=unnamedplus	"Linux Ubuntu"
elseif has('clipboard')	"vim ne connasi pas unnamed il connais juste clibpard
    set clipboard=unnamed	"MacOs"
endif

" --- SAUVEGARDE AUTO ---
set autowriteall
