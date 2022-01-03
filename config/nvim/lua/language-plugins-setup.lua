require('crates').setup{}
local opts = {
    tools = { -- rust-tools options
        autoSetHints = true,
        hover_with_actions = true,
        inlay_hints = {
            show_parameter_hints = false,
            parameter_hints_prefix = "",
            other_hints_prefix = "",
        },
    },

    -- all the opts to send to nvim-lspconfig
    -- these override the defaults set by rust-tools.nvim
    -- see https://github.com/neovim/nvim-lspconfig/blob/master/CONFIG.md#rust_analyzer
    server = {
        -- on_attach is a callback called when the language server attachs to the buffer
        -- on_attach = on_attach,
        settings = {
            -- to enable rust-analyzer settings visit:
            -- https://github.com/rust-analyzer/rust-analyzer/blob/master/docs/user/generated_config.adoc
            ["rust-analyzer"] = {
                -- enable clippy on save
                checkOnSave = {
                    command = "clippy"
                },
            }
        }
    },
}

require('rust-tools').setup(opts)

require('telescope').setup{}
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

local function NearestMethodOrFunction()
    return vim.b.vista_nearest_method_or_function
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
        -- lualine_c = { 'NearestMethodOrFunction' },
        lualine_c = { NearestMethodOrFunction, 
            {
                'diagnostics',
                sources = { 'nvim_diagnostic' },
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
