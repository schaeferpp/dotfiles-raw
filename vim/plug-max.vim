
function! UpdateRPlugin(info)
  if has('nvim')
    silent UpdateRemotePlugins
    echomsg 'rplugin updated: ' . a:info['name'] . ', restart vim for changes'
  endif
endfunction


Plug 'lervag/vimtex', {'for' : 'tex'}    " latex environment is ae or ie
let g:tex_conceal=""
let g:vimtex_fold_enabled=1
let g:vimtex_compiler_method='latexrun'

let g:vimtex_compiler_latexrun = {
    \ 'background' : 0,
    \ 'build_dir' : '',
    \ 'options' : [
    \   '--verbose-cmds',
    \   '--latex-args="-synctex=1"',
    \   '--latex-cmd=pdflatex',
    \   '--bibtex-cmd=biber'
    \ ],
    \}


nnoremap <F9>  :exec "!zathura --synctex-forward " . line('.') . ":" . col('.') . ":" . @% . " " . expand('%:r') . ".pdf"<cr><cr>
" nnoremap <F9>
"     \ :exec "!szathura %:r.pdf" line('.')  col('.') "% > /dev/null"<cr><cr>
" nnoremap <C-F9>
"     \ :exec "!szathura %:r.pdf" > /dev/null 2>&1 &"<cr><cr>

Plug 'junegunn/vim-easy-align'           " vip<Enter>SYMBOL
Plug 'majutsushi/tagbar'                 " Tagbar
let g:tagbar_type_rust = {
    \ 'ctagstype' : 'rust',
    \ 'kinds' : [
        \'T:types,type definitions',
        \'f:functions,function definitions',
        \'g:enum,enumeration names',
        \'s:structure names',
        \'m:modules,module names',
        \'c:consts,static constants',
        \'t:traits',
        \'i:impls,trait implementations',
    \]
    \}
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


"Plug 'rdnetto/YCM-Generator', { 'branch': 'stable'}

if has('nvim')
    Plug 'Shougo/deoplete.nvim'
    Plug 'zchee/deoplete-jedi'
    Plug 'zchee/deoplete-go'
    Plug 'carlitux/deoplete-ternjs'
    Plug 'zchee/deoplete-clang'
    Plug 'sebastianmarkow/deoplete-rust'

    let g:deoplete#sources#rust#racer_binary='/home/paul/.cargo/bin/racer'
    let g:deoplete#sources#rust#rust_source_path='/home/paul/.rustup/toolchains/nightly-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/src'
    let g:deoplete#sources#clang#libclang_path = '/usr/lib/libclang.so'
    let g:deoplete#sources#clang#clang_header='/usr/lib/clang'

    Plug 'Shougo/neco-vim'
    let g:deoplete#enable_at_startup = 1

    "Plug 'zchee/nvim-go'
else
    Plug 'Valloric/YouCompleteMe'
    Plug 'rdnetto/YCM-Generator', { 'branch': 'develop'} 

    let g:ycm_confirm_extra_conf = 0

    let g:ycm_server_keep_logfiles = 1
    let g:ycm_server_log_level = 'debug'
    let g:ycm_key_list_select_completion = ['<c-n>', '<Down>']
    let g:ycm_key_list_previous_completion = ['<c-p>', '<Up>']
    let g:ycm_server_python_interpreter = '/usr/bin/python'
endif
autocmd CompleteDone * pclose

" Plug 'ludovicchabant/vim-gutentags'
" let g:gutentags_cache_dir = '/tmp/'

if has('nvim')
    Plug 'c0r73x/neotags.nvim'
    silent !mkdir ~/.cache/vim > /dev/null 2>&1
    let g:neotags_enabled = 1
    " let g:neotags_verbose = 1
    let g:neotags_file = expand('$HOME') . '/.cache/vim/nvim-tags-' . substitute(getcwd(), '/', '%', 'g')
    let g:neotags_ctags_bin = 'rg --files '. getcwd() .' | ctags'
    let g:neotags_ctags_args = ['--fields=+l', '--c-kinds=+p', '--sort=no', '--extra=+q']
    let g:neotags_ctags_timeout = 300
    let g:neotags#python#order = 'mfc'
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
let g:license                            = "LGPL-3.0+"
let g:username                           = "Paul Schaefer"
let g:email                              = "paul@os-s.de"

