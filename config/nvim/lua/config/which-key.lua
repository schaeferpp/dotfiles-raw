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

wk.add({
    {"<leader>q", "<cmd>bw<cr>", desc = "Close current buffer"},
    {"<leader>rn", "<cmd>lua vim.lsp.buf.rename()<CR>", desc = "LSP Rename"},
    {"<leader>gf", "<C-w>gf<cr>", desc = "Open File"},
    {"<leader>w", ":w !sudo -A tee %<CR>L<CR>", desc = "Save as root"},
    {"<leader>gf", ":e <cfile><CR>"},
    {"<leader>tt", "<cmd>lua require('lspsaga.symbol'):outline()<cr>", desc = "Open Outline"},
    {"<leader>c", group = "LSP" },
    {"<leader>ff", function() require("telescope.builtin").find_files() end, desc = "Open File browser"},
    {"<leader>ca", "<cmd>Lspsaga code_action<cr>", desc = "Open Code Action Menu"},
    {"<leader>cf", "<cmd>lua vim.lsp.buf.format { async = true }<cr>", desc = "Format source code"},
    {"<leader>cd", "<cmd>lua vim.lsp.buf.definition()<cr>", desc = "Goto definition"},
    {"<leader>cD", "<cmd>lua vim.lsp.buf.declaration()<cr>", desc = "Goto declaration"},
    {"<leader>ci", "<cmd>lua vim.lsp.buf.implementation()<cr>", desc = "Goto implementation"},
    {"<leader>cu", "<cmd>lua require('telescope.builtin').lsp_references()<CR>", desc = "View usages"},
    {"<leader>af", "<cmd>lua vim.lsp.buf.format { async = true }<CR>", desc = "Re-Format sources"},
    {"<leader>u", "<cmd>UndotreeToggle<CR>", desc = "Re-Format sources"},
    { "g", group = "Go" },
    { "gb", "<cmd>bnext<cr>", desc = "Next buffer"},
    { "gB", "<cmd>bNext<cr>", desc = "Previous buffer"},
    { "gd", "<cmd>lua vim.lsp.buf.definition()<cr>", desc = "Goto definition"},
    { "gD", "<cmd>lua vim.lsp.buf.declaration()<cr>", desc = "Goto declaration"},
    { "gi", "<cmd>lua vim.lsp.buf.implementation()<cr>", desc = "Goto implementation"},
    { "gk", "<cmd>lua vim.lsp.buf.signature_help()<CR>", desc = "Signature help"},
    { "gr", "<cmd>lua vim.lsp.buf.references()<CR>", desc = "References" },
    { "ge", "<cmd>lua vim.diagnostic.open_float()<CR>", desc = "Disgnostics float"},
    {"<C-K>", "<C-W>k", desc = "Move focus up"},
    {"<C-J>", "<C-W>j", desc = "Move focus down"},
    {"<C-H>", "<C-W>h", desc = "Move focus left"},
    {"<C-L>", "<C-W>l", desc = "Move focus right"},
    {"<Esc>", "<cmd>set nohls<cr>", desc = "Disable search highlighting"},
    {"/", "<cmd>set hls<cr>/", desc = "Search"},
    {"<C-K>", "<cmd>lua vim.lsp.buf.hover()<CR>", desc = "Show LSP documentation"},
    {"K", "<cmd>Lspsaga hover_doc<cr>", desc = "Hover float"}
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
