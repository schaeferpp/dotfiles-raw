
Plug 'lervag/vimtex', {'for' : 'tex'}    " latex environment is ae or ie
Plug 'junegunn/vim-easy-align'           " vip<Enter>SYMBOL
Plug 'ctrlpvim/ctrlp.vim'
Plug 'majutsushi/tagbar'                 " Tagbar
Plug 'tpope/vim-fugitive'                " git
Plug 'scrooloose/nerdtree'               " Fileexplorer
Plug 'atweiden/vim-dragvisuals'          " Visually select something in block
                                         " or line mode and use arrow keys
"Plug 'xolox/vim-easytags'

"let g:easytags_async = 1

Plug 'christoomey/vim-tmux-navigator'    " vim/tmux integration

Plug 'Yggdroot/indentLine'
let g:indentLine_concealcursor = 'vc'
let g:indentLine_setConceal = 0
let g:indentLine_char = '▒'
let g:indentLine_color_term = 232

Plug 'Valloric/YouCompleteMe'
"au FileType c,cpp nnoremap <buffer> <c-]> :YcmCompleter GoTo<CR>
"let g:ycm_global_ycm_extra_conf = '~/.config/ycm_extra_conf.py'

let g:ycm_server_keep_logfiles = 1
let g:ycm_server_log_level = 'debug'
let g:ycm_key_list_select_completion = ['<c-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<c-p>', '<Up>']

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

Plug 'rust-lang/rust.vim'                " rust highlighting etc
Plug 'tkztmk/vim-vala'                   " vala highlighting etc

Plug 'wesQ3/vim-windowswap'
Plug 'xolox/vim-misc'
Plug 'xolox/vim-session'                 " Session handling for tmux
let g:session_autoload = 'no'
Plug 'tmux-plugins/vim-tmux'             " tmux.conf highlighting
Plug 'mhinz/vim-grepper'
let g:grepper = {
            \ 'tools': ['ag', 'git', 'grep'],
            \ 'open':  1,
            \ 'jump':  0,
            \ }

Plug 'schaeferpp/vim-gnomealign'         " Gnome Parameter Align :GNOMEAlignArguments
Plug 'vim-scripts/indentpython.vim', {'for': 'py'}
Plug 'ihacklog/HiCursorWords'

Plug 'airblade/vim-gitgutter'

"Plug 'chazy/cscope_maps'
