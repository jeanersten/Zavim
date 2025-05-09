return {
  -- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  -- ~~ Language Formatter Supports ~~
  -- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  {
    "nvimtools/none-ls.nvim",
    event = "BufReadPre",
    dependencies = {
      {
        "jayp0521/mason-null-ls.nvim",
        config = function()
          require("mason-null-ls").setup({
            ensure_installed = { "stylua", "clang_format" },
            automatic_installation = false,
          })
        end,
      },
    },
    config = function()
      local null_ls = require("null-ls")

      null_ls.setup({
        sources = {
          null_ls.builtins.formatting.stylua,
          null_ls.builtins.formatting.clang_format,
        },
      })
    end,
  },
}
