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

require('config.options')
require("lazy").setup({
	{
		"mistweaverco/kulala.nvim",
		keys = {
			{ "<leader>Rs", desc = "Send request" },
			{ "<leader>Ra", desc = "Send all requests" },
			{ "<leader>Rb", desc = "Open scratchpad" },
		},
		ft = {"http", "rest"},
		opts = {
			global_keymaps = false,
			global_keymaps_prefix = "<leader>R",
			kulala_keymaps_prefix = ""
		}
	},
	spec = {
		{import = "plugins"},
		{import = "plugins.ui"},
		{import = "plugins.ai"},
		{import = "plugins.langs"},
	},
	version = false,
	checker = { enabled = true }
})
require('lualine').setup()
require('telescope').setup()

-- Import de configuracoes locais
require('config.keymaps')
--
