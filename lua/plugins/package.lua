return {
  -- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  -- ~~ Package Manager Supports ~~
  -- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  {
    "williamboman/mason.nvim",
    cmd = "Mason",
    config = function()
      require("mason").setup({
        ui = {
          border = "rounded",
          width = 0.8,
          height = 0.8,
        },
      })
    end,
  },
}
