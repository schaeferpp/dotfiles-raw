#! /usr/bin/env lua
--
-- which-key.lua
-- Copyright (C) 2022 Paul Schaefer <paul@realcyber.de>
--
-- Distributed under terms of the LGPL-3.0+ license.
--

local wk = require("which-key")
wk.setup {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
}

wk.register({
    ["<leader>"] = {
        q = {"<cmd>bw<cr>", "Close current buffer"},
        rn = {"<cmd>lua vim.lsp.buf.rename()<CR>", "LSP Rename"},
        gf = {"<C-w>gf<cr>", "Open Code Action Menu"},
        w = {":w !sudo -A tee %<CR>L<CR>", "Save as root"},
        gf = {":e <cfile><CR>"},
        tt = {"<cmd>lua require('lspsaga.symbol'):outline()<cr>", "Open Outline"},
    },
    ["<leader>c"] = {
        a = {"<cmd>Lspsaga code_action<cr>", "Open Code Action Menu"},
        f = {"<cmd>lua vim.lsp.buf.format { async = true }<cr>", "Format source code"},
        d = {"<cmd>lua vim.lsp.buf.definition()<cr>", "Goto definition"},
        D = {"<cmd>lua vim.lsp.buf.declaration()<cr>", "Goto declaration"},
        i = {"<cmd>lua vim.lsp.buf.implementation()<cr>", "Goto implementation"},
        u = {"<cmd>lua require('telescope.builtin').lsp_references()<CR>", "View usages"}
    },
    g = {
        name = "Go",
        b = {"<cmd>bnext<cr>", "Next buffer"},
        B = {"<cmd>bNext<cr>", "Previous buffer"},
        d = {"<cmd>lua vim.lsp.buf.definition()<cr>", "Goto definition"},
        D = {"<cmd>lua vim.lsp.buf.declaration()<cr>", "Goto declaration"},
        i = {"<cmd>lua vim.lsp.buf.implementation()<cr>", "Goto implementation"},
        k = {"<cmd>lua vim.lsp.buf.signature_help()<CR>", "Signature help"},
        r = {"<cmd>lua vim.lsp.buf.references()<CR>", "References" },
        e = {"<cmd>lua vim.diagnostic.open_float()<CR>", "Disgnostics float"},
    },
    ["<C-K>"] = {"<C-W>k", "Move focus up"},
    ["<C-J>"] = {"<C-W>j", "Move focus down"},
    ["<C-H>"] = {"<C-W>h", "Move focus left"},
    ["<C-L>"] = {"<C-W>l", "Move focus right"},
    ["<Esc>"] = {"<cmd>set nohls<cr>", "Disable search highlighting"},
    ["/"] = {"<cmd>set hls<cr>/", "Search"},
    ["<C-K>"] = {"<cmd>lua vim.lsp.buf.hover()<CR>", "Show LSP documentation"},
    K = {"<cmd>Lspsaga hover_doc<cr>", "Hover float"}
})

vim.cmd [[ nnoremap ; :]]

-- " Map Misc. Keys
-- nnoremap ,q :bw<CR>
-- nnoremap gb :bnext<CR>
-- nnoremap gB   :bprevious<CR>
-- nnoremap ; :
-- nnoremap <leader>o <C-w>gf
-- nnoremap <Leader>gf <C-w>gf
-- nnoremap <C-J> <C-W>j
-- nnoremap <C-K> <C-W>k
-- nnoremap <C-H> <C-W>h
-- nnoremap <C-l> <C-W>l
-- nnoremap <Esc> :set nohls<cr>
-- nnoremap <Leader>w :w !sudo -A tee %<CR>L<CR>
-- nnoremap <leader>ca :CodeActionMenu<CR>
-- nnoremap / :set hls<CR>/
--
-- nnoremap <silent><expr> <C-c> (&hls && v:hlsearch ? ':nohls' : ':set hls')."\n"
-- nnoremap <Leader><C-j> <C-j><C-_>
-- nnoremap <Leader><C-k> <C-k><C-_>
-- nnoremap <Leader><C-h> <C-h><C-_>
-- nnoremap <Leader><C-l> <C-l><C-_>
-- nnoremap <leader>rn <cmd>lua vim.lsp.buf.rename()<CR>
-- xnoremap <leader>ca <Cmd>lua vim.lsp.buf.range_code_action()<CR>
