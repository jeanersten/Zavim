return {
	-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
	-- ~~ Fuzzy File Explorer Supports ~~
	-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
	{
		"nvim-telescope/telescope.nvim",
    cmd = "Telescope",
		branch = "0.1.x",
		dependencies = {
			{
				"nvim-telescope/telescope-fzf-native.nvim",
        build = (jit.os == "Windows") and "mingw32-make" or "make",
			},
			{ "nvim-telescope/telescope-ui-select.nvim" },
			{ "nvim-telescope/telescope-file-browser.nvim" },
			{ "nvim-lua/plenary.nvim" },
			{ "nvim-tree/nvim-web-devicons" },
		},
		config = function()
			require("telescope").setup({
				defaults = {
					preview = { treesitter = false },
					initial_mode = "normal",
					sorting_strategy = "ascending",
					mappings = {
						n = { ["q"] = require("telescope.actions").close },
					},
				},
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown(),
					},
					["file_browser"] = {
						no_ignore = true,
						dir_icon = "",
						mappings = {
							["n"] = {
								["o"] = function()
									local action_state = require("telescope.actions.state")
									local entry = action_state.get_selected_entry()

									if vim.fn.has("win32") == 1 then
										if entry and entry.path then
											vim.fn.jobstart({ "cmd.exe", "/c", "start", "", entry.path }, { detach = true })
										end
									elseif vim.fn.has("unix") == 1 then
										if entry and entry.path then
										  vim.fn.jobstart({ "xdg-open", entry.path }, { detach = true })
                    end
									end
								end,
							},
						},
					},
				},
			})

			require("telescope").load_extension("fzf")
			require("telescope").load_extension("ui-select")
			require("telescope").load_extension("file_browser")
		end,
	},
}
