return {
  "ibhagwan/fzf-lua",
  -- optional for icon support
  dependencies = { "nvim-tree/nvim-web-devicons" },
  -- or if using mini.icons/mini.nvim
  -- dependencies = { "echasnovski/mini.icons" },
  opts = {},
--  config = function()
--    require("fzf-lua").setup()
--    vim.api.nvim_create_autocmd("FileType", {
--      pattern = "fzf",
--      callback = function()
--        vim.keymap.set("n","j", function() vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<C-j>", true, false, true), "i", false) end, {buffer = true, silent = true})
--        vim.keymap.set("n","k", function() vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<C-k>", true, false, true), "i", false) end, {buffer = true, silent = true})
--        vim.keymap.set("n","q", "i<Esc>", {buffer = true, silent = true})
--      end,
--    })
--  end,
  keys = {
    {"<leader>ff", function() require('fzf-lua').files() end, desc="Find Files"},
    {"<leader>fw", function() require('fzf-lua').live_grep() end, desc="Find Word"},
    {"<leader>fr", function() require('fzf-lua').resume() end, desc="Resume Fzf"},
    {"<leader>fo", function() require('fzf-lua').oldfiles() end, desc="Find Oldfiles"},
  }
}
