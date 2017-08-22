
Plug 'lervag/vimtex', {'for' : 'tex'}    " latex environment is ae or ie
let g:tex_conceal=""

Plug 'junegunn/vim-easy-align'           " vip<Enter>SYMBOL
Plug 'majutsushi/tagbar'                 " Tagbar
Plug 'tpope/vim-fugitive'                " git
Plug 'scrooloose/nerdtree'               " Fileexplorer
Plug 'atweiden/vim-dragvisuals'          " Visually select something in block
                                         " or line mode and use arrow keys
"Plug 'xolox/vim-easytags'

"let g:easytags_async = 1

Plug 'christoomey/vim-tmux-navigator'    " vim/tmux integration

Plug 'Yggdroot/indentLine'
"let g:indentLine_color_gui = '#444444'
let g:indentLine_concealcursor = 0
"let g:indentLine_setConceal = 0
"let g:indentLine_char = '▒'
let g:indentLine_color_term = 249


"let g:indentLine_color_gui = '#E4E4E4'

Plug 'Valloric/YouCompleteMe'

let g:ycm_confirm_extra_conf = 0
"au FileType c,cpp nnoremap <buffer> <c-]> :YcmCompleter GoTo<CR>
"let g:ycm_global_ycm_extra_conf = '~/.config/ycm_extra_conf.py'

let g:ycm_server_keep_logfiles = 1
let g:ycm_server_log_level = 'debug'
let g:ycm_key_list_select_completion = ['<c-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<c-p>', '<Up>']
let g:ycm_server_python_interpreter = '/usr/bin/python'

"Plug 'rdnetto/YCM-Generator', { 'branch': 'stable'}

if has('nvim')
    "Plug 'Shougo/deoplete.nvim'
    "Plug 'zchee/deoplete-jedi'
    "Plug 'zchee/deoplete-go'
    "let g:deoplete#enable_at_startup = 1

    "Plug 'zchee/nvim-go'
endif
Plug 'fatih/vim-go'
let g:go_template_autocreate = 0
let g:go_fmt_experimental = 1

Plug 'SirVer/ultisnips'
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
Plug 'honza/vim-snippets'


Plug 'mbbill/undotree'                   " Fancy undo window
Plug 'aperezdc/vim-template'           " Template files
let g:templates_directory = '~/.vim/templates'

" Default template data
let g:license                            = "Apache 2.0"
let g:username                           = "Paul Schaefer"
let g:email                              = "schaefer.pp@gmail.com"

Plug 'Valloric/MatchTagAlways'           " Highlight matching xml tags
Plug 'vim-airline/vim-airline'           " Fancy statusline
Plug 'vim-airline/vim-airline-themes'
Plug 'edkolev/tmuxline.vim'

Plug 'rust-lang/rust.vim'                " rust highlighting etc
let g:rustfmt_autosave = 1

Plug 'ebfe/vim-racer'

let g:ycm_rust_src_path = '/usr/src/rust/src'

Plug 'tkztmk/vim-vala'                   " vala highlighting etc

Plug 'wesQ3/vim-windowswap'
Plug 'xolox/vim-misc'
Plug 'xolox/vim-session'                 " Session handling for tmux
let g:session_autoload = 'no'
Plug 'tmux-plugins/vim-tmux'             " tmux.conf highlighting
Plug 'mhinz/vim-grepper'
let g:grepper = {
            \ 'tools': ['pt', 'ag', 'git', 'grep'],
            \ 'open':  1,
            \ 'jump':  0,
            \ }

Plug 'schaeferpp/vim-gnomealign'         " Gnome Parameter Align :GNOMEAlignArguments
Plug 'vim-scripts/indentpython.vim', {'for': 'py'}
Plug 'ihacklog/HiCursorWords'

Plug 'vim-scripts/a.vim'                 " Alternate header

Plug 'airblade/vim-gitgutter'

"Plug 'chazy/cscope_maps'
Plug 'neovimhaskell/haskell-vim'

Plug 'plasticboy/vim-markdown'
Plug 'nelstrom/vim-markdown-folding'
Plug 'godlygeek/tabular'

Plug 'Kazark/vim-SimpleSmoothScroll'

Plug 'rdnetto/YCM-Generator', { 'branch': 'develop'} 

Plug 'stfl/meson.vim'

Plug 'rhysd/vim-clang-format'
" Clang format{{{
let g:clang_format#style_options = {
            \ "BasedOnStyle": "Chromium",
            \ "AlignTrailingComments": "true",
            \ "BreakBeforeBraces": "Allman",
            \ "ColumnLimit": 80,
            \ "IndentWidth": 4,
            \ "KeepEmptyLinesAtTheStartOfBlocks": "false",
            \ "ObjCSpaceAfterProperty": "true",
            \ "ObjCSpaceBeforeProtocolList": "true",
            \ "PointerBindsToType": "false",
            \ "SpacesBeforeTrailingComments": 1,
            \ "PointerAlignment": "Right",
            \ "TabWidth": 4,
            \ "UseTab": "Never",
            \ "AlwaysBreakAfterReturnType": "All",
            \ "AlignConsecutiveDeclarations": "true",
            \ "AlignConsecutiveAssignments": "true",
            \ "BinPackParameters": "false",
            \ "BinPackArguments": "false",
            \ "SpaceAfterCStyleCast": "true",
            \ "Cpp11BracedListStyle": "true",
            \ "Standard" : "C++11"}

" map to <Leader>cf in C code
autocmd FileType c,cpp,objc nnoremap <buffer><Leader>cf :<C-u>ClangFormat<CR>
autocmd FileType c,cpp,objc vnoremap <buffer><Leader>cf :ClangFormat<CR>"}}}

" Toggle auto formatting:
nmap <Leader>C :ClangFormatAutoToggle<CR>

" Plug 'Shougo/denite.nvim'
Plug 'ctrlpvim/ctrlp.vim'
