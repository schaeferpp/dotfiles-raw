let g:mapleader = ','

set autoread
set autowrite
set autowriteall
set background=dark
set breakindent
set bs=2     " make backspace behave like normal again
set clipboard=unnamedplus
set colorcolumn=100
set expandtab
set fo-=t   " don't automatically wrap text when typing
set history=700
set ignorecase
set incsearch
set laststatus=2
set linebreak
set modeline
set mouse=a  " on OSX press ALT and click
set nohlsearch
set noshowmode
set nowrap  " don't automatically wrap on load
set number  " show line numbers
set relativenumber
set shiftwidth=4
set signcolumn=yes
set showcmd
set showtabline=2
set smartcase
set termguicolors
set textwidth=100
set visualbell
set completeopt=menuone,noinsert,noselect
set shortmess+=c
set foldlevel=5
set spelllang=en,de

call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-surround'                " ysiw'   -> surrounds word with '
Plug 'tpope/vim-repeat'                  " make surroundings repeatable
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-dispatch'

" Theming
Plug 'morhetz/gruvbox'
Plug 'nvim-lualine/lualine.nvim'
Plug 'lewis6991/gitsigns.nvim'
Plug 'lukas-reineke/indent-blankline.nvim'
Plug 'norcalli/nvim-colorizer.lua'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'nvim-lua/lsp-status.nvim'

Plug 'mhinz/vim-startify'
let g:webdevicons_enable_startify = 1


Plug 'antoinemadec/FixCursorHold.nvim'
Plug 'akinsho/toggleterm.nvim'
nmap <leader>m :ToggleTerm<CR>
nmap <F12> :ToggleTerm<CR>
tmap <F12> <C-\><C-n>:ToggleTerm<CR>
" Plug 'voldikss/vim-floaterm'
" let g:floaterm_keymap_toggle = '<C-m>'
" nnoremap <silent><leader>m :FloatermToggle!<CR>
" nnoremap <silent><esc><esc> :FloatermToggle!<CR>
" let g:floaterm_autoclose=2
" let g:floaterm_opener='edit'
" command! Broot FloatermNew --width=0.8 --height=0.8 zsh -c "vim $(broot)"
" nnoremap <Leader>l :Broot<cr>


Plug 'vim-scripts/let-modeline.vim'      " extend modeline to `let`
Plug 'liuchengxu/vista.vim'
let g:vista#renderer#enable_icon = 1
let g:vista_icon_indent = ["╰─▸ ", "├─▸ "]
let g:vista_sidebar_width = 45
nnoremap <Leader>t :Vista!!<CR>
autocmd VimEnter * call vista#RunForNearestMethodOrFunction()

" Plug 'christoomey/vim-tmux-navigator'    " vim/tmux integration

Plug 'SirVer/ultisnips'
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
Plug 'honza/vim-snippets'

Plug 'mbbill/undotree'                   " Fancy undo window
nnoremap <Leader>u :UndotreeToggle<CR>

Plug 'aperezdc/vim-template'           " Template files
let g:templates_directory = '~/.vim/templates'
let g:license                            = "LGPL-3.0+"
let g:username                           = "Paul Schaefer"
let g:email                              = "paul@realcyber.de"

Plug 'mhinz/vim-grepper'
let g:grepper = {
            \ 'tools': ['rg', 'pt', 'ag', 'git', 'grep'],
            \ 'open':  1,
            \ 'jump':  0,
            \ }


Plug 'machakann/vim-highlightedyank'
let g:highlightedyank_highlight_duration = 150


" LSP Integration
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-cmp' " Autocompletion plugin
Plug 'hrsh7th/cmp-nvim-lsp'

Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'

Plug 'quangnguyen30192/cmp-nvim-ultisnips'


" Language Specific stuff
source ~/.config/nvim/language-plugins.vim

Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>l <cmd>Telescope file_browser<cr>
Plug 'mfussenegger/nvim-dap'

call plug#end()

lua << EOF
require('init')
EOF

colors gruvbox

" lua require'plugin-init'


" Map Misc. Keys
nnoremap ,q :bw<CR>
nnoremap gb :bnext<CR>
nnoremap gB   :bprevious<CR>
nnoremap ; :
nnoremap <Leader>gf <C-w>gf
nnoremap <C-J> <C-W>j
nnoremap <C-K> <C-W>k
nnoremap <C-H> <C-W>h
nnoremap <C-l> <C-W>l
nnoremap <Esc> :set nohls<cr>
nnoremap <Leader>w :w !sudo -A tee %<CR>L<CR>
nnoremap <leader>o <C-w>gf
nnoremap <leader>gf :e <cfile><cr>
nnoremap / :set hls<CR>/
nnoremap <silent><expr> <C-c> (&hls && v:hlsearch ? ':nohls' : ':set hls')."\n"
nnoremap <Leader><C-j> <C-j><C-_>
nnoremap <Leader><C-k> <C-k><C-_>
nnoremap <Leader><C-h> <C-h><C-_>
nnoremap <Leader><C-l> <C-l><C-_>

vnoremap < <gv
vnoremap > >gv

" Misc
filetype off
filetype plugin indent on
syntax on

" let &showbreak=' ⇒ '


au FocusGained,BufEnter * :checktime
au BufReadPost,BufNewFile *.md,*.txt,*.tex set fo+=t " automagically word wrap for md, txt and tex


set so=5

" Undostuff
set undolevels=700
set undofile
if isdirectory("/encrypted")
    " set undodir=/encrypted/
else
    set undodir=/tmp
endif
set nobackup
set nowritebackup
set noswapfile

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

silent !mkdir ~/.cache/vim > /dev/null 2>&1

let g:cursorhold_updatetime=300

" Show diagnostic popup on cursor hold
autocmd CursorHold * lua vim.diagnostic.open_float()
autocmd BufWritePre *.rs lua vim.lsp.buf.formatting_sync(nil, 200)


if filereadable(expand("~/.vim/override.vim"))
    source ~/.vim/override.vim
endif
