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
Plugin 'chase/vim-ansible-yaml'
Plugin 'tpope/vim-fugitive'


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


" ----------- Leader ----------------------------------------------------------
let mapleader=","
let maplocalleader="\\"


" ----------- Key bindings ----------------------------------------------------
" make the home key behave like ^
map <Home> ^
imap <Home> <Esc>^i


" ----------- Stuff -----------------------------------------------------------
" UTF-8 default encoding
set enc=utf-8

" Backups
set nobackup
set noswapfile

" Modeline
set modeline


" ----------- Folding ---------------------------------------------------------
set foldmethod=syntax  " automatically fold by indent level
set nofoldenable  " ... but have folds open by default
set foldlevelstart=99
nnoremap <Space> za


" ----------- Statusbar and Linenumbers ---------------------------------------
"  Make the command line two lines heigh and change the statusline display to
"  something that looks useful.
set cmdheight=2
set laststatus=2
set showcmd

set statusline=%<%f\ %h%m%r%{fugitive#statusline()}%=%-14.(%l,%c%V%)\ %P


" ----------- Cursor and display ----------------------------------------------
set ruler
set cursorline
set lazyredraw  " Avoid scrolling problems
set scrolloff=5
syntax enable
set number
colorscheme monokai

" ----------- History and Undo ------------------------------------------------
set undofile
set undodir=$HOME/.vim/undo
set undolevels=10000
set undoreload=10000


" ----------- Search ----------------------------------------------------------
set hlsearch
set incsearch
set ignorecase


" ----------- Syntax settings -------------------------------------------------
" Python
autocmd FileType python setlocal colorcolumn=79,119

" HTML
autocmd BufNewFile,BufRead *.j2 set filetype=htmljinja
autocmd FileType html,xhtml,htmldjango,htmljinja setlocal expandtab shiftwidth=4 tabstop=4 softtabstop=4 nowrap

" LessCSS
autocmd BufNewFile,BufRead *.less set filetype=less
autocmd FileType less setlocal expandtab shiftwidth=2 tabstop=2 softtabstop=2

" Scss
autocmd BufNewFile,BufRead *.scss set filetype=scss
autocmd FileType scss setlocal expandtab shiftwidth=2 tabstop=2 softtabstop=2

" C/C++
autocmd FileType cpp setlocal expandtab shiftwidth=4 tabstop=4 softtabstop=4
autocmd FileType c setlocal expandtab shiftwidth=4 tabstop=4 softtabstop=4

" CSS
autocmd FileType css setlocal expandtab shiftwidth=2 tabstop=2 softtabstop=2

" RST
autocmd BufNewFile,BufRead *.rst setlocal ft=rst
autocmd FileType rst setlocal expandtab shiftwidth=4 tabstop=4 softtabstop=4 spell

" Javascript
autocmd FileType javascript setlocal expandtab shiftwidth=2 tabstop=2 softtabstop=2

" SQL
autocmd FileType sql setlocal expandtab shiftwidth=2 tabstop=2 softtabstop=2

" Makefile
autocmd FileType make setlocal noexpandtab shiftwidth=4 tabstop=4 softtabstop=4

" Sh
autocmd FileType sh,ksh,zsh,csh,tcsh,bash setlocal expandtab shiftwidth=4 tabstop=4 softtabstop=4

" LaTex
autocmd BufNewFile,BufRead *.tex setlocal ft=tex
autocmd FileType tex setlocal expandtab shiftwidth=2 tabstop=2 softtabstop=2 textwidth=78

" Vim Syntax
autocmd FileType vim setlocal expandtab shiftwidth=2 tabstop=8 softtabstop=2

" JSON
autocmd BufRead,BufNewFile *.json set ft=json 

" GIT
autocmd FileType gitcommit set spell


" ----------- MiniBufExplorer"  -----------------------------------------------
" Focus buffer
map <leader>mf :MBEFocus<CR>
" Next buffer
map <leader>mn :MBEbn<CR>
" Focus buffer
map <leader>mb :MBEbb<CR>


" ----------- Nerdtree --------------------------------------------------------
" Automatically open NERDTree when vim starts up and no files are specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

map <leader>nf :NERDTreeFocus<CR>
map <leader>nt :NERDTreeToggle<CR>

" Automatically close vim if only NERDTree is left open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif


" ----------- python-mode -----------------------------------------------------
let g:pymode_breakpoint_cmd = 'import ipdb; ipdb.set_trace()  # TODO: debugger'
let g:pymode_lint_ignore = "E128,E501"
let g:pymode_paths = ['~/.vim/bundle/python-mode']
let g:pymode_rope_complete_on_dot = 0
let g:pymode_rope_lookup_project = 0
let g:pymode_rope = 0
