set nocompatible
filetype on
filetype plugin on
filetype indent on
" Vundle stuff
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" Plugins go here
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdTree'
Plugin 'jistr/vim-nerdTree-tabs'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'bling/vim-airline'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'pangloss/vim-javascript'
Plugin 'Raimondi/delimitMate'
Plugin 'marijnh/tern_for_vim'
call vundle#end() " ends plugin list
" End of Vundle stuff
" Other Stuff
set number
set showcmd
set cursorline
set tabstop=4
set softtabstop=4
set shiftwidth=4
set lazyredraw
set showmatch
set incsearch
set foldmethod=indent
set foldlevel=99
set encoding=utf-8
set autoindent
set expandtab
set path+=**
set wildmenu
colorscheme delek
syntax on
" Personal Shortcuts
nnoremap <c-r> :call Relative()<CR>
function Relative()
    set relativenumber!
endfunc
inoremap jk <Esc>
nnoremap <c-n> :NERDTree<CR>
inoremap <C-o> <CR><Esc>O
" HTML formating
let g:html_indent_inctags = "html,body,head,tbody"
autocmd Filetype php setlocal ts=2 sts=2 sw=2
autocmd Filetype html setlocal ts=2 sts=2 sw=2
" Python formatting
let python_highlight_all=1
au BufNewFile,BufRead *.py 
    \ setf textwidth=79
    \ setf fileformat=unix
" C formatting
au BufNewFile,BufRead *.c
	\ setf smartindent
	\ setf textwidth=120
" C++ formatting
au BufNewFile,BufRead *.cpp
	\ setf smartindent
	\ setf textwidth=120
	\ setf comments=s1:/*,mb\ *,elx:\ */
	\ setf tags+=~/.vim/tags/cpp
	\ setf tags+=~/.vim/tags/gl
	\ setf tags+=~/.vim/tags/sdl
	\ setf tags+=~/.vim/tags/qt4
