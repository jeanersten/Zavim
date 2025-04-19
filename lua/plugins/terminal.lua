return {
  -- ~~~~~~~~~~~~~~~~~~~~~~~
  -- ~~ Terminal Supports ~~
  -- ~~~~~~~~~~~~~~~~~~~~~~~
  {
    "akinsho/toggleterm.nvim",
    cmd = "ToggleTerm",
    version = "*",
    config = function()
      local win_width = 100
      local win_height = 30

      require("toggleterm").setup({
        start_in_insert = true,
        shade_terminals = true,
        direction = "float",
        float_opts = {
          width = win_width,
          height = win_height,
          border = "curved",
          winblend = 0,
        },
        shell = function()
          if vim.fn.has("win32") == 1 then
            return "pwsh.exe"
          else
            return vim.o.shell
          end
        end,
      })

      vim.api.nvim_create_autocmd("TermOpen", {
        pattern = "term://*",
        callback = function()
          vim.api.nvim_buf_set_keymap(0, "n", "q", "<cmd> ToggleTerm <CR>", { noremap = true, silent = true })
        end,
      })

      vim.api.nvim_create_autocmd("WinResized", {
        callback = function()
          local term = require("toggleterm.terminal").get(1)
          if term and term:is_open() and term.direction == "float" then
            local win_id = term.window
            if win_id and vim.api.nvim_win_is_valid(win_id) then
              vim.api.nvim_win_set_config(win_id, {
                width = win_width,
                height = win_height,
              })
            end
          end
        end,
      })
    end,
  },
}
