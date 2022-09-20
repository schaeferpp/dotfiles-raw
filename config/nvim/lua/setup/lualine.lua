#! /usr/bin/env lua
--
-- lualine.lua
-- Copyright (C) 2022 Paul Schaefer <paul@realcyber.de>
--
-- Distributed under terms of the LGPL-3.0+ license.
--

local function NearestMethodOrFunction()
    return vim.b.vista_nearest_method_or_function
end


local lualine = require('lualine')
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
