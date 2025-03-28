return {
	"catppuccin/nvim",
	name = "catppuccin",
	priority = 1000, 
	lazy = false, -- make sure we load this during startup if it is your main colorscheme
        config = function()
           -- load the colorscheme here
	   require('catppuccin').setup({
			transparent_background = true,
			    styles = { -- Handles the styles of general hi groups (see `:h highlight-args`):
				comments = { "italic" }, -- Change the style of comments
				conditionals = { "italic" },
				loops = {},
				functions = {"italic"},
				keywords = {"italic"},
				strings = {},
				variables = {},
				numbers = {},
				booleans = {},
				properties = {},
				types = {},
				operators = {},
				-- miscs = {}, -- Uncomment to turn off hard-coded styles
			    },
		})
           vim.cmd([[colorscheme catppuccin]])
        end,
}
