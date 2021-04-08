" A nice vimrc config file

set nocompatible              " be iMproved, required

" sintax highlighting
syntax on

" if it doesn't already exist...
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif


" -----------------------------------------------
" VIM-PLUG LIST OF PLUGINS
" -----------------------------------------------

call plug#begin('~/.vim/plugged')

" Make sure you use single quotes
Plug 'gmarik/Vundle.vim'
Plug 'tpope/vim-fugitive'

" Plugs - This is the command to install addons
Plug 'morhetz/gruvbox'
Plug 'altercation/vim-colors-solarized' " solarized color scheme
Plug 'tomlion/vim-solidity'
" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'
Plug 'itchyny/lightline.vim'
Plug 'ntpeters/vim-better-whitespace'     " trailing whitespaces management. Defines the command :StripWhitespace
Plug 'matze/vim-move'                     " move lines up and down with alt-k / alt-j
Plug 'vim-latex/vim-latex'                " vim-latex suite
Plug 'tpope/vim-surround'                 " surround text objects with parentheses
"Plug 'bling/vim-airline'                  " lower and upper bar
" --------
" Below are the original suggestions from vim-plug tutorial
" --------
" Any valid git URL is allowed
"Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Multiple Plug commands can be written in a single line using | separators
"Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
"Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
"Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using a non-default branch
"Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
"Plug 'fatih/vim-go', { 'tag': '*' }

" Plugin options
"Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
"Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Unmanaged plugin (manually installed and updated)
"Plug '~/my-prototype-plugin'

" Initialize plugin system
call plug#end()

" -----------------------------------------------
" END OF  VIM-PLUG LIST OF PLUGINS
" -----------------------------------------------

" ------------------------
" SET GLOBAL OPTIONS
" ------------------------
set autoindent
filetype plugin indent on    " required
set copyindent
set preserveindent
syntax on

set backspace=indent,eol,start
" set tab completion behviour
set wildmode=longest,list,full " first tab: longest common completion, second tab: list, third and subsequents: cycle
set wildmenu

colorscheme gruvbox
set background=dark

set cursorline

" Make vsplit put the new buffer on the right of the current buffer by default
set splitright

" set path for autocompletion from included file
set path+=~/include/

" to show line numbers
set number
"set relativenumber
set ruler
set hlsearch
set incsearch
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