Plug 'Valloric/MatchTagAlways'           " Highlight matching xml tags
Plug 'vim-airline/vim-airline'           " Fancy statusline
Plug 'vim-airline/vim-airline-themes'
Plug 'edkolev/tmuxline.vim'

Plug 'rust-lang/rust.vim'                " rust highlighting etc
let g:rustfmt_autosave = 1
let g:rustfmt_command = '/home/paul/.rustup/toolchains/nightly-x86_64-unknown-linux-gnu/bin/rustfmt'
let g:racer_cmd='/home/paul/.cargo/bin/racer'

" Rust code completion
" Plug 'ebfe/vim-racer'
" au FileType rust nmap gd <Plug>(rust-def)
" au FileType rust nmap gs <Plug>(rust-def-split)
" au FileType rust nmap gx <Plug>(rust-def-vertical)
" au FileType rust nmap <leader>gd <Plug>(rust-doc)
" let g:ycm_rust_src_path = '/usr/src/rust/src'

Plug 'tkztmk/vim-vala'                   " vala highlighting etc

Plug 'wesQ3/vim-windowswap'
Plug 'xolox/vim-misc'
Plug 'xolox/vim-session'                 " Session handling for tmux
let g:session_autoload = 'no'
Plug 'tmux-plugins/vim-tmux'             " tmux.conf highlighting
Plug 'mhinz/vim-grepper'
let g:grepper = {
            \ 'tools': ['rg', 'pt', 'ag', 'git', 'grep'],
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

if has('nvim')
    Plug 'mfulz/cscope.nvim'
    let g:cscope_update_on_start = 1

    silent !mkdir -p ~/.cache/cscope_dir > /dev/null 2>&1
    let g:cscope_dir = '~/.cache/cscope_dir'
    let g:cscope_map_keys = 1

endif

Plug 'plasticboy/vim-markdown'
Plug 'nelstrom/vim-markdown-folding'
Plug 'godlygeek/tabular'

" Plug 'Kazark/vim-SimpleSmoothScroll'


Plug 'stfl/meson.vim'

Plug 'Chiel92/vim-autoformat'
" map to <Leader>cf in C code
autocmd FileType javascript,c,cpp,objc,python nnoremap <buffer><Leader>cf :<C-u>Autoformat<CR>
autocmd FileType javascript,c,cpp,objc,python vnoremap <buffer><Leader>cf :Autoformat<CR>

" " Clang format {{{
" Plug 'rhysd/vim-clang-format'
" let g:clang_format#style_options = {
"             \ "BasedOnStyle": "Chromium",
"             \ "AlignTrailingComments": "true",
"             \ "BreakBeforeBraces": "Allman",
"             \ "ColumnLimit": 80,
"             \ "IndentWidth": 4,
"             \ "KeepEmptyLinesAtTheStartOfBlocks": "false",
"             \ "ObjCSpaceAfterProperty": "true",
"             \ "ObjCSpaceBeforeProtocolList": "true",
"             \ "PointerBindsToType": "false",
"             \ "SpacesBeforeTrailingComments": 1,
"             \ "PointerAlignment": "Right",
"             \ "TabWidth": 4,
"             \ "UseTab": "Never",
"             \ "AlwaysBreakAfterReturnType": "All",
"             \ "AlignConsecutiveDeclarations": "true",
"             \ "AlignConsecutiveAssignments": "true",
"             \ "BinPackParameters": "false",
"             \ "BinPackArguments": "false",
"             \ "SpaceAfterCStyleCast": "true",
"             \ "Cpp11BracedListStyle": "true",
"             \ "Standard" : "C++11"}
"
" " map to <Leader>cf in C code
" autocmd FileType c,cpp,objc nnoremap <buffer><Leader>cf :<C-u>ClangFormat<CR>
" autocmd FileType c,cpp,objc vnoremap <buffer><Leader>cf :ClangFormat<CR>
"}}}

" Toggle auto formatting:
" nmap <Leader>C :ClangFormatAutoToggle<CR>

" Plug 'Shougo/denite.nvim'
Plug 'ctrlpvim/ctrlp.vim'

Plug 'kshenoy/vim-signature'

Plug 'tmhedberg/SimpylFold'

Plug 'neomake/neomake'
au BufWritePost *.tex Neomake
nnoremap <leader>mm :Neomake!<cr>

Plug 'machakann/vim-highlightedyank'
let g:highlightedyank_highlight_duration = 150
