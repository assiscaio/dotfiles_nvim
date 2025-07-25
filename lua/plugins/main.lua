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
		"folke/persistence.nvim",
		event = "BufReadPre",
		opts = { options = vim.opt.sessionoptions:get() },
		keys = {
			{ "<leader><C-s><C-r>", function() require("persistence").load() end, desc = "Restore Session" },
			{ "<leader><C-s><C-s>", function() require("persistence").load({ last = true }) end, desc = "Restore Last Session" },
			{ "<leader><C-s><C-d>", function() require("persistence").stop() end, desc = "Don't save current Session" },
		}
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
	}
}
