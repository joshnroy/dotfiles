call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-commentary'
Plug 'jiangmiao/auto-pairs'

Plug 'scrooloose/nerdtree'
Plug 'vim-ctrlspace/vim-ctrlspace'
Plug 'airblade/vim-gitgutter'

Plug 'sheerun/vim-polyglot'
Plug 'vim-pandoc/vim-pandoc'
Plug 'vim-pandoc/vim-pandoc-syntax'

Plug 'arcticicestudio/nord-vim'
Plug 'vim-airline/vim-airline'

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
set noswapfile
set expandtab
set softtabstop=0
set ignorecase
set smartcase
set cursorline
set clipboard=unnamedplus
set mouse=a

" Vim Control Space
set showtabline=0
let g:CtrlSpaceLoadLastWorkspaceOnStart = 1
let g:CtrlSpaceSaveWorkspaceOnSwitch = 1
let g:CtrlSpaceSaveWorkspaceOnExit = 1
let g:CtrlSpaceDefaultMappingKey = "<C-Space> "

" Colorscheme
colorscheme nord
let g:nordm_comment_brightness = 15
let g:nord_italic = 1
let g_nord_underline = 1
let g:nord_italic_comments = 1
let g:nord_uniform_diff_background = 1
let g:nord_cursor_line_number_background = 1

" Powerline
let g:airline_powerline_fonts = 1

" Italics
set t_ZH=[3m
set t_ZR=[23m

" Useful remappings
" Searches for highlighted text in visual mode
vnoremap // y/<C-R>"<CR>
