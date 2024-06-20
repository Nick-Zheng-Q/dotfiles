return {
  "jay-babu/mason-nvim-dap.nvim",
  opts = {
    ensure_installed = { "python", "cpp" },
    handlers = {
      function(config)
        -- all sources with no handler get passed here
        -- Keep original functionality
        require("mason-nvim-dap").default_setup(config)
      end,
      cppdbg = function(config)
        config.configurations = {
          {
            name = "Launch file",
            type = "cppdbg",
            request = "launch",
            args = function()
              local args_string = vim.fn.input "Input arguments: "
              return vim.split(args_string, " ")
            end,
            program = function() return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file") end,
            cwd = "${workspaceFolder}",
            stopAtEntry = true,
          },
          {
            name = "Attach to gdbserver :1234",
            type = "cppdbg",
            request = "launch",
            MIMode = "gdb",
            miDebuggerServerAddress = "localhost:1234",
            miDebuggerPath = "/usr/bin/gdb",
            cwd = "${workspaceFolder}",
            args = function()
              local args_string = vim.fn.input "Input arguments: "
              return vim.split(args_string, " ")
            end,
            program = function() return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file") end,
          },
        }
        require("mason-nvim-dap").default_setup(config)
      end,
    },
  },
}
