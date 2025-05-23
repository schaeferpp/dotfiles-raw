local lualine = require('lualine')
lualine.setup({
    options = {
        section_separators = { left = '', right = '' },
        component_separators = { left = '', right = ''},
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
        lualine_b = { 'filename' },
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
            }
        },
        lualine_x = {},
        lualine_y = {'filetype', 'encoding' },
        lualine_z = {
            'progress',
            {   'location', separator = { right = '' }, left_padding = 0 },
        },
    },
    tabline = {
        lualine_a = {'buffers'},
        lualine_b = {},
        lualine_c = { {'%=', separator = {left = ''}}, { 'filename', path = 1, separator = {left = ''} }},
        lualine_x = {},
        lualine_y = {'branch'},
        lualine_z = {}
    },
    winbar = {}
}
)
