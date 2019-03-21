
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
Plug 'atweiden/vim-dragvisuals'          " Visually select something in block
                                         " or line mode and use arrow keys
"Plug 'xolox/vim-easytags'

"let g:easytags_async = 1

Plug 'edkolev/tmuxline.vim'
Plug 'tmux-plugins/vim-tmux'             " tmux.conf highlighting
Plug 'tpope/vim-dispatch'

"Plug 'rdnetto/YCM-Generator', { 'branch': 'stable'}

if has('nvim')
    Plug 'neoclide/coc.nvim', {'tag': '*', 'do': { -> coc#util#install()}}
    " Plug 'Shougo/deoplete.nvim',          { 'do': ':UpdateRemotePlugins' }
    " Plug 'zchee/deoplete-jedi',           { 'for': 'python' }
    " Plug 'zchee/deoplete-go',             { 'for': 'go' }
    " Plug 'carlitux/deoplete-ternjs',      { 'for': 'javascript' }
    " Plug 'zchee/deoplete-clang'
    " Plug 'sebastianmarkow/deoplete-rust', { 'for': 'rust' }
    " Plug 'xolox/vim-lua-ftplugin',        { 'for': 'lua' }
    " " Plug 'autozimu/LanguageClient-neovim'
    " " let g:LanguageClient_serverCommands = {
    " "     \ 'kotlin': ['~/bin/kotlin-language-server'],
    " "     \ }
    "
    " let g:deoplete#enable_at_startup = 1
    " let g:lua_check_syntax = 0
    " let g:lua_complete_omni = 1
    " let g:lua_complete_dynamic = 0
    " let g:lua_define_completion_mappings = 0
    "
    " let g:deoplete#sources#rust#racer_binary='/home/paul/.cargo/bin/racer'
    " let g:deoplete#sources#rust#rust_source_path='/home/paul/.rustup/toolchains/nightly-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/src'
    " let g:deoplete#sources#clang#libclang_path = '/usr/lib/libclang.so'
    " let g:deoplete#sources#clang#clang_header='/usr/lib/clang'
    "
    " " Plug 'Shougo/neco-vim'
    " let g:deoplete#enable_at_startup = 1
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
    silent !mkdir ~/.cache/vim > /dev/null 2>&1

    " Plug 'c0r73x/neotags.nvim', {'for': ['python', 'rust', 'c', 'cpp', 'javascript']}
    " let g:neotags_enabled = 1
    " let g:neotags_run_ctags = 0
    " let g:neotags_verbose = 1
    " let g:neotags_file = expand('$HOME') . '/.cache/vim/nvim-tags-' . substitute(getcwd(), '/', '%', 'g')
    " " let g:neotags_ctags_bin = '/usr/bin/rg --files '. getcwd() .' | /usr/bin/ctags'
    " " let g:neotags_ctags_args = ['--fields=+l', '--c-kinds=+p', '--sort=no', '--extras=+q']
    " " let g:neotags_ctags_timeout = 300
    " let g:neotags#python#order = 'mfc'

    Plug 'xolox/vim-misc', {'for': ['python', 'rust', 'c', 'cpp', 'javascript', 'lua']} " dependency for easytags and vim-lua-ftplugin
    " Plug 'xolox/vim-easytags', {'for': ['python', 'rust', 'c', 'cpp', 'javascript']}

    " let g:easytags_file = expand('$HOME') . '/.cache/vim/nvim-tags-' . substitute(getcwd(), '/', '%', 'g')
    " let g:easytags_async = 1
    " let g:easytags_autorecurse = 1
endif

Plug 'fatih/vim-go', {'for': 'go'}
let g:go_template_autocreate = 0
let g:go_fmt_experimental = 1

Plug 'rust-lang/rust.vim', {'for': 'rust'}                " rust highlighting etc
let g:rustfmt_autosave = 1
let g:rustfmt_command = '/home/paul/.rustup/toolchains/nightly-x86_64-unknown-linux-gnu/bin/rustfmt'
let g:rustfmt_emit_files = 1
let g:racer_cmd='/home/paul/.cargo/bin/racer'

" Rust code completion
" Plug 'ebfe/vim-racer'
" au FileType rust nmap gd <Plug>(rust-def)
" au FileType rust nmap gs <Plug>(rust-def-split)
" au FileType rust nmap gx <Plug>(rust-def-vertical)
" au FileType rust nmap <leader>gd <Plug>(rust-doc)
" let g:ycm_rust_src_path = '/usr/src/rust/src'

Plug 'tkztmk/vim-vala', {'for': 'vala'}                   " vala highlighting etc

" Plug 'xolox/vim-misc'
" Plug 'xolox/vim-session'                 " Session handling for tmux
" let g:session_autoload = 'no'


Plug 'schaeferpp/vim-gnomealign'         " Gnome Parameter Align :GNOMEAlignArguments
Plug 'vim-scripts/indentpython.vim', {'for': 'py'}
" Plug 'ihacklog/HiCursorWords'

Plug 'vim-scripts/a.vim', {'for': 'c'}                " Alternate header

Plug 'neovimhaskell/haskell-vim', {'for': 'haskell'}

Plug 'chazy/cscope_maps', {'for': ['c', 'cpp']}
" if has('nvim')
"     Plug 'mfulz/cscope.nvim', {'for': 'c'}
"     let g:cscope_update_on_start = 1
"
"     silent !mkdir -p ~/.cache/cscope_dir > /dev/null 2>&1
"     let g:cscope_dir = '~/.cache/cscope_dir'
"     let g:cscope_map_keys = 1
"
" endif

" Plug 'Kazark/vim-SimpleSmoothScroll'

Plug 'stfl/meson.vim' " this does ftdetect! , {'for': 'meson'}

Plug 'Chiel92/vim-autoformat', {'for': ['javascript', 'rust', 'c', 'cpp', 'objc', 'python']}
let g:formatters_python = ['black']
" map to <Leader>cf in C code
autocmd FileType javascript,c,cpp,objc,python nnoremap <buffer><Leader>cf :<C-u>Autoformat<CR>
autocmd FileType javascript,c,cpp,objc,python vnoremap <buffer><Leader>cf :Autoformat<CR>

Plug 'kshenoy/vim-signature'

Plug 'tmhedberg/SimpylFold', {'for': 'python'}

Plug 'neomake/neomake', {'for': ['tex', 'plaintex']}
au BufWritePost *.tex Neomake
nnoremap <leader>mm :Neomake!<cr>

Plug 'tpope/vim-speeddating'
Plug 'jceb/vim-orgmode'

Plug 'vim-scripts/SyntaxRange'

Plug 'embear/vim-localvimrc'

Plug 'sakhnik/nvim-gdb'

Plug 'easymotion/vim-easymotion'

Plug 'kassio/neoterm'
" let g:neoterm_keep_term_open=1
let g:neoterm_keep_term_open=1
let g:neoterm_default_mod=':tab'
nnoremap ,,c :Tnew<CR>
" Plug 'Vigemus/nvimux'
" map <Leader>g <Plug>(easymotion-prefix)

" Plug 'blueyed/vim-diminactive'
" let g:diminactive_buftype_whitelist = ['nofile']
" let g:diminactive_use_syntax = 1
" let g:diminactive_use_colorcolumn = 0

Plug 'dbeniamine/vim-mail'

let g:VimMailFromContact="Paul Schaefer <paul@os-s.de>"


Plug 'rhysd/vim-grammarous'

Plug 'udalov/kotlin-vim', {'for': ['kotlin']}

Plug 'davidhalter/jedi-vim', {'for': ['python']}
let g:jedi#use_tabs_not_buffers = 0  " use buffers instead of tabs
let g:jedi#show_call_signatures = "1"
let g:jedi#goto_command = "gd"
let g:jedi#goto_assignments_command = "ga"
let g:jedi#goto_definitions_command = "<localleader>gg"
let g:jedi#documentation_command = "K"
let g:jedi#usages_command = "<localleader>u"
let g:jedi#completions_command = "<C-Space>"
let g:jedi#rename_command = "<leader>r"

" vim:ts=4:sts=4:sw=4
