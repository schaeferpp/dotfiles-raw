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
local package_path_str = "/home/paul/.cache/nvim/packer_hererocks/2.1.1713773202/share/lua/5.1/?.lua;/home/paul/.cache/nvim/packer_hererocks/2.1.1713773202/share/lua/5.1/?/init.lua;/home/paul/.cache/nvim/packer_hererocks/2.1.1713773202/lib/luarocks/rocks-5.1/?.lua;/home/paul/.cache/nvim/packer_hererocks/2.1.1713773202/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/paul/.cache/nvim/packer_hererocks/2.1.1713773202/lib/lua/5.1/?.so"
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
    config = { "\27LJ\2\n«\5\0\0\3\0\t\0\0296\0\0\0009\0\1\0'\2\2\0B\0\2\0016\0\0\0009\0\1\0'\2\3\0B\0\2\0016\0\0\0009\0\1\0'\2\4\0B\0\2\0016\0\0\0009\0\1\0'\2\5\0B\0\2\0016\0\0\0009\0\1\0'\2\6\0B\0\2\0016\0\0\0009\0\1\0'\2\a\0B\0\2\0016\0\0\0009\0\1\0'\2\b\0B\0\2\1K\0\1\0` smap <silent><expr> <C-E> luasnip#choice_active() ? '<Plug>luasnip-next-choice' : '<C-E>' ` imap <silent><expr> <C-E> luasnip#choice_active() ? '<Plug>luasnip-next-choice' : '<C-E>' I snoremap <silent> <S-Tab> <cmd>lua require('luasnip').jump(-1)<Cr> F snoremap <silent> <Tab> <cmd>lua require('luasnip').jump(1)<Cr> G inoremap <silent> <S-Tab> <cmd>lua require'luasnip'.jump(-1)<Cr> E inoremap <silent> <C-cr> <cmd>lua require'luasnip'.jump(1)<Cr> i imap <silent><expr> <Tab> luasnip#expand_or_jumpable() ? '<Plug>luasnip-expand-or-jump' : '<Tab>'  \bcmd\bvim\0" },
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
  ale = {
    commands = { "ALEEnable" },
    config = { "vim.cmd[[ALEEnable]]" },
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/home/paul/.local/share/nvim/site/pack/packer/opt/ale",
    url = "https://github.com/w0rp/ale"
  },
  ["ansible-vim"] = {
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/home/paul/.local/share/nvim/site/pack/packer/opt/ansible-vim",
    url = "https://github.com/pearofducks/ansible-vim"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/home/paul/.local/share/nvim/site/pack/packer/start/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-cmdline"] = {
    loaded = true,
    path = "/home/paul/.local/share/nvim/site/pack/packer/start/cmp-cmdline",
    url = "https://github.com/hrsh7th/cmp-cmdline"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/home/paul/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/home/paul/.local/share/nvim/site/pack/packer/start/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  cmp_luasnip = {
    loaded = true,
    path = "/home/paul/.local/share/nvim/site/pack/packer/start/cmp_luasnip",
    url = "https://github.com/saadparwaiz1/cmp_luasnip"
  },
  ["conflict-marker.vim"] = {
    loaded = true,
    path = "/home/paul/.local/share/nvim/site/pack/packer/start/conflict-marker.vim",
    url = "https://github.com/rhysd/conflict-marker.vim"
  },
  ["crates.nvim"] = {
    config = { "\27LJ\2\ns\0\0\5\0\a\0\f6\0\0\0'\2\1\0B\0\2\0029\0\2\0009\0\3\0005\2\5\0004\3\3\0005\4\4\0>\4\1\3=\3\6\2B\0\2\1K\0\1\0\fsources\1\0\1\fsources\0\1\0\1\tname\vcrates\vbuffer\nsetup\bcmp\frequireü\1\1\0\b\0\14\0\0226\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\0016\0\3\0009\0\4\0009\0\5\0'\2\6\0005\3\n\0006\4\3\0009\4\4\0049\4\a\4'\6\b\0005\a\t\0B\4\3\2=\4\v\0033\4\f\0=\4\r\3B\0\3\1K\0\1\0\rcallback\0\ngroup\1\0\3\rcallback\0\ngroup\0\fpattern\15Cargo.toml\1\0\1\nclear\2\19CmpSourceCargo\24nvim_create_augroup\fBufRead\24nvim_create_autocmd\bapi\bvim\nsetup\vcrates\frequire\0" },
    loaded = true,
    path = "/home/paul/.local/share/nvim/site/pack/packer/start/crates.nvim",
    url = "https://github.com/saecki/crates.nvim"
  },
  cscope_maps = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/paul/.local/share/nvim/site/pack/packer/opt/cscope_maps",
    url = "https://github.com/chazy/cscope_maps"
  },
  ["dressing.nvim"] = {
    loaded = true,
    path = "/home/paul/.local/share/nvim/site/pack/packer/start/dressing.nvim",
    url = "https://github.com/stevearc/dressing.nvim"
  },
  ["emmet-vim"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/paul/.local/share/nvim/site/pack/packer/opt/emmet-vim",
    url = "https://github.com/mattn/emmet-vim"
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
  ["html5.vim"] = {
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/home/paul/.local/share/nvim/site/pack/packer/opt/html5.vim",
    url = "https://github.com/othree/html5.vim"
  },
  ["icon-picker.nvim"] = {
    config = { "\27LJ\2\nÎ\1\0\0\a\0\v\0\0166\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\0015\0\4\0006\1\5\0009\1\6\0019\1\a\1'\3\b\0'\4\t\0'\5\n\0\18\6\0\0B\1\5\1K\0\1\0\30<cmd>IconPickerNormal<cr>\22<Leader><Leader>i\6n\bset\vkeymap\bvim\1\0\2\fnoremap\2\vsilent\2\1\0\1\28disable_lecagy_commands\2\nsetup\16icon-picker\frequire\0" },
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
    config = { "\27LJ\2\nê\1\0\0\4\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\2B\0\2\1K\0\1\0\17show_outline\1\0\1\rjump_key\t<cr>\21symbol_in_winbar\1\0\2\17show_outline\0\21symbol_in_winbar\0\1\0\6\18click_support\1\19file_formatter\5\14show_file\2\14separator\tï‘Š \venable\2\14in_custom\1\nsetup\flspsaga\frequire\0" },
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
  ["nvim-Cmp"] = {
    config = { "\27LJ\2\n.\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\19autocompletion\frequire\0" },
    loaded = true,
    path = "/home/paul/.local/share/nvim/site/pack/packer/start/nvim-Cmp",
    url = "https://github.com/hrsh7th/nvim-Cmp"
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
  ["nvim-dap"] = {
    loaded = true,
    path = "/home/paul/.local/share/nvim/site/pack/packer/start/nvim-dap",
    url = "https://github.com/mfussenegger/nvim-dap"
  },
  ["nvim-lspconfig"] = {
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
  ["nvim-treesitter-context"] = {
    config = { "\27LJ\2\n¨ó\1\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\t\tmode\vcursor\17line_numbers\2ğñ\1ˆêxdëx\0\0€×xdëx\0\0»\0\0\0\0\0\0\0\24dÆdëx\0\0\2\a\0\3\b\0\0\0\0\0\0\0\0\0\0\0è\21xdëx\0\0HgÆdëx\0\0HgÆdëx\0\0\4\0\0\0\0\0\0\0°\0\0\0\0 \0\0¨vÅdëx\0\0004\2\0\0\15\0\0\0HgÆdëx\0\0OgÆdëx\0\0OgÆdëx\0\0Y\3\0\0006\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\24dÆdëx\0\0008‡Ådëx\0\0°bÆdëx\0\0Ø\127\15eëx\0\0\1\1\1\1\1\1\15\0Ã\0\0\0\0\0\0\0 tÆdëx\0\0\2\a\1\2\b\0\0\0\0\0\0\0\0\0\0\0ˆkydëx\0\0àgÆdëx\0\0àgÆdëx\0\0\0\0\0\0\0\0\0\0·\0\0\0\2\0\0\0\0Ùwdëx\0\0\17\4\0\0\2\0\0\0ägÆdëx\0\0ëgÆdëx\0\0\5hÆdëx\0\0Y\2\0\0-\1\0\0008\1\0\1\14\0\1\0X\2\2€-\1\1\0008\1\0\1L\1\2\0\6À\2\0\1\1\1\1\1\1\1handlers\0default_handlers\0method\0\0\b\0ÿ3\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0¨Æ?Zä©Ñ±\f\0\0\0notification\0\0\0\0+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0+1\27ÛT»Ó\4\0\0\0ó°›´\0\0\0\0#\0\0\0\0\0\0\0ÿÿÿÿÿÿÿÿ¸Ÿˆaëøıÿ0ÜƒaëøıÿK\0\0\0\0\0\0\0XgÆdëx\0\0\2\v\0\0ëøıÿ\0\0\0\0\0\0\0\0xqydëx\0\0\0\0\0\0\0\0\0\0ØhÆdëx\0\0\0\0\0\0\1\0\0\0\biÆdëx\0\0;\0\0\0\0\0\0\0ÿÿÿÿÿÿÿÿ ymdëøıÿ\0\0\0\0\0\0\0\0ÿÿÿÿÿÿÿÿ(4Ædëøıÿ\0\0\0\0\0\0\0\0003\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0©Æ?ZÅ¤\6Ú\14\0\0\0server_request\0\0“\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0ğ\14”\25œç\27½o\0\0\0      Option overrides for the Gitsigns preview window. Table is passed directly\n      to `nvim_open_win`.\n    \0;\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0¯Æ?Z¨\20\21\n\23\0\0\0 user on_error failed: \0;\0\0\0\0\0\0\0008ğndëx\0\0\2\b\0\1ëx\0\0xM\15eëx\0\0à’jdëx\0\0¸}ddëx\0\0¨ñmdëx\0\0»\1\0\0\0\0\0\0x¦kdëx\0\0\2\a\0\14$\0\0\0\0\0\0\0\0\0\0\0˜î8dëx\0\0€kÆdëx\0\0€kÆdëx\0\0\t\0\0\0\0\0\0\0«\1\0\0\3 \0\0è£kdëx\0\0@\0\0\0\b\0\0\0ˆkÆdëx\0\0«kÆdëx\0\0¾kÆdëx\0\0Y\14\0\0006\0\0\0-\2\0\0B\2\1\0A\0\0\4H\3\v€-\5\1\0009\5\1\5)\a\0\0\18\b\3\0006\t\2\0009\t\3\t'\v\4\0\18\f\4\0005\r\5\0B\t\4\0A\5\2\1F\3\3\3R\3ó\1276\0\0\0-\2\2\0B\0\2\4H\3\n€-\5\1\0009\5\1\5)\a\0\0'\b\6\0:\t\1\4&\b\t\b5\t\a\0:\n\3\4=\n\b\tB\5\4\1F\3\3\3R\3ô\127K\0\1\0HÅÈdëx\0\0x¦kdëx\0\0hÄvdëx\0\0ø¥kdëx\0\0p\29Èdëx\0\0pIÈdëx\0\0HÀÇdëx\0\0Ğ\17\16eëx\0\0\24l\15eëx\0\0\2À\0À\1Àÿÿ\1\1\1\1\1\2\2\2\2\2\2\2\2\2\2\2\1\1\5\5\5\5\6\6\6\6\6\6\6\6\6\6\5\5\bhi_define\0api\0kind\0\4\5\14\5\0\14\6\0\14group\0\1\vconf\0\0\v\4\16\r\5\0\r\6\0\r_\0\1\nitem\0\0\n\0ÿÿÿÿÿK\0\0\0\0\0\0\0°·mdëx\0\0\2\v\0\0ëx\0\0\0\0\0\0\0\0\0\0P-Udëx\0\0\0\0\0\0\0\0\0\0è,Udëx\0\0\0\0\0\0\3\0\0\0000-Udëx\0\0K\0\0\0\0\0\0\0@jÆdëx\0\0\2\v\0\0ëx\0\0ˆlÆdëx\0\0 °cëx\0\0\0\0\0\0\0\0\0\0000âldëx\0\0\27\0\0\0\15\0\0\0\bãldëx\0\0ã\0\0\0\0\0\0\0ÿÿÿÿÿÿÿÿhmÆdëxúÿàogdëxúÿPpgdëxúÿÀpgdëxúÿ0qgdëxúÿ qgdëxúÿ\16rgdëxúÿ€rgdëxúÿğrgdëxúÿ`sgdëxúÿ€ÖldëxúÿğÖldëxúÿ`×ldëxúÿĞ×ldëxúÿ@Øldëxúÿ°Øldëxúÿ ÙldëxúÿÙldëxúÿ\0ÚldëxúÿpÚldëxúÿàÚldëxúÿPÛldëxúÿÀÛldëxúÿ0ÜldëxúÿXƒldëxúÿÈƒldëxúÿƒ\0\0\0\0\0\0\0@lÆdëx\0\0\2\v\0\5ëx\0\0¨mÆdëx\0\0 °cëx\0\0\0\0\0\0\0\0\0\0Ø4\15eëx\0\0\5\0\0\0\0\0\0\0Ø4\15eëx\0\0ÿÿÿÿÿÿÿÿ\bÕxdëøıÿ\0ƒldëøıÿ`™xdëøıÿÿÿÿÿÿÿÿÿ\0\0\0\0\0\0\0\0€\0\0\0\0\0\0\0;\0\0\0\0\0\0\0j\25dëx\0\0\2\5\1\1ëx\0\0`_ùcëøûÿxk\25dëx\0\0ømÆdëx\0\0˜“\16l\0\0\0\0;\0\0\0\0\0\0\0\bk\25dëx\0\0\2\5\1\0ëx\0\0ÿÿÿÿÿÿÿÿxk\25dëx\0\0000nÆdëx\0\0˜“\16f\0\0000\0;\0\0\0\0\0\0\0èmÆdëx\0\0\2\5\1\0\t\26ÿ\0ÿÿÿÿÿÿşÿ nÆdëx\0\0hnÆdëx\0\0˜“\16mëx\0\0C\0\0\0\0\0\0\0à,©cëx\0\0\2\f\0\0\b\24ÿ\0xM\15eëx\0\0\b\0\0\0\4\24ÿ\0xó\16eëx\0\0û\127\4\0\5\30ÿ\0 \31B¦Z\0\0c\0\0\0\0\0\0\0¨_ùcëx\0\0\2\vÿƒ\4\24ÿ\0à_ùcëx\0\0\0\0\0\0\4\24ÿ\0\0\0\0\0\0\0\0\0Ø4\15eëx\0\0\5\0\0\0\0\0\0\0Ø4\15eëx\0\0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿk\0\0\0\0\0\0\0\0pÆdëx\0\0\2\v\0ƒëx\0\0000»Öcëx\0\0ĞnÆdëxúÿ\0\0\0\0\0\0\0\0Ø4\15eëx\0\0\5\0\0\0\0\0\0\0Ø4\15eëx\0\0ÿÿÿÿÿÿÿÿ°~Ædëøıÿè»Hdëxúÿh\0\0\0\0\0\0\0k\0\0\0\0\0\0\0ĞnÆdëx\0\0\2\vÿ\4‰9ÿ\0ØoÆdëx\0\0\19€ñ\127ˆ\bÿ\0\0\0\0\0\0\0\0\0Ø4\15eëx\0\0\4\0\0\0\0\0\0\0Ø4\15eëx\0\0ÿÿÿÿÿÿÿÿnÆdëøùÿè+©cëøùÿà,©cëøùÿk\0\0\0\0\0\0\0˜oÆdëx\0\0\2\v\0\4\a\v\0ÿ@pÆdëx\0\0\t\v\3\t\t\0\0\0\0\0\0\0\0\0\0\0Ø4\15eëx\0\0\4\0\0\0\0\0\0\0Ø4\15eëx\0\0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ(,©cëøûÿ -©cëøûÿS\3\0\0\0\0\0\0ˆ8xdëx\0\0\2\a\2\18Y\0\0\0\0\0\0\0\0\0\0\0Ğ\16hdëx\0\0ÀrÆdëx\0\0ĞrÆdëx\0\0\17\0\0\0\2\0\0\0G\3\0\0\3!\0\0\0Ùwdëx\0\0_\3\0\0\28\0\0\0ØrÆdëx\0\0000sÆdëx\0\0NsÆdëx\0\0Y\18\0\0\14\0\1\0X\2\1€4\1\0\0009\2\0\1\14\0\2\0X\3\1€3\2\1\0009\3\2\0=\3\2\0009\3\2\0\14\0\3\0X\3\19€6\3\3\0009\5\4\0B\3\2\2\a\3\5\0X\3\14€9\3\4\0:\3\1\3\15\0\3\0X\4\b€6\3\6\0009\3\a\0039\3\b\0039\5\4\0:\5\1\5B\3\2\2\14\0\3\0X\4\1€+\3\0\0=\3\2\0009\3\t\1\n\3\0\0X\4\2€\t\3\0\0X\4\4€-\4\0\0009\4\n\4B\4\1\2\18\3\4\0006\4\v\0004\6\3\0-\a\1\0>\a\1\6-\a\2\0009\a\f\aB\a\1\0?\a\1\0B\4\2\4X\a\20€6\t\r\0\18\v\b\0B\t\2\4H\f\14€\18\14\2\0\18\16\r\0\18\17\0\0B\14\3\2\15\0\14\0X\15\b€-\14\2\0009\14\14\14\18\16\3\0009\17\15\rB\14\3\0019\14\15\r2\0\0€L\14\2\0F\f\3\3R\fğ\127E\a\3\3R\aê\127-\4\2\0009\4\16\4\18\6\0\0B\4\2\2\v\4\0\0X\5\3€+\5\0\0002\0\0€L\5\2\0-\5\2\0009\5\14\5\18\a\3\0\18\b\4\0B\5\3\0012\0\0€L\4\2\0\23\0\23\0`>xdëx\0\0°…Çdëx\0\0(>xdëx\0\0\24l\15eëx\0\0008\twdëx\0\0¸l\15eëx\0\0˜\29\16eëx\0\0\16mmdëx\0\0ø=xdëx\0\0p‚\16eëx\0\0HÀÇdëx\0\0Xj\15eëx\0\0x|Èdëx\0\0Pk\15eëx\0\0(¬Çdëx\0\0ˆ8xdëx\0\0èõmdëx\0\0\0\0\0\0\0\0\0\0\2\0\0\0\0\0000C\aÀ\30À\18À™\0\1\1\1\3\3\3\5\6\6\a\a\a\a\a\a\a\a\b\b\b\b\b\b\b\b\b\b\b\b\b\b\n\v\v\v\v\f\f\f\f\14\14\14\14\14\14\14\14\14\14\15\15\15\15\16\16\16\16\16\16\17\17\17\17\17\18\18\18\15\15\14\14\22\22\22\22\23\23\24\24\24\26\26\26\26\26\27\27api\0uninitialized_clients\0lsp\0config\0\0Yopts\0\0Yreuse_client\0\bQbufnr\0\0258\4\17\23\5\0\23\6\0\23_\0\1\20clients\0\0\20\4\3\17\5\0\17\6\0\17_\0\1\14client\0\0\14client_id\0\22\f\0\1k\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0dÛ^ÍÚŸD,\0\0\0md_microsoft_xbox_controller_battery_unknown\0\0\0\0HÚVdëøıÿ¨\14Çdëøıÿh\0\0\0\0\0\0\0“\0\0\0\0\0\0\0hpÆdëx\0\0\2\a\2\2\2\0\0\0ÿÿÿÿÿÿşÿXgÆdëx\0\0tÆdëx\0\0tÆdëx\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Ùwdëx\0\0ÿ\3\0\0\2\0\0\0tÆdëx\0\0‘tÆdëx\0\0‘tÆdëx\0\0Y\2\0\0L\1\2\0\1_\0\0\2filetype\0\0\2\0\1÷\1÷\1û\1;\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0\16Ÿ3r{Eª]\18\0\0\0includeDeclaration\0\0\0\0\0\0003\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0¸\6“\17ı‡e'\14\0\0\0capture_output\0\0c\0\0\0\0\0\0\0(yÈdëx\0\0\2\v\0\0ëx\0\0\0\0\0\0\0\0\0\0@âÈdëx\0\0\0\0\0\0\0\0\0\0H&ydëx\0\0\0\0\0\0\1\0\0\0`&ydëx\0\0Ø4\15eëx\0\0\0\0\0\0\0\0\0\0`\0\0\0\0\0\0\0;\0\0\0\0\0\0\0\bqÅdëx\0\0\2\b\0\1ëx\0\0xM\15eëx\0\0hZ\23dëx\0\0wÈdëx\0\0 Ãydëx\0\0\19\1\0\0\0\0\0\0HÃadëx\0\0\2\a\0\3\r\0\0\0Øéhdëx\0\0èéhdëx\0\0€vÆdëx\0\0€vÆdëx\0\0\6\0\0\0\0\0\0\0ş\0\0\0\3 \0\0Ğqzdëx\0\0S\0\0\0\4\0\0\0ˆvÆdëx\0\0”vÆdëx\0\0¢vÆdëx\0\0Y\3\0\0-\0\0\0009\0\0\0-\2\1\0B\0\2\0029\0\1\0-\1\2\0009\1\2\1B\1\1\0016\1\3\0009\1\4\1=\0\5\1K\0\1\0ÿÿÿÿÈÃadëx\0\0°ÄÈdëx\0\0HÀÇdëx\0\0èÂadëx\0\0XÂadëx\0\0¸Âadëx\0\0\5À\1À\2\0\0\0\1\1\1\1\1\2\2\2\3\3\3\4git\0cwd\0async\0new_head\0\6\a\0ıÿ\16\1\0\0\0\0\0\0ƒ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0010&vìZÁ7Ì\\\0\0\0@/home/paul/.local/share/nvim/site/pack/packer/start/packer.nvim/lua/packer/plugin_utils.lua\0\0\0\0Ë\0\0\0\0\0\0\0 ÎÈdëx\0\0\2\a\1\a\b\0\0\0€wÆdëx\0\0Pvmdëx\0\0ĞwÆdëx\0\0ĞwÆdëx\0\0\1\0\0\0\0\0\0\0¹\0\0\0\2 \0\0p¸ndëx\0\0'\3\0\0\2\0\0\0ÔwÆdëx\0\0ÛwÆdëx\0\0ñwÆdëx\0\0Y\a\0\0-\1\0\0\18\3\0\0-\4\1\0009\4\0\4\18\6\0\0B\4\2\0C\1\1\0ÀúÆdëx\0\0(À\2À\1\1\1\1\1\1\1diagnostic_move_pos\0M\0opts\0\0\b\0\0\0\0\0\0\0\0s\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0\14\aFa\21ŠXO\0\0\0@/home/paul/.local/share/nvim/site/pack/packer/start/packer.nvim/lua/packer.lua\0;\0\0\0\0\0\0\0¸úmdëx\0\0\2\5\1\1ëx\0\0HpÅdëxúÿˆ$wdëx\0\0ˆxÆdëx\0\0\b‹n|ëx\0\0[\0\0\0\0\0\0\0HpÅdëx\0\0\2\b\0\3\0\0\0\0xM\15eëx\0\0xÉmdëx\0\0 Ãndëx\0\0\bĞÆdëx\0\0xxÆdëx\0\0‚Ådëx\0\0\0\0\0\0\31\0\0\0X\0\0\0\0\0\0\0+\0\0\0\0\0\0\0Ø<hdëx\0\0\2\4\0\0/\aFae\21¹ \a\0\0\0install\0;\0\0\0\0\0\0\0€ÉSdëx\0\0\2\4\0\0\16\aFaÁ*|d\n\0\0\0join_paths\0\0ëøıÿ8\0\0\0\0\0\0\0+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0\15\aFa\0;¾f\4\0\0\0util\0\0\0\0+\0\0\0\0\0\0\0p“Ldëx\0\0\2\4\0\0\17\aFaùç‚û\a\0\0\0stdpath\0;\0\0\0\0\0\0\0à\21ydëx\0\0\2\5\1\1ëx\0\0h©ydëxúÿØ„\16eëx\0\0ÈyÆdëx\0\0ppyg\0\0\0\0S\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0ÍîşA‡\30ğÊ!\0\0\0packer.install: requiring modules\0\0\0e('pP\0\0\0\0\0\0\0003\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0ßI~NêLÉ\r\0\0\0md_deviantart\0\0\0;\0\0\0\0\0\0\0pÛvdëx\0\0\2\4\0\0\19\aFa™(´Ä\19\0\0\0ensure_dependencies\0\0\0\0\0;\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0\24\aFa\24Ğˆø\f\0\0\0package_root\0\0\0\0008\0\0\0\0\0\0\0003\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0\20\aFa½x7\29\b\0\0\0snapshot\0\0\0\0\0\0\0\0003\0\0\0\0\0\0\0Pøpdëx\0\0\2\4\0\0\21\aFaİıWä\r\0\0\0snapshot_path\0\0\0+\0\0\0\0\0\0\0ğ\rNdëx\0\0\2\4\0\0\22\aFaîş Ü\5\0\0\0cache\0\0\0003\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0\23\aFaT›E’\v\0\0\0packer.nvim\0\0\0\0\0;\0\0\0\0\0\0\0XãOdëx\0\0\2\4\0\0\28\aFa\v¤ËÎ\f\0\0\0compile_path\0\0\0\0008\0\0\0\0\0\0\0+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0Ù\19µ¨&Ğ\5\0\0\0items\0\0\0+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0S\4œ¶%¨G0\1\0\0\0\r\0\0\0\0\0\0\0k\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0009\aFaÁ7\3`A\0\0\0log --color=never --pretty=format:FMT --no-show-signature %s...%s\0\0\0\0\0\0\0+\0\0\0\0\0\0\0øÎWdëx\0\0\2\4\0\0\29\aFa–Ñ¦¦\6\0\0\0plugin\0\0;\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0X\4œ¶BJÕÍ\b\0\0\0disabled\0\0\0\0ëøıÿ8\0\0\0\0\0\0\0003\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0\31\aFaAÏTŞ\14\0\0\0plugin_package\0\0003\0\0\0\0\0\0\0H«xdëx\0\0\2\4\0\0 \aFaè\0à9\b\0\0\0max_jobs\0\0\0\0\0\0\0\0003\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0!\aFaÑ­µ„\n\0\0\0auto_clean\0\0\0\0\0\0003\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0\"\aFa#\20¬å\15\0\0\0compile_on_sync\0;\0\0\0\0\0\0\0ğÛUdëx\0\0\2\4\0\0#\aFağî='\16\0\0\0disable_commands\0\0\0\0\0\0\0\0003\0\0\0\0\0\0\0X„cdëx\0\0\2\4\0\0$\aFa¶W¢%\14\0\0\0transitive_opt\0\0;\0\0\0\0\0\0\0008-Ldëx\0\0\2\4\0\0%\aFaê´€\1\18\0\0\0transitive_disable\0\0ëx\0\0;\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0&\aFa&m\20\20\0\0\0auto_reload_compiled\0\0\0\0003\0\0\0\0\0\0\0°Dzdëx\0\0\2\4\0\0'\aFa´¨\\ë\15\0\0\0preview_updates\0+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0(\aFaœLÂË\3\0\0\0git\0\0\0\0\0;\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0)\aFa\0Á\18é\21\0\0\0mark_breaking_changes\0\0\0K\0\0\0\0\0\0\0x\rUdëx\0\0\2\v\0\0ëx\0\0\0\0\0\0\0\0\0\0\16kdëx\0\0\0\0\0\0\0\0\0\0ÀÎwdëx\0\0\0\0\0\0\3\0\0\0ØÎwdëx\0\0;\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0¹ù\0\29©d†˜\r\0\0\0clone_timeout\0\0\0008\0\0\0\0\0\0\0003\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0*\aFa\16ù/¦\v\0\0\0subcommands\0\0\0\0\0+\0\0\0\0\0\0\0À¾Ldëx\0\0\2\4\0\0+\aFaöKJä\6\0\0\0update\0\0K\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0=\aFaŒ€:\"\0\0\0show --no-color --pretty=medium %s\0\0\0\0\0\0[\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0,\aFa12\aš0\0\0\0pull --ff-only --progress --rebase=false --force\0\0\0\0\0\0\0\0K\0\0\0\0\0\0\0à5ndëx\0\0\2\v\0\0ëx\0\0\0\0\0\0\0\0\0\0@îedëx\0\0\0\0\0\0\0\0\0\0\24ÙÇdëx\0\0\0\0\0\0\1\0\0\0HÙÇdëx\0\0;\0\0\0\0\0\0\0`0Ldëx\0\0\2\4\0\0003\aFaÛz\b\14\b\0\0\0checkout\0\0\0\0ëøıÿ8\0\0\0\0\0\0\0003\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0-\aFaâõ!=\v\0\0\0update_head\0\0\0\0\0;\0\0\0\0\0\0\0˜j`dëx\0\0\2\4\0\0.\aFa¼\29Š}\16\0\0\0merge FETCH_HEAD\0\0\0\0\0\0\0\0S\0\0\0\0\0\0\0ˆŠndëx\0\0\2\4\0\0000\aFa‘7\20[.\0\0\0clone --depth %i --no-single-branch --progress\0\0+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0001\aFaSñ˜h\5\0\0\0fetch\0\0\0K\0\0\0\0\0\0\0¨9jdëx\0\0\2\4\0\0002\aFa\26Ù…ô'\0\0\0fetch --depth 999999 --progress --force\0003\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0004\aFan?:û\14\0\0\0checkout %s --\0\0003\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0005\aFa'ÿH«\r\0\0\0update_branch\0\0\0;\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0006\aFa~î\20\0\0\0merge --ff-only @{u}\0\0\0\0003\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0007\aFaZGs9\14\0\0\0current_branch\0\0C\0\0\0\0\0\0\0@Õydëx\0\0\2\4\0\0008\aFa1vÔ\27\0\0\0rev-parse --abbrev-ref HEAD\0\0\0\0\0003\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0:\aFa\14m(\19\b\0\0\0diff_fmt\0\0\0\0\0\0\0\0003\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0;\aFa{üY\15\14\0\0\0%%h %%s (%%cr)\0\0003\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0<\aFai€\23ó\f\0\0\0git_diff_fmt\0\0\0\0+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0¨ù\0\29\21tãõ\a\0\0\0get_rev\0;\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0©ù\0\29<×¥á\22\0\0\0rev-parse --short HEAD\0\0\v\3\0\0\0\0\0\0pÓmdëx\0\0\2\a\2\17I\0\0\0 Èpdëx\0\0ØNwdëx\0\0X†Ædëx\0\0`†Ædëx\0\0\20\0\0\0\1\0\0\0á\2\0\0\2 \0\0ğÒmdëx\0\0\2\0\0\0\31\0\0\0d†Ædëx\0\0¬†Ædëx\0\0Æ†Ædëx\0\0Y\17\0\0\f\2\1\0X\2\1€4\2\0\0\v\0\0\0X\3\1€L\2\2\0006\3\0\0\18\5\0\0B\3\2\4X\6;€-\b\0\0009\b\1\b9\t\2\a8\b\t\b\14\0\b\0X\t\1€'\b\3\0+\t\0\0009\n\4\a\15\0\n\0X\v\3€9\n\4\a9\t\5\nX\n\4€9\n\5\a\15\0\n\0X\v\1€9\t\5\a\15\0\t\0X\n\n€9\n\6\t9\v\6\t9\v\a\v\22\v\0\v=\v\a\n9\n\b\t9\v\b\t9\v\a\v\22\v\0\v=\v\a\n6\n\t\0009\n\n\n\18\f\2\0005\r\14\0009\14\4\a\15\0\14\0X\15\a€6\14\v\0009\14\f\0149\16\4\a9\16\r\16B\14\2\2\14\0\14\0X\15\1€+\14\0\0=\14\15\r=\t\5\r=\b\2\r9\14\16\a=\14\17\r=\a\18\rB\n\3\0019\n\19\a\15\0\n\0X\v\4€-\n\1\0009\f\19\a\18\r\2\0B\n\3\1E\6\3\3R\6Ã\127L\2\2\0ÿÿÿÿ\bJÆdëx\0\0ØIÆdëx\0\0 Óndëx\0\0(¬Çdëx\0\0 %xdëx\0\0pÓmdëx\0\0\16Oxdëx\0\0XÉÈdëx\0\0HÀÇdëx\0\0\b‰\15eëx\0\0Xj\15eëx\0\0à`\15eëx\0\0°ÏÆdëx\0\0PÎ\15eëx\0\0\16†Çdëx\0\0@IÆdëx\0\0¨HÆdëx\0\0PLÆdëx\0\0(jzdëx\0\0¸l\15eëx\0\0\0\0\0\0\0\0ğ?\0À\1À\1\1\1\2\2\2\3\3\3\3\4\4\4\4\4\4\4\5\6\6\6\a\a\a\b\b\b\t\f\f\r\r\r\r\r\14\14\14\14\14\17\17\17\17\18\18\18\18\18\18\18\18\18\18\18\18\19\20\21\21\22\17\25\25\25\26\26\26\26\3\3\30lsp_proto\0extract_symbols\0items\0\0I_result\0\0Iresult\0\4E\4\6>\5\0>\6\0>_\0\1;item\0\0;kind\0\a4sym_range\0\0013\0\0\0\0\0\0\0\0 xÅdëøıÿè|Ædëøıÿ\b\3\0\0\0\0\0\0Ã\1\0\0\0\0\0\0ˆ%Ædëx\0\0\2\a\0\3.\0\0\0\0\0\0\0\0\0\0\0\24Åydëx\0\0¸ˆÆdëx\0\0¸ˆÆdëx\0\0\r\0\0\0\0\0\0\0¶\1\0\0\0 \0\0\bxÆdëx\0\0”\0\0\0\f\0\0\0¸ˆÆdëx\0\0åˆÆdëx\0\0åˆÆdëx\0\0Y\3\0\0006\0\0\0009\0\1\0'\2\2\0B\0\2\0016\0\0\0009\0\1\0'\2\3\0B\0\2\0016\0\0\0009\0\1\0'\2\4\0B\0\2\0016\0\0\0009\0\1\0'\2\5\0B\0\2\0016\0\0\0009\0\1\0'\2\6\0B\0\2\0016\0\0\0009\0\1\0'\2\a\0B\0\2\0016\0\0\0009\0\1\0'\2\b\0B\0\2\0016\0\0\0009\0\1\0'\2\t\0B\0\2\0016\0\0\0009\0\1\0'\2\n\0B\0\2\0016\0\0\0009\0\1\0'\2\v\0B\0\2\0016\0\0\0009\0\1\0'\2\f\0B\0\2\1K\0\1\0@ÈÆdëx\0\0ØÇÆdëx\0\0 ”Ædëx\0\0¸»Ådëx\0\0€–Ædëx\0\0008ÇÆdëx\0\0ÆÆdëx\0\0èÅÆdëx\0\0`ÄÆdëx\0\0@PÅdëx\0\0¨ÃÆdëx\0\0x|Èdëx\0\0HÀÇdëx\0\0\1\1\1\1\2\2\2\2\3\3\3\3\4\4\4\4\5\5\5\5\6\6\6\6\a\a\a\a\b\b\b\b\t\t\t\t\n\n\n\n\v\v\v\v\f\0\0\0‹\1\0\0\0\0\0\0èbÆdëx\0\0\2\a\0\t\25\0\0\0\0\0\0\0\0\0\0\0˜\30ydëx\0\0è‰Ædëx\0\0è‰Ædëx\0\0\5\0\0\0\0\0\0\0n\1\0\0\4 \0\0\bxÆdëx\0\0V\1\0\0\b\0\0\0ğ‰Ædëx\0\0\bŠÆdëx\0\0CŠÆdëx\0\0Y\t\0\0-\0\0\0'\2\0\0B\0\2\0029\1\1\0'\3\2\0B\1\2\1-\1\1\0\n\1\0\0X\1\5€6\1\3\0-\3\1\0B\1\2\2\v\1\0\0X\1\t€6\1\4\0-\3\2\0B\1\2\4X\4\3€-\6\3\0\18\b\5\0B\6\2\1E\4\3\3R\4û\127K\0\1\0ëøıÿ¸l\15eëx\0\0°k\15eëx\0\0@\tÇdëx\0\0°¸\15eëx\0\0(³\15eëx\0\0\nÀ\6€\a€\v€\1\1\1\2\2\2\3\3\3\3\3\3\3\3\4\4\4\4\5\5\5\4\4\brequire_and_configure\0plugins\0plugin_specifications\0manage\0log\0\4\21\4\14\6\5\0\6\6\0\6_\0\1\3spec\0\0\3\0şÿ\0b\15eëøıÿˆ\1\0\0\0\0\0\0003\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0±ğn\\\0163ps\14\0\0\0md_cart_remove\0\0+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0²ğn\\óç\2\4\0\0\0ó°µ©\0\0\0\0;\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0³ğn\\3PE©\22\0\0\0md_contactless_payment\0\0+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0´ğn\\\n#Ø‡\4\0\0\0ó°µª\0\0\0\0;\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0µğn\\3€\0ı\19\0\0\0md_creative_commons\0ëøıÿ+\0\0\0\0\0\0\0\16ºUdëx\0\0\2\4\0\0¶ğn\\Š³\24\r\4\0\0\0ó°µ«\0\0\0\0C\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0·ğn\\Áx\5¨\31\0\0\0md_credit_card_wireless_outline\0+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0¸ğn\\ü\24ª\0\4\0\0\0ó°µ¬\0\0\0\0003\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0¹ğn\\ówu\6\n\0\0\0md_cricket\0\0ëøıÿ+\0\0\0\0\0\0\0¨}Ldëx\0\0\2\4\0\0ºğn\\ôá\4\0\0\0ó°µ­\0\0\0\0003\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0»ğn\\9¹8\t\0\0\0md_dev_to\0\0\0ÿÿşÿ+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0¼ğn\\û:+O\4\0\0\0ó°µ®\0\0\0\0003\0\0\0\0\0\0\0 áfdëx\0\0\2\4\0\0½ğn\\\30íjF\r\0\0\0md_domain_off\0\0\0+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0¾ğn\\ãûr”\4\0\0\0ó°µ¯\0\0\0\0003\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0¿ğn\\\28O&é\r\0\0\0md_face_agent\0\0\0+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0Àğn\\Ö4ˆ[\4\0\0\0ó°µ°\0\0\0\0+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0Âğn\\Î¹ÀÜ\4\0\0\0ó°µ±\0\0\0\0£\1\0\0\0\0\0\0 ÅÆdëx\0\0\2\a\1\t*\0\0\0\0\0\0\0\0\0\0\0``Ådëx\0\0ÀÆdëx\0\0ÀÆdëx\0\0\6\0\0\0\0\0\0\0˜\1\0\0\1 \0\0\bxÆdëx\0\0©\0\0\0\f\0\0\0ÄÆdëx\0\0íÆdëx\0\0óÆdëx\0\0Y\t\0\0006\1\0\0\18\3\0\0B\1\2\2\a\1\1\0X\1\3€4\1\3\0>\0\1\1\18\0\1\0006\1\2\0009\1\3\1\18\3\0\0B\1\2\2\14\0\1\0X\1\t€6\1\0\0:\3\1\0B\1\2\2\a\1\1\0X\1\4€-\1\0\0:\2\1\0<\0\2\1X\1\17€6\1\4\0\18\3\0\0B\1\2\4X\4\v€6\6\0\0\18\b\5\0B\6\2\2\a\6\5\0X\6\3€:\6\1\5\14\0\6\0X\a\1€\18\6\5\0-\a\0\0<\5\6\aE\4\3\3R\4ó\127K\0\1\0Xj\15eëx\0\0¸l\15eëx\0\0ø\23Èdëx\0\0HÀÇdëx\0\0hi\15eëx\0\0Pk\15eëx\0\0\b€ÿÿ\1\1\1\1\1\2\2\2\4\4\4\4\4\4\4\4\4\4\4\5\5\5\5\a\a\a\a\b\b\b\b\b\b\b\b\b\t\t\a\a\frocks\0rock\0\0*\4\27\14\5\0\14\6\0\14_\0\1\vr\0\0\vrock_name\0\t\2\0;\0\0\0\0\0\0\0pğxdëx\0\0\2\5\1\1ëx\0\0„\16eëxúÿø4\15eëx\0\0000Ædëx\0\0ppym\0\0\0\0K\0\0\0\0\0\0\0\24Lydëx\0\0\2\b\0\2ëx\0\0xM\15eëx\0\0@îedëx\0\0x†jdëx\0\0Ø\2ddëx\0\0hïÅdëx\0\0H\0\0\0\0\0\0\0c\0\0\0\0\0\0\0\bTydëx\0\0\2\b\0\5ëx\0\0xM\15eëx\0\0ÀÍÆdëx\0\0PFydëx\0\0pğxdëx\0\0à\21ydëx\0\0Ø„\16eëx\0\0pÁydëx\0\0X¼ydëx\0\0`\0\0\0\0\0\0\0003\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0áîşA[Æh&\b\0\0\0installs\0\0\0\0\0\0\0\0003\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0ªù\0\29\0a«\n\0\0\0get_header\0\0\0\0\0\0k\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0«ù\0\29º»x\vC\0\0\0log --color=never --pretty=format:FMT --no-show-signature HEAD -n 1\0\0\0\0\0003\0\0\0\0\0\0\0ˆæadëx\0\0\2\4\0\0¬ù\0\29ÎLég\n\0\0\0get_bodies\0\0\0\0\0\0›\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0­ù\0\29¾\127§Ër\0\0\0log --color=never --pretty=format:\"===COMMIT_START===%h%n%s===BODY_START===%b\" --no-show-signature HEAD@{1}...HEAD\0\0\0\0\0\0;\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0®ù\0\29ëq½:\16\0\0\0get_fetch_bodies\0\0\0\0\0\0\0\0›\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0¯ù\0\29«ı„\18t\0\0\0log --color=never --pretty=format:\"===COMMIT_START===%h%n%s===BODY_START===%b\" --no-show-signature HEAD...FETCH_HEAD\0\0\0\0003\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0°ù\0\29·Ñ0¼\n\0\0\0submodules\0\0\0\0\0\0S\0\0\0\0\0\0\0 uPdëx\0\0\2\4\0\0±ù\0\297,\27.\0\0\0submodule update --init --recursive --progress\0\0+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0²ù\0\29ø\1{å\6\0\0\0revert\0\0;\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0³ù\0\29°bêt\21\0\0\0reset --hard HEAD@{1}\0\0\0003\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0´ù\0\0291:Îø\t\0\0\0revert_to\0\0\0\0\0\0\0;\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0µù\0\0296¯\bù\18\0\0\0reset --hard %s --\0\0\0\0\0\0003\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0¶ù\0\29ğË$\15\0\0\0tags_expand_fmt\0K\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0·ù\0\29¸Óù !\0\0\0tag -l %s --sort -version:refname\0\0\0\0\0\0\0k\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0007zu§Ús=š?\0\0\0command! PackerStatus            lua require('packer').status()\0h\0\0\0\0\0\0\0+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0¸ù\0\29„¥[\5\0\0\0depth\0\0\0;\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0ºù\0\29÷s\27İ\18\0\0\0default_url_format\0\0\0\0\0\0C\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0»ù\0\29\25%Qè\25\0\0\0https://github.com/%s.git\0\0\0\0\0\0\0003\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0¼ù\0\29½¿}ñ\15\0\0\0non_interactive\0K\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0›ß[OÙèq…\25\0\0\0md_temperature_fahrenheit\0\0\0\0\0\0\0H\0\0\0\0\0\0\0;\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0¾ù\0\29{\6æv\b\0\0\0open_cmd\0\0\0\0ëøıÿ8\0\0\0\0\0\0\0+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0½ù\0\29'6l|\a\0\0\0compact\0+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0¿ù\0\29\18,ÃV\6\0\0\00065vnew\0\0003\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0Àù\0\29\22¾üI\v\0\0\0working_sym\0\0\0\0\0+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0Áù\0\29\n—:Ï\3\0\0\0âŸ³\0\0\0\0\0k\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0005zu§W1¦Õ>\0\0\0command! PackerClean             lua require('packer').clean()\0\0h\0\0\0\0\0\0\0003\0\0\0\0\0\0\0ØùVdëx\0\0\2\4\0\0Âù\0\29ûUµÜ\t\0\0\0error_sym\0\0\0\0\0\0\0+\0\0\0\0\0\0\0ØÔWdëx\0\0\2\4\0\0Ãù\0\29hÖ·\3\0\0\0âœ—\0\0\0\0\0Ë\0\0\0\0\0\0\0(Èxdëx\0\0\2\a\1\a\b\0\0\0Ğ—Ædëx\0\0ø\\zdëx\0\0Ğ—Ædëx\0\0Ğ—Ædëx\0\0\1\0\0\0\0\0\0\0¹\0\0\0\2 \0\0p¸ndëx\0\0U\3\0\0\2\0\0\0Ô—Ædëx\0\0Û—Ædëx\0\0ñ—Ædëx\0\0Y\a\0\0-\1\0\0\18\3\0\0-\4\1\0009\4\0\4\18\6\0\0B\4\2\0C\1\1\0@GÆdëx\0\0(À\2À\1\1\1\1\1\1\1diagnostic_move_pos\0M\0opts\0\0\b\0\0\0\0\0\0\0\0003\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0Äù\0\29+…^a\b\0\0\0done_sym\0\0\0\0\0\0\0\0+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0Åù\0\29(nóy\3\0\0\0âœ“\0\0\0\0\0003\0\0\0\0\0\0\0¸5idëx\0\0\2\4\0\0Æù\0\29°WÒÏ\v\0\0\0removed_sym\0\0\0\0\0003\0\0\0\0\0\0\0(ŠÅdëx\0\0\2\4\0\0Çù\0\29şî\21Ì\t\0\0\0moved_sym\0\0\0\0\0\0\0+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0Èù\0\29”ó˜$\3\0\0\0â†’\0\0\0\0\0003\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0Éù\0\29÷!=\1\b\0\0\0item_sym\0\0\0\0\0\0\0\0+\0\0\0\0\0\0\0Xe_dëx\0\0\2\4\0\0Êù\0\29Ë•‹R\3\0\0\0â€¢\0\0\0\0\0003\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0é\14{Æ\4PAı\n\0\0\0header_sym\0\0\0\0\0\0+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0ê\14{Æ$×À\14\3\0\0\0â”\0\0\0\0\0003\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0ë\14{Æ\b“šH\f\0\0\0header_lines\0\0\0\0+\0\0\0\0\0\0\0€õÇdëx\0\0\2\4\0\0ì\14{ÆÛaRÙ\5\0\0\0title\0\0\0003\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0í\14{Æ$ÁšZ\r\0\0\0prompt_border\0\0\0+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\"\4\0\0î\14{ÆöŒ\25­\6\0\0\0double\0\0003\0\0\0\0\0\0\0 ¼adëx\0\0\2\4\0\0ï\14{ÆDj·ä\v\0\0\0keybindings\0\0\0\0\0+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0ğ\14{ÆÆ\"G5\4\0\0\0quit\0\0\0\0+\0\0\0\0\0\0\0(ÎSdëx\0\0\2\4\0\0ñ\14{Æ+Š‰‹\1\0\0\0q\0\0\0\0\0\0\0K\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0Ó>—-áÎdP\25\0\0\0md_trophy_variant_outline\0\0\0\0\0\0\0H\0\0\0\0\0\0\0;\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0õ\14{Æ¦¸åì\v\0\0\0toggle_info\0ëøıÿ8\0\0\0\0\0\0\0003\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0ò\14{ÆÂD’ì\r\0\0\0toggle_update\0\0\0+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0ó\14{ÆD|a™\1\0\0\0u\0\0\0\0\0\0\0003\0\0\0\0\0\0\0€hddëx\0\0\2\4\0\0ô\14{ÆRÉ^O\b\0\0\0continue\0\0\0\0\0\0\0\0+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0ö\14{Æ-\3´¶\4\0\0\0<CR>\0\0\0\0+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0÷\14{Æİrle\1\0\0\0d\0\0\0\0\0\0\0003\0\0\0\0\0\0\0h$Kdëx\0\0\2\4\0\0ø\14{Æ!¹~ª\r\0\0\0prompt_revert\0\0\0+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0ù\14{Æ¬ŠéÊ\1\0\0\0r\0\0\0\0\0\0\0+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0ú\14{Æ:Ğsy\5\0\0\0retry\0\0\0+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0û\14{Æ$ú‰]\1\0\0\0R\0\0\0\0\0\0\0003\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0ü\14{Æ£Îvy\b\0\0\0luarocks\0\0\0\0\0\0\0\0003\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0ı\14{ÆïVv”\n\0\0\0python_cmd\0\0\0\0\0\0C\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0004\27Ó¬òÜ\0\27\0\0\0minidisc | computer disk | \0ëøıÿ+\0\0\0\0\0\0\0\16¡jdëx\0\0\2\4\0\0005\27Ó¬\2\5¨i\4\0\0\0ğŸ’½\0\0\0\0K\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0006\27Ó¬šÄ:o \0\0\0floppy_disk | floppy disk | save\0\0\0\0ëx\0\0+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0007\27Ó¬~†ãê\4\0\0\0ğŸ’¾\0\0\0\0;\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0008\27Ó¬÷\25·C\20\0\0\0cd | optical disk | \0\0\0\0+\0\0\0\0\0\0\0H¨vdëx\0\0\2\4\0\0009\27Ó¬÷\3!l\4\0\0\0ğŸ’¿\0\0\0\0003\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0:\27Ó¬`ÄŒ\f\0\0\0dvd | dvd | \0\0\0\0+\0\0\0\0\0\0\0Ø\15eëx\0\0\2\4\0\0;\27Ó¬£kMr\4\0\0\0ğŸ“€\0\0\0\0K\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0<\27Ó¬|¹ÑZ%\0\0\0file_folder | file folder | directory\0\0\0+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0=\27Ó¬$­ó\4\0\0\0ğŸ“\0\0\0\0K\0\0\0\0\0\0\0p?zdëx\0\0\2\4\0\0>\27Ó¬b ®\v&\0\0\0open_file_folder | open file folder | \0\0+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0?\27Ó¬œ\30Æ€\4\0\0\0ğŸ“‚\0\0\0\0K\0\0\0\0\0\0\0ˆøidëx\0\0\2\4\0\0@\27Ó¬‰Wòï\"\0\0\0page_with_curl | page with curl | \0\0ëøıÿ+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0A\27Ó¬\17›\6\6\4\0\0\0ğŸ“ƒ\0\0\0\0S\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0B\27Ó¬µô~\18*\0\0\0page_facing_up | page facing up | document\0\0ëøıÿ+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0C\27Ó¬™\31O\127\4\0\0\0ğŸ“„\0\0\0\0K\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0D\27Ó¬\127D\tñ#\0\0\0date | calendar | calendar schedule\0ëøıÿ+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0E\27Ó¬š†\15@\4\0\0\0ğŸ“…\0\0\0\0K\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0F\27Ó¬²Ø˜í'\0\0\0calendar | tear-off calendar | schedule\0+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0G\27Ó¬Ò\t\bÄ\4\0\0\0ğŸ“†\0\0\0\0C\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0H\27Ó¬¯™,®\26\0\0\0card_index | card index | \0\0ëøıÿ+\0\0\0\0\0\0\0èÛddëx\0\0\2\4\0\0I\27Ó¬OHI\4\0\0\0ğŸ“‡\0\0\0\0c\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0J\27Ó¬ô½ÜZ;\0\0\0chart_with_upwards_trend | chart increasing | graph metrics\0\0\0\0\0+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0K\27Ó¬×\19‘Ê\4\0\0\0ğŸ“ˆ\0\0\0\0c\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0L\27Ó¬£_MO=\0\0\0chart_with_downwards_trend | chart decreasing | graph metrics\0\0\0+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0M\27Ó¬XTÑS\4\0\0\0ğŸ“‰\0\0\0\0K\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0N\27Ó¬ƒX-\4%\0\0\0bar_chart | bar chart | stats metrics\0\0\0+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0O\27Ó¬Ğ×\tÙ\4\0\0\0ğŸ“Š\0\0\0\0C\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0P\27Ó¬ã¦ÖÛ\24\0\0\0clipboard | clipboard | \0\0\0\0ëøıÿ+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0Q\27Ó¬U]J^\4\0\0\0ğŸ“‹\0\0\0\0C\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0R\27Ó¬\28„WE\28\0\0\0pushpin | pushpin | location\0\0\0\0+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0S\27Ó¬İÙ’ç\4\0\0\0ğŸ“Œ\0\0\0\0S\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0T\27Ó¬³²ğ(\0\0\0round_pushpin | round pushpin | location\0\0\0\0\0\0\0\0+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0\26·½^\\Óp\4\0\0\0ğŸ“\0\0\0\0C\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0\27·½Ê\f1ë\24\0\0\0paperclip | paperclip | \0\0\0\0ëøıÿ+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0\28·½Öå\vî\4\0\0\0ğŸ“\0\0\0\0K\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0\29·½…œ\24·\"\0\0\0straight_ruler | straight ruler | \0\0\0\0\0\0+\0\0\0\0\0\0\0008)hdëx\0\0\2\4\0\0\30·½SkLs\4\0\0\0ğŸ“\0\0\0\0K\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0\31·½[8y\16&\0\0\0triangular_ruler | triangular ruler | \0\0+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0 ·½Û\127”¤\4\0\0\0ğŸ“\0\0\0\0K\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0!·½\16!¼‰ \0\0\0bookmark_tabs | bookmark tabs | \0\0\0\0ëøıÿ+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0\"·½\\\0Ö-\4\0\0\0ğŸ“‘\0\0\0\0;\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0#·½§¼b\0\18\0\0\0ledger | ledger | \0\0ëøıÿ+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0$·½Ô\127\r³\4\0\0\0ğŸ“’\0\0\0\0;\0\0\0\0\0\0\0˜ÅKdëx\0\0\2\4\0\0%·½Bs2\30\22\0\0\0notebook | notebook | \0\0+\0\0\0\0\0\0\0 ‘Çdëx\0\0\2\4\0\0&·½I\5O8\4\0\0\0ğŸ““\0\0\0\0k\0\0\0\0\0\0\0\bÓ_dëx\0\0\2\4\0\0'·½ka4B\0\0\0notebook_with_decorative_cover | notebook with decorative cover | \0\0ëøıÿ+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0(·½Ñ‘–±\4\0\0\0ğŸ“”\0\0\0\0C\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0)·½RÍVÁ\28\0\0\0closed_book | closed book | \0\0\0\0+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0*·½R\16Ø:\4\0\0\0ğŸ“•\0\0\0\0C\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0+·½)½\29N\29\0\0\0book open_book | open book | \0\0\0+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0,·½\n¢O·\4\0\0\0ğŸ“–\0\0\0\0C\0\0\0\0\0\0\0èÅ\15eëx\0\0\2\4\0\0-·½À?\18\24\26\0\0\0green_book | green book | \0\0ëøıÿ+\0\0\0\0\0\0\0\0168ydëx\0\0\2\4\0\0.·½‡\31‘<\4\0\0\0ğŸ“—\0\0\0\0C\0\0\0\0\0\0\0Hdwdëx\0\0\2\4\0\0/·½›Ûˆq\24\0\0\0blue_book | blue book | \0\0\0\0ëøıÿ+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0000·½\15ŒØ\29\4\0\0\0ğŸ“˜\0\0\0\0C\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0001·½o\21]\127\28\0\0\0orange_book | orange book | \0\0\0\0+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0002·½\4\25§\4\0\0\0ğŸ“™\0\0\0\0;\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0003·½S\26lÔ\23\0\0\0books | books | library\0+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0004·½\bˆQ¬\4\0\0\0ğŸ“š\0\0\0\0C\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0005·½\t_Ğ™\26\0\0\0name_badge | name badge | \0\0ëøıÿ+\0\0\0\0\0\0\0ptSdëx\0\0\2\4\0\0006·½\21“1\4\0\0\0ğŸ“›\0\0\0\0C\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0007·½Ïb¯ø\26\0\0\0scroll | scroll | document\0\0ëøıÿ+\0\0\0\0\0\0\0\bxÆdëx\0\0\2\4\0\0008·½\21ŠÚº\4\0\0\0ğŸ“œ\0\0\0\0K\0\0\0\0\0\0\0X\22Xdëx\0\0\2\4\0\0009·½tñn\a\"\0\0\0memo pencil | memo | document note\0\0ëøıÿ+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0:·½–\20\28D\4\0\0\0ğŸ“\0\0\0\0[\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0;·½\20œóA4\0\0\0telephone_receiver | telephone receiver | phone call\0\0\0\0+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0<·½\14–SÁ\4\0\0\0ğŸ“\0\0\0\0;\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0=·½\0‘g\16\0\0\0pager | pager | \0\0\0\0ëøıÿ+\0\0\0\0\0\0\0HIcdëx\0\0\2\4\0\0>·½Œã–F\4\0\0\0ğŸ“Ÿ\0\0\0\0;\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0?·½Â*;\29\20\0\0\0fax | fax machine | \0\0\0\0+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0@·½\20Ş\23\4\0\0\0ğŸ“ \0\0\0\0K\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0A·½Òmj³&\0\0\0satellite | satellite antenna | signal\0\0+\0\0\0\0\0\0\0°.xdëx\0\0\2\4\0\0B·½•\24\31¡\4\0\0\0ğŸ“¡\0\0\0\0S\0\0\0\0\0\0\0ˆÀ_dëx\0\0\2\4\0\0C·½º·ÈM(\0\0\0loudspeaker | loudspeaker | announcement\0\0\0\0ëøıÿ+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0D·½\rW&\4\0\0\0ğŸ“¢\0\0\0\0;\0\0\0\0\0\0\0˜\tKdëx\0\0\2\4\0\0E·½Š=?™\19\0\0\0mega | megaphone | \0ëøıÿ+\0\0\0\0\0\0\0X›ddëx\0\0\2\4\0\0F·½‚\29˜«\4\0\0\0ğŸ“£\0\0\0\0C\0\0\0\0\0\0\0H˜Qdëx\0\0\2\4\0\0G·½oÎ\6\28\0\0\0outbox_tray | outbox tray | \0\0\0\0+\0\0\0\0\0\0\0@¨Ædëx\0\0\2\4\0\0H·½\n¢à$\4\0\0\0ğŸ“¤\0\0\0\0C\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0I·½³\14lÙ\26\0\0\0inbox_tray | inbox tray | \0\0\0\0\0\0+\0\0\0\0\0\0\0hÆQdëx\0\0\2\4\0\0J·½‹ !®\4\0\0\0ğŸ“¥\0\0\0\0C\0\0\0\0\0\0\0XF`dëx\0\0\2\4\0\0K·½7Wv\28\0\0\0package | package | shipping\0\0\0\0+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0L·½Ã©\25,\4\0\0\0ğŸ“¦\0\0\0\0C\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0M·½7êÄ½\24\0\0\0email e-mail | e-mail | \0\0\0\0ëøıÿ+\0\0\0\0\0\0\0°¸jdëx\0\0\2\4\0\0N·½@ÿY±\4\0\0\0ğŸ“§\0\0\0\0S\0\0\0\0\0\0\0\16NNdëx\0\0\2\4\0\0O·½8ô\"K(\0\0\0incoming_envelope | incoming envelope | \0\0\0\0ëøıÿ+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0P·½Èƒ¢2\4\0\0\0ğŸ“¨\0\0\0\0S\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0Q·½˜N¥„,\0\0\0envelope_with_arrow | envelope with arrow | \0\0\0\0+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0R·½Iôâ»\4\0\0\0ğŸ“©\0\0\0\0[\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0S·½õ\0054R4\0\0\0mailbox_closed | closed mailbox with lowered flag | \0\0\0\0+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0T·½Á‡\27A\4\0\0\0ğŸ“ª\0\0\0\0S\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0U·½Xà†L,\0\0\0mailbox | closed mailbox with raised flag | \0\0\0\0+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0V·½F\r\\Æ\4\0\0\0ğŸ“«\0\0\0\0[\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0W·½îü6P4\0\0\0mailbox_with_mail | open mailbox with raised flag | \0\0\0\0+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0X·½Îy¤O\4\0\0\0ğŸ“¬\0\0\0\0c\0\0\0\0\0\0\0x7ldëx\0\0\2\4\0\0Y·½¥\127Ü÷8\0\0\0mailbox_with_no_mail | open mailbox with lowered flag | \0\0\0\0\0\0\0\0+\0\0\0\0\0\0\0\16Tdëx\0\0\2\4\0\0Z·½OüäØ\4\0\0\0ğŸ“­\0\0\0\0;\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0[·½ü+é\20\0\0\0postbox | postbox | \0\0\0\0+\0\0\0\0\0\0\0x\19Sdëx\0\0\2\4\0\0\\·½ÇU\29V\4\0\0\0ğŸ“®\0\0\0\0C\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0]·½ËÃ3½\28\0\0\0postal_horn | postal horn | \0\0\0\0+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0^·½DÛ]Û\4\0\0\0ğŸ“¯\0\0\0\0C\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0_·½\30Ñ™z\29\0\0\0newspaper | newspaper | press\0\0\0+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0`·½Ì_¦L\4\0\0\0ğŸ“°\0\0\0\0S\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0a·½d\18r·)\0\0\0iphone | mobile phone | smartphone mobile\0\0\0ëøıÿ+\0\0\0\0\0\0\0PoPdëx\0\0\2\4\0\0b·½MàæÕ\4\0\0\0ğŸ“±\0\0\0\0[\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0c·½èƒÊ\0021\0\0\0calling | mobile phone with arrow | call incoming\0\0\0ëx\0\0+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0d·½Åo\31[\4\0\0\0ğŸ“²\0\0\0\0K\0\0\0\0\0\0\0`ANdëx\0\0\2\4\0\0e·½Péj°\"\0\0\0vibration_mode | vibration mode | \0\0ëøıÿ+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0f·½:õ_à\4\0\0\0ğŸ“³\0\0\0\0C\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0m·½—\28Îz\23\0\0\0camera | camera | photo\0@\0\0\0\0\0\0\0K\0\0\0\0\0\0\0¸ópdëx\0\0\2\vÿ\0ëx\0\0\0\0\0\0\0\0\0\0à.Ådëx\0\0\16xndëx\0\0Ø4\15eëx\0\0\0\0\0\0\0\0\0\0Ø4\15eëx\0\0;\0\0\0\0\0\0\0 /Ådëx\0\0\2\5\1\0ëx\0\0\0ÔÆdëxúÿ‚Ådëx\0\0ˆµÆdëx\0\0\b‹na\0\0\0\0+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0ş\14{ÆšA\15.\5\0\0\0level\0\0\0+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0ÿ\14{ÆTm\20=\4\0\0\0warn\0\0\0\0K\0\0\0\0\0\0\0èœÅdëx\0\0\2\v\0\0ëx\0\0\0\0\0\0\0\0\0\0008Ömdëx\0\0\0\0\0\0\0\0\0\0È\22cëx\0\0\0\0\0\0\1\0\0\0ø\22cëx\0\0;\0\0\0\0\0\0\0 6Ædëx\0\0\2\5\1\1ëx\0\0000Ådëøûÿ‚Ådëx\0\0X¶Ædëx\0\0\b‹no\0\0\0\0+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0\17zu§ætñ­\a\0\0\0profile\0C\0\0\0\0\0\0\0000Ådëx\0\0\2\b\0\2ëx\0\0xM\15eëx\0\0\0ÔÆdëx\0\0 Ñndëx\0\0H¶Ædëx\0\0‚Ådëx\0\0C\0\0\0\0\0\0\0HÔÆdëx\0\0\2\b\0\2ëx\0\0xM\15eëx\0\0Øûndëx\0\0\24õndëx\0\0‚Ådëx\0\0 ‡\16eëx\0\0003\0\0\0\0\0\0\0 ¤Wdëx\0\0\2\4\0\0\18zu§¡›÷§\n\0\0\0autoremove\0\0\0\0\0\0+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0\19zu§`¸Ï\a\0\0\0_packer\0;\0\0\0\0\0\0\0ÿÿÿÿÿÿÿÿ\b•\16eëøıÿ˜·Ædëx\0\0ÿÿÿÿÿÿÿÿ ñndëøıÿ\0\0\0\0\0\0\0\0+\0\0\0\0\0\0\0ø1Ndëx\0\0\2\4\0\0\21zu§^[„\5\5\0\0\0rocks\0\0\0;\0\0\0\0\0\0\0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ(%Èdëøıÿÿÿÿÿÿÿşÿÿÿÿÿÿÿÿÿ8\0\0\0\0\0\0\0+\0\0\0\0\0\0\0(1`dëx\0\0\2\4\0\0\23zu§%÷J[\5\0\0\0clean\0\0\0K\0\0\0\0\0\0\0\16\127Ædëx\0\0\2\v\0\0ëx\0\0\0\0\0\0\0\0\0\0¨\6Tdëx\0\0\0\0\0\0\0\0\0\0008Uedëx\0\0\0\0\0\0\15\0\0\0ÈUedëx\0\0;\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0\25zu§VWÌç\b\0\0\0handlers\0\0\0\0ëøıÿ8\0\0\0\0\0\0\0+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0\24zu§cXaØ\a\0\0\0compile\0003\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0\26zu§Qôõ»\f\0\0\0plugin_types\0\0\0\0003\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0\27zu§Ø«\\\f\0\0\0plugin_utils\0\0\0\0;\0\0\0\0\0\0\0è¶Ædëx\0\0\2\b\0\1ëx\0\0xM\15eëx\0\0(şndëx\0\0@ündëx\0\0€¹Ædëx\0\0K\0\0\0\0\0\0\0°…\16eëx\0\0\2\5\1\1ëx\0\0è¶ÆdëøûÿxµÆdëx\0\0¹Ædëx\0\0\b‹ntëx\0\0\0\0\0\0\0\0\0\0H\0\0\0\0\0\0\0003\0\0\0\0\0\0\0@tÅdëx\0\0\2\b\0\0ëx\0\0xM\15eëx\0\0`òxdëx\0\0àñxdëx\0\0;\0\0\0\0\0\0\0ØµÆdëøıÿ°µÆdëøıÿ\0\0\0\0\0\0\0\0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ\0\0\0\0\0\0\0\0;\0\0\0\0\0\0\0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ(%Èdëøıÿÿÿÿÿÿÿşÿÿÿÿÿÿÿÿÿ8\0\0\0\0\0\0\0+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0\31zu§²zvâ\a\0\0\0packer.\0+\0\0\0\0\0\0\0 >bdëx\0\0\2\4\0\0 zu§êàk\a\3\0\0\0cfg\0\0\0\0\0K\0\0\0\0\0\0\0ØŒjdëx\0\0\2\v\0\0ëx\0\0\0\0\0\0\0\0\0\0ˆ‘ldëx\0\0\0\0\0\0\0\0\0\0ÈÒpdëx\0\0\0\0\0\0\3\0\0\0(Ópdëx\0\0003\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0\"zu§q\f\18L\v\0\0\0deep_extend\0ëøıÿ+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0$zu§\28e|\2\2\0\0\0:p\0\0\0\0\0\0003\0\0\0\0\0\0\0xˆidëx\0\0\2\4\0\0%zu§›zI5\r\0\0\0get_separator\0\0\0+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0&zu§ÌÏm†\1\0\0\0$\0\0\0\0\0\0\0003\0\0\0\0\0\0\0˜GTdëx\0\0\2\4\0\0'zu§m’\16¥\b\0\0\0pack_dir\0\0\0\0\0\0\0\0+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0(zu§§`v+\a\0\0\0opt_dir\0003\0\0\0\0\0\0\0¸WSdëx\0\0\2\4\0\0)zu§Øàwè\t\0\0\0start_dir\0\0\0\0\0\0\0003\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0*zu§ÿ\25~€\v\0\0\0ensure_dirs\0\0\0\0\0C\0\0\0\0\0\0\0Ğ\19Ldëx\0\0\2\4\0\0¸öc\5†ş¥g\28\0\0\0md_format_text_wrapping_wrap\0\0\0\0+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0¹öc\5`\21\18q\4\0\0\0ó°´\0\0\0\0;\0\0\0\0\0\0\0(ëVdëx\0\0\2\4\0\0ºöc\5\5\22?*\17\0\0\0md_format_textbox\0\0\0ÿÿÿÿ+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0»öc\5ÜšNö\4\0\0\0ó°´‘\0\0\0\0003\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0¼öc\5•Ğê6\15\0\0\0md_fountain_pen\0+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0½öc\5g\31“\127\4\0\0\0ó°´’\0\0\0\0;\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0¾öc\5íK\0ï\19\0\0\0md_fountain_pen_tip\0\0\0\0\0+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0¿öc\5óŸÿ\0\4\0\0\0ó°´“\0\0\0\0;\0\0\0\0\0\0\00084cdëx\0\0\2\4\0\0Àöc\5U—¤)\23\0\0\0md_heart_broken_outline\0+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0Áöc\5b%\16€\4\0\0\0ó°´”\0\0\0\0003\0\0\0\0\0\0\0¨¥Kdëx\0\0\2\4\0\0Âöc\5“t:\f\0\0\0md_home_city\0\0\0\0+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0Ãöc\5Ş¢L\5\4\0\0\0ó°´•\0\0\0\0;\0\0\0\0\0\0\0@xLdëx\0\0\2\4\0\0Äöc\5Á8ş)\20\0\0\0md_home_city_outline\0\0\0\0+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0Åöc\5a7‘–\4\0\0\0ó°´–\0\0\0\0003\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0Æöc\5ÒOb\n\0\0\0md_hubspot\0\0\0\0ğ?C\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0Çöc\5\rz\23\4\0\0\0ó°´—\0\0\0\0\0\0\0\0\0@@h\17Tdëøıÿ@\0\0\0\0\0\0\0\3\3\0\0\0\0\0\0 ÷bdëx\0\0\2\a\1\aN\0\0\0\0\0\0\0\0\0\0\0Hû9dëx\0\0ØÁÆdëx\0\0àÁÆdëx\0\0\25\0\0\0\1\0\0\0İ\2\0\0\2 \0\0Àtddëx\0\0¾\0\0\0\23\0\0\0äÁÆdëx\0\0001ÂÆdëx\0\0EÂÆdëx\0\0Y\a\0\0\14\0\0\0X\1\1€4\0\0\0-\1\0\0006\2\1\0009\2\2\2'\4\3\0-\5\1\0\18\6\0\0B\2\4\2=\2\0\0016\1\4\0'\3\5\0B\1\2\2\18\3\1\0009\1\6\1B\1\2\1-\1\0\0009\1\0\0019\1\a\0019\1\b\1\15\0\1\0X\2\5€6\1\4\0'\3\t\0B\1\2\0029\1\n\1B\1\1\0016\1\1\0009\1\v\1B\1\1\0029\1\f\1)\2\n\0\3\2\1\0X\1\14€6\1\1\0009\1\r\0019\1\14\1'\3\15\0B\1\2\2\b\1\0\0X\1\a€6\1\4\0'\3\16\0B\1\2\2\18\3\1\0009\1\17\1B\1\2\1X\1\16€6\1\1\0009\1\v\1B\1\1\0029\1\f\1)\2\n\0\3\2\1\0X\1\3€6\1\18\0'\3\19\0B\1\2\0016\1\4\0'\3\20\0B\1\2\2\18\3\1\0009\1\17\1B\1\2\1-\1\0\0009\1\0\0019\1\21\0019\1\22\1\15\0\1\0X\2\5€6\1\4\0'\3\23\0B\1\2\0029\1\24\1B\1\1\1K\0\1\0°êÇdëx\0\0xêÇdëx\0\0èkdëx\0\0°ÌÈdëx\0\0`öÇdëx\0\0àéÇdëx\0\0Pu\15eëx\0\0000öÇdëx\0\0€»mdëx\0\0P»mdëx\0\0À:Ædëx\0\0ph\15eëx\0\0 «kdëx\0\0ØË\15eëx\0\0 »mdëx\0\0àºmdëx\0\0¸Ådëx\0\0H—jdëx\0\0°ºmdëx\0\0xºmdëx\0\0Ø\127\15eëx\0\0H\29Èdëx\0\0@IÈdëx\0\0HÀÇdëx\0\0ˆ€\15eëx\0\0\0\0\0\0\0\0\0\0\1À\2À\1\1\1\2\2\2\2\2\2\2\2\4\4\4\4\4\4\5\5\5\5\5\5\6\6\6\6\6\t\t\t\t\t\t\t\t\t\t\t\t\t\t\n\n\n\n\n\n\n\f\f\f\f\f\f\f\r\15\r\17\17\17\17\17\17\20\20\20\20\20\20\21\21\21\21\21\23saga\0default_config\0opts\0\0N\0x\0\0ÿÿÿÿÿÿşÿ\b•\16eëøıÿ\0\3\0\0\0\0\0\0003\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0+zu§ŸA¦g\r\0\0\0make_commands\0\0\0+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0,zu§ZmjQ\5\0\0\0mkdir\0\0\0+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\"\4\0\0-zu§§‹\5L\1\0\0\0p\0\0\0\0\0\0\0;\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0.zu§\1’t‹\16\0\0\0Couldn't create \0\0\0\0\0\0\0\0K\0\0\0\0\0\0\0€ˆÅdëx\0\0\2\v\0\0ëx\0\0\0\0\0\0\0\0\0\0 gmdëx\0\0\0\0\0\0\0\0\0\0xÁÅdëx\0\0\0\0\0\0\1\0\0\0xÁÅdëx\0\0;\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0:zu§\15\23L§\t\0\0\0use_rocks\0\0\0ëøıÿ8\0\0\0\0\0\0\0»\0\0\0\0\0\0\0 UPdëx\0\0\2\4\0\0/zu§<&ûm\0\0\0command! -nargs=+ -complete=customlist,v:lua.require'packer.snapshot'.completion.create PackerSnapshot  lua require('packer').snapshot(<f-args>)\0\0\0\0\0\0\0\0Ã\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0001zu§bu\29\6\0\0\0command! -nargs=+ -complete=customlist,v:lua.require'packer.snapshot'.completion.snapshot PackerSnapshotDelete lua require('packer.snapshot').delete(<f-args>)\0\0Ë\0\0\0\0\0\0\0000‡Ædëx\0\0\2\a\0\1\b\0\0\0°ÅÆdëx\0\0008Äydëx\0\0¨ÅÆdëx\0\0¨ÅÆdëx\0\0\0\0\0\0\0\0\0\0¼\0\0\0\3 \0\0\bxÆdëx\0\0¢\0\0\0\4\0\0\0°ÅÆdëx\0\0·ÅÆdëx\0\0ÛÅÆdëx\0\0Y\1\0\0004\0\0\0.\0\0\0004\0\0\0.\1\0\0004\0\0\0.\2\0\0K\0\1\0\6€\a€\b€\0\0\1\1\2\2\3\3\4plugins\0plugin_specifications\0rocks\0\0\0\0\0\0«\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0002zu§¬\0q%‚\0\0\0command! -nargs=* -complete=customlist,v:lua.require'packer'.plugin_complete PackerInstall lua require('packer').install(<f-args>)\0\0\0\0\0\0«\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0003zu§ˆd\18B€\0\0\0command! -nargs=* -complete=customlist,v:lua.require'packer'.plugin_complete PackerUpdate lua require('packer').update(<f-args>)\0\0\0\0\0\0\0\0£\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0004zu§\29q,Ó|\0\0\0command! -nargs=* -complete=customlist,v:lua.require'packer'.plugin_complete PackerSync lua require('packer').sync(<f-args>)\0\0\0\0k\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0008zu§\29@é¦G\0\0\0command! PackerProfile           lua require('packer').profile_output()\0»\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0009zu§\6ê4G•\0\0\0command! -bang -nargs=+ -complete=customlist,v:lua.require'packer'.loader_complete PackerLoad lua require('packer').loader(<f-args>, '<bang>' == '!')\0\0\0\v\3\0\0\0\0\0\0\0\0\0\0\0\0002@0Õxdëøıÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0003@Èimdëøıÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0004@ğimdëøıÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0005@ jmdëøıÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0006@Pjmdëøıÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0007@xjmdëøıÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0008@ jmdëøıÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0009@Ğjmdëøıÿ\0\0\0\0\0\0\0\0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ\0\0\0\0\0\0\0\0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ\0\0\0\0\0\0\0\0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ\0\0\0\0\0\0\0\0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ\0\0\0\0\0\0\0\0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ\0\0\0\0\0\0\0\0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ\0\0\0\0\0\0\0\0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0ğ?°—mdëøıÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0@X˜mdëøıÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\b@ Ôxdëøıÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\16@ ˜mdëøıÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\20@€˜mdëøıÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\24@PÔxdëøıÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\28@€Õxdëøıÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0 @€Ôxdëøıÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\"@\24\30ndëøıÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0$@@\30ndëøıÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0&@p\30ndëøıÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0(@˜\30ndëøıÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0*@À\30ndëøıÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0,@è\30ndëøıÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0.@¸Ôxdëøıÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0000@àÔxdëøıÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0001@\bÕxdëøıÿ\0\0\0\0\0\0\0\0;\0\0\0\0\0\0\0ÿÿÿÿÿÿÿÿÈ™Ædëøıÿ\0\0\0\0\0\0\0\0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ\0\0\0\0\0\0\0\0Û\0\0\0\0\0\0\0°¹ndëx\0\0\2\a\1\4\n\0\0\0hÌÆdëx\0\0xÓldëx\0\0àÌÆdëx\0\0àÌÆdëx\0\0\3\0\0\0\0\0\0\0Ê\0\0\0\1 \0\0 ìÅdëx\0\0\19\0\0\0\5\0\0\0äÌÆdëx\0\0íÌÆdëx\0\0öÌÆdëx\0\0Y\4\0\0006\1\0\0\18\3\0\0B\1\2\2\a\1\1\0X\1\3€-\1\0\0009\1\2\0018\0\0\1L\0\2\0(\1Èdëx\0\0hi\15eëx\0\0Pk\15eëx\0\0\0À\0\0\1\1\1\1\1\2\2\2\4protocol\0severity\0\0\n\0\0\0\0\0\0\0C\0\0\0\0\0\0\0à™ydëøıÿ¸™ydëøıÿ\0\0\0\0\0\0\0\0\bj\15eëøıÿ(¬Çdëøıÿ\16ÍÆdëx\0\0@\0\0\0\0\0\0\0s\0\0\0\0\0\0\0Hìxdëx\0\0\2\v\0\3ëx\0\0ÍÆdëx\0\0€›Ådëx\0\0\0\0\0\0\0\0\0\0Ø4\15eëx\0\0\3\0\0\0\0\0\0\0Ø4\15eëx\0\0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ0•\16eëøıÿnvim/sitp\0\0\0\0\0\0\0003\0\0\0\0\0\0\0\24Åydëx\0\0\2\b\0\0ëx\0\0xM\15eëx\0\0ØÃydëx\0\0\b#ydëx\0\0;\0\0\0\0\0\0\0¸ôxdëx\0\0\2\b\0\1ëx\0\0xM\15eëx\0\0ØkÅdëx\0\0 ÕÆdëx\0\0ÈpÅdëx\0\0›\0\0\0\0\0\0\0 Ãydëx\0\0\2\a\1\1\3\0\0\0—\v–ï\v\0\0\0Øèadëx\0\0 ÎÆdëx\0\0 ÎÆdëx\0\0\0\0\0\0\0\0\0\0\0\0\0\1 \0\0ÀvÆdëx\0\0\v\0\0\0\2\0\0\0¤ÎÆdëx\0\0¦ÎÆdëx\0\0­ÎÆdëx\0\0Y\1\0\0.\0\0\0K\0\1\0\0\0\0\0\6€\0\0\1\2config\0_config\0\0\3\0+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0@zu§À>¦¤\4\0\0\0spec\0\0\0\0+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0—Ù\19ÉÌŞÈ\5\0\0\0focus\0\0\0c\0\0\0\0\0\0\0Ø^ndëx\0\0\2\v\0\3ëx\0\0PÏÆdëx\0\0(\\mdëx\0\0\0\0\0\0\0\0\0\0Ø4\15eëx\0\0\3\0\0\0\0\0\0\0Ø4\15eëx\0\0ÿÿÿÿÿÿÿÿ¸Şpdëøıÿ@ßpdëøıÿC\0\0\0\0\0\0\0è5Ædëx\0\0\2\5\1\1ëx\0\0p\\mdëøûÿ\24_ndëx\0\0€ÏÆdëx\0\0\b‹nDëx\0\0@\0\0\0\0\0\0\0+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0Bzu§à_Â6\4\0\0\0line\0\0\0\0003\0\0\0\0\0\0\0 )Ldëx\0\0\2\4\0\0c\6“\17nêÍN\v\0\0\0isdirectory\0\0\0\0\0;\0\0\0\0\0\0\0°xÆdëx\0\0\2\5\1\0ëx\0\0ÿÿÿÿÿ\127ÿÿxxÆdëx\0\0\24ĞÆdëx\0\0 Ånd\0\0\0\0;\0\0\0\0\0\0\0\bĞÆdëx\0\0\2\b\0\1ëx\0\0xM\15eëx\0\0@$kdëx\0\0 Éndëx\0\0€ópdëx\0\0#\0\0\0\0\0\0\0ÿÿÿÿÿÿÿÿh=aëøıÿPk}aëøıÿ;\0\0\0\0\0\0\0ÿÿÿÿÿÿÿÿÈ™Ædëøıÿ\0\0\0\0\0\0\0\0ÿÿÿÿÿÿÿÿĞ{Ædëøıÿ\0\0\0\0\0\0\0\0C\0\0\0\0\0\0\0ÿÿÿÿÿÿÿÿ \6Ædëøıÿ\0\0\0\0\0\0\0\0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ\0\0\0\0\0\0\0\0@\0\0\0\0\0\0\0;\0\0\0\0\0\0\0ÿÿÿÿÿÿÿÿ\16™\15eëøıÿ\0\0\0\0\0\0\0\0ÿÿÿÿÿÿÿÿ€™\15eëøıÿ\0\0\0\0\0\0\0\0+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0´\6“\17§)>’\5\0\0\0SHELL\0\0\0£\0\0\0\0\0\0\0ø7Ædëx\0\0\2\a\1\6\6\0\0\0 \0\0\0\0\0\0\0 WÆdëx\0\0\0ÒÆdëx\0\0\0ÒÆdëx\0\0\2\0\0\0\0\0\0\0\0\0\0\0 \0\0¨0Ædëx\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Y\6\0\0006\1\0\0\18\3\0\0)\4\1\0009\5\1\0D\1\4\0(%Èdëx\0\0Ğo\15eëx\0\0 \0\0\0\0\0\0\0\3\1\0\0\0\0\0\0˜\nÇdëx\0\0\2\a\0\4\f\0\0\0\0\0\0\0\0\0\0\0HÀydëx\0\0ØÒÆdëx\0\0ØÒÆdëx\0\0\6\0\0\0\0\0\0\0ô\0\0\0\1 \0\0\bxÆdëx\0\0h\1\0\0\5\0\0\0ÜÒÆdëx\0\0çÒÆdëx\0\0ıÒÆdëx\0\0Y\4\0\0-\0\0\0'\2\0\0B\0\2\0026\1\1\0009\1\2\1'\3\3\0B\1\2\0019\1\4\0'\3\5\0B\1\2\1K\0\1\0Ğ\vÇdëx\0\0°¸\15eëx\0\0ˆ\vÇdëx\0\0x|Èdëx\0\0HÀÇdëx\0\0(³\15eëx\0\0\nÀÿÿ\1\1\1\3\3\3\3\4\4\4\5require_and_configure\0log\0\4\b\0\0\0\0\0K\0\0\0\0\0\0\0€Ædëx\0\0\2\v\0\0\0\0\0\0\0\0\0\0\0\0\0\0\24ûÆdëx\0\0\0\0\0\0\0\0\0\0XÓÆdëx\0\0\0\0\0\0\1\0\0\0pÓÆdëx\0\0;\0\0\0\0\0\0\0ÿÿÿÿÿÿÿÿÀÎÆdëøıÿpÓÆdëx\0\0ÿÿÿÿÿÿÿÿ°ÏÆdëøıÿ\0\0\0\0\0\0\0\0K\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0Dzu§nk~\v \0\0\0No plugin name provided at line \0\0\0\0\0\0\0\0+\0\0\0\0\0\0\0`/Vdëx\0\0\2\4\0\0Ezu§R`±·\1\0\0\0!\0\0\0\0\0\0\0K\0\0\0\0\0\0\0(PÆdëx\0\0\2\v\0\0ëx\0\0¨Ecëx\0\0`­pdëx\0\0\bàÈdëx\0\0Ø4\15eëx\0\0\3\0\0\0\0\0\0\0Ø4\15eëx\0\0003\0\0\0\0\0\0\0PàÈdëx\0\0\2\b\0\0ëx\0\0xM\15eëx\0\0h…\16eëx\0\0pìndëx\0\0{\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0MïşA3wí0T\0\0\0@/home/paul/.local/share/nvim/site/pack/packer/start/packer.nvim/lua/packer/util.lua\0\0\0\0K\0\0\0\0\0\0\0@¸Ædëx\0\0\2\b\0\2ëx\0\0xM\15eëx\0\0\b\4Ædëx\0\0Îfdëx\0\0°\rUdëx\0\0è\rUdëx\0\0H\0\0\0\0\0\0\0ã\0\0\0\0\0\0\0¸õÆdëx\0\0\2\a\0\1\r\0\0\0\0\0\0\0\0\0\0\0ØkÅdëx\0\0øÕÆdëx\0\0øÕÆdëx\0\0\4\0\0\0\0\0\0\0Ö\0\0\0\1 9\0xÔÆdëx\0\0002\0\0\0\5\0\0\0üÕÆdëx\0\0\bÖÆdëx\0\0\rÖÆdëx\0\0[\0019\0-\0\0\0009\0\0\0\15\0\0\0X\1\6€-\0\0\0009\0\1\0\14\0\0\0X\0\2€'\0\2\0L\0\2\0'\0\3\0L\0\2\0\19\0\0\0(ĞÇdëx\0\0\24øÆdëx\0\0pøÆdëx\0\0(ôÆdëx\0\0\0À\t\0\1\1\1\1\1\1\1\1\2\2\4\4util\0\0\0\0;\0\0\0\0\0\0\0\b!Ndëx\0\0\2\4\0\0ı%vìÕ”8ï\18\0\0\0strip_trailing_sep\0\0ëx\0\0S\1\0\0\0\0\0\0@ÜÈdëx\0\0\2\a\1\f\24\0\0\0\0\0\0\0\0\0\0\0¨ÙÈdëx\0\0(×Ædëx\0\0000×Ædëx\0\0\2\0\0\0\1\0\0\0009\1\0\0\1\1\0\0000\fÆdëx\0\0(\0\0\0\18\0\0\0004×Ædëx\0\0K×Ædëx\0\0R×Ædëx\0\0Y\f\0\0-\1\0\0\21\1\1\0\t\1\0\0X\1\2€\18\1\0\0002\0\16€-\1\0\0\21\1\1\0004\2\0\0006\3\0\0-\5\0\0B\3\2\4X\6\5€3\b\1\0\18\t\a\0\18\v\b\0B\t\2\0012\6\0€E\6\3\3R\6ù\1272\0\0€K\0\1\0D\1\1\0@ÜÈdëx\0\0¸l\15eëx\0\0\0\0\0\0\0\0\0\0\0À\15e\1\1\1\1\2\2\4\4\5\6\6\6\6\14\16\16\16\16\6\6\18\18\2thunks\0s\0\0\23to_go\0\t\14results\0\1\r\4\3\b\5\0\b\6\0\bi\0\1\4thunk\0\0\4callback\0\1\3\0\0\0\0\a\0\0\0P\1\0\0\0\0\0\0\3\1\0\0\0\0\0\0(eydëx\0\0\2\a\2\14\16\0\0\0\18\v\0\0\6\0\0\0\bòÆdëx\0\0`ØÆdëx\0\0`ØÆdëx\0\0\3\0\0\0\0\0\0\0÷\0\0\0\0 \0\0xÔÆdëx\0\0\3\0\0\0\a\0\0\0`ØÆdëx\0\0oØÆdëx\0\0oØÆdëx\0\0Y\14\0\0004\2\0\0006\3\0\0\18\5\1\0B\3\2\4X\6\a€6\b\1\0009\b\2\b\18\n\2\0\18\v\0\0\18\r\a\0B\v\2\0A\b\1\1E\6\3\3R\6÷\127L\2\2\0\b‰\15eëx\0\0Xj\15eëx\0\0¸l\15eëx\0\0\1\2\2\2\2\3\3\3\3\3\3\3\2\2\6func\0\0\16seq\0\0\16result\0\2\14\4\3\n\5\0\n\6\0\n_\0\1\av\0\0\a\0\0;\0\0\0\0\0\0\0ÿÿÿÿÿÿÿÿ¸QÆdëøıÿ\0\0\0\0\0\0\0\0ÿÿÿÿÿÿÿÿ\16_Ædëøıÿ\0\0\0\0\0\0\0\0003\0\0\0\0\0\0\0 WÆdëx\0\0\2\b\0\0ëx\0\0xM\15eëx\0\0 WÆdëx\0\0ØÑÆdëx\0\0+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\"\4\0\0‹\4œ¶\26Ñb\22\3\0\0\0int\0\0\0\0\0;\0\0\0\0\0\0\0 ‰\16eëx\0\0\2\5\1\1ëx\0\0`vÅdëøûÿpÁydëx\0\0@ÙÆdëx\0\0ppyi\0\0\0\0K\0\0\0\0\0\0\0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ(%Èdëøıÿÿÿÿÿÿÿşÿÿÿÿÿÿÿÿÿ¨Sydëx\0\0Ğ’ydëx\0\0H\0\0\0\0\0\0\0;\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0\1&vì†t\31Ì\20\0\0\0get_plugin_full_name\0\0\0\0#\0\0\0\0\0\0\0ÿÿÿÿÿÿÿÿ\24Í‡aëøıÿpÍ‡aëøıÿ;\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0Fzu§?UÍ\21\0\0\0get_plugin_short_name\0\0\0C\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0Gzu§¸BdÒ\28\0\0\0\" is an invalid plugin name!\0\0\0\0003\0\0\0\0\0\0\0ˆ¸jdëx\0\0\2\4\0\0Hzu§¥7$\r\0\0\0from_requires\0\0\0003\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0Izu§‰®Qè\b\0\0\0Plugin \"\0\0\0\0\0\0\0\0;\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0Jzu§ĞïhĞ\23\0\0\0\" is used twice! (line \0+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0Kzu§dD!”\1\0\0\0)\0\0\0\0\0\0\0+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0Lzu§nS-\4\2\0\0\0as\0\0\0\0\0\0003\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0Mzu§©³}7\n\0\0\0The alias \0\0\0\0\0\0;\0\0\0\0\0\0\0 ¡Mdëx\0\0\2\4\0\0Nzu§\29Ë×l\16\0\0\0, specified for \0\0\0\0\0\0\0\0+\0\0\0\0\0\0\0\b`Ldëx\0\0\2\4\0\0Ozu§Á\29 è\4\0\0\0 at \0\0\0\0S\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0Pzu§Â\26—®(\0\0\0 is already used as another plugin name!\0\0\0\0\0\0\0\0003\0\0\0\0\0\0\0´Ldëx\0\0\2\4\0\0Qzu§÷1iã\n\0\0\0short_name\0\0\0\0\0\0003\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0Rzu§-TÉP\n\0\0\0manual_opt\0\0\0\0\0\0+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0O\4œ¶÷­İ)\3\0\0\0â– \0\0\0\0\0003\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0Tzu§\19lX\b\0\0\0opt_keys\0\0\0\0\0\0\0\0003\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0Uzu§;âD\a\f\0\0\0install_path\0\0\0\0+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0è]É¯/½¥\25\4\0\0\0ó±ˆŠ\0\0\0\0K\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0é]É¯Ù»\23®\"\0\0\0md_account_multiple_remove_outline\0\0\0\0\0\0+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0ê]É¯/Cæ¢\4\0\0\0ó±ˆ‹\0\0\0\0C\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0ë]É¯\21´fe\24\0\0\0md_magnify_remove_cursor\0\0\0\0ëøıÿ+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0ì]É¯ ğöM\4\0\0\0ó±ˆŒ\0\0\0\0C\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0í]É¯\24\4Z¾\25\0\0\0md_magnify_remove_outline\0\0\0\0\0\0\0+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0î]É¯(:/×\4\0\0\0ó±ˆ\0\0\0\0;\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0ï]É¯(C·#\18\0\0\0md_archive_outline\0\0\0\0\0\0+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0ğ]É¯)Áo`\4\0\0\0ó±ˆ\0\0\0\0;\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0ñ]É¯ÛšÊü\16\0\0\0md_battery_heart\0\0\0\0\0\0\0\0+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0ò]É¯)\3°£\4\0\0\0ó±ˆ\0\0\0\0C\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0ó]É¯/€´\v\24\0\0\0md_\0\vzindex\3\20\15trim_scope\nouter\24multiline_threshold\3\20\venable\2\22min_window_height\3\0\14max_lines\3\0\nsetup\23treesitter-context\frequire\0" },
    loaded = true,
    path = "/home/paul/.local/share/nvim/site/pack/packer/start/nvim-treesitter-context",
    url = "https://github.com/nvim-treesitter/nvim-treesitter-context"
  },
  ["nvim-web-devicons"] = {
    config = { "\27LJ\2\n}\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\btex\1\0\1\btex\0\1\0\3\tname\bZsh\ncolor\f#428850\ticon\bï«³\rset_icon\22nvim-web-devicons\frequire\0" },
    loaded = true,
    path = "/home/paul/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/paul/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["pest.vim"] = {
    loaded = true,
    path = "/home/paul/.local/share/nvim/site/pack/packer/start/pest.vim",
    url = "https://github.com/pest-parser/pest.vim"
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
    config = { "\27LJ\2\n˜\1\0\0\3\0\4\0\t6\0\0\0009\0\1\0'\2\2\0B\0\2\0016\0\0\0009\0\1\0'\2\3\0B\0\2\1K\0\1\0006 nnoremap <leader>fg <cmd>Telescope live_grep<cr>7 nnoremap <leader>ff <cmd>Telescope find_files<cr>\bcmd\bvim\0" },
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
    config = { "\27LJ\2\nø\2\0\0\3\0\6\0\0176\0\0\0009\0\1\0'\2\2\0B\0\2\0016\0\0\0009\0\1\0'\2\3\0B\0\2\0016\0\0\0009\0\1\0'\2\4\0B\0\2\0016\0\0\0009\0\1\0'\2\5\0B\0\2\1K\0\1\0bautocmd FileType javascript,c,cpp,objc,python,vue vnoremap <buffer><Leader>cf :Autoformat<CR>gautocmd FileType javascript,c,cpp,objc,python,vue nnoremap <buffer><Leader>cf :<C-u>Autoformat<CR>9let g:formatters_vue = ['eslint_local', 'stylelint']3let g:formatters_javascript = ['eslint_local']\bcmd\bvim\0" },
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
    config = { "\27LJ\2\n\2\0\0\3\0\4\0\t6\0\0\0009\0\1\0'\2\2\0B\0\2\0016\0\0\0009\0\1\0'\2\3\0B\0\2\1K\0\1\0 nnoremap <C-f> :Grepper<CR>Á\1            let g:grepper = {\n                \\ 'tools': ['rg', 'pt', 'ag', 'git', 'grep'],\n                \\ 'open':  1,\n                \\ 'jump':  0,\n                \\ }\n                \bcmd\bvim\0" },
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
  ["vim-markdown-folding"] = {
    config = { "\27LJ\2\nb\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0C autocmd FileType markdown set foldexpr=NestedMarkdownFolds() \bcmd\bvim\0" },
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/home/paul/.local/share/nvim/site/pack/packer/opt/vim-markdown-folding",
    url = "https://github.com/nelstrom/vim-markdown-folding"
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
    config = { "\27LJ\2\n\2\0\0\3\0\6\0\0176\0\0\0009\0\1\0'\2\2\0B\0\2\0016\0\0\0009\0\1\0'\2\3\0B\0\2\0016\0\0\0009\0\1\0'\2\4\0B\0\2\0016\0\0\0009\0\1\0'\2\5\0B\0\2\1K\0\1\0004let g:email               = \"paul@realcyber.de\"0let g:username            = \"Paul Schaefer\"6let g:license             = \"All rights reserved\"3let g:templates_directory = '~/.vim/templates'\bcmd\bvim\0" },
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
    config = { "\27LJ\2\nú\4\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0Ú\4                    let g:vim_vue_plugin_config = { \n                          \\'syntax': {\n                          \\   'template': ['html'],\n                          \\   'script': ['javascript', 'typescript'],\n                          \\   'style': ['css'],\n                          \\},\n                          \\'full_syntax': [],\n                          \\'initial_indent': [],\n                          \\'attribute': 0,\n                          \\'keyword': 0,\n                          \\'foldexpr': 0,\n                          \\'debug': 0,\n                          \\}\n                \bcmd\bvim\0" },
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
    config = { "\27LJ\2\n•\1\0\0\3\0\5\0\r6\0\0\0009\0\1\0'\2\2\0B\0\2\0016\0\0\0009\0\1\0'\2\3\0B\0\2\0016\0\0\0009\0\1\0'\2\4\0B\0\2\1K\0\1\0\" let g:vimtex_fold_enabled=1 \27 let g:tex_conceal=\"\" ! let g:tex_flavor = 'latex' \bcmd\bvim\0" },
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/home/paul/.local/share/nvim/site/pack/packer/opt/vimtex",
    url = "https://github.com/lervag/vimtex"
  },
  vimwiki = {
    config = { "\27LJ\2\nØ\1\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0¸\1 \n                let g:vimwiki_list = [{'path': '~/vimwiki/',\n                \\ 'syntax': 'markdown', 'ext': '.md'}]\n                let g:vimwiki_global_ext = 0\n                \bcmd\bvim\0" },
    loaded = true,
    path = "/home/paul/.local/share/nvim/site/pack/packer/start/vimwiki",
    url = "https://github.com/vimwiki/vimwiki"
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
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
try_loadstring("\27LJ\2\no\0\0\3\0\5\0\r6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\0016\0\0\0'\2\1\0B\0\2\0029\0\3\0'\2\4\0B\0\2\1K\0\1\0\17file_browser\19load_extension\nsetup\14telescope\frequire\0", "config", "telescope.nvim")
time([[Config for telescope.nvim]], false)
-- Config for: lspsaga.nvim
time([[Config for lspsaga.nvim]], true)
try_loadstring("\27LJ\2\nê\1\0\0\4\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\2B\0\2\1K\0\1\0\17show_outline\1\0\1\rjump_key\t<cr>\21symbol_in_winbar\1\0\2\17show_outline\0\21symbol_in_winbar\0\1\0\6\18click_support\1\19file_formatter\5\14show_file\2\14separator\tï‘Š \venable\2\14in_custom\1\nsetup\flspsaga\frequire\0", "config", "lspsaga.nvim")
time([[Config for lspsaga.nvim]], false)
-- Config for: nvim-treesitter-context
time([[Config for nvim-treesitter-context]], true)
try_loadstring("\27LJ\2\n¨ó\1\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\t\tmode\vcursor\17line_numbers\2ğñ\1ˆêxdëx\0\0€×xdëx\0\0»\0\0\0\0\0\0\0\24dÆdëx\0\0\2\a\0\3\b\0\0\0\0\0\0\0\0\0\0\0è\21xdëx\0\0HgÆdëx\0\0HgÆdëx\0\0\4\0\0\0\0\0\0\0°\0\0\0\0 \0\0¨vÅdëx\0\0004\2\0\0\15\0\0\0HgÆdëx\0\0OgÆdëx\0\0OgÆdëx\0\0Y\3\0\0006\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\24dÆdëx\0\0008‡Ådëx\0\0°bÆdëx\0\0Ø\127\15eëx\0\0\1\1\1\1\1\1\15\0Ã\0\0\0\0\0\0\0 tÆdëx\0\0\2\a\1\2\b\0\0\0\0\0\0\0\0\0\0\0ˆkydëx\0\0àgÆdëx\0\0àgÆdëx\0\0\0\0\0\0\0\0\0\0·\0\0\0\2\0\0\0\0Ùwdëx\0\0\17\4\0\0\2\0\0\0ägÆdëx\0\0ëgÆdëx\0\0\5hÆdëx\0\0Y\2\0\0-\1\0\0008\1\0\1\14\0\1\0X\2\2€-\1\1\0008\1\0\1L\1\2\0\6À\2\0\1\1\1\1\1\1\1handlers\0default_handlers\0method\0\0\b\0ÿ3\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0¨Æ?Zä©Ñ±\f\0\0\0notification\0\0\0\0+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0+1\27ÛT»Ó\4\0\0\0ó°›´\0\0\0\0#\0\0\0\0\0\0\0ÿÿÿÿÿÿÿÿ¸Ÿˆaëøıÿ0ÜƒaëøıÿK\0\0\0\0\0\0\0XgÆdëx\0\0\2\v\0\0ëøıÿ\0\0\0\0\0\0\0\0xqydëx\0\0\0\0\0\0\0\0\0\0ØhÆdëx\0\0\0\0\0\0\1\0\0\0\biÆdëx\0\0;\0\0\0\0\0\0\0ÿÿÿÿÿÿÿÿ ymdëøıÿ\0\0\0\0\0\0\0\0ÿÿÿÿÿÿÿÿ(4Ædëøıÿ\0\0\0\0\0\0\0\0003\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0©Æ?ZÅ¤\6Ú\14\0\0\0server_request\0\0“\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0ğ\14”\25œç\27½o\0\0\0      Option overrides for the Gitsigns preview window. Table is passed directly\n      to `nvim_open_win`.\n    \0;\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0¯Æ?Z¨\20\21\n\23\0\0\0 user on_error failed: \0;\0\0\0\0\0\0\0008ğndëx\0\0\2\b\0\1ëx\0\0xM\15eëx\0\0à’jdëx\0\0¸}ddëx\0\0¨ñmdëx\0\0»\1\0\0\0\0\0\0x¦kdëx\0\0\2\a\0\14$\0\0\0\0\0\0\0\0\0\0\0˜î8dëx\0\0€kÆdëx\0\0€kÆdëx\0\0\t\0\0\0\0\0\0\0«\1\0\0\3 \0\0è£kdëx\0\0@\0\0\0\b\0\0\0ˆkÆdëx\0\0«kÆdëx\0\0¾kÆdëx\0\0Y\14\0\0006\0\0\0-\2\0\0B\2\1\0A\0\0\4H\3\v€-\5\1\0009\5\1\5)\a\0\0\18\b\3\0006\t\2\0009\t\3\t'\v\4\0\18\f\4\0005\r\5\0B\t\4\0A\5\2\1F\3\3\3R\3ó\1276\0\0\0-\2\2\0B\0\2\4H\3\n€-\5\1\0009\5\1\5)\a\0\0'\b\6\0:\t\1\4&\b\t\b5\t\a\0:\n\3\4=\n\b\tB\5\4\1F\3\3\3R\3ô\127K\0\1\0HÅÈdëx\0\0x¦kdëx\0\0hÄvdëx\0\0ø¥kdëx\0\0p\29Èdëx\0\0pIÈdëx\0\0HÀÇdëx\0\0Ğ\17\16eëx\0\0\24l\15eëx\0\0\2À\0À\1Àÿÿ\1\1\1\1\1\2\2\2\2\2\2\2\2\2\2\2\1\1\5\5\5\5\6\6\6\6\6\6\6\6\6\6\5\5\bhi_define\0api\0kind\0\4\5\14\5\0\14\6\0\14group\0\1\vconf\0\0\v\4\16\r\5\0\r\6\0\r_\0\1\nitem\0\0\n\0ÿÿÿÿÿK\0\0\0\0\0\0\0°·mdëx\0\0\2\v\0\0ëx\0\0\0\0\0\0\0\0\0\0P-Udëx\0\0\0\0\0\0\0\0\0\0è,Udëx\0\0\0\0\0\0\3\0\0\0000-Udëx\0\0K\0\0\0\0\0\0\0@jÆdëx\0\0\2\v\0\0ëx\0\0ˆlÆdëx\0\0 °cëx\0\0\0\0\0\0\0\0\0\0000âldëx\0\0\27\0\0\0\15\0\0\0\bãldëx\0\0ã\0\0\0\0\0\0\0ÿÿÿÿÿÿÿÿhmÆdëxúÿàogdëxúÿPpgdëxúÿÀpgdëxúÿ0qgdëxúÿ qgdëxúÿ\16rgdëxúÿ€rgdëxúÿğrgdëxúÿ`sgdëxúÿ€ÖldëxúÿğÖldëxúÿ`×ldëxúÿĞ×ldëxúÿ@Øldëxúÿ°Øldëxúÿ ÙldëxúÿÙldëxúÿ\0ÚldëxúÿpÚldëxúÿàÚldëxúÿPÛldëxúÿÀÛldëxúÿ0ÜldëxúÿXƒldëxúÿÈƒldëxúÿƒ\0\0\0\0\0\0\0@lÆdëx\0\0\2\v\0\5ëx\0\0¨mÆdëx\0\0 °cëx\0\0\0\0\0\0\0\0\0\0Ø4\15eëx\0\0\5\0\0\0\0\0\0\0Ø4\15eëx\0\0ÿÿÿÿÿÿÿÿ\bÕxdëøıÿ\0ƒldëøıÿ`™xdëøıÿÿÿÿÿÿÿÿÿ\0\0\0\0\0\0\0\0€\0\0\0\0\0\0\0;\0\0\0\0\0\0\0j\25dëx\0\0\2\5\1\1ëx\0\0`_ùcëøûÿxk\25dëx\0\0ømÆdëx\0\0˜“\16l\0\0\0\0;\0\0\0\0\0\0\0\bk\25dëx\0\0\2\5\1\0ëx\0\0ÿÿÿÿÿÿÿÿxk\25dëx\0\0000nÆdëx\0\0˜“\16f\0\0000\0;\0\0\0\0\0\0\0èmÆdëx\0\0\2\5\1\0\t\26ÿ\0ÿÿÿÿÿÿşÿ nÆdëx\0\0hnÆdëx\0\0˜“\16mëx\0\0C\0\0\0\0\0\0\0à,©cëx\0\0\2\f\0\0\b\24ÿ\0xM\15eëx\0\0\b\0\0\0\4\24ÿ\0xó\16eëx\0\0û\127\4\0\5\30ÿ\0 \31B¦Z\0\0c\0\0\0\0\0\0\0¨_ùcëx\0\0\2\vÿƒ\4\24ÿ\0à_ùcëx\0\0\0\0\0\0\4\24ÿ\0\0\0\0\0\0\0\0\0Ø4\15eëx\0\0\5\0\0\0\0\0\0\0Ø4\15eëx\0\0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿk\0\0\0\0\0\0\0\0pÆdëx\0\0\2\v\0ƒëx\0\0000»Öcëx\0\0ĞnÆdëxúÿ\0\0\0\0\0\0\0\0Ø4\15eëx\0\0\5\0\0\0\0\0\0\0Ø4\15eëx\0\0ÿÿÿÿÿÿÿÿ°~Ædëøıÿè»Hdëxúÿh\0\0\0\0\0\0\0k\0\0\0\0\0\0\0ĞnÆdëx\0\0\2\vÿ\4‰9ÿ\0ØoÆdëx\0\0\19€ñ\127ˆ\bÿ\0\0\0\0\0\0\0\0\0Ø4\15eëx\0\0\4\0\0\0\0\0\0\0Ø4\15eëx\0\0ÿÿÿÿÿÿÿÿnÆdëøùÿè+©cëøùÿà,©cëøùÿk\0\0\0\0\0\0\0˜oÆdëx\0\0\2\v\0\4\a\v\0ÿ@pÆdëx\0\0\t\v\3\t\t\0\0\0\0\0\0\0\0\0\0\0Ø4\15eëx\0\0\4\0\0\0\0\0\0\0Ø4\15eëx\0\0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ(,©cëøûÿ -©cëøûÿS\3\0\0\0\0\0\0ˆ8xdëx\0\0\2\a\2\18Y\0\0\0\0\0\0\0\0\0\0\0Ğ\16hdëx\0\0ÀrÆdëx\0\0ĞrÆdëx\0\0\17\0\0\0\2\0\0\0G\3\0\0\3!\0\0\0Ùwdëx\0\0_\3\0\0\28\0\0\0ØrÆdëx\0\0000sÆdëx\0\0NsÆdëx\0\0Y\18\0\0\14\0\1\0X\2\1€4\1\0\0009\2\0\1\14\0\2\0X\3\1€3\2\1\0009\3\2\0=\3\2\0009\3\2\0\14\0\3\0X\3\19€6\3\3\0009\5\4\0B\3\2\2\a\3\5\0X\3\14€9\3\4\0:\3\1\3\15\0\3\0X\4\b€6\3\6\0009\3\a\0039\3\b\0039\5\4\0:\5\1\5B\3\2\2\14\0\3\0X\4\1€+\3\0\0=\3\2\0009\3\t\1\n\3\0\0X\4\2€\t\3\0\0X\4\4€-\4\0\0009\4\n\4B\4\1\2\18\3\4\0006\4\v\0004\6\3\0-\a\1\0>\a\1\6-\a\2\0009\a\f\aB\a\1\0?\a\1\0B\4\2\4X\a\20€6\t\r\0\18\v\b\0B\t\2\4H\f\14€\18\14\2\0\18\16\r\0\18\17\0\0B\14\3\2\15\0\14\0X\15\b€-\14\2\0009\14\14\14\18\16\3\0009\17\15\rB\14\3\0019\14\15\r2\0\0€L\14\2\0F\f\3\3R\fğ\127E\a\3\3R\aê\127-\4\2\0009\4\16\4\18\6\0\0B\4\2\2\v\4\0\0X\5\3€+\5\0\0002\0\0€L\5\2\0-\5\2\0009\5\14\5\18\a\3\0\18\b\4\0B\5\3\0012\0\0€L\4\2\0\23\0\23\0`>xdëx\0\0°…Çdëx\0\0(>xdëx\0\0\24l\15eëx\0\0008\twdëx\0\0¸l\15eëx\0\0˜\29\16eëx\0\0\16mmdëx\0\0ø=xdëx\0\0p‚\16eëx\0\0HÀÇdëx\0\0Xj\15eëx\0\0x|Èdëx\0\0Pk\15eëx\0\0(¬Çdëx\0\0ˆ8xdëx\0\0èõmdëx\0\0\0\0\0\0\0\0\0\0\2\0\0\0\0\0000C\aÀ\30À\18À™\0\1\1\1\3\3\3\5\6\6\a\a\a\a\a\a\a\a\b\b\b\b\b\b\b\b\b\b\b\b\b\b\n\v\v\v\v\f\f\f\f\14\14\14\14\14\14\14\14\14\14\15\15\15\15\16\16\16\16\16\16\17\17\17\17\17\18\18\18\15\15\14\14\22\22\22\22\23\23\24\24\24\26\26\26\26\26\27\27api\0uninitialized_clients\0lsp\0config\0\0Yopts\0\0Yreuse_client\0\bQbufnr\0\0258\4\17\23\5\0\23\6\0\23_\0\1\20clients\0\0\20\4\3\17\5\0\17\6\0\17_\0\1\14client\0\0\14client_id\0\22\f\0\1k\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0dÛ^ÍÚŸD,\0\0\0md_microsoft_xbox_controller_battery_unknown\0\0\0\0HÚVdëøıÿ¨\14Çdëøıÿh\0\0\0\0\0\0\0“\0\0\0\0\0\0\0hpÆdëx\0\0\2\a\2\2\2\0\0\0ÿÿÿÿÿÿşÿXgÆdëx\0\0tÆdëx\0\0tÆdëx\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Ùwdëx\0\0ÿ\3\0\0\2\0\0\0tÆdëx\0\0‘tÆdëx\0\0‘tÆdëx\0\0Y\2\0\0L\1\2\0\1_\0\0\2filetype\0\0\2\0\1÷\1÷\1û\1;\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0\16Ÿ3r{Eª]\18\0\0\0includeDeclaration\0\0\0\0\0\0003\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0¸\6“\17ı‡e'\14\0\0\0capture_output\0\0c\0\0\0\0\0\0\0(yÈdëx\0\0\2\v\0\0ëx\0\0\0\0\0\0\0\0\0\0@âÈdëx\0\0\0\0\0\0\0\0\0\0H&ydëx\0\0\0\0\0\0\1\0\0\0`&ydëx\0\0Ø4\15eëx\0\0\0\0\0\0\0\0\0\0`\0\0\0\0\0\0\0;\0\0\0\0\0\0\0\bqÅdëx\0\0\2\b\0\1ëx\0\0xM\15eëx\0\0hZ\23dëx\0\0wÈdëx\0\0 Ãydëx\0\0\19\1\0\0\0\0\0\0HÃadëx\0\0\2\a\0\3\r\0\0\0Øéhdëx\0\0èéhdëx\0\0€vÆdëx\0\0€vÆdëx\0\0\6\0\0\0\0\0\0\0ş\0\0\0\3 \0\0Ğqzdëx\0\0S\0\0\0\4\0\0\0ˆvÆdëx\0\0”vÆdëx\0\0¢vÆdëx\0\0Y\3\0\0-\0\0\0009\0\0\0-\2\1\0B\0\2\0029\0\1\0-\1\2\0009\1\2\1B\1\1\0016\1\3\0009\1\4\1=\0\5\1K\0\1\0ÿÿÿÿÈÃadëx\0\0°ÄÈdëx\0\0HÀÇdëx\0\0èÂadëx\0\0XÂadëx\0\0¸Âadëx\0\0\5À\1À\2\0\0\0\1\1\1\1\1\2\2\2\3\3\3\4git\0cwd\0async\0new_head\0\6\a\0ıÿ\16\1\0\0\0\0\0\0ƒ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0010&vìZÁ7Ì\\\0\0\0@/home/paul/.local/share/nvim/site/pack/packer/start/packer.nvim/lua/packer/plugin_utils.lua\0\0\0\0Ë\0\0\0\0\0\0\0 ÎÈdëx\0\0\2\a\1\a\b\0\0\0€wÆdëx\0\0Pvmdëx\0\0ĞwÆdëx\0\0ĞwÆdëx\0\0\1\0\0\0\0\0\0\0¹\0\0\0\2 \0\0p¸ndëx\0\0'\3\0\0\2\0\0\0ÔwÆdëx\0\0ÛwÆdëx\0\0ñwÆdëx\0\0Y\a\0\0-\1\0\0\18\3\0\0-\4\1\0009\4\0\4\18\6\0\0B\4\2\0C\1\1\0ÀúÆdëx\0\0(À\2À\1\1\1\1\1\1\1diagnostic_move_pos\0M\0opts\0\0\b\0\0\0\0\0\0\0\0s\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0\14\aFa\21ŠXO\0\0\0@/home/paul/.local/share/nvim/site/pack/packer/start/packer.nvim/lua/packer.lua\0;\0\0\0\0\0\0\0¸úmdëx\0\0\2\5\1\1ëx\0\0HpÅdëxúÿˆ$wdëx\0\0ˆxÆdëx\0\0\b‹n|ëx\0\0[\0\0\0\0\0\0\0HpÅdëx\0\0\2\b\0\3\0\0\0\0xM\15eëx\0\0xÉmdëx\0\0 Ãndëx\0\0\bĞÆdëx\0\0xxÆdëx\0\0‚Ådëx\0\0\0\0\0\0\31\0\0\0X\0\0\0\0\0\0\0+\0\0\0\0\0\0\0Ø<hdëx\0\0\2\4\0\0/\aFae\21¹ \a\0\0\0install\0;\0\0\0\0\0\0\0€ÉSdëx\0\0\2\4\0\0\16\aFaÁ*|d\n\0\0\0join_paths\0\0ëøıÿ8\0\0\0\0\0\0\0+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0\15\aFa\0;¾f\4\0\0\0util\0\0\0\0+\0\0\0\0\0\0\0p“Ldëx\0\0\2\4\0\0\17\aFaùç‚û\a\0\0\0stdpath\0;\0\0\0\0\0\0\0à\21ydëx\0\0\2\5\1\1ëx\0\0h©ydëxúÿØ„\16eëx\0\0ÈyÆdëx\0\0ppyg\0\0\0\0S\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0ÍîşA‡\30ğÊ!\0\0\0packer.install: requiring modules\0\0\0e('pP\0\0\0\0\0\0\0003\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0ßI~NêLÉ\r\0\0\0md_deviantart\0\0\0;\0\0\0\0\0\0\0pÛvdëx\0\0\2\4\0\0\19\aFa™(´Ä\19\0\0\0ensure_dependencies\0\0\0\0\0;\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0\24\aFa\24Ğˆø\f\0\0\0package_root\0\0\0\0008\0\0\0\0\0\0\0003\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0\20\aFa½x7\29\b\0\0\0snapshot\0\0\0\0\0\0\0\0003\0\0\0\0\0\0\0Pøpdëx\0\0\2\4\0\0\21\aFaİıWä\r\0\0\0snapshot_path\0\0\0+\0\0\0\0\0\0\0ğ\rNdëx\0\0\2\4\0\0\22\aFaîş Ü\5\0\0\0cache\0\0\0003\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0\23\aFaT›E’\v\0\0\0packer.nvim\0\0\0\0\0;\0\0\0\0\0\0\0XãOdëx\0\0\2\4\0\0\28\aFa\v¤ËÎ\f\0\0\0compile_path\0\0\0\0008\0\0\0\0\0\0\0+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0Ù\19µ¨&Ğ\5\0\0\0items\0\0\0+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0S\4œ¶%¨G0\1\0\0\0\r\0\0\0\0\0\0\0k\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0009\aFaÁ7\3`A\0\0\0log --color=never --pretty=format:FMT --no-show-signature %s...%s\0\0\0\0\0\0\0+\0\0\0\0\0\0\0øÎWdëx\0\0\2\4\0\0\29\aFa–Ñ¦¦\6\0\0\0plugin\0\0;\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0X\4œ¶BJÕÍ\b\0\0\0disabled\0\0\0\0ëøıÿ8\0\0\0\0\0\0\0003\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0\31\aFaAÏTŞ\14\0\0\0plugin_package\0\0003\0\0\0\0\0\0\0H«xdëx\0\0\2\4\0\0 \aFaè\0à9\b\0\0\0max_jobs\0\0\0\0\0\0\0\0003\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0!\aFaÑ­µ„\n\0\0\0auto_clean\0\0\0\0\0\0003\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0\"\aFa#\20¬å\15\0\0\0compile_on_sync\0;\0\0\0\0\0\0\0ğÛUdëx\0\0\2\4\0\0#\aFağî='\16\0\0\0disable_commands\0\0\0\0\0\0\0\0003\0\0\0\0\0\0\0X„cdëx\0\0\2\4\0\0$\aFa¶W¢%\14\0\0\0transitive_opt\0\0;\0\0\0\0\0\0\0008-Ldëx\0\0\2\4\0\0%\aFaê´€\1\18\0\0\0transitive_disable\0\0ëx\0\0;\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0&\aFa&m\20\20\0\0\0auto_reload_compiled\0\0\0\0003\0\0\0\0\0\0\0°Dzdëx\0\0\2\4\0\0'\aFa´¨\\ë\15\0\0\0preview_updates\0+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0(\aFaœLÂË\3\0\0\0git\0\0\0\0\0;\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0)\aFa\0Á\18é\21\0\0\0mark_breaking_changes\0\0\0K\0\0\0\0\0\0\0x\rUdëx\0\0\2\v\0\0ëx\0\0\0\0\0\0\0\0\0\0\16kdëx\0\0\0\0\0\0\0\0\0\0ÀÎwdëx\0\0\0\0\0\0\3\0\0\0ØÎwdëx\0\0;\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0¹ù\0\29©d†˜\r\0\0\0clone_timeout\0\0\0008\0\0\0\0\0\0\0003\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0*\aFa\16ù/¦\v\0\0\0subcommands\0\0\0\0\0+\0\0\0\0\0\0\0À¾Ldëx\0\0\2\4\0\0+\aFaöKJä\6\0\0\0update\0\0K\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0=\aFaŒ€:\"\0\0\0show --no-color --pretty=medium %s\0\0\0\0\0\0[\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0,\aFa12\aš0\0\0\0pull --ff-only --progress --rebase=false --force\0\0\0\0\0\0\0\0K\0\0\0\0\0\0\0à5ndëx\0\0\2\v\0\0ëx\0\0\0\0\0\0\0\0\0\0@îedëx\0\0\0\0\0\0\0\0\0\0\24ÙÇdëx\0\0\0\0\0\0\1\0\0\0HÙÇdëx\0\0;\0\0\0\0\0\0\0`0Ldëx\0\0\2\4\0\0003\aFaÛz\b\14\b\0\0\0checkout\0\0\0\0ëøıÿ8\0\0\0\0\0\0\0003\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0-\aFaâõ!=\v\0\0\0update_head\0\0\0\0\0;\0\0\0\0\0\0\0˜j`dëx\0\0\2\4\0\0.\aFa¼\29Š}\16\0\0\0merge FETCH_HEAD\0\0\0\0\0\0\0\0S\0\0\0\0\0\0\0ˆŠndëx\0\0\2\4\0\0000\aFa‘7\20[.\0\0\0clone --depth %i --no-single-branch --progress\0\0+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0001\aFaSñ˜h\5\0\0\0fetch\0\0\0K\0\0\0\0\0\0\0¨9jdëx\0\0\2\4\0\0002\aFa\26Ù…ô'\0\0\0fetch --depth 999999 --progress --force\0003\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0004\aFan?:û\14\0\0\0checkout %s --\0\0003\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0005\aFa'ÿH«\r\0\0\0update_branch\0\0\0;\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0006\aFa~î\20\0\0\0merge --ff-only @{u}\0\0\0\0003\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0007\aFaZGs9\14\0\0\0current_branch\0\0C\0\0\0\0\0\0\0@Õydëx\0\0\2\4\0\0008\aFa1vÔ\27\0\0\0rev-parse --abbrev-ref HEAD\0\0\0\0\0003\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0:\aFa\14m(\19\b\0\0\0diff_fmt\0\0\0\0\0\0\0\0003\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0;\aFa{üY\15\14\0\0\0%%h %%s (%%cr)\0\0003\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0<\aFai€\23ó\f\0\0\0git_diff_fmt\0\0\0\0+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0¨ù\0\29\21tãõ\a\0\0\0get_rev\0;\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0©ù\0\29<×¥á\22\0\0\0rev-parse --short HEAD\0\0\v\3\0\0\0\0\0\0pÓmdëx\0\0\2\a\2\17I\0\0\0 Èpdëx\0\0ØNwdëx\0\0X†Ædëx\0\0`†Ædëx\0\0\20\0\0\0\1\0\0\0á\2\0\0\2 \0\0ğÒmdëx\0\0\2\0\0\0\31\0\0\0d†Ædëx\0\0¬†Ædëx\0\0Æ†Ædëx\0\0Y\17\0\0\f\2\1\0X\2\1€4\2\0\0\v\0\0\0X\3\1€L\2\2\0006\3\0\0\18\5\0\0B\3\2\4X\6;€-\b\0\0009\b\1\b9\t\2\a8\b\t\b\14\0\b\0X\t\1€'\b\3\0+\t\0\0009\n\4\a\15\0\n\0X\v\3€9\n\4\a9\t\5\nX\n\4€9\n\5\a\15\0\n\0X\v\1€9\t\5\a\15\0\t\0X\n\n€9\n\6\t9\v\6\t9\v\a\v\22\v\0\v=\v\a\n9\n\b\t9\v\b\t9\v\a\v\22\v\0\v=\v\a\n6\n\t\0009\n\n\n\18\f\2\0005\r\14\0009\14\4\a\15\0\14\0X\15\a€6\14\v\0009\14\f\0149\16\4\a9\16\r\16B\14\2\2\14\0\14\0X\15\1€+\14\0\0=\14\15\r=\t\5\r=\b\2\r9\14\16\a=\14\17\r=\a\18\rB\n\3\0019\n\19\a\15\0\n\0X\v\4€-\n\1\0009\f\19\a\18\r\2\0B\n\3\1E\6\3\3R\6Ã\127L\2\2\0ÿÿÿÿ\bJÆdëx\0\0ØIÆdëx\0\0 Óndëx\0\0(¬Çdëx\0\0 %xdëx\0\0pÓmdëx\0\0\16Oxdëx\0\0XÉÈdëx\0\0HÀÇdëx\0\0\b‰\15eëx\0\0Xj\15eëx\0\0à`\15eëx\0\0°ÏÆdëx\0\0PÎ\15eëx\0\0\16†Çdëx\0\0@IÆdëx\0\0¨HÆdëx\0\0PLÆdëx\0\0(jzdëx\0\0¸l\15eëx\0\0\0\0\0\0\0\0ğ?\0À\1À\1\1\1\2\2\2\3\3\3\3\4\4\4\4\4\4\4\5\6\6\6\a\a\a\b\b\b\t\f\f\r\r\r\r\r\14\14\14\14\14\17\17\17\17\18\18\18\18\18\18\18\18\18\18\18\18\19\20\21\21\22\17\25\25\25\26\26\26\26\3\3\30lsp_proto\0extract_symbols\0items\0\0I_result\0\0Iresult\0\4E\4\6>\5\0>\6\0>_\0\1;item\0\0;kind\0\a4sym_range\0\0013\0\0\0\0\0\0\0\0 xÅdëøıÿè|Ædëøıÿ\b\3\0\0\0\0\0\0Ã\1\0\0\0\0\0\0ˆ%Ædëx\0\0\2\a\0\3.\0\0\0\0\0\0\0\0\0\0\0\24Åydëx\0\0¸ˆÆdëx\0\0¸ˆÆdëx\0\0\r\0\0\0\0\0\0\0¶\1\0\0\0 \0\0\bxÆdëx\0\0”\0\0\0\f\0\0\0¸ˆÆdëx\0\0åˆÆdëx\0\0åˆÆdëx\0\0Y\3\0\0006\0\0\0009\0\1\0'\2\2\0B\0\2\0016\0\0\0009\0\1\0'\2\3\0B\0\2\0016\0\0\0009\0\1\0'\2\4\0B\0\2\0016\0\0\0009\0\1\0'\2\5\0B\0\2\0016\0\0\0009\0\1\0'\2\6\0B\0\2\0016\0\0\0009\0\1\0'\2\a\0B\0\2\0016\0\0\0009\0\1\0'\2\b\0B\0\2\0016\0\0\0009\0\1\0'\2\t\0B\0\2\0016\0\0\0009\0\1\0'\2\n\0B\0\2\0016\0\0\0009\0\1\0'\2\v\0B\0\2\0016\0\0\0009\0\1\0'\2\f\0B\0\2\1K\0\1\0@ÈÆdëx\0\0ØÇÆdëx\0\0 ”Ædëx\0\0¸»Ådëx\0\0€–Ædëx\0\0008ÇÆdëx\0\0ÆÆdëx\0\0èÅÆdëx\0\0`ÄÆdëx\0\0@PÅdëx\0\0¨ÃÆdëx\0\0x|Èdëx\0\0HÀÇdëx\0\0\1\1\1\1\2\2\2\2\3\3\3\3\4\4\4\4\5\5\5\5\6\6\6\6\a\a\a\a\b\b\b\b\t\t\t\t\n\n\n\n\v\v\v\v\f\0\0\0‹\1\0\0\0\0\0\0èbÆdëx\0\0\2\a\0\t\25\0\0\0\0\0\0\0\0\0\0\0˜\30ydëx\0\0è‰Ædëx\0\0è‰Ædëx\0\0\5\0\0\0\0\0\0\0n\1\0\0\4 \0\0\bxÆdëx\0\0V\1\0\0\b\0\0\0ğ‰Ædëx\0\0\bŠÆdëx\0\0CŠÆdëx\0\0Y\t\0\0-\0\0\0'\2\0\0B\0\2\0029\1\1\0'\3\2\0B\1\2\1-\1\1\0\n\1\0\0X\1\5€6\1\3\0-\3\1\0B\1\2\2\v\1\0\0X\1\t€6\1\4\0-\3\2\0B\1\2\4X\4\3€-\6\3\0\18\b\5\0B\6\2\1E\4\3\3R\4û\127K\0\1\0ëøıÿ¸l\15eëx\0\0°k\15eëx\0\0@\tÇdëx\0\0°¸\15eëx\0\0(³\15eëx\0\0\nÀ\6€\a€\v€\1\1\1\2\2\2\3\3\3\3\3\3\3\3\4\4\4\4\5\5\5\4\4\brequire_and_configure\0plugins\0plugin_specifications\0manage\0log\0\4\21\4\14\6\5\0\6\6\0\6_\0\1\3spec\0\0\3\0şÿ\0b\15eëøıÿˆ\1\0\0\0\0\0\0003\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0±ğn\\\0163ps\14\0\0\0md_cart_remove\0\0+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0²ğn\\óç\2\4\0\0\0ó°µ©\0\0\0\0;\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0³ğn\\3PE©\22\0\0\0md_contactless_payment\0\0+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0´ğn\\\n#Ø‡\4\0\0\0ó°µª\0\0\0\0;\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0µğn\\3€\0ı\19\0\0\0md_creative_commons\0ëøıÿ+\0\0\0\0\0\0\0\16ºUdëx\0\0\2\4\0\0¶ğn\\Š³\24\r\4\0\0\0ó°µ«\0\0\0\0C\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0·ğn\\Áx\5¨\31\0\0\0md_credit_card_wireless_outline\0+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0¸ğn\\ü\24ª\0\4\0\0\0ó°µ¬\0\0\0\0003\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0¹ğn\\ówu\6\n\0\0\0md_cricket\0\0ëøıÿ+\0\0\0\0\0\0\0¨}Ldëx\0\0\2\4\0\0ºğn\\ôá\4\0\0\0ó°µ­\0\0\0\0003\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0»ğn\\9¹8\t\0\0\0md_dev_to\0\0\0ÿÿşÿ+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0¼ğn\\û:+O\4\0\0\0ó°µ®\0\0\0\0003\0\0\0\0\0\0\0 áfdëx\0\0\2\4\0\0½ğn\\\30íjF\r\0\0\0md_domain_off\0\0\0+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0¾ğn\\ãûr”\4\0\0\0ó°µ¯\0\0\0\0003\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0¿ğn\\\28O&é\r\0\0\0md_face_agent\0\0\0+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0Àğn\\Ö4ˆ[\4\0\0\0ó°µ°\0\0\0\0+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0Âğn\\Î¹ÀÜ\4\0\0\0ó°µ±\0\0\0\0£\1\0\0\0\0\0\0 ÅÆdëx\0\0\2\a\1\t*\0\0\0\0\0\0\0\0\0\0\0``Ådëx\0\0ÀÆdëx\0\0ÀÆdëx\0\0\6\0\0\0\0\0\0\0˜\1\0\0\1 \0\0\bxÆdëx\0\0©\0\0\0\f\0\0\0ÄÆdëx\0\0íÆdëx\0\0óÆdëx\0\0Y\t\0\0006\1\0\0\18\3\0\0B\1\2\2\a\1\1\0X\1\3€4\1\3\0>\0\1\1\18\0\1\0006\1\2\0009\1\3\1\18\3\0\0B\1\2\2\14\0\1\0X\1\t€6\1\0\0:\3\1\0B\1\2\2\a\1\1\0X\1\4€-\1\0\0:\2\1\0<\0\2\1X\1\17€6\1\4\0\18\3\0\0B\1\2\4X\4\v€6\6\0\0\18\b\5\0B\6\2\2\a\6\5\0X\6\3€:\6\1\5\14\0\6\0X\a\1€\18\6\5\0-\a\0\0<\5\6\aE\4\3\3R\4ó\127K\0\1\0Xj\15eëx\0\0¸l\15eëx\0\0ø\23Èdëx\0\0HÀÇdëx\0\0hi\15eëx\0\0Pk\15eëx\0\0\b€ÿÿ\1\1\1\1\1\2\2\2\4\4\4\4\4\4\4\4\4\4\4\5\5\5\5\a\a\a\a\b\b\b\b\b\b\b\b\b\t\t\a\a\frocks\0rock\0\0*\4\27\14\5\0\14\6\0\14_\0\1\vr\0\0\vrock_name\0\t\2\0;\0\0\0\0\0\0\0pğxdëx\0\0\2\5\1\1ëx\0\0„\16eëxúÿø4\15eëx\0\0000Ædëx\0\0ppym\0\0\0\0K\0\0\0\0\0\0\0\24Lydëx\0\0\2\b\0\2ëx\0\0xM\15eëx\0\0@îedëx\0\0x†jdëx\0\0Ø\2ddëx\0\0hïÅdëx\0\0H\0\0\0\0\0\0\0c\0\0\0\0\0\0\0\bTydëx\0\0\2\b\0\5ëx\0\0xM\15eëx\0\0ÀÍÆdëx\0\0PFydëx\0\0pğxdëx\0\0à\21ydëx\0\0Ø„\16eëx\0\0pÁydëx\0\0X¼ydëx\0\0`\0\0\0\0\0\0\0003\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0áîşA[Æh&\b\0\0\0installs\0\0\0\0\0\0\0\0003\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0ªù\0\29\0a«\n\0\0\0get_header\0\0\0\0\0\0k\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0«ù\0\29º»x\vC\0\0\0log --color=never --pretty=format:FMT --no-show-signature HEAD -n 1\0\0\0\0\0003\0\0\0\0\0\0\0ˆæadëx\0\0\2\4\0\0¬ù\0\29ÎLég\n\0\0\0get_bodies\0\0\0\0\0\0›\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0­ù\0\29¾\127§Ër\0\0\0log --color=never --pretty=format:\"===COMMIT_START===%h%n%s===BODY_START===%b\" --no-show-signature HEAD@{1}...HEAD\0\0\0\0\0\0;\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0®ù\0\29ëq½:\16\0\0\0get_fetch_bodies\0\0\0\0\0\0\0\0›\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0¯ù\0\29«ı„\18t\0\0\0log --color=never --pretty=format:\"===COMMIT_START===%h%n%s===BODY_START===%b\" --no-show-signature HEAD...FETCH_HEAD\0\0\0\0003\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0°ù\0\29·Ñ0¼\n\0\0\0submodules\0\0\0\0\0\0S\0\0\0\0\0\0\0 uPdëx\0\0\2\4\0\0±ù\0\297,\27.\0\0\0submodule update --init --recursive --progress\0\0+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0²ù\0\29ø\1{å\6\0\0\0revert\0\0;\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0³ù\0\29°bêt\21\0\0\0reset --hard HEAD@{1}\0\0\0003\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0´ù\0\0291:Îø\t\0\0\0revert_to\0\0\0\0\0\0\0;\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0µù\0\0296¯\bù\18\0\0\0reset --hard %s --\0\0\0\0\0\0003\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0¶ù\0\29ğË$\15\0\0\0tags_expand_fmt\0K\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0·ù\0\29¸Óù !\0\0\0tag -l %s --sort -version:refname\0\0\0\0\0\0\0k\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0007zu§Ús=š?\0\0\0command! PackerStatus            lua require('packer').status()\0h\0\0\0\0\0\0\0+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0¸ù\0\29„¥[\5\0\0\0depth\0\0\0;\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0ºù\0\29÷s\27İ\18\0\0\0default_url_format\0\0\0\0\0\0C\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0»ù\0\29\25%Qè\25\0\0\0https://github.com/%s.git\0\0\0\0\0\0\0003\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0¼ù\0\29½¿}ñ\15\0\0\0non_interactive\0K\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0›ß[OÙèq…\25\0\0\0md_temperature_fahrenheit\0\0\0\0\0\0\0H\0\0\0\0\0\0\0;\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0¾ù\0\29{\6æv\b\0\0\0open_cmd\0\0\0\0ëøıÿ8\0\0\0\0\0\0\0+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0½ù\0\29'6l|\a\0\0\0compact\0+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0¿ù\0\29\18,ÃV\6\0\0\00065vnew\0\0003\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0Àù\0\29\22¾üI\v\0\0\0working_sym\0\0\0\0\0+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0Áù\0\29\n—:Ï\3\0\0\0âŸ³\0\0\0\0\0k\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0005zu§W1¦Õ>\0\0\0command! PackerClean             lua require('packer').clean()\0\0h\0\0\0\0\0\0\0003\0\0\0\0\0\0\0ØùVdëx\0\0\2\4\0\0Âù\0\29ûUµÜ\t\0\0\0error_sym\0\0\0\0\0\0\0+\0\0\0\0\0\0\0ØÔWdëx\0\0\2\4\0\0Ãù\0\29hÖ·\3\0\0\0âœ—\0\0\0\0\0Ë\0\0\0\0\0\0\0(Èxdëx\0\0\2\a\1\a\b\0\0\0Ğ—Ædëx\0\0ø\\zdëx\0\0Ğ—Ædëx\0\0Ğ—Ædëx\0\0\1\0\0\0\0\0\0\0¹\0\0\0\2 \0\0p¸ndëx\0\0U\3\0\0\2\0\0\0Ô—Ædëx\0\0Û—Ædëx\0\0ñ—Ædëx\0\0Y\a\0\0-\1\0\0\18\3\0\0-\4\1\0009\4\0\4\18\6\0\0B\4\2\0C\1\1\0@GÆdëx\0\0(À\2À\1\1\1\1\1\1\1diagnostic_move_pos\0M\0opts\0\0\b\0\0\0\0\0\0\0\0003\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0Äù\0\29+…^a\b\0\0\0done_sym\0\0\0\0\0\0\0\0+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0Åù\0\29(nóy\3\0\0\0âœ“\0\0\0\0\0003\0\0\0\0\0\0\0¸5idëx\0\0\2\4\0\0Æù\0\29°WÒÏ\v\0\0\0removed_sym\0\0\0\0\0003\0\0\0\0\0\0\0(ŠÅdëx\0\0\2\4\0\0Çù\0\29şî\21Ì\t\0\0\0moved_sym\0\0\0\0\0\0\0+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0Èù\0\29”ó˜$\3\0\0\0â†’\0\0\0\0\0003\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0Éù\0\29÷!=\1\b\0\0\0item_sym\0\0\0\0\0\0\0\0+\0\0\0\0\0\0\0Xe_dëx\0\0\2\4\0\0Êù\0\29Ë•‹R\3\0\0\0â€¢\0\0\0\0\0003\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0é\14{Æ\4PAı\n\0\0\0header_sym\0\0\0\0\0\0+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0ê\14{Æ$×À\14\3\0\0\0â”\0\0\0\0\0003\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0ë\14{Æ\b“šH\f\0\0\0header_lines\0\0\0\0+\0\0\0\0\0\0\0€õÇdëx\0\0\2\4\0\0ì\14{ÆÛaRÙ\5\0\0\0title\0\0\0003\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0í\14{Æ$ÁšZ\r\0\0\0prompt_border\0\0\0+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\"\4\0\0î\14{ÆöŒ\25­\6\0\0\0double\0\0003\0\0\0\0\0\0\0 ¼adëx\0\0\2\4\0\0ï\14{ÆDj·ä\v\0\0\0keybindings\0\0\0\0\0+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0ğ\14{ÆÆ\"G5\4\0\0\0quit\0\0\0\0+\0\0\0\0\0\0\0(ÎSdëx\0\0\2\4\0\0ñ\14{Æ+Š‰‹\1\0\0\0q\0\0\0\0\0\0\0K\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0Ó>—-áÎdP\25\0\0\0md_trophy_variant_outline\0\0\0\0\0\0\0H\0\0\0\0\0\0\0;\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0õ\14{Æ¦¸åì\v\0\0\0toggle_info\0ëøıÿ8\0\0\0\0\0\0\0003\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0ò\14{ÆÂD’ì\r\0\0\0toggle_update\0\0\0+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0ó\14{ÆD|a™\1\0\0\0u\0\0\0\0\0\0\0003\0\0\0\0\0\0\0€hddëx\0\0\2\4\0\0ô\14{ÆRÉ^O\b\0\0\0continue\0\0\0\0\0\0\0\0+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0ö\14{Æ-\3´¶\4\0\0\0<CR>\0\0\0\0+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0÷\14{Æİrle\1\0\0\0d\0\0\0\0\0\0\0003\0\0\0\0\0\0\0h$Kdëx\0\0\2\4\0\0ø\14{Æ!¹~ª\r\0\0\0prompt_revert\0\0\0+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0ù\14{Æ¬ŠéÊ\1\0\0\0r\0\0\0\0\0\0\0+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0ú\14{Æ:Ğsy\5\0\0\0retry\0\0\0+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0û\14{Æ$ú‰]\1\0\0\0R\0\0\0\0\0\0\0003\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0ü\14{Æ£Îvy\b\0\0\0luarocks\0\0\0\0\0\0\0\0003\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0ı\14{ÆïVv”\n\0\0\0python_cmd\0\0\0\0\0\0C\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0004\27Ó¬òÜ\0\27\0\0\0minidisc | computer disk | \0ëøıÿ+\0\0\0\0\0\0\0\16¡jdëx\0\0\2\4\0\0005\27Ó¬\2\5¨i\4\0\0\0ğŸ’½\0\0\0\0K\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0006\27Ó¬šÄ:o \0\0\0floppy_disk | floppy disk | save\0\0\0\0ëx\0\0+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0007\27Ó¬~†ãê\4\0\0\0ğŸ’¾\0\0\0\0;\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0008\27Ó¬÷\25·C\20\0\0\0cd | optical disk | \0\0\0\0+\0\0\0\0\0\0\0H¨vdëx\0\0\2\4\0\0009\27Ó¬÷\3!l\4\0\0\0ğŸ’¿\0\0\0\0003\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0:\27Ó¬`ÄŒ\f\0\0\0dvd | dvd | \0\0\0\0+\0\0\0\0\0\0\0Ø\15eëx\0\0\2\4\0\0;\27Ó¬£kMr\4\0\0\0ğŸ“€\0\0\0\0K\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0<\27Ó¬|¹ÑZ%\0\0\0file_folder | file folder | directory\0\0\0+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0=\27Ó¬$­ó\4\0\0\0ğŸ“\0\0\0\0K\0\0\0\0\0\0\0p?zdëx\0\0\2\4\0\0>\27Ó¬b ®\v&\0\0\0open_file_folder | open file folder | \0\0+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0?\27Ó¬œ\30Æ€\4\0\0\0ğŸ“‚\0\0\0\0K\0\0\0\0\0\0\0ˆøidëx\0\0\2\4\0\0@\27Ó¬‰Wòï\"\0\0\0page_with_curl | page with curl | \0\0ëøıÿ+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0A\27Ó¬\17›\6\6\4\0\0\0ğŸ“ƒ\0\0\0\0S\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0B\27Ó¬µô~\18*\0\0\0page_facing_up | page facing up | document\0\0ëøıÿ+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0C\27Ó¬™\31O\127\4\0\0\0ğŸ“„\0\0\0\0K\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0D\27Ó¬\127D\tñ#\0\0\0date | calendar | calendar schedule\0ëøıÿ+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0E\27Ó¬š†\15@\4\0\0\0ğŸ“…\0\0\0\0K\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0F\27Ó¬²Ø˜í'\0\0\0calendar | tear-off calendar | schedule\0+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0G\27Ó¬Ò\t\bÄ\4\0\0\0ğŸ“†\0\0\0\0C\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0H\27Ó¬¯™,®\26\0\0\0card_index | card index | \0\0ëøıÿ+\0\0\0\0\0\0\0èÛddëx\0\0\2\4\0\0I\27Ó¬OHI\4\0\0\0ğŸ“‡\0\0\0\0c\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0J\27Ó¬ô½ÜZ;\0\0\0chart_with_upwards_trend | chart increasing | graph metrics\0\0\0\0\0+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0K\27Ó¬×\19‘Ê\4\0\0\0ğŸ“ˆ\0\0\0\0c\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0L\27Ó¬£_MO=\0\0\0chart_with_downwards_trend | chart decreasing | graph metrics\0\0\0+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0M\27Ó¬XTÑS\4\0\0\0ğŸ“‰\0\0\0\0K\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0N\27Ó¬ƒX-\4%\0\0\0bar_chart | bar chart | stats metrics\0\0\0+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0O\27Ó¬Ğ×\tÙ\4\0\0\0ğŸ“Š\0\0\0\0C\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0P\27Ó¬ã¦ÖÛ\24\0\0\0clipboard | clipboard | \0\0\0\0ëøıÿ+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0Q\27Ó¬U]J^\4\0\0\0ğŸ“‹\0\0\0\0C\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0R\27Ó¬\28„WE\28\0\0\0pushpin | pushpin | location\0\0\0\0+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0S\27Ó¬İÙ’ç\4\0\0\0ğŸ“Œ\0\0\0\0S\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0T\27Ó¬³²ğ(\0\0\0round_pushpin | round pushpin | location\0\0\0\0\0\0\0\0+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0\26·½^\\Óp\4\0\0\0ğŸ“\0\0\0\0C\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0\27·½Ê\f1ë\24\0\0\0paperclip | paperclip | \0\0\0\0ëøıÿ+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0\28·½Öå\vî\4\0\0\0ğŸ“\0\0\0\0K\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0\29·½…œ\24·\"\0\0\0straight_ruler | straight ruler | \0\0\0\0\0\0+\0\0\0\0\0\0\0008)hdëx\0\0\2\4\0\0\30·½SkLs\4\0\0\0ğŸ“\0\0\0\0K\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0\31·½[8y\16&\0\0\0triangular_ruler | triangular ruler | \0\0+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0 ·½Û\127”¤\4\0\0\0ğŸ“\0\0\0\0K\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0!·½\16!¼‰ \0\0\0bookmark_tabs | bookmark tabs | \0\0\0\0ëøıÿ+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0\"·½\\\0Ö-\4\0\0\0ğŸ“‘\0\0\0\0;\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0#·½§¼b\0\18\0\0\0ledger | ledger | \0\0ëøıÿ+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0$·½Ô\127\r³\4\0\0\0ğŸ“’\0\0\0\0;\0\0\0\0\0\0\0˜ÅKdëx\0\0\2\4\0\0%·½Bs2\30\22\0\0\0notebook | notebook | \0\0+\0\0\0\0\0\0\0 ‘Çdëx\0\0\2\4\0\0&·½I\5O8\4\0\0\0ğŸ““\0\0\0\0k\0\0\0\0\0\0\0\bÓ_dëx\0\0\2\4\0\0'·½ka4B\0\0\0notebook_with_decorative_cover | notebook with decorative cover | \0\0ëøıÿ+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0(·½Ñ‘–±\4\0\0\0ğŸ“”\0\0\0\0C\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0)·½RÍVÁ\28\0\0\0closed_book | closed book | \0\0\0\0+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0*·½R\16Ø:\4\0\0\0ğŸ“•\0\0\0\0C\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0+·½)½\29N\29\0\0\0book open_book | open book | \0\0\0+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0,·½\n¢O·\4\0\0\0ğŸ“–\0\0\0\0C\0\0\0\0\0\0\0èÅ\15eëx\0\0\2\4\0\0-·½À?\18\24\26\0\0\0green_book | green book | \0\0ëøıÿ+\0\0\0\0\0\0\0\0168ydëx\0\0\2\4\0\0.·½‡\31‘<\4\0\0\0ğŸ“—\0\0\0\0C\0\0\0\0\0\0\0Hdwdëx\0\0\2\4\0\0/·½›Ûˆq\24\0\0\0blue_book | blue book | \0\0\0\0ëøıÿ+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0000·½\15ŒØ\29\4\0\0\0ğŸ“˜\0\0\0\0C\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0001·½o\21]\127\28\0\0\0orange_book | orange book | \0\0\0\0+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0002·½\4\25§\4\0\0\0ğŸ“™\0\0\0\0;\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0003·½S\26lÔ\23\0\0\0books | books | library\0+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0004·½\bˆQ¬\4\0\0\0ğŸ“š\0\0\0\0C\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0005·½\t_Ğ™\26\0\0\0name_badge | name badge | \0\0ëøıÿ+\0\0\0\0\0\0\0ptSdëx\0\0\2\4\0\0006·½\21“1\4\0\0\0ğŸ“›\0\0\0\0C\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0007·½Ïb¯ø\26\0\0\0scroll | scroll | document\0\0ëøıÿ+\0\0\0\0\0\0\0\bxÆdëx\0\0\2\4\0\0008·½\21ŠÚº\4\0\0\0ğŸ“œ\0\0\0\0K\0\0\0\0\0\0\0X\22Xdëx\0\0\2\4\0\0009·½tñn\a\"\0\0\0memo pencil | memo | document note\0\0ëøıÿ+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0:·½–\20\28D\4\0\0\0ğŸ“\0\0\0\0[\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0;·½\20œóA4\0\0\0telephone_receiver | telephone receiver | phone call\0\0\0\0+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0<·½\14–SÁ\4\0\0\0ğŸ“\0\0\0\0;\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0=·½\0‘g\16\0\0\0pager | pager | \0\0\0\0ëøıÿ+\0\0\0\0\0\0\0HIcdëx\0\0\2\4\0\0>·½Œã–F\4\0\0\0ğŸ“Ÿ\0\0\0\0;\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0?·½Â*;\29\20\0\0\0fax | fax machine | \0\0\0\0+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0@·½\20Ş\23\4\0\0\0ğŸ“ \0\0\0\0K\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0A·½Òmj³&\0\0\0satellite | satellite antenna | signal\0\0+\0\0\0\0\0\0\0°.xdëx\0\0\2\4\0\0B·½•\24\31¡\4\0\0\0ğŸ“¡\0\0\0\0S\0\0\0\0\0\0\0ˆÀ_dëx\0\0\2\4\0\0C·½º·ÈM(\0\0\0loudspeaker | loudspeaker | announcement\0\0\0\0ëøıÿ+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0D·½\rW&\4\0\0\0ğŸ“¢\0\0\0\0;\0\0\0\0\0\0\0˜\tKdëx\0\0\2\4\0\0E·½Š=?™\19\0\0\0mega | megaphone | \0ëøıÿ+\0\0\0\0\0\0\0X›ddëx\0\0\2\4\0\0F·½‚\29˜«\4\0\0\0ğŸ“£\0\0\0\0C\0\0\0\0\0\0\0H˜Qdëx\0\0\2\4\0\0G·½oÎ\6\28\0\0\0outbox_tray | outbox tray | \0\0\0\0+\0\0\0\0\0\0\0@¨Ædëx\0\0\2\4\0\0H·½\n¢à$\4\0\0\0ğŸ“¤\0\0\0\0C\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0I·½³\14lÙ\26\0\0\0inbox_tray | inbox tray | \0\0\0\0\0\0+\0\0\0\0\0\0\0hÆQdëx\0\0\2\4\0\0J·½‹ !®\4\0\0\0ğŸ“¥\0\0\0\0C\0\0\0\0\0\0\0XF`dëx\0\0\2\4\0\0K·½7Wv\28\0\0\0package | package | shipping\0\0\0\0+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0L·½Ã©\25,\4\0\0\0ğŸ“¦\0\0\0\0C\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0M·½7êÄ½\24\0\0\0email e-mail | e-mail | \0\0\0\0ëøıÿ+\0\0\0\0\0\0\0°¸jdëx\0\0\2\4\0\0N·½@ÿY±\4\0\0\0ğŸ“§\0\0\0\0S\0\0\0\0\0\0\0\16NNdëx\0\0\2\4\0\0O·½8ô\"K(\0\0\0incoming_envelope | incoming envelope | \0\0\0\0ëøıÿ+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0P·½Èƒ¢2\4\0\0\0ğŸ“¨\0\0\0\0S\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0Q·½˜N¥„,\0\0\0envelope_with_arrow | envelope with arrow | \0\0\0\0+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0R·½Iôâ»\4\0\0\0ğŸ“©\0\0\0\0[\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0S·½õ\0054R4\0\0\0mailbox_closed | closed mailbox with lowered flag | \0\0\0\0+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0T·½Á‡\27A\4\0\0\0ğŸ“ª\0\0\0\0S\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0U·½Xà†L,\0\0\0mailbox | closed mailbox with raised flag | \0\0\0\0+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0V·½F\r\\Æ\4\0\0\0ğŸ“«\0\0\0\0[\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0W·½îü6P4\0\0\0mailbox_with_mail | open mailbox with raised flag | \0\0\0\0+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0X·½Îy¤O\4\0\0\0ğŸ“¬\0\0\0\0c\0\0\0\0\0\0\0x7ldëx\0\0\2\4\0\0Y·½¥\127Ü÷8\0\0\0mailbox_with_no_mail | open mailbox with lowered flag | \0\0\0\0\0\0\0\0+\0\0\0\0\0\0\0\16Tdëx\0\0\2\4\0\0Z·½OüäØ\4\0\0\0ğŸ“­\0\0\0\0;\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0[·½ü+é\20\0\0\0postbox | postbox | \0\0\0\0+\0\0\0\0\0\0\0x\19Sdëx\0\0\2\4\0\0\\·½ÇU\29V\4\0\0\0ğŸ“®\0\0\0\0C\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0]·½ËÃ3½\28\0\0\0postal_horn | postal horn | \0\0\0\0+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0^·½DÛ]Û\4\0\0\0ğŸ“¯\0\0\0\0C\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0_·½\30Ñ™z\29\0\0\0newspaper | newspaper | press\0\0\0+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0`·½Ì_¦L\4\0\0\0ğŸ“°\0\0\0\0S\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0a·½d\18r·)\0\0\0iphone | mobile phone | smartphone mobile\0\0\0ëøıÿ+\0\0\0\0\0\0\0PoPdëx\0\0\2\4\0\0b·½MàæÕ\4\0\0\0ğŸ“±\0\0\0\0[\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0c·½èƒÊ\0021\0\0\0calling | mobile phone with arrow | call incoming\0\0\0ëx\0\0+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0d·½Åo\31[\4\0\0\0ğŸ“²\0\0\0\0K\0\0\0\0\0\0\0`ANdëx\0\0\2\4\0\0e·½Péj°\"\0\0\0vibration_mode | vibration mode | \0\0ëøıÿ+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0f·½:õ_à\4\0\0\0ğŸ“³\0\0\0\0C\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0m·½—\28Îz\23\0\0\0camera | camera | photo\0@\0\0\0\0\0\0\0K\0\0\0\0\0\0\0¸ópdëx\0\0\2\vÿ\0ëx\0\0\0\0\0\0\0\0\0\0à.Ådëx\0\0\16xndëx\0\0Ø4\15eëx\0\0\0\0\0\0\0\0\0\0Ø4\15eëx\0\0;\0\0\0\0\0\0\0 /Ådëx\0\0\2\5\1\0ëx\0\0\0ÔÆdëxúÿ‚Ådëx\0\0ˆµÆdëx\0\0\b‹na\0\0\0\0+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0ş\14{ÆšA\15.\5\0\0\0level\0\0\0+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0ÿ\14{ÆTm\20=\4\0\0\0warn\0\0\0\0K\0\0\0\0\0\0\0èœÅdëx\0\0\2\v\0\0ëx\0\0\0\0\0\0\0\0\0\0008Ömdëx\0\0\0\0\0\0\0\0\0\0È\22cëx\0\0\0\0\0\0\1\0\0\0ø\22cëx\0\0;\0\0\0\0\0\0\0 6Ædëx\0\0\2\5\1\1ëx\0\0000Ådëøûÿ‚Ådëx\0\0X¶Ædëx\0\0\b‹no\0\0\0\0+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0\17zu§ætñ­\a\0\0\0profile\0C\0\0\0\0\0\0\0000Ådëx\0\0\2\b\0\2ëx\0\0xM\15eëx\0\0\0ÔÆdëx\0\0 Ñndëx\0\0H¶Ædëx\0\0‚Ådëx\0\0C\0\0\0\0\0\0\0HÔÆdëx\0\0\2\b\0\2ëx\0\0xM\15eëx\0\0Øûndëx\0\0\24õndëx\0\0‚Ådëx\0\0 ‡\16eëx\0\0003\0\0\0\0\0\0\0 ¤Wdëx\0\0\2\4\0\0\18zu§¡›÷§\n\0\0\0autoremove\0\0\0\0\0\0+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0\19zu§`¸Ï\a\0\0\0_packer\0;\0\0\0\0\0\0\0ÿÿÿÿÿÿÿÿ\b•\16eëøıÿ˜·Ædëx\0\0ÿÿÿÿÿÿÿÿ ñndëøıÿ\0\0\0\0\0\0\0\0+\0\0\0\0\0\0\0ø1Ndëx\0\0\2\4\0\0\21zu§^[„\5\5\0\0\0rocks\0\0\0;\0\0\0\0\0\0\0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ(%Èdëøıÿÿÿÿÿÿÿşÿÿÿÿÿÿÿÿÿ8\0\0\0\0\0\0\0+\0\0\0\0\0\0\0(1`dëx\0\0\2\4\0\0\23zu§%÷J[\5\0\0\0clean\0\0\0K\0\0\0\0\0\0\0\16\127Ædëx\0\0\2\v\0\0ëx\0\0\0\0\0\0\0\0\0\0¨\6Tdëx\0\0\0\0\0\0\0\0\0\0008Uedëx\0\0\0\0\0\0\15\0\0\0ÈUedëx\0\0;\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0\25zu§VWÌç\b\0\0\0handlers\0\0\0\0ëøıÿ8\0\0\0\0\0\0\0+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0\24zu§cXaØ\a\0\0\0compile\0003\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0\26zu§Qôõ»\f\0\0\0plugin_types\0\0\0\0003\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0\27zu§Ø«\\\f\0\0\0plugin_utils\0\0\0\0;\0\0\0\0\0\0\0è¶Ædëx\0\0\2\b\0\1ëx\0\0xM\15eëx\0\0(şndëx\0\0@ündëx\0\0€¹Ædëx\0\0K\0\0\0\0\0\0\0°…\16eëx\0\0\2\5\1\1ëx\0\0è¶ÆdëøûÿxµÆdëx\0\0¹Ædëx\0\0\b‹ntëx\0\0\0\0\0\0\0\0\0\0H\0\0\0\0\0\0\0003\0\0\0\0\0\0\0@tÅdëx\0\0\2\b\0\0ëx\0\0xM\15eëx\0\0`òxdëx\0\0àñxdëx\0\0;\0\0\0\0\0\0\0ØµÆdëøıÿ°µÆdëøıÿ\0\0\0\0\0\0\0\0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ\0\0\0\0\0\0\0\0;\0\0\0\0\0\0\0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ(%Èdëøıÿÿÿÿÿÿÿşÿÿÿÿÿÿÿÿÿ8\0\0\0\0\0\0\0+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0\31zu§²zvâ\a\0\0\0packer.\0+\0\0\0\0\0\0\0 >bdëx\0\0\2\4\0\0 zu§êàk\a\3\0\0\0cfg\0\0\0\0\0K\0\0\0\0\0\0\0ØŒjdëx\0\0\2\v\0\0ëx\0\0\0\0\0\0\0\0\0\0ˆ‘ldëx\0\0\0\0\0\0\0\0\0\0ÈÒpdëx\0\0\0\0\0\0\3\0\0\0(Ópdëx\0\0003\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0\"zu§q\f\18L\v\0\0\0deep_extend\0ëøıÿ+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0$zu§\28e|\2\2\0\0\0:p\0\0\0\0\0\0003\0\0\0\0\0\0\0xˆidëx\0\0\2\4\0\0%zu§›zI5\r\0\0\0get_separator\0\0\0+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0&zu§ÌÏm†\1\0\0\0$\0\0\0\0\0\0\0003\0\0\0\0\0\0\0˜GTdëx\0\0\2\4\0\0'zu§m’\16¥\b\0\0\0pack_dir\0\0\0\0\0\0\0\0+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0(zu§§`v+\a\0\0\0opt_dir\0003\0\0\0\0\0\0\0¸WSdëx\0\0\2\4\0\0)zu§Øàwè\t\0\0\0start_dir\0\0\0\0\0\0\0003\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0*zu§ÿ\25~€\v\0\0\0ensure_dirs\0\0\0\0\0C\0\0\0\0\0\0\0Ğ\19Ldëx\0\0\2\4\0\0¸öc\5†ş¥g\28\0\0\0md_format_text_wrapping_wrap\0\0\0\0+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0¹öc\5`\21\18q\4\0\0\0ó°´\0\0\0\0;\0\0\0\0\0\0\0(ëVdëx\0\0\2\4\0\0ºöc\5\5\22?*\17\0\0\0md_format_textbox\0\0\0ÿÿÿÿ+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0»öc\5ÜšNö\4\0\0\0ó°´‘\0\0\0\0003\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0¼öc\5•Ğê6\15\0\0\0md_fountain_pen\0+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0½öc\5g\31“\127\4\0\0\0ó°´’\0\0\0\0;\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0¾öc\5íK\0ï\19\0\0\0md_fountain_pen_tip\0\0\0\0\0+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0¿öc\5óŸÿ\0\4\0\0\0ó°´“\0\0\0\0;\0\0\0\0\0\0\00084cdëx\0\0\2\4\0\0Àöc\5U—¤)\23\0\0\0md_heart_broken_outline\0+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0Áöc\5b%\16€\4\0\0\0ó°´”\0\0\0\0003\0\0\0\0\0\0\0¨¥Kdëx\0\0\2\4\0\0Âöc\5“t:\f\0\0\0md_home_city\0\0\0\0+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0Ãöc\5Ş¢L\5\4\0\0\0ó°´•\0\0\0\0;\0\0\0\0\0\0\0@xLdëx\0\0\2\4\0\0Äöc\5Á8ş)\20\0\0\0md_home_city_outline\0\0\0\0+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0Åöc\5a7‘–\4\0\0\0ó°´–\0\0\0\0003\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0Æöc\5ÒOb\n\0\0\0md_hubspot\0\0\0\0ğ?C\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0Çöc\5\rz\23\4\0\0\0ó°´—\0\0\0\0\0\0\0\0\0@@h\17Tdëøıÿ@\0\0\0\0\0\0\0\3\3\0\0\0\0\0\0 ÷bdëx\0\0\2\a\1\aN\0\0\0\0\0\0\0\0\0\0\0Hû9dëx\0\0ØÁÆdëx\0\0àÁÆdëx\0\0\25\0\0\0\1\0\0\0İ\2\0\0\2 \0\0Àtddëx\0\0¾\0\0\0\23\0\0\0äÁÆdëx\0\0001ÂÆdëx\0\0EÂÆdëx\0\0Y\a\0\0\14\0\0\0X\1\1€4\0\0\0-\1\0\0006\2\1\0009\2\2\2'\4\3\0-\5\1\0\18\6\0\0B\2\4\2=\2\0\0016\1\4\0'\3\5\0B\1\2\2\18\3\1\0009\1\6\1B\1\2\1-\1\0\0009\1\0\0019\1\a\0019\1\b\1\15\0\1\0X\2\5€6\1\4\0'\3\t\0B\1\2\0029\1\n\1B\1\1\0016\1\1\0009\1\v\1B\1\1\0029\1\f\1)\2\n\0\3\2\1\0X\1\14€6\1\1\0009\1\r\0019\1\14\1'\3\15\0B\1\2\2\b\1\0\0X\1\a€6\1\4\0'\3\16\0B\1\2\2\18\3\1\0009\1\17\1B\1\2\1X\1\16€6\1\1\0009\1\v\1B\1\1\0029\1\f\1)\2\n\0\3\2\1\0X\1\3€6\1\18\0'\3\19\0B\1\2\0016\1\4\0'\3\20\0B\1\2\2\18\3\1\0009\1\17\1B\1\2\1-\1\0\0009\1\0\0019\1\21\0019\1\22\1\15\0\1\0X\2\5€6\1\4\0'\3\23\0B\1\2\0029\1\24\1B\1\1\1K\0\1\0°êÇdëx\0\0xêÇdëx\0\0èkdëx\0\0°ÌÈdëx\0\0`öÇdëx\0\0àéÇdëx\0\0Pu\15eëx\0\0000öÇdëx\0\0€»mdëx\0\0P»mdëx\0\0À:Ædëx\0\0ph\15eëx\0\0 «kdëx\0\0ØË\15eëx\0\0 »mdëx\0\0àºmdëx\0\0¸Ådëx\0\0H—jdëx\0\0°ºmdëx\0\0xºmdëx\0\0Ø\127\15eëx\0\0H\29Èdëx\0\0@IÈdëx\0\0HÀÇdëx\0\0ˆ€\15eëx\0\0\0\0\0\0\0\0\0\0\1À\2À\1\1\1\2\2\2\2\2\2\2\2\4\4\4\4\4\4\5\5\5\5\5\5\6\6\6\6\6\t\t\t\t\t\t\t\t\t\t\t\t\t\t\n\n\n\n\n\n\n\f\f\f\f\f\f\f\r\15\r\17\17\17\17\17\17\20\20\20\20\20\20\21\21\21\21\21\23saga\0default_config\0opts\0\0N\0x\0\0ÿÿÿÿÿÿşÿ\b•\16eëøıÿ\0\3\0\0\0\0\0\0003\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0+zu§ŸA¦g\r\0\0\0make_commands\0\0\0+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0,zu§ZmjQ\5\0\0\0mkdir\0\0\0+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\"\4\0\0-zu§§‹\5L\1\0\0\0p\0\0\0\0\0\0\0;\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0.zu§\1’t‹\16\0\0\0Couldn't create \0\0\0\0\0\0\0\0K\0\0\0\0\0\0\0€ˆÅdëx\0\0\2\v\0\0ëx\0\0\0\0\0\0\0\0\0\0 gmdëx\0\0\0\0\0\0\0\0\0\0xÁÅdëx\0\0\0\0\0\0\1\0\0\0xÁÅdëx\0\0;\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0:zu§\15\23L§\t\0\0\0use_rocks\0\0\0ëøıÿ8\0\0\0\0\0\0\0»\0\0\0\0\0\0\0 UPdëx\0\0\2\4\0\0/zu§<&ûm\0\0\0command! -nargs=+ -complete=customlist,v:lua.require'packer.snapshot'.completion.create PackerSnapshot  lua require('packer').snapshot(<f-args>)\0\0\0\0\0\0\0\0Ã\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0001zu§bu\29\6\0\0\0command! -nargs=+ -complete=customlist,v:lua.require'packer.snapshot'.completion.snapshot PackerSnapshotDelete lua require('packer.snapshot').delete(<f-args>)\0\0Ë\0\0\0\0\0\0\0000‡Ædëx\0\0\2\a\0\1\b\0\0\0°ÅÆdëx\0\0008Äydëx\0\0¨ÅÆdëx\0\0¨ÅÆdëx\0\0\0\0\0\0\0\0\0\0¼\0\0\0\3 \0\0\bxÆdëx\0\0¢\0\0\0\4\0\0\0°ÅÆdëx\0\0·ÅÆdëx\0\0ÛÅÆdëx\0\0Y\1\0\0004\0\0\0.\0\0\0004\0\0\0.\1\0\0004\0\0\0.\2\0\0K\0\1\0\6€\a€\b€\0\0\1\1\2\2\3\3\4plugins\0plugin_specifications\0rocks\0\0\0\0\0\0«\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0002zu§¬\0q%‚\0\0\0command! -nargs=* -complete=customlist,v:lua.require'packer'.plugin_complete PackerInstall lua require('packer').install(<f-args>)\0\0\0\0\0\0«\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0003zu§ˆd\18B€\0\0\0command! -nargs=* -complete=customlist,v:lua.require'packer'.plugin_complete PackerUpdate lua require('packer').update(<f-args>)\0\0\0\0\0\0\0\0£\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0004zu§\29q,Ó|\0\0\0command! -nargs=* -complete=customlist,v:lua.require'packer'.plugin_complete PackerSync lua require('packer').sync(<f-args>)\0\0\0\0k\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0008zu§\29@é¦G\0\0\0command! PackerProfile           lua require('packer').profile_output()\0»\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0009zu§\6ê4G•\0\0\0command! -bang -nargs=+ -complete=customlist,v:lua.require'packer'.loader_complete PackerLoad lua require('packer').loader(<f-args>, '<bang>' == '!')\0\0\0\v\3\0\0\0\0\0\0\0\0\0\0\0\0002@0Õxdëøıÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0003@Èimdëøıÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0004@ğimdëøıÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0005@ jmdëøıÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0006@Pjmdëøıÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0007@xjmdëøıÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0008@ jmdëøıÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0009@Ğjmdëøıÿ\0\0\0\0\0\0\0\0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ\0\0\0\0\0\0\0\0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ\0\0\0\0\0\0\0\0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ\0\0\0\0\0\0\0\0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ\0\0\0\0\0\0\0\0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ\0\0\0\0\0\0\0\0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ\0\0\0\0\0\0\0\0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0ğ?°—mdëøıÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0@X˜mdëøıÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\b@ Ôxdëøıÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\16@ ˜mdëøıÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\20@€˜mdëøıÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\24@PÔxdëøıÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\28@€Õxdëøıÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0 @€Ôxdëøıÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0\"@\24\30ndëøıÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0$@@\30ndëøıÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0&@p\30ndëøıÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0(@˜\30ndëøıÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0*@À\30ndëøıÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0,@è\30ndëøıÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0.@¸Ôxdëøıÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0000@àÔxdëøıÿ\0\0\0\0\0\0\0\0\0\0\0\0\0\0001@\bÕxdëøıÿ\0\0\0\0\0\0\0\0;\0\0\0\0\0\0\0ÿÿÿÿÿÿÿÿÈ™Ædëøıÿ\0\0\0\0\0\0\0\0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ\0\0\0\0\0\0\0\0Û\0\0\0\0\0\0\0°¹ndëx\0\0\2\a\1\4\n\0\0\0hÌÆdëx\0\0xÓldëx\0\0àÌÆdëx\0\0àÌÆdëx\0\0\3\0\0\0\0\0\0\0Ê\0\0\0\1 \0\0 ìÅdëx\0\0\19\0\0\0\5\0\0\0äÌÆdëx\0\0íÌÆdëx\0\0öÌÆdëx\0\0Y\4\0\0006\1\0\0\18\3\0\0B\1\2\2\a\1\1\0X\1\3€-\1\0\0009\1\2\0018\0\0\1L\0\2\0(\1Èdëx\0\0hi\15eëx\0\0Pk\15eëx\0\0\0À\0\0\1\1\1\1\1\2\2\2\4protocol\0severity\0\0\n\0\0\0\0\0\0\0C\0\0\0\0\0\0\0à™ydëøıÿ¸™ydëøıÿ\0\0\0\0\0\0\0\0\bj\15eëøıÿ(¬Çdëøıÿ\16ÍÆdëx\0\0@\0\0\0\0\0\0\0s\0\0\0\0\0\0\0Hìxdëx\0\0\2\v\0\3ëx\0\0ÍÆdëx\0\0€›Ådëx\0\0\0\0\0\0\0\0\0\0Ø4\15eëx\0\0\3\0\0\0\0\0\0\0Ø4\15eëx\0\0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ0•\16eëøıÿnvim/sitp\0\0\0\0\0\0\0003\0\0\0\0\0\0\0\24Åydëx\0\0\2\b\0\0ëx\0\0xM\15eëx\0\0ØÃydëx\0\0\b#ydëx\0\0;\0\0\0\0\0\0\0¸ôxdëx\0\0\2\b\0\1ëx\0\0xM\15eëx\0\0ØkÅdëx\0\0 ÕÆdëx\0\0ÈpÅdëx\0\0›\0\0\0\0\0\0\0 Ãydëx\0\0\2\a\1\1\3\0\0\0—\v–ï\v\0\0\0Øèadëx\0\0 ÎÆdëx\0\0 ÎÆdëx\0\0\0\0\0\0\0\0\0\0\0\0\0\1 \0\0ÀvÆdëx\0\0\v\0\0\0\2\0\0\0¤ÎÆdëx\0\0¦ÎÆdëx\0\0­ÎÆdëx\0\0Y\1\0\0.\0\0\0K\0\1\0\0\0\0\0\6€\0\0\1\2config\0_config\0\0\3\0+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0@zu§À>¦¤\4\0\0\0spec\0\0\0\0+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0—Ù\19ÉÌŞÈ\5\0\0\0focus\0\0\0c\0\0\0\0\0\0\0Ø^ndëx\0\0\2\v\0\3ëx\0\0PÏÆdëx\0\0(\\mdëx\0\0\0\0\0\0\0\0\0\0Ø4\15eëx\0\0\3\0\0\0\0\0\0\0Ø4\15eëx\0\0ÿÿÿÿÿÿÿÿ¸Şpdëøıÿ@ßpdëøıÿC\0\0\0\0\0\0\0è5Ædëx\0\0\2\5\1\1ëx\0\0p\\mdëøûÿ\24_ndëx\0\0€ÏÆdëx\0\0\b‹nDëx\0\0@\0\0\0\0\0\0\0+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0Bzu§à_Â6\4\0\0\0line\0\0\0\0003\0\0\0\0\0\0\0 )Ldëx\0\0\2\4\0\0c\6“\17nêÍN\v\0\0\0isdirectory\0\0\0\0\0;\0\0\0\0\0\0\0°xÆdëx\0\0\2\5\1\0ëx\0\0ÿÿÿÿÿ\127ÿÿxxÆdëx\0\0\24ĞÆdëx\0\0 Ånd\0\0\0\0;\0\0\0\0\0\0\0\bĞÆdëx\0\0\2\b\0\1ëx\0\0xM\15eëx\0\0@$kdëx\0\0 Éndëx\0\0€ópdëx\0\0#\0\0\0\0\0\0\0ÿÿÿÿÿÿÿÿh=aëøıÿPk}aëøıÿ;\0\0\0\0\0\0\0ÿÿÿÿÿÿÿÿÈ™Ædëøıÿ\0\0\0\0\0\0\0\0ÿÿÿÿÿÿÿÿĞ{Ædëøıÿ\0\0\0\0\0\0\0\0C\0\0\0\0\0\0\0ÿÿÿÿÿÿÿÿ \6Ædëøıÿ\0\0\0\0\0\0\0\0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ\0\0\0\0\0\0\0\0@\0\0\0\0\0\0\0;\0\0\0\0\0\0\0ÿÿÿÿÿÿÿÿ\16™\15eëøıÿ\0\0\0\0\0\0\0\0ÿÿÿÿÿÿÿÿ€™\15eëøıÿ\0\0\0\0\0\0\0\0+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0´\6“\17§)>’\5\0\0\0SHELL\0\0\0£\0\0\0\0\0\0\0ø7Ædëx\0\0\2\a\1\6\6\0\0\0 \0\0\0\0\0\0\0 WÆdëx\0\0\0ÒÆdëx\0\0\0ÒÆdëx\0\0\2\0\0\0\0\0\0\0\0\0\0\0 \0\0¨0Ædëx\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0Y\6\0\0006\1\0\0\18\3\0\0)\4\1\0009\5\1\0D\1\4\0(%Èdëx\0\0Ğo\15eëx\0\0 \0\0\0\0\0\0\0\3\1\0\0\0\0\0\0˜\nÇdëx\0\0\2\a\0\4\f\0\0\0\0\0\0\0\0\0\0\0HÀydëx\0\0ØÒÆdëx\0\0ØÒÆdëx\0\0\6\0\0\0\0\0\0\0ô\0\0\0\1 \0\0\bxÆdëx\0\0h\1\0\0\5\0\0\0ÜÒÆdëx\0\0çÒÆdëx\0\0ıÒÆdëx\0\0Y\4\0\0-\0\0\0'\2\0\0B\0\2\0026\1\1\0009\1\2\1'\3\3\0B\1\2\0019\1\4\0'\3\5\0B\1\2\1K\0\1\0Ğ\vÇdëx\0\0°¸\15eëx\0\0ˆ\vÇdëx\0\0x|Èdëx\0\0HÀÇdëx\0\0(³\15eëx\0\0\nÀÿÿ\1\1\1\3\3\3\3\4\4\4\5require_and_configure\0log\0\4\b\0\0\0\0\0K\0\0\0\0\0\0\0€Ædëx\0\0\2\v\0\0\0\0\0\0\0\0\0\0\0\0\0\0\24ûÆdëx\0\0\0\0\0\0\0\0\0\0XÓÆdëx\0\0\0\0\0\0\1\0\0\0pÓÆdëx\0\0;\0\0\0\0\0\0\0ÿÿÿÿÿÿÿÿÀÎÆdëøıÿpÓÆdëx\0\0ÿÿÿÿÿÿÿÿ°ÏÆdëøıÿ\0\0\0\0\0\0\0\0K\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0Dzu§nk~\v \0\0\0No plugin name provided at line \0\0\0\0\0\0\0\0+\0\0\0\0\0\0\0`/Vdëx\0\0\2\4\0\0Ezu§R`±·\1\0\0\0!\0\0\0\0\0\0\0K\0\0\0\0\0\0\0(PÆdëx\0\0\2\v\0\0ëx\0\0¨Ecëx\0\0`­pdëx\0\0\bàÈdëx\0\0Ø4\15eëx\0\0\3\0\0\0\0\0\0\0Ø4\15eëx\0\0003\0\0\0\0\0\0\0PàÈdëx\0\0\2\b\0\0ëx\0\0xM\15eëx\0\0h…\16eëx\0\0pìndëx\0\0{\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0MïşA3wí0T\0\0\0@/home/paul/.local/share/nvim/site/pack/packer/start/packer.nvim/lua/packer/util.lua\0\0\0\0K\0\0\0\0\0\0\0@¸Ædëx\0\0\2\b\0\2ëx\0\0xM\15eëx\0\0\b\4Ædëx\0\0Îfdëx\0\0°\rUdëx\0\0è\rUdëx\0\0H\0\0\0\0\0\0\0ã\0\0\0\0\0\0\0¸õÆdëx\0\0\2\a\0\1\r\0\0\0\0\0\0\0\0\0\0\0ØkÅdëx\0\0øÕÆdëx\0\0øÕÆdëx\0\0\4\0\0\0\0\0\0\0Ö\0\0\0\1 9\0xÔÆdëx\0\0002\0\0\0\5\0\0\0üÕÆdëx\0\0\bÖÆdëx\0\0\rÖÆdëx\0\0[\0019\0-\0\0\0009\0\0\0\15\0\0\0X\1\6€-\0\0\0009\0\1\0\14\0\0\0X\0\2€'\0\2\0L\0\2\0'\0\3\0L\0\2\0\19\0\0\0(ĞÇdëx\0\0\24øÆdëx\0\0pøÆdëx\0\0(ôÆdëx\0\0\0À\t\0\1\1\1\1\1\1\1\1\2\2\4\4util\0\0\0\0;\0\0\0\0\0\0\0\b!Ndëx\0\0\2\4\0\0ı%vìÕ”8ï\18\0\0\0strip_trailing_sep\0\0ëx\0\0S\1\0\0\0\0\0\0@ÜÈdëx\0\0\2\a\1\f\24\0\0\0\0\0\0\0\0\0\0\0¨ÙÈdëx\0\0(×Ædëx\0\0000×Ædëx\0\0\2\0\0\0\1\0\0\0009\1\0\0\1\1\0\0000\fÆdëx\0\0(\0\0\0\18\0\0\0004×Ædëx\0\0K×Ædëx\0\0R×Ædëx\0\0Y\f\0\0-\1\0\0\21\1\1\0\t\1\0\0X\1\2€\18\1\0\0002\0\16€-\1\0\0\21\1\1\0004\2\0\0006\3\0\0-\5\0\0B\3\2\4X\6\5€3\b\1\0\18\t\a\0\18\v\b\0B\t\2\0012\6\0€E\6\3\3R\6ù\1272\0\0€K\0\1\0D\1\1\0@ÜÈdëx\0\0¸l\15eëx\0\0\0\0\0\0\0\0\0\0\0À\15e\1\1\1\1\2\2\4\4\5\6\6\6\6\14\16\16\16\16\6\6\18\18\2thunks\0s\0\0\23to_go\0\t\14results\0\1\r\4\3\b\5\0\b\6\0\bi\0\1\4thunk\0\0\4callback\0\1\3\0\0\0\0\a\0\0\0P\1\0\0\0\0\0\0\3\1\0\0\0\0\0\0(eydëx\0\0\2\a\2\14\16\0\0\0\18\v\0\0\6\0\0\0\bòÆdëx\0\0`ØÆdëx\0\0`ØÆdëx\0\0\3\0\0\0\0\0\0\0÷\0\0\0\0 \0\0xÔÆdëx\0\0\3\0\0\0\a\0\0\0`ØÆdëx\0\0oØÆdëx\0\0oØÆdëx\0\0Y\14\0\0004\2\0\0006\3\0\0\18\5\1\0B\3\2\4X\6\a€6\b\1\0009\b\2\b\18\n\2\0\18\v\0\0\18\r\a\0B\v\2\0A\b\1\1E\6\3\3R\6÷\127L\2\2\0\b‰\15eëx\0\0Xj\15eëx\0\0¸l\15eëx\0\0\1\2\2\2\2\3\3\3\3\3\3\3\2\2\6func\0\0\16seq\0\0\16result\0\2\14\4\3\n\5\0\n\6\0\n_\0\1\av\0\0\a\0\0;\0\0\0\0\0\0\0ÿÿÿÿÿÿÿÿ¸QÆdëøıÿ\0\0\0\0\0\0\0\0ÿÿÿÿÿÿÿÿ\16_Ædëøıÿ\0\0\0\0\0\0\0\0003\0\0\0\0\0\0\0 WÆdëx\0\0\2\b\0\0ëx\0\0xM\15eëx\0\0 WÆdëx\0\0ØÑÆdëx\0\0+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\"\4\0\0‹\4œ¶\26Ñb\22\3\0\0\0int\0\0\0\0\0;\0\0\0\0\0\0\0 ‰\16eëx\0\0\2\5\1\1ëx\0\0`vÅdëøûÿpÁydëx\0\0@ÙÆdëx\0\0ppyi\0\0\0\0K\0\0\0\0\0\0\0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ(%Èdëøıÿÿÿÿÿÿÿşÿÿÿÿÿÿÿÿÿ¨Sydëx\0\0Ğ’ydëx\0\0H\0\0\0\0\0\0\0;\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0\1&vì†t\31Ì\20\0\0\0get_plugin_full_name\0\0\0\0#\0\0\0\0\0\0\0ÿÿÿÿÿÿÿÿ\24Í‡aëøıÿpÍ‡aëøıÿ;\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0Fzu§?UÍ\21\0\0\0get_plugin_short_name\0\0\0C\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0Gzu§¸BdÒ\28\0\0\0\" is an invalid plugin name!\0\0\0\0003\0\0\0\0\0\0\0ˆ¸jdëx\0\0\2\4\0\0Hzu§¥7$\r\0\0\0from_requires\0\0\0003\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0Izu§‰®Qè\b\0\0\0Plugin \"\0\0\0\0\0\0\0\0;\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0Jzu§ĞïhĞ\23\0\0\0\" is used twice! (line \0+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0Kzu§dD!”\1\0\0\0)\0\0\0\0\0\0\0+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0Lzu§nS-\4\2\0\0\0as\0\0\0\0\0\0003\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0Mzu§©³}7\n\0\0\0The alias \0\0\0\0\0\0;\0\0\0\0\0\0\0 ¡Mdëx\0\0\2\4\0\0Nzu§\29Ë×l\16\0\0\0, specified for \0\0\0\0\0\0\0\0+\0\0\0\0\0\0\0\b`Ldëx\0\0\2\4\0\0Ozu§Á\29 è\4\0\0\0 at \0\0\0\0S\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0Pzu§Â\26—®(\0\0\0 is already used as another plugin name!\0\0\0\0\0\0\0\0003\0\0\0\0\0\0\0´Ldëx\0\0\2\4\0\0Qzu§÷1iã\n\0\0\0short_name\0\0\0\0\0\0003\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0Rzu§-TÉP\n\0\0\0manual_opt\0\0\0\0\0\0+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0O\4œ¶÷­İ)\3\0\0\0â– \0\0\0\0\0003\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0Tzu§\19lX\b\0\0\0opt_keys\0\0\0\0\0\0\0\0003\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0Uzu§;âD\a\f\0\0\0install_path\0\0\0\0+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0è]É¯/½¥\25\4\0\0\0ó±ˆŠ\0\0\0\0K\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0é]É¯Ù»\23®\"\0\0\0md_account_multiple_remove_outline\0\0\0\0\0\0+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0ê]É¯/Cæ¢\4\0\0\0ó±ˆ‹\0\0\0\0C\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0ë]É¯\21´fe\24\0\0\0md_magnify_remove_cursor\0\0\0\0ëøıÿ+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0ì]É¯ ğöM\4\0\0\0ó±ˆŒ\0\0\0\0C\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0í]É¯\24\4Z¾\25\0\0\0md_magnify_remove_outline\0\0\0\0\0\0\0+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0î]É¯(:/×\4\0\0\0ó±ˆ\0\0\0\0;\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0ï]É¯(C·#\18\0\0\0md_archive_outline\0\0\0\0\0\0+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0ğ]É¯)Áo`\4\0\0\0ó±ˆ\0\0\0\0;\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0ñ]É¯ÛšÊü\16\0\0\0md_battery_heart\0\0\0\0\0\0\0\0+\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0ò]É¯)\3°£\4\0\0\0ó±ˆ\0\0\0\0C\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\2\4\0\0ó]É¯/€´\v\24\0\0\0md_\0\vzindex\3\20\15trim_scope\nouter\24multiline_threshold\3\20\venable\2\22min_window_height\3\0\14max_lines\3\0\nsetup\23treesitter-context\frequire\0", "config", "nvim-treesitter-context")
time([[Config for nvim-treesitter-context]], false)
-- Config for: LuaSnip
time([[Config for LuaSnip]], true)
try_loadstring("\27LJ\2\n«\5\0\0\3\0\t\0\0296\0\0\0009\0\1\0'\2\2\0B\0\2\0016\0\0\0009\0\1\0'\2\3\0B\0\2\0016\0\0\0009\0\1\0'\2\4\0B\0\2\0016\0\0\0009\0\1\0'\2\5\0B\0\2\0016\0\0\0009\0\1\0'\2\6\0B\0\2\0016\0\0\0009\0\1\0'\2\a\0B\0\2\0016\0\0\0009\0\1\0'\2\b\0B\0\2\1K\0\1\0` smap <silent><expr> <C-E> luasnip#choice_active() ? '<Plug>luasnip-next-choice' : '<C-E>' ` imap <silent><expr> <C-E> luasnip#choice_active() ? '<Plug>luasnip-next-choice' : '<C-E>' I snoremap <silent> <S-Tab> <cmd>lua require('luasnip').jump(-1)<Cr> F snoremap <silent> <Tab> <cmd>lua require('luasnip').jump(1)<Cr> G inoremap <silent> <S-Tab> <cmd>lua require'luasnip'.jump(-1)<Cr> E inoremap <silent> <C-cr> <cmd>lua require'luasnip'.jump(1)<Cr> i imap <silent><expr> <Tab> luasnip#expand_or_jumpable() ? '<Plug>luasnip-expand-or-jump' : '<Tab>'  \bcmd\bvim\0", "config", "LuaSnip")
time([[Config for LuaSnip]], false)
-- Config for: vim-grepper
time([[Config for vim-grepper]], true)
try_loadstring("\27LJ\2\n\2\0\0\3\0\4\0\t6\0\0\0009\0\1\0'\2\2\0B\0\2\0016\0\0\0009\0\1\0'\2\3\0B\0\2\1K\0\1\0 nnoremap <C-f> :Grepper<CR>Á\1            let g:grepper = {\n                \\ 'tools': ['rg', 'pt', 'ag', 'git', 'grep'],\n                \\ 'open':  1,\n                \\ 'jump':  0,\n                \\ }\n                \bcmd\bvim\0", "config", "vim-grepper")
time([[Config for vim-grepper]], false)
-- Config for: icon-picker.nvim
time([[Config for icon-picker.nvim]], true)
try_loadstring("\27LJ\2\nÎ\1\0\0\a\0\v\0\0166\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\0015\0\4\0006\1\5\0009\1\6\0019\1\a\1'\3\b\0'\4\t\0'\5\n\0\18\6\0\0B\1\5\1K\0\1\0\30<cmd>IconPickerNormal<cr>\22<Leader><Leader>i\6n\bset\vkeymap\bvim\1\0\2\fnoremap\2\vsilent\2\1\0\1\28disable_lecagy_commands\2\nsetup\16icon-picker\frequire\0", "config", "icon-picker.nvim")
time([[Config for icon-picker.nvim]], false)
-- Config for: nvim-surround
time([[Config for nvim-surround]], true)
try_loadstring("\27LJ\2\n?\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\18nvim-surround\frequire\0", "config", "nvim-surround")
time([[Config for nvim-surround]], false)
-- Config for: vim-highlightedyank
time([[Config for vim-highlightedyank]], true)
try_loadstring("\27LJ\2\nT\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0005 let g:highlightedyank_highlight_duration = 150 \bcmd\bvim\0", "config", "vim-highlightedyank")
time([[Config for vim-highlightedyank]], false)
-- Config for: undotree
time([[Config for undotree]], true)
try_loadstring("\27LJ\2\nJ\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0+nnoremap <Leader>u :UndotreeToggle<CR>\bcmd\bvim\0", "config", "undotree")
time([[Config for undotree]], false)
-- Config for: nvim-Cmp
time([[Config for nvim-Cmp]], true)
try_loadstring("\27LJ\2\n.\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\19autocompletion\frequire\0", "config", "nvim-Cmp")
time([[Config for nvim-Cmp]], false)
-- Config for: indent-blankline.nvim
time([[Config for indent-blankline.nvim]], true)
try_loadstring("\27LJ\2\n9\0\0\3\0\3\0\b6\0\0\0'\2\1\0B\0\2\0027\0\1\0006\0\1\0009\0\2\0B\0\1\1K\0\1\0\nsetup\bibl\frequire\0", "config", "indent-blankline.nvim")
time([[Config for indent-blankline.nvim]], false)
-- Config for: vim-snippets
time([[Config for vim-snippets]], true)
try_loadstring("\27LJ\2\nO\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\14lazy_load\"luasnip.loaders.from_snipmate\frequire\0", "config", "vim-snippets")
time([[Config for vim-snippets]], false)
-- Config for: vimwiki
time([[Config for vimwiki]], true)
try_loadstring("\27LJ\2\nØ\1\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0¸\1 \n                let g:vimwiki_list = [{'path': '~/vimwiki/',\n                \\ 'syntax': 'markdown', 'ext': '.md'}]\n                let g:vimwiki_global_ext = 0\n                \bcmd\bvim\0", "config", "vimwiki")
time([[Config for vimwiki]], false)
-- Config for: vim-template
time([[Config for vim-template]], true)
try_loadstring("\27LJ\2\n\2\0\0\3\0\6\0\0176\0\0\0009\0\1\0'\2\2\0B\0\2\0016\0\0\0009\0\1\0'\2\3\0B\0\2\0016\0\0\0009\0\1\0'\2\4\0B\0\2\0016\0\0\0009\0\1\0'\2\5\0B\0\2\1K\0\1\0004let g:email               = \"paul@realcyber.de\"0let g:username            = \"Paul Schaefer\"6let g:license             = \"All rights reserved\"3let g:templates_directory = '~/.vim/templates'\bcmd\bvim\0", "config", "vim-template")
time([[Config for vim-template]], false)
-- Config for: which-key.nvim
time([[Config for which-key.nvim]], true)
try_loadstring("\27LJ\2\n/\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\20setup/which-key\frequire\0", "config", "which-key.nvim")
time([[Config for which-key.nvim]], false)
-- Config for: vim-startify
time([[Config for vim-startify]], true)
try_loadstring("\27LJ\2\nK\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0, let g:webdevicons_enable_startify = 1 \bcmd\bvim\0", "config", "vim-startify")
time([[Config for vim-startify]], false)
-- Config for: nvim-colorizer.lua
time([[Config for nvim-colorizer.lua]], true)
try_loadstring("\27LJ\2\n7\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\14colorizer\frequire\0", "config", "nvim-colorizer.lua")
time([[Config for nvim-colorizer.lua]], false)
-- Config for: crates.nvim
time([[Config for crates.nvim]], true)
try_loadstring("\27LJ\2\ns\0\0\5\0\a\0\f6\0\0\0'\2\1\0B\0\2\0029\0\2\0009\0\3\0005\2\5\0004\3\3\0005\4\4\0>\4\1\3=\3\6\2B\0\2\1K\0\1\0\fsources\1\0\1\fsources\0\1\0\1\tname\vcrates\vbuffer\nsetup\bcmp\frequireü\1\1\0\b\0\14\0\0226\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\0016\0\3\0009\0\4\0009\0\5\0'\2\6\0005\3\n\0006\4\3\0009\4\4\0049\4\a\4'\6\b\0005\a\t\0B\4\3\2=\4\v\0033\4\f\0=\4\r\3B\0\3\1K\0\1\0\rcallback\0\ngroup\1\0\3\rcallback\0\ngroup\0\fpattern\15Cargo.toml\1\0\1\nclear\2\19CmpSourceCargo\24nvim_create_augroup\fBufRead\24nvim_create_autocmd\bapi\bvim\nsetup\vcrates\frequire\0", "config", "crates.nvim")
time([[Config for crates.nvim]], false)
-- Config for: vim-easy-align
time([[Config for vim-easy-align]], true)
try_loadstring("\27LJ\2\n£\1\0\0\3\0\5\0\r6\0\0\0009\0\1\0'\2\2\0B\0\2\0016\0\0\0009\0\1\0'\2\3\0B\0\2\0016\0\0\0009\0\1\0'\2\4\0B\0\2\1K\0\1\0$xmap <Return> <Plug>(EasyAlign)$xmap ga       <Plug>(EasyAlign)$nmap ga       <Plug>(EasyAlign)\bcmd\bvim\0", "config", "vim-easy-align")
time([[Config for vim-easy-align]], false)
-- Config for: lsp-format.nvim
time([[Config for lsp-format.nvim]], true)
try_loadstring("\27LJ\2\nb\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0C nmap <leader>af :lua vim.lsp.buf.format { async = true }<CR> \bcmd\bvim\0", "config", "lsp-format.nvim")
time([[Config for lsp-format.nvim]], false)
-- Config for: everforest
time([[Config for everforest]], true)
try_loadstring("\27LJ\2\nH\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0) let g:everforest_enable_italic = 1 \bcmd\bvim\0", "config", "everforest")
time([[Config for everforest]], false)
-- Config for: telescope-file-browser.nvim
time([[Config for telescope-file-browser.nvim]], true)
try_loadstring("\27LJ\2\n˜\1\0\0\3\0\4\0\t6\0\0\0009\0\1\0'\2\2\0B\0\2\0016\0\0\0009\0\1\0'\2\3\0B\0\2\1K\0\1\0006 nnoremap <leader>fg <cmd>Telescope live_grep<cr>7 nnoremap <leader>ff <cmd>Telescope find_files<cr>\bcmd\bvim\0", "config", "telescope-file-browser.nvim")
time([[Config for telescope-file-browser.nvim]], false)
-- Config for: vim-illuminate
time([[Config for vim-illuminate]], true)
try_loadstring("\27LJ\2\n0\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\21setup/illuminate\frequire\0", "config", "vim-illuminate")
time([[Config for vim-illuminate]], false)
-- Config for: lsp-status.nvim
time([[Config for lsp-status.nvim]], true)
try_loadstring("\27LJ\2\nD\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\22register_progress\15lsp-status\frequire\0", "config", "lsp-status.nvim")
time([[Config for lsp-status.nvim]], false)
-- Config for: gitsigns.nvim
time([[Config for gitsigns.nvim]], true)
try_loadstring("\27LJ\2\n6\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\rgitsigns\frequire\0", "config", "gitsigns.nvim")
time([[Config for gitsigns.nvim]], false)
-- Config for: nvim-web-devicons
time([[Config for nvim-web-devicons]], true)
try_loadstring("\27LJ\2\n}\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\btex\1\0\1\btex\0\1\0\3\tname\bZsh\ncolor\f#428850\ticon\bï«³\rset_icon\22nvim-web-devicons\frequire\0", "config", "nvim-web-devicons")
time([[Config for nvim-web-devicons]], false)
-- Config for: lualine.nvim
time([[Config for lualine.nvim]], true)
try_loadstring("\27LJ\2\n-\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\18setup/lualine\frequire\0", "config", "lualine.nvim")
time([[Config for lualine.nvim]], false)

-- Command lazy-loads
time([[Defining lazy-load commands]], true)
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
pcall(vim.api.nvim_create_user_command, 'ALEEnable', function(cmdargs)
          require('packer.load')({'ale'}, { cmd = 'ALEEnable', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'ale'}, {}, _G.packer_plugins)
          return vim.fn.getcompletion('ALEEnable ', 'cmdline')
      end})
pcall(vim.api.nvim_create_user_command, 'Make', function(cmdargs)
          require('packer.load')({'vim-dispatch'}, { cmd = 'Make', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'vim-dispatch'}, {}, _G.packer_plugins)
          return vim.fn.getcompletion('Make ', 'cmdline')
      end})
pcall(vim.api.nvim_create_user_command, 'CodeActionMenu', function(cmdargs)
          require('packer.load')({'nvim-code-action-menu'}, { cmd = 'CodeActionMenu', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'nvim-code-action-menu'}, {}, _G.packer_plugins)
          return vim.fn.getcompletion('CodeActionMenu ', 'cmdline')
      end})
pcall(vim.api.nvim_create_user_command, 'Dispatch', function(cmdargs)
          require('packer.load')({'vim-dispatch'}, { cmd = 'Dispatch', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'vim-dispatch'}, {}, _G.packer_plugins)
          return vim.fn.getcompletion('Dispatch ', 'cmdline')
      end})
pcall(vim.api.nvim_create_user_command, 'GrammarousCheck', function(cmdargs)
          require('packer.load')({'vim-grammarous'}, { cmd = 'GrammarousCheck', l1 = cmdargs.line1, l2 = cmdargs.line2, bang = cmdargs.bang, args = cmdargs.args, mods = cmdargs.mods }, _G.packer_plugins)
        end,
        {nargs = '*', range = true, bang = true, complete = function()
          require('packer.load')({'vim-grammarous'}, {}, _G.packer_plugins)
          return vim.fn.getcompletion('GrammarousCheck ', 'cmdline')
      end})
time([[Defining lazy-load commands]], false)

vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Filetype lazy-loads
time([[Defining lazy-load filetype autocommands]], true)
vim.cmd [[au FileType markdown ++once lua require("packer.load")({'ale', 'vim-markdown-folding', 'vim-markdown'}, { ft = "markdown" }, _G.packer_plugins)]]
vim.cmd [[au FileType racket ++once lua require("packer.load")({'ale'}, { ft = "racket" }, _G.packer_plugins)]]
vim.cmd [[au FileType tex ++once lua require("packer.load")({'ale', 'vimtex'}, { ft = "tex" }, _G.packer_plugins)]]
vim.cmd [[au FileType python ++once lua require("packer.load")({'SimpylFold', 'indentpython.vim'}, { ft = "python" }, _G.packer_plugins)]]
vim.cmd [[au FileType c ++once lua require("packer.load")({'vim-autoformat', 'cscope_maps', 'a.vim', 'ale'}, { ft = "c" }, _G.packer_plugins)]]
vim.cmd [[au FileType vue ++once lua require("packer.load")({'vim-autoformat', 'vim-vue-plugin'}, { ft = "vue" }, _G.packer_plugins)]]
vim.cmd [[au FileType yaml ++once lua require("packer.load")({'ansible-vim'}, { ft = "yaml" }, _G.packer_plugins)]]
vim.cmd [[au FileType ts ++once lua require("packer.load")({'yats.vim'}, { ft = "ts" }, _G.packer_plugins)]]
vim.cmd [[au FileType haskell ++once lua require("packer.load")({'haskell-vim'}, { ft = "haskell" }, _G.packer_plugins)]]
vim.cmd [[au FileType vala ++once lua require("packer.load")({'vim-vala'}, { ft = "vala" }, _G.packer_plugins)]]
vim.cmd [[au FileType xml ++once lua require("packer.load")({'vim-autoformat', 'emmet-vim', 'html5.vim', 'MatchTagAlways'}, { ft = "xml" }, _G.packer_plugins)]]
vim.cmd [[au FileType vim ++once lua require("packer.load")({'ale'}, { ft = "vim" }, _G.packer_plugins)]]
vim.cmd [[au FileType javascript ++once lua require("packer.load")({'vim-autoformat'}, { ft = "javascript" }, _G.packer_plugins)]]
vim.cmd [[au FileType objc ++once lua require("packer.load")({'vim-autoformat'}, { ft = "objc" }, _G.packer_plugins)]]
vim.cmd [[au FileType meson ++once lua require("packer.load")({'meson.vim'}, { ft = "meson" }, _G.packer_plugins)]]
vim.cmd [[au FileType toml ++once lua require("packer.load")({'vim-toml'}, { ft = "toml" }, _G.packer_plugins)]]
vim.cmd [[au FileType ini ++once lua require("packer.load")({'vim-toml'}, { ft = "ini" }, _G.packer_plugins)]]
vim.cmd [[au FileType rust ++once lua require("packer.load")({'vim-autoformat', 'rust-tools.nvim'}, { ft = "rust" }, _G.packer_plugins)]]
vim.cmd [[au FileType kotlin ++once lua require("packer.load")({'kotlin-vim'}, { ft = "kotlin" }, _G.packer_plugins)]]
vim.cmd [[au FileType go ++once lua require("packer.load")({'vim-go'}, { ft = "go" }, _G.packer_plugins)]]
vim.cmd [[au FileType cpp ++once lua require("packer.load")({'vim-autoformat', 'cscope_maps', 'a.vim', 'ale'}, { ft = "cpp" }, _G.packer_plugins)]]
vim.cmd [[au FileType sh ++once lua require("packer.load")({'ale'}, { ft = "sh" }, _G.packer_plugins)]]
vim.cmd [[au FileType zsh ++once lua require("packer.load")({'ale'}, { ft = "zsh" }, _G.packer_plugins)]]
vim.cmd [[au FileType bash ++once lua require("packer.load")({'ale'}, { ft = "bash" }, _G.packer_plugins)]]
vim.cmd [[au FileType htmldjango ++once lua require("packer.load")({'emmet-vim', 'html5.vim', 'MatchTagAlways'}, { ft = "htmldjango" }, _G.packer_plugins)]]
vim.cmd [[au FileType cmake ++once lua require("packer.load")({'ale'}, { ft = "cmake" }, _G.packer_plugins)]]
vim.cmd [[au FileType html ++once lua require("packer.load")({'vim-autoformat', 'emmet-vim', 'html5.vim', 'MatchTagAlways', 'ale'}, { ft = "html" }, _G.packer_plugins)]]
time([[Defining lazy-load filetype autocommands]], false)
vim.cmd("augroup END")
vim.cmd [[augroup filetypedetect]]
time([[Sourcing ftdetect script at: /home/paul/.local/share/nvim/site/pack/packer/opt/vim-go/ftdetect/gofiletype.vim]], true)
vim.cmd [[source /home/paul/.local/share/nvim/site/pack/packer/opt/vim-go/ftdetect/gofiletype.vim]]
time([[Sourcing ftdetect script at: /home/paul/.local/share/nvim/site/pack/packer/opt/vim-go/ftdetect/gofiletype.vim]], false)
time([[Sourcing ftdetect script at: /home/paul/.local/share/nvim/site/pack/packer/opt/haskell-vim/ftdetect/haskell.vim]], true)
vim.cmd [[source /home/paul/.local/share/nvim/site/pack/packer/opt/haskell-vim/ftdetect/haskell.vim]]
time([[Sourcing ftdetect script at: /home/paul/.local/share/nvim/site/pack/packer/opt/haskell-vim/ftdetect/haskell.vim]], false)
time([[Sourcing ftdetect script at: /home/paul/.local/share/nvim/site/pack/packer/opt/kotlin-vim/ftdetect/kotlin.vim]], true)
vim.cmd [[source /home/paul/.local/share/nvim/site/pack/packer/opt/kotlin-vim/ftdetect/kotlin.vim]]
time([[Sourcing ftdetect script at: /home/paul/.local/share/nvim/site/pack/packer/opt/kotlin-vim/ftdetect/kotlin.vim]], false)
time([[Sourcing ftdetect script at: /home/paul/.local/share/nvim/site/pack/packer/opt/ansible-vim/ftdetect/ansible.vim]], true)
vim.cmd [[source /home/paul/.local/share/nvim/site/pack/packer/opt/ansible-vim/ftdetect/ansible.vim]]
time([[Sourcing ftdetect script at: /home/paul/.local/share/nvim/site/pack/packer/opt/ansible-vim/ftdetect/ansible.vim]], false)
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
time([[Sourcing ftdetect script at: /home/paul/.local/share/nvim/site/pack/packer/opt/vim-markdown/ftdetect/markdown.vim]], true)
vim.cmd [[source /home/paul/.local/share/nvim/site/pack/packer/opt/vim-markdown/ftdetect/markdown.vim]]
time([[Sourcing ftdetect script at: /home/paul/.local/share/nvim/site/pack/packer/opt/vim-markdown/ftdetect/markdown.vim]], false)
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
