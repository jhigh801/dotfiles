" ----------------- Vim-Pathogen {{{
" URL: https://github.com/tpope/vim-pathogen

execute pathogen#infect()

" }}}
"----------------- Vim-Fugitive {{{
set stl=%{FugitiveStatusline()}
" }}}
"------------------ Vim-Airline {{{
" URL: https://github.com/vim-airline/vim-airline

" This is put into my vimrc to enable the extension:
let g:airline#extensions#tabline#enabled = 1

" Seperators
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'

" Tabline Formatter
let g:airline#extensions#tabline#formatter = 'default'

set laststatus=2

" }}}
"----------------- Vim-Airline-Themes {{{
" to set the theme:
let g:airline_theme='simple'
" }}}
"----------------- Vim-Ctrlp {{{
set runtimepath^=~/.vim/bundle/ctrlp.vim




" Change the default mapping and the default command to invoke CtrlP:
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " Linux/MacOSX
let g:ctrlp_user_command = 'find %s -type f'        " MacOSX/Linux
" }}}





















syntax on
filetype plugin indent on

set nu
set incsearch
set nowrap
set noerrorbells
set noim
set tabstop=4 softtabstop=4 
set shiftwidth=4
set expandtab
set smartindent
set nowrap
set noswapfile
set colorcolumn=80
highlight colorcolumn ctermbg=0 guibg=lightgrey

