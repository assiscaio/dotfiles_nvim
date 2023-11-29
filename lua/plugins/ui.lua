return {
	{
		"rcarriga/nvim-notify",
		keys = {
			{
				"<leader>un",
				function() require("notify").dismiss({ silent = true, pending = true }) end,
				desc = "Dismiss all notifications"
			}
		},
		opts = {
			timeout = 3000,
			max_height = function()
				return math.floor(vim.o.lines * 0.75)
			end,
			max_width = function()
				return math.floor(vim.o.columns * 0.75)
			end,
			on_open = function(win)
				vim.api.nvim_win_set_config(win, { zindex = 100 })
			end
		},
		-- init = function()
		-- 	if not Util.has("noice.nvim") then
		-- 		Util.on_very_lazy(function()
		-- 			vim.notify = require("notify")
		-- 		end)
		-- 	end
		-- end,
	},
	{ "stevearc/dressing.nvim" , opts = {}},
	--{ "nvim-telescope/telescope-ui-select.nvim", opts = {} },
	{
		"akinsho/bufferline.nvim",
		event = "VeryLazy",
		keys = {
			    { "<leader>bp", "<Cmd>BufferLineTogglePin<CR>", desc = "Toggle pin" },
			    { "<leader>bP", "<Cmd>BufferLineGroupClose ungrouped<CR>", desc = "Delete non-pinned buffers" },
			    { "<leader>bo", "<Cmd>BufferLineCloseOthers<CR>", desc = "Delete other buffers" },
			    { "<leader>br", "<Cmd>BufferLineCloseRight<CR>", desc = "Delete buffers to the right" },
			    { "<leader>bl", "<Cmd>BufferLineCloseLeft<CR>", desc = "Delete buffers to the left" },
			    { "<S-h>", "<cmd>BufferLineCyclePrev<cr>", desc = "Prev buffer" },
			    { "<S-l>", "<cmd>BufferLineCycleNext<cr>", desc = "Next buffer" },
			    { "[b", "<cmd>BufferLineCyclePrev<cr>", desc = "Prev buffer" },
			    { "]b", "<cmd>BufferLineCycleNext<cr>", desc = "Next buffer" },
		},
		opts = {
			options = {
				close_command = function(n) require("mini.bufremove").delete(n, false) end,
				right_mouse_command = function(n) require("mini.bufremove").delete(n, false) end,
				diagnostics = "nvim_lsp",
				always_show_bufferline = false,
				diagnostics_indicator = function(_, _, diag)
					local icons = require("lazyvim.config").icons.diagnostics
					local ret = (diag.error and icons.Error .. diag.error .. " " or "")
					  .. (diag.warning and icons.Warn .. diag.warning or "")
					return vim.trim(ret)
				end,
				offset = {
					filetype = "neo-tree",
					text = "Neo-tree",
					highlight = "Directory",
					text_align = "left",
				},
			},
		},
		config = function(_, opts)
			require("bufferline").setup(opts)
			vim.api.nvim_create_autocmd("BufAdd", {
				callback = function()
					vim.schedule(function()
						pcall(nvim_bufferline)
					end)
				end,
			})
		end,
	},
	{"lukas-reineke/indent-blankline.nvim"},
	{
	"nvim-lualine/lualine.nvim",
	opts = {
		options = {
			theme = "catppuccin-frappe"
		}
	}
	},
}
