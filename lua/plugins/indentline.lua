return {
  -- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  -- ~~ Visual Indent Line Supports ~~
  -- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  {
    "lukas-reineke/indent-blankline.nvim",
    event = "BufReadPost",
    main = "ibl",
    config = function()
      require("ibl").setup({
        indent = { char = "│" },
        scope = {
          enabled = true,
          show_exact_scope = true,
          show_start = false,
          show_end = false,
          highlight = { "Function" },
          include = {
            node_type = {
              ["*"] = { "*" },
            },
          },
        },
      })
    end,
  },
}
