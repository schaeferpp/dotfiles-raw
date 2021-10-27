" https://github.com/junegunn/vim-plug
call plug#begin('~/.vim/plugged')

    source ~/.vim/plug-min.vim
    source ~/.vim/plug-max.vim

    " Colorschemes
    " Plug 'toupeira/vim-desertink'
    " Plug 'trusktr/seti.vim'
    " Plug 'chriskempson/tomorrow-theme'
    " Plug 'vim-scripts/wombat256.vim'
    " Plug 'ivan-cukic/vim-colors-penultimate'
    " Plug 'w0ng/vim-hybrid'
    Plug 'nanotech/jellybeans.vim'
    " Plug 'notpratheek/vim-luna'
    " Plug 'chrisbra/csv.vim'
    Plug 'sjl/badwolf'
    " Plug 'chriskempson/base16-vim'
    Plug 'vim-scripts/PaperColor.vim'
    " Plug 'morhetz/gruvbox'
    " Plug 'whatyouhide/vim-gotham'
    Plug 'mhartington/oceanic-next'

    Plug 'tomasr/molokai'
    Plug 'kaicataldo/material.vim'
    Plug 'eemed/sitruuna.vim'

    Plug 'google/vim-colorscheme-primary'
    Plug 'ayu-theme/ayu-vim'

call plug#end()

" https://github.com/neovim/nvim-lspconfig/blob/master/CONFIG.md
lua <<EOF

local lsp = require "lspconfig"
local coq = require "coq"
lsp.clangd.setup{}
lsp.rust_analyzer.setup{}
lsp.pyright.setup{}
lsp.eslint.setup{}
lsp.bashls.setup{}
lsp.racket_langserver.setup{}

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true
lsp.cssls.setup{
  cmd = { "vscode-css-languageserver", "--stdio" },
  capabilities = capabilities
}

lsp.yamlls.setup{}
lsp.tsserver.setup{
  cmd={"tsserver", "--stdio"}
}

lsp.rust_analyzer.setup(coq.lsp_ensure_capabilities()) -- after

EOF

" vim.lsp.buf.definition()

" vim:ts=4:sts=4:sw=4
