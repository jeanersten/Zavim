return {
  -- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  -- ~~ Comment Indicator Support ~~
  -- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    event = "BufReadPre",
    config = function()
      require("todo-comments").setup({})
    end,
  },
}
