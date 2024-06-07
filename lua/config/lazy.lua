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
		{ "LazyVim/LazyVim" },
		--{ import = "lazyvim.plugins.extras.lang.typescript" },
		--{ import = "lazyvim.plugins.extras.lang.json" },
		{ import = "plugins" },
	},
	--install = { colorscheme = { habamax, gruvbox } },
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

require("symbols-outline").setup()
require("dressing").setup({
	select = {
		get_config = function(opts)
			if opts.kind == "codeaction" then
				return {
					backend = "nui",
					nui = {
						relative = "cursor",
						max_width = 40,
					},
				}
			end
		end,
	},
})
require("lualine").setup()
require("telescope").load_extension("cder")
require("telescope").setup({
	extensions = {
		workspaces = {
			keep_insert = true,
		},
	},
})
-- require("mini.animate").setup()
-- require("mini.surround").setup()

--vim.notify = require("notify")

--Which-key Configuration
local wk = require("which-key")
wk.register({
	c = {
		name = "+config",
		p = {function() require("telescope.builtin").find_files({cwd = vim.fn.stdpath('config') .. "/lua/plugins"}) end, "Find plugin" },
		c = {function() require("telescope.builtin").find_files({cwd = vim.fn.stdpath('config') .. "/lua/config"}) end, "Arquivo Init"}
	},
	f = {
		
		f = {"<cmd>Telescope find_files<cr>", "Find File in current dir" },
		e = "Edit File",
		["1"] = "which_key_ignore",
	},
	s = {
		name = "+src",
		m = {function() require("telescope.builtin").find_files({cwd = vim.env.HOME .. "/src"}) end, "Selecionar módulo" }
	},
}, { prefix = "<leader>" })
