return {
  "mfussenegger/nvim-dap",
  config = function()
    local dap = require "dap"
    dap.adapters.cppdbg = {
      id = "cppdbg",
      type = "executable",
      command = "/home/nick/cpptools/cpptools-linux/extension/debugAdapters/bin",
    }

    dap.configurations.cppdbg = {
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
    dap.adapters.python = {
      type = "executable",
      command = "/home/nick/.local/share/nvim/mason/bin/debugpy",
      args = { "-m", "debugpy.adapter" },
    }

    dap.configurations.python = {
      {
        -- The first three options are required by nvim-dap
        type = "python", -- the type here established the link to the adapter definition: `dap.adapters.python`
        request = "launch",
        name = "Launch file",

        -- Options below are for debugpy, see https://github.com/microsoft/debugpy/wiki/Debug-configuration-settings for supported options

        program = "${file}", -- This configuration will launch the current file if used.
        pythonPath = function()
          -- debugpy supports launching an application with a different interpreter then the one used to launch debugpy itself.
          -- The code below looks for a `venv` or `.venv` folder in the current directly and uses the python within.
          -- You could adapt this - to for example use the `VIRTUAL_ENV` environment variable.
          local cwd = vim.fn.getcwd()
          if vim.fn.executable(cwd .. "/venv/bin/python") == 1 then
            return cwd .. "/venv/bin/python"
          elseif vim.fn.executable(cwd .. "/.venv/bin/python") == 1 then
            return cwd .. "/.venv/bin/python"
          else
            return "/usr/bin/python"
          end
        end,
      },
    }
  end,
}
