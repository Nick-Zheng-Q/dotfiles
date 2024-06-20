local utils = require "utils"
local system = vim.loop.os_uname().sysname

return {
  "AstroNvim/astrocore",
  ---@param opts AstroCoreOpts
  opts = function(_, opts)
    if not opts.mappings then opts.mappings = require("astrocore").empty_map_table() end
    local maps = opts.mappings
    if maps then
      maps.n.L = { function() require("astrocore.buffer").nav(vim.v.count1) end, desc = "Next buffer" }
      maps.n.H = { function() require("astrocore.buffer").nav(-vim.v.count1) end, desc = "Previous buffer" }
      maps.n["<Leader>bD"] = {
        function()
          require("astroui.status.heirline").buffer_picker(function(bufnr) require("astrocore.buffer").close(bufnr) end)
        end,
        desc = "Pick to close",
      }

      maps.n["<C-e>"] = {
        function() require("neoscroll").scroll(-0.1, { move_cursor = true, duration = 100 }) end,
        desc = "scroll up",
      }
      maps.n["<C-e>"] = {
        function() require("neoscroll").scroll(0.1, { move_cursor = true, duration = 100 }) end,
        desc = "scroll up",
      }
      maps.v["K"] = { ":move '<-2<CR>gv-gv", desc = "Move line up", silent = true }
      maps.v["J"] = { ":move '>+1<CR>gv-gv", desc = "Move line down", silent = true }
    end

    opts.mappings = maps
  end,
}
