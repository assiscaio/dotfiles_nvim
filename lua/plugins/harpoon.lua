return {
	"ThePrimeagen/harpoon",
	branch = "harpoon2",
	dependencies = { "nvim-lua/plenary.nvim" },
	keys = {
		{ "<leader>a", function() require("harpoon"):list():add() end, mode = { "n" }, desc = "Add file to Harpoon" },
	},
	config = function(_, opts)
		require("harpoon").setup()
	end,
}
