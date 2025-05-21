local api = vim.api

api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking text",
	group = api.nvim_create_augroup("Highlight-yank", { clear = true }),
	callback = function()
		vim.hl.on_yank()
	end,
})
