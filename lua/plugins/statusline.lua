return {
  -- ~~~~~~~~~~~~~~~~~~~~~~~~~
  -- ~~ Statusline Supports ~~
  -- ~~~~~~~~~~~~~~~~~~~~~~~~~
  {
    "nvim-lualine/lualine.nvim",
    event = "VeryLazy",
    config = function()
      local default = {
        filetypes = { "toggleterm", "TelescopePrompt", "alpha" },
        sections = {
          lualine_a = { "mode" },
          lualine_y = { "progress" },
          lualine_z = { "location" },
        },
      }

      require("lualine").setup({
        options = {
          icons_enabled = true,
          theme = "auto",
          component_separators = { left = "", right = "" },
          section_separators = { left = "", right = "" },
          always_show_tabline = true,
          globalstatus = true,
        },
        sections = {
          lualine_a = { "mode" },

          lualine_b = { "branch", "filename", "diff" },
          lualine_c = { "diagnostics" },
          lualine_x = { "encoding", "fileformat", "filetype" },
          lualine_y = { "progress" },
          lualine_z = { "location" },
        },
        extensions = { default },
      })
    end,
  },
}
