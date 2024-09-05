-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

local time
local profile_info
local should_profile = false
if should_profile then
  local hrtime = vim.loop.hrtime
  profile_info = {}
  time = function(chunk, start)
    if start then
      profile_info[chunk] = hrtime()
    else
      profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
    end
  end
else
  time = function(chunk, start) end
end

local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/paul/.cache/nvim/packer_hererocks/2.1.1723675123/share/lua/5.1/?.lua;/home/paul/.cache/nvim/packer_hererocks/2.1.1723675123/share/lua/5.1/?/init.lua;/home/paul/.cache/nvim/packer_hererocks/2.1.1723675123/lib/luarocks/rocks-5.1/?.lua;/home/paul/.cache/nvim/packer_hererocks/2.1.1723675123/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/paul/.cache/nvim/packer_hererocks/2.1.1723675123/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  LuaSnip = {
    config = { "\27LJ\2\n´\5\0\0\3\0\t\0\0296\0\0\0009\0\1\0'\2\2\0B\0\2\0016\0\0\0009\0\1\0'\2\3\0B\0\2\0016\0\0\0009\0\1\0'\2\4\0B\0\2\0016\0\0\0009\0\1\0'\2\5\0B\0\2\0016\0\0\0009\0\1\0'\2\6\0B\0\2\0016\0\0\0009\0\1\0'\2\a\0B\0\2\0016\0\0\0009\0\1\0'\2\b\0B\0\2\1K\0\1\0` smap <silent><expr> <C-E> luasnip#choice_active() ? '<Plug>luasnip-next-choice' : '<C-E>' ` imap <silent><expr> <C-E> luasnip#choice_active() ? '<Plug>luasnip-next-choice' : '<C-E>' I snoremap <silent> <S-Tab> <cmd>lua require('luasnip').jump(-1)<Cr> F snoremap <silent> <Tab> <cmd>lua require('luasnip').jump(1)<Cr> G inoremap <silent> <S-Tab> <cmd>lua require'luasnip'.jump(-1)<Cr> E inoremap <silent> <C-cr> <cmd>lua require'luasnip'.jump(1)<Cr> i imap <silent><expr> <Tab> luasnip#expand_or_jumpable() ? '<Plug>luasnip-expand-or-jump' : '<Tab>'  \bcmd\bvim\0" },
    loaded = true,
    path = "/home/paul/.local/share/nvim/site/pack/packer/start/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  MatchTagAlways = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/paul/.local/share/nvim/site/pack/packer/opt/MatchTagAlways",
    url = "https://github.com/Valloric/MatchTagAlways"
  },
  SimpylFold = {
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/home/paul/.local/share/nvim/site/pack/packer/opt/SimpylFold",
    url = "https://github.com/tmhedberg/SimpylFold"
  },
  ["a.vim"] = {
    config = { "\27LJ\2\n;\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0\28 nmap <leader>h :A<cr> \bcmd\bvim\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/paul/.local/share/nvim/site/pack/packer/opt/a.vim",
    url = "https://github.com/vim-scripts/a.vim"
  },
  ["ansible-vim"] = {
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/home/paul/.local/share/nvim/site/pack/packer/opt/ansible-vim",
    url = "https://github.com/pearofducks/ansible-vim"
  },
  badwolf = {
    loaded = true,
    path = "/home/paul/.local/share/nvim/site/pack/packer/start/badwolf",
    url = "https://github.com/sjl/badwolf"
  },
  ["conflict-marker.vim"] = {
    loaded = true,
    path = "/home/paul/.local/share/nvim/site/pack/packer/start/conflict-marker.vim",
    url = "https://github.com/rhysd/conflict-marker.vim"
  },
  ["coq.artifacts"] = {
    loaded = true,
    path = "/home/paul/.local/share/nvim/site/pack/packer/start/coq.artifacts",
    url = "https://github.com/ms-jpq/coq.artifacts"
  },
  ["coq.thirdparty"] = {
    loaded = true,
    path = "/home/paul/.local/share/nvim/site/pack/packer/start/coq.thirdparty",
    url = "https://github.com/ms-jpq/coq.thirdparty"
  },
  coq_nvim = {
    loaded = true,
    path = "/home/paul/.local/share/nvim/site/pack/packer/start/coq_nvim",
    url = "https://github.com/ms-jpq/coq_nvim"
  },
  ["crates.nvim"] = {
    config = { "\27LJ\2\n8\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\vcrates\frequire\0" },
    loaded = true,
    path = "/home/paul/.local/share/nvim/site/pack/packer/start/crates.nvim",
    url = "https://github.com/saecki/crates.nvim"
  },
  ["dressing.nvim"] = {
    loaded = true,
    path = "/home/paul/.local/share/nvim/site/pack/packer/start/dressing.nvim",
    url = "https://github.com/stevearc/dressing.nvim"
  },
  everforest = {
    config = { "\27LJ\2\nH\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0) let g:everforest_enable_italic = 1 \bcmd\bvim\0" },
    loaded = true,
    path = "/home/paul/.local/share/nvim/site/pack/packer/start/everforest",
    url = "https://github.com/sainnhe/everforest"
  },
  ["gitsigns.nvim"] = {
    config = { "\27LJ\2\n6\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\rgitsigns\frequire\0" },
    loaded = true,
    path = "/home/paul/.local/share/nvim/site/pack/packer/start/gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  gruvbox = {
    loaded = true,
    path = "/home/paul/.local/share/nvim/site/pack/packer/start/gruvbox",
    url = "https://github.com/morhetz/gruvbox"
  },
  ["haskell-vim"] = {
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/home/paul/.local/share/nvim/site/pack/packer/opt/haskell-vim",
    url = "https://github.com/neovimhaskell/haskell-vim"
  },
  ["icon-picker.nvim"] = {
    config = { "\27LJ\2\nŒ\1\0\0\a\0\v\0\0166\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\0015\0\4\0006\1\5\0009\1\6\0019\1\a\1'\3\b\0'\4\t\0'\5\n\0\18\6\0\0B\1\5\1K\0\1\0\30<cmd>IconPickerNormal<cr>\22<Leader><Leader>i\6n\bset\vkeymap\bvim\1\0\2\fnoremap\2\vsilent\2\1\0\1\28disable_lecagy_commands\2\nsetup\16icon-picker\frequire\0" },
    loaded = true,
    path = "/home/paul/.local/share/nvim/site/pack/packer/start/icon-picker.nvim",
    url = "https://github.com/ziontee113/icon-picker.nvim"
  },
  ["indent-blankline.nvim"] = {
    config = { "\27LJ\2\n9\0\0\3\0\3\0\b6\0\0\0'\2\1\0B\0\2\0027\0\1\0006\0\1\0009\0\2\0B\0\1\1K\0\1\0\nsetup\bibl\frequire\0" },
    loaded = true,
    path = "/home/paul/.local/share/nvim/site/pack/packer/start/indent-blankline.nvim",
    url = "https://github.com/lukas-reineke/indent-blankline.nvim"
  },
  ["indentpython.vim"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/paul/.local/share/nvim/site/pack/packer/opt/indentpython.vim",
    url = "https://github.com/vim-scripts/indentpython.vim"
  },
  ["kotlin-vim"] = {
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/home/paul/.local/share/nvim/site/pack/packer/opt/kotlin-vim",
    url = "https://github.com/udalov/kotlin-vim"
  },
  ["let-modeline.vim"] = {
    loaded = true,
    path = "/home/paul/.local/share/nvim/site/pack/packer/start/let-modeline.vim",
    url = "https://github.com/vim-scripts/let-modeline.vim"
  },
  ["lsp-format.nvim"] = {
    config = { "\27LJ\2\nb\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0C nmap <leader>af :lua vim.lsp.buf.format { async = true }<CR> \bcmd\bvim\0" },
    loaded = true,
    path = "/home/paul/.local/share/nvim/site/pack/packer/start/lsp-format.nvim",
    url = "https://github.com/lukas-reineke/lsp-format.nvim"
  },
  ["lsp-status.nvim"] = {
    config = { "\27LJ\2\nD\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\22register_progress\15lsp-status\frequire\0" },
    loaded = true,
    path = "/home/paul/.local/share/nvim/site/pack/packer/start/lsp-status.nvim",
    url = "https://github.com/nvim-lua/lsp-status.nvim"
  },
  ["lspkind.nvim"] = {
    loaded = true,
    path = "/home/paul/.local/share/nvim/site/pack/packer/start/lspkind.nvim",
    url = "https://github.com/onsails/lspkind.nvim"
  },
  ["lspsaga.nvim"] = {
    config = { "\27LJ\2\nÍ\1\0\0\4\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\2B\0\2\1K\0\1\0\17show_outline\1\0\1\rjump_key\t<cr>\21symbol_in_winbar\1\0\2\21symbol_in_winbar\0\17show_outline\0\1\0\6\14separator\tÔëä \venable\2\14in_custom\1\18click_support\1\19file_formatter\5\14show_file\2\nsetup\flspsaga\frequire\0" },
    loaded = true,
    path = "/home/paul/.local/share/nvim/site/pack/packer/start/lspsaga.nvim",
    url = "https://github.com/nvimdev/lspsaga.nvim"
  },
  ["lualine.nvim"] = {
    config = { "\27LJ\2\n-\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\18setup/lualine\frequire\0" },
    loaded = true,
    path = "/home/paul/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["meson.vim"] = {
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/home/paul/.local/share/nvim/site/pack/packer/opt/meson.vim",
    url = "https://github.com/stfl/meson.vim"
  },
  ["nvim-code-action-menu"] = {
    commands = { "CodeActionMenu" },
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/home/paul/.local/share/nvim/site/pack/packer/opt/nvim-code-action-menu",
    url = "https://github.com/weilbith/nvim-code-action-menu"
  },
  ["nvim-colorizer.lua"] = {
    config = { "\27LJ\2\n7\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\14colorizer\frequire\0" },
    loaded = true,
    path = "/home/paul/.local/share/nvim/site/pack/packer/start/nvim-colorizer.lua",
    url = "https://github.com/norcalli/nvim-colorizer.lua"
  },
  ["nvim-lspconfig"] = {
    config = { "\27LJ\2\nZ\0\0\2\0\4\0\0056\0\0\0009\0\1\0005\1\3\0=\1\2\0K\0\1\0\1\0\2\27keymap.manual_complete\n<C-.>\15auto_start\2\17coq_settings\6g\bvim\0" },
    loaded = true,
    path = "/home/paul/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-surround"] = {
    config = { "\27LJ\2\n?\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\18nvim-surround\frequire\0" },
    loaded = true,
    path = "/home/paul/.local/share/nvim/site/pack/packer/start/nvim-surround",
    url = "https://github.com/kylechui/nvim-surround"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/home/paul/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    config = { "\27LJ\2\n}\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\btex\1\0\1\btex\0\1\0\3\ncolor\f#428850\tname\bZsh\ticon\bÔ´≥\rset_icon\22nvim-web-devicons\frequire\0" },
    loaded = true,
    path = "/home/paul/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/paul/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/paul/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["popup.nvim"] = {
    loaded = true,
    path = "/home/paul/.local/share/nvim/site/pack/packer/start/popup.nvim",
    url = "https://github.com/nvim-lua/popup.nvim"
  },
  ["rust-tools.nvim"] = {
    config = { "\27LJ\2\n0\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\21setup/rust-tools\frequire\0" },
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/home/paul/.local/share/nvim/site/pack/packer/opt/rust-tools.nvim",
    url = "https://github.com/simrat39/rust-tools.nvim"
  },
  ["telescope-file-browser.nvim"] = {
    config = { "\27LJ\2\nò\1\0\0\3\0\4\0\t6\0\0\0009\0\1\0'\2\2\0B\0\2\0016\0\0\0009\0\1\0'\2\3\0B\0\2\1K\0\1\0006 nnoremap <leader>fg <cmd>Telescope live_grep<cr>7 nnoremap <leader>ff <cmd>Telescope find_files<cr>\bcmd\bvim\0" },
    loaded = true,
    path = "/home/paul/.local/share/nvim/site/pack/packer/start/telescope-file-browser.nvim",
    url = "https://github.com/nvim-telescope/telescope-file-browser.nvim"
  },
  ["telescope-packer.nvim"] = {
    loaded = true,
    path = "/home/paul/.local/share/nvim/site/pack/packer/start/telescope-packer.nvim",
    url = "https://github.com/nvim-telescope/telescope-packer.nvim"
  },
  ["telescope.nvim"] = {
    config = { "\27LJ\2\no\0\0\3\0\5\0\r6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\0016\0\0\0'\2\1\0B\0\2\0029\0\3\0'\2\4\0B\0\2\1K\0\1\0\17file_browser\19load_extension\nsetup\14telescope\frequire\0" },
    loaded = true,
    path = "/home/paul/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["tender.vim"] = {
    loaded = true,
    path = "/home/paul/.local/share/nvim/site/pack/packer/start/tender.vim",
    url = "https://github.com/jacoborus/tender.vim"
  },
  ["tree-sitter-markdown"] = {
    loaded = true,
    path = "/home/paul/.local/share/nvim/site/pack/packer/start/tree-sitter-markdown",
    url = "https://github.com/MDeiml/tree-sitter-markdown"
  },
  undotree = {
    config = { "\27LJ\2\nJ\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0+nnoremap <Leader>u :UndotreeToggle<CR>\bcmd\bvim\0" },
    loaded = true,
    path = "/home/paul/.local/share/nvim/site/pack/packer/start/undotree",
    url = "https://github.com/mbbill/undotree"
  },
  ["vim-autoformat"] = {
    config = { "\27LJ\2\n¯\2\0\0\3\0\6\0\0176\0\0\0009\0\1\0'\2\2\0B\0\2\0016\0\0\0009\0\1\0'\2\3\0B\0\2\0016\0\0\0009\0\1\0'\2\4\0B\0\2\0016\0\0\0009\0\1\0'\2\5\0B\0\2\1K\0\1\0bautocmd FileType javascript,c,cpp,objc,python,vue vnoremap <buffer><Leader>cf :Autoformat<CR>gautocmd FileType javascript,c,cpp,objc,python,vue nnoremap <buffer><Leader>cf :<C-u>Autoformat<CR>9let g:formatters_vue = ['eslint_local', 'stylelint']3let g:formatters_javascript = ['eslint_local']\bcmd\bvim\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/paul/.local/share/nvim/site/pack/packer/opt/vim-autoformat",
    url = "https://github.com/Chiel92/vim-autoformat"
  },
  ["vim-commentary"] = {
    loaded = true,
    path = "/home/paul/.local/share/nvim/site/pack/packer/start/vim-commentary",
    url = "https://github.com/tpope/vim-commentary"
  },
  ["vim-dispatch"] = {
    commands = { "Dispatch", "Make", "Focus", "Start" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/paul/.local/share/nvim/site/pack/packer/opt/vim-dispatch",
    url = "https://github.com/tpope/vim-dispatch"
  },
  ["vim-easy-align"] = {
    config = { "\27LJ\2\n£\1\0\0\3\0\5\0\r6\0\0\0009\0\1\0'\2\2\0B\0\2\0016\0\0\0009\0\1\0'\2\3\0B\0\2\0016\0\0\0009\0\1\0'\2\4\0B\0\2\1K\0\1\0$xmap <Return> <Plug>(EasyAlign)$xmap ga       <Plug>(EasyAlign)$nmap ga       <Plug>(EasyAlign)\bcmd\bvim\0" },
    loaded = true,
    path = "/home/paul/.local/share/nvim/site/pack/packer/start/vim-easy-align",
    url = "https://github.com/junegunn/vim-easy-align"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "/home/paul/.local/share/nvim/site/pack/packer/start/vim-fugitive",
    url = "https://github.com/tpope/vim-fugitive"
  },
  ["vim-go"] = {
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/home/paul/.local/share/nvim/site/pack/packer/opt/vim-go",
    url = "https://github.com/fatih/vim-go"
  },
  ["vim-grammarous"] = {
    commands = { "GrammarousCheck" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/paul/.local/share/nvim/site/pack/packer/opt/vim-grammarous",
    url = "https://github.com/rhysd/vim-grammarous"
  },
  ["vim-grepper"] = {
    config = { "\27LJ\2\nç\2\0\0\3\0\4\0\t6\0\0\0009\0\1\0'\2\2\0B\0\2\0016\0\0\0009\0\1\0'\2\3\0B\0\2\1K\0\1\0 nnoremap <C-f> :Grepper<CR>¡\1            let g:grepper = {\n                \\ 'tools': ['rg', 'pt', 'ag', 'git', 'grep'],\n                \\ 'open':  1,\n                \\ 'jump':  0,\n                \\ }\n                \bcmd\bvim\0" },
    loaded = true,
    path = "/home/paul/.local/share/nvim/site/pack/packer/start/vim-grepper",
    url = "https://github.com/mhinz/vim-grepper"
  },
  ["vim-highlightedyank"] = {
    config = { "\27LJ\2\nT\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0005 let g:highlightedyank_highlight_duration = 150 \bcmd\bvim\0" },
    loaded = true,
    path = "/home/paul/.local/share/nvim/site/pack/packer/start/vim-highlightedyank",
    url = "https://github.com/machakann/vim-highlightedyank"
  },
  ["vim-illuminate"] = {
    config = { "\27LJ\2\n0\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\21setup/illuminate\frequire\0" },
    loaded = true,
    path = "/home/paul/.local/share/nvim/site/pack/packer/start/vim-illuminate",
    url = "https://github.com/RRethy/vim-illuminate"
  },
  ["vim-markdown"] = {
    config = { "\27LJ\2\ny\0\0\3\0\4\0\t6\0\0\0009\0\1\0'\2\2\0B\0\2\0016\0\0\0009\0\1\0'\2\3\0B\0\2\1K\0\1\0) let g:vim_markdown_frontmatter = 1 % let g:vim_markdown_conceal = 0 \bcmd\bvim\0" },
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/home/paul/.local/share/nvim/site/pack/packer/opt/vim-markdown",
    url = "https://github.com/plasticboy/vim-markdown"
  },
  ["vim-one"] = {
    loaded = true,
    path = "/home/paul/.local/share/nvim/site/pack/packer/start/vim-one",
    url = "https://github.com/rakr/vim-one"
  },
  ["vim-repeat"] = {
    loaded = true,
    path = "/home/paul/.local/share/nvim/site/pack/packer/start/vim-repeat",
    url = "https://github.com/tpope/vim-repeat"
  },
  ["vim-snippets"] = {
    config = { "\27LJ\2\nO\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\14lazy_load\"luasnip.loaders.from_snipmate\frequire\0" },
    loaded = true,
    path = "/home/paul/.local/share/nvim/site/pack/packer/start/vim-snippets",
    url = "https://github.com/honza/vim-snippets"
  },
  ["vim-startify"] = {
    config = { "\27LJ\2\nK\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0, let g:webdevicons_enable_startify = 1 \bcmd\bvim\0" },
    loaded = true,
    path = "/home/paul/.local/share/nvim/site/pack/packer/start/vim-startify",
    url = "https://github.com/mhinz/vim-startify"
  },
  ["vim-template"] = {
    config = { "\27LJ\2\nê\2\0\0\3\0\6\0\0176\0\0\0009\0\1\0'\2\2\0B\0\2\0016\0\0\0009\0\1\0'\2\3\0B\0\2\0016\0\0\0009\0\1\0'\2\4\0B\0\2\0016\0\0\0009\0\1\0'\2\5\0B\0\2\1K\0\1\0004let g:email               = \"paul@realcyber.de\"0let g:username            = \"Paul Schaefer\"6let g:license             = \"All rights reserved\"3let g:templates_directory = '~/.vim/templates'\bcmd\bvim\0" },
    loaded = true,
    path = "/home/paul/.local/share/nvim/site/pack/packer/start/vim-template",
    url = "https://github.com/aperezdc/vim-template"
  },
  ["vim-toml"] = {
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/home/paul/.local/share/nvim/site/pack/packer/opt/vim-toml",
    url = "https://github.com/cespare/vim-toml"
  },
  ["vim-two-firewatch"] = {
    loaded = true,
    path = "/home/paul/.local/share/nvim/site/pack/packer/start/vim-two-firewatch",
    url = "https://github.com/rakr/vim-two-firewatch"
  },
  ["vim-vala"] = {
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/home/paul/.local/share/nvim/site/pack/packer/opt/vim-vala",
    url = "https://github.com/tkztmk/vim-vala"
  },
  ["vim-vue-plugin"] = {
    config = { "\27LJ\2\n˙\4\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0⁄\4                    let g:vim_vue_plugin_config = { \n                          \\'syntax': {\n                          \\   'template': ['html'],\n                          \\   'script': ['javascript', 'typescript'],\n                          \\   'style': ['css'],\n                          \\},\n                          \\'full_syntax': [],\n                          \\'initial_indent': [],\n                          \\'attribute': 0,\n                          \\'keyword': 0,\n                          \\'foldexpr': 0,\n                          \\'debug': 0,\n                          \\}\n                \bcmd\bvim\0" },
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/home/paul/.local/share/nvim/site/pack/packer/opt/vim-vue-plugin",
    url = "https://github.com/leafOfTree/vim-vue-plugin"
  },
  ["vim-wayland-clipboard"] = {
    loaded = true,
    path = "/home/paul/.local/share/nvim/site/pack/packer/start/vim-wayland-clipboard",
    url = "https://github.com/jasonccox/vim-wayland-clipboard"
  },
  vimtex = {
    config = { "\27LJ\2\nï\1\0\0\3\0\5\0\r6\0\0\0009\0\1\0'\2\2\0B\0\2\0016\0\0\0009\0\1\0'\2\3\0B\0\2\0016\0\0\0009\0\1\0'\2\4\0B\0\2\1K\0\1\0\" let g:vimtex_fold_enabled=1 \27 let g:tex_conceal=\"\" ! let g:tex_flavor = 'latex' \bcmd\bvim\0" },
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/home/paul/.local/share/nvim/site/pack/packer/opt/vimtex",
    url = "https://github.com/lervag/vimtex"
  },
  ["which-key.nvim"] = {
    config = { "\27LJ\2\n/\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\20setup/which-key\frequire\0" },
    loaded = true,
    path = "/home/paul/.local/share/nvim/site/pack/packer/start/which-key.nvim",
    url = "https://github.com/folke/which-key.nvim"
  },
  ["yats.vim"] = {
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/home/paul/.local/share/nvim/site/pack/packer/opt/yats.vim",
    url = "https://github.com/HerringtonDarkholme/yats.vim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: lspsaga.nvim
time([[Config for lspsaga.nvim]], true)
try_loadstring("\27LJ\2\nÍ\1\0\0\4\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\2B\0\2\1K\0\1\0\17show_outline\1\0\1\rjump_key\t<cr>\21symbol_in_winbar\1\0\2\21symbol_in_winbar\0\17show_outline\0\1\0\6\14separator\tÔëä \venable\2\14in_custom\1\18click_support\1\19file_formatter\5\14show_file\2\nsetup\flspsaga\frequire\0", "config", "lspsaga.nvim")
time([[Config for lspsaga.nvim]], false)
-- Config for: nvim-surround
time([[Config for nvim-surround]], true)
try_loadstring("\27LJ\2\n?\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\18nvim-surround\frequire\0", "config", "nvim-surround")
time([[Config for nvim-surround]], false)
-- Config for: icon-picker.nvim
time([[Config for icon-picker.nvim]], true)
try_loadstring("\27LJ\2\nŒ\1\0\0\a\0\v\0\0166\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\0015\0\4\0006\1\5\0009\1\6\0019\1\a\1'\3\b\0'\4\t\0'\5\n\0\18\6\0\0B\1\5\1K\0\1\0\30<cmd>IconPickerNormal<cr>\22<Leader><Leader>i\6n\bset\vkeymap\bvim\1\0\2\fnoremap\2\vsilent\2\1\0\1\28disable_lecagy_commands\2\nsetup\16icon-picker\frequire\0", "config", "icon-picker.nvim")
time([[Config for icon-picker.nvim]], false)
-- Config for: indent-blankline.nvim
time([[Config for indent-blankline.nvim]], true)
try_loadstring("\27LJ\2\n9\0\0\3\0\3\0\b6\0\0\0'\2\1\0B\0\2\0027\0\1\0006\0\1\0009\0\2\0B\0\1\1K\0\1\0\nsetup\bibl\frequire\0", "config", "indent-blankline.nvim")
time([[Config for indent-blankline.nvim]], false)
-- Config for: vim-easy-align
time([[Config for vim-easy-align]], true)
try_loadstring("\27LJ\2\n£\1\0\0\3\0\5\0\r6\0\0\0009\0\1\0'\2\2\0B\0\2\0016\0\0\0009\0\1\0'\2\3\0B\0\2\0016\0\0\0009\0\1\0'\2\4\0B\0\2\1K\0\1\0$xmap <Return> <Plug>(EasyAlign)$xmap ga       <Plug>(EasyAlign)$nmap ga       <Plug>(EasyAlign)\bcmd\bvim\0", "config", "vim-easy-align")
time([[Config for vim-easy-align]], false)
-- Config for: telescope-file-browser.nvim
time([[Config for telescope-file-browser.nvim]], true)
try_loadstring("\27LJ\2\nò\1\0\0\3\0\4\0\t6\0\0\0009\0\1\0'\2\2\0B\0\2\0016\0\0\0009\0\1\0'\2\3\0B\0\2\1K\0\1\0006 nnoremap <leader>fg <cmd>Telescope live_grep<cr>7 nnoremap <leader>ff <cmd>Telescope find_files<cr>\bcmd\bvim\0", "config", "telescope-file-browser.nvim")
time([[Config for telescope-file-browser.nvim]], false)
-- Config for: vim-snippets
time([[Config for vim-snippets]], true)
try_loadstring("\27LJ\2\nO\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\14lazy_load\"luasnip.loaders.from_snipmate\frequire\0", "config", "vim-snippets")
time([[Config for vim-snippets]], false)
-- Config for: nvim-colorizer.lua
time([[Config for nvim-colorizer.lua]], true)
try_loadstring("\27LJ\2\n7\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\14colorizer\frequire\0", "config", "nvim-colorizer.lua")
time([[Config for nvim-colorizer.lua]], false)
-- Config for: crates.nvim
time([[Config for crates.nvim]], true)
try_loadstring("\27LJ\2\n8\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\vcrates\frequire\0", "config", "crates.nvim")
time([[Config for crates.nvim]], false)
-- Config for: vim-startify
time([[Config for vim-startify]], true)
try_loadstring("\27LJ\2\nK\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0, let g:webdevicons_enable_startify = 1 \bcmd\bvim\0", "config", "vim-startify")
time([[Config for vim-startify]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
try_loadstring("\27LJ\2\no\0\0\3\0\5\0\r6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\0016\0\0\0'\2\1\0B\0\2\0029\0\3\0'\2\4\0B\0\2\1K\0\1\0\17file_browser\19load_extension\nsetup\14telescope\frequire\0", "config", "telescope.nvim")
time([[Config for telescope.nvim]], false)
-- Config for: nvim-lspconfig
time([[Config for nvim-lspconfig]], true)
try_loadstring("\27LJ\2\nZ\0\0\2\0\4\0\0056\0\0\0009\0\1\0005\1\3\0=\1\2\0K\0\1\0\1\0\2\27keymap.manual_complete\n<C-.>\15auto_start\2\17coq_settings\6g\bvim\0", "config", "nvim-lspconfig")
time([[Config for nvim-lspconfig]], false)
-- Config for: vim-grepper
time([[Config for vim-grepper]], true)
try_loadstring("\27LJ\2\nç\2\0\0\3\0\4\0\t6\0\0\0009\0\1\0'\2\2\0B\0\2\0016\0\0\0009\0\1\0'\2\3\0B\0\2\1K\0\1\0 nnoremap <C-f> :Grepper<CR>¡\1            let g:grepper = {\n                \\ 'tools': ['rg', 'pt', 'ag', 'git', 'grep'],\n                \\ 'open':  1,\n                \\ 'jump':  0,\n                \\ }\n                \bcmd\bvim\0", "config", "vim-grepper")
time([[Config for vim-grepper]], false)
-- Config for: vim-template
time([[Config for vim-template]], true)
try_loadstring("\27LJ\2\nê\2\0\0\3\0\6\0\0176\0\0\0009\0\1\0'\2\2\0B\0\2\0016\0\0\0009\0\1\0'\2\3\0B\0\2\0016\0\0\0009\0\1\0'\2\4\0B\0\2\0016\0\0\0009\0\1\0'\2\5\0B\0\2\1K\0\1\0004let g:email               = \"paul@realcyber.de\"0let g:username            = \"Paul Schaefer\"6let g:license             = \"All rights reserved\"3let g:templates_directory = '~/.vim/templates'\bcmd\bvim\0", "config", "vim-template")
time([[Config for vim-template]], false)
-- Config for: lsp-format.nvim
time([[Config for lsp-format.nvim]], true)
try_loadstring("\27LJ\2\nb\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0C nmap <leader>af :lua vim.lsp.buf.format { async = true }<CR> \bcmd\bvim\0", "config", "lsp-format.nvim")
time([[Config for lsp-format.nvim]], false)
-- Config for: everforest
time([[Config for everforest]], true)
try_loadstring("\27LJ\2\nH\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0) let g:everforest_enable_italic = 1 \bcmd\bvim\0", "config", "everforest")
time([[Config for everforest]], false)
-- Config for: which-key.nvim
time([[Config for which-key.nvim]], true)
try_loadstring("\27LJ\2\n/\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\20setup/which-key\frequire\0", "config", "which-key.nvim")
time([[Config for which-key.nvim]], false)
-- Config for: lualine.nvim
time([[Config for lualine.nvim]], true)
try_loadstring("\27LJ\2\n-\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\18setup/lualine\frequire\0", "config", "lualine.nvim")
time([[Config for lualine.nvim]], false)
-- Config for: lsp-status.nvim
time([[Config for lsp-status.nvim]], true)
try_loadstring("\27LJ\2\nD\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\22register_progress\15lsp-status\frequire\0", "config", "lsp-status.nvim")
time([[Config for lsp-status.nvim]], false)
-- Config for: gitsigns.nvim
time([[Config for gitsigns.nvim]], true)
try_loadstring("\27LJ\2\n6\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\rgitsigns\frequire\0", "config", "gitsigns.nvim")
time([[Config for gitsigns.nvim]], false)
-- Config for: LuaSnip
time([[Config for LuaSnip]], true)
try_loadstring("\27LJ\2\n´\5\0\0\3\0\t\0\0296\0\0\0009\0\1\0'\2\2\0B\0\2\0016\0\0\0009\0\1\0'\2\3\0B\0\2\0016\0\0\0009\0\1\0'\2\4\0B\0\2\0016\0\0\0009\0\1\0'\2\5\0B\0\2\0016\0\0\0009\0\1\0'\2\6\0B\0\2\0016\0\0\0009\0\1\0'\2\a\0B\0\2\0016\0\0\0009\0\1\0'\2\b\0B\0\2\1K\0\1\0` smap <silent><expr> <C-E> luasnip#choice_active() ? '<Plug>luasnip-next-choice' : '<C-E>' ` imap <silent><expr> <C-E> luasnip#choice_active() ? '<Plug>luasnip-next-choice' : '<C-E>' I snoremap <silent> <S-Tab> <cmd>lua require('luasnip').jump(-1)<Cr> F snoremap <silent> <Tab> <cmd>lua require('luasnip').jump(1)<Cr> G inoremap <silent> <S-Tab> <cmd>lua require'luasnip'.jump(-1)<Cr> E inoremap <silent> <C-cr> <cmd>lua require'luasnip'.jump(1)<Cr> i imap <silent><expr> <Tab> luasnip#expand_or_jumpable() ? '<Plug>luasnip-expand-or-jump' : '<Tab>'  \bcmd\bvim\0", "config", "LuaSnip")
time([[Config for LuaSnip]], false)
-- Config for: undotree
time([[Config for undotree]], true)
try_loadstring("\27LJ\2\nJ\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0+nnoremap <Leader>u :UndotreeToggle<CR>\bcmd\bvim\0", "config", "undotree")
time([[Config for undotree]], false)
-- Config for: nvim-web-devicons
time([[Config for nvim-web-devicons]], true)
try_loadstring("\27LJ\2\n}\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\btex\1\0\1\btex\0\1\0\3\ncolor\f#428850\tname\bZsh\ticon\bÔ´≥\rset_icon\22nvim-web-devicons\frequire\0", "config", "nvim-web-devicons")
time([[Config for nvim-web-devicons]], false)
-- Config for: vim-illuminate
time([[Config for vim-illuminate]], true)
try_loadstring("\27LJ\2\n0\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\21setup/illuminate\frequire\0", "config", "vim-illuminate")
time([[Config for vim-illuminate]], false)
-- Config for: vim-highlightedyank
time([[Config for vim-highlightedyank]], true)
try_loadstring("\27LJ\2\nT\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0005 let g:highlightedyank_highlight_duration = 150 \bcmd\bvim\0", "config", "vim-highlightedyank")
time([[Config for vim-highlightedyank]], false)

-- Command lazy-loads
time([[Defining lazy-load commands]], true)
pcall(vim.api.nvim_create_user_command, 'Dispatch', function(cmdargs)
          require('packer.load')({'vim-dispatch'}, { cmd = 'Dispatch', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'vim-dispatch'}, {}, _G.packer_plugins)
          return vim.fn.getcompletion('Dispatch ', 'cmdline')
      end})
pcall(vim.api.nvim_create_user_command, 'Make', function(cmdargs)
          require('packer.load')({'vim-dispatch'}, { cmd = 'Make', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'vim-dispatch'}, {}, _G.packer_plugins)
          return vim.fn.getcompletion('Make ', 'cmdline')
      end})
pcall(vim.api.nvim_create_user_command, 'Focus', function(cmdargs)
          require('packer.load')({'vim-dispatch'}, { cmd = 'Focus', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'vim-dispatch'}, {}, _G.packer_plugins)
          return vim.fn.getcompletion('Focus ', 'cmdline')
      end})
pcall(vim.api.nvim_create_user_command, 'Start', function(cmdargs)
          require('packer.load')({'vim-dispatch'}, { cmd = 'Start', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'vim-dispatch'}, {}, _G.packer_plugins)
          return vim.fn.getcompletion('Start ', 'cmdline')
      end})
pcall(vim.api.nvim_create_user_command, 'GrammarousCheck', function(cmdargs)
          require('packer.load')({'vim-grammarous'}, { cmd = 'GrammarousCheck', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'vim-grammarous'}, {}, _G.packer_plugins)
          return vim.fn.getcompletion('GrammarousCheck ', 'cmdline')
      end})
pcall(vim.api.nvim_create_user_command, 'CodeActionMenu', function(cmdargs)
          require('packer.load')({'nvim-code-action-menu'}, { cmd = 'CodeActionMenu', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'nvim-code-action-menu'}, {}, _G.packer_plugins)
          return vim.fn.getcompletion('CodeActionMenu ', 'cmdline')
      end})
time([[Defining lazy-load commands]], false)

vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Filetype lazy-loads
time([[Defining lazy-load filetype autocommands]], true)
vim.cmd [[au FileType cpp ++once lua require("packer.load")({'vim-autoformat', 'a.vim'}, { ft = "cpp" }, _G.packer_plugins)]]
vim.cmd [[au FileType yaml ++once lua require("packer.load")({'ansible-vim'}, { ft = "yaml" }, _G.packer_plugins)]]
vim.cmd [[au FileType meson ++once lua require("packer.load")({'meson.vim'}, { ft = "meson" }, _G.packer_plugins)]]
vim.cmd [[au FileType haskell ++once lua require("packer.load")({'haskell-vim'}, { ft = "haskell" }, _G.packer_plugins)]]
vim.cmd [[au FileType javascript ++once lua require("packer.load")({'vim-autoformat'}, { ft = "javascript" }, _G.packer_plugins)]]
vim.cmd [[au FileType objc ++once lua require("packer.load")({'vim-autoformat'}, { ft = "objc" }, _G.packer_plugins)]]
vim.cmd [[au FileType c ++once lua require("packer.load")({'vim-autoformat', 'a.vim'}, { ft = "c" }, _G.packer_plugins)]]
vim.cmd [[au FileType toml ++once lua require("packer.load")({'vim-toml'}, { ft = "toml" }, _G.packer_plugins)]]
vim.cmd [[au FileType ini ++once lua require("packer.load")({'vim-toml'}, { ft = "ini" }, _G.packer_plugins)]]
vim.cmd [[au FileType go ++once lua require("packer.load")({'vim-go'}, { ft = "go" }, _G.packer_plugins)]]
vim.cmd [[au FileType rust ++once lua require("packer.load")({'vim-autoformat', 'rust-tools.nvim'}, { ft = "rust" }, _G.packer_plugins)]]
vim.cmd [[au FileType xml ++once lua require("packer.load")({'vim-autoformat', 'MatchTagAlways'}, { ft = "xml" }, _G.packer_plugins)]]
vim.cmd [[au FileType html ++once lua require("packer.load")({'vim-autoformat', 'MatchTagAlways'}, { ft = "html" }, _G.packer_plugins)]]
vim.cmd [[au FileType htmldjango ++once lua require("packer.load")({'MatchTagAlways'}, { ft = "htmldjango" }, _G.packer_plugins)]]
vim.cmd [[au FileType vala ++once lua require("packer.load")({'vim-vala'}, { ft = "vala" }, _G.packer_plugins)]]
vim.cmd [[au FileType python ++once lua require("packer.load")({'indentpython.vim', 'SimpylFold'}, { ft = "python" }, _G.packer_plugins)]]
vim.cmd [[au FileType markdown ++once lua require("packer.load")({'vim-markdown'}, { ft = "markdown" }, _G.packer_plugins)]]
vim.cmd [[au FileType kotlin ++once lua require("packer.load")({'kotlin-vim'}, { ft = "kotlin" }, _G.packer_plugins)]]
vim.cmd [[au FileType ts ++once lua require("packer.load")({'yats.vim'}, { ft = "ts" }, _G.packer_plugins)]]
vim.cmd [[au FileType vue ++once lua require("packer.load")({'vim-autoformat', 'vim-vue-plugin'}, { ft = "vue" }, _G.packer_plugins)]]
vim.cmd [[au FileType tex ++once lua require("packer.load")({'vimtex'}, { ft = "tex" }, _G.packer_plugins)]]
time([[Defining lazy-load filetype autocommands]], false)
vim.cmd("augroup END")
vim.cmd [[augroup filetypedetect]]
time([[Sourcing ftdetect script at: /home/paul/.local/share/nvim/site/pack/packer/opt/haskell-vim/ftdetect/haskell.vim]], true)
vim.cmd [[source /home/paul/.local/share/nvim/site/pack/packer/opt/haskell-vim/ftdetect/haskell.vim]]
time([[Sourcing ftdetect script at: /home/paul/.local/share/nvim/site/pack/packer/opt/haskell-vim/ftdetect/haskell.vim]], false)
time([[Sourcing ftdetect script at: /home/paul/.local/share/nvim/site/pack/packer/opt/kotlin-vim/ftdetect/kotlin.vim]], true)
vim.cmd [[source /home/paul/.local/share/nvim/site/pack/packer/opt/kotlin-vim/ftdetect/kotlin.vim]]
time([[Sourcing ftdetect script at: /home/paul/.local/share/nvim/site/pack/packer/opt/kotlin-vim/ftdetect/kotlin.vim]], false)
time([[Sourcing ftdetect script at: /home/paul/.local/share/nvim/site/pack/packer/opt/vim-go/ftdetect/gofiletype.vim]], true)
vim.cmd [[source /home/paul/.local/share/nvim/site/pack/packer/opt/vim-go/ftdetect/gofiletype.vim]]
time([[Sourcing ftdetect script at: /home/paul/.local/share/nvim/site/pack/packer/opt/vim-go/ftdetect/gofiletype.vim]], false)
time([[Sourcing ftdetect script at: /home/paul/.local/share/nvim/site/pack/packer/opt/meson.vim/ftdetect/meson.vim]], true)
vim.cmd [[source /home/paul/.local/share/nvim/site/pack/packer/opt/meson.vim/ftdetect/meson.vim]]
time([[Sourcing ftdetect script at: /home/paul/.local/share/nvim/site/pack/packer/opt/meson.vim/ftdetect/meson.vim]], false)
time([[Sourcing ftdetect script at: /home/paul/.local/share/nvim/site/pack/packer/opt/vim-toml/ftdetect/toml.vim]], true)
vim.cmd [[source /home/paul/.local/share/nvim/site/pack/packer/opt/vim-toml/ftdetect/toml.vim]]
time([[Sourcing ftdetect script at: /home/paul/.local/share/nvim/site/pack/packer/opt/vim-toml/ftdetect/toml.vim]], false)
time([[Sourcing ftdetect script at: /home/paul/.local/share/nvim/site/pack/packer/opt/vim-vala/ftdetect/vala.vim]], true)
vim.cmd [[source /home/paul/.local/share/nvim/site/pack/packer/opt/vim-vala/ftdetect/vala.vim]]
time([[Sourcing ftdetect script at: /home/paul/.local/share/nvim/site/pack/packer/opt/vim-vala/ftdetect/vala.vim]], false)
time([[Sourcing ftdetect script at: /home/paul/.local/share/nvim/site/pack/packer/opt/vim-vue-plugin/ftdetect/vue.vim]], true)
vim.cmd [[source /home/paul/.local/share/nvim/site/pack/packer/opt/vim-vue-plugin/ftdetect/vue.vim]]
time([[Sourcing ftdetect script at: /home/paul/.local/share/nvim/site/pack/packer/opt/vim-vue-plugin/ftdetect/vue.vim]], false)
time([[Sourcing ftdetect script at: /home/paul/.local/share/nvim/site/pack/packer/opt/vimtex/ftdetect/cls.vim]], true)
vim.cmd [[source /home/paul/.local/share/nvim/site/pack/packer/opt/vimtex/ftdetect/cls.vim]]
time([[Sourcing ftdetect script at: /home/paul/.local/share/nvim/site/pack/packer/opt/vimtex/ftdetect/cls.vim]], false)
time([[Sourcing ftdetect script at: /home/paul/.local/share/nvim/site/pack/packer/opt/vimtex/ftdetect/tex.vim]], true)
vim.cmd [[source /home/paul/.local/share/nvim/site/pack/packer/opt/vimtex/ftdetect/tex.vim]]
time([[Sourcing ftdetect script at: /home/paul/.local/share/nvim/site/pack/packer/opt/vimtex/ftdetect/tex.vim]], false)
time([[Sourcing ftdetect script at: /home/paul/.local/share/nvim/site/pack/packer/opt/vimtex/ftdetect/tikz.vim]], true)
vim.cmd [[source /home/paul/.local/share/nvim/site/pack/packer/opt/vimtex/ftdetect/tikz.vim]]
time([[Sourcing ftdetect script at: /home/paul/.local/share/nvim/site/pack/packer/opt/vimtex/ftdetect/tikz.vim]], false)
time([[Sourcing ftdetect script at: /home/paul/.local/share/nvim/site/pack/packer/opt/yats.vim/ftdetect/typescript.vim]], true)
vim.cmd [[source /home/paul/.local/share/nvim/site/pack/packer/opt/yats.vim/ftdetect/typescript.vim]]
time([[Sourcing ftdetect script at: /home/paul/.local/share/nvim/site/pack/packer/opt/yats.vim/ftdetect/typescript.vim]], false)
time([[Sourcing ftdetect script at: /home/paul/.local/share/nvim/site/pack/packer/opt/yats.vim/ftdetect/typescriptreact.vim]], true)
vim.cmd [[source /home/paul/.local/share/nvim/site/pack/packer/opt/yats.vim/ftdetect/typescriptreact.vim]]
time([[Sourcing ftdetect script at: /home/paul/.local/share/nvim/site/pack/packer/opt/yats.vim/ftdetect/typescriptreact.vim]], false)
time([[Sourcing ftdetect script at: /home/paul/.local/share/nvim/site/pack/packer/opt/vim-markdown/ftdetect/markdown.vim]], true)
vim.cmd [[source /home/paul/.local/share/nvim/site/pack/packer/opt/vim-markdown/ftdetect/markdown.vim]]
time([[Sourcing ftdetect script at: /home/paul/.local/share/nvim/site/pack/packer/opt/vim-markdown/ftdetect/markdown.vim]], false)
time([[Sourcing ftdetect script at: /home/paul/.local/share/nvim/site/pack/packer/opt/ansible-vim/ftdetect/ansible.vim]], true)
vim.cmd [[source /home/paul/.local/share/nvim/site/pack/packer/opt/ansible-vim/ftdetect/ansible.vim]]
time([[Sourcing ftdetect script at: /home/paul/.local/share/nvim/site/pack/packer/opt/ansible-vim/ftdetect/ansible.vim]], false)
vim.cmd("augroup END")

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
