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
--require("telescope").load_extension "file_browser"
local fb_actions = require "telescope".extensions.file_browser.actions

require("telescope").setup({
	extensions = {
		file_browser = {
			theme = "ivy",
			hijack_netrw = true,
			cwd_to_path = true,
			files = true,
			add_dirs = true,
			browse_files = require("telescope._extensions.file_browser.finders").browse_files,
			browse_folders = require("telescope._extensions.file_browser.finders").browse_folders,
			git_status = true,
			mappings = {
				["i"] = {
					["A-c"] = fb_actions.create,
					["S-CR"] = fb_actions_create_from_prompt,
					["<A-r>"] = fb_actions.rename,
					["<A-m>"] = fb_actions.move,
					["<A-y>"] = fb_actions.copy,
					["<A-d>"] = fb_actions.remove,
					["<C-o>"] = fb_actions.open,
					["<C-g>"] = fb_actions.goto_parent_dir,
					["<C-e>"] = fb_actions.goto_home_dir,
					["<C-w>"] = fb_actions.goto_cwd,
					["<C-t>"] = fb_actions.change_cwd,
					["<C-f>"] = fb_actions.toggle_browser,
					["<C-h>"] = fb_actions.toggle_hidden,
					["<C-s>"] = fb_actions.toggle_all,
					["<bs>"] = fb_actions.backspace,
				}
			}
		},
		workspaces = {
			keep_insert = true,
		},
	},
})

-- require("mini.animate").setup()
-- require("mini.surround").setup()

--vim.notify = require("notify")

--Which-key Configuration
-- local wk = require("which-key")
-- wk.register({
-- 	f = {
--
-- 		f = {"<cmd>Telescope find_files<cr>", "Find File in current dir" },
-- 		e = "Edit File",
-- 		["1"] = "which_key_ignore",
-- 	},
-- 	s = {
-- 		name = "+src",
-- 		m = {function() require("telescope.builtin").find_files({cwd = vim.env.HOME .. "/src"}) end, "Selecionar módulo" }
-- 	},
-- }, { prefix = "<leader>" })
