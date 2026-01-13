return {
	'lewis6991/gitsigns.nvim',
	keys = {
		{ "<leader>gp", mode = { "n" }, ":Gitsigns preview_hunk_inline<CR>", desc = "Preview git hunk" },
		{ "<leader>gz", mode = { "n" }, ":Gitsigns reset_hunk<CR>", desc = "Undo stage hunk" },
		-- { "<leader>gu", mode = { "n" }, ":Gitsigns undo_stage_hunk<CR>", desc = "Undo stage hunk" },
	}
}
