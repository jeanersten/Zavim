return {
  -- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  -- ~~ Git Changes Indicator Supports ~~
  -- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  {
    "lewis6991/gitsigns.nvim",
    event = "BufReadPre",
    config = function()
      require("gitsigns").setup({})
    end,
  }
}
