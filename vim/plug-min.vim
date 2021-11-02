Plug 'tpope/vim-surround'                " ysiw'   -> surrounds word with '
let g:surround_{char2nr('c')} = "\\\1command\1{\r}"

Plug 'tpope/vim-repeat'                  " make surroundings repeatable
" Plug 'scrooloose/nerdcommenter'
" Plug 'tomtom/tcomment_vim'
Plug 'tpope/vim-commentary'

" let g:NERDCustomDelimiters = { 'c': { 'left': '/*','right': '*/' } }
Plug 'vim-scripts/let-modeline.vim'      " extend modeline to `let`

Plug 'cespare/vim-toml'

" Plug 'majutsushi/tagbar'
" Plug 'preservim/tagbar'

Plug 'liuchengxu/vista.vim'
let g:vista#renderer#enable_icon = 1
let g:vista_icon_indent = ["╰─▸ ", "├─▸ "]
let g:vista_sidebar_width = 45
" nnoremap <Leader>t :TagbarToggle<CR>
nnoremap <Leader>t :Vista!!<CR>

Plug 'tpope/vim-fugitive'                " git
Plug 'airblade/vim-gitgutter'

Plug 'scrooloose/nerdtree'               " Fileexplorer

Plug 'christoomey/vim-tmux-navigator'    " vim/tmux integration

Plug 'Yggdroot/indentLine'
"let g:indentLine_color_gui = '#444444'
let g:indentLine_concealcursor = 0
"let g:indentLine_setConceal = 0
"let g:indentLine_char = '▒'
" let g:indentLine_char= '│'
let g:indentLine_char_list = ['|', '¦', '┆', '┊']
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
let g:email                              = "paul@realcyber.de"

if filereadable(expand("~/.vim/override.vim"))
    source ~/.vim/override.vim
endif

Plug 'Valloric/MatchTagAlways', {'for': ['xml', 'html', 'htmldjango']}           " Highlight matching xml tags
" Plug 'vim-airline/vim-airline'           " Fancy statusline
" Plug 'vim-airline/vim-airline-themes'
"
" Plug 'dense-analysis/ale'
" Plug 'itchyny/lightline.vim'
" Plug 'mengelbrecht/lightline-bufferline'
" let g:ale_linter_aliases = {'vue': ['vue', 'javascript']}
" let g:ale_linters = {
"             \ 'vue': ['eslint', 'vls'],
"             \ 'python': ['pylint']
"             \ }

"             " \ 'python': ['pylint', 'mypy']
" let g:ale_c_parse_makefile = 1
" let g:ale_fixers = {'python': ['isort', 'yapf']}
" let g:ale_python_yapf_executable = '/usr/bin/yapf'
" let g:ale_fix_on_save = 1

" Plug 'maximbaz/lightline-ale'
" let g:ale_completion_enabled = 1
set laststatus=2
set showtabline=2

function! NearestMethodOrFunction() abort
    " return get(b:, 'tagbar_current_tagrCurrentTagrCurrentTag<CR><CR>', '')
    " if luaeval('#vim.lsp.buf_get_clients() > 0')
        " try
        "     lua require'lsp-status'.update_current_function()
        "     return b:lsp_current_function
        " catch
            return ""
        " endtry
    " endif
endfunction

function! LspStatus() abort
    " return get(b:, 'tagbar_current_tagrCurrentTagrCurrentTag<CR><CR>', '')
    if luaeval('#vim.lsp.buf_get_clients() > 0')
        try
            lua require'lsp-status'.update_current_function()
        catch
        endtry
        return luaeval("require('lsp-status').status()")
    endif
    " lua require'lsp-status'.update_current_function()
    " return b:lsp_current_function
    " return normal TagbarCurrentTag<CR>
endfunction

" set statusline+=%{NearestMethodOrFunction()}

" By default vista.vim never run if you don't call it explicitly.
"
" If you want to show the nearest function in your statusline automatically,
" you can add the following line to your vimrc 
" autocmd VimEnter * normal TagbarCurrentTag<CR>

" let g:lightline = {
"             \ 'colorscheme': 'wombat',
"             \ 'active': {
"             \   'left': [ [ 'mode', 'paste' ],
"             \             [ 'readonly', 'relativepath', 'modified', 'method' ] ],
"             \   'right': [ [ 'lspstatus', 'fileencoding', 'filetype', 'percent', 'lineinfo'  ], 
"             \              [ 'linter_checking', 'linter_errors', 'linter_warnings', 'linter_infos', 'linter_ok' ] ],
"             \ },
"             \ 'tabline': {
"                 \ 'left': [ [ 'buffers' ] ],
"                 \ 'right': [ [ 'tabs' ] ]
"             \ },
"             \ 'separator': {'left': "", 'right': ""},
"             \ 'subseparator': {'left': "", 'right': "" },
"             \ 'mode_map': {
"                 \ 'n' : 'N',
"                 \ 'i' : 'I',
"                 \ 'R' : 'R',
"                 \ 'v' : 'V',
"                 \ 'V' : 'VL',
"                 \ "\<C-v>": 'VB',
"                 \ 'c' : 'C',
"                 \ 's' : 'S',
"                 \ 'S' : 'SL',
"                 \ "\<C-s>": 'SB',
"                 \ 't': 'T',
"                 \ },
"             \ 'component_function': {
"                 \   'method': 'NearestMethodOrFunction',
"                 \   'lspstatus': 'LspStatus'
"             \ },
"             \ 'component_expand' : {
"                 \  'buffers': 'lightline#bufferline#buffers',
"                 \  'linter_checking': 'lightline#ale#checking',
"                 \  'linter_infos': 'lightline#ale#infos',
"                 \  'linter_warnings': 'lightline#ale#warnings',
"                 \  'linter_errors': 'lightline#ale#errors',
"                 \  'linter_ok': 'lightline#ale#ok',
"             \ },
"             \ 'component_type' : {
"                 \  'buffers': 'tabsel',
"                 \  'linter_checking': 'right',
"                 \  'linter_infos': 'right',
"                 \  'linter_warnings': 'warning',
"                 \  'linter_errors': 'error',
"                 \  'linter_ok': 'right',
"             \ }
"         \ }

" " let g:lightline#bufferline#enable_devicons=1
" let g:lightline#bufferline#clickable = 1

Plug 'nvim-lualine/lualine.nvim'


" Plug 'wesQ3/vim-windowswap'

Plug 'mhinz/vim-grepper'
let g:grepper = {
            \ 'tools': ['rg', 'pt', 'ag', 'git', 'grep'],
            \ 'open':  1,
            \ 'jump':  0,
            \ }


let g:vim_markdown_conceal = 0
Plug 'plasticboy/vim-markdown', {'for': 'markdown'}
let g:vim_markdown_frontmatter = 1

Plug 'nelstrom/vim-markdown-folding', {'for': 'markdown'}

autocmd FileType markdown set foldexpr=NestedMarkdownFolds()

Plug 'ctrlpvim/ctrlp.vim'
let g:ctrlp_cmd = 'CtrlPBuffer'
" nmap <C-S-p> :echo foo<cr>

Plug 'machakann/vim-highlightedyank'
let g:highlightedyank_highlight_duration = 150

" Plug 'vim-scripts/ReplaceWithRegister'

" Plug 'Konfekt/FastFold'

" vim:ts=4:sts=4:sw=4
