Plug 'tpope/vim-surround'                " ysiw'   -> surrounds word with '
let g:surround_{char2nr('c')} = "\\\1command\1{\r}"

Plug 'tpope/vim-repeat'                  " make surroundings repeatable
" Plug 'scrooloose/nerdcommenter'
Plug 'tomtom/tcomment_vim'
" let g:NERDCustomDelimiters = { 'c': { 'left': '/*','right': '*/' } }
Plug 'vim-scripts/let-modeline.vim'      " extend modeline to `let`

" Plug 'majutsushi/tagbar', {'for': ['c', 'cpp', 'rust', 'javascript', 'python']}                " Tagbar
Plug 'majutsushi/tagbar' " Tagbar

Plug 'tpope/vim-fugitive'                " git
Plug 'airblade/vim-gitgutter'

Plug 'scrooloose/nerdtree'               " Fileexplorer

Plug 'christoomey/vim-tmux-navigator'    " vim/tmux integration

Plug 'Yggdroot/indentLine'
"let g:indentLine_color_gui = '#444444'
let g:indentLine_concealcursor = 0
"let g:indentLine_setConceal = 0
"let g:indentLine_char = '▒'
let g:indentLine_color_term = 249


"let g:indentLine_color_gui = '#E4E4E4'

Plug 'SirVer/ultisnips'
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
Plug 'honza/vim-snippets'

Plug 'mbbill/undotree'                   " Fancy undo window
Plug 'aperezdc/vim-template'           " Template files
let g:templates_directory = '~/.vim/templates'

" Default template data
let g:license                            = "LGPL-3.0+"
let g:username                           = "Paul Schaefer"
let g:email                              = "paul@os-s.de"

Plug 'Valloric/MatchTagAlways', {'for': ['xml', 'html', 'htmldjango']}           " Highlight matching xml tags
Plug 'vim-airline/vim-airline'           " Fancy statusline
Plug 'vim-airline/vim-airline-themes'

Plug 'wesQ3/vim-windowswap'

Plug 'mhinz/vim-grepper'
let g:grepper = {
            \ 'tools': ['rg', 'pt', 'ag', 'git', 'grep'],
            \ 'open':  1,
            \ 'jump':  0,
            \ }


Plug 'plasticboy/vim-markdown', {'for': 'markdown'}
Plug 'nelstrom/vim-markdown-folding', {'for': 'markdown'}

Plug 'ctrlpvim/ctrlp.vim'

Plug 'machakann/vim-highlightedyank'
let g:highlightedyank_highlight_duration = 150

Plug 'vim-scripts/ReplaceWithRegister'

" vim:ts=4:sts=4:sw=4
