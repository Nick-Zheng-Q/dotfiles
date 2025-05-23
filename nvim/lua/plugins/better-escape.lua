return { -- lua with lazy.nvim
	{
		"max397574/better-escape.nvim",
		opts = {
			default_mappings = false,
			mappings = {
				-- i for insert, other modes are the first letter too
				i = {
					-- map kj to exit insert mode
					k = {
						j = "<Esc>",
					},
					-- map jk and jj  to exit insert mode
					j = {
						k = "<Esc>",
						j = "<Esc>",
					},
				},
			},
		},
	},
}
