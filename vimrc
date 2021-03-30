" ------------------------
" VUNDLE SETTINGS
" ------------------------
set nocompatible              " be iMproved, required
filetype off                  " required

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

" let g:r_macvim_RSource     = '<D-R>' 
" let g:r_macvim_RSend       = '<D-r>' 
" let g:r_macvim_RChgWorkDir = '<D-d>' 
" let g:r_macvim_RComment    = '<D-3>' 

" to show line numbers
set number
set hlsearch
set backspace=indent,eol,start
set tabstop=4
set shiftwidth=4
set expandtab
