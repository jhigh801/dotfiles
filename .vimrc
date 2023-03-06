" --------------------------------- Jon's Vimrc

" --------------------------------- Vim-Pathogen (Vim Plugin-Manager) {{{
execute pathogen#infect()
syntax on
filetype plugin indent on

" }}}
" --------------------------------- Settings {{{
set nocompatible
set noinsertmode
set number
set relativenumber
set expandtab
set smartindent
set smartcase
set tabstop=4
set softtabstop=4
set shiftwidth=4
set wrap 
set syntax=vim
set laststatus=2
set cursorline
set cursorcolumn
set nobackup
set noswapfile
set undodir=~/.vim/undodir
set noerrorbells 
set lines=25
set window=24
set cmdheight=1
set scroll=5
set scrolloff=0
set columns=113
set cdpath=,,
set hlsearch
set incsearch
set signcolumn=yes
set foldenable
set foldmethod=marker
set foldmarker={{{,}}}
" }}}
" -------------------------------- Plugins {{{

" --------------- VIM-Airline {{{
" This is disabled by default; add the following to your vimrc to enable the extension:
let g:airline#extensions#tabline#enabled = 1    

" Separators can be configured independently for the tabline, so here is how you can define "straight" tabs:
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'

" add this to your vimrc which will automatically populate the g:airline_symbols dictionary with the powerline symbols.
let g:airline_powerline_fonts = 1

" }}}
" --------------- VIM-Fugitive {{{
" }}}
" --------------- Auto-Pairs {{{
" add let g:AutoPairsFlyMode = 1 .vimrc to turn it on
let g:AutoPairsFlyMode = 1
let g:AutoPairsShortcutBackInsert = '<M-b>'

" }}}
 



