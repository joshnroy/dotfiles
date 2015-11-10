" This is all of the plugin stuffs
call plug#begin('~/.vim/plugged')

Plug 'shougo/unite.vim'
Plug 'bling/vim-airline'
Plug 'whatyouhide/vim-gotham'
Plug 'raimondi/delimitmate'
Plug 'tpope/vim-surround'
Plug 'valloric/youcompleteme'
Plug 'scrooloose/syntastic'
Plug 'vim-scripts/automaticlatexplugin'
Plug 'edkolev/tmuxline.vim'
Plug 'groenewege/vim-less'
Plug 'def-lkb/ocp-indent-vim'
Plug 'scrooloose/nerdcommenter'
Plug 'christoomey/vim-tmux-navigator'

call plug#end()


set tabstop=2
set shiftwidth=2
set expandtab
set smarttab
set smartindent
set autoindent
set number
set ruler
set showcmd
set hlsearch
set magic
set noerrorbells
set novisualbell
syntax on
set foldenable
set nowrap
set clipboard=unnamedplus
set mouse=a
set hidden
set showtabline=0
set splitbelow
set splitright

" spell checker

" Switch between splits with crtl-key
nnoremap <C-J> <C-W>j
nnoremap <C-K> <C-W>k
nnoremap <C-H> <C-W>h
nnoremap <C-L> <C-W>l

" Map the leader key to SPACE
let mapleader="\<SPACE>"

" colorscheme
colorscheme gotham

"airline settings
let g:airline_theme = 'gotham'

" Unite
nnoremap <leader>f :<C-u>Unite -no-split -buffer-name=files file<cr>
nnoremap <leader>b :<C-u>Unite -no-split -buffer-name=buffers buffer<cr>

" Ocaml settings
"let g:opamshare = substitute(system('opam config var share'),'\n$','','''')
"execute "set rtp+=" . g:opamshare . "/merlin/vim"
"let g:syntastic_ocaml_checkers=['merlin']

" for dvorak when I switch to it
"runtime! macros/dvorak.vim
