vim.g.mapleader = ","
vim.g.maplocalleader = "\\"

vim.opt.autoread = true
vim.opt.autowrite = true
vim.opt.autowriteall = true
vim.opt.background = "dark"
vim.opt.breakindent = true
vim.opt.clipboard = "unnamedplus"
vim.opt.colorcolumn = "100"
vim.opt.expandtab = true
vim.opt.formatoptions = "cqj"
vim.opt.history = 700
vim.opt.ignorecase = true
vim.opt.incsearch = true
vim.opt.laststatus = 2
vim.opt.linebreak = true
vim.opt.modeline = true
vim.opt.mouse = "a"
vim.opt.hlsearch = false
vim.opt.showmode = false
vim.opt.wrap = false  -- don't automatically wrap on load
vim.opt.number = true -- show line numbers
vim.opt.relativenumber = true
vim.opt.shiftwidth = 4
vim.opt.signcolumn = "yes"
vim.opt.showcmd = true
vim.opt.showtabline = 2
vim.opt.smartcase = true
vim.opt.termguicolors = true
vim.opt.textwidth = 100
vim.opt.visualbell = true
vim.opt.completeopt = "menu,menuone,noinsert,noselect"
vim.opt.shortmess = "ltToOCFc"
vim.opt.foldlevel = 5
vim.opt.spelllang = "en,de"
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.writebackup = false
vim.opt.undofile = true
vim.opt.updatetime = 300

vim.api.nvim_create_autocmd({ "FocusGained", "BufEnter" }, {
    pattern = "*",
    command = "checktime"
})

vim.api.nvim_create_autocmd({ "BufReadPost", "BufNewFile" }, {
    pattern = "*.md,*.txt,*.tex",
    command = "set fo+=t"
})

vim.api.nvim_create_autocmd({ "BufWritePre" }, {
    pattern = "*.rs",
    callback = function()
        vim.lsp.buf.format(nil, 200)
    end
})

require("config.lazy")

vim.api.nvim_create_autocmd({ "BufReadPost" }, {
    pattern = { "*" },
    callback = function()
        vim.cmd [[ silent! normal! g`"zv ]]
    end,
})
vim.cmd.colorscheme("everforest")
