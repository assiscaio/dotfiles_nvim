return {
		"nvim-telescope/telescope.nvim",
		keys = {
			{
				"<leader>fp",
				function() require("telescope.builtin").find_files({ cwd = require("lazy.core.config").options.root }) end,
				desc = "Find Plugin File",
			}
		},
		dependencies = {
			'nvim-lua/plenary.nvim'
		},
		opts = {
			defaults = {
				layout_strategy = "horizontal",
				layout_config = { prompt_position = "top" },
				sorting_strategy = "ascending",
				winblend = 0,
			}
		},
		config = function()
			require("telescope").setup {
				defaults = {},
				pickers = {
					find_files = {
						mappings = {
							n = {
								["cd"] = function(prompt_bufnr)
									local selection = require("telescope.actions.state").get_selected_entry()
									local dir = vim.fn.fnamemodify(selection.path, ":p:h")
									require("telescope.actions").close(prompt_bufnr)
									vim.cmd(string.format("silent cd %s", dir))
								end
							}
						}
					}
				}
			}
		end
}
