" Showing line numbers and length
set number  " show line numbers
set relativenumber

set nowrap  " don't automatically wrap on load
set fo-=t   " don't automatically wrap text when typing
set colorcolumn=120
set textwidth=120

" Reload file on change
set autoread
au FocusGained,BufEnter * :checktime

au BufReadPost,BufNewFile *.md,*.txt,*.tex set fo+=t " autotmagically word wrap for md, txt and tex


" Useful settings
set history=700
set undolevels=700
set undofile
if isdirectory("/encrypted")
    set undodir=/encrypted/
else
    set undodir=/tmp
endif
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
set clipboard=unnamedplus


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

set showcmd

set modeline
set noshowmode

set completeopt+=menuone,preview,longest
autocmd CompleteDone * pclose " Close Preview on CompleteDone

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

set wrap
set linebreak
" let &showbreak=' ⇒ '
set breakindent


" let g:clipboard = {
"         \   'name': 'wl-copy',
"         \   'copy': {
"         \      '+': '/usr/bin/wl-copy',
"         \      '*': '/usr/bin/wl-copy',
"         \    },
"         \   'paste': {
"         \      '+': '/usr/bin/wl-paste -n',
"         \      '*': '/usr/bin/wl-paste -p -n',
"         \   },
"         \   'cache_enabled': 0,
" \ }

" let g:clipboard = {
"         \   'name': 'wl-copy',
"         \   'copy': {
"         \      '+': '/usr/bin/wl-copy --type UTF8_STRING',
"         \      '*': '/usr/bin/wl-copy --type UTF8_STRING -p',
"         \    },
"         \   'paste': {
"         \      '+': '/usr/bin/wl-paste -n',
"         \      '*': '/usr/bin/wl-paste -p -n',
"         \   },
"         \   'cache_enabled': 0,
" \ }

" let g:clipboard = {
"         \   'name': 'xsel - bin',
"         \   'copy': {
"         \      '+': 'xsel -i -b',
"         \      '*': 'xsel -i -p',
"         \    },
"         \   'paste': {
"         \      '+': 'xsel -b',
"         \      '*': 'xsel -p',
"         \   },
"         \   'cache_enabled': 0,
" \ }

