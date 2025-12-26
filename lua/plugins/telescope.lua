return {
	'nvim-telescope/telescope.nvim',
	dependencies = { 'nvim-lua/plenary.nvim' },
	keys = {
		{ "<leader>ff", mode = { "n" }, require('telescope.builtin').find_files, desc = "Telescope find files" },
		{ "<leader>fg", mode = { "n" }, require('telescope.builtin').live_grep, desc = "Telescope live grep" },
		{ "<leader>fb", mode = { "n" }, require('telescope.builtin').buffers, desc = "Telescope buffers" },
		{ "<leader>fn", mode = { "n" }, require('telescope.builtin').help_tags, desc = "Telescope help tags" },
	},
}
