-- Your LSP settings here
local lsp_format = require('lsp-format')
local lsp = require('lspconfig')
local lspkind = require('lspkind')
local cmp = require 'cmp'

-- gray
vim.api.nvim_set_hl(0, 'CmpItemAbbrDeprecated', { bg = 'NONE', strikethrough = true, fg = '#808080' })
-- blue
vim.api.nvim_set_hl(0, 'CmpItemAbbrMatch', { bg = 'NONE', fg = '#569CD6' })
vim.api.nvim_set_hl(0, 'CmpItemAbbrMatchFuzzy', { link = 'CmpIntemAbbrMatch' })
-- light blue
vim.api.nvim_set_hl(0, 'CmpItemKindVariable', { bg = 'NONE', fg = '#9CDCFE' })
vim.api.nvim_set_hl(0, 'CmpItemKindInterface', { link = 'CmpItemKindVariable' })
vim.api.nvim_set_hl(0, 'CmpItemKindText', { link = 'CmpItemKindVariable' })
-- pink
vim.api.nvim_set_hl(0, 'CmpItemKindFunction', { bg = 'NONE', fg = '#C586C0' })
vim.api.nvim_set_hl(0, 'CmpItemKindMethod', { link = 'CmpItemKindFunction' })
-- front
vim.api.nvim_set_hl(0, 'CmpItemKindKeyword', { bg = 'NONE', fg = '#D4D4D4' })
vim.api.nvim_set_hl(0, 'CmpItemKindProperty', { link = 'CmpItemKindKeyword' })
vim.api.nvim_set_hl(0, 'CmpItemKindUnit', { link = 'CmpItemKindKeyword' })

cmp.setup({
    window = {
        completion = {
            winhighlight = "Normal:Pmenu,FloatBorder:Pmenu,Search:None",
            col_offset = -3,
            side_padding = 0,
        },
    },
    formatting = {
        fields = { "kind", "abbr", "menu" },
        format = function(entry, vim_item)
            local kind = require("lspkind").cmp_format({ mode = "symbol_text", maxwidth = 50 })(entry, vim_item)
            local strings = vim.split(kind.kind, "%s", { trimempty = true })
            kind.kind = " " .. (strings[1] or "") .. " "
            kind.menu = "    (" .. (strings[2] or "") .. ")"

            return kind
        end,
    },
    snippet = {
        -- REQUIRED - you must specify a snippet engine
        expand = function(args)
            vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
            -- require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
            -- require('snippy').expand_snippet(args.body) -- For `snippy` users.
            -- vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
            -- vim.snippet.expand(args.body) -- For native neovim snippets (Neovim v0.10+)
        end,
    },
    -- window = {
    --     completion = cmp.config.window.bordered(),
    --     documentation = cmp.config.window.bordered(),
    -- },
    mapping = cmp.mapping.preset.insert({
        ['<C-b>'] = cmp.mapping.scroll_docs(-4),
        ['<C-f>'] = cmp.mapping.scroll_docs(4),
        ['<C-e>'] = cmp.mapping.abort(),
        -- ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
    }),
    sources = cmp.config.sources({
        { name = 'nvim_lsp' },
        { name = 'vsnip' }, -- For vsnip users.
        -- { name = 'luasnip' }, -- For luasnip users.
        -- { name = 'ultisnips' }, -- For ultisnips users.
        -- { name = 'snippy' }, -- For snippy users.
    }, {
        { name = 'buffer' },
    })
})

vim.lsp.handlers['textDocument/hover'] = vim.lsp.with(
  vim.lsp.handlers.hover,
  {border = 'rounded'}
)

vim.lsp.handlers['textDocument/signatureHelp'] = vim.lsp.with(
  vim.lsp.handlers.signature_help,
  {border = 'rounded'}
)

lsp_format.setup {}

local lsp_attach = function(client, buf)
    -- Example maps, set your own with vim.api.nvim_buf_set_keymap(buf, "n", <lhs>, <rhs>, { desc = <desc> })
    -- or a plugin like which-key.nvim
    -- <lhs>        <rhs>                        <desc>
    -- "K"          vim.lsp.buf.hover            "Hover Info"
    -- "<leader>qf" vim.diagnostic.setqflist     "Quickfix Diagnostics"
    -- "[d"         vim.diagnostic.goto_prev     "Previous Diagnostic"
    -- "]d"         vim.diagnostic.goto_next     "Next Diagnostic"
    -- "<leader>e"  vim.diagnostic.open_float    "Explain Diagnostic"
    -- "<leader>ca" vim.lsp.buf.code_action      "Code Action"
    -- "<leader>cr" vim.lsp.buf.rename           "Rename Symbol"
    -- "<leader>fs" vim.lsp.buf.document_symbol  "Document Symbols"
    -- "<leader>fS" vim.lsp.buf.workspace_symbol "Workspace Symbols"
    -- "<leader>gq" vim.lsp.buf.formatting_sync  "Format File"

    vim.api.nvim_set_option_value("formatexpr", "v:lua.vim.lsp.formatexpr()", { buf = buf })
    vim.api.nvim_set_option_value("omnifunc", "v:lua.vim.lsp.omnifunc", { buf = buf })
    vim.api.nvim_set_option_value("tagfunc", "v:lua.vim.lsp.tagfunc", { buf = buf })
