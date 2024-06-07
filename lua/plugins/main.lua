return {
	{
		"sharkdp/fd",
	},
	{
		"BurntSushi/ripgrep",
	},
	{
		"zane-/cder.nvim"
	},
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
			{ "<leader>qs", function() require("persistence").load() end, desc = "Restore Session" },
			{ "<leader>ql", function() require("persistence").load({ last = true }) end, desc = "Restore Last Session" },
			{ "<leader>qd", function() require("persistence").stop() end, desc = "Don't save current Session" },
		}
	},
	{
		"natecraddock/workspaces.nvim",
	},
	{
		"echasnovski/mini.nvim"
	},
	{
		"echasnovski/mini.animate",
	},
	{
		"tpope/vim-surround"
	},
	{
		"justinmk/vim-sneak"
	},
	{
		"onsails/lspkind.nvim"
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
	--{
		--"hrsh7th/nvim-cmp"
	--}
}
