---@type LazySpec
return {
  "karb94/neoscroll.nvim",
  event = "VeryLazy",
  enable = true,
  opts = {
    mappings = {
      n = {
        ["<C-y>"] = {
          function() require("neoscroll").scroll(-0.1, { move_cursor = true, duration = 100 }) end,
          desc = "scroll down",
        },
        ["<C-e>"] = {
          function() require("neoscroll").scroll(-0.1, { move_cursor = true, duration = 100 }) end,
          desc = "scroll up",
        },
      },
    },
  },
}
