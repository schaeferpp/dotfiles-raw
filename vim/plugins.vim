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
    " Plug 'nanotech/jellybeans.vim'
    " Plug 'notpratheek/vim-luna'
    " Plug 'chrisbra/csv.vim'
    " Plug 'sjl/badwolf'
    " Plug 'chriskempson/base16-vim'
    " Plug 'vim-scripts/PaperColor.vim'
    Plug 'morhetz/gruvbox'
    " Plug 'whatyouhide/vim-gotham'
    " Plug 'mhartington/oceanic-next'

    " Plug 'tomasr/molokai'
    " Plug 'kaicataldo/material.vim'
    " Plug 'eemed/sitruuna.vim'

    " Plug 'google/vim-colorscheme-primary'
    " Plug 'ayu-theme/ayu-vim'
call plug#end()

" https://github.com/neovim/nvim-lspconfig/blob/master/CONFIG.md
lua <<EOF

local function lsp_funcname()
    require'lsp-status'.update_current_function()
    return vim.b.lsp_current_function
end

-- local function lsp_status()
--     local lsp_status = require 'lsp-status'
--     lsp_status.update_current_function()
--     return lsp_status.status()
-- end

local function fullname()
    return vim.fn.expand("%:~:.")
end

local lualine = require'lualine'
lualine.setup({
options = {
    section_separators = { left = '', right = '' },
    component_separators = { left = '', right = ''},
    theme='gruvbox_dark',
    },
    sections = {
        lualine_a = {
            { 'mode', separator = { left = '' }, right_padding = 2 },
        },
        lualine_b = { 'filename' },
        lualine_c = { lsp_funcname, {
                'diagnostics',
                sources = { 'nvim_lsp' },
                symbols = { error = ' ', warn = ' ', info = ' ' },
                diagnostics_color = {
                    color_error = { fg = '#a89984' },
                    color_warn = { fg = '#a89984' },
                    color_info = { fg = '#a89984' },
                }
            }
        },
        lualine_x = {},
        lualine_y = {'filetype', 'encoding' },
        lualine_z = { 'progress',
            {   'location', separator = { right = '' }, left_padding = 2 },
        },
    },
    tabline = {
        lualine_a = {'buffers'},
        lualine_b = {},
        lualine_c = { {'%=', separator = {left = ''}}, { 'filename', separator = {left = ''} }},
        lualine_x = {fullname},
        lualine_y = {'branch'},
        lualine_z = {}
    }
    })

local lsp_status = require('lsp-status')
lsp_status.register_progress()

local lsp = require "lspconfig"

-- Mappings.
local opts = { noremap=true, silent=true }
local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end

buf_set_keymap('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', opts)
buf_set_keymap('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
buf_set_keymap('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
buf_set_keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
buf_set_keymap('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
buf_set_keymap('n', '<space>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts)
buf_set_keymap('n', '<space>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)
buf_set_keymap('n', '<space>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opts)
buf_set_keymap('n', '<space>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
buf_set_keymap('n', '<space>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
buf_set_keymap('n', '<space>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
buf_set_keymap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
buf_set_keymap('n', '<space>e', '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>', opts)
buf_set_keymap('n', '[d', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>', opts)
buf_set_keymap('n', ']d', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>', opts)
buf_set_keymap('n', '<space>q', '<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>', opts)
buf_set_keymap('n', '<space>f', '<cmd>lua vim.lsp.buf.formatting()<CR>', opts)

-- Use an on_attach function to only map the following keys
-- after the language server attaches to the current buffer
local on_attach = function(client, bufnr)
  local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end

  -- Enable completion triggered by <c-x><c-o>
  buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')


  -- See `:help vim.lsp.*` for documentation on any of the below functions

end

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').update_capabilities(capabilities)

local default_opts = { capabilities = capabilities }
local default_opts = { on_attach = on_attach, capabilities = capabilities }
lsp.clangd.setup(default_opts)
lsp.rust_analyzer.setup(default_opts)
-- lsp.pyright.setup(default_opts)
lsp.pylsp.setup(default_opts)
lsp.eslint.setup(default_opts)
-- lsp.bashls.setup(default_opts)
lsp.racket_langserver.setup(default_opts)

-- local capabilities = vim.lsp.protocol.make_client_capabilities()
-- capabilities.textDocument.completion.completionItem.snippetSupport = true

lsp.cssls.setup{
  cmd = { "vscode-css-languageserver", "--stdio" },
  capabilities = capabilities
}

-- lsp.yamlls.setup{}
lsp.tsserver.setup{
  cmd={"tsserver", "--stdio"}
}




require('crates').setup{}


local cmp = require 'cmp'
cmp.setup {
  snippet = {
    expand = function(args)
      vim.fn["UltiSnips#Anon"](args.body)
    end,
  },
  mapping = {
    ['<C-p>'] = cmp.mapping.select_prev_item(),
    ['<C-n>'] = cmp.mapping.select_next_item(),
    ['<C-d>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<C-e>'] = cmp.mapping.close(),
    -- ['<CR>'] = cmp.mapping.confirm {
    --   behavior = cmp.ConfirmBehavior.Replace,
    --   select = true,
    -- },
  },
  sources = {
    { name = 'nvim_lsp' },
    { name = 'ultisnips' },
    { name = 'crates' },
    { name = 'path' },
  },
}

-- Use buffer source for `/`.
cmp.setup.cmdline('/', {
    sources = {
        { name = 'buffer' }
    }
})

-- Use cmdline & path source for ':'.
cmp.setup.cmdline(':', {
    sources = cmp.config.sources({
        { name = 'path' }
    }, {
        { name = 'cmdline' }
    })
})




require'colorizer'.setup()
require('rust-tools').setup({})
require('telescope').setup{}
require'rust-tools.hover_range'.hover_range()
require'rust-tools.hover_actions'.hover_actions()

require('rust-tools.inlay_hints').set_inlay_hints()
require('gitsigns').setup()
require("indent_blankline").setup {
    char = "|",
    buftype_exclude = {"terminal"}
    }

require("nvim-web-devicons").set_icon {
  tex = {
    icon = "﫳",
    color = "#428850",
    name = "Zsh"
  }
}

EOF



" vim.lsp.buf.definition()

" vim:ts=4:sts=4:sw=4
