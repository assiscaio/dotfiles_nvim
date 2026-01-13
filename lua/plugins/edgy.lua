return {
	"folke/edgy.nvim",
	event = "VeryLazy",
	opts = function()
		local opts = {
			bottom = {
				{
					ft = "toggleterm",
					size = { height = 0.4 },
					filter = function(buf, win)
						return vim.api.nvim_win_get_config(win).relative == ""
					end,
				},
				{
					ft = "noice",
					size = { height = 0.4 },
					filter = function(buf, win)
						return vim.api.nvim_win_get_config(win).relative == ""
					end,
				},
				"Trouble",
				{ ft = "qt", title = "QuickFix" },
				{
					ft = "help",
					size = { height = 20 },
					filter = function(buf)
						return vim.bo[buf].buftype == "help"
					end,
				},
				{ title = "Spectre", ft = "spectre_panel", size = { height = 0.4 } },
				{ title = "Neotest Output", ft = "neotest-output-panel", size = { height = 15 } },
			},
			left = {
				{ title = "Neotest Summary", ft = "neotest-summary" },
			},
			right = {
				{ title = "Grug Far", ft ="grug-far", size = { width = 0.4 } },
			},
		}
		return opts
	end,
}
