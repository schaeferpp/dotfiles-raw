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
        "machakann/vim-highlightedyank",
        config = function()
            vim.g.highlightedyank_highlight_duration = 150
        end
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
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        cmd = { "Neotree" },
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
            "MunifTanjim/nui.nvim",
        },
        keys = {
            { "<leader>l", "<cmd>Neotree<CR>", desc = "Open file tree" },
        },
        opts = {
            close_if_last_window = true
        }
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
                ["keymap.jump_to_mark"]= '<C-t>m'
                -- Your COQ settings here
            }
        end,
        config = function()
            require("config.nvim-lspconfig")
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
        "nvim-lualine/lualine.nvim",
        dependencies = {
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
        "hedyhli/outline.nvim",
        lazy = true,
        cmd = { "Outline", "OutlineOpen" },
        keys = { -- Example mapping to toggle outline
            { "<leader>o", "<cmd>Outline<CR>", desc = "Toggle outline" },
        },
        opts = {
            -- Your setup opts here
        },
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
            vim.keymap.set({ "v", "n" }, "<leader>ca", require("actions-preview").code_actions)
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
