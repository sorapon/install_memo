if &compatible
  set nocompatible
endif

filetype off
set runtimepath+=~/.vim/bundle/vundle
call vundle#begin()
Plugin 'gmarik/vundle'
Plugin 'thinca/vim-quickrun'
Plugin 'hdima/python-syntax'
call vundle#end()
filetype plugin indent on

let g:quickrun_config = {
\   "tex" : {
\       "command" : "latexmk",
\       "outputter" : "error",
\       "outputter/error/success" : "null",
\       "outputter/error/error" : "quickfix",
\       "srcfile" : expand("%"),
\       "cmdopt" : "-pdfdvi -pv",
\       "hook/sweep/files" : [
\           "%S:p:r.aux",
\           "%S:p:r.bbl",
\           "%S:p:r.blg",
\           "%S:p:r.dvi",
\           "%S:p:r.fdb_latexmk",
\           "%S:p:r.fls",
\           "%S:p:r.log",
\           "%S:p:r.toc",
\           "%S:p:r.out"
\       ],
\       "exec" : "%c %o %a %s",
\   }
\}

 set number
" set nocompatible
" set nowrap
" set tabstop=2
" set autoindent
" set clipboard=unnamed,autoselect

let                 &encoding = 'utf-8'
let &fileencoding = &encoding
let &ambiwidth = 'double'

set confirm
set hidden
set autoread autowrite
set noswapfile nobackup

let &fileformat = 'unix'

set ttyfast
let &clipboard = 'unnamedplus'

set title
let &laststatus = 0
set showmode showcmd

set list listchars=tab:›\ ,trail:_


set timeout
let  &timeoutlen = 1000
let &ttimeoutlen = 100

set expandtab smarttab tabstop=2 shiftwidth=2
set nowrap

set cindent cinoptions=g0,:0,N-s,#0
" set foldmethod=indent
set foldignore=

set sidescroll=1 scrolloff=8

set showmatch matchtime=1
" set &nrformats = 'hex'

set virtualedit=block

set incsearch ignorecase smartcase wrapscan

set splitbelow

set wildmenu wildmode=longest:full,full

set cursorline


" -- Syntax Highlighting ---------------------------------------
syntax enable
let &t_Co = 256
set background=dark
" colorscheme meevax

set nocursorline

" -- Auto Command BufRead --------------------------------------
autocmd BufRead,BufNewFile *.launch   let &filetype = 'xml'
autocmd BufRead,BufNewFile *.md       let &filetype = 'markdown'
autocmd BufRead,BufNewFile .tmux.conf let &filetype = 'tmux'


" -- Auto Command BufWrite -------------------------------------
autocmd BufWritePre * :%s/\s\+$//ge
