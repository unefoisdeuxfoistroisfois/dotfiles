" --- 42 HEADER ---
let g:user42 = 'britela-'
let g:mail42 = 'britela-@student.42belgium.be'

" --- APPARENCE ---
syntax on
"colorscheme elflord
"colorscheme sorbet
"colorscheme zaibatsu
"colorscheme default
"colorscheme murphy
colorscheme shades_of_purple
"colorscheme koehler
"colorscheme industry

" Ubuntu ne possede pas de couleur 24 bits
"if has("termguicolors") && has("unix") && !has("macunix")
    set termguicolors
"endif

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
set ignorecase	" Ignore la casse (colors = COLORS && COLORS = colors)
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
elseif has('clipboard')	" vim ne connait pas unnamed il connait juste clipboard
    set clipboard=unnamed	" MacOs"
endif

" --- FICHIER ---
set noswapfile			" Supprime les fichier .swp
set fileformats=unix,dos	" WSL copier/coller (^M)

" --- COMMENTAIRE ---
" s/^/"/ VIM
" \c pour mettre en commentaire apres une selection V et \u pour uncommenter
" <CR> -> Carriage Return

" C et Java -> //
" s/^/\/\/ C, JAVA
autocmd FileType c,java vnoremap <buffer> <leader>c :s/^/\/\//<CR>:nohlsearch<CR>
autocmd FileType c,java vnoremap <buffer> <leader>u :s/^\/\///<CR>:nohlsearch<CR>

" Python -> #
" s/^/#/ PYTHON
autocmd FileType python vnoremap <buffer> <leader>c :s/^/#/<CR>:nohlsearch<CR>
autocmd FileType python vnoremap <buffer> <leader>u :s/^#//<CR>:nohlsearch<CR>

" --- TABULATION ---
" > -> va vers la droite
" < -> va vers la gauche
" gv garde la seleciton apres un premiere tabulation
" S-Tab shift + tab 
vnoremap <Tab> >gv
vnoremap <S-Tab> <gv
"--- VIM PURE ---
" Controle V, I et TAB
" V + > / <

" --- DESACTIVATION DES FLECHES ---
" MODE NORMAL
nnoremap <Up>    <Nop>
nnoremap <Down>  <Nop>
nnoremap <Left>  <Nop>
nnoremap <Right> <Nop>

" MODE INSERTION
inoremap <Up>    <Nop>
inoremap <Down>  <Nop>
inoremap <Left>  <Nop>
inoremap <Right> <Nop>

" MODE VISUEL
vnoremap <Up>    <Nop>
vnoremap <Down>  <Nop>
vnoremap <Left>  <Nop>
vnoremap <Right> <Nop>

" --- SAUVEGARDE AUTO ---
set autowriteall

" --- STARTUP DASHBOARD ---
function! StartupLogoBuffer()
  enew
  setlocal buftype=nofile
  setlocal bufhidden=wipe
  setlocal noswapfile
  setlocal modifiable
  setlocal nobuflisted
  setlocal colorcolumn=    " Désactive la colorcolumn dans le dashboard
  setlocal nonumber
  setlocal norelativenumber

  let l:logo = readfile(expand('~/.vim/logo/spiderascii.txt'))
  call setline(1, l:logo)

  " Centrage horizontal
"  execute 'silent 1,$center ' . &columns

  setlocal nomodifiable

  " Touches du dashboard
  nnoremap <buffer> s :bd!<CR>
  nnoremap <buffer> q :q<CR>
endfunction

autocmd VimEnter * call StartupLogoBuffer()
"autocmd VimEnter * if argc() == 0 | call StartupLogoBuffer() | endif

" --- NETRW --- 
"autocmd VimEnter * nested :Vexplore
"autocmd VimEnter * :Vexplore	" Automatisation pour l'ouvrir a l'ouverture

"let g:netrw_winsize = 15	" Taille a 15 colonne (:15 Le)
let g:netrw_banner = 0		" Suppresion de la baniere au dessus
let g:netrw_liststyle = 3	" Aborescence style 3 + facile pour moi (i)
"let g:netrw_browse_split = 4	" Affiche fichier dans ecran principal

" Dictionnaires pour auto-complétion <C-x><C-k>
" set dictionary+=~/.vim/dict/c.txt
autocmd FileType python setlocal dictionary+=~/.vim/dict/python.txt
autocmd FileType java setlocal dictionary+=~/.vim/dict/java.txt
autocmd FileType c setlocal dictionary+=~/.vim/dict/c.txt
