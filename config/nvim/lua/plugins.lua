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

    use 'tpope/vim-surround'
    use 'tpope/vim-repeat' 
    use 'tpope/vim-commentary'
    use {
        'tpope/vim-dispatch',
        opt = true,
        cmd = {'Dispatch', 'Make', 'Focus', 'Start'}
    }

    use 'morhetz/gruvbox'
    use {
        'liuchengxu/vista.vim',
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
                require("indent_blankline").setup {
                    char = "|",
                    buftype_exclude = {"terminal"}
                }
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
            'nvim-lua/lsp-status.nvim',
            config = function() 
                require('lsp-status').register_progress()
            end
        }


        use 'neovim/nvim-lspconfig'
        use {
            'hrsh7th/nvim-Cmp',
            requires = {'nvim-lspconfig', 'nvim-lua/lsp-status.nvim'},
            config = function()
                require 'autocompletion'
            end
        }
        use 'hrsh7th/cmp-nvim-lsp'
        use 'hrsh7th/cmp-buffer'
        use 'hrsh7th/cmp-path'
        use 'hrsh7th/cmp-cmdline'
        use 'quangnguyen30192/cmp-nvim-ultisnips'
        use {
            'lukas-reineke/lsp-format.nvim',
            config = function()
                vim.cmd [[ nmap <leader>af :lua vim.lsp.buf.formatting_seq_sync()<CR> ]]
            end
        }

        use {
            'SirVer/ultisnips',
            config = function()
                vim.cmd [[let g:UltiSnipsExpandTrigger="<tab>"]]
                vim.cmd [[let g:UltiSnipsJumpForwardTrigger="<tab>"]]
                vim.cmd [[let g:UltiSnipsJumpBackwardTrigger="<s-tab>"]]
            end
        }
        use 'honza/vim-snippets'
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
                vim.cmd [[let g:license             = "LGPL-3.0+"]]
                vim.cmd [[let g:username            = "Paul Schaefer"]]
                vim.cmd [[let g:email               = "paul@realcyber.de"]]
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
                ]]
            end
        }

        use {
            'saecki/crates.nvim',
            opt = true,
            event = { "BufRead Cargo.toml" },
            requires = { 'nvim-lua/plenary.nvim' },
            config = function()
                require('crates').setup{}
                vim.api.nvim_create_autocmd("BufRead", {
                    group = vim.api.nvim_create_augroup("CmpSourceCargo", { clear = true }),
                    pattern = "Cargo.toml",
                    callback = function()
                        cmp.setup.buffer({ sources = { { name = "crates" } } })
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
                vim.cmd [[ let g:vim_vue_plugin_use_typescript = 1 ]]
                vim.cmd [[ let g:vim_vue_plugin_use_sass = 1 ]]
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

    end)
