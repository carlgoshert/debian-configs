" Disable Vi compatibility
set nocompatible

" Helps force plugins to load correctly when it is turned back on below
filetype off

" TODO: Load plugins here
execute pathogen#infect()

" Syntax highlighting
syntax on

" Forces plugins to load
filetype plugin indent on

" Line numbers
set number

" Show file stats?
set ruler

" Colorscheme
colorscheme default

" Blink cursor on error instead of bell beep
set visualbell

" Sets cursor shape to underscore in insert mode
let &t_SI = "\<Esc>[3 q"
let &t_EI = "\<Esc>[1 q"

" Encoding
set encoding=utf-8

" Mapleader
let mapleader=','

" Whitespace
set wrap
set textwidth=79
set formatoptions=tcqrn1
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set noshiftround

" Rendering?
set ttyfast

" Allow hidden buffers?
set hidden

" Satus bar...
set laststatus=2
set statusline=%{fugitive#statusline()}\ %f\ \|\ %y

" Last line?
set showmode
set showcmd
set wildmenu
set display=truncate

" Searching
set hlsearch
if has('reltime')
  set incsearch
endif
set ignorecase
set smartcase
set showmatch
" clear search
map <leader><space> :let @/=''<cr> 

" Allow backspacing over everything in insert mode
set backspace=indent,eol,start

" Screen scrolls a few lines ahead of cursor
set scrolloff=5

" Ignore octal numbers for Ctrl-A and Ctrl-X
set nrformats-=octal

" netrw settings to avoid NERDtree
let g:netrw_banner = 0
let g:netrw_browse_split = 4
let g:netrw_liststyle = 3
let g:netrw_altv = 1
let g:netrw_winsize = 25

" Lets you close vim when only nerdtree is open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Custom Keybindings
inoremap jk <Esc>
map <C-n> :NERDTreeToggle<CR>

" See syntax groups

" TODO: Language specifc setttings here (not plugins)
