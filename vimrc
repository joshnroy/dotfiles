call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-commentary'
Plug 'jiangmiao/auto-pairs'

Plug 'scrooloose/nerdtree'
Plug 'vim-ctrlspace/vim-ctrlspace'

Plug 'sheerun/vim-polyglot'
Plug 'vim-pandoc/vim-pandoc'
Plug 'vim-pandoc/vim-pandoc-syntax'

Plug 'altercation/vim-colors-solarized'

call plug#end()

" General Options
set tabstop=4
set shiftwidth=4
set smarttab
set smartindent
set autoindent
set number
set relativenumber
set ruler
set showcmd
set hlsearch
set magic
set noerrorbells
set novisualbell
syntax on
syntax enable
set foldenable
set hidden
set splitbelow
set splitright
filetype plugin on
set ttimeoutlen=50
set laststatus=2
set colorcolumn=80
set textwidth=79
set noswapfile
set expandtab
set softtabstop=0
set ignorecase
set smartcase
set clipboard=unnamedplus

" Vim Control Space
set showtabline=0
let g:CtrlSpaceLoadLastWorkspaceOnStart = 1
let g:CtrlSpaceSaveWorkspaceOnSwitch = 1
let g:CtrlSpaceSaveWorkspaceOnExit = 1
let g:CtrlSpaceDefaultMappingKey = "<C-space> "

" Colorscheme
set background=dark
colorscheme solarized

" Powerline
" let g:airline_powerline_fonts = 1

" Italics
set t_ZH=[3m
set t_ZR=[23m

" Useful remappings
" Searches for highlighted text in visual mode
vnoremap // y/<C-R>"<CR>
