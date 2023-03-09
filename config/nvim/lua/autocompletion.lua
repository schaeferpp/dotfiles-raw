-- local lsp_status = require('lsp-status')
-- lsp_status.register_progress()

local lsp_format = require('lsp-format')
local lsp = require('lspconfig')
local lspkind = require('lspkind')
local luasnip = require('luasnip')

lsp_format.setup {}



local has_words_before = function()
  local line, col = unpack(vim.api.nvim_win_get_cursor(0))
  return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
end


-- Mappings.
local opts = { noremap=true, silent=true }

-- Use an on_attach function to only map the following keys
-- after the language server attaches to the current buffer
local on_attach = function(client, bufnr)
    local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end

    vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>e', '<cmd>lua vim.diagnostic.open_float()<CR>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', '[d', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', ']d', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>', opts)
    -- buf_set_keymap('n', '<leader>q', '<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>f', '<cmd>lua vim.lsp.buf.formatting()<CR>', opts)

    -- Enable completion triggered by <c-x><c-o>
    buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')
    lsp_format.on_attach(client)


    -- See `:help vim.lsp.*` for documentation on any of the below functions

end

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').default_capabilities(capabilities)
-- capabilities = vim.tbl_extend('keep', capabilities or {}, lsp_status.capabilities)

local default_opts = { capabilities = capabilities }
-- local default_opts = { on_attach = on_attach, capabilities = capabilities }
lsp.clangd.setup(default_opts)
lsp.rust_analyzer.setup({
    capabilities = capabilities,
    on_attach=on_attach,
    settings = {
        ["rust-analyzer"] = {
            assist = {
                importGranularity = "module",
                importPrefix = "by_self",
            },
            cargo = {
                loadOutDirsFromCheck = true
            },
            procMacro = {
                enable = true
            },
        }
    }
})
-- lsp.pyright.setup(default_opts)
lsp.pylsp.setup({
    capabilities = capabilities,
    settings = {
        formatCommand = {"black"},
        pylsp = {
            plugins = {
                black = {
                    enabled = true
                },
                pylint = {
                    enabled = true,
                    args = {'--disable=missing-function-docstring,missing-class-docstring,empty-docstring,invalid-name'}
                },
                pycodestyle = {
                    enabled = false
                }
                -- pycodestyle = {
                --     ignore = {'W391'},
                --     maxLineLength = 100
                -- }
            }
        },
    }
})
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
    -- cmd={"tsserver", "--stdio"}
}

local cmp = require 'cmp'
cmp.setup {
    snippet = {
        expand = function(args)
            -- vim.fn["UltiSnips#Anon"](args.body)
            require('luasnip').lsp_expand(args.body)
        end,
    },
    mapping = {
        ['<C-p>'] = cmp.mapping.select_prev_item(),
        ['<C-n>'] = cmp.mapping(function(fallback)
            if cmp.visible() then
                print('next selection')
                cmp.select_next_item()
            elseif luasnip.expand_or_jumpable() then
                luasnip.expand_or_jump()
            else
                cmp.complete()
            end
        end, { "i", "s" }),
        ['<C-d>'] = cmp.mapping.scroll_docs(-4),
        ['<C-f>'] = cmp.mapping.scroll_docs(4),
        ['<C-#>'] = cmp.mapping.complete(),
        ['<C-e>'] = cmp.mapping.close(),
        ['<C-l>'] = cmp.mapping(function(fallback)
            luasnip.expand_or_jump()
            if luasnip.expand_or_jumpable() then
                luasnip.expand_or_jump()
            else
                fallback()
            end
        end, { "i", "s" }),
        ['<C-h>'] = cmp.mapping(function(fallback)
            if luasnip.jumpable(-1) then
                luasnip.jump(-1)
            else
                fallback()
            end
        end, { "i", "s" }),
        ["<Tab>"] = cmp.mapping(function(fb)
            fb()
        end, { "i", "s" }),
        -- ["<Tab>"] = cmp.mapping(function(fallback)
        --     print("tab " .. tostring(luasnip.expand_or_jumpable()))
        --     if luasnip.expand_or_jumpable() then
        --         luasnip.expand_or_jump()
        --     elseif has_words_before() then
        --         cmp.complete()
        --     else
        --         print(fallback)
        --         fallback()
        --     end
        -- end, { "i", "s" }),
        ["<S-Tab>"] = cmp.mapping(function(fallback)
            if cmp.visible() then
                cmp.select_prev_item()
            elseif luasnip.jumpable(-1) then
                luasnip.jump(-1)
            else
                fallback()
            end
        end, { "i", "s" }),
        -- ['<CR>'] = cmp.mapping.confirm {
        --   behavior = cmp.ConfirmBehavior.Replace,
        --   select = true,
        -- },
    },
    sources = {
        { name = 'nvim_lsp' },
        -- { name = 'ultisnips' },
        { name = 'luasnip' },
        { name = 'path' },
    },
    formatting = {
        format = lspkind.cmp_format({
            mode = 'symbol',
            maxwidth = 50,
            ellipsis_char = "..."
        })
    }
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

