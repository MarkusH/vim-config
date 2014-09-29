set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Plugin 'fholgado/minibufexpl.vim'
Plugin 'Jinja'
Plugin 'klen/python-mode'
Plugin 'scrooloose/nerdtree'


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


" ----------- Leader ---------------------------------------------------------
let mapleader=","
let maplocalleader="\\"


" ----------- Key bindings ----------------------------------------------------
" make the home key behave like ^
map <Home> ^
imap <Home> <Esc>^i


" ----------- UTF-8 default encoding ------------------------------------------
set enc=utf-8


" ----------- Folding ---------------------------------------------------------
set foldmethod=indent  " automatically fold by indent level
set nofoldenable  " ... but have folds open by default


" ----------- Statusbar and Linenumbers ---------------------------------------
"  Make the command line two lines heigh and change the statusline display to
"  something that looks useful.
set cmdheight=2
set laststatus=2
set showcmd

set statusline=%<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P


" ----------- Modeline -------------------------------------------------------
set modeline


" ----------- Cursor and display ---------------------------------------------
set ruler
set cursorline
set lazyredraw  " Avoid scrolling problems
syntax enable
set number
colorscheme monokai


" ----------- Search ---------------------------------------------------------
set hlsearch
set incsearch
set ignorecase


" ----------- MiniBufExplorer"  -----------------------------------------------
" Focus buffer
map <leader>bf :MBEFocus<CR>
" Next buffer
map <leader>bn :MBEbn<CR>
" Focus buffer
map <leader>bb :MBEbb<CR>


" ----------- Nerdtree --------------------------------------------------------
" Automatically open NERDTree when vim starts up and no files are specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

map <leader>nf :NERDTreeFocus<CR>
map <leader>nt :NERDTreeToggle<CR>

" Automatically close vim if only NERDTree is left open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif


" ----------- python-mode -----------------------------------------------------
let g:pymode_paths = ['~/.vim/bundle/python-mode']



