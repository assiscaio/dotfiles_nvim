return {
	"nvim-telescope/telescope.nvim",
	dependencies = { "nvim-lua/plenary.nvim" },
	keys = {
		-- {
		-- 	"<leader>ff",
		-- 	mode = { "n" },
		-- 	function() require("telescope.builtin").find_files({ cwd = require("lazy.core.config").options.root }) end,
		-- 	desc = "Telescope find files",
		-- },
		-- { "<leader>fg", mode = { "n" }, require("telescope.builtin").live_grep, desc = "Telescope live grep" },
		-- { "<leader>fb", mode = { "n" }, require("telescope.builtin").buffers, desc = "Telescope buffers" },
		-- { "<leader>fn", mode = { "n" }, require("telescope.builtin").help_tags, desc = "Telescope help tags" },
	},
	opts = {
		defaults = {
			layout_strategy = "horizontal",
			layout_config = { prompt_position = "top" },
			sorting_strategy = "ascending",
			winblend = 0,
		},
	},
}
