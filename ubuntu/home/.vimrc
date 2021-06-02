set encoding=utf-8

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugins
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-commentary'
call plug#end()

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Misc
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set history=100

set nobackup
set nowritebackup
set noswapfile

set autoread

set updatetime=1000

filetype plugin indent on

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Interface
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" theme
syntax on
set background=dark

" line numbers
set number
set numberwidth=5

" textwrap
set textwidth=80
set colorcolumn=+1

" show normal mode commands
set showcmd

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Window
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" split
set splitbelow
set splitright

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Typing
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" insert mode
:autocmd InsertEnter,InsertLeave * set cul!
let &t_SI = "\e[5 q"
let &t_EI = "\e[2 q"

" tabs
set tabstop=2
set shiftwidth=2
set expandtab
set shiftround

" normal backspace
set backspace=2

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => File Navigation
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" local search
set hlsearch
set incsearch
set smartcase