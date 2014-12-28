set nocompatible              " be iMproved, required
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
Plugin 'git://github.com/scrooloose/nerdtree.git'
"NerdTree
Plugin 'git://github.com/digitaltoad/vim-jade.git'
"Jade Syntax Highlighting
Plugin 'itchyny/lightline.vim'
"Lightline
Plugin 'git://github.com/tpope/surround.vim'
Plugin 'git://github.com/skammer/vim-css-color.git'
"CSS Color
Plugin 'git://github.com/ardagnir/vimbed'
"vimbed
Plugin 'zenorocha/dracula-theme', {'rtp': 'vim/'}
Plugin 'genoma/vim-less' 
Plugin 'kchmck/vim-coffee-script'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'

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
set foldenable

set nowrap

" Edits by Josh 11.2.14
set clipboard=unnamed
set mouse=a

