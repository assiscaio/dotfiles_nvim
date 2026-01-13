return {
	{
		"simrat39/symbols-outline.nvim",
		cmd = "SymbolsOutline",
		keys = { { "<leader>cs", "<cmd>SymbolsOutline<CR>", desc = "Symbols Outline" } },
		config = true,
	},
	{
		"dstein64/vim-startuptime",
		cmd = "StartupTime",
		config = function()
			vim.g.startuptime_tries = 10
		end,
	},
	{
		"natecraddock/workspaces.nvim",
	},
	{
		"tpope/vim-surround"
	},
	{
		"justinmk/vim-sneak"
	},
	{
		"folke/which-key.nvim",
		event = "VeryLazy",
		init = function()
			vim.o.timeout = true
			vim.o.timeoutlen = 300
		end
	},
	{
		"folke/trouble.nvim",
		opts = { use_diagnostic_signs = true }
	},
	{
		"folke/snacks.nvim",
		priority = 1000,
		lazy = false,
		---@type snacks.Config
		opts = {
		    animate = { enabled = true },
            dashboard = { enabled = true },
            bufdelete = { enabled = true },
            dim = { enabled = true },
            input = { enabled = true },
            indent = { enabled = true },
            layout = { enabled = true },
            lazygit = { enabled = true },
            notifier = { enabled = true },
            scope = { enabled = true },
            scroll = { enabled = true },
            toggle = { enabled = true },
            win = { enabled = true },
            words = { enabled = true },
		},
	}
}
