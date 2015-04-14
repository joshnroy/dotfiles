filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
Plugin 'git://github.com/altercation/vim-colors-solarized.git'
"Solarized Colors
Plugin 'git://github.com/digitaltoad/vim-jade.git'
"Jade Syntax Highlighting
Plugin 'git://github.com/skammer/vim-css-color.git'
"CSS Color
Plugin 'git://github.com/ardagnir/vimbed'
"vimbed
Plugin 'zenorocha/dracula-theme', {'rtp': 'vim/'}
Plugin 'genoma/vim-less' 
Plugin 'kchmck/vim-coffee-script'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'Valloric/YouCompleteMe'
Plugin 'marijnh/tern_for_vim'
Plugin 'scrooloose/syntastic'
Plugin 'bling/vim-airline'
Plugin 'szw/vim-ctrlspace' 
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'Keithbsmiley/tmux.vim'
Plugin 'tpope/vim-surround'
Plugin 'edkolev/tmuxline.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"
" Prevously existing settings
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


" Compatibility with crtl-space and airline
let g:airline_exclude_preview = 1

" Workaround to make YouCompleteMe Work with Python 1.20.15
let g:ycm_path_to_python_interpreter = "/usr/bin/python"

" Enable airline to always show up
set laststatus=2
set ttimeoutlen=50

" Remappings
inoremap { {}<Esc>i
" Better Brackets
inoremap ( ()<Esc>i
" Better Parenthesis
inoremap " ""<Esc>i
" Better Double Quotes
inoremap ' ''<Esc>i
" Better Single Quotes
" Airline-theme
let g:airline_theme = 'luna'
"
