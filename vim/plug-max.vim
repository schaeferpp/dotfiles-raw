
function! UpdateRPlugin(info)
  if has('nvim')
    silent UpdateRemotePlugins
    echomsg 'rplugin updated: ' . a:info['name'] . ', restart vim for changes'
  endif
endfunction


Plug 'lervag/vimtex', {'for' : 'tex'}    " latex environment is ae or ie
" Settings in ~/.vim/vimtex.vim

Plug 'godlygeek/tabular' " TODO
Plug 'junegunn/vim-easy-align'           " Usage: vip<Enter>SYMBOL
Plug 'majutsushi/tagbar', {'for': ['c', 'rust', 'javascript', 'python']}                " Tagbar

Plug 'tpope/vim-fugitive'                " git
Plug 'airblade/vim-gitgutter'

Plug 'scrooloose/nerdtree'               " Fileexplorer
Plug 'atweiden/vim-dragvisuals'          " Visually select something in block
                                         " or line mode and use arrow keys
"Plug 'xolox/vim-easytags'

"let g:easytags_async = 1

Plug 'christoomey/vim-tmux-navigator'    " vim/tmux integration
Plug 'edkolev/tmuxline.vim'
Plug 'tmux-plugins/vim-tmux'             " tmux.conf highlighting

Plug 'Yggdroot/indentLine'
"let g:indentLine_color_gui = '#444444'
let g:indentLine_concealcursor = 0
"let g:indentLine_setConceal = 0
"let g:indentLine_char = '▒'
let g:indentLine_color_term = 249


"let g:indentLine_color_gui = '#E4E4E4'


"Plug 'rdnetto/YCM-Generator', { 'branch': 'stable'}

if has('nvim')
    Plug 'Shougo/deoplete.nvim',          { 'do': ':UpdateRemotePlugins' }
    Plug 'zchee/deoplete-jedi',           { 'for': 'python' }
    Plug 'zchee/deoplete-go',             { 'for': 'go' }
    Plug 'carlitux/deoplete-ternjs',      { 'for': 'javascript' }
    Plug 'zchee/deoplete-clang'
    Plug 'sebastianmarkow/deoplete-rust', { 'for': 'rust' }

    let g:deoplete#sources#rust#racer_binary='/home/paul/.cargo/bin/racer'
    let g:deoplete#sources#rust#rust_source_path='/home/paul/.rustup/toolchains/nightly-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/src'
    let g:deoplete#sources#clang#libclang_path = '/usr/lib/libclang.so'
    let g:deoplete#sources#clang#clang_header='/usr/lib/clang'

    " Plug 'Shougo/neco-vim'
    let g:deoplete#enable_at_startup = 1
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

" Plug 'ludovicchabant/vim-gutentags'
" let g:gutentags_cache_dir = '/tmp/'

if has('nvim')
    Plug 'c0r73x/neotags.nvim', {'for': ['python', 'rust', 'c', 'javascript']}
    silent !mkdir ~/.cache/vim > /dev/null 2>&1
    let g:neotags_enabled = 1
    " let g:neotags_verbose = 1
    let g:neotags_file = expand('$HOME') . '/.cache/vim/nvim-tags-' . substitute(getcwd(), '/', '%', 'g')
    let g:neotags_ctags_bin = 'rg --files '. getcwd() .' | ctags'
    let g:neotags_ctags_args = ['--fields=+l', '--c-kinds=+p', '--sort=no', '--extra=+q']
    let g:neotags_ctags_timeout = 300
    let g:neotags#python#order = 'mfc'
endif

Plug 'fatih/vim-go', {'for': 'go'}
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

Plug 'Valloric/MatchTagAlways', {'for': ['xml', 'html', 'htmldjango']}           " Highlight matching xml tags
Plug 'vim-airline/vim-airline'           " Fancy statusline
Plug 'vim-airline/vim-airline-themes'

Plug 'rust-lang/rust.vim', {'for': 'rust'}                " rust highlighting etc
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

Plug 'tkztmk/vim-vala', {'for': 'vala'}                   " vala highlighting etc

Plug 'wesQ3/vim-windowswap'
" Plug 'xolox/vim-misc'
" Plug 'xolox/vim-session'                 " Session handling for tmux
" let g:session_autoload = 'no'

Plug 'mhinz/vim-grepper'
let g:grepper = {
            \ 'tools': ['rg', 'pt', 'ag', 'git', 'grep'],
            \ 'open':  1,
            \ 'jump':  0,
            \ }

Plug 'schaeferpp/vim-gnomealign'         " Gnome Parameter Align :GNOMEAlignArguments
Plug 'vim-scripts/indentpython.vim', {'for': 'py'}
" Plug 'ihacklog/HiCursorWords'

Plug 'vim-scripts/a.vim', {'for': 'c'}                " Alternate header

"Plug 'chazy/cscope_maps'
Plug 'neovimhaskell/haskell-vim', {'for': 'haskell'}

if has('nvim')
    Plug 'mfulz/cscope.nvim', {'for': 'c'}
    let g:cscope_update_on_start = 1

    silent !mkdir -p ~/.cache/cscope_dir > /dev/null 2>&1
    let g:cscope_dir = '~/.cache/cscope_dir'
    let g:cscope_map_keys = 1

endif

Plug 'plasticboy/vim-markdown', {'for': 'markdown'}
Plug 'nelstrom/vim-markdown-folding', {'for': 'markdown'}

" Plug 'Kazark/vim-SimpleSmoothScroll'


Plug 'stfl/meson.vim' " this does ftdetect! , {'for': 'meson'}

Plug 'Chiel92/vim-autoformat', {'for': ['javascript', 'c', 'cpp', 'objc', 'python']}
" map to <Leader>cf in C code
autocmd FileType javascript,c,cpp,objc,python nnoremap <buffer><Leader>cf :<C-u>Autoformat<CR>
autocmd FileType javascript,c,cpp,objc,python vnoremap <buffer><Leader>cf :Autoformat<CR>

Plug 'ctrlpvim/ctrlp.vim'

Plug 'kshenoy/vim-signature'

Plug 'tmhedberg/SimpylFold', {'for': 'python'}

Plug 'neomake/neomake', {'for': 'tex'}
au BufWritePost *.tex Neomake
nnoremap <leader>mm :Neomake!<cr>

Plug 'machakann/vim-highlightedyank'
let g:highlightedyank_highlight_duration = 150

" vim:ts=4:sts=4:sw=4
