#! /usr/bin/env lua
--
-- plugins.lua
-- Copyright (C) 2022 Paul Schaefer <paul@realcyber.de>
--
-- Distributed under terms of the LGPL-3.0+ license.
--

vim.cmd [[packadd packer.nvim]]

packer = require('packer')
packer.init {
    opt_default = false,
    display = {
        show_all_info = true,
        open_fn = require('packer.util').float,

    }
}

function get_setup(name)
    return string.format('require("setup/%s")', name)
end

local use = packer.use

packer.reset()


return packer.startup(function(use)
    use 'wbthomason/packer.nvim'

    use {
        'kylechui/nvim-surround',
        tag = "*",
        config = function()
        require("nvim-surround").setup({
            -- Configuration here, or leave empty to use defaults
        })
    end
    }

    use 'tpope/vim-repeat' 
    use 'tpope/vim-commentary'
    use {
        'tpope/vim-dispatch',
        opt = true,
        cmd = {'Dispatch', 'Make', 'Focus', 'Start'}
    }

    -- use 'morhetz/gruvbox'
    use 'rakr/vim-one'
    use 'rakr/vim-two-firewatch'
    use 'jacoborus/tender.vim'
    use {
        'sainnhe/everforest',
        config = function()
            vim.cmd [[ let g:everforest_enable_italic = 1 ]]
        end
    }

    use 'rhysd/conflict-marker.vim'

    use {
        'liuchengxu/vista.vim',
        ft = {'sh', 'zsh', 'bash', 'c', 'cpp', 'cmake', 'html', 'markdown', 'racket', 'vim'},
        config = function()
            vim.cmd [[let g:vista#renderer#enable_icon = 1]]
            vim.cmd 'let g:vista_icon_indent = ["╰─▸ ", "├─▸ "]'
            vim.cmd [[let g:vista_sidebar_width = 45]]
            vim.cmd [[nnoremap <Leader>t :Vista!!<CR>]]
            vim.cmd [[autocmd VimEnter * call vista#RunForNearestMethodOrFunction()]]
        end
    }

    use 'vim-scripts/let-modeline.vim'

    use {
        'mhinz/vim-startify',
        config = function()
            vim.cmd [[ let g:webdevicons_enable_startify = 1 ]]
        end
    }
    use {
        'mhinz/vim-grepper',
        config = function()
            vim.cmd [[
            let g:grepper = {
                \ 'tools': ['rg', 'pt', 'ag', 'git', 'grep'],
                \ 'open':  1,
                \ 'jump':  0,
                \ }
                ]]
                vim.cmd [[nnoremap <C-f> :Grepper<CR>]]
            end
        }


        use {
            'nvim-lualine/lualine.nvim',
            requires = { 'liuchengxu/vista.vim' },
            config = function() require('setup/lualine') end
        }

        use {
            'simrat39/rust-tools.nvim',
            opt = true,
            ft = {'rust'},
            config = function() require('setup/rust-tools') end
        }

        use {
            'nvim-telescope/telescope-packer.nvim',
        }
        -- Load on a combination of conditions: specific filetypes or commands
        -- Also run code after load (see the "config" key)
        use {
            'w0rp/ale',
            ft = {'sh', 'zsh', 'bash', 'c', 'cpp', 'cmake', 'html', 'markdown', 'racket', 'vim', 'tex'},
            cmd = 'ALEEnable',
            config = 'vim.cmd[[ALEEnable]]'
        }
        use {
            "folke/which-key.nvim",
            config = function() require('setup/which-key') end
        }

        use {
            'lewis6991/gitsigns.nvim',
            config = function() require('gitsigns').setup() end
        }
        use 'tpope/vim-fugitive'

        use {
            'lukas-reineke/indent-blankline.nvim',
            config = function() 
                ibl = require("ibl")
                ibl.setup { }
                ibl.config.scope.enabled = true
            end
        }

        use {
            'norcalli/nvim-colorizer.lua',
            config = function()
                require('colorizer').setup()
            end
        }
        use {
            'kyazdani42/nvim-web-devicons',
            config = function() 
                require("nvim-web-devicons").set_icon {
                    tex = {
                        icon = "﫳",
                        color = "#428850",
                        name = "Zsh"
                    }
                }
            end
        }

        use {
            'onsails/lspkind.nvim'
        }

        use {
            'nvim-lua/lsp-status.nvim',
            config = function() 
                require('lsp-status').register_progress()
            end
        }


        use 'neovim/nvim-lspconfig'
        use {
            'hrsh7th/nvim-Cmp',
            requires = {'nvim-lspconfig', 'nvim-lua/lsp-status.nvim', 'onsails/lspkind.nvim'},
            config = function()
                require 'autocompletion'
            end
        }
        use 'hrsh7th/cmp-nvim-lsp'
        use 'hrsh7th/cmp-buffer'
        use 'hrsh7th/cmp-path'
        use 'hrsh7th/cmp-cmdline'
        use {
            'lukas-reineke/lsp-format.nvim',
            config = function()
                vim.cmd [[ nmap <leader>af :lua vim.lsp.buf.format { async = true }<CR> ]]
            end
        }

        use {
            "L3MON4D3/LuaSnip",
            config = function()
                --  press <Tab> to expand or jump in a snippet. These can also be mapped separately
                -- via <Plug>luasnip-expand-snippet and <Plug>luasnip-jump-next.
                vim.cmd [[ imap <silent><expr> <Tab> luasnip#expand_or_jumpable() ? '<Plug>luasnip-expand-or-jump' : '<Tab>'  ]]
                vim.cmd [[ inoremap <silent> <C-cr> <cmd>lua require'luasnip'.jump(1)<Cr> ]]
                -- -- -1 for jumping backwards.
                vim.cmd [[ inoremap <silent> <S-Tab> <cmd>lua require'luasnip'.jump(-1)<Cr> ]]

                vim.cmd [[ snoremap <silent> <Tab> <cmd>lua require('luasnip').jump(1)<Cr> ]]
                vim.cmd [[ snoremap <silent> <S-Tab> <cmd>lua require('luasnip').jump(-1)<Cr> ]]

                -- -- For changing choices in choiceNodes (not strictly necessary for a basic setup).
                vim.cmd [[ imap <silent><expr> <C-E> luasnip#choice_active() ? '<Plug>luasnip-next-choice' : '<C-E>' ]]
                vim.cmd [[ smap <silent><expr> <C-E> luasnip#choice_active() ? '<Plug>luasnip-next-choice' : '<C-E>' ]]
            end
        } 

        -- use {
        --     'rafamadriz/friendly-snippets',
        --     requires = { 'L3MON4D3/LuaSnip' },
        --     config = function()
        --         require("luasnip.loaders.from_vscode").lazy_load()
        --     end
        -- }

        use {
            'honza/vim-snippets',
            requires = { 'L3MON4D3/LuaSnip' },
            config = function()
                require("luasnip.loaders.from_snipmate").lazy_load()
            end
        }
        use 'saadparwaiz1/cmp_luasnip'
        -- use 'quangnguyen30192/cmp-nvim-ultisnips'
        -- use {
        --     'SirVer/ultisnips',
        --     config = function()
        --         vim.cmd [[let g:UltiSnipsExpandTrigger="<tab>"]]
        --         vim.cmd [[let g:UltiSnipsJumpForwardTrigger="<tab>"]]
        --         vim.cmd [[let g:UltiSnipsJumpBackwardTrigger="<s-tab>"]]
        --     end
        -- }
        -- use 'honza/vim-snippets'
        use {
            'junegunn/vim-easy-align',
            config = function()
                vim.cmd [[nmap ga       <Plug>(EasyAlign)]]
                vim.cmd [[xmap ga       <Plug>(EasyAlign)]]
                vim.cmd [[xmap <Return> <Plug>(EasyAlign)]]
            end
        }

        use {
            'aperezdc/vim-template',
            config = function()
                vim.cmd [[let g:templates_directory = '~/.vim/templates']]
                vim.cmd [[let g:license             = "All rights reserved"]]
                vim.cmd [[let g:username            = "Paul Schaefer"]]
                vim.cmd [[let g:email               = "paul@os-s.de"]]
            end
        }


        use {
            'mbbill/undotree',
            config = function()
                vim.cmd [[nnoremap <Leader>u :UndotreeToggle<CR>]]
            end
        }

        use {
            'machakann/vim-highlightedyank',
            config = function()
                vim.cmd [[ let g:highlightedyank_highlight_duration = 150 ]]
            end
        }

        use {
            'nvim-lua/popup.nvim'
        }

        use {
            'nvim-lua/plenary.nvim'
        }
        use {
            'nvim-telescope/telescope.nvim',
            config = function()
                require('telescope').setup{}
                require("telescope").load_extension "file_browser"
            end
        }
        use {
            'nvim-telescope/telescope-file-browser.nvim',
            config = function()
                vim.cmd [[ nnoremap <leader>ff <cmd>Telescope find_files<cr>]]
                vim.cmd [[ nnoremap <leader>fg <cmd>Telescope live_grep<cr>]]
            end
        }

        use {
            'mfussenegger/nvim-dap'
        }

        use {
            'vimwiki/vimwiki',
            config = function()
                vim.cmd [[ 
                let g:vimwiki_list = [{'path': '~/vimwiki/',
                \ 'syntax': 'markdown', 'ext': '.md'}]
                let g:vimwiki_global_ext = 0
                ]]
            end
        }

        use {
            'saecki/crates.nvim',
            tag = 'v0.3.0',
            opt = false,
            -- event = { "BufRead Cargo.toml" },
            requires = { 'nvim-lua/plenary.nvim', 'hrsh7th/nvim-Cmp' },
            config = function()
                require('crates').setup{}
                vim.api.nvim_create_autocmd("BufRead", {
                    group = vim.api.nvim_create_augroup("CmpSourceCargo", { clear = true }),
                    pattern = "Cargo.toml",
                    callback = function()
                        require 'cmp'.setup.buffer({ sources = { { name = "crates" } } })
                    end,
                })
            end
        }

        use {
            'pest-parser/pest.vim'
        }

        use {
            'RRethy/vim-illuminate',
            config = function()
                require('setup/illuminate')
            end
        }

        use {
            'weilbith/nvim-code-action-menu',
            cmd = 'CodeActionMenu',
        }

        use {
            'vim-scripts/a.vim',
            opt = true,
            ft = {'c', 'cpp'},
            config = function()
                vim.cmd [[ nmap <leader>h :A<cr> ]]
            end
        }

        use {
            'chazy/cscope_maps',
            opt = true,
            ft = {'c', 'cpp'}
        }

        use {
            'stfl/meson.vim' ,
            opt = true,
            ft = {'meson'}
        }

        use {
            'neovimhaskell/haskell-vim',
            opt = true,
            ft = {'haskell'}
        }

        use {
            'fatih/vim-go',
            opt = true,
            ft = {'go'}
        }

        use {
            'lervag/vimtex',
            opt = true,
            ft = {"tex"},
            config = function()
                vim.cmd [[ let g:tex_flavor = 'latex' ]]
                vim.cmd [[ let g:tex_conceal="" ]]
                vim.cmd [[ let g:vimtex_fold_enabled=1 ]]
            end
        }

        use {
            'cespare/vim-toml',
            opt = true,
            ft = {'toml', 'ini'}
        }

        use {
            'plasticboy/vim-markdown',
            opt = true,
            ft = {'markdown'},
            config = function()
                vim.cmd [[ let g:vim_markdown_conceal = 0 ]]
                vim.cmd [[ let g:vim_markdown_frontmatter = 1 ]]
            end
        }

        use {
            'nelstrom/vim-markdown-folding',
            opt = true,
            ft = {'markdown'},
            config = function()
                vim.cmd [[ autocmd FileType markdown set foldexpr=NestedMarkdownFolds() ]]
            end
        }

        use {
            'Valloric/MatchTagAlways',
            opt = true,
            ft = {'xml', 'html', 'htmldjango'}
        }

        use {
            'mattn/emmet-vim',
            opt = true,
            ft = {'html', 'xml', 'htmldjango'}
        }

        use {
            'othree/html5.vim',
            opt = true,
            ft = {'xml', 'html', 'htmldjango'}
        }

        use {
            'tkztmk/vim-vala',
            opt = true,
            ft = {'vala'}
        }

        use {
            'vim-scripts/indentpython.vim',
            opt = true,
            ft = {'python'}
        }

        use {
            'tmhedberg/SimpylFold',
            opt = true,
            ft = {'python'}
        }

        use {
            'udalov/kotlin-vim',
            opt = true,
            ft = {'kotlin'},
        }

        use {
            'leafOfTree/vim-vue-plugin',
            opt = true,
            ft = {'vue'},
            config = function()
                -- vim.cmd [[ let g:vim_vue_plugin_use_typescript = 1 ]]
                -- vim.cmd [[ let g:vim_vue_plugin_use_sass = 1 ]]
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
            end
        }

        use {
            'pearofducks/ansible-vim',
            opt = true,
            ft = {'yaml'}
        }

        use {
            'HerringtonDarkholme/yats.vim',
            opt = true,
            ft = {'ts'}
        }

        use {
            'rhysd/vim-grammarous',
            opt = true,
            cmd = "GrammarousCheck"
        }

        use {
            'Chiel92/vim-autoformat',
            opt = true,
            ft = {'javascript', 'rust', 'c', 'cpp', 'objc', 'html', 'xml', 'vue'},
            config = function()
                vim.cmd "let g:formatters_javascript = ['eslint_local']"
                vim.cmd [[autocmd FileType javascript,c,cpp,objc,python,vue nnoremap <buffer><Leader>cf :<C-u>Autoformat<CR>]]
                vim.cmd [[autocmd FileType javascript,c,cpp,objc,python,vue vnoremap <buffer><Leader>cf :Autoformat<CR>]]
            end
        }

        use {
            'jasonccox/vim-wayland-clipboard'
        }

        use {
            'stevearc/dressing.nvim'
        }

        use {
            'ziontee113/icon-picker.nvim',
            opt = false,
            requires = { 'stevearc/dressing.nvim' },
            config = function()
                require('icon-picker').setup({
                    disable_lecagy_commands = true
                })
                local opts = { noremap = true, silent = true }

                vim.keymap.set("n", "<Leader><Leader>i", "<cmd>IconPickerNormal<cr>", opts)
                -- vim.keymap.set("n", "<Leader><Leader>y", "<cmd>IconPickerYank<cr>", opts) --> Yank the selected icon into register
                -- vim.keymap.set("i", "<C-i>", "<cmd>IconPickerInsert<cr>", opts)
            end
        }

        use 'nvim-treesitter/nvim-treesitter'

        use {
            'nvim-treesitter/nvim-treesitter-context',
            requires = { 'nvim-treesitter/nvim-treesitter' },
            config = function()
                require'treesitter-context'.setup{
                    enable = true, -- Enable this plugin (Can be enabled/disabled later via commands)
                    max_lines = 0, -- How many lines the window should span. Values <= 0 mean no limit.
                    min_window_height = 0, -- Minimum editor window height to enable context. Values <= 0 mean no limit.
                    line_numbers = true,
                    multiline_threshold = 20, -- Maximum number of lines to collapse for a single context line
                    trim_scope = 'outer', -- Which context lines to discard if `max_lines` is exceeded. Choices: 'inner', 'outer'
                    mode = 'cursor',  -- Line used to calculate context. Choices: 'cursor', 'topline'
                    -- Separator between context and content. Should be a single character string, like '-'.
                    -- When separator is set, the context will only show up when there are at least 2 lines above cursorline.
                    separator = nil,
                    zindex = 20, -- The Z-index of the context window
                    on_attach = nil, -- (fun(buf: integer): boolean) return false to disable attaching
                }
            end
        }

    end)
