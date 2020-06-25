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
let mapleader=","

" finding files
set path+=**
set wildmenu

" folder browsing stuff
let g:netrw_banner=0 " get rid of the banner
let g:netrw_browse_split=4 " open in prior window
let g:netrw_altv=1 " open split to the right
let g:netrw_liststyle=3
let g:netrw_list_hide=netrw_gitignore#Hide()
let g:netrw_list_hide.=',\(^\|\s\s\)\zs\.\S\+'

" remap jk to esc
imap jk <Esc>

" generate ctags
nnoremap <leader>ct :!ctags -R .<CR>
