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
	keys = {
		["q"] = function(win)
			win:close()
		end,
		-- hide window
		["<c-q>"] = function(win)
			win:hide()
		end,
		-- close sidebar
		["Q"] = function(win)
			win.view.edgebar:close()
		end,
		-- next open window
		["]w"] = function(win)
		  win:next({ visible = true, focus = true })
		end,
		-- previous open window
		["[w"] = function(win)
		  win:prev({ visible = true, focus = true })
		end,
		-- next loaded window
		["]W"] = function(win)
		  win:next({ pinned = false, focus = true })
		end,
		-- prev loaded window
		["[W"] = function(win)
		  win:prev({ pinned = false, focus = true })
		end,
		-- increase width
		["<c-w>>"] = function(win)
		  win:resize("width", 2)
		end,
		-- decrease width
		["<c-w><lt>"] = function(win)
		  win:resize("width", -2)
		end,
		-- increase height
		["<c-w>+"] = function(win)
		  win:resize("height", 2)
		end,
		-- decrease height
		["<c-w>-"] = function(win)
		  win:resize("height", -2)
		end,
		-- reset all custom sizing
		["<c-w>="] = function(win)
		  win.view.edgebar:equalize()
		end,
	  },
	  icons = {
		closed = " ",
		open = " ",
	  },
}
