return {
	'akinsho/bufferline.nvim',
	version = "*",
	dependencies = 'nvim-tree/nvim-web-devicons',
	enabled = true,
	config = function(_, opts)
		require("bufferline").setup()
	end,
}
