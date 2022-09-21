" Plug 'Chiel92/vim-autoformat', {'for': ['javascript', 'rust', 'c', 'cpp', 'objc', 'html', 'xml', 'vue']}
" let g:formatters_javascript = ['eslint_local']
" autocmd FileType javascript,c,cpp,objc,python,vue nnoremap <buffer><Leader>cf :<C-u>Autoformat<CR>
" autocmd FileType javascript,c,cpp,objc,python,vue vnoremap <buffer><Leader>cf :Autoformat<CR>


" Rust
" Plug 'simrat39/rust-tools.nvim'
" Plug 'pest-parser/pest.vim'
" Plug 'Saecki/crates.nvim'



" C
" Plug 'vim-scripts/a.vim', {'for': ['c', 'cpp']}
" nmap <leader>h :A<cr>
" Plug 'chazy/cscope_maps', {'for': ['c', 'cpp']}

" Meson
" Plug 'stfl/meson.vim' " this does ftdetect! , {'for': 'meson'}

" Haskell
" Plug 'neovimhaskell/haskell-vim', {'for': 'haskell'}

" Go
" Plug 'fatih/vim-go', {'for': 'go'}

" (La)TeX 
" Plug 'lervag/vimtex', {'for' : 'tex'}    " latex environment is ae or ie
" let g:tex_flavor = 'latex'
" let g:tex_conceal=""
" let g:vimtex_fold_enabled=1

" TOML / INI
" Plug 'cespare/vim-toml', {'for': ['toml', 'ini']}

" Markdown
" let g:vim_markdown_conceal = 0
" Plug 'plasticboy/vim-markdown', {'for': 'markdown'}
" let g:vim_markdown_frontmatter = 1
" Plug 'nelstrom/vim-markdown-folding', {'for': 'markdown'}
" autocmd FileType markdown set foldexpr=NestedMarkdownFolds()

" HTML and XML
" Plug 'Valloric/MatchTagAlways', {'for': ['xml', 'html', 'htmldjango']}           " Highlight matching xml tags
" Plug 'mattn/emmet-vim', { 'for': ['xml', 'html', 'htmldjango']}
" Plug 'othree/html5.vim', { 'for': ['xml', 'html', 'htmldjango']}

" Vala
" Plug 'tkztmk/vim-vala', {'for': 'vala'}                   " vala highlighting etc

" Python
" Plug 'vim-scripts/indentpython.vim', {'for': 'py'}
" Plug 'tmhedberg/SimpylFold', {'for': 'python'}

" Kotlin
" Plug 'udalov/kotlin-vim', {'for': ['kotlin']}

" Vue
" Plug 'leafOfTree/vim-vue-plugin', { 'for': 'vue' }
" let g:vim_vue_plugin_use_typescript = 1
" let g:vim_vue_plugin_use_sass = 1

" Ansible
" Plug 'pearofducks/ansible-vim', { 'for': 'yaml' }

" Typescript
" Plug 'HerringtonDarkholme/yats.vim', { 'for': 'ts' }


" Text
" Plug 'rhysd/vim-grammarous', {'for': ['tex', 'markdown']}
" let g:grammarous#languagetool_cmd = '~/bin/grammarous-lt.sh'
" map <F8> :GrammarousCheck --lang=en-GB<CR>
" map <F8> :GrammarousCheck --lang=de-DE<CR>

