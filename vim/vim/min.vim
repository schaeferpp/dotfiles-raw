" Showing line numbers and length
set number  " show line numbers
set relativenumber

set nowrap  " don't automatically wrap on load
set fo-=t   " don't automatically wrap text when typing
set colorcolumn=80


" Useful settings
set history=700
set undolevels=700
set undofile
set undodir=/tmp
set nobackup
set nowritebackup
set noswapfile

set nowrap

" You need to reload this file for the change to apply
filetype off
filetype plugin indent on
syntax on

let mapleader = ","

" Use system clipboard
set clipboard=unnamedplus,unnamed

set nohlsearch

" Mouse and backspace
set mouse=a  " on OSX press ALT and click
set bs=2     " make backspace behave like normal again

" Make search case insensitive
set incsearch
set ignorecase
set smartcase

set so=5

" Reset previous cursor position
function! ResCur ()
    if line ("'\"") <= line ("$")
        normal! g`"
        return 1
    endif
endfunction

augroup resCur
    autocmd!
    autocmd BufWinEnter * call ResCur ()
augroup END

set autowrite
set autowriteall
set nofoldenable

set showcmd

set modeline
set noshowmode

set completeopt+=menuone,preview,longest

set visualbell

set wildignore+=*.pyc
set wildignore+=*_build/*
set wildignore+=*/coverage/*
set wildignore+=*.o
set wildignore+=*.out
set wildignore+=*.pdf

set spelllang=de,en

if has('gui_running')
    set guifont=Liberation\ Mono\ for\ Powerline
    set guioptions-=T " Toolbar
    set guioptions-=e
    set guioptions-=L " Left scrollbar
    set guioptions-=r " Right scrollbar
endif

" vim:ts=4:sts=4:sw=4
