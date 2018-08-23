call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-commentary'
Plug 'jiangmiao/auto-pairs'

Plug 'scrooloose/nerdtree'
Plug 'vim-ctrlspace/vim-ctrlspace'

Plug 'rakr/vim-one'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'vim-pandoc/vim-pandoc'
Plug 'vim-pandoc/vim-pandoc-syntax'

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'neomake/neomake'
Plug 'Chiel92/vim-autoformat'

Plug 'mileszs/ack.vim'

call plug#end()

" General Options
set tabstop=2
set shiftwidth=2
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
set termguicolors
set background=dark
colorscheme one
let g:airline_theme='one'
let g:one_allow_italics = 1
set t_8b=[48;2;%lu;%lu;%lum
set t_8f=[38;2;%lu;%lu;%lum

" Powerline
let g:airline_powerline_fonts = 1

" Italics
set t_ZH=[3m
set t_ZR=[23m

" YouCompleteMe
let g:ycm_autoclose_preview_window_after_completion=1

" Autoformat
let g:formatdef_google_cpp = 'clang-format -style=google'
let g:formatters_cpp = ['google_cpp']

" Autocomplete
let g:deoplete#enable_at_startup = 1
let g:python_host_prog = '/home/josroy/.pyenv/versions/neovim2/bin/python'
let g:python3_host_prog = '/home/josroy/.pyenv/versions/neovim3/bin/python'

" Useful remappings
" Searches for highlighted text in visual mode
vnoremap // y/<C-R>"<CR>

" For ctrlspace
			\let g:airline_exclude_preview = 1

" Neomake
" Full config: when writing or reading a buffer, and on changes in insert and
" normal mode (after 1s; no delay when writing).
call neomake#configure#automake('nrwi', 500)
