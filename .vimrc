" This is all of the plugin stuffs
call plug#begin('~/.vim/plugged')

Plug 'chriskempson/base16-vim'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'edkolev/tmuxline.vim'
Plug 'valloric/youcompleteme'
Plug 'raimondi/delimitmate'
Plug 'vim-syntastic/syntastic'

call plug#end()


" General Options
set tabstop=4
set shiftwidth=4
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
syntax enable
set foldenable
set nowrap
set hidden
set splitbelow
set splitright
filetype plugin on
set ttimeoutlen=50
set laststatus=2
set colorcolumn=80
set textwidth=79
set wrapmargin=5
set noswapfile

" Colorscheme
colorscheme base16-dracula
let g:airline_theme='base16'

" Syntax
let g:syntastic_c_checkers = ['make']
