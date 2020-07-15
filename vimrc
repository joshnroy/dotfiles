" Don't pretend to be vi
set nocompatible

" enable syntax and fieltype plugins
syntax enable
filetype plugin on

" enable line numbers
set nu rnu

" enable mouse
set mouse=a

" set leader
nnoremap <SPACE> <Nop>
let mapleader=" "

" set incremental search
set incsearch

" finding files
set path+=**
set wildmenu

" indenting
set tabstop=8
set shiftwidth=4
set autoindent
set smartindent

" folder browsing stuff
let g:netrw_banner=0 " get rid of the banner
let g:netrw_browse_split=4 " open in prior window
let g:netrw_liststyle=3
let g:netrw_list_hide=netrw_gitignore#Hide()
let g:netrw_list_hide.=',\(^\|\s\s\)\zs\.\S\+'
let g:netrw_winsize = 20

nnoremap <leader>op :Vexplore<CR>

" file finding stuff
nnoremap <leader><SPACE> :find 

" buffer stuff
nnoremap <leader>bl :ls<CR>

" remap jk to esc
imap jk <Esc>

" generate ctags
nnoremap <leader>ct :!ctags -R .<CR>

" easier split navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
" put swap, undo, backup files in one place
set backupdir=/tmp//
set directory=/tmp//
set undodir=/tmp//
