local rt = require('rust-tools')


local opts = {
	tools = { -- rust-tools options
		autoSetHints = true,
		inlay_hints = {
			auto = true,
			-- only_current_line = true,
			show_parameter_hints = true,
			max_len_align = true,
			max_len_align_padding = 5,
			-- parameter_hints_prefix = "",
			-- other_hints_prefix = "",
		},
	},

	-- all the opts to send to nvim-lspconfig
	-- these override the defaults set by rust-tools.nvim
	-- see https://github.com/neovim/nvim-lspconfig/blob/master/CONFIG.md#rust_analyzer
	server = {
		-- on_attach is a callback called when the language server attachs to the buffer
		on_attach = function(_, bufnr)
			vim.keymap.set("n", "<Leader>k", rt.hover_actions.hover_actions, { buffer = bufnr })
			vim.keymap.set("n", "<Leader>a", rt.code_action_group.code_action_group, { buffer = bufnr })
			-- require 'illuminate'.on_attach(client)
		end,
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

rt.setup(opts)
rt.inlay_hints.enable()

vim.cmd [[ let g:rustfmt_autosave = 1 ]]
