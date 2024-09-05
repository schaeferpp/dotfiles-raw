return {
    { "kylechui/nvim-surround", opts = {} },
    { "tpope/vim-repeat",       opts = {}, config = function() end },
    -- { "tpope/vim-commentary", opts = {} },
    { "tpope/vim-dispatch",     opts = {}, config = function() end },
    { "tpope/vim-fugitive" },
    {
        "nvim-telescope/telescope-packer.nvim",
        dependencies = {
            "nvim-telescope/telescope.nvim"
        }
    },
    {
        "nvim-telescope/telescope.nvim",
        keys = {
            -- add a keymap to browse plugin files
            -- stylua: ignore
            {
                "<leader>ff",
                function()
                    require("telescope.builtin").find_files()
                end,
                desc = "Find Plugin File",
            },
        },
        -- change some options
        opts = {
            defaults = {
                layout_strategy = "horizontal",
                layout_config = { prompt_position = "top" },
                sorting_strategy = "ascending",
                winblend = 0,
            },
        },
    },
    {
        "williamboman/mason.nvim",
        opts = {
            ensure_installed = {
                "stylua",
                "shellcheck",
                "shfmt",
                "flake8",
            },
        },
    },
    {
        "neovim/nvim-lspconfig", -- REQUIRED: for native Neovim LSP integration
        lazy = false,            -- REQUIRED: tell lazy.nvim to start this plugin at startup
        dependencies = {
            -- main one
            { "ms-jpq/coq_nvim",       branch = "coq" },

            -- 9000+ Snippets
            { "ms-jpq/coq.artifacts",  branch = "artifacts" },

            -- lua & third party sources -- See https://github.com/ms-jpq/coq.thirdparty
            -- Need to **configure separately**
            { 'ms-jpq/coq.thirdparty', branch = "3p" },
            { "onsails/lspkind.nvim" }
            -- - shell repl
            -- - nvim lua api
            -- - scientific calculator
            -- - comment banner
            -- - etc
        },
        init = function()
            vim.g.coq_settings = {
                auto_start = "shut-up", -- if you want to start COQ at startup
                -- Your COQ settings here
            }
        end,
        config = function()
            -- Your LSP settings here
            local lsp_format = require('lsp-format')
            local lsp = require('lspconfig')
            local lspkind = require('lspkind')

            lsp_format.setup {}

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
            -- capabilities = require('cmp_nvim_lsp').default_capabilities(capabilities)
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
            -- lsp.pyright.setup(default_opts)
            lsp.pylsp.setup({
                capabilities = capabilities,
                settings = {
                    formatCommand = { "black" },
                    pylsp = {
                        plugins = {
                            black = {
                                enabled = true
                            },
                            pylint = {
                                enabled = true,
                                args = { '--disable=missing-function-docstring,missing-class-docstring,empty-docstring,invalid-name' }
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
            lsp.tsserver.setup {
                -- cmd={"tsserver", "--stdio"}
            }
        end,
    },
    {
        "rhysd/conflict-marker.vim"
    },
    {
        "vim-scripts/let-modeline.vim"
    },
    {
        "mhinz/vim-startify",
        dependencies = {
            'nvim-tree/nvim-web-devicons',
        },
        config = function()
            vim.cmd [[ let g:webdevicons_enable_startify = 1 ]]
        end
    },
    {
        "mhinz/vim-grepper",
        config = function()
            require("config.vim-grepper")
        end,
        keys = {
            { "<C-f>",     "<cmd>Grepper<CR>",       desc = "Grepper" },
            { "<Leader>m", "<cmd>echo \"test\"<CR>", desc = "Grepper" }
        }
    },
    {
        "nvimdev/lspsaga.nvim",
        config = function()
            require('lspsaga').setup({
                symbol_in_winbar = {
                    in_custom = false,
                    enable = true,
                    separator = ' ',
                    show_file = true,
                    -- define how to customize filename, eg: %:., %
                    -- if not set, use default value `%:t`
                    -- more information see `vim.fn.expand` or `expand`
                    -- ## only valid after set `show_file = true`
                    file_formatter = "",
                    click_support = false,
                },
                show_outline = {
                    jump_key = '<cr>'
                }
            })
        end,
        dependencies = {
            'nvim-treesitter/nvim-treesitter',                 -- optional
            'nvim-tree/nvim-web-devicons',                     -- optional
        }
    },
    {
        "nvim-lualine/lualine.nvim",
        dependencies = {
            'nvimdev/lspsaga.nvim',
            'nvim-tree/nvim-web-devicons'
        },
        config = function()
            require("config.lualine")
        end

    },
    {
        'simrat39/rust-tools.nvim',
        config = function()
            require("config.rust-tools")
        end,
        ft = { "rust" }
    },
    {
        "folke/which-key.nvim",
        config = function()
            require("config.which-key")
        end
    },
    {
        "lewis6991/gitsigns.nvim"
    },
    {
        "lukas-reineke/indent-blankline.nvim",
        config = function()
            require('ibl').setup()
        end
    },
    {
        "norcalli/nvim-colorizer.lua",
        opt = {}
    },
    {
        "nvim-lua/lsp-status.nvim",
        config = function()
            require('lsp-status').register_progress()
        end
    },
    {
        "lukas-reineke/lsp-format.nvim"
    },
    {
        "mbbill/undotree"
    },
    {
        "nvim-lua/popup.nvim"
    },
    {
        "nvim-lua/plenary.nvim"
    },
    {
        "saecki/crates.nvim",
        ft = { "toml" },
        dependencies = {
            "nvim-lua/plenary.nvim"
        }
    },
    {
        "RRethy/vim-illuminate"
    },
    {
        "aznhe21/actions-preview.nvim",
        config = function()
            vim.keymap.set({ "v", "n" }, "gf", require("actions-preview").code_actions)
        end,
    },
    {
        "stfl/meson.vim",
        ft = { "meson" },
    },
    {
        "fatih/vim-go",
        ft = { "go" },
    },
    {
        "lervag/vimtex",
        config = function()
            vim.cmd [[
                            let g:tex_flavor = 'latex'
                            let g:tex_conceal = ""
                            let g:vimtex_fold_enabled = 1
                            ]]
        end
    },
    {
        "cespare/vim-toml",
        ft = { "toml" },
    },
    {
        "plasticboy/vim-markdown",
        config = function()
            vim.cmd [[ let g:vim_markdown_conceal = 0 ]]
            vim.cmd [[ let g:vim_markdown_frontmatter = 1 ]]
        end
    },
    {
        "Valloric/MatchTagAlways"
    },
    {
        "leafOfTree/vim-vue-plugin",
        config = function()
            vim.cmd [[
                            let g:vim_vue_plugin_config = {
                                \'syntax': {
                                    \   'template': ['html'],
                                    \   'script': ['javascript', 'typescript'],
                                    \   'style': ['css'],
                                    \},
                                    \'full_syntax': [],
                                    \'initial_indent': [],
                                    \'attribute': 0,
                                    \'keyword': 0,
                                    \'foldexpr': 0,
                                    \'debug': 0,
                                    \}
                                    ]]
        end,
        ft = { "vue" }
    },
    {
        "HerringtonDarkholme/yats.vim",
        ft = { "typescript" }
    },
    {
        "jasonccox/vim-wayland-clipboard"
    },
    {
        "rhysd/vim-grammarous",
        cmd = { "GrammarousCheck" }
    },
    {
        "stevearc/dressing.nvim"
    },
    {
        "MDeiml/tree-sitter-markdown",
        dependencies = {
            "nvim-treesitter/nvim-treesitter"
        },
        ft = { "markdown" }
    },
}
