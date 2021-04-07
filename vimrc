" ------------------------
" VUNDLE SETTINGS
" ------------------------
set nocompatible              " be iMproved, required
filetype off                  " required

" sintax highlighting
syntax on

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

" Start of Plugins list
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'tpope/vim-fugitive'

" Plugins - This is the command to install addons
Plugin 'altercation/vim-colors-solarized' " solarized color scheme
Plugin 'morhetz/gruvbox'
Plugin 'tomlion/vim-solidity'

" All of your Plugins must be added before the following line
call vundle#end()

filetype plugin indent on    " required
syntax on

set backspace=indent,eol,start


colorscheme gruvbox
set background=dark


" to show line numbers
"set number
set relativenumber
set ruler
set hlsearch
set backspace=indent,eol,start
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set laststatus=2
set showcmd " Show (partial) command in status line.
set showmatch " Show matching brackets.
set wrap
set textwidth=80
" Encoding
set encoding=utf-8
" Set status line display
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ [BUFFER=%n]\ %{strftime('%c')}
set visualbell          " blink cursor on error, instead of beeping



" this sets the colorscheme for lightline plugin
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ }
