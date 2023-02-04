" --------------------------------- Vim-Plug {{{
" URL: https://github.com/junegunn/vim-plug

filetype plugin indent on
syntax enable

" }}}
" -------------------------------- Vim-Settings {{{
set nocompatible
set noinsertmode
set number
set relativenumber
set nobackup
set noswapfile
set noerrorbells
set expandtab
set smartcase
set ignorecase
set smartindent
set autoindent
set hidden
set tabstop=4 softtabstop=4
set shiftwidth=4
set columns=133
set lines=28
set window=27
set cmdheight=1
set wrap
set nohlsearch
set incsearch
set scroll=6
set scrolloff=1
set laststatus=2
set signcolumn=yes
set numberwidth=4
set termguicolors
set syntax=vim
set cursorcolumn
set nocursorline
set foldenable
set foldmethod=marker
set foldmarker={{{,}}}
set startofline

" }}}
" -------------------------------- Vim-Plug {{{
call plug#begin('~/.vim/plugged')

" --- Themes
Plug 'arcticicestudio/nord-vim'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'morhetz/gruvbox'
Plug 'sickill/vim-monokai'

" --- Tim Pope Plugins
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'

" --- Honza Plugin
Plug 'honza/vim-snippets'

" --- NERDTree Plugin
Plug 'preservim/nerdtree'

" --- JuneGunn-Choi Plugins 
Plug 'junegunn/vim-easy-align'
Plug 'https://github.com/junegunn/vim-github-dashboard.git'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" --- SirVer Plugin 
Plug 'SirVer/ultisnips'

call plug#end()

" }}}

