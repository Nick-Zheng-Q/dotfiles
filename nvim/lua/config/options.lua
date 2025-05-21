vim.opt.number = true -- Print line number
vim.opt.pumblend = 10 -- Popup blend
vim.opt.pumheight = 10 -- Maximum number of entries in a popup
vim.opt.relativenumber = true -- Relative line numbers

-- Tab
vim.opt.expandtab = true -- Convert tab into spaces
vim.opt.shiftwidth = 4 -- Amount to indent with >> or <<
vim.opt.tabstop = 4 -- How many spaces are shown per tab
vim.opt.softtabstop = 4
vim.opt.smarttab = true
vim.opt.smartindent = true
vim.opt.autoindent = true
vim.opt.breakindent = true

vim.opt.cursorline = true

vim.opt.undofile = true

vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.signcolumn = "yes"

vim.opt.splitright = true
vim.opt.splitbelow = true

vim.opt.scrolloff = 10
vim.schedule(function()
	vim.opt.clipboard = "unnamedplus"
end)
