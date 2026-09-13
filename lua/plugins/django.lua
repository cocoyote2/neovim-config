return {
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        htmldjango = { "djlint" },
      },
    },
  },
  {
    "mfussenegger/nvim-lint",
    opts = {
      linters_by_ft = {
        htmldjango = { "djlint" },
      },
    },
  },
  {
    "jay-babu/mason-nvim-dap.nvim",
    opts = {
      handlers = {
        python = function()
          local sep = vim.fn.has("win32") == 1 and "/venv/Scripts/python.exe" or "/venv/bin/python"
          local path = require("mason-registry").get_package("debugpy"):get_install_path() .. sep
          require("dap-python").setup(path)
        end,
      },
    },
  },
}