end

local has_words_before = function()
    local line, col = unpack(vim.api.nvim_win_get_cursor(0))
    return col ~= 0 and
        vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
end


-- Mappings.
local opts = { noremap = true, silent = true }

-- Use an on_attach function to only map the following keys
-- after the language server attaches to the current buffer
-- local on_attach = function(client, bufnr)
-- local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end
-- local function buf_set_option(...) vim.api.nvim_buf_set_option_value(bufnr, ...) end

-- vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', opts)
-- vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
-- vim.api.nvim_buf_set_keymap(bufnr, 'n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
-- vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
-- vim.api.nvim_buf_set_keymap(bufnr, 'n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
-- vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts)
-- vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)
-- vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opts)
-- vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
-- vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
-- vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
-- vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
-- vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>e', '<cmd>lua vim.diagnostic.open_float()<CR>', opts)
-- vim.api.nvim_buf_set_keymap(bufnr, 'n', '[d', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>', opts)
-- vim.api.nvim_buf_set_keymap(bufnr, 'n', ']d', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>', opts)
-- buf_set_keymap('n', '<leader>q', '<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>', opts)
-- vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>f', '<cmd>lua vim.lsp.buf.formatting()<CR>', opts)

-- Enable completion triggered by <c-x><c-o>
-- buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')
-- lsp_format.on_attach(client)


-- See `:help vim.lsp.*` for documentation on any of the below functions
-- end

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').default_capabilities(capabilities)
-- capabilities = vim.tbl_extend('keep', capabilities or {}, lsp_status.capabilities)

local default_opts = { capabilities = capabilities }
-- local default_opts = { on_attach = on_attach, capabilities = capabilities }
lsp.clangd.setup(default_opts)
lsp.rust_analyzer.setup({
    capabilities = capabilities,
    -- on_attach = on_attach,
    settings = {
        ["rust-analyzer"] = {
            -- assist = {
            --     importGranularity = "module",
            --     importPrefix = "by_self",
            -- },
            -- cargo = {
            --     loadOutDirsFromCheck = true
            -- },
            -- procMacro = {
            --     enable = true
            -- },
        }
    }
})
lsp.lua_ls.setup({
    on_init = function(client)
        local path = client.workspace_folders[1].name
        if vim.loop.fs_stat(path .. '/.luarc.json') or vim.loop.fs_stat(path .. '/.luarc.jsonc') then
            return
        end

        client.config.settings.Lua = vim.tbl_deep_extend('force', client.config.settings.Lua, {
            runtime = {
                -- Tell the language server which version of Lua you're using
                -- (most likely LuaJIT in the case of Neovim)
                version = 'LuaJIT'
            },
            -- Make the server aware of Neovim runtime files
            workspace = {
                checkThirdParty = false,
                library = {
                    vim.env.VIMRUNTIME
                    -- Depending on the usage, you might want to add additional paths here.
                    -- "${3rd}/luv/library"
                    -- "${3rd}/busted/library",
                }
                -- or pull in all of 'runtimepath'. NOTE: this is a lot slower
                -- library = vim.api.nvim_get_runtime_file("", true)
            }
        })
    end,
    settings = {
        Lua = {}
    }

})
lsp.ruff.setup {
    trace = 'messages',
    init_options = {
        settings = {
            logLevel = 'debug',
            lineLength = 120,
            args = {}
            -- args = {}
        }
    }
}

lsp.pyright.setup(default_opts)
-- lsp.pylsp.setup({
--     capabilities = capabilities,
--     settings = {
--         formatCommand = { "black" },
--         pylsp = {
--             plugins = {
--                 black = {
--                     enabled = true
--                 },
--                 pylint = {
--                     enabled = true,
--                     args = { '--disable=missing-function-docstring,missing-class-docstring,empty-docstring,invalid-name' }
--                 },
--                 pycodestyle = {
--                     enabled = false
--                 }
--                 -- pycodestyle = {
--                 --     ignore = {'W391'},
--                 --     maxLineLength = 100
--                 -- }
--             }
--         },
--     }
-- })
lsp.eslint.setup(default_opts)
lsp.bashls.setup(default_opts)

lsp.hls.setup {
    filetypes = { 'haskell', 'lhaskell', 'cabal' },
}

-- lsp.biome.setup{}

-- local capabilities = vim.lsp.protocol.make_client_capabilities()
-- capabilities.textDocument.completion.completionItem.snippetSupport = true

lsp.cssls.setup {
    cmd = { "vscode-css-languageserver", "--stdio" },
    capabilities = capabilities
}

lsp.volar.setup {}

-- lsp.yamlls.setup{}
-- lsp.ts_ls.setup {
-- }
