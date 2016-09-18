" This is all of the plugin stuffs
call plug#begin('~/.vim/plugged')

Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'raimondi/delimitmate'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-commentary'
Plug 'vim-scripts/automaticlatexplugin'
Plug 'edkolev/tmuxline.vim'
Plug 'def-lkb/ocp-indent-vim'
Plug 'tpope/vim-obsession'
Plug 'valloric/YouCompleteMe'
Plug 'Shougo/neosnippet.vim'
Plug 'digitaltoad/vim-jade'
Plug 'vim-pandoc/vim-pandoc'
Plug 'vim-pandoc/vim-pandoc-syntax'
Plug 'git://github.com/altercation/vim-colors-solarized.git'
Plug 'derekwyatt/vim-scala'
Plug 'https://github.com/keith/tmux.vim.git'
Plug 'https://github.com/christoomey/vim-tmux-navigator.git'
Plug 'neomake/neomake'

call plug#end()


" General Options
set tabstop=2
set shiftwidth=2
set expandtab
set smarttab
set smartindent
set autoindent
set relativenumber
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
set clipboard+=unnamedplus
set mouse=a
set hidden
set splitbelow
set splitright
filetype plugin on
set ttimeoutlen=50
set laststatus=2
set colorcolumn=80
set textwidth=79
set wrapmargin=5
autocmd BufWritePre * :%s/\s\+$//e

" Neovim Terminal Bindings
tnoremap <Esc> <C-\><C-n>
tnoremap <A-h> <C-\><C-n><C-w>h
tnoremap <A-j> <C-\><C-n><C-w>j
tnoremap <A-k> <C-\><C-n><C-w>k
tnoremap <A-l> <C-\><C-n><C-w>l

" Moving between splits bindings
let g:tmux_navigator_no_mappings = 1

nnoremap <silent> <A-h> :TmuxNavigateLeft<cr>
nnoremap <silent> <A-j> :TmuxNavigateDown<cr>
nnoremap <silent> <A-k> :TmuxNavigateUp<cr>
nnoremap <silent> <A-l> :TmuxNavigateRight<cr>
nnoremap <silent> <A-p> :TmuxNavigatePrevious<cr>

" Make neomake run
autocmd! BufWritePost * Neomake
" Make neomake open error window
" let g:neomake_open_list = 2

" Stop vim from moving the cursor back when pressing esc
inoremap <silent> <Esc> <C-O>:stopinsert<CR>

" Map the leader key to SPACE
let mapleader="\<SPACE>"

" colorscheme
let g:solarized_termtrans=1
set background=light
colorscheme solarized

" Airline colorscheme
let g:airline_theme='solarized'
" Splitting
nnoremap <Leader>v :vsplit<cr>
nnoremap <Leader>s :split<cr>
