local lualine = require('lualine')
lualine.setup({
    options = {
        -- section_separators = { left = '', right = '' },
        section_separators = '',
        -- component_separators = { left = '', right = ''},
        component_separators = '│',
        -- theme='gruvbox_dark',
        theme='everforest',
        refresh = {
            statusline = 1000,
            tabline = 1000,
            winbar = 1000,
        }
    },
    sections = {
        lualine_a = {
            { 'mode', separator = { left = '' }, right_padding = 0 },
        },
        lualine_b = {},
        lualine_c = {
            {
                'diagnostics',
                sources = { 'nvim_diagnostic' },
                symbols = { error = ' ', warn = ' ', info = ' ' },
                diagnostics_color = {
                    color_error = { fg = '#a89984' },
                    color_warn = { fg = '#a89984' },
                    color_info = { fg = '#a89984' },
                }
            },
            { 'filename', path = 1, separator = {left = ''}, symbols = '' }
        },
        lualine_x = {},
        lualine_y = {
            {
                'lsp_status',
                icon = '', -- f013
                symbols = {
                    -- Standard unicode symbols to cycle through for LSP progress:
                    spinner = { '⠋', '⠙', '⠹', '⠸', '⠼', '⠴', '⠦', '⠧', '⠇', '⠏' },
                    -- Standard unicode symbol for when LSP is done:
                    done = '✓',
                    -- Delimiter inserted between LSP names:
                    separator = ' ',
                },
                -- List of LSP names to ignore (e.g., `null-ls`):
                ignore_lsp = {},
            },
            'filetype'},
        lualine_z = {
            'progress',
            {   'location', separator = { right = '' }, left_padding = 0 },
        },
    },
    -- tabline = {
    --     lualine_a = {
    --         {
    --             'buffers',
    --             use_mode_colors = true,
    --         }
    --     },
    --     lualine_b = {},
    --     lualine_c = { {'%=', separator = {left = ''}}},
    --     lualine_x = {},
    --     lualine_y = {'branch'},
    --     lualine_z = {
    --         {
    --             'tabs',
    --             use_mode_colors = true,
    --             symbols = '',
    --         },
    --     }
    -- },
    winbar = {}
}
)
