return {
  -- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  -- ~~ Gruvbox Material Theme Supports ~~
  -- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  {
    "sainnhe/gruvbox-material",
    name = "gruvbox-material",
    lazy = false,
    priority = 1000,
    config = function()
      vim.g.gruvbox_material_float_style = "dim"
      vim.g.gruvbox_material_background = "hard"
      vim.g.gruvbox_material_enable_bold = 1
      vim.g.gruvbox_material_enable_italic = 1
      vim.cmd([[colorscheme gruvbox-material]])
    end,
  },
}
