" This is all of the plugin stuffs
call plug#begin('~/.vim/plugged')

Plug 'shougo/unite.vim'
Plug 'bling/vim-airline'
Plug 'whatyouhide/vim-gotham'
Plug 'raimondi/delimitmate'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/syntastic'
Plug 'vim-scripts/automaticlatexplugin'
Plug 'edkolev/tmuxline.vim'
Plug 'groenewege/vim-less'
Plug 'def-lkb/ocp-indent-vim'
Plug 'scrooloose/nerdcommenter'
Plug 'christoomey/vim-tmux-navigator'
Plug 'tpope/vim-obsession'
Plug 'Shougo/deoplete.nvim'
Plug 'Shougo/neosnippet.vim'
Plug 'digitaltoad/vim-jade'
Plug 'vim-pandoc/vim-pandoc'
Plug 'vim-pandoc/vim-pandoc-syntax' 

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
filetype plugin on
set ttimeoutlen=50
set laststatus=2
set colorcolumn=80
set textwidth=79

" Stop vim from moving the cursor back when pressing esc
inoremap <silent> <Esc> <C-O>:stopinsert<CR>

" Map the leader key to SPACE
let mapleader="\<SPACE>"

" colorscheme
colorscheme gotham

"airline settings
" let g:airline_theme = 'gotham'

" Unite
nnoremap <leader>f :<C-u>Unite -no-split -buffer-name=files file<cr>
nnoremap <leader>b :<C-u>Unite -no-split -buffer-name=buffers buffer<cr>

" for dvorak when I switch to it
"runtime! macros/dvorak.vim
" Use deoplete.
let g:deoplete#enable_at_startup = 1
" <Tab> completion:
" 1. If popup menu is visible, select and insert next item
" 2. Otherwise, if preceding chars are whitespace, insert tab char
" 3. Otherwise, start manual autocomplete
inoremap <silent><expr><Tab> pumvisible() ? "\<C-n>"
  \ : (<SID>is_whitespace() ? "\<Tab>"
  \ : (neosnippet#expandable_or_jumpable() ? "\<Plug>(neosnippet_expand_or_jump)"
  \ : deoplete#mappings#manual_complete()))

snoremap <silent><expr><Tab> pumvisible() ? "\<C-n>"
  \ : (<SID>is_whitespace() ? "\<Tab>"
  \ : (neosnippet#expandable_or_jumpable() ? "\<Plug>(neosnippet_expand_or_jump)"
  \ : deoplete#mappings#manual_complete()))

inoremap <expr><S-Tab>  pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:is_whitespace() "{{{
	let col = col('.') - 1
	return !col || getline('.')[col - 1]  =~? '\s'
endfunction "}}}
