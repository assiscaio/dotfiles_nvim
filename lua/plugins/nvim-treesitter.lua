return {
	'nvim-treesitter/nvim-treesitter',
	version = false,
	build = ':TSUpdate',
	lazy = false,
  	opts_extend = { "ensure_installed" },
	opts = {
		auto_install = { enable = true },
		highlight = { enable = true },
		indent = { enable = true },
		folds = { enable = true },
		ensure_installed = {
			"bash",
			"diff",
			"html",
			"markdown",
			"markdown_inline",
			"printf",
			"query",
			"toml",
			"xml",
			"yaml",
			"c",
			"lua",
			"vim",
			"vimdoc",
			"javascript",
			"typescript",
			"kotlin",
			"elixir",
			"clojure",
		}
	},
	config = function(_, opts)
		local TS = require("nvim-treesitter")
		TS.setup(opts)
	  end,
}
