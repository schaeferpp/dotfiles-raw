Plug 'tpope/vim-surround'                " ysiw'   -> surrounds word with '
let g:surround_{char2nr('c')} = "\\\1command\1{\r}"

Plug 'tpope/vim-repeat'                  " make surroundings repeatable
" Plug 'scrooloose/nerdcommenter'
Plug 'tomtom/tcomment_vim'
" let g:NERDCustomDelimiters = { 'c': { 'left': '/*','right': '*/' } }
Plug 'vim-scripts/let-modeline.vim'      " extend modeline to `let`

" Plug 'majutsushi/tagbar', {'for': ['c', 'cpp', 'javascript', 'python', 'rust']}                " Tagbar
Plug 'liuchengxu/vista.vim', {'for': ['c', 'cpp', 'javascript', 'python', 'rust', 'vim']}
" let g:vista_icon_indent = ["▸ ", ""]
let g:vista#renderer#enable_icon = 1
let g:vista#renderer#icons = {
\   "function": "λ",
\   "implementation": "",
\   "class": "",
\   "struct": "",
\   "union": "",
\   "field": "",
\   "method": "",
\   "macro": "",
\   "interface": "",
\   "variable": "",
\   "module": "",
\   "property": "",
\   "member": "",
\   "typedef": "",
\  }

" Plug 'majutsushi/tagbar' " Tagbar

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
" Plug 'vim-airline/vim-airline'           " Fancy statusline
" Plug 'vim-airline/vim-airline-themes'
"
Plug 'mengelbrecht/lightline-bufferline'
Plug 'itchyny/lightline.vim'
set laststatus=2
set showtabline=2

function! NearestMethodOrFunction() abort
  return get(b:, 'vista_nearest_method_or_function', '')
endfunction

set statusline+=%{NearestMethodOrFunction()}

" By default vista.vim never run if you don't call it explicitly.
"
" If you want to show the nearest function in your statusline automatically,
" you can add the following line to your vimrc 
autocmd VimEnter * call vista#RunForNearestMethodOrFunction()

let g:lightline = {
            \ 'colorscheme': 'materia',
            \ 'active': {
            \   'left': [ [ 'mode', 'paste' ],
            \             [ 'readonly', 'relativepath', 'modified', 'method' ] ]
            \ },
            \ 'component_function': {
                \   'method': 'NearestMethodOrFunction'
            \ },
        \ }
let g:lightline.tabline = {
            \ 'left': [ [ 'buffers' ] ],
            \ 'right': [ [ 'tabs' ] ] }
let g:lightline.component_expand = {'buffers': 'lightline#bufferline#buffers'}
let g:lightline.component_type   = {'buffers': 'tabsel'}
let g:lightline.separator        = {'left': "\uE0B0", 'right': "\uE0B2"}
let g:lightline.subseparator = {'left': "\uE0B1", 'right': "\uE0B3" }



Plug 'wesQ3/vim-windowswap'

Plug 'mhinz/vim-grepper'
let g:grepper = {
            \ 'tools': ['rg', 'pt', 'ag', 'git', 'grep'],
            \ 'open':  1,
            \ 'jump':  0,
            \ }


Plug 'plasticboy/vim-markdown', {'for': 'markdown'}
let g:vim_markdown_frontmatter = 1
Plug 'nelstrom/vim-markdown-folding', {'for': 'markdown'}

Plug 'ctrlpvim/ctrlp.vim'

Plug 'machakann/vim-highlightedyank'
let g:highlightedyank_highlight_duration = 150

Plug 'vim-scripts/ReplaceWithRegister'

" vim:ts=4:sts=4:sw=4
