return {
  -- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  -- ~~ Language Server Protocol Supports ~~
  -- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  {
    "neovim/nvim-lspconfig",
    event = { "BufRead", "BufNewFile" },
    dependencies = {
      {
        "williamboman/mason-lspconfig.nvim",
        config = function()
          require("mason-lspconfig").setup({
            ensure_installed = { "lua_ls", "clangd", "cmake" },
          })
        end,
      },
      {
        "folke/lazydev.nvim",
        ft = "lua",
        config = function()
          require("lazydev").setup({
            library = {
              { path = "${3rd}/luv/library", words = { "vim%.uv" } },
            },
          })
        end,
      },
      { "hrsh7th/cmp-nvim-lsp" },
    },
    config = function()
      local lsp = require("lspconfig")
      local capabilities = require("cmp_nvim_lsp").default_capabilities()

      vim.diagnostic.config({
        float = {
          border = "rounded",
        },
      })

      lsp.lua_ls.setup({
        capabilities = capabilities,
      })

      lsp.clangd.setup({
        capabilities = capabilities,
        cmd = { "clangd", "--header-insertion=never", "--background-index", "--clang-tidy", "--log=verbose" },
        init_options = {
          fallbackFlags = { "-std=c++23" },
        },
      })

      lsp.cmake.setup({
        capabilities = capabilities,
      })
    end,
  },
}
