" --- 42 HEADER ---
let g:user42 = 'britela-'
let g:mail42 = 'britela-@student.s19.be'

" --- APPARENCE ---
syntax on
"colorscheme elflord
colorscheme sorbet
"colorscheme zaibatsu
"colorscheme default
"colorscheme murphy
"colorscheme shades_of_purple
"colorscheme koehler
"colorscheme industry

" Ubuntu ne possede pas de couleur 24 bits
if has("termguicolors") && has("unix") && !has("macunix")
    set termguicolors
endif

set autoindent	" Indente la prochaine ligne comme la precedente
set smartindent	" Indente intelligente pour les {}

set number
set relativenumber

set ruler	" Permet d'avoir les lignes et colonnes (bas droite)
set showcmd	" Voir les commandes qu'on tape (bas droite)
set cursorline	" Surbillance sur la ligne du curseur

set textwidth=80
set formatoptions+=t	" Active le retour à la ligne automatique à textwidth
set colorcolumn=80	" Colonne pour limiter la frappe a 80

"set list
"set list listchars=tab:\\u2591\\u2591 

set showmatch	" Apres avoir taper ) il va clingté à la ( qui précède
set matchtime=10	" Temps de clignotememnt (1 seconde)
set visualbell	" Suppression des bruits à la fin du fichier et au debut

" --- RECHERCHE ---
set hlsearch	" Surbrillance sur le mot trouvé
set incsearch	" Recherche en temps réel pendant que tu tapes
"set nohlsearch
nnoremap <leader><CR> :nohlsearch<CR>

" --- NAVIGATION ---
set mouse=a	" a pour all

" --- COPIER / COLLER ---
" Voir si VIM supporte le +clipboard de ton OS grace a cette commande
" vim --version | grep clipboard
" si -clipboard alors sudo apt install vim-gtk3 ou parfois vim-nox
if has('unnamedplus')
    set clipboard=unnamedplus	" Linux Ubuntu"
elseif has('clipboard')	" vim ne connasi pas unnamed il connais juste clipboard
    set clipboard=unnamed	" MacOs"
endif

" --- FICHIER ---
set noswapfile	" Supprime les fichier .swp

" --- COMMENTAIRE ---
" s/^/"/ VIM
" s/^/\/\/ C, JAVA
" \c pour mettre en commentaire apres une selection V et \u pour uncommenter
" <CR> -> Carriage Return
vnoremap <leader>c :s/^/\/\//<CR>:nohlsearch<CR>
vnoremap <leader>u :s/^\/\/<CR>:nohlsearch<CR>

" --- TABULATION ---
" > -> va vers la droite
" < -> va vers la gauche
" gv garde la seleciton apres un premiere tabulation
" S-Tab shift + tab 
vnoremap <Tab> >gv
vnoremap <S-Tab> <gv

" --- DESACTIVATION DES FLECHE ---

" MODE NORMAL
nnoremap <Up>    :echo "UTILISE k"<CR>
nnoremap <Down>  :echo "UTILISE j"<CR>
nnoremap <Left>  :echo "UTILISE h"<CR>
nnoremap <Right> :echo "UTILISE l"<CR>

" MODE INSERTION esc car en mode insertion vim ne peut pas faire de echo
" ensuite i pour revenir en mode INSERTION
inoremap <Up>    <Esc>:echo "UTILISE k"<CR>i
inoremap <Down>  <Esc>:echo "UTILISE j"<CR>i
inoremap <Left>  <Esc>:echo "UTILISE h"<CR>i
inoremap <Right> <Esc>:echo "UTILISE l"<CR>i

" MODE VISUEL
vnoremap <Up>    :<C-u>echo "UTILISE k"<CR>
vnoremap <Down>  :<C-u>echo "UTILISE j"<CR>
vnoremap <Left>  :<C-u>echo "UTILISE h"<CR>
vnoremap <Right> :<C-u>echo "UTILISE l"<CR>

" --- SAUVEGARDE AUTO ---
set autowriteall

" --- NETRW --- 
autocmd VimEnter * :Vexplore	" Automatisation pour l'ouvrir a l'ouverture

let g:netrw_winsize = 15	" Taille a 15 colonne (:15 Le)
let g:netrw_banner = 0		" Suppresion de la baniere au dessus
let g:netrw_liststyle = 3	" Aborescence style 3 + facile pour moi (i)
let g:netrw_browse_split = 4	" Affiche fichier dans ecran principal
