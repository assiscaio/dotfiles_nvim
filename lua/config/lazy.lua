-- Bootstrap
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	spec = {
		{ "LazyVim/LazyVim", import = "lazyvim.plugins" },
		--{ import = "lazyvim.plugins.extras" },
		--{ import = "lazyvim.plugins.extras.lang.typescript" },
		--{ import = "lazyvim.plugins.extras.lang.json" },
		{ import = "plugins" },
		{ import = "plugins.langs"}
	},
	install = { colorscheme = { habamax, gruvbox } },
	checker = { enabled = true },
	performance = {
		rtp = {
			disabled_plugins = {
				"gzip",
				"tarPlugin",
				"tohtml",
				"tutor",
				"zipPlugin",
			},
		},
	},
})

-- require("symbols-outline").setup()
-- require("lualine").setup()
