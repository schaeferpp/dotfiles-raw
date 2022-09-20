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
        show_all_info = true
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
        opt = false
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
        opt = false,
        config = function() require('setup/which-key') end
    }

    use {
        'lewis6991/gitsigns.nvim',
        config = function() require('gitsigns').setup() end
    }
    use {
        'lukas-reineke/indent-blankline.nvim',
        config = function() 
            require("indent_blankline").setup {
                char = "|",
                buftype_exclude = {"terminal"}
            }
        end
    }

    use 'norcalli/nvim-colorizer.lua'
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
        'hrsh7th/nvim-cmp',
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
    use 'lukas-reineke/lsp-format.nvim'


end)
